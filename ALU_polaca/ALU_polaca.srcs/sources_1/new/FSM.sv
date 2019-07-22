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
	input 	logic [7:0] inp1, inp2,
	output 	logic [15:0] outp1, outp2,
	output logic [1:0] RG, //rojo verde
	output logic [7:0] usados);

 //Declarations:------------------------------

 //FSM states type:
 enum logic [1:0] {Wait_OP1, Wait_OP2, Wait_Operation, Show_Result} state, next_state;

 //Statements:--------------------------------

 //FSM state register:
 always_ff @(posedge clk, posedge rst)
	if (rst) pr_state < = A;
	else pr_state < = nx_state;

 //FSM combinational logic:
 always_comb begin
	case (state)
		Wait_OP1: begin
            if(siguiente)
               next_state = Wait_OP2;
		end
 
		Wait_OP2: begin
		  if(siguiente)
	           next_state = Wait_Operation;
	      if(undo)
	           next_state = Wait_OP1
		end
 
		Wait_Operation: begin
			usados = 8'b00000000; //todos los displays apagados
			RG = 2'b00; //led rgb apagado
		end
		Show_Result: begin
		  if(invalido)
		      RG = 2'b10; //rojo verde
		  else
		      RG = 2'b01 //rojo verde
		end
	endcase
end
 endmodule