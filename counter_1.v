`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2024 12:06:56 AM
// Design Name: 
// Module Name: counter_1
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


module counter_1(clk,rst,count);
input clk,rst;
output reg[7:0] count;
always@(posedge clk or negedge rst)
begin 
if(!rst)
count<=0;
else
count<=count+1;
end
endmodule
