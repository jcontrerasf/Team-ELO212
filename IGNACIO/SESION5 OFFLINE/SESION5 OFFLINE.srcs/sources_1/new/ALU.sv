`timescale 1ns / 1ps

module ALU
#(parameter NB = 8)
(
    input logic [NB-1:0] InA,
    input logic [NB-1:0] InB,
    input logic UP,DOWN,LEFT,RIGHT,
    output logic [15:0] result 
    );
    
    always_comb begin
        if (UP == 1'b1 && DOWN == 1'b0 && LEFT == 1'b0 && RIGHT == 1'b0) begin
            result = InA + InB;
        end else if (UP == 1'b0 && DOWN == 1'b1 && LEFT == 1'b0 && RIGHT == 1'b0) begin
            if ( InA >= InB) begin
                result = InA - InB;
            end else begin
                result = InB - InA;
            end
        end else if (UP == 1'b0 && DOWN == 1'b0 && LEFT == 1'b1 && RIGHT == 1'b0) begin
            result = InA & InB;
        end else if (UP == 1'b0 && DOWN == 1'b0 && LEFT == 1'b0 && RIGHT == 1'b1) begin
            result = InA | InB;
        end else begin
            result = 0;
        end
        end


                
endmodule
