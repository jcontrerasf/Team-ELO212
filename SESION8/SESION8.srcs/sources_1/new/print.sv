`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2019 01:45:55
// Design Name: 
// Module Name: Print
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


module print(
    input [15:0] op1,
    input [15:0] op2,
    input [7:0] op,
    input [10:0] hc_visible,
    input [10:0] vc_visible,
    input logic rst, clk_vga,
    output [41:0] in_squares,
    output [41:0] in_chars
    );
    localparam GRID_X_OFFSET	= 20;
	localparam GRID_Y_OFFSET	= 10;
	
	localparam FIRST_SQRT_X = 220;
	localparam FIRST_SQRT_Y = 260;

    
	show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + FIRST_SQRT_Y)) 
	ch_00(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("0"), 
		  .in_square(in_squares[0]), 
		  .in_character(in_chars[0]));
		  
	show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + 100 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + FIRST_SQRT_Y)) 
	ch_01(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("1"), 
		  .in_square(in_squares[1]), 
		  .in_character(in_chars[1]));

	show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + 200 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + FIRST_SQRT_Y)) 
	ch_02(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("2"), 
		  .in_square(in_squares[2]), 
		  .in_character(in_chars[2]));	
		  
	show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + 300 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + FIRST_SQRT_Y)) 
	ch_03(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("3"), 
		  .in_square(in_squares[3]), 
		  .in_character(in_chars[3]));	
		  
		  
    show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + 400 + FIRST_SQRT_X), 
					   .CHAR_Y_LOC(GRID_Y_OFFSET + FIRST_SQRT_Y)) 
    	ch_04(.clk(clk_vga), 
		    .rst(rst), 
		    .hc_visible(hc_visible), 
		    .vc_visible(vc_visible), 
		    .the_char("+"), 
		    .in_square(in_squares[4]), 
		    .in_character(in_chars[4]));	
		    
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + 500 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + FIRST_SQRT_Y)) 
	ch_05(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("-"), 
		  .in_square(in_squares[5]), 
		  .in_character(in_chars[5]));	
		  
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 100+ FIRST_SQRT_Y)) 
	ch_06(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("4"), 
		  .in_square(in_squares[6]), 
		  .in_character(in_chars[6]));	
		  
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + 100 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 100 + FIRST_SQRT_Y)) 
	ch_07(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("5"), 
		  .in_square(in_squares[7]), 
		  .in_character(in_chars[7]));
		  
		  	
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + 200 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 100 + FIRST_SQRT_Y)) 
	ch_08(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("6"), 
		  .in_square(in_squares[8]), 
		  .in_character(in_chars[8]));

show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + 300 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 100 + FIRST_SQRT_Y)) 
	ch_09(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("7"), 
		  .in_square(in_squares[9]), 
		  .in_character(in_chars[9]));
		  
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + 400 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 100 + FIRST_SQRT_Y)) 
	ch_10(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("*"), 
		  .in_square(in_squares[10]), 
		  .in_character(in_chars[10]));
		  
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET + 500 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 100 + FIRST_SQRT_Y)) 
	ch_11(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("|"), 
		  .in_square(in_squares[11]), 
		  .in_character(in_chars[11]));
		  
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET  + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 200 + FIRST_SQRT_Y)) 
	ch_12(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("8"), 
		  .in_square(in_squares[12]), 
		  .in_character(in_chars[12]));
		  
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET  + 100 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 200 + FIRST_SQRT_Y)) 
	ch_13(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("9"), 
		  .in_square(in_squares[13]), 
		  .in_character(in_chars[13]));
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET  + 200 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 200 + FIRST_SQRT_Y)) 
	ch_14(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("a"), 
		  .in_square(in_squares[14]), 
		  .in_character(in_chars[14]));
		  
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET  + 300 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 200 + FIRST_SQRT_Y)) 
	ch_15(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("b"), 
		  .in_square(in_squares[15]), 
		  .in_character(in_chars[15]));
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET  + 400 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 200 + FIRST_SQRT_Y)) 
	ch_16(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("&"), 
		  .in_square(in_squares[16]), 
		  .in_character(in_chars[16]));
		  
		  
show_one_line #(.LINE_X_LOCATION(GRID_X_OFFSET  + 500 + FIRST_SQRT_X - 15), 
					.LINE_Y_LOCATION(GRID_Y_OFFSET + 200 + FIRST_SQRT_Y + 10), 
					.MAX_CHARACTER_LINE(2), 
					.ancho_pixel(5), 
					.n(3)) 
	ch_17(	.clk(clk_vga), 
			.rst(rst), 
			.hc_visible(hc_visible), 
			.vc_visible(vc_visible), 
            .the_line("CE"), 
			.in_square(in_squares[17]), 
			.in_character(in_chars[17]));			  
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET  + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 300 + FIRST_SQRT_Y)) 
	ch_18(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("c"), 
		  .in_square(in_squares[18]), 
		  .in_character(in_chars[18]));
		  
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET  + 100 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 300 + FIRST_SQRT_Y)) 
	ch_19(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("d"), 
		  .in_square(in_squares[19]), 
		  .in_character(in_chars[19]));
		  
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET  + 200 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 300 + FIRST_SQRT_Y)) 
	ch_20(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("e"), 
		  .in_square(in_squares[20]), 
		  .in_character(in_chars[20]));
		  
show_one_char #(.CHAR_X_LOC(GRID_X_OFFSET  + 300 + FIRST_SQRT_X), 
					.CHAR_Y_LOC(GRID_Y_OFFSET + 300 + FIRST_SQRT_Y)) 
	ch_21(.clk(clk_vga), 
		  .rst(rst), 
		  .hc_visible(hc_visible), 
		  .vc_visible(vc_visible), 
		  .the_char("f"), 
		  .in_square(in_squares[21]), 
		  .in_character(in_chars[21]));


show_one_line #(.LINE_X_LOCATION(GRID_X_OFFSET  + 400 + FIRST_SQRT_X - 25), 
					.LINE_Y_LOCATION(GRID_Y_OFFSET + 300 + FIRST_SQRT_Y + 10), 
					.MAX_CHARACTER_LINE(3), 
					.ancho_pixel(5), 
					.n(3)) 
	ch_22(	.clk(clk_vga), 
			.rst(rst), 
			.hc_visible(hc_visible), 
			.vc_visible(vc_visible), 
			.the_line("EXE"), 
			.in_square(in_squares[22]), 
			.in_character(in_chars[22]));			  	
		  		  
		  
	show_one_line #(.LINE_X_LOCATION(GRID_X_OFFSET  + 500 + FIRST_SQRT_X - 25), 
					.LINE_Y_LOCATION(GRID_Y_OFFSET + 300 + FIRST_SQRT_Y + 10), 
					.MAX_CHARACTER_LINE(3), 
					.ancho_pixel(5), 
					.n(3)) 
	ch_23(	.clk(clk_vga), 
			.rst(rst), 
			.hc_visible(hc_visible), 
			.vc_visible(vc_visible), 
			.the_line("CLR"), 
			.in_square(in_squares[23]), 
			.in_character(in_chars[23]));
			
	activetext ch_24(	.op1(op1),.op2(op2),.op(op),.clk(clk_vga), 
									.rst(rst), 
									.hc_visible(hc_visible), 
									.vc_visible(vc_visible), 
									.in_square(in_squares[24]), 
									.in_character(in_chars[24]));
									
/*	show_one_line #(.LINE_X_LOCATION(GRID_X_OFFSET + 100 + FIRST_SQRT_X), 
					.LINE_Y_LOCATION(FIRST_SQRT_Y - 100), 
					.MAX_CHARACTER_LINE(5), 
					.ancho_pixel(5), 
					.n(3)) 
	actual(	.clk(clk_vga), 
			.rst(rst), 
			.hc_visible(hc_visible), 
			.vc_visible(vc_visible), 
			.the_line(op1), 
			.in_square(in_squares[23]), 
			.in_character(in_chars[23]));
					  
		  */
//***************************************************************************************		  
	
endmodule