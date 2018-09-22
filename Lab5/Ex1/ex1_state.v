`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:52 12/12/2016 
// Design Name: 
// Module Name:    ex1_state 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ex1_state(
 output y_out,
 input x_in, clock, reset
);
 reg [1: 0] state;
 parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
 always @ (posedge clock, negedge reset)
 if (reset == 0) state <= S0; // Initialize to state S0
 else case (state)
 S0: if (x_in) state <= S1; else state <= S0;
 S1: if (x_in) state <= S2; else state <= S0;
 S2: if (x_in) state <= S3; else state <= S0;
 S3: if (x_in) state <= S3; else state <= S0;
 endcase
 assign y_out = (state == S3); // Output of flip-flops
 
endmodule
