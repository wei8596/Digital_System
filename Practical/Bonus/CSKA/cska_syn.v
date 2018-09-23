`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Jun 29 17:37:51 2018
/////////////////////////////////////////////////////////////


module HA_31 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_30 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_15 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_31 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_30 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_24 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_25 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_12 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_25 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_24 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_26 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_27 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_13 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_27 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_26 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_28 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_29 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_14 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_29 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_28 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module RCA4_3 ( Cout, Sum, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;

  wire   [3:1] c;

  FA_15 fa1 ( .Cout(c[1]), .Sum(Sum[0]), .A(A[0]), .B(B[0]), .Cin(Cin) );
  FA_14 fa2 ( .Cout(c[2]), .Sum(Sum[1]), .A(A[1]), .B(B[1]), .Cin(c[1]) );
  FA_13 fa3 ( .Cout(c[3]), .Sum(Sum[2]), .A(A[2]), .B(B[2]), .Cin(c[2]) );
  FA_12 fa4 ( .Cout(Cout), .Sum(Sum[3]), .A(A[3]), .B(B[3]), .Cin(c[3]) );
endmodule


module skipLogic_3 ( cin_next, a, b, cin, cout );
  input [3:0] a;
  input [3:0] b;
  input cin, cout;
  output cin_next;
  wire   n1, n2, n3;

  OAI21XL U1 ( .A0(n1), .A1(n2), .B0(n3), .Y(cin_next) );
  CLKINVX1 U2 ( .A(cout), .Y(n3) );
  OAI21XL U3 ( .A0(a[1]), .A1(b[1]), .B0(cin), .Y(n2) );
  OAI222XL U4 ( .A0(b[2]), .A1(a[2]), .B0(b[0]), .B1(a[0]), .C0(b[3]), .C1(
        a[3]), .Y(n1) );
endmodule


module HA_0 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_1 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_0 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_1 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_0 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_2 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_3 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_1 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_3 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_2 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_4 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_5 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_2 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_5 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_4 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_6 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_7 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_3 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_7 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_6 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module RCA4_0 ( Cout, Sum, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;

  wire   [3:1] c;

  FA_3 fa1 ( .Cout(c[1]), .Sum(Sum[0]), .A(A[0]), .B(B[0]), .Cin(Cin) );
  FA_2 fa2 ( .Cout(c[2]), .Sum(Sum[1]), .A(A[1]), .B(B[1]), .Cin(c[1]) );
  FA_1 fa3 ( .Cout(c[3]), .Sum(Sum[2]), .A(A[2]), .B(B[2]), .Cin(c[2]) );
  FA_0 fa4 ( .Cout(Cout), .Sum(Sum[3]), .A(A[3]), .B(B[3]), .Cin(c[3]) );
endmodule


module HA_8 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_9 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_4 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_9 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_8 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_10 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_11 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_5 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_11 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_10 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_12 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_13 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_6 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_13 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_12 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_14 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_15 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_7 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_15 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_14 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module RCA4_1 ( Cout, Sum, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;

  wire   [3:1] c;

  FA_7 fa1 ( .Cout(c[1]), .Sum(Sum[0]), .A(A[0]), .B(B[0]), .Cin(Cin) );
  FA_6 fa2 ( .Cout(c[2]), .Sum(Sum[1]), .A(A[1]), .B(B[1]), .Cin(c[1]) );
  FA_5 fa3 ( .Cout(c[3]), .Sum(Sum[2]), .A(A[2]), .B(B[2]), .Cin(c[2]) );
  FA_4 fa4 ( .Cout(Cout), .Sum(Sum[3]), .A(A[3]), .B(B[3]), .Cin(c[3]) );
endmodule


module HA_16 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_17 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_8 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_17 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_16 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_18 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_19 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_9 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_19 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_18 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_20 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_21 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_10 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_21 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_20 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_22 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_23 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_11 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_23 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_22 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module RCA4_2 ( Cout, Sum, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;

  wire   [3:1] c;

  FA_11 fa1 ( .Cout(c[1]), .Sum(Sum[0]), .A(A[0]), .B(B[0]), .Cin(Cin) );
  FA_10 fa2 ( .Cout(c[2]), .Sum(Sum[1]), .A(A[1]), .B(B[1]), .Cin(c[1]) );
  FA_9 fa3 ( .Cout(c[3]), .Sum(Sum[2]), .A(A[2]), .B(B[2]), .Cin(c[2]) );
  FA_8 fa4 ( .Cout(Cout), .Sum(Sum[3]), .A(A[3]), .B(B[3]), .Cin(c[3]) );
endmodule


module skipLogic_0 ( cin_next, a, b, cin, cout );
  input [3:0] a;
  input [3:0] b;
  input cin, cout;
  output cin_next;
  wire   n1, n2, n3;

  OAI21XL U1 ( .A0(n1), .A1(n2), .B0(n3), .Y(cin_next) );
  CLKINVX1 U2 ( .A(cout), .Y(n3) );
  OAI21XL U3 ( .A0(a[1]), .A1(b[1]), .B0(cin), .Y(n2) );
  OAI222XL U4 ( .A0(b[2]), .A1(a[2]), .B0(b[0]), .B1(a[0]), .C0(b[3]), .C1(
        a[3]), .Y(n1) );
endmodule


module skipLogic_1 ( cin_next, a, b, cin, cout );
  input [3:0] a;
  input [3:0] b;
  input cin, cout;
  output cin_next;
  wire   n1, n2, n3;

  OAI21XL U1 ( .A0(n1), .A1(n2), .B0(n3), .Y(cin_next) );
  CLKINVX1 U2 ( .A(cout), .Y(n3) );
  OAI21XL U3 ( .A0(a[1]), .A1(b[1]), .B0(cin), .Y(n2) );
  OAI222XL U4 ( .A0(b[2]), .A1(a[2]), .B0(b[0]), .B1(a[0]), .C0(b[3]), .C1(
        a[3]), .Y(n1) );
endmodule


module skipLogic_2 ( cin_next, a, b, cin, cout );
  input [3:0] a;
  input [3:0] b;
  input cin, cout;
  output cin_next;
  wire   n1, n2, n3;

  OAI21XL U1 ( .A0(n1), .A1(n2), .B0(n3), .Y(cin_next) );
  CLKINVX1 U2 ( .A(cout), .Y(n3) );
  OAI21XL U3 ( .A0(a[1]), .A1(b[1]), .B0(cin), .Y(n2) );
  OAI222XL U4 ( .A0(b[2]), .A1(a[2]), .B0(b[0]), .B1(a[0]), .C0(b[3]), .C1(
        a[3]), .Y(n1) );
endmodule


module CSKA16 ( Cout, Sum, A, B, Cin );
  output [15:0] Sum;
  input [15:0] A;
  input [15:0] B;
  input Cin;
  output Cout;

  wire   [4:1] c;
  wire   [2:0] e;

  RCA4_3 rca1 ( .Cout(c[1]), .Sum(Sum[3:0]), .A(A[3:0]), .B(B[3:0]), .Cin(Cin)
         );
  RCA4_2 rca2 ( .Cout(c[2]), .Sum(Sum[7:4]), .A(A[7:4]), .B(B[7:4]), .Cin(e[0]) );
  RCA4_1 rca3 ( .Cout(c[3]), .Sum(Sum[11:8]), .A(A[11:8]), .B(B[11:8]), .Cin(
        e[1]) );
  RCA4_0 rca4 ( .Cout(c[4]), .Sum(Sum[15:12]), .A(A[15:12]), .B(B[15:12]), 
        .Cin(e[2]) );
  skipLogic_3 skip0 ( .cin_next(e[0]), .a(A[3:0]), .b(B[3:0]), .cin(Cin), 
        .cout(c[1]) );
  skipLogic_2 skip1 ( .cin_next(e[1]), .a(A[7:4]), .b(B[7:4]), .cin(e[0]), 
        .cout(c[2]) );
  skipLogic_1 skip2 ( .cin_next(e[2]), .a(A[11:8]), .b(B[11:8]), .cin(e[1]), 
        .cout(c[3]) );
  skipLogic_0 skip3 ( .cin_next(Cout), .a(A[15:12]), .b(B[15:12]), .cin(e[2]), 
        .cout(c[4]) );
endmodule

