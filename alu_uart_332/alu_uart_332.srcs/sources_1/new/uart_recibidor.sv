`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2019 13:52:40
// Design Name: 
// Module Name: uart_recibidor
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
// Set Parameter CLKS_PER_BIT as follows:
// CLKS_PER_BIT = (Frequency of i_Clock)/(Frequency of UART)
// Example: 10 MHz Clock, 115200 baud UART
// (10000000)/(115200) = 87
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_recibidor
#(parameter CLKS_PER_BIT = 87)
    (
    input logic data_in,
    input logic clock, btn_rst,
    output logic [7:0] data_out, //reg
    output logic rx_ready
    );
    
    enum logic [1:0] {idle, start, bits, stop} state, next_state;
    
    logic [7:0] counter = 'd0;
    logic [2:0] bit_count;
    logic reset, baud, listo, registrar;


always@(posedge clock) begin
    if(btn_rst) state <= idle;
    else state <= next_state;
    if (reset) begin
        counter <= 'd32; //CLKS_PER_BIT/2
        baud <= 'd1; //0
    end else if (counter == CLKS_PER_BIT) begin
        counter <= 'd0;
        baud <= ~baud;
    end else begin
        counter <= counter + 'd1;
        baud <= baud;
    end
end
    
    always_comb begin
    
    next_state = state;
    reset = 1'b0;
    rx_ready = 1'b0;
    
        case(state)
            idle: begin
                if(~data_in)
                    next_state = start;
            end
            start: begin
                next_state = bits;
                reset = 1'b1;
            end
            bits: begin
                if(listo)begin
                    next_state = stop;
                end end
              stop: begin
                if(data_in) begin
                    rx_ready = 1'b1;
                    next_state = idle;
                end end
         endcase
    end
    
    always@(posedge baud) begin
    if (state == bits) begin
        bit_count <= bit_count + 1;
    end else if(state == start) begin
        bit_count <= 'b0;
        listo <= 'b0;
    end
    
    case(bit_count)
        3'b000: data_out[0] <= data_in;
        3'b001: data_out[1] <= data_in;
        3'b010: data_out[2] <= data_in;
        3'b011: data_out[3] <= data_in;
        3'b100: data_out[4] <= data_in;
        3'b101: data_out[5] <= data_in;
        3'b110: data_out[6] <= data_in;
        3'b111: begin
            data_out[7] <= data_in;
            listo <= 'b1;
            end
        default: data_out <= 'b0;
    endcase
end
    
    
endmodule
