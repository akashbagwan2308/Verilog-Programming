`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 03:37:41 PM
// Design Name: 
// Module Name: demux_4x1_tb
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


module demux_4x1_tb();
reg [1:0] sel;
reg i;
wire [3:0]out;

demux_4x1 DEM(sel,i,out);

initial begin
    i=1'b1;
    #10 sel=2'b00;
    #10 sel=2'b01;
    #10 sel=2'b10;
    #10 sel=2'b11;
    #10 $finish;
end
endmodule
