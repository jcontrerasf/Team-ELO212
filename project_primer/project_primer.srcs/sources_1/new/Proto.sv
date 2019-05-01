`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2019 14:37:08
// Design Name: 
// Module Name: Proto
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


module Proto(
    input logic CLK100MHZ, SW,
    output logic DP,
    output logic CA,CB,CC,CD,CE,CF,CG
     );
    logic [3:0] counterout;//conecta el contador con el detector de fibinarios y BCDtoS
    BCDtoS fa(.BCD(counterout),.sevenseg({CA,CB,CC,CD,CE,CF,CG}));
    Counter fb(.clk(CLK100MHZ),.reset(SW),.count(counterout));
    FibR fc(.BCD(counterout),.fib(DP));
   
endmodule
