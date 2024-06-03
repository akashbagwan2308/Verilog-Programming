`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 08:15:43 PM
// Design Name: 
// Module Name: Ring_counter
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


module Ring_counter(clk,rst,out);
input clk;
input rst;
output reg [3:0] out;
//right shift ring counter
always @(posedge clk or posedge rst)
    begin
        if(rst==1'b1)
        out =4'b1000;
        else if(clk==1'b1)
        out={out[0],out[3:1]};
    end
endmodule
