/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Sat Jun 30 20:16:49 2018
/////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module HA_13 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  AND2X2 U1 ( .A(B), .B(A), .Y(Cout) );
  XOR2X1 U2 ( .A(B), .B(A), .Y(Sum) );
endmodule


module HA1 ( C_out, SUM, A, C_in );
  input A, C_in;
  output C_out, SUM;
  wire   n2, n3;

  CLKINVX1 U1 ( .A(n3), .Y(C_out) );
  OAI21XL U2 ( .A0(C_in), .A1(n2), .B0(n3), .Y(SUM) );
  NAND2X1 U3 ( .A(C_in), .B(n2), .Y(n3) );
  CLKINVX1 U4 ( .A(A), .Y(n2) );
endmodule


module FA0_90 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n1;

  XOR2X1 U1 ( .A(C_in), .B(n1), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n1), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
endmodule


module FA1_103 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n1, n2, n3;

  XNOR2X1 U1 ( .A(n2), .B(n3), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n3) );
  OAI22XL U3 ( .A0(A), .A1(n1), .B0(n3), .B1(n2), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n1) );
  CLKINVX1 U5 ( .A(C_in), .Y(n2) );
endmodule


module FA2_14 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n1;

  XOR2X1 U1 ( .A(C_in), .B(n1), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n1), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
endmodule


module HA3_4 ( C_out, SUM, A, C_in );
  input A, C_in;
  output C_out, SUM;
  wire   n2, n3;

  CLKINVX1 U1 ( .A(n3), .Y(C_out) );
  NAND2X1 U2 ( .A(C_in), .B(n2), .Y(n3) );
  OAI21XL U3 ( .A0(C_in), .A1(n2), .B0(n3), .Y(SUM) );
  CLKINVX1 U4 ( .A(A), .Y(n2) );
endmodule


module FA3_18 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n1, n2, n3;

  OAI21XL U1 ( .A0(A), .A1(n1), .B0(n3), .Y(n2) );
  NAND2X1 U2 ( .A(A), .B(n1), .Y(n3) );
  CLKINVX1 U3 ( .A(B), .Y(n1) );
  OA21XL U4 ( .A0(n2), .A1(C_in), .B0(n3), .Y(C_out) );
  XOR2X1 U5 ( .A(C_in), .B(n2), .Y(SUM) );
endmodule


module FA3_13 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  OAI21XL U2 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA3_14 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  OAI21XL U2 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA3_15 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  OAI21XL U2 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module HA3_3 ( C_out, SUM, A, C_in );
  input A, C_in;
  output C_out, SUM;
  wire   n1, n3;

  CLKINVX1 U1 ( .A(A), .Y(n3) );
  CLKINVX1 U2 ( .A(n1), .Y(C_out) );
  NAND2X1 U3 ( .A(C_in), .B(n3), .Y(n1) );
  OAI21XL U4 ( .A0(C_in), .A1(n3), .B0(n1), .Y(SUM) );
endmodule


module RCA4_0_1 ( Cout, Sum, A, B );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  output Cout;

  wire   [3:1] c;

  HA3_3 a0 ( .C_out(c[1]), .SUM(Sum[0]), .A(A[0]), .C_in(B[0]) );
  FA3_15 a1 ( .C_out(c[2]), .SUM(Sum[1]), .A(A[1]), .B(B[1]), .C_in(c[1]) );
  FA3_14 a2 ( .C_out(c[3]), .SUM(Sum[2]), .A(A[2]), .B(B[2]), .C_in(c[2]) );
  FA3_13 a3 ( .C_out(Cout), .SUM(Sum[3]), .A(A[3]), .B(B[3]), .C_in(c[3]) );
endmodule


module HA3_1_2 ( C_out, SUM, A, C_in );
  input A, C_in;
  output C_out, SUM;


  NAND2BX1 U1 ( .AN(C_in), .B(A), .Y(C_out) );
  XNOR2X1 U2 ( .A(A), .B(C_in), .Y(SUM) );
endmodule


module FA3_10 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  OAI21XL U2 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA3_11 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  OAI21XL U2 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA3_12 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OAI21XL U1 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  OA21XL U2 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module RCA4_1_1 ( Cout, Sum, A, B );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  output Cout;

  wire   [3:1] c;

  HA3_1_2 a0 ( .C_out(c[1]), .SUM(Sum[0]), .A(A[0]), .C_in(B[0]) );
  FA3_12 a1 ( .C_out(c[2]), .SUM(Sum[1]), .A(A[1]), .B(B[1]), .C_in(c[1]) );
  FA3_11 a2 ( .C_out(c[3]), .SUM(Sum[2]), .A(A[2]), .B(B[2]), .C_in(c[2]) );
  FA3_10 a3 ( .C_out(Cout), .SUM(Sum[3]), .A(A[3]), .B(B[3]), .C_in(c[3]) );
endmodule


module MUX4_1 ( Z, A, B, Sel );
  output [3:0] Z;
  input [3:0] A;
  input [3:0] B;
  input Sel;
  wire   n1;

  CLKINVX1 U1 ( .A(Sel), .Y(n1) );
  AO22X1 U2 ( .A0(B[1]), .A1(Sel), .B0(A[1]), .B1(n1), .Y(Z[1]) );
  AO22X1 U3 ( .A0(B[2]), .A1(Sel), .B0(A[2]), .B1(n1), .Y(Z[2]) );
  AO22X1 U4 ( .A0(Sel), .A1(B[3]), .B0(A[3]), .B1(n1), .Y(Z[3]) );
  AO22X1 U5 ( .A0(B[0]), .A1(Sel), .B0(A[0]), .B1(n1), .Y(Z[0]) );
endmodule


module FA3_2 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  CLKINVX1 U1 ( .A(B), .Y(n6) );
  XOR2X1 U2 ( .A(C_in), .B(n5), .Y(SUM) );
  OA21XL U3 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  OAI21XL U4 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U5 ( .A(A), .B(n6), .Y(n4) );
endmodule


module FA3_3 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  OAI21XL U2 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module HA3_0 ( C_out, SUM, A, C_in );
  input A, C_in;
  output C_out, SUM;
  wire   n1, n3;

  CLKINVX1 U1 ( .A(A), .Y(n3) );
  CLKINVX1 U2 ( .A(n1), .Y(C_out) );
  NAND2X1 U3 ( .A(C_in), .B(n3), .Y(n1) );
  OAI21XL U4 ( .A0(C_in), .A1(n3), .B0(n1), .Y(SUM) );
endmodule


module RCA3_0 ( Cout, Sum, A, B );
  output [2:0] Sum;
  input [2:0] A;
  input [2:0] B;
  output Cout;

  wire   [2:1] c;

  HA3_0 fa0 ( .C_out(c[1]), .SUM(Sum[0]), .A(A[0]), .C_in(B[0]) );
  FA3_3 fa1 ( .C_out(c[2]), .SUM(Sum[1]), .A(A[1]), .B(B[1]), .C_in(c[1]) );
  FA3_2 fa2 ( .C_out(Cout), .SUM(Sum[2]), .A(A[2]), .B(B[2]), .C_in(c[2]) );
endmodule


module FA3_0 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  CLKINVX1 U1 ( .A(B), .Y(n6) );
  XOR2X1 U2 ( .A(C_in), .B(n5), .Y(SUM) );
  OA21XL U3 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  OAI21XL U4 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U5 ( .A(A), .B(n6), .Y(n4) );
endmodule


module FA3_1 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OAI21XL U1 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  OA21XL U2 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module HA3_1_0 ( C_out, SUM, A, C_in );
  input A, C_in;
  output C_out, SUM;


  NAND2BX1 U1 ( .AN(C_in), .B(A), .Y(C_out) );
  XNOR2X1 U2 ( .A(A), .B(C_in), .Y(SUM) );
endmodule


module RCA3_1 ( Cout, Sum, A, B );
  output [2:0] Sum;
  input [2:0] A;
  input [2:0] B;
  output Cout;

  wire   [2:1] c;

  HA3_1_0 fa0 ( .C_out(c[1]), .SUM(Sum[0]), .A(A[0]), .C_in(B[0]) );
  FA3_1 fa1 ( .C_out(c[2]), .SUM(Sum[1]), .A(A[1]), .B(B[1]), .C_in(c[1]) );
  FA3_0 fa2 ( .C_out(Cout), .SUM(Sum[2]), .A(A[2]), .B(B[2]), .C_in(c[2]) );
endmodule


module MUX3 ( Z, A, B, Sel );
  output [2:0] Z;
  input [2:0] A;
  input [2:0] B;
  input Sel;
  wire   n1;

  CLKINVX1 U1 ( .A(Sel), .Y(n1) );
  AO22X1 U2 ( .A0(B[1]), .A1(Sel), .B0(A[1]), .B1(n1), .Y(Z[1]) );
  AO22X1 U3 ( .A0(B[0]), .A1(Sel), .B0(A[0]), .B1(n1), .Y(Z[0]) );
  AO22X1 U4 ( .A0(Sel), .A1(B[2]), .B0(A[2]), .B1(n1), .Y(Z[2]) );
endmodule


