`timescale 1ns / 1ps


module Proto(
    input logic CLK100MHZ, SW,
    output logic DP,
    output logic CA,CB,CC,CD,CE,CF,CG
     );
    logic [3:0] counterout;//conecta el contador con el detector de fibinarios y BCDtoS
    BCDtoS fa(.BCD(counterout),.sevenseg({CA,CB,CC,CD,CE,CF,CG}));
    Counter fb(.clk(CLK100MHZ),.reset(SW),.count(counterout));
    FibR fc(.BCD(counterout),.fib(DP));
   
endmodule
