`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2019 13:47:19
// Design Name: 
// Module Name: c1
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

module clk1();
parameter clk_period = 10;
logic clk;
initial
 begin
  clk = 0;
 end
always #(clk_period/2) clk = ~clk;
endmodule
