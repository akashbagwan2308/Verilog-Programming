`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2024 03:18:08 AM
// Design Name: 
// Module Name: mux_4to1_tb
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


module mux_4to1_tb();
reg [3:0] a;
reg [1:0] s;
wire o;

mux_4to1 M41(a,s,o);

initial begin
a = 4'b1010;
s = 2'b00;
#10 s = 2'b01;
#10 s = 2'b10;
#10 s = 2'b11;

#10 $finish;
end
endmodule
