`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2019 20:11:15
// Design Name: 
// Module Name: gestionar_display
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


module gestionar_display(
    input logic [15:0] switches,
    input logic [2:0] estado,
    input logic [15:0] res_alu,
    output logic [19:0] mostrar
    );
    
    always_comb begin
        case(estado)
            3'b000: mostrar = res_alu;
            3'b100: mostrar = switches;
            3'b010: mostrar = switches;
            default: mostrar = 20'b0;
        endcase
    end
    
endmodule
