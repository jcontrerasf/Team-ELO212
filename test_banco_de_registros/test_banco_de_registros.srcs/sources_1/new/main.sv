`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2019 21:38:02
// Design Name: 
// Module Name: main
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


module main(
    input logic CLK100MHZ, CPU_RESET, BTNC,
    output logic [7:0] AN,
    input logic [15:0] SW,
    output [6:0] seg
    );
    
    logic reloj, inv, centro;
    logic [3:0] nada;
    logic [7:0] salida;
    logic [3:0] bcdout;
    logic [7:0] uso;
    logic [31:0] dec;
    logic [2:0] registros;
    logic [15:0] mostrar;
    
    assign nada = 4'b0000;
    
    divider #(.maxcount(104166)) uno(.clkin(CLK100MHZ),.reset(CPU_RESET),.clkout(reloj));
    TDM multiplex(.clk(reloj),
    .reset(CPU_RESET),
    .d1(dec[3:0]),
    .d2(dec[7:4]),
    .d3(dec[11:8]),
    .d4(dec[15:12]),
    .d5(dec[19:16]),.d6(nada),.d7(nada),.d8(nada),.anodos(AN),.bcd(bcdout),.usados(8'b00001111));
    BCD toseven(.bcd(bcdout),.segmentos(seg));
	debouncer btn_central(.clk(CLK100MHZ),.rst(~CPU_RESET),.PB(BTNC),.PB_pressed_pulse(centro)); //puede ser bueno cambiar pulse por status
	banco_de_registro bancoA(.guardar(centro),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(SW),.salida(dec),.enable(1'b1));
    
endmodule