module FA3_4 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  XOR2X1 U2 ( .A(C_in), .B(n5), .Y(SUM) );
  OAI21XL U3 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U4 ( .A(A), .B(n6), .Y(n4) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA3_5 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  XOR2X1 U2 ( .A(C_in), .B(n5), .Y(SUM) );
  OAI21XL U3 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U4 ( .A(A), .B(n6), .Y(n4) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA3_6 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OAI21XL U1 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  OA21XL U2 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module HA3_1_1 ( C_out, SUM, A, C_in );
  input A, C_in;
  output C_out, SUM;


  NAND2BX1 U1 ( .AN(C_in), .B(A), .Y(C_out) );
  XNOR2X1 U2 ( .A(A), .B(C_in), .Y(SUM) );
endmodule


module RCA4_1_0 ( Cout, Sum, A, B );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  output Cout;

  wire   [3:1] c;

  HA3_1_1 a0 ( .C_out(c[1]), .SUM(Sum[0]), .A(A[0]), .C_in(B[0]) );
  FA3_6 a1 ( .C_out(c[2]), .SUM(Sum[1]), .A(A[1]), .B(B[1]), .C_in(c[1]) );
  FA3_5 a2 ( .C_out(c[3]), .SUM(Sum[2]), .A(A[2]), .B(B[2]), .C_in(c[2]) );
  FA3_4 a3 ( .C_out(Cout), .SUM(Sum[3]), .A(A[3]), .B(B[3]), .C_in(c[3]) );
endmodule


module FA3_7 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  XOR2X1 U2 ( .A(C_in), .B(n5), .Y(SUM) );
  OAI21XL U3 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U4 ( .A(A), .B(n6), .Y(n4) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA3_8 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  XOR2X1 U2 ( .A(C_in), .B(n5), .Y(SUM) );
  OAI21XL U3 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U4 ( .A(A), .B(n6), .Y(n4) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA3_9 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  OAI21XL U2 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module HA3_2 ( C_out, SUM, A, C_in );
  input A, C_in;
  output C_out, SUM;
  wire   n1, n3;

  CLKINVX1 U1 ( .A(A), .Y(n3) );
  CLKINVX1 U2 ( .A(n1), .Y(C_out) );
  NAND2X1 U3 ( .A(C_in), .B(n3), .Y(n1) );
  OAI21XL U4 ( .A0(C_in), .A1(n3), .B0(n1), .Y(SUM) );
endmodule


module RCA4_0_0 ( Cout, Sum, A, B );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  output Cout;

  wire   [3:1] c;

  HA3_2 a0 ( .C_out(c[1]), .SUM(Sum[0]), .A(A[0]), .C_in(B[0]) );
  FA3_9 a1 ( .C_out(c[2]), .SUM(Sum[1]), .A(A[1]), .B(B[1]), .C_in(c[1]) );
  FA3_8 a2 ( .C_out(c[3]), .SUM(Sum[2]), .A(A[2]), .B(B[2]), .C_in(c[2]) );
  FA3_7 a3 ( .C_out(Cout), .SUM(Sum[3]), .A(A[3]), .B(B[3]), .C_in(c[3]) );
endmodule


module MUX4_0 ( Z, A, B, Sel );
  output [3:0] Z;
  input [3:0] A;
  input [3:0] B;
  input Sel;
  wire   n2;

  CLKINVX1 U1 ( .A(Sel), .Y(n2) );
  AO22X1 U2 ( .A0(B[2]), .A1(Sel), .B0(A[2]), .B1(n2), .Y(Z[2]) );
  AO22X1 U3 ( .A0(Sel), .A1(B[3]), .B0(A[3]), .B1(n2), .Y(Z[3]) );
  AO22X1 U4 ( .A0(B[1]), .A1(Sel), .B0(A[1]), .B1(n2), .Y(Z[1]) );
  AO22X1 U5 ( .A0(B[0]), .A1(Sel), .B0(A[0]), .B1(n2), .Y(Z[0]) );
endmodule


module CSEA ( Cout, Sum, A10, Ain, B, Cin );
  output [10:0] Sum;
  input [9:0] Ain;
  input [10:0] B;
  input A10, Cin;
  output Cout;
  wire   \sum_t[1][10] , \sum_t[1][9] , \sum_t[1][8] , \sum_t[1][7] ,
         \sum_t[1][6] , \sum_t[1][5] , \sum_t[1][4] , \sum_t[1][3] ,
         \sum_t[1][2] , \sum_t[1][1] , \sum_t[1][0] , \sum_t[0][10] ,
         \sum_t[0][9] , \sum_t[0][8] , \sum_t[0][7] , \sum_t[0][6] ,
         \sum_t[0][5] , \sum_t[0][4] , \sum_t[0][3] , \sum_t[0][2] ,
         \sum_t[0][1] , \sum_t[0][0] , \couts[1][2] , \couts[1][1] ,
         \couts[1][0] , \couts[0][2] , \couts[0][1] , \couts[0][0] ;
  wire   [1:0] e;

  RCA4_0_1 rca0_0 ( .Cout(\couts[0][0] ), .Sum({\sum_t[0][3] , \sum_t[0][2] , 
        \sum_t[0][1] , \sum_t[0][0] }), .A(Ain[3:0]), .B(B[3:0]) );
  RCA4_1_1 rca0_1 ( .Cout(\couts[1][0] ), .Sum({\sum_t[1][3] , \sum_t[1][2] , 
        \sum_t[1][1] , \sum_t[1][0] }), .A(Ain[3:0]), .B(B[3:0]) );
  MUX4_1 mux0 ( .Z(Sum[3:0]), .A({\sum_t[0][3] , \sum_t[0][2] , \sum_t[0][1] , 
        \sum_t[0][0] }), .B({\sum_t[1][3] , \sum_t[1][2] , \sum_t[1][1] , 
        \sum_t[1][0] }), .Sel(Cin) );
  RCA4_0_0 rca1_0 ( .Cout(\couts[0][1] ), .Sum({\sum_t[0][7] , \sum_t[0][6] , 
        \sum_t[0][5] , \sum_t[0][4] }), .A(Ain[7:4]), .B(B[7:4]) );
  RCA4_1_0 rca1_1 ( .Cout(\couts[1][1] ), .Sum({\sum_t[1][7] , \sum_t[1][6] , 
        \sum_t[1][5] , \sum_t[1][4] }), .A(Ain[7:4]), .B(B[7:4]) );
  MUX4_0 mux1 ( .Z(Sum[7:4]), .A({\sum_t[0][7] , \sum_t[0][6] , \sum_t[0][5] , 
        \sum_t[0][4] }), .B({\sum_t[1][7] , \sum_t[1][6] , \sum_t[1][5] , 
        \sum_t[1][4] }), .Sel(e[0]) );
  RCA3_0 rca2_0 ( .Cout(\couts[0][2] ), .Sum({\sum_t[0][10] , \sum_t[0][9] , 
        \sum_t[0][8] }), .A({A10, Ain[9:8]}), .B(B[10:8]) );
  RCA3_1 rca2_1 ( .Cout(\couts[1][2] ), .Sum({\sum_t[1][10] , \sum_t[1][9] , 
        \sum_t[1][8] }), .A({A10, Ain[9:8]}), .B(B[10:8]) );
  MUX3 mux2 ( .Z(Sum[10:8]), .A({\sum_t[0][10] , \sum_t[0][9] , \sum_t[0][8] }), .B({\sum_t[1][10] , \sum_t[1][9] , \sum_t[1][8] }), .Sel(e[1]) );
  AO21X1 U1 ( .A0(\couts[1][1] ), .A1(e[0]), .B0(\couts[0][1] ), .Y(e[1]) );
  AO21X1 U2 ( .A0(\couts[1][0] ), .A1(Cin), .B0(\couts[0][0] ), .Y(e[0]) );
  AO21X1 U3 ( .A0(\couts[1][2] ), .A1(e[1]), .B0(\couts[0][2] ), .Y(Cout) );
endmodule


module HA_0 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_1 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_2 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_3 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_4 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_5 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_6 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_7 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_8 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_9 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_10 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_11 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_12 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X2 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA0_0 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_1 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_2 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_3 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_4 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_5 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_6 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_7 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_8 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_9 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_10 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_11 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_12 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_13 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_14 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_15 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_16 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_17 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_18 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_19 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_20 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_21 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_22 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_23 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_24 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_25 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_26 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_27 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_28 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_29 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_30 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_31 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_32 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_33 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_34 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_35 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_36 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_37 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_38 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_39 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_40 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_41 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_42 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_43 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_44 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_45 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_46 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_47 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_48 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_49 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_50 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_51 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_52 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_53 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_54 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_55 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_56 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_57 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_58 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_59 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_60 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_61 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_62 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_63 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_64 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_65 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_66 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_67 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_68 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_69 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_70 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_71 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_72 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_73 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_74 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_75 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_76 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_77 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_78 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n2) );
  AO22X1 U3 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
endmodule


module FA0_79 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_80 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_81 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_82 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_83 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_84 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_85 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_86 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_87 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_88 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA0_89 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AO22X1 U2 ( .A0(B), .A1(A), .B0(n2), .B1(C_in), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA1_0 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_1 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_2 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_3 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_4 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_5 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_6 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_7 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_8 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_9 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_10 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_11 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_12 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_13 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  OAI22XL U2 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  XOR2X1 U4 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_14 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_15 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_16 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_17 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_18 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_19 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_20 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_21 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_22 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_23 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_24 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_25 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_26 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_27 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_28 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_29 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_30 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_31 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_32 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_33 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_34 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_35 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_36 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_37 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_38 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_39 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_40 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_41 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_42 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_43 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_44 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_45 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_46 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_47 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_48 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_49 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_50 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_51 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_52 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_53 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_54 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_55 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_56 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_57 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_58 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_59 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_60 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_61 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_62 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_63 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_64 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_65 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_66 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_67 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_68 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_69 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_70 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_71 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_72 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_73 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_74 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_75 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_76 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_77 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_78 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_79 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_80 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_81 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_82 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_83 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_84 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_85 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_86 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_87 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_88 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_89 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_90 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_91 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_92 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_93 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_94 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_95 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_96 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_97 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_98 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_99 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_100 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  CLKINVX1 U3 ( .A(C_in), .Y(n5) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA1_101 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  XOR2X1 U2 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U3 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  CLKINVX1 U5 ( .A(C_in), .Y(n5) );
endmodule


module FA1_102 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  XNOR2X1 U1 ( .A(n5), .B(n4), .Y(SUM) );
  CLKINVX1 U2 ( .A(C_in), .Y(n5) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n4) );
  OAI22XL U4 ( .A0(A), .A1(n6), .B0(n4), .B1(n5), .Y(C_out) );
  CLKINVX1 U5 ( .A(B), .Y(n6) );
endmodule


module FA2_0 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_1 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_2 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_3 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_4 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_5 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_6 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_7 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_8 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_9 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_10 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_11 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_12 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA2_13 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n2;

  XOR2X1 U1 ( .A(C_in), .B(n2), .Y(SUM) );
  AOI2BB2X1 U2 ( .B0(C_in), .B1(n2), .A0N(A), .A1N(B), .Y(C_out) );
  XOR2X1 U3 ( .A(A), .B(B), .Y(n2) );
endmodule


module FA3_16 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OA21XL U1 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  OAI21XL U2 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U3 ( .A(A), .B(n6), .Y(n4) );
  CLKINVX1 U4 ( .A(B), .Y(n6) );
  XOR2X1 U5 ( .A(C_in), .B(n5), .Y(SUM) );
endmodule


module FA3_17 ( C_out, SUM, A, B, C_in );
  input A, B, C_in;
  output C_out, SUM;
  wire   n4, n5, n6;

  OAI21XL U1 ( .A0(A), .A1(n6), .B0(n4), .Y(n5) );
  NAND2X1 U2 ( .A(A), .B(n6), .Y(n4) );
  CLKINVX1 U3 ( .A(B), .Y(n6) );
  OA21XL U4 ( .A0(n5), .A1(C_in), .B0(n4), .Y(C_out) );
  XOR2X1 U5 ( .A(C_in), .B(n5), .Y(SUM) );
endmodule


module multiplier ( output_valid, prod, a, b, clk, input_ready );
  output [31:0] prod;
  input [15:0] a;
  input [15:0] b;
  input clk, input_ready;
  output output_valid;
  wire   _1_net_, _2_net_, \c[15][3] , \c[15][2] , \c[15][1] , \c[15][0] ,
         \c[14][14] , \c[14][13] , \c[14][12] , \c[14][11] , \c[14][10] ,
         \c[14][9] , \c[14][8] , \c[14][7] , \c[14][6] , \c[14][5] ,
         \c[14][4] , \c[14][3] , \c[14][2] , \c[14][1] , \c[14][0] ,
         \c[13][14] , \c[13][13] , \c[13][12] , \c[13][11] , \c[13][10] ,
         \c[13][9] , \c[13][8] , \c[13][7] , \c[13][6] , \c[13][5] ,
         \c[13][4] , \c[13][3] , \c[13][2] , \c[13][1] , \c[13][0] ,
         \c[12][14] , \c[12][13] , \c[12][12] , \c[12][11] , \c[12][10] ,
         \c[12][9] , \c[12][8] , \c[12][7] , \c[12][6] , \c[12][5] ,
         \c[12][4] , \c[12][3] , \c[12][2] , \c[12][1] , \c[12][0] ,
         \c[11][14] , \c[11][13] , \c[11][12] , \c[11][11] , \c[11][10] ,
         \c[11][9] , \c[11][8] , \c[11][7] , \c[11][6] , \c[11][5] ,
         \c[11][4] , \c[11][3] , \c[11][2] , \c[11][1] , \c[11][0] ,
         \c[10][14] , \c[10][13] , \c[10][12] , \c[10][11] , \c[10][10] ,
         \c[10][9] , \c[10][8] , \c[10][7] , \c[10][6] , \c[10][5] ,
         \c[10][4] , \c[10][3] , \c[10][2] , \c[10][1] , \c[10][0] ,
         \c[9][14] , \c[9][13] , \c[9][12] , \c[9][11] , \c[9][10] , \c[9][9] ,
         \c[9][8] , \c[9][7] , \c[9][6] , \c[9][5] , \c[9][4] , \c[9][3] ,
         \c[9][2] , \c[9][1] , \c[9][0] , \c[8][14] , \c[8][13] , \c[8][12] ,
         \c[8][11] , \c[8][10] , \c[8][9] , \c[8][8] , \c[8][7] , \c[8][6] ,
         \c[8][5] , \c[8][4] , \c[8][3] , \c[8][2] , \c[8][1] , \c[8][0] ,
         \c[7][14] , \c[7][13] , \c[7][12] , \c[7][11] , \c[7][10] , \c[7][9] ,
         \c[7][8] , \c[7][7] , \c[7][6] , \c[7][5] , \c[7][4] , \c[7][3] ,
         \c[7][2] , \c[7][1] , \c[7][0] , \c[6][14] , \c[6][13] , \c[6][12] ,
         \c[6][11] , \c[6][10] , \c[6][9] , \c[6][8] , \c[6][7] , \c[6][6] ,
         \c[6][5] , \c[6][4] , \c[6][3] , \c[6][2] , \c[6][1] , \c[6][0] ,
         \c[5][14] , \c[5][13] , \c[5][12] , \c[5][11] , \c[5][10] , \c[5][9] ,
         \c[5][8] , \c[5][7] , \c[5][6] , \c[5][5] , \c[5][4] , \c[5][3] ,
         \c[5][2] , \c[5][1] , \c[5][0] , \c[4][14] , \c[4][13] , \c[4][12] ,
         \c[4][11] , \c[4][10] , \c[4][9] , \c[4][8] , \c[4][7] , \c[4][6] ,
         \c[4][5] , \c[4][4] , \c[4][3] , \c[4][2] , \c[4][1] , \c[4][0] ,
         \c[3][14] , \c[3][13] , \c[3][12] , \c[3][11] , \c[3][10] , \c[3][9] ,
         \c[3][8] , \c[3][7] , \c[3][6] , \c[3][5] , \c[3][4] , \c[3][3] ,
         \c[3][2] , \c[3][1] , \c[3][0] , \c[2][14] , \c[2][13] , \c[2][12] ,
         \c[2][11] , \c[2][10] , \c[2][9] , \c[2][8] , \c[2][7] , \c[2][6] ,
         \c[2][5] , \c[2][4] , \c[2][3] , \c[2][2] , \c[2][1] , \c[2][0] ,
         \c[1][14] , \c[1][13] , \c[1][12] , \c[1][11] , \c[1][10] , \c[1][9] ,
         \c[1][8] , \c[1][7] , \c[1][6] , \c[1][5] , \c[1][4] , \c[1][3] ,
         \c[1][2] , \c[1][1] , \c[1][0] , \c[0][14] , \c[0][13] , \c[0][12] ,
         \c[0][11] , \c[0][10] , \c[0][9] , \c[0][8] , \c[0][7] , \c[0][6] ,
         \c[0][5] , \c[0][4] , \c[0][3] , \c[0][2] , \c[0][1] , \c[0][0] ,
         _5_net_, _6_net_, \s[14][14] , \s[14][13] , \s[14][12] , \s[14][11] ,
         \s[14][10] , \s[14][9] , \s[14][8] , \s[14][7] , \s[14][6] ,
         \s[14][5] , \s[14][4] , \s[14][3] , \s[14][2] , \s[14][1] ,
         \s[13][14] , \s[13][13] , \s[13][12] , \s[13][11] , \s[13][10] ,
         \s[13][9] , \s[13][8] , \s[13][7] , \s[13][6] , \s[13][5] ,
         \s[13][4] , \s[13][3] , \s[13][2] , \s[13][1] , \s[12][14] ,
         \s[12][13] , \s[12][12] , \s[12][11] , \s[12][10] , \s[12][9] ,
         \s[12][8] , \s[12][7] , \s[12][6] , \s[12][5] , \s[12][4] ,
         \s[12][3] , \s[12][2] , \s[12][1] , \s[11][14] , \s[11][13] ,
         \s[11][12] , \s[11][11] , \s[11][10] , \s[11][9] , \s[11][8] ,
         \s[11][7] , \s[11][6] , \s[11][5] , \s[11][4] , \s[11][3] ,
         \s[11][2] , \s[11][1] , \s[10][14] , \s[10][13] , \s[10][12] ,
         \s[10][11] , \s[10][10] , \s[10][9] , \s[10][8] , \s[10][7] ,
         \s[10][6] , \s[10][5] , \s[10][4] , \s[10][3] , \s[10][2] ,
         \s[10][1] , \s[9][14] , \s[9][13] , \s[9][12] , \s[9][11] ,
         \s[9][10] , \s[9][9] , \s[9][8] , \s[9][7] , \s[9][6] , \s[9][5] ,
         \s[9][4] , \s[9][3] , \s[9][2] , \s[9][1] , \s[8][14] , \s[8][13] ,
         \s[8][12] , \s[8][11] , \s[8][10] , \s[8][9] , \s[8][8] , \s[8][7] ,
         \s[8][6] , \s[8][5] , \s[8][4] , \s[8][3] , \s[8][2] , \s[8][1] ,
         \s[7][14] , \s[7][13] , \s[7][12] , \s[7][11] , \s[7][10] , \s[7][9] ,
         \s[7][8] , \s[7][7] , \s[7][6] , \s[7][5] , \s[7][4] , \s[7][3] ,
         \s[7][2] , \s[7][1] , \s[6][14] , \s[6][13] , \s[6][12] , \s[6][11] ,
         \s[6][10] , \s[6][9] , \s[6][8] , \s[6][7] , \s[6][6] , \s[6][5] ,
         \s[6][4] , \s[6][3] , \s[6][2] , \s[6][1] , \s[5][14] , \s[5][13] ,
         \s[5][12] , \s[5][11] , \s[5][10] , \s[5][9] , \s[5][8] , \s[5][7] ,
         \s[5][6] , \s[5][5] , \s[5][4] , \s[5][3] , \s[5][2] , \s[5][1] ,
         \s[4][14] , \s[4][13] , \s[4][12] , \s[4][11] , \s[4][10] , \s[4][9] ,
         \s[4][8] , \s[4][7] , \s[4][6] , \s[4][5] , \s[4][4] , \s[4][3] ,
         \s[4][2] , \s[4][1] , \s[3][14] , \s[3][13] , \s[3][12] , \s[3][11] ,
         \s[3][10] , \s[3][9] , \s[3][8] , \s[3][7] , \s[3][6] , \s[3][5] ,
         \s[3][4] , \s[3][3] , \s[3][2] , \s[3][1] , \s[2][14] , \s[2][13] ,
         \s[2][12] , \s[2][11] , \s[2][10] , \s[2][9] , \s[2][8] , \s[2][7] ,
         \s[2][6] , \s[2][5] , \s[2][4] , \s[2][3] , \s[2][2] , \s[2][1] ,
         \s[1][14] , \s[1][13] , \s[1][12] , \s[1][11] , \s[1][10] , \s[1][9] ,
         \s[1][8] , \s[1][7] , \s[1][6] , \s[1][5] , \s[1][4] , \s[1][3] ,
         \s[1][2] , \s[1][1] , \s[0][14] , \s[0][13] , \s[0][12] , \s[0][11] ,
         \s[0][10] , \s[0][9] , \s[0][8] , \s[0][7] , \s[0][6] , \s[0][5] ,
         \s[0][4] , \s[0][3] , \s[0][2] , \s[0][1] , _9_net_, _10_net_,
         _13_net_, _14_net_, _17_net_, _18_net_, _21_net_, _22_net_, _25_net_,
         _26_net_, _29_net_, _30_net_, _33_net_, _34_net_, _37_net_, _38_net_,
         _41_net_, _42_net_, _45_net_, _46_net_, _49_net_, _50_net_, _53_net_,
         _54_net_, _57_net_, _58_net_, _61_net_, _66_net_, _71_net_, _76_net_,
         _81_net_, _86_net_, _91_net_, _96_net_, _101_net_, _106_net_,
         _111_net_, _116_net_, _121_net_, _126_net_, _130_net_, _131_net_,
         _135_net_, _140_net_, _145_net_, _150_net_, _155_net_, _160_net_,
         _165_net_, _170_net_, _175_net_, _180_net_, _185_net_, _190_net_,
         _195_net_, _200_net_, _204_net_, _205_net_, _209_net_, _214_net_,
         _219_net_, _224_net_, _229_net_, _234_net_, _239_net_, _244_net_,
         _249_net_, _254_net_, _259_net_, _264_net_, _269_net_, _274_net_,
         _278_net_, _279_net_, _283_net_, _288_net_, _293_net_, _298_net_,
         _303_net_, _308_net_, _313_net_, _318_net_, _323_net_, _328_net_,
         _333_net_, _338_net_, _343_net_, _348_net_, _352_net_, _353_net_,
         _357_net_, _362_net_, _367_net_, _372_net_, _377_net_, _382_net_,
         _387_net_, _392_net_, _397_net_, _402_net_, _407_net_, _412_net_,
         _417_net_, _422_net_, _426_net_, _427_net_, _431_net_, _436_net_,
         _441_net_, _446_net_, _451_net_, _456_net_, _461_net_, _466_net_,
         _471_net_, _476_net_, _481_net_, _486_net_, _491_net_, _496_net_,
         _500_net_, _501_net_, _505_net_, _510_net_, _515_net_, _520_net_,
         _525_net_, _530_net_, _535_net_, _540_net_, _545_net_, _550_net_,
         _555_net_, _560_net_, _565_net_, _570_net_, _574_net_, _575_net_,
         _579_net_, _584_net_, _589_net_, _594_net_, _599_net_, _604_net_,
         _609_net_, _614_net_, _619_net_, _624_net_, _629_net_, _634_net_,
         _639_net_, _644_net_, _648_net_, _649_net_, _653_net_, _658_net_,
         _663_net_, _668_net_, _673_net_, _678_net_, _683_net_, _688_net_,
         _693_net_, _698_net_, _703_net_, _708_net_, _713_net_, _718_net_,
         _722_net_, _723_net_, _727_net_, _732_net_, _737_net_, _742_net_,
         _747_net_, _752_net_, _757_net_, _762_net_, _767_net_, _772_net_,
         _777_net_, _782_net_, _787_net_, _792_net_, _796_net_, _797_net_,
         _801_net_, _806_net_, _811_net_, _816_net_, _821_net_, _826_net_,
         _831_net_, _836_net_, _841_net_, _846_net_, _851_net_, _856_net_,
         _861_net_, _866_net_, _870_net_, _871_net_, _875_net_, _880_net_,
         _885_net_, _890_net_, _895_net_, _900_net_, _905_net_, _910_net_,
         _915_net_, _920_net_, _925_net_, _930_net_, _935_net_, _940_net_,
         _944_net_, _945_net_, _949_net_, _954_net_, _959_net_, _964_net_,
         _969_net_, _974_net_, _979_net_, _984_net_, _989_net_, _994_net_,
         _999_net_, _1004_net_, _1009_net_, _1014_net_, _1018_net_, _1019_net_,
         _1023_net_, _1028_net_, _1033_net_, _1038_net_, _1043_net_,
         _1048_net_, _1053_net_, _1058_net_, _1063_net_, _1068_net_,
         _1073_net_, _1078_net_, _1083_net_, _1088_net_, _1092_net_,
         _1093_net_, _1110_net_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n34;
  wire   [15:0] aa;
  wire   [15:0] bb;

  HA_13 A0 ( .Cout(\c[0][0] ), .Sum(prod[1]), .A(_1_net_), .B(_2_net_) );
  HA_12 A1 ( .Cout(\c[0][1] ), .Sum(\s[0][1] ), .A(_5_net_), .B(_6_net_) );
  HA_11 A2 ( .Cout(\c[0][2] ), .Sum(\s[0][2] ), .A(_9_net_), .B(_10_net_) );
  HA_10 A3 ( .Cout(\c[0][3] ), .Sum(\s[0][3] ), .A(_13_net_), .B(_14_net_) );
  HA_9 A4 ( .Cout(\c[0][4] ), .Sum(\s[0][4] ), .A(_17_net_), .B(_18_net_) );
  HA_8 A5 ( .Cout(\c[0][5] ), .Sum(\s[0][5] ), .A(_21_net_), .B(_22_net_) );
  HA_7 A6 ( .Cout(\c[0][6] ), .Sum(\s[0][6] ), .A(_25_net_), .B(_26_net_) );
  HA_6 A7 ( .Cout(\c[0][7] ), .Sum(\s[0][7] ), .A(_29_net_), .B(_30_net_) );
  HA_5 A8 ( .Cout(\c[0][8] ), .Sum(\s[0][8] ), .A(_33_net_), .B(_34_net_) );
  HA_4 A9 ( .Cout(\c[0][9] ), .Sum(\s[0][9] ), .A(_37_net_), .B(_38_net_) );
  HA_3 A10 ( .Cout(\c[0][10] ), .Sum(\s[0][10] ), .A(_41_net_), .B(_42_net_)
         );
  HA_2 A11 ( .Cout(\c[0][11] ), .Sum(\s[0][11] ), .A(_45_net_), .B(_46_net_)
         );
  HA_1 A12 ( .Cout(\c[0][12] ), .Sum(\s[0][12] ), .A(_49_net_), .B(_50_net_)
         );
  HA_0 A13 ( .Cout(\c[0][13] ), .Sum(\s[0][13] ), .A(_53_net_), .B(_54_net_)
         );
  HA1 A14 ( .C_out(\c[0][14] ), .SUM(\s[0][14] ), .A(_57_net_), .C_in(_58_net_) );
  FA0_90 A15 ( .C_out(\c[1][0] ), .SUM(prod[2]), .A(\s[0][1] ), .B(_61_net_), 
        .C_in(\c[0][0] ) );
  FA0_89 A16 ( .C_out(\c[1][1] ), .SUM(\s[1][1] ), .A(\s[0][2] ), .B(_66_net_), 
        .C_in(\c[0][1] ) );
  FA0_88 A17 ( .C_out(\c[1][2] ), .SUM(\s[1][2] ), .A(\s[0][3] ), .B(_71_net_), 
        .C_in(\c[0][2] ) );
  FA0_87 A18 ( .C_out(\c[1][3] ), .SUM(\s[1][3] ), .A(\s[0][4] ), .B(_76_net_), 
        .C_in(\c[0][3] ) );
  FA0_86 A19 ( .C_out(\c[1][4] ), .SUM(\s[1][4] ), .A(\s[0][5] ), .B(_81_net_), 
        .C_in(\c[0][4] ) );
  FA0_85 A20 ( .C_out(\c[1][5] ), .SUM(\s[1][5] ), .A(\s[0][6] ), .B(_86_net_), 
        .C_in(\c[0][5] ) );
  FA0_84 A21 ( .C_out(\c[1][6] ), .SUM(\s[1][6] ), .A(\s[0][7] ), .B(_91_net_), 
        .C_in(\c[0][6] ) );
  FA0_83 A22 ( .C_out(\c[1][7] ), .SUM(\s[1][7] ), .A(\s[0][8] ), .B(_96_net_), 
        .C_in(\c[0][7] ) );
  FA0_82 A23 ( .C_out(\c[1][8] ), .SUM(\s[1][8] ), .A(\s[0][9] ), .B(_101_net_), .C_in(\c[0][8] ) );
  FA0_81 A24 ( .C_out(\c[1][9] ), .SUM(\s[1][9] ), .A(\s[0][10] ), .B(
        _106_net_), .C_in(\c[0][9] ) );
  FA0_80 A25 ( .C_out(\c[1][10] ), .SUM(\s[1][10] ), .A(\s[0][11] ), .B(
        _111_net_), .C_in(\c[0][10] ) );
  FA0_79 A26 ( .C_out(\c[1][11] ), .SUM(\s[1][11] ), .A(\s[0][12] ), .B(
        _116_net_), .C_in(\c[0][11] ) );
  FA0_78 A27 ( .C_out(\c[1][12] ), .SUM(\s[1][12] ), .A(\s[0][13] ), .B(
        _121_net_), .C_in(\c[0][12] ) );
  FA1_103 A28 ( .C_out(\c[1][13] ), .SUM(\s[1][13] ), .A(\s[0][14] ), .B(
        _126_net_), .C_in(\c[0][13] ) );
  FA1_102 A29 ( .C_out(\c[1][14] ), .SUM(\s[1][14] ), .A(_130_net_), .B(
        _131_net_), .C_in(\c[0][14] ) );
  FA0_77 A30 ( .C_out(\c[2][0] ), .SUM(prod[3]), .A(\s[1][1] ), .B(_135_net_), 
        .C_in(\c[1][0] ) );
  FA0_76 A31 ( .C_out(\c[2][1] ), .SUM(\s[2][1] ), .A(\s[1][2] ), .B(_140_net_), .C_in(\c[1][1] ) );
  FA0_75 A32 ( .C_out(\c[2][2] ), .SUM(\s[2][2] ), .A(\s[1][3] ), .B(_145_net_), .C_in(\c[1][2] ) );
  FA0_74 A33 ( .C_out(\c[2][3] ), .SUM(\s[2][3] ), .A(\s[1][4] ), .B(_150_net_), .C_in(\c[1][3] ) );
  FA0_73 A34 ( .C_out(\c[2][4] ), .SUM(\s[2][4] ), .A(\s[1][5] ), .B(_155_net_), .C_in(\c[1][4] ) );
  FA0_72 A35 ( .C_out(\c[2][5] ), .SUM(\s[2][5] ), .A(\s[1][6] ), .B(_160_net_), .C_in(\c[1][5] ) );
  FA0_71 A36 ( .C_out(\c[2][6] ), .SUM(\s[2][6] ), .A(\s[1][7] ), .B(_165_net_), .C_in(\c[1][6] ) );
  FA0_70 A37 ( .C_out(\c[2][7] ), .SUM(\s[2][7] ), .A(\s[1][8] ), .B(_170_net_), .C_in(\c[1][7] ) );
  FA0_69 A38 ( .C_out(\c[2][8] ), .SUM(\s[2][8] ), .A(\s[1][9] ), .B(_175_net_), .C_in(\c[1][8] ) );
  FA0_68 A39 ( .C_out(\c[2][9] ), .SUM(\s[2][9] ), .A(\s[1][10] ), .B(
        _180_net_), .C_in(\c[1][9] ) );
  FA0_67 A40 ( .C_out(\c[2][10] ), .SUM(\s[2][10] ), .A(\s[1][11] ), .B(
        _185_net_), .C_in(\c[1][10] ) );
  FA0_66 A41 ( .C_out(\c[2][11] ), .SUM(\s[2][11] ), .A(\s[1][12] ), .B(
        _190_net_), .C_in(\c[1][11] ) );
  FA1_101 A42 ( .C_out(\c[2][12] ), .SUM(\s[2][12] ), .A(\s[1][13] ), .B(
        _195_net_), .C_in(\c[1][12] ) );
  FA1_100 A43 ( .C_out(\c[2][13] ), .SUM(\s[2][13] ), .A(\s[1][14] ), .B(
        _200_net_), .C_in(\c[1][13] ) );
  FA1_99 A44 ( .C_out(\c[2][14] ), .SUM(\s[2][14] ), .A(_204_net_), .B(
        _205_net_), .C_in(\c[1][14] ) );
  FA0_65 A45 ( .C_out(\c[3][0] ), .SUM(prod[4]), .A(\s[2][1] ), .B(_209_net_), 
        .C_in(\c[2][0] ) );
  FA0_64 A46 ( .C_out(\c[3][1] ), .SUM(\s[3][1] ), .A(\s[2][2] ), .B(_214_net_), .C_in(\c[2][1] ) );
  FA0_63 A47 ( .C_out(\c[3][2] ), .SUM(\s[3][2] ), .A(\s[2][3] ), .B(_219_net_), .C_in(\c[2][2] ) );
  FA0_62 A48 ( .C_out(\c[3][3] ), .SUM(\s[3][3] ), .A(\s[2][4] ), .B(_224_net_), .C_in(\c[2][3] ) );
  FA0_61 A49 ( .C_out(\c[3][4] ), .SUM(\s[3][4] ), .A(\s[2][5] ), .B(_229_net_), .C_in(\c[2][4] ) );
  FA0_60 A50 ( .C_out(\c[3][5] ), .SUM(\s[3][5] ), .A(\s[2][6] ), .B(_234_net_), .C_in(\c[2][5] ) );
  FA0_59 A51 ( .C_out(\c[3][6] ), .SUM(\s[3][6] ), .A(\s[2][7] ), .B(_239_net_), .C_in(\c[2][6] ) );
  FA0_58 A52 ( .C_out(\c[3][7] ), .SUM(\s[3][7] ), .A(\s[2][8] ), .B(_244_net_), .C_in(\c[2][7] ) );
  FA0_57 A53 ( .C_out(\c[3][8] ), .SUM(\s[3][8] ), .A(\s[2][9] ), .B(_249_net_), .C_in(\c[2][8] ) );
  FA0_56 A54 ( .C_out(\c[3][9] ), .SUM(\s[3][9] ), .A(\s[2][10] ), .B(
        _254_net_), .C_in(\c[2][9] ) );
  FA0_55 A55 ( .C_out(\c[3][10] ), .SUM(\s[3][10] ), .A(\s[2][11] ), .B(
        _259_net_), .C_in(\c[2][10] ) );
  FA1_98 A56 ( .C_out(\c[3][11] ), .SUM(\s[3][11] ), .A(\s[2][12] ), .B(
        _264_net_), .C_in(\c[2][11] ) );
  FA1_97 A57 ( .C_out(\c[3][12] ), .SUM(\s[3][12] ), .A(\s[2][13] ), .B(
        _269_net_), .C_in(\c[2][12] ) );
  FA1_96 A58 ( .C_out(\c[3][13] ), .SUM(\s[3][13] ), .A(\s[2][14] ), .B(
        _274_net_), .C_in(\c[2][13] ) );
  FA1_95 A59 ( .C_out(\c[3][14] ), .SUM(\s[3][14] ), .A(_278_net_), .B(
        _279_net_), .C_in(\c[2][14] ) );
  FA0_54 A60 ( .C_out(\c[4][0] ), .SUM(prod[5]), .A(\s[3][1] ), .B(_283_net_), 
        .C_in(\c[3][0] ) );
  FA0_53 A61 ( .C_out(\c[4][1] ), .SUM(\s[4][1] ), .A(\s[3][2] ), .B(_288_net_), .C_in(\c[3][1] ) );
  FA0_52 A62 ( .C_out(\c[4][2] ), .SUM(\s[4][2] ), .A(\s[3][3] ), .B(_293_net_), .C_in(\c[3][2] ) );
  FA0_51 A63 ( .C_out(\c[4][3] ), .SUM(\s[4][3] ), .A(\s[3][4] ), .B(_298_net_), .C_in(\c[3][3] ) );
  FA0_50 A64 ( .C_out(\c[4][4] ), .SUM(\s[4][4] ), .A(\s[3][5] ), .B(_303_net_), .C_in(\c[3][4] ) );
  FA0_49 A65 ( .C_out(\c[4][5] ), .SUM(\s[4][5] ), .A(\s[3][6] ), .B(_308_net_), .C_in(\c[3][5] ) );
  FA0_48 A66 ( .C_out(\c[4][6] ), .SUM(\s[4][6] ), .A(\s[3][7] ), .B(_313_net_), .C_in(\c[3][6] ) );
  FA0_47 A67 ( .C_out(\c[4][7] ), .SUM(\s[4][7] ), .A(\s[3][8] ), .B(_318_net_), .C_in(\c[3][7] ) );
  FA0_46 A68 ( .C_out(\c[4][8] ), .SUM(\s[4][8] ), .A(\s[3][9] ), .B(_323_net_), .C_in(\c[3][8] ) );
  FA0_45 A69 ( .C_out(\c[4][9] ), .SUM(\s[4][9] ), .A(\s[3][10] ), .B(
        _328_net_), .C_in(\c[3][9] ) );
  FA1_94 A70 ( .C_out(\c[4][10] ), .SUM(\s[4][10] ), .A(\s[3][11] ), .B(
        _333_net_), .C_in(\c[3][10] ) );
  FA1_93 A71 ( .C_out(\c[4][11] ), .SUM(\s[4][11] ), .A(\s[3][12] ), .B(
        _338_net_), .C_in(\c[3][11] ) );
  FA1_92 A72 ( .C_out(\c[4][12] ), .SUM(\s[4][12] ), .A(\s[3][13] ), .B(
        _343_net_), .C_in(\c[3][12] ) );
  FA1_91 A73 ( .C_out(\c[4][13] ), .SUM(\s[4][13] ), .A(\s[3][14] ), .B(
        _348_net_), .C_in(\c[3][13] ) );
  FA1_90 A74 ( .C_out(\c[4][14] ), .SUM(\s[4][14] ), .A(_352_net_), .B(
        _353_net_), .C_in(\c[3][14] ) );
  FA0_44 A75 ( .C_out(\c[5][0] ), .SUM(prod[6]), .A(\s[4][1] ), .B(_357_net_), 
        .C_in(\c[4][0] ) );
  FA0_43 A76 ( .C_out(\c[5][1] ), .SUM(\s[5][1] ), .A(\s[4][2] ), .B(_362_net_), .C_in(\c[4][1] ) );
  FA0_42 A77 ( .C_out(\c[5][2] ), .SUM(\s[5][2] ), .A(\s[4][3] ), .B(_367_net_), .C_in(\c[4][2] ) );
  FA0_41 A78 ( .C_out(\c[5][3] ), .SUM(\s[5][3] ), .A(\s[4][4] ), .B(_372_net_), .C_in(\c[4][3] ) );
  FA0_40 A79 ( .C_out(\c[5][4] ), .SUM(\s[5][4] ), .A(\s[4][5] ), .B(_377_net_), .C_in(\c[4][4] ) );
  FA0_39 A80 ( .C_out(\c[5][5] ), .SUM(\s[5][5] ), .A(\s[4][6] ), .B(_382_net_), .C_in(\c[4][5] ) );
  FA0_38 A81 ( .C_out(\c[5][6] ), .SUM(\s[5][6] ), .A(\s[4][7] ), .B(_387_net_), .C_in(\c[4][6] ) );
  FA0_37 A82 ( .C_out(\c[5][7] ), .SUM(\s[5][7] ), .A(\s[4][8] ), .B(_392_net_), .C_in(\c[4][7] ) );
  FA0_36 A83 ( .C_out(\c[5][8] ), .SUM(\s[5][8] ), .A(\s[4][9] ), .B(_397_net_), .C_in(\c[4][8] ) );
  FA1_89 A84 ( .C_out(\c[5][9] ), .SUM(\s[5][9] ), .A(\s[4][10] ), .B(
        _402_net_), .C_in(\c[4][9] ) );
  FA1_88 A85 ( .C_out(\c[5][10] ), .SUM(\s[5][10] ), .A(\s[4][11] ), .B(
        _407_net_), .C_in(\c[4][10] ) );
  FA1_87 A86 ( .C_out(\c[5][11] ), .SUM(\s[5][11] ), .A(\s[4][12] ), .B(
        _412_net_), .C_in(\c[4][11] ) );
  FA1_86 A87 ( .C_out(\c[5][12] ), .SUM(\s[5][12] ), .A(\s[4][13] ), .B(
        _417_net_), .C_in(\c[4][12] ) );
  FA1_85 A88 ( .C_out(\c[5][13] ), .SUM(\s[5][13] ), .A(\s[4][14] ), .B(
        _422_net_), .C_in(\c[4][13] ) );
  FA1_84 A89 ( .C_out(\c[5][14] ), .SUM(\s[5][14] ), .A(_426_net_), .B(
        _427_net_), .C_in(\c[4][14] ) );
  FA0_35 A90 ( .C_out(\c[6][0] ), .SUM(prod[7]), .A(\s[5][1] ), .B(_431_net_), 
        .C_in(\c[5][0] ) );
  FA0_34 A91 ( .C_out(\c[6][1] ), .SUM(\s[6][1] ), .A(\s[5][2] ), .B(_436_net_), .C_in(\c[5][1] ) );
  FA0_33 A92 ( .C_out(\c[6][2] ), .SUM(\s[6][2] ), .A(\s[5][3] ), .B(_441_net_), .C_in(\c[5][2] ) );
  FA0_32 A93 ( .C_out(\c[6][3] ), .SUM(\s[6][3] ), .A(\s[5][4] ), .B(_446_net_), .C_in(\c[5][3] ) );
  FA0_31 A94 ( .C_out(\c[6][4] ), .SUM(\s[6][4] ), .A(\s[5][5] ), .B(_451_net_), .C_in(\c[5][4] ) );
  FA0_30 A95 ( .C_out(\c[6][5] ), .SUM(\s[6][5] ), .A(\s[5][6] ), .B(_456_net_), .C_in(\c[5][5] ) );
  FA0_29 A96 ( .C_out(\c[6][6] ), .SUM(\s[6][6] ), .A(\s[5][7] ), .B(_461_net_), .C_in(\c[5][6] ) );
  FA0_28 A97 ( .C_out(\c[6][7] ), .SUM(\s[6][7] ), .A(\s[5][8] ), .B(_466_net_), .C_in(\c[5][7] ) );
  FA1_83 A98 ( .C_out(\c[6][8] ), .SUM(\s[6][8] ), .A(\s[5][9] ), .B(_471_net_), .C_in(\c[5][8] ) );
  FA1_82 A99 ( .C_out(\c[6][9] ), .SUM(\s[6][9] ), .A(\s[5][10] ), .B(
        _476_net_), .C_in(\c[5][9] ) );
  FA1_81 A100 ( .C_out(\c[6][10] ), .SUM(\s[6][10] ), .A(\s[5][11] ), .B(
        _481_net_), .C_in(\c[5][10] ) );
  FA1_80 A101 ( .C_out(\c[6][11] ), .SUM(\s[6][11] ), .A(\s[5][12] ), .B(
        _486_net_), .C_in(\c[5][11] ) );
  FA1_79 A102 ( .C_out(\c[6][12] ), .SUM(\s[6][12] ), .A(\s[5][13] ), .B(
        _491_net_), .C_in(\c[5][12] ) );
  FA1_78 A103 ( .C_out(\c[6][13] ), .SUM(\s[6][13] ), .A(\s[5][14] ), .B(
        _496_net_), .C_in(\c[5][13] ) );
  FA1_77 A104 ( .C_out(\c[6][14] ), .SUM(\s[6][14] ), .A(_500_net_), .B(
        _501_net_), .C_in(\c[5][14] ) );
  FA0_27 A105 ( .C_out(\c[7][0] ), .SUM(prod[8]), .A(\s[6][1] ), .B(_505_net_), 
        .C_in(\c[6][0] ) );
  FA0_26 A106 ( .C_out(\c[7][1] ), .SUM(\s[7][1] ), .A(\s[6][2] ), .B(
        _510_net_), .C_in(\c[6][1] ) );
  FA0_25 A107 ( .C_out(\c[7][2] ), .SUM(\s[7][2] ), .A(\s[6][3] ), .B(
        _515_net_), .C_in(\c[6][2] ) );
  FA0_24 A108 ( .C_out(\c[7][3] ), .SUM(\s[7][3] ), .A(\s[6][4] ), .B(
        _520_net_), .C_in(\c[6][3] ) );
  FA0_23 A109 ( .C_out(\c[7][4] ), .SUM(\s[7][4] ), .A(\s[6][5] ), .B(
        _525_net_), .C_in(\c[6][4] ) );
  FA0_22 A110 ( .C_out(\c[7][5] ), .SUM(\s[7][5] ), .A(\s[6][6] ), .B(
        _530_net_), .C_in(\c[6][5] ) );
  FA0_21 A111 ( .C_out(\c[7][6] ), .SUM(\s[7][6] ), .A(\s[6][7] ), .B(
        _535_net_), .C_in(\c[6][6] ) );
  FA1_76 A112 ( .C_out(\c[7][7] ), .SUM(\s[7][7] ), .A(\s[6][8] ), .B(
        _540_net_), .C_in(\c[6][7] ) );
  FA1_75 A113 ( .C_out(\c[7][8] ), .SUM(\s[7][8] ), .A(\s[6][9] ), .B(
        _545_net_), .C_in(\c[6][8] ) );
  FA1_74 A114 ( .C_out(\c[7][9] ), .SUM(\s[7][9] ), .A(\s[6][10] ), .B(
        _550_net_), .C_in(\c[6][9] ) );
  FA1_73 A115 ( .C_out(\c[7][10] ), .SUM(\s[7][10] ), .A(\s[6][11] ), .B(
        _555_net_), .C_in(\c[6][10] ) );
  FA1_72 A116 ( .C_out(\c[7][11] ), .SUM(\s[7][11] ), .A(\s[6][12] ), .B(
        _560_net_), .C_in(\c[6][11] ) );
  FA1_71 A117 ( .C_out(\c[7][12] ), .SUM(\s[7][12] ), .A(\s[6][13] ), .B(
        _565_net_), .C_in(\c[6][12] ) );
  FA1_70 A118 ( .C_out(\c[7][13] ), .SUM(\s[7][13] ), .A(\s[6][14] ), .B(
        _570_net_), .C_in(\c[6][13] ) );
  FA1_69 A119 ( .C_out(\c[7][14] ), .SUM(\s[7][14] ), .A(_574_net_), .B(
        _575_net_), .C_in(\c[6][14] ) );
  FA0_20 A120 ( .C_out(\c[8][0] ), .SUM(prod[9]), .A(\s[7][1] ), .B(_579_net_), 
        .C_in(\c[7][0] ) );
  FA0_19 A121 ( .C_out(\c[8][1] ), .SUM(\s[8][1] ), .A(\s[7][2] ), .B(
        _584_net_), .C_in(\c[7][1] ) );
  FA0_18 A122 ( .C_out(\c[8][2] ), .SUM(\s[8][2] ), .A(\s[7][3] ), .B(
        _589_net_), .C_in(\c[7][2] ) );
  FA0_17 A123 ( .C_out(\c[8][3] ), .SUM(\s[8][3] ), .A(\s[7][4] ), .B(
        _594_net_), .C_in(\c[7][3] ) );
  FA0_16 A124 ( .C_out(\c[8][4] ), .SUM(\s[8][4] ), .A(\s[7][5] ), .B(
        _599_net_), .C_in(\c[7][4] ) );
  FA0_15 A125 ( .C_out(\c[8][5] ), .SUM(\s[8][5] ), .A(\s[7][6] ), .B(
        _604_net_), .C_in(\c[7][5] ) );
  FA1_68 A126 ( .C_out(\c[8][6] ), .SUM(\s[8][6] ), .A(\s[7][7] ), .B(
        _609_net_), .C_in(\c[7][6] ) );
  FA1_67 A127 ( .C_out(\c[8][7] ), .SUM(\s[8][7] ), .A(\s[7][8] ), .B(
        _614_net_), .C_in(\c[7][7] ) );
  FA1_66 A128 ( .C_out(\c[8][8] ), .SUM(\s[8][8] ), .A(\s[7][9] ), .B(
        _619_net_), .C_in(\c[7][8] ) );
  FA1_65 A129 ( .C_out(\c[8][9] ), .SUM(\s[8][9] ), .A(\s[7][10] ), .B(
        _624_net_), .C_in(\c[7][9] ) );
  FA1_64 A130 ( .C_out(\c[8][10] ), .SUM(\s[8][10] ), .A(\s[7][11] ), .B(
        _629_net_), .C_in(\c[7][10] ) );
  FA1_63 A131 ( .C_out(\c[8][11] ), .SUM(\s[8][11] ), .A(\s[7][12] ), .B(
        _634_net_), .C_in(\c[7][11] ) );
  FA1_62 A132 ( .C_out(\c[8][12] ), .SUM(\s[8][12] ), .A(\s[7][13] ), .B(
        _639_net_), .C_in(\c[7][12] ) );
  FA1_61 A133 ( .C_out(\c[8][13] ), .SUM(\s[8][13] ), .A(\s[7][14] ), .B(
        _644_net_), .C_in(\c[7][13] ) );
  FA1_60 A134 ( .C_out(\c[8][14] ), .SUM(\s[8][14] ), .A(_648_net_), .B(
        _649_net_), .C_in(\c[7][14] ) );
  FA0_14 A135 ( .C_out(\c[9][0] ), .SUM(prod[10]), .A(\s[8][1] ), .B(_653_net_), .C_in(\c[8][0] ) );
  FA0_13 A136 ( .C_out(\c[9][1] ), .SUM(\s[9][1] ), .A(\s[8][2] ), .B(
        _658_net_), .C_in(\c[8][1] ) );
  FA0_12 A137 ( .C_out(\c[9][2] ), .SUM(\s[9][2] ), .A(\s[8][3] ), .B(
        _663_net_), .C_in(\c[8][2] ) );
  FA0_11 A138 ( .C_out(\c[9][3] ), .SUM(\s[9][3] ), .A(\s[8][4] ), .B(
        _668_net_), .C_in(\c[8][3] ) );
  FA0_10 A139 ( .C_out(\c[9][4] ), .SUM(\s[9][4] ), .A(\s[8][5] ), .B(
        _673_net_), .C_in(\c[8][4] ) );
  FA1_59 A140 ( .C_out(\c[9][5] ), .SUM(\s[9][5] ), .A(\s[8][6] ), .B(
        _678_net_), .C_in(\c[8][5] ) );
  FA1_58 A141 ( .C_out(\c[9][6] ), .SUM(\s[9][6] ), .A(\s[8][7] ), .B(
        _683_net_), .C_in(\c[8][6] ) );
  FA1_57 A142 ( .C_out(\c[9][7] ), .SUM(\s[9][7] ), .A(\s[8][8] ), .B(
        _688_net_), .C_in(\c[8][7] ) );
  FA1_56 A143 ( .C_out(\c[9][8] ), .SUM(\s[9][8] ), .A(\s[8][9] ), .B(
        _693_net_), .C_in(\c[8][8] ) );
  FA1_55 A144 ( .C_out(\c[9][9] ), .SUM(\s[9][9] ), .A(\s[8][10] ), .B(
        _698_net_), .C_in(\c[8][9] ) );
  FA1_54 A145 ( .C_out(\c[9][10] ), .SUM(\s[9][10] ), .A(\s[8][11] ), .B(
        _703_net_), .C_in(\c[8][10] ) );
  FA1_53 A146 ( .C_out(\c[9][11] ), .SUM(\s[9][11] ), .A(\s[8][12] ), .B(
        _708_net_), .C_in(\c[8][11] ) );
  FA1_52 A147 ( .C_out(\c[9][12] ), .SUM(\s[9][12] ), .A(\s[8][13] ), .B(
        _713_net_), .C_in(\c[8][12] ) );
  FA1_51 A148 ( .C_out(\c[9][13] ), .SUM(\s[9][13] ), .A(\s[8][14] ), .B(
        _718_net_), .C_in(\c[8][13] ) );
  FA1_50 A149 ( .C_out(\c[9][14] ), .SUM(\s[9][14] ), .A(_722_net_), .B(
        _723_net_), .C_in(\c[8][14] ) );
  FA0_9 A150 ( .C_out(\c[10][0] ), .SUM(prod[11]), .A(\s[9][1] ), .B(_727_net_), .C_in(\c[9][0] ) );
  FA0_8 A151 ( .C_out(\c[10][1] ), .SUM(\s[10][1] ), .A(\s[9][2] ), .B(
        _732_net_), .C_in(\c[9][1] ) );
  FA0_7 A152 ( .C_out(\c[10][2] ), .SUM(\s[10][2] ), .A(\s[9][3] ), .B(
        _737_net_), .C_in(\c[9][2] ) );
  FA0_6 A153 ( .C_out(\c[10][3] ), .SUM(\s[10][3] ), .A(\s[9][4] ), .B(
        _742_net_), .C_in(\c[9][3] ) );
  FA1_49 A154 ( .C_out(\c[10][4] ), .SUM(\s[10][4] ), .A(\s[9][5] ), .B(
        _747_net_), .C_in(\c[9][4] ) );
  FA1_48 A155 ( .C_out(\c[10][5] ), .SUM(\s[10][5] ), .A(\s[9][6] ), .B(
        _752_net_), .C_in(\c[9][5] ) );
  FA1_47 A156 ( .C_out(\c[10][6] ), .SUM(\s[10][6] ), .A(\s[9][7] ), .B(
        _757_net_), .C_in(\c[9][6] ) );
  FA1_46 A157 ( .C_out(\c[10][7] ), .SUM(\s[10][7] ), .A(\s[9][8] ), .B(
        _762_net_), .C_in(\c[9][7] ) );
  FA1_45 A158 ( .C_out(\c[10][8] ), .SUM(\s[10][8] ), .A(\s[9][9] ), .B(
        _767_net_), .C_in(\c[9][8] ) );
  FA1_44 A159 ( .C_out(\c[10][9] ), .SUM(\s[10][9] ), .A(\s[9][10] ), .B(
        _772_net_), .C_in(\c[9][9] ) );
  FA1_43 A160 ( .C_out(\c[10][10] ), .SUM(\s[10][10] ), .A(\s[9][11] ), .B(
        _777_net_), .C_in(\c[9][10] ) );
  FA1_42 A161 ( .C_out(\c[10][11] ), .SUM(\s[10][11] ), .A(\s[9][12] ), .B(
        _782_net_), .C_in(\c[9][11] ) );
  FA1_41 A162 ( .C_out(\c[10][12] ), .SUM(\s[10][12] ), .A(\s[9][13] ), .B(
        _787_net_), .C_in(\c[9][12] ) );
  FA1_40 A163 ( .C_out(\c[10][13] ), .SUM(\s[10][13] ), .A(\s[9][14] ), .B(
        _792_net_), .C_in(\c[9][13] ) );
  FA1_39 A164 ( .C_out(\c[10][14] ), .SUM(\s[10][14] ), .A(_796_net_), .B(
        _797_net_), .C_in(\c[9][14] ) );
  FA0_5 A165 ( .C_out(\c[11][0] ), .SUM(prod[12]), .A(\s[10][1] ), .B(
        _801_net_), .C_in(\c[10][0] ) );
  FA0_4 A166 ( .C_out(\c[11][1] ), .SUM(\s[11][1] ), .A(\s[10][2] ), .B(
        _806_net_), .C_in(\c[10][1] ) );
  FA0_3 A167 ( .C_out(\c[11][2] ), .SUM(\s[11][2] ), .A(\s[10][3] ), .B(
        _811_net_), .C_in(\c[10][2] ) );
  FA1_38 A168 ( .C_out(\c[11][3] ), .SUM(\s[11][3] ), .A(\s[10][4] ), .B(
        _816_net_), .C_in(\c[10][3] ) );
  FA1_37 A169 ( .C_out(\c[11][4] ), .SUM(\s[11][4] ), .A(\s[10][5] ), .B(
        _821_net_), .C_in(\c[10][4] ) );
  FA1_36 A170 ( .C_out(\c[11][5] ), .SUM(\s[11][5] ), .A(\s[10][6] ), .B(
        _826_net_), .C_in(\c[10][5] ) );
  FA1_35 A171 ( .C_out(\c[11][6] ), .SUM(\s[11][6] ), .A(\s[10][7] ), .B(
        _831_net_), .C_in(\c[10][6] ) );
  FA1_34 A172 ( .C_out(\c[11][7] ), .SUM(\s[11][7] ), .A(\s[10][8] ), .B(
        _836_net_), .C_in(\c[10][7] ) );
  FA1_33 A173 ( .C_out(\c[11][8] ), .SUM(\s[11][8] ), .A(\s[10][9] ), .B(
        _841_net_), .C_in(\c[10][8] ) );
  FA1_32 A174 ( .C_out(\c[11][9] ), .SUM(\s[11][9] ), .A(\s[10][10] ), .B(
        _846_net_), .C_in(\c[10][9] ) );
  FA1_31 A175 ( .C_out(\c[11][10] ), .SUM(\s[11][10] ), .A(\s[10][11] ), .B(
        _851_net_), .C_in(\c[10][10] ) );
  FA1_30 A176 ( .C_out(\c[11][11] ), .SUM(\s[11][11] ), .A(\s[10][12] ), .B(
        _856_net_), .C_in(\c[10][11] ) );
  FA1_29 A177 ( .C_out(\c[11][12] ), .SUM(\s[11][12] ), .A(\s[10][13] ), .B(
        _861_net_), .C_in(\c[10][12] ) );
  FA1_28 A178 ( .C_out(\c[11][13] ), .SUM(\s[11][13] ), .A(\s[10][14] ), .B(
        _866_net_), .C_in(\c[10][13] ) );
  FA1_27 A179 ( .C_out(\c[11][14] ), .SUM(\s[11][14] ), .A(_870_net_), .B(
        _871_net_), .C_in(\c[10][14] ) );
  FA0_2 A180 ( .C_out(\c[12][0] ), .SUM(prod[13]), .A(\s[11][1] ), .B(
        _875_net_), .C_in(\c[11][0] ) );
  FA0_1 A181 ( .C_out(\c[12][1] ), .SUM(\s[12][1] ), .A(\s[11][2] ), .B(
        _880_net_), .C_in(\c[11][1] ) );
  FA1_26 A182 ( .C_out(\c[12][2] ), .SUM(\s[12][2] ), .A(\s[11][3] ), .B(
        _885_net_), .C_in(\c[11][2] ) );
  FA1_25 A183 ( .C_out(\c[12][3] ), .SUM(\s[12][3] ), .A(\s[11][4] ), .B(
        _890_net_), .C_in(\c[11][3] ) );
  FA1_24 A184 ( .C_out(\c[12][4] ), .SUM(\s[12][4] ), .A(\s[11][5] ), .B(
        _895_net_), .C_in(\c[11][4] ) );
  FA1_23 A185 ( .C_out(\c[12][5] ), .SUM(\s[12][5] ), .A(\s[11][6] ), .B(
        _900_net_), .C_in(\c[11][5] ) );
  FA1_22 A186 ( .C_out(\c[12][6] ), .SUM(\s[12][6] ), .A(\s[11][7] ), .B(
        _905_net_), .C_in(\c[11][6] ) );
  FA1_21 A187 ( .C_out(\c[12][7] ), .SUM(\s[12][7] ), .A(\s[11][8] ), .B(
        _910_net_), .C_in(\c[11][7] ) );
  FA1_20 A188 ( .C_out(\c[12][8] ), .SUM(\s[12][8] ), .A(\s[11][9] ), .B(
        _915_net_), .C_in(\c[11][8] ) );
  FA1_19 A189 ( .C_out(\c[12][9] ), .SUM(\s[12][9] ), .A(\s[11][10] ), .B(
        _920_net_), .C_in(\c[11][9] ) );
  FA1_18 A190 ( .C_out(\c[12][10] ), .SUM(\s[12][10] ), .A(\s[11][11] ), .B(
        _925_net_), .C_in(\c[11][10] ) );
  FA1_17 A191 ( .C_out(\c[12][11] ), .SUM(\s[12][11] ), .A(\s[11][12] ), .B(
        _930_net_), .C_in(\c[11][11] ) );
  FA1_16 A192 ( .C_out(\c[12][12] ), .SUM(\s[12][12] ), .A(\s[11][13] ), .B(
        _935_net_), .C_in(\c[11][12] ) );
  FA1_15 A193 ( .C_out(\c[12][13] ), .SUM(\s[12][13] ), .A(\s[11][14] ), .B(
        _940_net_), .C_in(\c[11][13] ) );
  FA1_14 A194 ( .C_out(\c[12][14] ), .SUM(\s[12][14] ), .A(_944_net_), .B(
        _945_net_), .C_in(\c[11][14] ) );
  FA0_0 A195 ( .C_out(\c[13][0] ), .SUM(prod[14]), .A(\s[12][1] ), .B(
        _949_net_), .C_in(\c[12][0] ) );
  FA1_13 A196 ( .C_out(\c[13][1] ), .SUM(\s[13][1] ), .A(\s[12][2] ), .B(
        _954_net_), .C_in(\c[12][1] ) );
  FA1_12 A197 ( .C_out(\c[13][2] ), .SUM(\s[13][2] ), .A(\s[12][3] ), .B(
        _959_net_), .C_in(\c[12][2] ) );
  FA1_11 A198 ( .C_out(\c[13][3] ), .SUM(\s[13][3] ), .A(\s[12][4] ), .B(
        _964_net_), .C_in(\c[12][3] ) );
  FA1_10 A199 ( .C_out(\c[13][4] ), .SUM(\s[13][4] ), .A(\s[12][5] ), .B(
        _969_net_), .C_in(\c[12][4] ) );
  FA1_9 A200 ( .C_out(\c[13][5] ), .SUM(\s[13][5] ), .A(\s[12][6] ), .B(
        _974_net_), .C_in(\c[12][5] ) );
  FA1_8 A201 ( .C_out(\c[13][6] ), .SUM(\s[13][6] ), .A(\s[12][7] ), .B(
        _979_net_), .C_in(\c[12][6] ) );
  FA1_7 A202 ( .C_out(\c[13][7] ), .SUM(\s[13][7] ), .A(\s[12][8] ), .B(
        _984_net_), .C_in(\c[12][7] ) );
  FA1_6 A203 ( .C_out(\c[13][8] ), .SUM(\s[13][8] ), .A(\s[12][9] ), .B(
        _989_net_), .C_in(\c[12][8] ) );
  FA1_5 A204 ( .C_out(\c[13][9] ), .SUM(\s[13][9] ), .A(\s[12][10] ), .B(
        _994_net_), .C_in(\c[12][9] ) );
  FA1_4 A205 ( .C_out(\c[13][10] ), .SUM(\s[13][10] ), .A(\s[12][11] ), .B(
        _999_net_), .C_in(\c[12][10] ) );
  FA1_3 A206 ( .C_out(\c[13][11] ), .SUM(\s[13][11] ), .A(\s[12][12] ), .B(
        _1004_net_), .C_in(\c[12][11] ) );
  FA1_2 A207 ( .C_out(\c[13][12] ), .SUM(\s[13][12] ), .A(\s[12][13] ), .B(
        _1009_net_), .C_in(\c[12][12] ) );
  FA1_1 A208 ( .C_out(\c[13][13] ), .SUM(\s[13][13] ), .A(\s[12][14] ), .B(
        _1014_net_), .C_in(\c[12][13] ) );
  FA1_0 A209 ( .C_out(\c[13][14] ), .SUM(\s[13][14] ), .A(_1018_net_), .B(
        _1019_net_), .C_in(\c[12][14] ) );
  FA2_14 A210 ( .C_out(\c[14][0] ), .SUM(prod[15]), .A(\s[13][1] ), .B(
        _1023_net_), .C_in(\c[13][0] ) );
  FA2_13 A211 ( .C_out(\c[14][1] ), .SUM(\s[14][1] ), .A(\s[13][2] ), .B(
        _1028_net_), .C_in(\c[13][1] ) );
  FA2_12 A212 ( .C_out(\c[14][2] ), .SUM(\s[14][2] ), .A(\s[13][3] ), .B(
        _1033_net_), .C_in(\c[13][2] ) );
  FA2_11 A213 ( .C_out(\c[14][3] ), .SUM(\s[14][3] ), .A(\s[13][4] ), .B(
        _1038_net_), .C_in(\c[13][3] ) );
  FA2_10 A214 ( .C_out(\c[14][4] ), .SUM(\s[14][4] ), .A(\s[13][5] ), .B(
        _1043_net_), .C_in(\c[13][4] ) );
  FA2_9 A215 ( .C_out(\c[14][5] ), .SUM(\s[14][5] ), .A(\s[13][6] ), .B(
        _1048_net_), .C_in(\c[13][5] ) );
  FA2_8 A216 ( .C_out(\c[14][6] ), .SUM(\s[14][6] ), .A(\s[13][7] ), .B(
        _1053_net_), .C_in(\c[13][6] ) );
  FA2_7 A217 ( .C_out(\c[14][7] ), .SUM(\s[14][7] ), .A(\s[13][8] ), .B(
        _1058_net_), .C_in(\c[13][7] ) );
  FA2_6 A218 ( .C_out(\c[14][8] ), .SUM(\s[14][8] ), .A(\s[13][9] ), .B(
        _1063_net_), .C_in(\c[13][8] ) );
  FA2_5 A219 ( .C_out(\c[14][9] ), .SUM(\s[14][9] ), .A(\s[13][10] ), .B(
        _1068_net_), .C_in(\c[13][9] ) );
  FA2_4 A220 ( .C_out(\c[14][10] ), .SUM(\s[14][10] ), .A(\s[13][11] ), .B(
        _1073_net_), .C_in(\c[13][10] ) );
  FA2_3 A221 ( .C_out(\c[14][11] ), .SUM(\s[14][11] ), .A(\s[13][12] ), .B(
        _1078_net_), .C_in(\c[13][11] ) );
  FA2_2 A222 ( .C_out(\c[14][12] ), .SUM(\s[14][12] ), .A(\s[13][13] ), .B(
        _1083_net_), .C_in(\c[13][12] ) );
  FA2_1 A223 ( .C_out(\c[14][13] ), .SUM(\s[14][13] ), .A(\s[13][14] ), .B(
        _1088_net_), .C_in(\c[13][13] ) );
  FA2_0 A224 ( .C_out(\c[14][14] ), .SUM(\s[14][14] ), .A(_1092_net_), .B(
        _1093_net_), .C_in(\c[13][14] ) );
  HA3_4 A225 ( .C_out(\c[15][0] ), .SUM(prod[16]), .A(\s[14][1] ), .C_in(
        \c[14][0] ) );
  FA3_18 A226 ( .C_out(\c[15][1] ), .SUM(prod[17]), .A(\s[14][2] ), .B(
        \c[15][0] ), .C_in(\c[14][1] ) );
  FA3_17 A227 ( .C_out(\c[15][2] ), .SUM(prod[18]), .A(\s[14][3] ), .B(
        \c[15][1] ), .C_in(\c[14][2] ) );
  FA3_16 A228 ( .C_out(\c[15][3] ), .SUM(prod[19]), .A(\s[14][4] ), .B(
        \c[15][2] ), .C_in(\c[14][3] ) );
  CSEA csea ( .Cout(prod[31]), .Sum(prod[30:20]), .A10(_1110_net_), .Ain({
        \s[14][14] , \s[14][13] , \s[14][12] , \s[14][11] , \s[14][10] , 
        \s[14][9] , \s[14][8] , \s[14][7] , \s[14][6] , \s[14][5] }), .B({
        \c[14][14] , \c[14][13] , \c[14][12] , \c[14][11] , \c[14][10] , 
        \c[14][9] , \c[14][8] , \c[14][7] , \c[14][6] , \c[14][5] , \c[14][4] }), .Cin(\c[15][3] ) );
  DFFQX1 \aa_reg[9]  ( .D(a[9]), .CK(input_ready), .Q(aa[9]) );
  DFFQX1 \aa_reg[8]  ( .D(a[8]), .CK(input_ready), .Q(aa[8]) );
  DFFQX1 \aa_reg[7]  ( .D(a[7]), .CK(input_ready), .Q(aa[7]) );
  DFFQX1 \aa_reg[6]  ( .D(a[6]), .CK(input_ready), .Q(aa[6]) );
  DFFQX1 \aa_reg[5]  ( .D(a[5]), .CK(input_ready), .Q(aa[5]) );
  DFFQX1 \aa_reg[4]  ( .D(a[4]), .CK(input_ready), .Q(aa[4]) );
  DFFQX1 \aa_reg[3]  ( .D(a[3]), .CK(input_ready), .Q(aa[3]) );
  DFFQX1 \aa_reg[2]  ( .D(a[2]), .CK(input_ready), .Q(aa[2]) );
  DFFQX1 \aa_reg[1]  ( .D(a[1]), .CK(input_ready), .Q(aa[1]) );
  DFFQX1 \aa_reg[0]  ( .D(a[0]), .CK(input_ready), .Q(aa[0]) );
  DFFQX1 \bb_reg[15]  ( .D(b[15]), .CK(input_ready), .Q(bb[15]) );
  DFFQX1 \bb_reg[14]  ( .D(b[14]), .CK(input_ready), .Q(bb[14]) );
  DFFQX1 \bb_reg[13]  ( .D(b[13]), .CK(input_ready), .Q(bb[13]) );
  DFFQX1 \bb_reg[12]  ( .D(b[12]), .CK(input_ready), .Q(bb[12]) );
  DFFQX1 \bb_reg[11]  ( .D(b[11]), .CK(input_ready), .Q(bb[11]) );
  DFFQX1 \bb_reg[10]  ( .D(b[10]), .CK(input_ready), .Q(bb[10]) );
  DFFQX1 \bb_reg[9]  ( .D(b[9]), .CK(input_ready), .Q(bb[9]) );
  DFFQX1 \bb_reg[8]  ( .D(b[8]), .CK(input_ready), .Q(bb[8]) );
  DFFQX1 \bb_reg[7]  ( .D(b[7]), .CK(input_ready), .Q(bb[7]) );
  DFFQX1 \bb_reg[6]  ( .D(b[6]), .CK(input_ready), .Q(bb[6]) );
  DFFQX1 \bb_reg[5]  ( .D(b[5]), .CK(input_ready), .Q(bb[5]) );
  DFFQX1 \bb_reg[4]  ( .D(b[4]), .CK(input_ready), .Q(bb[4]) );
  DFFQX1 \bb_reg[3]  ( .D(b[3]), .CK(input_ready), .Q(bb[3]) );
  DFFQX1 \bb_reg[2]  ( .D(b[2]), .CK(input_ready), .Q(bb[2]) );
  DFFQX1 \bb_reg[1]  ( .D(b[1]), .CK(input_ready), .Q(bb[1]) );
  DFFQX1 \bb_reg[0]  ( .D(b[0]), .CK(input_ready), .Q(bb[0]) );
  DFFQX1 \aa_reg[15]  ( .D(a[15]), .CK(input_ready), .Q(aa[15]) );
  DFFQX1 \aa_reg[14]  ( .D(a[14]), .CK(input_ready), .Q(aa[14]) );
  DFFQX1 \aa_reg[13]  ( .D(a[13]), .CK(input_ready), .Q(aa[13]) );
  DFFQX1 \aa_reg[12]  ( .D(a[12]), .CK(input_ready), .Q(aa[12]) );
  DFFQX1 \aa_reg[11]  ( .D(a[11]), .CK(input_ready), .Q(aa[11]) );
  DFFQX1 \aa_reg[10]  ( .D(a[10]), .CK(input_ready), .Q(aa[10]) );
  DFFQX1 output_valid_reg ( .D(n34), .CK(clk), .Q(output_valid) );
  CLKINVX1 U292 ( .A(aa[0]), .Y(n16) );
  CLKINVX1 U293 ( .A(bb[0]), .Y(n32) );
  CLKINVX1 U294 ( .A(aa[3]), .Y(n13) );
  CLKINVX1 U295 ( .A(aa[10]), .Y(n6) );
  CLKINVX1 U296 ( .A(aa[8]), .Y(n8) );
  CLKINVX1 U297 ( .A(aa[6]), .Y(n10) );
  CLKINVX1 U298 ( .A(aa[7]), .Y(n9) );
  CLKINVX1 U299 ( .A(aa[5]), .Y(n11) );
  CLKINVX1 U300 ( .A(aa[9]), .Y(n7) );
  CLKINVX1 U301 ( .A(aa[2]), .Y(n14) );
  CLKINVX1 U302 ( .A(aa[1]), .Y(n15) );
  CLKINVX1 U303 ( .A(aa[4]), .Y(n12) );
  CLKINVX1 U304 ( .A(aa[14]), .Y(n2) );
  CLKINVX1 U305 ( .A(bb[14]), .Y(n18) );
  CLKINVX1 U306 ( .A(aa[15]), .Y(n1) );
  CLKINVX1 U307 ( .A(aa[11]), .Y(n5) );
  CLKINVX1 U308 ( .A(aa[12]), .Y(n4) );
  CLKINVX1 U309 ( .A(aa[13]), .Y(n3) );
  CLKINVX1 U310 ( .A(bb[2]), .Y(n30) );
  CLKINVX1 U311 ( .A(bb[13]), .Y(n19) );
  CLKINVX1 U312 ( .A(bb[12]), .Y(n20) );
  CLKINVX1 U313 ( .A(bb[1]), .Y(n31) );
  CLKINVX1 U314 ( .A(bb[3]), .Y(n29) );
  CLKINVX1 U315 ( .A(bb[4]), .Y(n28) );
  CLKINVX1 U316 ( .A(bb[5]), .Y(n27) );
  CLKINVX1 U317 ( .A(bb[7]), .Y(n25) );
  CLKINVX1 U318 ( .A(bb[6]), .Y(n26) );
  CLKINVX1 U319 ( .A(bb[8]), .Y(n24) );
  CLKINVX1 U320 ( .A(bb[10]), .Y(n22) );
  CLKINVX1 U321 ( .A(bb[9]), .Y(n23) );
  CLKINVX1 U322 ( .A(bb[11]), .Y(n21) );
  CLKINVX1 U323 ( .A(bb[15]), .Y(n17) );
  NOR2X1 U324 ( .A(n1), .B(n17), .Y(_1110_net_) );
  NOR2X1 U325 ( .A(n6), .B(n27), .Y(_333_net_) );
  NOR2X1 U326 ( .A(n6), .B(n26), .Y(_407_net_) );
  NOR2X1 U327 ( .A(n6), .B(n25), .Y(_481_net_) );
  NOR2X1 U328 ( .A(n6), .B(n24), .Y(_555_net_) );
  NOR2X1 U329 ( .A(n13), .B(n20), .Y(_816_net_) );
  NOR2X1 U330 ( .A(n6), .B(n23), .Y(_629_net_) );
  NOR2X1 U331 ( .A(n13), .B(n19), .Y(_890_net_) );
  NOR2X1 U332 ( .A(n6), .B(n22), .Y(_703_net_) );
  NOR2X1 U333 ( .A(n6), .B(n21), .Y(_777_net_) );
  NOR2X1 U334 ( .A(n13), .B(n18), .Y(_964_net_) );
  NOR2X1 U335 ( .A(n6), .B(n20), .Y(_851_net_) );
  NOR2X1 U336 ( .A(n6), .B(n19), .Y(_925_net_) );
  NOR2X1 U337 ( .A(n6), .B(n18), .Y(_999_net_) );
  NOR2X1 U338 ( .A(n7), .B(n26), .Y(_402_net_) );
  NOR2X1 U339 ( .A(n7), .B(n25), .Y(_476_net_) );
  NOR2X1 U340 ( .A(n8), .B(n25), .Y(_471_net_) );
  NOR2X1 U341 ( .A(n8), .B(n24), .Y(_545_net_) );
  NOR2X1 U342 ( .A(n9), .B(n24), .Y(_540_net_) );
  NOR2X1 U343 ( .A(n9), .B(n23), .Y(_614_net_) );
  NOR2X1 U344 ( .A(n10), .B(n23), .Y(_609_net_) );
  NOR2X1 U345 ( .A(n7), .B(n24), .Y(_550_net_) );
  NOR2X1 U346 ( .A(n10), .B(n22), .Y(_683_net_) );
  NOR2X1 U347 ( .A(n11), .B(n22), .Y(_678_net_) );
  NOR2X1 U348 ( .A(n8), .B(n23), .Y(_619_net_) );
  NOR2X1 U349 ( .A(n11), .B(n21), .Y(_752_net_) );
  NOR2X1 U350 ( .A(n9), .B(n22), .Y(_688_net_) );
  NOR2X1 U351 ( .A(n7), .B(n23), .Y(_624_net_) );
  NOR2X1 U352 ( .A(n10), .B(n21), .Y(_757_net_) );
  NOR2X1 U353 ( .A(n7), .B(n22), .Y(_698_net_) );
  NOR2X1 U354 ( .A(n8), .B(n22), .Y(_693_net_) );
  NOR2X1 U355 ( .A(n11), .B(n20), .Y(_826_net_) );
  NOR2X1 U356 ( .A(n7), .B(n21), .Y(_772_net_) );
  NOR2X1 U357 ( .A(n8), .B(n21), .Y(_767_net_) );
  NOR2X1 U358 ( .A(n9), .B(n21), .Y(_762_net_) );
  NOR2X1 U359 ( .A(n8), .B(n20), .Y(_841_net_) );
  NOR2X1 U360 ( .A(n9), .B(n20), .Y(_836_net_) );
  NOR2X1 U361 ( .A(n7), .B(n20), .Y(_846_net_) );
  NOR2X1 U362 ( .A(n10), .B(n20), .Y(_831_net_) );
  NOR2X1 U363 ( .A(n9), .B(n19), .Y(_910_net_) );
  NOR2X1 U364 ( .A(n8), .B(n19), .Y(_915_net_) );
  NOR2X1 U365 ( .A(n10), .B(n19), .Y(_905_net_) );
  NOR2X1 U366 ( .A(n11), .B(n19), .Y(_900_net_) );
  NOR2X1 U367 ( .A(n7), .B(n19), .Y(_920_net_) );
  NOR2X1 U368 ( .A(n2), .B(n29), .Y(_205_net_) );
  NOR2X1 U369 ( .A(n2), .B(n28), .Y(_279_net_) );
  NOR2X1 U370 ( .A(n2), .B(n27), .Y(_353_net_) );
  NOR2X1 U371 ( .A(n2), .B(n26), .Y(_427_net_) );
  NOR2X1 U372 ( .A(n12), .B(n21), .Y(_747_net_) );
  NOR2X1 U373 ( .A(n2), .B(n25), .Y(_501_net_) );
  NOR2X1 U374 ( .A(n12), .B(n20), .Y(_821_net_) );
  NOR2X1 U375 ( .A(n2), .B(n24), .Y(_575_net_) );
  NOR2X1 U376 ( .A(n14), .B(n19), .Y(_885_net_) );
  NOR2X1 U377 ( .A(n2), .B(n23), .Y(_649_net_) );
  NOR2X1 U378 ( .A(n18), .B(n14), .Y(_959_net_) );
  NOR2X1 U379 ( .A(n18), .B(n15), .Y(_954_net_) );
  NOR2X1 U380 ( .A(n2), .B(n22), .Y(_723_net_) );
  NOR2X1 U381 ( .A(n12), .B(n19), .Y(_895_net_) );
  NOR2X1 U382 ( .A(n2), .B(n21), .Y(_797_net_) );
  NOR2X1 U383 ( .A(n18), .B(n10), .Y(_979_net_) );
  NOR2X1 U384 ( .A(n2), .B(n20), .Y(_871_net_) );
  NOR2X1 U385 ( .A(n18), .B(n12), .Y(_969_net_) );
  NOR2X1 U386 ( .A(n18), .B(n9), .Y(_984_net_) );
  NOR2X1 U387 ( .A(n18), .B(n11), .Y(_974_net_) );
  NOR2X1 U388 ( .A(n18), .B(n8), .Y(_989_net_) );
  NOR2X1 U389 ( .A(n2), .B(n19), .Y(_945_net_) );
  NOR2X1 U390 ( .A(n18), .B(n5), .Y(_1004_net_) );
  NOR2X1 U391 ( .A(n18), .B(n7), .Y(_994_net_) );
  NOR2X1 U392 ( .A(n18), .B(n2), .Y(_1019_net_) );
  NOR2X1 U393 ( .A(n18), .B(n4), .Y(_1009_net_) );
  NOR2X1 U394 ( .A(n18), .B(n3), .Y(_1014_net_) );
  NOR2X1 U395 ( .A(n3), .B(n29), .Y(_200_net_) );
  NOR2X1 U396 ( .A(n4), .B(n29), .Y(_195_net_) );
  NOR2X1 U397 ( .A(n4), .B(n28), .Y(_269_net_) );
  NOR2X1 U398 ( .A(n5), .B(n28), .Y(_264_net_) );
  NOR2X1 U399 ( .A(n5), .B(n27), .Y(_338_net_) );
  NOR2X1 U400 ( .A(n3), .B(n28), .Y(_274_net_) );
  NOR2X1 U401 ( .A(n4), .B(n27), .Y(_343_net_) );
  NOR2X1 U402 ( .A(n5), .B(n26), .Y(_412_net_) );
  NOR2X1 U403 ( .A(n3), .B(n27), .Y(_348_net_) );
  NOR2X1 U404 ( .A(n3), .B(n26), .Y(_422_net_) );
  NOR2X1 U405 ( .A(n4), .B(n26), .Y(_417_net_) );
  NOR2X1 U406 ( .A(n3), .B(n25), .Y(_496_net_) );
  NOR2X1 U407 ( .A(n4), .B(n25), .Y(_491_net_) );
  NOR2X1 U408 ( .A(n5), .B(n25), .Y(_486_net_) );
  NOR2X1 U409 ( .A(n4), .B(n24), .Y(_565_net_) );
  NOR2X1 U410 ( .A(n5), .B(n24), .Y(_560_net_) );
  NOR2X1 U411 ( .A(n3), .B(n24), .Y(_570_net_) );
  NOR2X1 U412 ( .A(n5), .B(n23), .Y(_634_net_) );
  NOR2X1 U413 ( .A(n4), .B(n23), .Y(_639_net_) );
  NOR2X1 U414 ( .A(n3), .B(n23), .Y(_644_net_) );
  NOR2X1 U415 ( .A(n5), .B(n22), .Y(_708_net_) );
  NOR2X1 U416 ( .A(n3), .B(n22), .Y(_718_net_) );
  NOR2X1 U417 ( .A(n4), .B(n22), .Y(_713_net_) );
  NOR2X1 U418 ( .A(n3), .B(n21), .Y(_792_net_) );
  NOR2X1 U419 ( .A(n4), .B(n21), .Y(_787_net_) );
  NOR2X1 U420 ( .A(n5), .B(n21), .Y(_782_net_) );
  NOR2X1 U421 ( .A(n30), .B(n2), .Y(_131_net_) );
  NOR2X1 U422 ( .A(n30), .B(n3), .Y(_126_net_) );
  NOR2X1 U423 ( .A(n19), .B(n5), .Y(_930_net_) );
  NOR2X1 U424 ( .A(n19), .B(n4), .Y(_935_net_) );
  NOR2X1 U425 ( .A(n19), .B(n3), .Y(_940_net_) );
  NOR2X1 U426 ( .A(n20), .B(n4), .Y(_861_net_) );
  NOR2X1 U427 ( .A(n20), .B(n5), .Y(_856_net_) );
  NOR2X1 U428 ( .A(n20), .B(n3), .Y(_866_net_) );
  NOR2X1 U429 ( .A(n2), .B(n31), .Y(_58_net_) );
  NOR2X1 U430 ( .A(n1), .B(n31), .Y(_130_net_) );
  NOR2X1 U431 ( .A(n1), .B(n29), .Y(_278_net_) );
  NOR2X1 U432 ( .A(n1), .B(n28), .Y(_352_net_) );
  NOR2X1 U433 ( .A(n1), .B(n27), .Y(_426_net_) );
  NOR2X1 U434 ( .A(n1), .B(n26), .Y(_500_net_) );
  NOR2X1 U435 ( .A(n1), .B(n25), .Y(_574_net_) );
  NOR2X1 U436 ( .A(n1), .B(n24), .Y(_648_net_) );
  NOR2X1 U437 ( .A(n1), .B(n23), .Y(_722_net_) );
  NOR2X1 U438 ( .A(n1), .B(n22), .Y(_796_net_) );
  NOR2X1 U439 ( .A(n1), .B(n21), .Y(_870_net_) );
  NOR2X1 U440 ( .A(n1), .B(n20), .Y(_944_net_) );
  NOR2X1 U441 ( .A(n30), .B(n1), .Y(_204_net_) );
  NOR2X1 U442 ( .A(n19), .B(n1), .Y(_1018_net_) );
  NOR2X1 U443 ( .A(n16), .B(n31), .Y(_2_net_) );
  NOR2X1 U444 ( .A(n6), .B(n31), .Y(_42_net_) );
  NOR2X1 U445 ( .A(n13), .B(n31), .Y(_14_net_) );
  NOR2X1 U446 ( .A(n7), .B(n31), .Y(_38_net_) );
  NOR2X1 U447 ( .A(n8), .B(n31), .Y(_34_net_) );
  NOR2X1 U448 ( .A(n9), .B(n31), .Y(_30_net_) );
  NOR2X1 U449 ( .A(n10), .B(n31), .Y(_26_net_) );
  NOR2X1 U450 ( .A(n11), .B(n31), .Y(_22_net_) );
  NOR2X1 U451 ( .A(n12), .B(n31), .Y(_18_net_) );
  NOR2X1 U452 ( .A(n14), .B(n31), .Y(_10_net_) );
  NOR2X1 U453 ( .A(n15), .B(n31), .Y(_6_net_) );
  NOR2X1 U454 ( .A(n3), .B(n31), .Y(_54_net_) );
  NOR2X1 U455 ( .A(n4), .B(n31), .Y(_50_net_) );
  NOR2X1 U456 ( .A(n5), .B(n31), .Y(_46_net_) );
  NOR2X1 U457 ( .A(n32), .B(n2), .Y(_53_net_) );
  NOR2X1 U458 ( .A(n32), .B(n3), .Y(_49_net_) );
  NOR2X1 U459 ( .A(n32), .B(n4), .Y(_45_net_) );
  NOR2X1 U460 ( .A(n32), .B(n5), .Y(_41_net_) );
  NOR2X1 U461 ( .A(n32), .B(n6), .Y(_37_net_) );
  NOR2X1 U462 ( .A(n32), .B(n7), .Y(_33_net_) );
  NOR2X1 U463 ( .A(n32), .B(n8), .Y(_29_net_) );
  NOR2X1 U464 ( .A(n32), .B(n9), .Y(_25_net_) );
  NOR2X1 U465 ( .A(n32), .B(n10), .Y(_21_net_) );
  NOR2X1 U466 ( .A(n32), .B(n11), .Y(_17_net_) );
  NOR2X1 U467 ( .A(n32), .B(n12), .Y(_13_net_) );
  NOR2X1 U468 ( .A(n32), .B(n13), .Y(_9_net_) );
  NOR2X1 U469 ( .A(n32), .B(n14), .Y(_5_net_) );
  NOR2X1 U470 ( .A(n32), .B(n15), .Y(_1_net_) );
  NOR2X1 U471 ( .A(n18), .B(n1), .Y(_1092_net_) );
  NOR2X1 U472 ( .A(n16), .B(n17), .Y(_1023_net_) );
  NOR2X1 U473 ( .A(n13), .B(n17), .Y(_1038_net_) );
  NOR2X1 U474 ( .A(n6), .B(n17), .Y(_1073_net_) );
  NOR2X1 U475 ( .A(n11), .B(n17), .Y(_1048_net_) );
  NOR2X1 U476 ( .A(n10), .B(n17), .Y(_1053_net_) );
  NOR2X1 U477 ( .A(n7), .B(n17), .Y(_1068_net_) );
  NOR2X1 U478 ( .A(n9), .B(n17), .Y(_1058_net_) );
  NOR2X1 U479 ( .A(n8), .B(n17), .Y(_1063_net_) );
  NOR2X1 U480 ( .A(n15), .B(n17), .Y(_1028_net_) );
  NOR2X1 U481 ( .A(n14), .B(n17), .Y(_1033_net_) );
  NOR2X1 U482 ( .A(n12), .B(n17), .Y(_1043_net_) );
  NOR2X1 U483 ( .A(n2), .B(n17), .Y(_1093_net_) );
  NOR2X1 U484 ( .A(n3), .B(n17), .Y(_1088_net_) );
  NOR2X1 U485 ( .A(n5), .B(n17), .Y(_1078_net_) );
  NOR2X1 U486 ( .A(n4), .B(n17), .Y(_1083_net_) );
  NOR2X1 U487 ( .A(n16), .B(n30), .Y(_61_net_) );
  NOR2X1 U488 ( .A(n16), .B(n29), .Y(_135_net_) );
  NOR2X1 U489 ( .A(n16), .B(n28), .Y(_209_net_) );
  NOR2X1 U490 ( .A(n16), .B(n27), .Y(_283_net_) );
  NOR2X1 U491 ( .A(n16), .B(n26), .Y(_357_net_) );
  NOR2X1 U492 ( .A(n16), .B(n25), .Y(_431_net_) );
  NOR2X1 U493 ( .A(n16), .B(n24), .Y(_505_net_) );
  NOR2X1 U494 ( .A(n16), .B(n23), .Y(_579_net_) );
  NOR2X1 U495 ( .A(n16), .B(n22), .Y(_653_net_) );
  NOR2X1 U496 ( .A(n16), .B(n21), .Y(_727_net_) );
  NOR2X1 U497 ( .A(n16), .B(n20), .Y(_801_net_) );
  NOR2X1 U498 ( .A(n16), .B(n19), .Y(_875_net_) );
  NOR2X1 U499 ( .A(n16), .B(n18), .Y(_949_net_) );
  NOR2X1 U500 ( .A(n6), .B(n30), .Y(_111_net_) );
  NOR2X1 U501 ( .A(n6), .B(n29), .Y(_185_net_) );
  NOR2X1 U502 ( .A(n6), .B(n28), .Y(_259_net_) );
  NOR2X1 U503 ( .A(n13), .B(n30), .Y(_76_net_) );
  NOR2X1 U504 ( .A(n13), .B(n29), .Y(_150_net_) );
  NOR2X1 U505 ( .A(n13), .B(n28), .Y(_224_net_) );
  NOR2X1 U506 ( .A(n13), .B(n27), .Y(_298_net_) );
  NOR2X1 U507 ( .A(n13), .B(n26), .Y(_372_net_) );
  NOR2X1 U508 ( .A(n13), .B(n25), .Y(_446_net_) );
  NOR2X1 U509 ( .A(n13), .B(n24), .Y(_520_net_) );
  NOR2X1 U510 ( .A(n13), .B(n23), .Y(_594_net_) );
  NOR2X1 U511 ( .A(n13), .B(n22), .Y(_668_net_) );
  NOR2X1 U512 ( .A(n13), .B(n21), .Y(_742_net_) );
  NOR2X1 U513 ( .A(n7), .B(n30), .Y(_106_net_) );
  NOR2X1 U514 ( .A(n8), .B(n30), .Y(_101_net_) );
  NOR2X1 U515 ( .A(n7), .B(n29), .Y(_180_net_) );
  NOR2X1 U516 ( .A(n9), .B(n30), .Y(_96_net_) );
  NOR2X1 U517 ( .A(n8), .B(n29), .Y(_175_net_) );
  NOR2X1 U518 ( .A(n7), .B(n28), .Y(_254_net_) );
  NOR2X1 U519 ( .A(n10), .B(n30), .Y(_91_net_) );
  NOR2X1 U520 ( .A(n9), .B(n29), .Y(_170_net_) );
  NOR2X1 U521 ( .A(n8), .B(n28), .Y(_249_net_) );
  NOR2X1 U522 ( .A(n7), .B(n27), .Y(_328_net_) );
  NOR2X1 U523 ( .A(n11), .B(n30), .Y(_86_net_) );
  NOR2X1 U524 ( .A(n10), .B(n29), .Y(_165_net_) );
  NOR2X1 U525 ( .A(n9), .B(n28), .Y(_244_net_) );
  NOR2X1 U526 ( .A(n8), .B(n27), .Y(_323_net_) );
  NOR2X1 U527 ( .A(n11), .B(n29), .Y(_160_net_) );
  NOR2X1 U528 ( .A(n10), .B(n28), .Y(_239_net_) );
  NOR2X1 U529 ( .A(n9), .B(n27), .Y(_318_net_) );
  NOR2X1 U530 ( .A(n8), .B(n26), .Y(_397_net_) );
  NOR2X1 U531 ( .A(n11), .B(n28), .Y(_234_net_) );
  NOR2X1 U532 ( .A(n10), .B(n27), .Y(_313_net_) );
  NOR2X1 U533 ( .A(n9), .B(n26), .Y(_392_net_) );
  NOR2X1 U534 ( .A(n11), .B(n27), .Y(_308_net_) );
  NOR2X1 U535 ( .A(n10), .B(n26), .Y(_387_net_) );
  NOR2X1 U536 ( .A(n9), .B(n25), .Y(_466_net_) );
  NOR2X1 U537 ( .A(n11), .B(n26), .Y(_382_net_) );
  NOR2X1 U538 ( .A(n10), .B(n25), .Y(_461_net_) );
  NOR2X1 U539 ( .A(n11), .B(n25), .Y(_456_net_) );
  NOR2X1 U540 ( .A(n10), .B(n24), .Y(_535_net_) );
  NOR2X1 U541 ( .A(n11), .B(n24), .Y(_530_net_) );
  NOR2X1 U542 ( .A(n11), .B(n23), .Y(_604_net_) );
  NOR2X1 U543 ( .A(n12), .B(n29), .Y(_155_net_) );
  NOR2X1 U544 ( .A(n12), .B(n28), .Y(_229_net_) );
  NOR2X1 U545 ( .A(n12), .B(n27), .Y(_303_net_) );
  NOR2X1 U546 ( .A(n14), .B(n29), .Y(_145_net_) );
  NOR2X1 U547 ( .A(n12), .B(n26), .Y(_377_net_) );
  NOR2X1 U548 ( .A(n14), .B(n28), .Y(_219_net_) );
  NOR2X1 U549 ( .A(n12), .B(n25), .Y(_451_net_) );
  NOR2X1 U550 ( .A(n15), .B(n29), .Y(_140_net_) );
  NOR2X1 U551 ( .A(n14), .B(n27), .Y(_293_net_) );
  NOR2X1 U552 ( .A(n12), .B(n24), .Y(_525_net_) );
  NOR2X1 U553 ( .A(n15), .B(n28), .Y(_214_net_) );
  NOR2X1 U554 ( .A(n14), .B(n26), .Y(_367_net_) );
  NOR2X1 U555 ( .A(n12), .B(n23), .Y(_599_net_) );
  NOR2X1 U556 ( .A(n15), .B(n27), .Y(_288_net_) );
  NOR2X1 U557 ( .A(n14), .B(n25), .Y(_441_net_) );
  NOR2X1 U558 ( .A(n12), .B(n22), .Y(_673_net_) );
  NOR2X1 U559 ( .A(n15), .B(n26), .Y(_362_net_) );
  NOR2X1 U560 ( .A(n14), .B(n24), .Y(_515_net_) );
  NOR2X1 U561 ( .A(n15), .B(n25), .Y(_436_net_) );
  NOR2X1 U562 ( .A(n14), .B(n23), .Y(_589_net_) );
  NOR2X1 U563 ( .A(n15), .B(n24), .Y(_510_net_) );
  NOR2X1 U564 ( .A(n14), .B(n22), .Y(_663_net_) );
  NOR2X1 U565 ( .A(n15), .B(n23), .Y(_584_net_) );
  NOR2X1 U566 ( .A(n14), .B(n21), .Y(_737_net_) );
  NOR2X1 U567 ( .A(n15), .B(n22), .Y(_658_net_) );
  NOR2X1 U568 ( .A(n14), .B(n20), .Y(_811_net_) );
  NOR2X1 U569 ( .A(n15), .B(n21), .Y(_732_net_) );
  NOR2X1 U570 ( .A(n15), .B(n20), .Y(_806_net_) );
  NOR2X1 U571 ( .A(n15), .B(n19), .Y(_880_net_) );
  NOR2X1 U572 ( .A(n5), .B(n29), .Y(_190_net_) );
  NOR2X1 U573 ( .A(n30), .B(n4), .Y(_121_net_) );
  NOR2X1 U574 ( .A(n30), .B(n5), .Y(_116_net_) );
  NOR2X1 U575 ( .A(n30), .B(n12), .Y(_81_net_) );
  NOR2X1 U576 ( .A(n30), .B(n14), .Y(_71_net_) );
  NOR2X1 U577 ( .A(n30), .B(n15), .Y(_66_net_) );
  NOR2X1 U578 ( .A(n16), .B(n32), .Y(prod[0]) );
  NOR2X1 U579 ( .A(n32), .B(n1), .Y(_57_net_) );
  CLKINVX1 U580 ( .A(input_ready), .Y(n34) );
endmodule

