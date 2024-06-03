`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 02:51:16 PM
// Design Name: 
// Module Name: BCD_counter_tb
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


module BCD_counter_tb();
reg clk;
reg rst;
wire [3:0] bcd_out;


initial 
    begin
    clk=0;
    rst=1;#10;
    rst=0;
    end
BDC_counter BCD(clk,rst,bcd_out);
always #5 clk=~clk;

endmodule
