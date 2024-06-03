`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2024 02:09:11 AM
// Design Name: 
// Module Name: test_bench_fa
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


module test_bench_fa();
reg a,b,cin;
wire sum,carry;


full_adder FA(sum,carry,a,b,cin);

initial
begin
    a=0; b=0; cin=0;
    
end

initial
begin
    #10 a=0;b=0;cin=1;
    #10 a=0;b=1;cin=0;
    #10 a=0;b=1;cin=1;
    #10 a=1;b=0;cin=0;
    #10 a=1;b=0;cin=1;
    #10 a=1;b=1;cin=0;
    #10 a=1;b=1;cin=1;
end

initial
begin
$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
#80$finish;
end

endmodule
