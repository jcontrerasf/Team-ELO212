`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2019 19:15:58
// Design Name: 
// Module Name: TDM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Este modulo recibe 8 digitos de 4 bits cada uno (BCD) y en cada canto de reloj
//deja pasar solo uno de estos y a la vez activa solo un anodo.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TDM2
#(parameter digitos = 8)
    (input logic clk,reset,
    input logic [3:0] d1,d2,d3,d4,d5,d6,d7,d8,
    output logic [7:0] anodos,
    output logic [3:0] bcd
    );
    
    logic [2:0] contador;
    
    always_ff @(posedge clk) begin
    if(reset)
        contador <= 0;
    else
        contador <= contador + 1;
    
    case (contador)
        3'b000: begin
            anodos = 8'b00000001;
            bcd = d1;
        end
        3'b001: begin
            anodos = 8'b00000010;
            bcd = d2;
        end
        3'b010: begin 
            anodos = 8'b00000100;
            bcd = d3;
        end
        3'b011: begin
            anodos = 8'b00001000;
            bcd = d4;
        end
        3'b100: begin
            anodos = 8'b00010000;
            bcd = d5;
        end
        3'b101: begin
            anodos = 8'b00100000;
            bcd = d6;
        end
        3'b110: begin
            anodos = 8'b01000000;
            bcd = d7;
        end
        3'b111: begin
            anodos = 8'b10000000;
            bcd = d8;
        end
        default: begin
            anodos = 8'b00000000;
            bcd = 0;
        end
    endcase
    end
endmodule
