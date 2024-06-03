`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 04:18:39 PM
// Design Name: 
// Module Name: Encoder_8x3_tb
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


module Encoder_8x3_tb();
reg [7:0] In;
reg En;
wire [2:0] out;

encoder_8x3 ENC(In,En,out);

initial begin
En=1;
#10 In=1;
#10 In=2;
#10 In=3;
#10 In=4;
#10 In=5;
#10 In=6;
#10 In=7;
#10 In=8;
#10 $finish;
end
endmodule
