`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2024 03:10:07 AM
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(data_in,sel,y_out);
input [3:0] data_in;
input [1:0] sel;
output reg y_out;

always @(data_in,sel)
    begin
        case(sel)
        2'b00 : y_out = data_in[0];
        2'b01 : y_out = data_in[1];
        2'b10 : y_out = data_in[2];
        2'b11 : y_out = data_in[3];
        endcase
    end
endmodule
