`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2024 03:48:25 AM
// Design Name: 
// Module Name: mux_4x1_2x1_tb
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


module mux_4x1_2x1_tb();
  reg sel0, sel1;
  reg i0,i1,i2,i3;
  wire y;
  
  mux_4x1_2x1 mux(i0, i1, i2, i3,sel0, sel1, y);
  
  initial begin
    {i3,i2,i1,i0} = 4'h5;
  end
    initial begin
      #100 sel0 = 0; sel1=0;
      #100 sel0 = 0; sel1=1;
      #100 sel0 = 1; sel1=0;
      #100 sel0 = 1; sel1=1;
      #100$finish;
    end
endmodule
