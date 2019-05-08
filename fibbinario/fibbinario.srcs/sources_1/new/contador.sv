`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2019 04:43:39
// Design Name: 
// Module Name: contador
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


module contador(
    input logic clk,reset,
    output logic [3:0] count
    );
    
    always_ff @(posedge clk) begin
        if (reset)
            count <= 4'b0;
        else
            count <= count+1;
    end
endmodule
