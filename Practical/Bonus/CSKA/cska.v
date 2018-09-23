`timescale 1ns / 1ps

// 16-bit Carry-Skip Adder
module CSKA16(Cout, Sum, A, B, Cin);
	output Cout;
	output [15:0] Sum;
	input [15:0] A, B;
	input Cin;
	
	wire [4:1] c;
	wire [2:0] e;

	RCA4 rca1(c[1], Sum[3:0], A[3:0], B[3:0], Cin);
	RCA4 rca2(c[2], Sum[7:4], A[7:4], B[7:4], e[0]);
	RCA4 rca3(c[3], Sum[11:8], A[11:8], B[11:8], e[1]);
	RCA4 rca4(c[4], Sum[15:12], A[15:12], B[15:12], e[2]);
	
	skipLogic skip0(e[0], A[3:0], B[3:0], Cin, c[1]);
	skipLogic skip1(e[1], A[7:4], B[7:4], e[0], c[2]);
	skipLogic skip2(e[2], A[11:8], B[11:8], e[1], c[3]);
	skipLogic skip3(Cout, A[15:12], B[15:12], e[2], c[4]);
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

// skip
module skipLogic(cin_next, a, b, cin, cout);
	output cin_next;
	input [3:0] a, b;
	input cin, cout;

	wire p0, p1, p2, p3, P;
	
	assign p0 = a[0] | b[0];
	assign p1 = a[1] | b[1];
	assign p2 = a[2] | b[2];
	assign p3 = a[3] | b[3];

	assign P = p0 & p1 & p2 & p3 & cin;
	assign cin_next = P | cout;
endmodule

