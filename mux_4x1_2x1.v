`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2024 03:35:45 AM
// Design Name: 
// Module Name: mux_4x1_2x1
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


module mux_2x1(i0,i1,s0,y);
input i0,i1,s0;
output y;
assign y = s0? i1: i0;
endmodule

module mux_4x1_2x1(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output y;
wire y0,y1;

mux_2x1 m1(i0,i1,s1,y0);
mux_2x1 m2(i2,i3,s1,y1);
mux_2x1 m3(y0,y1,s0,y);


endmodule