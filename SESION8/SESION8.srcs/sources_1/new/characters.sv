`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:       Mauricio Solis
// 
// Create Date:    17:09:55 05/23/2015 
// Design Name: 
// Module Name:    caracters 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module characters(
	input [7:0] select ,
	input [2:0]coor_x,
	input [2:0]coor_y,
	output pixel
	);
	
	logic [39:0] vec_char;
	
	logic [39:0]vect_char_a;//97
	logic [39:0]vect_char_b;
	logic [39:0]vect_char_c;
	logic [39:0]vect_char_d;
	logic [39:0]vect_char_e;
	logic [39:0]vect_char_f;
	logic [39:0]vect_char_g;
	logic [39:0]vect_char_h;
	logic [39:0]vect_char_i;
	logic [39:0]vect_char_j;
	logic [39:0]vect_char_k;
	logic [39:0]vect_char_l;
	logic [39:0]vect_char_m;
	logic [39:0]vect_char_n;
	logic [39:0]vect_char_o;
	logic [39:0]vect_char_p;
	logic [39:0]vect_char_q;
	logic [39:0]vect_char_r;
	logic [39:0]vect_char_s;
	logic [39:0]vect_char_t;
	logic [39:0]vect_char_u;
	logic [39:0]vect_char_v;
	logic [39:0]vect_char_w;
	logic [39:0]vect_char_x;
	logic [39:0]vect_char_y;
	logic [39:0]vect_char_z;
	logic [39:0]vect_char_A;
	logic [39:0]vect_char_B;
	logic [39:0]vect_char_C;
	logic [39:0]vect_char_D;
	logic [39:0]vect_char_E;
	logic [39:0]vect_char_F;
	logic [39:0]vect_char_G;
	logic [39:0]vect_char_H;
	logic [39:0]vect_char_I;
	logic [39:0]vect_char_J;
	logic [39:0]vect_char_K;
	logic [39:0]vect_char_L;
	logic [39:0]vect_char_M;
	logic [39:0]vect_char_N;
	logic [39:0]vect_char_O;
	logic [39:0]vect_char_P;
	logic [39:0]vect_char_Q;
	logic [39:0]vect_char_R;
	logic [39:0]vect_char_S;
	logic [39:0]vect_char_T;
	logic [39:0]vect_char_U;
	logic [39:0]vect_char_V;
	logic [39:0]vect_char_W;
	logic [39:0]vect_char_X;
	logic [39:0]vect_char_Y;
	logic [39:0]vect_char_Z;
	
	logic [39:0]vect_char_nn;
	
	logic [39:0]vect_num_0;//48
	logic [39:0]vect_num_1;
	logic [39:0]vect_num_2;
	logic [39:0]vect_num_3;
	logic [39:0]vect_num_4;
	logic [39:0]vect_num_5;
	logic [39:0]vect_num_6;
	logic [39:0]vect_num_7;
	logic [39:0]vect_num_8;
	logic [39:0]vect_num_9;
	logic [39:0]vect_num_p;//punto
	logic [39:0]vect_space;//espacio
	logic [39:0]vect_sum;
	logic [39:0]vect_dif;
	logic [39:0]vect_mult;
	logic [39:0]vect_and;
	logic [39:0]vect_or;
	logic [39:0]vect_izq;
	
	
	
	assign vect_sum ={5'b00000,5'b00100,5'b00100,5'b11111,5'b00100,5'b00100,5'b00000,5'b00000};
	assign vect_dif ={5'b00000,5'b00000,5'b00000,5'b11111,5'b00000,5'b00000,5'b00000,5'b00000};
	assign vect_mult ={5'b00000,5'b00100,5'b10101,5'b01110,5'b10101,5'b00100,5'b00000,5'b00000};
	assign vect_and ={5'b00000,5'b10110,5'b01001,5'b10101,5'b00010,5'b00101,5'b01001,5'b00110};
	assign vect_or ={5'b00000,5'b00100,5'b00100,5'b00100,5'b00100,5'b00100,5'b00100,5'b00100};
	assign vect_izq ={5'b00000,5'b00100,5'b00010,5'b11111,5'b00010,5'b00100,5'b00000,5'b00000};

	
	assign vect_char_a = {5'b00000,5'b11110,5'b10001,5'b11110,5'b10000,5'b01110,5'b00000,5'b00000};
	assign vect_char_b = {5'b00000,5'b01111,5'b10001,5'b10001,5'b10011,5'b01101,5'b00001,5'b00001};
	assign vect_char_c = {5'b00000,5'b01110,5'b10001,5'b00001,5'b00001,5'b01110,5'b00000,5'b00000};
	assign vect_char_d = {5'b00000,5'b11110,5'b10001,5'b10001,5'b11001,5'b10110,5'b10000,5'b10000};
	assign vect_char_e = {5'b00000,5'b01110,5'b00001,5'b11111,5'b10001,5'b01110,5'b00000,5'b00000};
	assign vect_char_f = {5'b00000,5'b00010,5'b00010,5'b00010,5'b00111,5'b00010,5'b10010,5'b01100};
	assign vect_char_g = {5'b00000,5'b01110,5'b10000,5'b11110,5'b10001,5'b10001,5'b11110,5'b00000};
	assign vect_char_h = {5'b00000,5'b10001,5'b10001,5'b10001,5'b10011,5'b01101,5'b00001,5'b00001};
	assign vect_char_i = {5'b00000,5'b01110,5'b00100,5'b00100,5'b00100,5'b00110,5'b00000,5'b00100};
	assign vect_char_j = {5'b00000,5'b00110,5'b01001,5'b01000,5'b01000,5'b01100,5'b00000,5'b01000};
	assign vect_char_k = {5'b00000,5'b01001,5'b00101,5'b00011,5'b00101,5'b01001,5'b00001,5'b00001};
	assign vect_char_l = {5'b00000,5'b01110,5'b00100,5'b00100,5'b00100,5'b00100,5'b00100,5'b00110};
	assign vect_char_m = {5'b00000,5'b10001,5'b10001,5'b10101,5'b10101,5'b01011,5'b00000,5'b00000};
	assign vect_char_n = {5'b00000,5'b10001,5'b10001,5'b10001,5'b10011,5'b01101,5'b00000,5'b00000};
	assign vect_char_o = {5'b00000,5'b01110,5'b10001,5'b10001,5'b10001,5'b01110,5'b00000,5'b00000};
    assign vect_char_p = {5'b00000,5'b00001,5'b00001,5'b01111,5'b10001,5'b01111,5'b00000,5'b00000};
    assign vect_char_q = {5'b00000,5'b10000,5'b10000,5'b11110,5'b11001,5'b10110,5'b00000,5'b00000};
    assign vect_char_r = {5'b00000,5'b00001,5'b00001,5'b00001,5'b10011,5'b01101,5'b00000,5'b00000};
    assign vect_char_s = {5'b00000,5'b01111,5'b10000,5'b01110,5'b00001,5'b01110,5'b00000,5'b00000};
    assign vect_char_t = {5'b00000,5'b01100,5'b10010,5'b00010,5'b00010,5'b00111,5'b00010,5'b00010};
    assign vect_char_u = {5'b00000,5'b10110,5'b11001,5'b10001,5'b10001,5'b10001,5'b00000,5'b00000};
	assign vect_char_v = {5'b00000,5'b00100,5'b01010,5'b10001,5'b10001,5'b10001,5'b00000,5'b00000};
	assign vect_char_w = {5'b00000,5'b01010,5'b10101,5'b10101,5'b10001,5'b10001,5'b00000,5'b00000};
	assign vect_char_x = {5'b00000,5'b10001,5'b01010,5'b00100,5'b01010,5'b10001,5'b00000,5'b00000};
	assign vect_char_y = {5'b00000,5'b01110,5'b10000,5'b11110,5'b10001,5'b10001,5'b00000,5'b00000};
    assign vect_char_z = {5'b00000,5'b11111,5'b00010,5'b00100,5'b01000,5'b11111,5'b00000,5'b00000};
	assign vect_char_A = {5'b00000,5'b10001,5'b10001,5'b11111,5'b10001,5'b10001,5'b10001,5'b01110};
	assign vect_char_B = {5'b00000,5'b01111,5'b10001,5'b10001,5'b01111,5'b10001,5'b10001,5'b01111};
	assign vect_char_C = {5'b00000,5'b01110,5'b10001,5'b00001,5'b00001,5'b00001,5'b10001,5'b01110};
	assign vect_char_D = {5'b00000,5'b00111,5'b01001,5'b10001,5'b10001,5'b10001,5'b01001,5'b00111};
	assign vect_char_E = {5'b00000,5'b11111,5'b00001,5'b00001,5'b01111,5'b00001,5'b00001,5'b11111};
	assign vect_char_F = {5'b00000,5'b00001,5'b00001,5'b00001,5'b01111,5'b00001,5'b00001,5'b11111};
    assign vect_char_G = {5'b00000,5'b11110,5'b10001,5'b10001,5'b11101,5'b00001,5'b10001,5'b01110};
    assign vect_char_H = {5'b00000,5'b10001,5'b10001,5'b10001,5'b11111,5'b10001,5'b10001,5'b10001};
    assign vect_char_I = {5'b00000,5'b01110,5'b00100,5'b00100,5'b00100,5'b00100,5'b00100,5'b01110};
    assign vect_char_J = {5'b00000,5'b00110,5'b01001,5'b01000,5'b01000,5'b01000,5'b01000,5'b11100};
    assign vect_char_K = {5'b00000,5'b10001,5'b01001,5'b00101,5'b00011,5'b00101,5'b01001,5'b10001};
    assign vect_char_L = {5'b00000,5'b11111,5'b00001,5'b00001,5'b00001,5'b00001,5'b00001,5'b00001};
    assign vect_char_M = {5'b00000,5'b10001,5'b10001,5'b10001,5'b10101,5'b10101,5'b11011,5'b10001};
    assign vect_char_N = {5'b00000,5'b10001,5'b10001,5'b11001,5'b10101,5'b10011,5'b10001,5'b10001};
    assign vect_char_O = {5'b00000,5'b01110,5'b10001,5'b10001,5'b10001,5'b10001,5'b10001,5'b01110};
    assign vect_char_P = {5'b00000,5'b00001,5'b00001,5'b00001,5'b01111,5'b10001,5'b10001,5'b01111};
    assign vect_char_Q = {5'b00000,5'b10110,5'b01001,5'b10101,5'b10001,5'b10001,5'b10001,5'b01110};
    assign vect_char_R = {5'b00000,5'b10001,5'b01001,5'b00101,5'b01111,5'b10001,5'b10001,5'b01111};
    assign vect_char_S = {5'b00000,5'b01111,5'b10000,5'b10000,5'b01110,5'b00001,5'b00001,5'b11110};
    assign vect_char_T = {5'b00000,5'b00100,5'b00100,5'b00100,5'b00100,5'b00100,5'b00100,5'b11111};
    assign vect_char_U = {5'b00000,5'b01110,5'b10001,5'b10001,5'b10001,5'b10001,5'b10001,5'b10001};
    assign vect_char_V = {5'b00000,5'b00100,5'b01010,5'b10001,5'b10001,5'b10001,5'b10001,5'b10001};
    assign vect_char_W = {5'b00000,5'b01010,5'b10101,5'b10101,5'b10101,5'b10001,5'b10001,5'b10001};
    assign vect_char_X = {5'b00000,5'b10001,5'b10001,5'b01010,5'b00100,5'b01010,5'b10001,5'b10001};
    assign vect_char_Y = {5'b00000,5'b00100,5'b00100,5'b00100,5'b01010,5'b10001,5'b10001,5'b10001};
    assign vect_char_Z = {5'b00000,5'b11111,5'b00001,5'b00010,5'b00100,5'b01000,5'b10000,5'b11111};
    assign vect_char_nn = {5'b00000,5'b00100,5'b00010,5'b00001,5'b00000,5'b00000,5'b00000,5'b00000};
    




















	//COMPLETAR EL RESTO DE LAS LETRAS

	assign vect_num_0 = {5'b00000,5'b01110,5'b10001,5'b10011,5'b10101,5'b11001,5'b10001,5'b01110};
	assign vect_num_1 = {5'b00000,5'b01110,5'b00100,5'b00100,5'b00100,5'b00100,5'b00110,5'b00100};
	assign vect_num_2 = {5'b00000,5'b11111,5'b00010,5'b00100,5'b01000,5'b10000,5'b10001,5'b01110};
	assign vect_num_3 = {5'b00000,5'b01110,5'b10001,5'b10000,5'b01000,5'b00100,5'b01000,5'b11111};
	assign vect_num_4 = {5'b00000,5'b01000,5'b01000,5'b11111,5'b01001,5'b01010,5'b01100,5'b01000};
	assign vect_num_5 = {5'b00000,5'b01110,5'b10001,5'b10000,5'b10000,5'b01111,5'b00001,5'b11111};
	assign vect_num_6 = {5'b00000,5'b01110,5'b10001,5'b10001,5'b01111,5'b00001,5'b00010,5'b01100};
	assign vect_num_7 = {5'b00000,5'b00010,5'b00010,5'b00010,5'b00100,5'b01000,5'b10000,5'b11111};
	assign vect_num_8 = {5'b00000,5'b01110,5'b10001,5'b10001,5'b01110,5'b10001,5'b10001,5'b01110};
	assign vect_num_9 = {5'b00000,5'b00110,5'b01000,5'b10000,5'b11110,5'b10001,5'b10001,5'b01110};
	assign vect_num_p = {5'b00000,5'b00110,5'b00110,5'b00000,5'b00000,5'b00000,5'b00000,5'b00000};
	assign vect_space = {5'b00000,5'b00000,5'b00000,5'b00000,5'b00000,5'b00000,5'b00000,5'b00000};





	

	//COMPLETAR EL RESTO DE LOS NUMEROS


	always_comb
		case(select)
			"0":    vec_char=vect_num_0;
			"1":    vec_char=vect_num_1;
			"2":    vec_char=vect_num_2;
			"3":    vec_char=vect_num_3;
			"4":    vec_char=vect_num_4;
			"5":    vec_char=vect_num_5;
			"6":    vec_char=vect_num_6;
			"7":    vec_char=vect_num_7;
			"8":    vec_char=vect_num_8;
			"9":    vec_char=vect_num_9;
			8'd46:  vec_char=vect_num_p;
			8'd32:  vec_char=vect_space;
			8'd97:  vec_char=vect_char_a;
			8'd98:  vec_char=vect_char_b;
			8'd99:  vec_char=vect_char_c;
			8'd100: vec_char=vect_char_d;
			8'd101: vec_char=vect_char_e;
			8'd102: vec_char=vect_char_f;
			8'd103: vec_char=vect_char_g;
			8'd104: vec_char=vect_char_h;
			8'd105: vec_char=vect_char_i;
			8'd106: vec_char=vect_char_j;
			8'd107: vec_char=vect_char_k;
			8'd108: vec_char=vect_char_l;
			8'd109: vec_char=vect_char_m;
			8'd110: vec_char=vect_char_n;
			8'd111: vec_char=vect_char_o;
			8'd112: vec_char=vect_char_p;
			8'd113: vec_char=vect_char_q;
			8'd114: vec_char=vect_char_r;
			8'd115: vec_char=vect_char_s;
			8'd116: vec_char=vect_char_t;
			8'd117: vec_char=vect_char_u;
			8'd118: vec_char=vect_char_v;
			8'd119: vec_char=vect_char_w;
			8'd120: vec_char=vect_char_x;
			8'd121: vec_char=vect_char_y;
			8'd122: vec_char=vect_char_z;
			8'd65: vec_char=vect_char_A;
			8'd66: vec_char=vect_char_B;
			8'd67: vec_char=vect_char_C;
			8'd68: vec_char=vect_char_D;
			8'd69: vec_char=vect_char_E;
			8'd70: vec_char=vect_char_F;
			8'd71: vec_char=vect_char_G;
			8'd72: vec_char=vect_char_H;
			8'd73: vec_char=vect_char_I;
			8'd74: vec_char=vect_char_J;
			8'd75: vec_char=vect_char_K;
			8'd76: vec_char=vect_char_L;
			8'd77: vec_char=vect_char_M;
			8'd78: vec_char=vect_char_N;
			8'd79: vec_char=vect_char_O;
			8'd80: vec_char=vect_char_P;
			8'd81: vec_char=vect_char_Q;
			8'd82: vec_char=vect_char_R;
			8'd83: vec_char=vect_char_S;
			8'd84: vec_char=vect_char_T;
			8'd85: vec_char=vect_char_U;
			8'd86: vec_char=vect_char_V;
			8'd87: vec_char=vect_char_W;
			8'd88: vec_char=vect_char_X;
			8'd89: vec_char=vect_char_Y;
			8'd90: vec_char=vect_char_Z;
			
			8'd43: vec_char=vect_sum;
			8'd45: vec_char=vect_dif;
			8'd42: vec_char=vect_mult;
			8'd38: vec_char=vect_and;
			8'd124: vec_char=vect_or;
			8'd127: vec_char=vect_izq;
									
			8'd164: vec_char=vect_char_nn;//??
			default:vec_char=vect_num_p;//punto
	endcase
	
	
	logic [4:0]character_to_show[0:7];
	logic [4:0]row;
	
	assign { character_to_show[7], character_to_show[6], character_to_show[5], character_to_show[4],
				character_to_show[3], character_to_show[2], character_to_show[1], character_to_show[0] } = 
				vec_char;
	assign row = character_to_show[coor_y];
	assign pixel = row[coor_x];
	
endmodule