`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2019 00:59:37
// Design Name: 
// Module Name: BCD
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: BCD a decimal
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BCD(
    input logic [3:0] bcd,
    output logic [6:0] segmentos
    );
    
    always_comb begin
        case (bcd)
            4'd0:   segmentos = ~7'b0111111;
            4'd1:   segmentos = ~7'b0000110;
            4'd2:   segmentos = ~7'b1011011;
            4'd3:   segmentos = ~7'b1001111;
            4'd4:   segmentos = ~7'b1100110;
            4'd5:   segmentos = ~7'b1101101;
            4'd6:   segmentos = ~7'b1111101;
            4'd7:   segmentos = ~7'b0000111;
            4'd8:   segmentos = ~7'b1111111;
            4'd9:   segmentos = ~7'b1100111;
            4'd10:   segmentos = ~7'b1110111;
            4'd11:   segmentos = ~7'b1111100;
            4'd12:   segmentos = ~7'b0111001;
            4'd13:   segmentos = ~7'b1011110;
            4'd14:   segmentos = ~7'b1111001;
            4'd15:   segmentos = ~7'b1110001;
            default: segmentos = ~7'b0000000;
        endcase
    end
endmodule