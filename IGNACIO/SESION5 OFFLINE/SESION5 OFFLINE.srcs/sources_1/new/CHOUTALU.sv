`timescale 1ns / 1ps

module CHOUTALU
(
    input logic UP,DOWN,
    output logic show
    );
    
     always_comb begin
        if (UP == 1'b1 | DOWN == 1'b1) begin
            show = 1;
        end else begin
            show = 0;
        end
        end
    
endmodule
