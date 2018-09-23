`timescale 1ns / 1ps

// 16-bit Carry Select Adder
module CSEA16(Cout, Sum, A, B, Cin);
	output Cout;
	output [15:0] Sum;
	input [15:0] A, B;
	input Cin;
	
	wire [3:1] c;
	wire [3:0] cout0;
	wire [3:1] cout1;
	wire [15:0] sum0, sum1;
	wire w1, w2, w3;
	wire c8, c12;

	RCA4 rca1(cout0[0], Sum[3:0], A[3:0], B[3:0], Cin);
	
	RCA4 rca2_0(cout0[1], sum0[7:4], A[7:4], B[7:4], 1'b0);
	RCA4 rca2_1(cout1[1], sum1[7:4], A[7:4], B[7:4], 1'b1);
	RCA4 rca3_0(cout0[2], sum0[11:8], A[11:8], B[11:8], 1'b0);
	RCA4 rca3_1(cout1[2], sum1[11:8], A[11:8], B[11:8], 1'b1);
	RCA4 rca4_0(cout0[3], sum0[15:12], A[15:12], B[15:12], 1'b0);
	RCA4 rca4_1(cout1[3], sum1[15:12], A[15:12], B[15:12], 1'b1);
	
	MUX4 mux1(Sum[7:4], sum0[7:4], sum1[7:4], cout0[0]);
	assign w1 = cout0[0] & cout1[1];
	assign c8 = w1 | cout0[1];
	MUX4 mux2(Sum[11:8], sum0[11:8], sum1[11:8], c8);
	assign w2 = c8 & cout1[2];
	assign c12 = w2 | cout0[2];
	MUX4 mux3(Sum[15:12], sum0[15:12], sum1[15:12], c12);
	assign w3 = c12 & cout1[3];
	assign Cout = w3 | cout0[3];
endmodule

module HA(Cout, Sum, A, B);
	output Cout, Sum;
	input A, B;

	assign Cout = A & B;
	assign Sum = A ^ B;
endmodule

module FA(Cout, Sum, A, B, Cin);
	output Sum, Cout;
	input A, B, Cin;
	
	wire c1, c2;
	wire t_sum;

	HA ha1(c1, t_sum, A, B);
	HA ha2(c2, Sum, t_sum, Cin);
	assign Cout = c1 | c2;
endmodule

// 4-bit Ripple Carry Adder
module RCA4(Cout, Sum, A, B, Cin);
	output Cout;
	output [3:0] Sum;
	input [3:0] A, B;
	input Cin;
	
	wire [3:1] c;

	FA fa1(c[1], Sum[0], A[0], B[0], Cin);
	FA fa2(c[2], Sum[1], A[1], B[1], c[1]);
	FA fa3(c[3], Sum[2], A[2], B[2], c[2]);
	FA fa4(Cout, Sum[3], A[3], B[3], c[3]);
endmodule

// 4-bit Multiplexer
module MUX4(Z, A, B, Sel);
	output [3:0] Z;
	input [3:0] A, B;
	input Sel;

	assign Z = Sel ? B : A;
endmodule

