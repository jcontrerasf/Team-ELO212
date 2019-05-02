`timescale 1ns / 1ps

module EIGHTOFOUR(
    input logic [7:0] inbit,
    output logic [3:0] outbit1,
    output logic [3:0] outbit2
    );
    
    always_comb begin
        outbit1 = inbit[3:0];
        outbit2 = inbit[7:4];
    end
endmodule
