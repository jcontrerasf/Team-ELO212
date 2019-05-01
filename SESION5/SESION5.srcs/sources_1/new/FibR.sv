`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2019 17:00:15
// Design Name: 
// Module Name: FibR
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


module FibR(
    input logic [3:0] BCD,
    output logic fib
    );
    
    always_comb begin
        if(BCD==4'd0||BCD==4'd1||BCD==4'd2||BCD==4'd4||BCD==4'd5||BCD==4'd8||BCD==4'd9||BCD==4'd10)
            fib = 0;
        else
            fib = 1;
    end
endmodule

