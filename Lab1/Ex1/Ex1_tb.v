`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:12:36 10/03/2016
// Design Name:   Ex1
// Module Name:   D:/Lab04/Ex1_tb.v
// Project Name:  Lab04
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

	reg x;
	reg y;
	reg z;
	// Outputs
	wire F1;
	wire F2;

	// Instantiate the Unit Under Test (UUT)
	Ex1 uut (		
		.x(x),
		.y(y),
		.z(z),
		.F1(F1),
		.F2(F2)
	);

	initial begin
		// Initialize Inputs
		 x=0;y=0;z=0;
		#10 x=0;y=0;z=1;
		#10 x=0;y=1;z=0;
		#10 x=0;y=1;z=1;
		#10 x=1;y=0;z=0;
		#10 x=1;y=0;z=1;
		#10 x=1;y=1;z=0;
		#10 x=1;y=1;z=1;
		#10 $finish;
	end      
endmodule
