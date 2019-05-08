`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2019 12:53:30
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Segundo intento
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main(
    input logic CLK100MHZ, CPU_RESET,
    output logic [3:1] JA
    ); 
    
    divider #(.maxcount(5000000)) diez(.clkin(CLK100MHZ),.reset(CPU_RESET),.clkout(JA[1]));
    divider #(.maxcount(1666666)) treinta(.clkin(CLK100MHZ),.reset(CPU_RESET),.clkout(JA[2]));
    divider #(.maxcount(100000)) quinientos(.clkin(CLK100MHZ),.reset(CPU_RESET),.clkout(JA[3]));
endmodule