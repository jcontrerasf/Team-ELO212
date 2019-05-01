`timescale 1ns / 1ps


module Proto(
    input logic CLK100MHZ, SW[0:3],
    output logic Ca[0:6],AN
     );
    BCDtoS fa(.BCD(SW[0:3]),.sevenseg(Ca[0:6]));
   
endmodule
