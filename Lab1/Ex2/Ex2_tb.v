`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:51:04 10/03/2016
// Design Name:   Ex2
// Module Name:   D:/Lab04-2/Ex2_tb.v
// Project Name:  Lab04-2
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
	reg x;
	reg y;
	reg z;
	// Outputs
	wire S1;
	wire S2;
	wire S3;
	wire S4;
	wire C1;
	wire C2;
	wire C3;
	wire C4;

	// Instantiate the Unit Under Test (UUT)
	Ex2 uut (
		.x(x),
		.y(y),
		.z(z),
		.S1(S1),
		.S2(S2),
		.S3(S3),
		.S4(S4),
		.C1(C1),
		.C2(C2),
		.C3(C3),
		.C4(C4)
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
