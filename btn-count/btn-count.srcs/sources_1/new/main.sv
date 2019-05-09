`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2019 16:19:55
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
    input logic CLK100MHZ, CPU_RESET, BTNC, BTNU,
    output logic [7:0] AN,
    output [6:0] seg

    );
    
    logic reloj;
    logic [3:0] nada;
    logic [7:0] salida;
    logic [3:0] bcdout;
    logic [7:0] uso;
    logic [31:0] dec;
    
    assign nada = 4'b0000;
    assign uso = 8'b00000111;
    
    divider #(.maxcount(104166)) uno(.clkin(CLK100MHZ),.reset(CPU_RESET),.clkout(reloj));
    contador #(.bits(8)) unidad(.clk(CLK100MHZ),.btn(BTNU),.reset(BTNC),.count(salida));
    TDM multiplex(.clk(reloj),
    .reset(CPU_RESET),
    .d1(dec[3:0]),
    .d2(dec[7:4]),
    .d3(dec[11:8]),
    .d4(nada),
    .d5(nada),.d6(nada),.d7(nada),.d8(nada),.anodos(AN),.bcd(bcdout),.usados(uso));
    BCD toseven(.bcd(bcdout),.segmentos(seg));
    unsigned_to_bcd u32_to_bcd_inst (
		.clk(CLK100MHZ),
		.trigger(BTNU),
		.in(salida),
		.idle(),
		.bcd(dec)
	);
    
endmodule
