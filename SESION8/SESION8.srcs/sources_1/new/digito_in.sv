`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Julio Contreras
// 
// Create Date: 17.07.2019 01:12:15
// Design Name: 
// Module Name: FSM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module digito_in
(
	input logic clock, reset, enter, exe, start, modo, //modo: 0=dec, 1=hex
	input logic [15:0] in_val, //valor de entrada
	output logic [15:0] salida,
	output logic listo); //señal que indica cuando se termino de ingresar el operando 
	//output logic [15:0] save_val); //valor que se debe guardar
	
	logic [15:0] reg_val; //valor que tenia guardado anteriormente el registro
	logic save; //señal que indica cuando se debe guardar el dato
	logic [15:0] to_reg; //valor que se va a guardar en el registro

    banco_de_registros registro(.guardar(save),.clock(clock),.reset(reset),.enable(1'b1),.entrada(to_reg),.salida(reg_val));
    
    assign salida = reg_val;

 //Declarations:------------------------------

 //FSM states type:
 enum logic [3:0] {Idle, Wait_D1, Save_D1, Wait_D2, Save_D2, Wait_D3, Save_D3, Wait_D4, Save_D4, Wait_D5, Save_D5, Wait_D6, Save_D6} state, next_state;

 //Statements:--------------------------------

 //FSM state register:
always@(posedge clock or posedge reset)
    	if(reset)
    		state <= Wait_D1;
    	else
    		state <= next_state;

 //FSM combinational logic:
 always_comb begin
 
 //valores por defecto
 next_state = state;
 save = 1'b0;
 listo = 1'b0;
 
	case (state)
	
	   Idle: if(start) next_state = Wait_D1;
	
		Wait_D1: begin
            if(enter)
               next_state = Save_D1;
            else if(exe) begin
                //to_reg = 'b0;
                //save = 1'b1; no se si son necesarias, el reg deberia empezar en 0
                listo = 1'b1;
            end
                
		end
 
		Save_D1: begin
		  to_reg = in_val;
		  save = 1'b1;
	      next_state = Wait_D2;
		end
		
		
		
		
		Wait_D2: begin
            if(enter)
               next_state = Save_D2;
            else if(exe) begin
                listo = 1'b1;
            end
                
		end
 
		Save_D2: begin
		  if(modo) to_reg = in_val + reg_val*16;
		  else to_reg = in_val + reg_val*10;
		  save = 1'b1;
	      next_state = Wait_D3;
		end
		
		
		
		Wait_D3: begin
            if(enter)
               next_state = Save_D3;
            else if(exe) begin
                listo = 1'b1;
            end
                
		end
 
		Save_D3: begin
		  if(modo) to_reg = in_val + reg_val*16;
		  else to_reg = in_val + reg_val*10;
		  save = 1'b1;
	      next_state = Wait_D4;
		end
		
		Wait_D4: begin
            if(enter)
               next_state = Save_D4;
            else if(exe) begin
                listo = 1'b1;
            end
                
		end
 
		Save_D4: begin
		  if(modo) to_reg = in_val + reg_val*16;
		  else to_reg = in_val + reg_val*10;
		  save = 1'b1;
	      next_state = Wait_D3;
		end
		
		
		Wait_D5: begin
            if(enter)
               next_state = Save_D5;
            else if(exe) begin
                listo = 1'b1;
            end
                
		end
 
		Save_D5: begin
		  if(modo || (in_val + reg_val*10 > 16'hFF)) next_state = Wait_D5;
		  else to_reg = in_val + reg_val*10;
		  save = 1'b1;
	      next_state = Wait_D6;
		end
		
		
		
		Wait_D6: begin
            if(enter)
               next_state = Save_D5;
            else if(exe) begin
                listo = 1'b1;
            end
                
		end
 
		Save_D6: begin
		  if(modo || (in_val + reg_val*10 > 16'hFF)) next_state = Wait_D6;
		  else to_reg = in_val + reg_val*10;
		  save = 1'b1;
	      next_state = Idle;
		end
		
		
	endcase
end
 endmodule