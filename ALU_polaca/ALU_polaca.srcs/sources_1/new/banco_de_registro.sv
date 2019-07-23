`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2019 14:56:00
// Design Name: 
// Module Name: banco_de_registro
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


module banco_de_registro
#(parameter
 bits = 16 )
(
    input logic guardar, clock, reset, enable, borrar,
    input logic [bits-1:0] entrada,
    output logic [bits-1:0] salida
    );
    
//    enum logic {esperar,retener} state, next_state;
    
//    logic [15:0] salida;
    
//   always_comb begin
   
//   next_state = state;
//   salida = 'b0;
   
     
//        case (state)
//        esperar: begin
//            if(guardar & enable)
//                next_state = retener;
//                salida = entrada;
//        end
//        retener: begin
//            if(borrar & enable) next_state = esperar;
//        end
//     endcase
//   end
        
    always@(posedge clock or posedge reset)
    	if(reset) begin
//    		state <= esperar;
    		salida <= 'b0;
    	end
    	else if(guardar & enable) begin
//    		state <= next_state;
    		salida <= entrada;
        end
    
endmodule
