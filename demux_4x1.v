`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 03:30:08 PM
// Design Name: 
// Module Name: demux_4x1
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


module demux_4x1(sel,i,out);
input [1:0] sel;
input i;
output  reg [3:0] out;
always @(sel,i)
    begin
    out =4'b0000;
        case(sel)
        2'b00 : begin out[0]=i;out[3:1]=0 ;end
        2'b01 : begin out[1]=i;out[0]=0 ;end
        2'b10 : begin out[2]=i;out[1:0]=0 ;end
        2'b11 : begin out[3]=i;out[2:0]=0 ;end
        endcase
    end
endmodule
