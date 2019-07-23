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
    input logic [15:0] SW,
    output [6:0] seg,
    output logic LED16_G, LED16_R

    );
    
    logic reloj, inv;
    logic [3:0] nada;
    logic [7:0] salida;
    logic [3:0] bcdout;
    logic [7:0] uso;
    logic [31:0] dec;
    logic [2:0] registros;
    logic [15:0] mostrar;
    logic [15:0] a, b, resultado;
    logic [1:0] op;
    
    assign nada = 4'b0000;
    
    divider #(.maxcount(104166)) uno(.clkin(CLK100MHZ),.reset(CPU_RESET),.clkout(reloj));
    TDM multiplex(.clk(reloj),
    .reset(CPU_RESET),
    .d1(dec[3:0]),
    .d2(dec[7:4]),
    .d3(dec[11:8]),
    .d4(dec[15:12]),
    .d5(dec[19:16]),.d6(nada),.d7(nada),.d8(nada),.anodos(AN),.bcd(bcdout),.usados(uso));
    BCD toseven(.bcd(bcdout),.segmentos(seg));
	FSM maquina(.RG({LED16_R,LED16_G}),.usados(uso),.clock(CLK100MHZ),.reset(~CPU_RESET),.invalido(inv),.siguiente(centro),.undo(abajo),.activar_reg(registros),.res_alu(resultado),.switches(SW),.mostrar(mostrar));
	ALU alu(.A(a),.B(b),.botones(op),.salida(resultado),.invalido(inv));
	debouncer btn_central(.clk(CLK100MHZ),.rst(~CPU_RESET),.PB(BTNC),.PB_pressed_pulse(centro)); //puede ser bueno cambiar pulse por status
	debouncer btn_derecho(.clk(CLK100MHZ),.rst(~CPU_RESET),.PB(BTND),.PB_pressed_pulse(abajo));
	debouncer btn_up(.clk(CLK100MHZ),.rst(~CPU_RESET),.PB(BTNU),.PB_pressed_status(up));
	banco_de_registro bancoA(.guardar(centro),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(SW),.salida(a),.enable(registros[0]),.borrar(abajo));
	banco_de_registro bancoB(.guardar(centro),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(SW),.salida(b),.enable(registros[1]),.borrar(abajo));
	banco_de_registro #(.bits(2)) bancoOP(.guardar(centro),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(SW[1:0]),.salida(op),.enable(registros[2]),.borrar(abajo));
	dec_switcher switcher(.cambiar(up),.clock(CLK100MHZ),.hex(mostrar),.salida(dec),.trigger(1'b1));
    
endmodule
