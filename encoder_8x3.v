`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 04:11:22 PM
// Design Name: 
// Module Name: encoder_8x3
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


module encoder_8x3(In,En,out);
input [7:0] In;
input En;
output reg [2:0] out;

always @(In,En)
begin
if(En==1'b1)
case(In)
8'h1 : out = 3'b000;
8'h2 : out = 3'b001;
8'h3 : out = 3'b010;
8'h4 : out = 3'b011;

8'h5 : out = 3'b100;
8'h6 : out = 3'b101;
8'h7 : out = 3'b110;
8'h8 : out = 3'b111;
endcase
end
endmodule
