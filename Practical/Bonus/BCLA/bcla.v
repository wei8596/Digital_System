`timescale 1ns / 1ps

// 16-bit Block Carry Lookahead Adder
module CLA16(G, P, Sum, A, B, Cin);
	output G, P;
	output [15:0] Sum;
	input [15:0] A, B;
	input Cin;

	wire [15:0] c1, gt, pt;
	wire [3:0] c2, g, p;
	
	RFA rfa1(gt[0], pt[0], Sum[0], A[0], B[0], Cin);
	RFA rfa2(gt[1], pt[1], Sum[1], A[1], B[1], c1[1]);
	RFA rfa3(gt[2], pt[2], Sum[2], A[2], B[2], c1[2]);
	RFA rfa4(gt[3], pt[3], Sum[3], A[3], B[3], c1[3]);
	BCLG4 bclg1(c1[3:0], g[0], p[0], gt[3:0], pt[3:0], Cin);
	
	RFA rfa5(gt[4], pt[4], Sum[4], A[4], B[4], c2[1]);
	RFA rfa6(gt[5], pt[5], Sum[5], A[5], B[5], c1[5]);
	RFA rfa7(gt[6], pt[6], Sum[6], A[6], B[6], c1[6]);
	RFA rfa8(gt[7], pt[7], Sum[7], A[7], B[7], c1[7]);
	BCLG4 bclg2(c1[7:4], g[1], p[1], gt[7:4], pt[7:4], c2[1]);
	
	RFA rfa9(gt[8], pt[8], Sum[8], A[8], B[8], c2[2]);
	RFA rfa10(gt[9], pt[9], Sum[9], A[9], B[9], c1[9]);
	RFA rfa11(gt[10], pt[10], Sum[10], A[10], B[10], c1[10]);
	RFA rfa12(gt[11], pt[11], Sum[11], A[11], B[11], c1[11]);
	BCLG4 bclg3(c1[11:8], g[2], p[2], gt[11:8], pt[11:8], c2[2]);
	
	RFA rfa13(gt[12], pt[12], Sum[12], A[12], B[12], c2[3]);
	RFA rfa14(gt[13], pt[13], Sum[13], A[13], B[13], c1[13]);
	RFA rfa15(gt[14], pt[14], Sum[14], A[14], B[14], c1[14]);
	RFA rfa16(gt[15], pt[15], Sum[15], A[15], B[15], c1[15]);
	BCLG4 bclg4(c1[15:12], g[3], p[3], gt[15:12], pt[15:12], c2[3]);
	
	BCLG4 bclg5(c2, G, P, g, p, Cin);
endmodule

// Reduced Full Adder
module RFA(G, P, Sum, A, B, Cin);
	output G, P, Sum;
	input A, B, Cin;
	
	assign G = A & B;
	assign P = A | B;
	assign Sum = A ^ B ^ Cin;
endmodule

// 4-bit Block Carry Lookahead Generator
module BCLG4(Cout, Gout, Pout, g, p, Cin);
	output [3:0] Cout;
	output Gout, Pout;
	input [3:0] g, p;
	input Cin;
	
	wire [3:0] g, p;

	assign Cout[1] = g[0] | (p[0]&Cin);
	assign Cout[2] = g[1] | (p[1]&g[0]) | (p[1]&p[0]&Cin);
	assign Cout[3] = g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&Cin);
	
	assign Gout = g[3] | (p[3]&g[2]) | (p[3]&p[2]&g[1]) | (p[3]&p[2]&p[1]&g[0]);
	assign Pout = p[0] & p[1] & p[2] & p[3];
endmodule

