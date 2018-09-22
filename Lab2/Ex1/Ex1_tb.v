`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:55:12 10/24/2016
// Design Name:   Ex1
// Module Name:   D:/Lab06/Ex1_tb.v
// Project Name:  Lab06
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ex1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ex1_tb;
	reg w;
	reg x;
	reg y;
	reg z;

	// Outputs
	wire F1;
	wire F2;

	// Instantiate the Unit Under Test (UUT)
	Ex1 uut (
		.w(w),
		.x(x),
		.y(y),
		.z(z),
		.F1(F1),
		.F2(F2)
	);

	initial begin
		// Initialize Inputs
		w=0;x=0;y=0;z=0;
		#10 w=0;x=0;y=0;z=1;
		#10 w=0;x=0;y=1;z=0;
		#10 w=0;x=0;y=1;z=1;
		#10 w=0;x=1;y=0;z=0;
		#10 w=0;x=1;y=0;z=1;
		#10 w=0;x=1;y=1;z=0;
		#10 w=0;x=1;y=1;z=1;
		#10 w=1;x=0;y=0;z=0;
		#10 w=1;x=0;y=0;z=1;
		#10 w=1;x=0;y=1;z=0;
		#10 w=1;x=0;y=1;z=1;
		#10 w=1;x=1;y=0;z=0;
		#10 w=1;x=1;y=0;z=1;
		#10 w=1;x=1;y=1;z=0;
		#10 w=1;x=1;y=1;z=1;
		#10 $finish;

	end      
endmodule
