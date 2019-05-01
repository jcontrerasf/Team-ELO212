`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2019 17:41:58
// Design Name: 
// Module Name: ProtoSIM
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


module ProtoSIM(
    logic clk, reset,
    logic DP,
    logic CA,CB,CC,CD,CE,CF,CG
     );
    logic [3:0] counterout;//conecta el contador con el detector de fibinarios y BCDtoS
    BCDtoS fa(.BCD(counterout),.sevenseg({CA,CB,CC,CD,CE,CF,CG}));
    Counter fb(.clk(clk),.reset(reset),.count(counterout));
    FibR fc(.BCD(counterout),.fib(DP));
    
    initial begin
        clk = 0 ;
        reset = 1;
        #10 reset = 0;
    end
    
   
endmodule
