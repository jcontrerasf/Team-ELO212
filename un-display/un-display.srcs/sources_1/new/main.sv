`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2019 00:55:37
// Design Name: 
// Module Name: main
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


module main(
    input logic [3:0] SW,
    output logic [7:0] AN,
    output [6:0] seg
    );
    
    assign AN=8'b11111110;
    BCD seven(.bcd(SW),.segmentos(seg));
    
endmodule
