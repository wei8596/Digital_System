`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:26:29 11/14/2016
// Design Name:   corrector
// Module Name:   D:/hamming/hamming_tb.v
// Project Name:  hamming
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: corrector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hamming_tb;

	// Inputs
	reg O3;
	reg O2;
	reg O1;
	reg O0;
	reg P3;
	reg P2;
	reg P1;

	// Outputs
	wire I3;
	wire I2;
	wire I1;
	wire I0;

	// Instantiate the Unit Under Test (UUT)
	corrector uut (
		.I3(I3), 
		.I2(I2), 
		.I1(I1), 
		.I0(I0), 
		.O3(O3), 
		.O2(O2), 
		.O1(O1), 
		.O0(O0), 
		.P3(P3), 
		.P2(P2), 
		.P1(P1)
	);

	initial begin
		// Initialize Inputs
		O3 = 0;
		O2 = 0;
		O1 = 1;
		P3 = 0;
		O0 = 1;		
		P2 = 0;
		P1 = 1;
	end
      
endmodule

