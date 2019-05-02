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
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(
    input logic [7:0] A,B,
    input logic [3:0] botones, // {+,-,OR,AND}
    output logic [7:0] salida,
    output logic invalido
    );
    
    always_comb begin
        case(botones)
            4'b1000:
            begin
                salida = A+B;
                invalido=0;
            end
            4'b0100: begin
                invalido=0;
                if(A>B)
                    salida = A-B;
                else 
                salida = B-A;
             end
            4'b0010: begin
                salida = A|B;
                invalido=0;
            end
            4'b0001: begin 
                salida = A&B;
                invalido=0;
            end
            default: begin
                salida=0;
                invalido = 1;
            end
        endcase
    end
endmodule
