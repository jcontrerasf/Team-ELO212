module lab_8(
	input CLK100MHZ,
	input [1:0]SW,
	input BTNC,	BTNU, BTNL, BTNR, BTND, CPU_RESETN,
	output [15:0] LED,
	output CA, CB, CC, CD, CE, CF, CG,
	output DP,
	output [7:0] AN,

	output VGA_HS,
	output VGA_VS,
	output [3:0] VGA_R,
	output [3:0] VGA_G,
	output [3:0] VGA_B
	);
	
	
	logic CLK82MHZ;
	logic rst = 0;
	logic hw_rst = ~CPU_RESETN;
	
	clk_wiz_0 inst(
		// Clock out ports  
		.clk_out1(CLK82MHZ),
		// Status and control signals               
		.reset(1'b0), 
		//.locked(locked),
		// Clock in ports
		.clk_in1(CLK100MHZ)
		);
		
    
    logic [2:0] posix;
    logic [1:0] posiy;
    logic [4:0] valor;
    logic up,down,left,right;
    logic [7:0] tost;
    
    logic [7:0] out;
    logic [2:0] enable;
    logic [33:0] out_reg;
    
 

    
    debouncer btn_up(.clk(CLK82MHZ),.rst(~CPU_RESETN),.PB(BTNU),.PB_pressed_pulse(up));
    debouncer btn_down(.clk(CLK82MHZ),.rst(~CPU_RESETN),.PB(BTND),.PB_pressed_pulse(down));
    debouncer btn_right(.clk(CLK82MHZ),.rst(~CPU_RESETN),.PB(BTNR),.PB_pressed_pulse(right));
    debouncer btn_left(.clk(CLK82MHZ),.rst(~CPU_RESETN),.PB(BTNL),.PB_pressed_pulse(left));
    
    grid_cursor item6(.clk(CLK82MHZ),.rst(CPU_RESETN),.restriction(SW[0]),.dir_up(up)
    ,.dir_down(down),.dir_left(left),.dir_right(right),.pos_x(posix),.pos_y(posiy),.val(valor));
    
    hex_to_ascii valorastring(.hex_num(valor),.ascii_conv(tost));
 
    
    
    
//    uart_rx_ctrl ctrl(.clock(CLK100MHZ),.reset(~CPU_RESETN),.rx_ready(rx_ready),.RGB({LED16_R,LED16_G,LED16_B}),.save_reg(enable),.mostrar(mostrar),.send_result(send_result));
    
//    banco_de_registros #(.bits(16)) bancoA(.guardar(enable[0]),.clock(CLK82MHZ),.reset(~CPU_RESETN),.entrada(out),.salida(out_reg[15:0]),.enable(enable[0]));
//	banco_de_registros #(.bits(16)) bancoB(.guardar(enable[1]),.clock(CLK82MHZ),.reset(~CPU_RESETN),.entrada(out),.salida(out_reg[31:16]),.enable(enable[1]));
//	banco_de_registros #(.bits(16)) bancoOP(.guardar(enable[2]),.clock(CLK82MHZ),.reset(~CPU_RESETN),.entrada(out),.salida(out_reg[33:32]),.enable(enable[2]));
    
    //***************************************



	/************************* VGA ********************/
	logic [2:0] op;
	logic [15:0] op1, op2;
    
    
    
	calculator_screen(
		.clk_vga(CLK82MHZ),
		.rst(rst),
		.mode(tost),
		.op(op),
		.pos_x(posix),
		.pos_y(posiy),
		.op1({"0",tost}),
		.op2(op2),
		.input_screen(16'd0),
		
		.VGA_HS(VGA_HS),
		.VGA_VS(VGA_VS),
		.VGA_R(VGA_R),
		.VGA_G(VGA_G),
		.VGA_B(VGA_B));

endmodule

/**
 * @brief Este modulo convierte un numero hexadecimal de 4 bits
 * en su equivalente ascii de 8 bits
 *
 * @param hex_num		Corresponde al numero que se ingresa
 * @param ascii_conv	Corresponde a la representacion ascii
 *
 */

module hex_to_ascii(
	input [4:0] hex_num,
	output logic[7:0] ascii_conv
	);
always_comb begin
      case(hex_num)
      5'h0: ascii_conv="0";
      5'h1: ascii_conv="1";
      5'h2: ascii_conv="2";
      5'h3: ascii_conv="3";
      5'h4: ascii_conv="4";
      5'h5: ascii_conv="5";
      5'h6: ascii_conv="6";
      5'h7: ascii_conv="7";
      5'h8: ascii_conv="8";
      5'h9: ascii_conv="9";
      5'hA: ascii_conv="A";
      5'hB: ascii_conv="B";
      5'hC: ascii_conv="C";
      5'hD: ascii_conv="D";
      5'hE: ascii_conv="E";
      5'hF: ascii_conv="F";
      5'b1_0000: ascii_conv="+";//suma
      5'b1_0001: ascii_conv="*";//mult
      5'b1_0010: ascii_conv="&";//and
      5'b1_0100: ascii_conv="-";//re
      5'b1_0101: ascii_conv="|";//or
      default: ascii_conv="X";
      
      endcase
      end
endmodule


/**
 * @brief Este modulo convierte un numero hexadecimal de 4 bits
 * en su equivalente ascii, pero binario, es decir,
 * si el numero ingresado es 4'hA, la salida debera sera la concatenacion
 * del string "1010" (cada caracter del string genera 8 bits).
 *
 * @param num		Corresponde al numero que se ingresa
 * @param bit_ascii	Corresponde a la representacion ascii pero del binario.
 *
 */
module hex_to_bit_ascii(
	input [3:0]num,
	output logic[4*8-1:0]bit_ascii
	);  
	always_comb begin
	   case(num)
	   4'h0: bit_ascii="0000";
	   4'h1: bit_ascii="0001";
	   4'h2: bit_ascii="0010";
	   4'h3: bit_ascii="0011";
	   4'h4: bit_ascii="0100";
	   4'h5: bit_ascii="0101";
	   4'h6: bit_ascii="0110";
	   4'h7: bit_ascii="0111";
	   4'h8: bit_ascii="1000";
	   4'h9: bit_ascii="1001";
	   4'hA: bit_ascii="1010";
	   4'hB: bit_ascii="1011"; 
	   4'hC: bit_ascii="1100";
	   4'hD: bit_ascii="1101";
	   4'hE: bit_ascii="1110";
	   4'hF: bit_ascii="1111";
	   
	   endcase
	   end
	
endmodule

/**
 * @brief Este modulo es el encargado de dibujar en pantalla
 * la calculadora y todos sus componentes graficos
 *
 * @param clk_vga		:Corresponde al reloj con que funciona el VGA.
 * @param rst			:Corresponde al reset de todos los registros
 * @param mode			:'0' si se esta operando en decimal, '1' si esta operando hexadecimal
 * @param op			:La operacion matematica a realizar
 * @param pos_x			:Corresponde a la posicion X del cursor dentro de la grilla.
 * @param pos_y			:Corresponde a la posicion Y del cursor dentro de la grilla.
 * @param op1			:El operando 1 en formato hexadecimal.
 * @param op2			;El operando 2 en formato hexadecimal.
 * @param input_screen	:Lo que se debe mostrar en la pantalla de ingreso de la calculadora (en hexa)
 * @param VGA_HS		:Sincronismo Horizontal para el monitor VGA
 * @param VGA_VS		:Sincronismo Vertical para el monitor VGA
 * @param VGA_R			:Color Rojo para la pantalla VGA
 * @param VGA_G			:Color Verde para la pantalla VGA
 * @param VGA_B			:Color Azul para la pantalla VGA
 */
module calculator_screen(
	input clk_vga,
	input rst,
	input [7:0] mode, //bcd or dec.
	input [2:0]op,
	input [2:0]pos_x,
	input [1:0]pos_y,
	input [15:0] op1,
	input [15:0] op2,
	input [15:0] input_screen,
	
	output VGA_HS,
	output VGA_VS,
	output [3:0] VGA_R,
	output [3:0] VGA_G,
	output [3:0] VGA_B
	);
	
	
	localparam CUADRILLA_XI = 		212;
	localparam CUADRILLA_XF = 		CUADRILLA_XI + 600;
	
	localparam CUADRILLA_YI = 		250;
	localparam CUADRILLA_YF = 		CUADRILLA_YI + 400;
	
	
	logic [10:0]vc_visible,hc_visible;
	
	// MODIFICAR ESTO PARA HACER LLAMADO POR NOMBRE DE PUERTO, NO POR ORDEN!!!!!
	driver_vga_1024x768 m_driver(clk_vga, VGA_HS, VGA_VS, hc_visible, vc_visible);
	/*************************** VGA DISPLAY ************************/
		
	logic [10:0]hc_template, vc_template;
	logic [2:0]matrix_x;
	logic [1:0]matrix_y;
	logic lines;
	
	template_6x4_600x400 #( .GRID_XI(CUADRILLA_XI), 
							.GRID_XF(CUADRILLA_XF), 
							.GRID_YI(CUADRILLA_YI), 
							.GRID_YF(CUADRILLA_YF)) 
    // MODIFICAR ESTO PARA HACER LLAMADO POR NOMBRE DE PUERTO, NO POR ORDEN!!!!!
	template_1(clk_vga, hc_visible, vc_visible, matrix_x, matrix_y, lines);
	
	logic [11:0]VGA_COLOR;
	
	logic text_sqrt_fg;
	logic text_sqrt_bg;

	logic [41:0]generic_fg;
	logic [41:0]generic_bg;	
	

//********************PRINTEA*TODOS*LOS*CARACTERES*QUE*NO*CAMBIAN*EN*LA*PANTALLA*(ABAJO)*************

	print onscreen(.op1(op1),.op2("13"),.op("+"),.hc_visible(hc_visible),.vc_visible(vc_visible)
	,.rst(rst),.clk_vga(clk_vga),.in_squares(generic_bg),.in_chars(generic_fg));
    
//***************************************************************************************************

    
	
//	show_one_line #(.LINE_X_LOCATION(FIRST_SQRT_X + 100*4 + GRID_X_OFFSET - 25), 
//					.LINE_Y_LOCATION(FIRST_SQRT_Y + 100*3 + GRID_Y_OFFSET + 10), 
//					.MAX_CHARACTER_LINE(3), 
//					.ancho_pixel(5), 
//					.n(3)) 
////	exe(	.clk(clk_vga), 
////			.rst(rst), 
////			.hc_visible(hc_visible), 
////			.vc_visible(vc_visible), 
////			.the_line("peo"), 
////			.in_square(generic_bg[1]), 
////			.in_character(generic_fg[1]));

	
	logic draw_cursor = (pos_x == matrix_x) && (pos_y == matrix_y);
	
	
	localparam COLOR_BLUE 		= 12'h00F;
	localparam COLOR_YELLOW 	= 12'hFF0;
	localparam COLOR_RED		= 12'hF00;
	localparam COLOR_BLACK		= 12'h000;
	localparam COLOR_WHITE		= 12'hFFF;
	localparam COLOR_CYAN		= 12'h0FF;
	
	always@(*)
		if((hc_visible != 0) && (vc_visible != 0))
		begin
			
			if(text_sqrt_fg)
				VGA_COLOR = COLOR_RED;
			else if (text_sqrt_bg)
				VGA_COLOR = COLOR_YELLOW;
			else if(|generic_fg)
				VGA_COLOR = COLOR_BLACK;
			else if((generic_bg == 1)&&(draw_cursor == 0))
				VGA_COLOR = {3'h7, {2'b0, matrix_x} + {3'b00, matrix_y}, 4'h3};
				
			else if((generic_bg == 1)&&(draw_cursor == 1))
			    VGA_COLOR = COLOR_CYAN;
			
			//si esta dentro de la grilla.
			else if((hc_visible > CUADRILLA_XI) && (hc_visible <= CUADRILLA_XF) && (vc_visible > CUADRILLA_YI) && (vc_visible <= CUADRILLA_YF))
				if(lines)//lineas negras de la grilla
					VGA_COLOR = COLOR_BLACK;
				else if (draw_cursor) //el cursor
					VGA_COLOR = COLOR_CYAN;
				else
					VGA_COLOR = {3'h7, {2'b0, matrix_x} + {3'b00, matrix_y}, 4'h3};// el fondo de la grilla.
			else
				VGA_COLOR = COLOR_BLUE;//el fondo de la pantalla
		end
		else
			VGA_COLOR = COLOR_BLACK;//esto es necesario para no poner en riesgo la pantalla.

	assign {VGA_R, VGA_G, VGA_B} = VGA_COLOR;
endmodule



/**
 * @brief Este modulo cambia los ceros a la izquierda de un numero, por espacios
 * @param value			:Corresponde al valor (en hexa o decimal) al que se le desea hacer el padding.
 * @param no_pading		:Corresponde al equivalente ascii del value includos los ceros a la izquierda
 * @param padding		:Corresponde al equivalente ascii del value, pero sin los ceros a la izquierda.
 */

module space_padding(
	input [19:0] value,
	input [8*6 -1:0]no_pading,
	
	output logic [8*6 -1:0]padding);
	
	
endmodule