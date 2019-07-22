`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2019 20:29:51
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: ALU modificada para funcionar segun lo especificado en Lab 6
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU
#(parameter
bits = 16 )
(
    input logic [bits-1:0] A,B, //operandos
    input logic [1:0] botones, // {+,-,OR,AND} (operacion)
    output logic [bits-1:0] salida,
    output logic invalido //1 si si, 0 si no
    );
    
    always_comb begin
        case(botones)
            2'b00:
            begin
                {invalido,salida} = A+B;
            end
            2'b01: begin
                {invalido,salida} = A-B;
             end
            2'b10: begin
                {invalido,salida} = A&B;
            end
            2'b11: begin 
                {invalido,salida} = A|B;
            end
            default: begin
                salida=0;
                invalido = 1;
            end
        endcase
    end
endmodule