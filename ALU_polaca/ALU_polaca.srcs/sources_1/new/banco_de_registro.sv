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
    input logic guardar, clock, reset, borrar, enable,
    input logic [bits-1:0] entrada,
    output logic [bits-1:0] salida
    );
    
    enum logic {esperar,retener} state, next_state;
    
   always_comb begin
   
   next_state = state;
   salida = 'b0;
   
     if(enable) begin
     
        case (state)
        esperar: begin
            if(guardar) next_state = retener;
        end
        retener: begin
            if(borrar) next_state = esperar;
            else salida = entrada;
        end
     endcase
     end
   end
        
    always@(posedge clock or posedge reset)
    	if(reset)
    		state <= esperar;
    	else
    		state <= next_state;
    
endmodule
