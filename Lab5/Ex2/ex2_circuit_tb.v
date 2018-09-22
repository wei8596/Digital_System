`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:42:55 12/12/2016
// Design Name:   ex2_circuit
// Module Name:   D:/Lab13/ex2_circuit_tb.v
// Project Name:  Lab13
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ex2_circuit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ex2_circuit_tb;

	// Inputs
	reg x;
	reg clock;
	reg reset;

	// Outputs
	wire A;
	wire B;

	// Instantiate the Unit Under Test (UUT)
	ex2_circuit uut (
		.y(y), 
		.A(A), 
		.B(B), 
		.x(x), 
		.clock(clock), 
		.reset(reset)
	);

initial #200 $finish;
initial begin clock = 0; forever #5 clock = ~clock; end

initial begin
reset = 0;
#2 reset = 1;
#10 x = 0;
#10 x = 1;
#10 x = 1;
#10 x = 1;
#10 x = 1;
#10 x = 1;
#10 x = 0;
#10 x = 1;
#10 x = 1;
#10 x = 0;
end
endmodule
