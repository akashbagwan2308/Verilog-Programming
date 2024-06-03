`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 08:20:56 PM
// Design Name: 
// Module Name: Ring_counter_tb
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


module Ring_counter_tb();
reg clk,rst;
wire [3:0] out;

Ring_counter RGC(clk,rst,out);

initial begin clk =0; rst=0;end
always #10 clk = ~clk;

initial begin
rst = 1;
#10 rst =0;
end
endmodule
