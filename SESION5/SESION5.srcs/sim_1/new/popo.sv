`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2019 18:01:39
// Design Name: 
// Module Name: popo
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


module sim();
    logic [3:0] swi;
    logic [6:0] ca;
    
    logic clk, reset;
    initial begin
        swi = 4'b0000;
        clk = 0;
        reset = 1;
        #10
        reset = 0;
    end
    
    always #1 clk = ~clk;
    always_ff @(posedge clk) begin
        swi <= swi + 4'b0001;
        end
   BCDtoS fa(.BCD(swi),.sevenseg(ca));     
    
endmodule
