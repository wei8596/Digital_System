`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:22:30 12/12/2016
// Design Name:   ex1_state
// Module Name:   D:/Lab13/ex1_state_tb.v
// Project Name:  Lab13
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ex1_state
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ex1_state_tb;

	// Inputs
	reg x_in;
	reg clock;
	reg reset;

	// Outputs
	wire y_out;

	// Instantiate the Unit Under Test (UUT)
	ex1_state uut (
		.y_out(y_out), 
		.x_in(x_in), 
		.clock(clock), 
		.reset(reset)
	);

 initial #200 $finish;
initial begin clock = 0; forever #5 clock = ~clock; end

initial begin
reset = 0;
#2 reset = 1;
#10 x_in = 0;
#10 x_in = 1;
#10 x_in = 1;
#10 x_in = 1;
#10 x_in = 1;
#10 x_in = 1;
#10 x_in = 0;
#10 x_in = 1;
#10 x_in = 1;
#10 x_in = 0;
end
endmodule
