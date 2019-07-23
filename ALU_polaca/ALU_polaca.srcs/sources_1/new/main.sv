`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2019 12:51:15
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
    input logic CLK100MHZ, CPU_RESET, BTNC, BTND, BTNU,
    output logic [7:0] AN,
    output [6:0] seg,
    output logic LED16_G, LED16_R

    );
    
    logic reloj, inv;
    logic [3:0] nada;
    logic [7:0] salida;
    logic [3:0] bcdout;
    logic [7:0] uso;
    logic [31:0] dec;
    
    assign nada = 4'b0000;
    
    divider #(.maxcount(104166)) uno(.clkin(CLK100MHZ),.reset(CPU_RESET),.clkout(reloj));
    TDM multiplex(.clk(reloj),
    .reset(CPU_RESET),
    .d1(dec[3:0]),
    .d2(dec[7:4]),
    .d3(dec[11:8]),
    .d4(nada),
    .d5(nada),.d6(nada),.d7(nada),.d8(nada),.anodos(AN),.bcd(bcdout),.usados(uso));
    BCD toseven(.bcd(bcdout),.segmentos(seg));
	FSM maquina(.RG({LED16_R,LED16_G}),.usados(uso),.clock(CLK100MHZ),.reset(~CPU_RESET),.invalido(inv),.siguiente(centro),.undo(der));
	ALU alu();
	debouncer btn_central(.clk(CLK100MHZ),.rst(~CPU_RESET),.PB(BTNC),.PB_pressed_pulse(centro));
	debouncer btn_derecho(.clk(CLK100MHZ),.rst(~CPU_RESET),.PB(BTND),.PB_pressed_pulse(der));
	banco_de_registro banco1();
	banco_de_registro banco2();
	dec_switcher switcher(.cambiar(BTNU),.clock(),.hex(),.salida(dec));
    
endmodule
