`timescale 1ns / 1ps


module BCDtoS
#(parameter NB = 4)(
    
    input logic [NB-1:0] BCD,
    output logic [6:0] sevenseg
    );
    always_comb begin
        case(BCD)
            'd0:   sevenseg = ~7'b1111110;
            'd1:   sevenseg = ~7'b0110000;
            'd2:   sevenseg = ~7'b1101101;
            'd3:   sevenseg = ~7'b1111001;
            'd4:   sevenseg = ~7'b0110011;
            'd5:   sevenseg = ~7'b1011011;
            'd6:   sevenseg = ~7'b1011111;
            'd7:   sevenseg = ~7'b1110000;
            'd8:   sevenseg = ~7'b1111111;
            'd9:   sevenseg = ~7'b1111011;
            'd10:   sevenseg = ~7'b1110111;
            'd11:   sevenseg = ~7'b0011111;
            'd12:   sevenseg = ~7'b1001110;
            'd13:   sevenseg = ~7'b0111101;
            'd14:   sevenseg = ~7'b1001111;
            'd15:   sevenseg = ~7'b1111011;
            default: sevenseg = ~7'b0000000;
        endcase
    end
endmodule