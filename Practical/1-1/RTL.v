`timescale 1ns / 100ps
// 4-bit carry-lookahead adder
module CLA_4bit(A, B, C_in, SUM, C_out);
	input [3:0] A, B;
	input C_in;
	output [3:0] SUM;
	output [3:0] C_out;
	
	wire [3:0] G, P;
	
	// half adder
  assign G = A & B;
	assign P = A ^ B;
	
  // carry
	assign C_out[0] = G[0] | (P[0]&C_in);
	assign C_out[1] = G[1] | (P[1]&G[0]) | (P[1]&P[0]&C_in);
	assign C_out[2] = G[2] | (P[2]&G[1]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&C_in);
	assign C_out[3] = G[3] | (P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&C_in);
	
  // SUM
  assign SUM[0] = P[0] ^ C_in;
	assign SUM[3:1] = P[3:1] ^ C_out[2:0];
	
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
  assign ctrl = ~Add_ctrl;
	assign new_B[0] = B[0] ^ ctrl;
	assign new_B[1] = B[1] ^ ctrl;
	assign new_B[2] = B[2] ^ ctrl;
	assign new_B[3] = B[3] ^ ctrl;
	assign new_B[4] = B[4] ^ ctrl;
	assign new_B[5] = B[5] ^ ctrl;
	assign new_B[6] = B[6] ^ ctrl;
	assign new_B[7] = B[7] ^ ctrl;
	
	CLA_4bit CLA4_1(.A(A[3:0]), .B(new_B[3:0]), .C_in(ctrl), .SUM(SUM[3:0]), .C_out(C[3:0]));
	CLA_4bit CLA4_2(.A(A[7:4]), .B(new_B[7:4]), .C_in(C[3]), .SUM(SUM[7:4]), .C_out(C[7:4]));
	
	assign C_out = C[7] | ctrl; // carry out
	assign v = C[7] ^ C[6]; // overflow
	
endmodule
