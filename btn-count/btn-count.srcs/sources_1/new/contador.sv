`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2019 04:43:39
// Design Name: 
// Module Name: contador
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Contador de pulsaciones de un boton.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module contador
    #(parameter bits=4)
    (
    input logic clk,reset, btn,
    output logic [bits-1:0] count
    );
    
    logic actual;
    logic anterior;
    
    assign actual=btn;
    
    always_ff @(posedge clk or posedge reset) begin
        if (reset == 'b1) begin
            count <= 4'b0;
            anterior <= 1'b0;
        end
        else begin
            case({anterior,actual})
                2'b00 : begin   //abajo
                    count <= count;
                    anterior <= 1'b0; 
                end
                2'b01 : begin   //canto de subida
                    count <= count + 1;
                    anterior <= 1'b1;
                end
                2'b11 : begin   //arriba
                    count <= count;
                    anterior <= 1'b1;
                end
                2'b10 : begin   //canto de bajada
                    count <= count;
                    anterior <= 1'b0;
                end
                default : begin
                    count <= count;
                    anterior <= 1'b0; 
                end
            endcase end
    end
endmodule