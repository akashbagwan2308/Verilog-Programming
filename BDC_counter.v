`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 02:38:41 PM
// Design Name: 
// Module Name: BDC_counter
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


module BDC_counter(clk,rst,dout);
input clk;
input rst;
output [3:0] dout;

reg [3:0] dout;
always @(posedge clk or posedge rst)
begin
if(rst)
dout <= 4'b0000;
else if (dout == 4'b1001)
dout <=4'b0000;
else
dout <= dout +1;
end
endmodule
