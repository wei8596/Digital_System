`timescale 1ns / 1ps

// 16-bit Ripple Carry Adder
module RCA16(Cout, Sum, A, B, Cin);
	output Cout;
	output [15:0] Sum;
	input [15:0] A, B;
	input Cin;
	
	wire [3:1] c;

	RCA4 rca1(c[1], Sum[3:0], A[3:0], B[3:0], Cin);
	RCA4 rca2(c[2], Sum[7:4], A[7:4], B[7:4], c[1]);
	RCA4 rca3(c[3], Sum[11:8], A[11:8], B[11:8], c[2]);
	RCA4 rca4(Cout, Sum[15:12], A[15:12], B[15:12], c[3]);
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

