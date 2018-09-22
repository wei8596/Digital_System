`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:03:21 12/26/2016
// Design Name:   ex1
// Module Name:   D:/lab15/ex1_tb.v
// Project Name:  lab15
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ex1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ex1_tb;

	// Inputs
	reg up;
	reg down;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] a;

	// Instantiate the Unit Under Test (UUT)
	ex1 uut (
		.a(a), 
		.up(up), 
		.down(down), 
		.clk(clk), 
		.rst(rst)
	);

initial begin clk = 0; forever #5 clk = ~clk; end
initial begin
	rst = 0;
	up = 0;
	down = 1;
	#10 rst = 1;
	#10 down = 1;
	#10 down = 1;
	#10 down = 1;
	#10 down = 1;
	#10 down = 1;
	#10 down = 0; up = 1;
	#10 down = 0; up = 1;
	#10 down = 0; up = 1;
	#10 down = 0; up = 1;
	#10 down = 0; up = 1;
	#10 down = 0; up = 1;
	#10 down = 1;
	
	end
	initial #200 $finish; 
endmodule
