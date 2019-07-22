`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2019 17:06:26
// Design Name: 
// Module Name: dec_switcher
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


module dec_switcher
#(parameter bits = 16 )
(
    input logic cambiar, clock,
    input logic [bits-1:0] hex,
    output logic [bits-1:0] salida
    );
    
    logic [31:0] dec;
    
    unsigned_to_bcd u32_to_bcd_inst (
		.clk(clock),
		.trigger(cambiar),
		.in(hex),
		.idle(),
		.bcd(dec)
	);
    
    always_comb begin
        if(cambiar) begin
            salida=dec;
        end else begin
            salida=hex;
        end
    end
endmodule
