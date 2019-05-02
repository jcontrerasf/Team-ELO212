`timescale 1ns / 1ps

module TOFOUR(
    input logic [15:0] inbit,
    output logic [3:0] outbit0,
    output logic [3:0] outbit1,
    output logic [3:0] outbit2,
    output logic [3:0] outbit3
    );
    
    always_comb begin
        outbit0 = inbit[3:0];
        outbit1 = inbit[7:4];
        outbit2 = inbit[11:8];
        outbit3 = inbit[15:12];
       
    end
endmodule

