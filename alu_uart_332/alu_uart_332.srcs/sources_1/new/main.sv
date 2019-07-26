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
    input logic CLK100MHZ, CPU_RESET, UART_TXD_IN,// UART_RXD_OUT,
    output logic [7:0] AN,
//    input logic [15:0] SW,
    output [6:0] seg,
    output logic LED16_G, LED16_R, LED16_B
    );
    
    logic reloj, baud, baud8, ready;
    logic [3:0] nada;
    logic [7:0] salida;
    logic [3:0] bcdout;
    logic [7:0] out;

    
    assign nada = 4'b0000;
    
    divider #(.maxcount(104166)) uno(.clkin(CLK100MHZ),.reset(CPU_RESET),.clkout(reloj));
    TDM multiplex(.clk(reloj),
    .reset(CPU_RESET),
    .d1(salida[3:0]),
    .d2(salida[7:4]),
    .d3(nada),
    .d4(nada),
    .d5(nada),.d6(nada),.d7(salida[3:0]),.d8(salida[7:4]),.anodos(AN),.bcd(bcdout),.usados(8'b11000011));
    BCD toseven(.bcd(bcdout),.segmentos(seg));
    
//    deserializador ua(.data_in(UART_TXD_IN),.tick8(baud8),.tick(baud),.data_out(out),.rx_ready(ready));
	
	uart_rx_ctrl ctrl(.clock(CLK100MHZ),.reset(~CPU_RESET),.rx_ready(ready),.RGB({LED16_R,LED16_G,LED16_B}));
	
//	uart_rx recibidor(.i_Clock(CLK100MHZ),.i_Rx_Serial(UART_TXD_IN),.o_Rx_DV(ready),.o_Rx_Byte(out));

    uart_recibidor rx(.data_in(UART_TXD_IN),.clock(CLK100MHZ),.data_out(out),.rx_ready(ready),.btn_rst(~CPU_RESET));
	
	banco_de_registro #(.bits(8)) bancoA1(.guardar(ready),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(salida),.enable(1'b1));
//	banco_de_registro #(.bits(8)) bancoA2(.guardar(ready),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(salida),.enable(1'b1));
//	banco_de_registro #(.bits(8)) bancoB1(.guardar(ready),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(salida),.enable(1'b1));
//	banco_de_registro #(.bits(8)) bancoB2(.guardar(ready),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(salida),.enable(1'b1));
//	banco_de_registro #(.bits(8)) bancoOP(.guardar(ready),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(salida),.enable(1'b1));
	
	
    
endmodule