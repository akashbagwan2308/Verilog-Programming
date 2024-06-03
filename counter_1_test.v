`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2024 12:12:13 AM
// Design Name: 
// Module Name: counter_1_test
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


module counter_1_test;
reg clk,rst;
wire [7:0] count;
initial
begin
clk=0;
rst=0;#10;
rst=1;
end
counter_1 dut(clk,rst,count);
always #5 clk=~clk;
endmodule
