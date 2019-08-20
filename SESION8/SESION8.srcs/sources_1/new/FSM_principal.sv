`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2019 23:53:54
// Design Name: 
// Module Name: FSM_principal
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


module FSM_principal(
    input logic clock, reset, enter, exe, modo, //modo: 0=dec, 1=hex / El exe lo recibe como un pulso
	input logic [15:0] in_val, //valor de entrada
	output logic [15:0] op1, op2, op
    );
    
    logic start1, start2, save_op, listo1, listo2;
    
    
    banco_de_registros #(.bits(8)) operando(.guardar(save_op),.clock(clock),.reset(reset),.enable(1'b1),.entrada(in_val),.salida(op));
    digito_in operando1(.clock(clock),.reset(reset),.enter(enter),.exe(exe),.start(start1),.modo(modo),.in_val(in_val),.salida(op1),.listo(listo1));
    digito_in operando2(.clock(clock),.reset(reset),.enter(enter),.exe(exe),.start(start2),.modo(modo),.in_val(in_val),.salida(op2),.listo(listo2));
    
    //FSM states type:
 enum logic [2:0] {Idle, Wait_OP1, Save_OP1, Wait_OP2, Save_OP2, Wait_op, Save_op, Show} state, next_state;


 //FSM state register:
always@(posedge clock or posedge reset)
    	if(reset)
    		state <= Wait_OP1;
    	else
    		state <= next_state;

 //FSM combinational logic:
 always_comb begin
 
 //valores por defecto
 next_state = state;
 save_op = 1'b0;
 start1 = 1'b0;
 start2 = 1'b0;
 
 case(state)
    Wait_OP1: begin
        start1 = 1'b1;
        next_state = Save_OP1;
        end
    Save_OP1: if(listo1) next_state = Wait_OP2;
    Wait_OP2: begin
        start2 = 1'b1;
        next_state = Save_OP2;
        end
    Save_OP2: if(listo2) next_state = Wait_OP2;
    Wait_op: if(enter) next_state = Save_op; 
    Save_op: begin
        save_op = 1'b1;
        next_state = Wait_OP1;
        end
    //Show:  No se que tiene que hacer en este punto FALTA COMPLETAR
 endcase
 
 end
endmodule
