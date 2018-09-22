`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:46 12/30/2016
// Design Name:   EX2
// Module Name:   D:/Digital System/Lab/Lab15/lab15/ex2_tb.v
// Project Name:  lab15
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EX2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ex2_tb;

	// Inputs
	reg mem;
	reg rw;
	reg [3:0] i;
	reg [1:0] a;

	// Outputs
	wire [3:0] o;

	// Instantiate the Unit Under Test (UUT)
	EX2 uut (
		.o(o), 
		.mem(mem), 
		.rw(rw), 
		.i(i), 
		.a(a)
	);
 initial #150 $finish;
 
 initial begin
 mem = 1;
 rw = 0;
 a = 0;
 i = 0;
 #10 rw=1'b0;
 #10 a=2'b00;#1 i=4'b0001;
 #10 a=2'b01;#1 i=4'b0010;
 #10 a=2'b10;#1 i=4'b0011;
 #10 a=2'b11;#1 i=4'b0100;
 #10 a=2'bxx;#1 i=4'bxxxx;
 #10 rw=1'b1;
 #10 a=2'b00;
 #10 a=2'b01;
 #10 a=2'b10;
 #10 a=2'b11;
 end
endmodule
