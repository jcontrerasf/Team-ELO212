`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// vga_driver.v -- basic video driver
//
// Author:  W. Freund, UTFSM, Valparaiso, Chile
//          (based on vga_main.vhd from Barron Barnett, Digilent, Inc.) 
//          03/05/06, 14/06/12
//Modifier: Mauricio Solis
//				28/05/2014
//Modifier: Mauricio Solis
//				09/06/2017
////////////////////////////////////////////////////////////////////////////////
//http://tinyvga.com/vga-timing/800x600@72Hz


module driver_vga_1024x768(

	input clk_vga,                      // 82 MHz !
	output hs, vs, 
	output [11:0] hc_visible,
	output [10:0] vc_visible
	); 

    //modificando para 1024x768
	localparam hpixels = 11'd1360;  // --Value of pixels in a horizontal line
	localparam vlines  = 10'd805;  // --Number of horizontal lines in the display

	localparam hfp  = 7'd64;      // --Horizontal front porch
	localparam hsc  = 7'd104;      // --Horizontal sync
	localparam hbp  = 8'd168;      // --Horizontal back porch

	localparam vfp  = 2'd3;       // --Vertical front porch
	localparam vsc  = 3'd4;       // --Vertical sync
	localparam vbp  = 5'd30;      // --Vertical back porch
	
	
	logic [11:0] hc, hc_next, vc, vc_next;             // --These are the Horizontal and Vertical counters    
	
	assign hc_visible = ((hc < (hpixels - hfp)) && (hc > (hsc + hbp)))?(hc -(hsc + hbp)):11'd0;
	assign vc_visible = ((vc < (vlines - vfp)) && (vc > (vsc + vbp)))?(vc - (vsc + vbp)):10'd0;
	
	
	// --Runs the horizontal counter

	always_comb
		if(hc == hpixels)				// --If the counter has reached the end of pixel count
			hc_next = 10'd0;			// --reset the counter
		else
			hc_next = hc + 10'd1;		// --Increment the horizontal counter

	
	// --Runs the vertical counter
	always_comb
		if(hc == 10'd0)
			if(vc == vlines)
				vc_next = 10'd0;
			else
				vc_next = vc + 10'd1;
		else
			vc_next = vc;
	
	always_ff@(posedge clk_vga)
		{hc, vc} <= {hc_next, vc_next};
		
	assign hs = (hc < hsc) ? 1'b0 : 1'b1;   // --Horizontal Sync Pulse
	assign vs = (vc < vsc) ? 1'b0 : 1'b1;   // --Vertical Sync Pulse

endmodule