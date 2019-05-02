`timescale 1ns / 1ps


module Proto(
    input logic [3:0] SW,
    output logic [6:0] Ca
     );
    BCDtoS fa(.BCD(SW),.sevenseg(Ca));
   
endmodule
