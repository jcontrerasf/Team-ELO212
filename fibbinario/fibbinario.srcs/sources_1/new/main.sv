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
    input logic CLK100MHZ, CPU_RESET, BTNC,
    output logic [7:0] AN,
    output [6:0] seg,
    output logic DP
    );
    
    logic uno;
    logic [3:0] bcd;
    
    assign AN=8'b11111110;
    
    divider #(.maxcount(50000000)) div(.clkin(CLK100MHZ),.reset(CPU_RESET),.clkout(uno));
    contador cont(.clk(uno),.reset(BTNC),.count(bcd));
    BCD toseven(.bcd(bcd),.segmentos(seg));
    fib fibbinario(.BCD(bcd),.fib(DP));
    
endmodule