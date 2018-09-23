`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Jun 29 17:40:52 2018
/////////////////////////////////////////////////////////////


module HA_55 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_54 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_27 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_55 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_54 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_48 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_49 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_24 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_49 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_48 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_50 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_51 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_25 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_51 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_50 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_52 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_53 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_26 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_53 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_52 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module RCA4_6 ( Cout, Sum, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;

  wire   [3:1] c;

  FA_27 fa1 ( .Cout(c[1]), .Sum(Sum[0]), .A(A[0]), .B(B[0]), .Cin(Cin) );
  FA_26 fa2 ( .Cout(c[2]), .Sum(Sum[1]), .A(A[1]), .B(B[1]), .Cin(c[1]) );
  FA_25 fa3 ( .Cout(c[3]), .Sum(Sum[2]), .A(A[2]), .B(B[2]), .Cin(c[2]) );
  FA_24 fa4 ( .Cout(Cout), .Sum(Sum[3]), .A(A[3]), .B(B[3]), .Cin(c[3]) );
endmodule


module MUX4_2 ( Z, A, B, Sel );
  output [3:0] Z;
  input [3:0] A;
  input [3:0] B;
  input Sel;


  CLKMX2X2 U1 ( .A(A[3]), .B(B[3]), .S0(Sel), .Y(Z[3]) );
  CLKMX2X2 U2 ( .A(A[2]), .B(B[2]), .S0(Sel), .Y(Z[2]) );
  CLKMX2X2 U3 ( .A(A[1]), .B(B[1]), .S0(Sel), .Y(Z[1]) );
  CLKMX2X2 U4 ( .A(A[0]), .B(B[0]), .S0(Sel), .Y(Z[0]) );
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


module HA_30 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_31 ( Cout, Sum, A, B );
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


module HA_32 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_33 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_16 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_33 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_32 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_34 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_35 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_17 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_35 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_34 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_36 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_37 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_18 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_37 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_36 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_38 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_39 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_19 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_39 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_38 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module RCA4_4 ( Cout, Sum, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;

  wire   [3:1] c;

  FA_19 fa1 ( .Cout(c[1]), .Sum(Sum[0]), .A(A[0]), .B(B[0]), .Cin(Cin) );
  FA_18 fa2 ( .Cout(c[2]), .Sum(Sum[1]), .A(A[1]), .B(B[1]), .Cin(c[1]) );
  FA_17 fa3 ( .Cout(c[3]), .Sum(Sum[2]), .A(A[2]), .B(B[2]), .Cin(c[2]) );
  FA_16 fa4 ( .Cout(Cout), .Sum(Sum[3]), .A(A[3]), .B(B[3]), .Cin(c[3]) );
endmodule


module HA_40 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_41 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_20 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_41 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_40 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_42 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_43 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_21 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_43 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_42 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_44 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_45 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_22 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_45 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_44 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module HA_46 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module HA_47 ( Cout, Sum, A, B );
  input A, B;
  output Cout, Sum;


  XOR2X1 U1 ( .A(B), .B(A), .Y(Sum) );
  AND2X1 U2 ( .A(B), .B(A), .Y(Cout) );
endmodule


module FA_23 ( Cout, Sum, A, B, Cin );
  input A, B, Cin;
  output Cout, Sum;
  wire   c1, t_sum, c2;

  HA_47 ha1 ( .Cout(c1), .Sum(t_sum), .A(A), .B(B) );
  HA_46 ha2 ( .Cout(c2), .Sum(Sum), .A(t_sum), .B(Cin) );
  OR2X1 U1 ( .A(c1), .B(c2), .Y(Cout) );
endmodule


module RCA4_5 ( Cout, Sum, A, B, Cin );
  output [3:0] Sum;
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;

  wire   [3:1] c;

  FA_23 fa1 ( .Cout(c[1]), .Sum(Sum[0]), .A(A[0]), .B(B[0]), .Cin(Cin) );
  FA_22 fa2 ( .Cout(c[2]), .Sum(Sum[1]), .A(A[1]), .B(B[1]), .Cin(c[1]) );
  FA_21 fa3 ( .Cout(c[3]), .Sum(Sum[2]), .A(A[2]), .B(B[2]), .Cin(c[2]) );
  FA_20 fa4 ( .Cout(Cout), .Sum(Sum[3]), .A(A[3]), .B(B[3]), .Cin(c[3]) );
endmodule


module MUX4_0 ( Z, A, B, Sel );
  output [3:0] Z;
  input [3:0] A;
  input [3:0] B;
  input Sel;


  CLKMX2X2 U1 ( .A(A[3]), .B(B[3]), .S0(Sel), .Y(Z[3]) );
  CLKMX2X2 U2 ( .A(A[2]), .B(B[2]), .S0(Sel), .Y(Z[2]) );
  CLKMX2X2 U3 ( .A(A[1]), .B(B[1]), .S0(Sel), .Y(Z[1]) );
  CLKMX2X2 U4 ( .A(A[0]), .B(B[0]), .S0(Sel), .Y(Z[0]) );
endmodule


module MUX4_1 ( Z, A, B, Sel );
  output [3:0] Z;
  input [3:0] A;
  input [3:0] B;
  input Sel;


  CLKMX2X2 U1 ( .A(A[3]), .B(B[3]), .S0(Sel), .Y(Z[3]) );
  CLKMX2X2 U2 ( .A(A[2]), .B(B[2]), .S0(Sel), .Y(Z[2]) );
  CLKMX2X2 U3 ( .A(A[1]), .B(B[1]), .S0(Sel), .Y(Z[1]) );
  CLKMX2X2 U4 ( .A(A[0]), .B(B[0]), .S0(Sel), .Y(Z[0]) );
endmodule


module CSEA16 ( Cout, Sum, A, B, Cin );
  output [15:0] Sum;
  input [15:0] A;
  input [15:0] B;
  input Cin;
  output Cout;
  wire   c8, c12;
  wire   [3:0] cout0;
  wire   [15:4] sum0;
  wire   [3:1] cout1;
  wire   [15:4] sum1;

  RCA4_6 rca1 ( .Cout(cout0[0]), .Sum(Sum[3:0]), .A(A[3:0]), .B(B[3:0]), .Cin(
        Cin) );
  RCA4_5 rca2_0 ( .Cout(cout0[1]), .Sum(sum0[7:4]), .A(A[7:4]), .B(B[7:4]), 
        .Cin(1'b0) );
  RCA4_4 rca2_1 ( .Cout(cout1[1]), .Sum(sum1[7:4]), .A(A[7:4]), .B(B[7:4]), 
        .Cin(1'b1) );
  RCA4_3 rca3_0 ( .Cout(cout0[2]), .Sum(sum0[11:8]), .A(A[11:8]), .B(B[11:8]), 
        .Cin(1'b0) );
  RCA4_2 rca3_1 ( .Cout(cout1[2]), .Sum(sum1[11:8]), .A(A[11:8]), .B(B[11:8]), 
        .Cin(1'b1) );
  RCA4_1 rca4_0 ( .Cout(cout0[3]), .Sum(sum0[15:12]), .A(A[15:12]), .B(
        B[15:12]), .Cin(1'b0) );
  RCA4_0 rca4_1 ( .Cout(cout1[3]), .Sum(sum1[15:12]), .A(A[15:12]), .B(
        B[15:12]), .Cin(1'b1) );
  MUX4_2 mux1 ( .Z(Sum[7:4]), .A(sum0[7:4]), .B(sum1[7:4]), .Sel(cout0[0]) );
  MUX4_1 mux2 ( .Z(Sum[11:8]), .A(sum0[11:8]), .B(sum1[11:8]), .Sel(c8) );
  MUX4_0 mux3 ( .Z(Sum[15:12]), .A(sum0[15:12]), .B(sum1[15:12]), .Sel(c12) );
  AO21X1 U6 ( .A0(cout1[3]), .A1(c12), .B0(cout0[3]), .Y(Cout) );
  AO21X1 U7 ( .A0(cout1[2]), .A1(c8), .B0(cout0[2]), .Y(c12) );
  AO21X1 U8 ( .A0(cout1[1]), .A1(cout0[0]), .B0(cout0[1]), .Y(c8) );
endmodule

