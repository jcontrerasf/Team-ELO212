`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2019 00:33:19
// Design Name: 
// Module Name: deserializador
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


module deserializador(
    input logic data_in,
//    input logic esperando,
    input logic tick, tick8,
    output reg [7:0] data_out,
    output logic rx_ready
    );
    
    
    enum logic [4:0] {start, b1, b2, b3, b4, b5, b6, b7, b8, stop} state, next_state;
    
    always_comb begin
    
    next_state = state;
    
        case(state)
            start: if(~data_in) next_state = b1;
            b1: begin
                if(tick)begin
                    next_state = b2;
                end end
            b2: begin
                if(tick)begin
                    next_state = b3;
                end end
             b3: begin
                if(tick)begin
                    next_state = b4;
                end end
             b4: begin
                if(tick)begin
                    next_state = b5;
                end end
             b5: begin
                if(tick)begin
                    next_state = b6;
                end end
             b6: begin
                if(tick)begin
                    next_state = b7;
                end end
             b7: begin
                if(tick)begin
                    next_state = b8;
                end end
              b8: begin
                if(tick)begin
                    next_state = stop;
                end end
              stop: begin
                if(tick)begin
                    next_state = start;
                end end
         endcase
    end
    
   always@(posedge tick8)
    		state <= next_state;
    		
    
   always@(posedge tick) begin
        case(state)
            b1: data_out[0] <= data_in;
            b2: data_out[1] <= data_in;
            b3: data_out[2] <= data_in;
            b4: data_out[3] <= data_in;
            b5: data_out[4] <= data_in;
            b6: data_out[5] <= data_in;
            b7: data_out[6] <= data_in;
            b8: data_out[7] <= data_in;
            default: data_out <= data_out; 
        endcase
   end

endmodule
