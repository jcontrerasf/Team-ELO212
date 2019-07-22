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

//Plantilla de instanciacion:
//TDM multiplex(.clk(reloj),
//    .reset(CPU_RESET),
//    .d1(salida[3:0]),
//    .d2(salida[7:4]),
//    .d3(nada),
//    .d4(nada),
//    .d5(nada),
//    .d6(nada),
//    .d7(nada),
//    .d8(nada),
//    .anodos(AN)
//,   .bcd(bcdout)
//,   .usados(uso));
//
//////////////////////////////////////////////////////////////////////////////////


module TDM
#(parameter digitos = 8)
    (input logic clk,reset,
    input logic [3:0] d1,d2,d3,d4,d5,d6,d7,d8,
    input logic [7:0] usados, //los display usados deben tener 1 // estan en el mismo orden
    output logic [7:0] anodos,
    output logic [3:0] bcd
    );
    
    logic [2:0] contador;
    
    always_ff @(posedge clk) begin
    if(reset == 'b0) //cpu reset utiliza logica negada
        contador <= 0;
    else
        contador <= contador + 1;
    
    case (contador)
        3'b000: begin
            if (usados[0])
                anodos <= ~8'b00000001;
            else
                anodos <= ~8'b00000000;
            bcd <= d1;
        end
        3'b001: begin
            if (usados[1])
                anodos <= ~8'b00000010;
            else
                anodos <= ~8'b00000000;
            bcd <= d2;
        end
        3'b010: begin
            if (usados[2])
                anodos <= ~8'b00000100;
            else
                anodos <= ~8'b00000000;
            bcd <= d3;
        end
        3'b011: begin
            if (usados[3])
                anodos <= ~8'b00001000;
            else
                anodos <= ~8'b00000000;
            bcd <= d4;
        end
        3'b100: begin
            if (usados[4])
                anodos <= ~8'b00010000;
            else
                anodos <= ~8'b00000000;
            bcd <= d5;
        end
        3'b101: begin
            if (usados[5])
                anodos <= ~8'b00100000;
            else
                anodos <= ~8'b00000000;
            bcd <= d6;
        end
        3'b110: begin
            if (usados[6])
                anodos <= ~8'b01000000;
            else
                anodos <= ~8'b00000000;
            bcd <= d7;
        end
        3'b111: begin
            if (usados[7])
                anodos <= ~8'b10000000;
            else
                anodos <= ~8'b00000000;
            bcd <= d8;
        end
        default: begin
            anodos <= ~8'b00000000;
            bcd <= 0;
        end
    endcase
    end
endmodule