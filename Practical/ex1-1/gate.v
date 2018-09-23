`timescale 1ns / 100ps
module half_adder(x, y, sum, carry);
	input x, y;
	output sum, carry;

	xor #(2)(sum, x, y);
	and #(2)(carry, x, y);

endmodule

// 4-bit carry-lookahead adder
module CLA_4bit(A, B, C_in, SUM, C_out);
	input [3:0] A;
	input [3:0] B;
	input C_in;
	output [3:0] SUM;
	output [3:0] C_out;
	
	wire [3:0] G, P;
	wire C0;
	wire C1[1:0];
	wire C2[2:0];
	wire C3[3:0];
	
	half_adder HA0(.x(A[0]), .y(B[0]), .sum(P[0]), .carry(G[0]));
	half_adder HA1(.x(A[1]), .y(B[1]), .sum(P[1]), .carry(G[1]));
	half_adder HA2(.x(A[2]), .y(B[2]), .sum(P[2]), .carry(G[2]));
	half_adder HA3(.x(A[3]), .y(B[3]), .sum(P[3]), .carry(G[3]));
	
  // C0
	and #(2)(C0, P[0], C_in);
	or #(2)(C_out[0], G[0], C0);
	
  // C1
	and #(2)(C1[0], P[1], P[0], C_in);
	and #(2)(C1[1], P[1], G[0]);
	or #(2)(C_out[1], G[1], C1[1], C1[0]);
	
  // C2
	and #(2)(C2[0], P[2], P[1], P[0], C_in);
	and #(2)(C2[1], P[2], P[1], G[0]);
	and #(2)(C2[2], P[2], G[1]);
	or #(2)(C_out[2], G[2], C2[2], C2[1], C2[0]);
	
  // C3
	and #(2)(C3[0], P[3], P[2], P[1], P[0], C_in);
	and #(2)(C3[1], P[3], P[2], P[1], G[0]);
	and #(2)(C3[2], P[3], P[2], G[1]);
	and #(2)(C3[3], P[3], G[2]);
	or #(2)(C_out[3], G[3], C3[3], C3[2], C3[1], C3[0]);
	
  // SUM
	xor #(2)(SUM[0], P[0], C_in);
	xor #(2)(SUM[1], P[1], C_out[0]);
	xor #(2)(SUM[2], P[2], C_out[1]);
	xor #(2)(SUM[3], P[3], C_out[2]);
	
endmodule

// 8-bit carry-lookahead adder
module CLA_8bit(A, B, Add_ctrl, SUM, C_out, v);
	input [7:0] A;
	input [7:0] B;
	input Add_ctrl;
	output [7:0] SUM;
	output C_out, v; // v - overflow
	
	wire ctrl;
	wire [7:0] new_B, C;
	
	// A - B = A + (~B) + 1
  // B xor 0 = B
  // B xor 1 = not(B)
  not #(2)(ctrl, Add_ctrl);
	xor #(2)(new_B[0], B[0], ctrl);
	xor #(2)(new_B[1], B[1], ctrl);
	xor #(2)(new_B[2], B[2], ctrl);
	xor #(2)(new_B[3], B[3], ctrl);
	xor #(2)(new_B[4], B[4], ctrl);
	xor #(2)(new_B[5], B[5], ctrl);
	xor #(2)(new_B[6], B[6], ctrl);
	xor #(2)(new_B[7], B[7], ctrl);
	
	CLA_4bit CLA4_1(.A(A[3:0]), .B(new_B[3:0]), .C_in(ctrl), .SUM(SUM[3:0]), .C_out(C[3:0]));
	CLA_4bit CLA4_2(.A(A[7:4]), .B(new_B[7:4]), .C_in(C[3]), .SUM(SUM[7:4]), .C_out(C[7:4]));
	
	or #(2)(C_out, C[7], ctrl); // carry out
	xor #(2)(v, C[7], C[6]); // overflow

endmodule
