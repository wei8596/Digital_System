`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:24:28 10/24/2016
// Design Name:   Ex2
// Module Name:   D:/Lab06-2/Ex2_tb.v
// Project Name:  Lab06-2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ex2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ex2_tb;

	// Inputs
	reg x;
	reg y;
	reg z;

	// Outputs
	wire F1;
	wire F2;
	wire F3;
	wire F4;

	// Instantiate the Unit Under Test (UUT)
	Ex2 uut (
		.F1(F1), 
		.F2(F2), 
		.F3(F3), 
		.F4(F4), 
		.x(x), 
		.y(y), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		x = 0;y = 0;z = 0;
		#10 x = 0;y = 0;z = 1;
		#10 x = 0;y = 1;z = 0;
		#10 x = 0;y = 1;z = 1;
		#10 x = 1;y = 0;z = 0;
		#10 x = 1;y = 0;z = 1;
		#10 x = 1;y = 1;z = 0;
		#10 x = 1;y = 1;z = 1;
		#10 $finish;
	end      
endmodule
