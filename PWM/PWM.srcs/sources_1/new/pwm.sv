`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2019 13:25:42
// Design Name: 
// Module Name: pwm
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


module pwm
#(parameter maxcount = 5000000)
(input logic clkin,
input logic reset, 
output logic clkout);

localparam delaywidth = $clog2(maxcount);
logic [delaywidth-1:0] counter = 'd0;

always_ff@(posedge clkin) begin
    if (reset == 1'b0) begin
        counter <= 'd0;
        clkout <= 0;
    end else if (counter == maxcount-1) begin
        counter <= 'd0;
        clkout <= ~clkout;
    end else begin
        counter <= counter + 'd1;
        clkout <= clkout;
    end
end
endmodule


