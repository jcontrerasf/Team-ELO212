`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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


module FSM
//#(parameter
//	param1 = < value > ,
//	param2 = < value > )
(
	input 	logic clock, reset, invalido, siguiente, undo,
	input logic [15:0] res_alu, switches,
	output logic [1:0] RG, //rojo verde
	output logic [2:0] activar_reg, //activa el registro que corresponde {a,b,op}
	output logic [7:0] usados,
	output logic [15:0] mostrar);

 //Declarations:------------------------------

 //FSM states type:
 enum logic [1:0] {Wait_OP1, Wait_OP2, Wait_Operation, Show_Result} state, next_state;

 //Statements:--------------------------------

 //FSM state register:
always@(posedge clock or posedge reset)
    	if(reset)
    		state <= Wait_OP1;
    	else
    		state <= next_state;

 //FSM combinational logic:
 always_comb begin
 
 RG = 2'b00; //led rgb apagado
 usados = 8'b00011111;
 activar_reg = 3'b000;
 mostrar = 20'b0;
 next_state = state;
 
	case (state)
		Wait_OP1: begin
		    mostrar = switches;
            if(siguiente) begin
               next_state = Wait_OP2;
               activar_reg = 3'b100;
               end
            else if(undo)
	           next_state = Wait_OP1;
		end
 
		Wait_OP2: begin
		  mostrar = switches;
		  if(siguiente) begin
	           next_state = Wait_Operation;
	           activar_reg = 3'b010;
	           end
	      else if(undo)
	           next_state = Wait_OP1;
		end
 
		Wait_Operation: begin
			usados = 8'b00000000; //todos los displays apagados
			if(siguiente) begin
	           next_state = Show_Result;
	           activar_reg = 3'b001;
	           end
	      else if(undo)
	           next_state = Wait_OP2;
		end
		
		Show_Result: begin
		  mostrar = res_alu;
		  if(invalido)
		      RG = 2'b10; //rojo verde
		  else
		      RG = 2'b01; //rojo verde
		  if(siguiente)
		      next_state = Wait_OP1;
		  else if(undo)
		      next_state = Wait_Operation;
		end
		
	endcase
end
 endmodule