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
    
    reg rx_ready;
    reg rx_ready_sync;
	wire rx_ready_pre;

    
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
    
    uart_rx_ctrl ctrl(.clock(CLK100MHZ),.reset(~CPU_RESET),.rx_ready(rx_ready),.RGB({LED16_R,LED16_G,LED16_B}));
    

	banco_de_registro #(.bits(8)) bancoA1(.guardar(rx_ready),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(salida),.enable(1'b1));
//	banco_de_registro #(.bits(8)) bancoA2(.guardar(ready),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(salida),.enable(1'b1));
//	banco_de_registro #(.bits(8)) bancoB1(.guardar(ready),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(salida),.enable(1'b1));
//	banco_de_registro #(.bits(8)) bancoB2(.guardar(ready),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(salida),.enable(1'b1));
//	banco_de_registro #(.bits(8)) bancoOP(.guardar(ready),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(salida),.enable(1'b1));

    uart_baud_tick_gen #(
		.CLK_FREQUENCY(100000000),
		.BAUD_RATE(115200),
		.OVERSAMPLING(8)
	) baud8_tick_blk (
		.clk(CLK100MHZ),
		.enable(1'b1),
		.tick(baud8)
	);
	
	uart_rx uart_rx_blk (
		.clk(CLK100MHZ),
		.reset(~CPU_RESET),
		.baud8_tick(baud8),
		.rx(UART_TXD_IN),
		.rx_data(out),
		.rx_ready(rx_ready_pre)
	);

	always @(posedge CLK100MHZ) begin
		rx_ready_sync <= rx_ready_pre;
		rx_ready <= ~rx_ready_sync & rx_ready_pre;
	end
	
	
    
endmodule