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
    logic [7:0] salida, uso;
    logic [3:0] bcdout;
    logic [7:0] out;
    logic [4:0] enable;
    logic [19:0] dec;
    logic [15:0] hex, resultado;
    logic [1:0] mostrar;
    logic [33:0] out_reg;
    
    reg rx_ready;
    reg rx_ready_sync;
	wire rx_ready_pre;

    
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
    
    ALU alu(.A(out_reg[15:0]),.B(out_reg[31:16]),.botones(out_reg[33:32]),.salida(resultado));
    
    unsigned_to_bcd u32_to_bcd_inst (
		.clk(CLK100MHZ),
		.trigger(1'b1),
		.in(hex),
		.idle(),
		.bcd(dec)
	);
    
    uart_rx_ctrl ctrl(.clock(CLK100MHZ),.reset(~CPU_RESET),.rx_ready(rx_ready),.RGB({LED16_R,LED16_G,LED16_B}),.save_reg(enable),.mostrar(mostrar));
    
	banco_de_registro #(.bits(8)) bancoA1(.guardar(enable[0]),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(out_reg[7:0]),.enable(enable[0]));
	banco_de_registro #(.bits(8)) bancoA2(.guardar(enable[1]),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(out_reg[15:8]),.enable(enable[1]));
	banco_de_registro #(.bits(8)) bancoB1(.guardar(enable[2]),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(out_reg[23:16]),.enable(enable[2]));
	banco_de_registro #(.bits(8)) bancoB2(.guardar(enable[3]),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(out_reg[31:24]),.enable(enable[3]));
	banco_de_registro #(.bits(8)) bancoOP(.guardar(enable[4]),.clock(CLK100MHZ),.reset(~CPU_RESET),.entrada(out),.salida(out_reg[33:32]),.enable(enable[4]));

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
	
	always_comb begin
	uso = 8'b00011111;
	hex = 'b0;
	   case(mostrar)
	       2'b00: //apagado
	           uso = 8'b00000000;
	       2'b01: //OP1
	           hex = out_reg[15:0];
	       2'b10: //OP2
	           hex = out_reg[31:16];
	       2'b11: //resultado
	           hex = resultado;
	   endcase
	end
	
    
endmodule