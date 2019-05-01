`timescale 1ns / 1ps

module BCDtoS(
    input logic [3:0] BCD,
    output logic [6:0] sevenseg
    );
    always_comb begin
        case(BCD)
            4'd0:   sevenseg = ~7'b1111110;
            4'd1:   sevenseg = ~7'b0110000;
            4'd2:   sevenseg = ~7'b1101101;
            4'd3:   sevenseg = ~7'b1111001;
            4'd4:   sevenseg = ~7'b0110011;
            4'd5:   sevenseg = ~7'b1011011;
            4'd6:   sevenseg = ~7'b1011111;
            4'd7:   sevenseg = ~7'b1110000;
            4'd8:   sevenseg = ~7'b1111111;
            4'd9:   sevenseg = ~7'b1111011;
            4'd10:   sevenseg = ~7'b1111011;
            4'd11:   sevenseg = ~7'b1111011;
            4'd12:   sevenseg = ~7'b1111011;
            4'd13:   sevenseg = ~7'b1111011;
            4'd14:   sevenseg = ~7'b1111011;
            4'd9:   sevenseg = ~7'b1111011;
            
            default: sevenseg = ~7'b0000000;
        endcase
    end
endmodule
