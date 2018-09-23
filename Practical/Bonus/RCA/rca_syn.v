`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Jun 29 17:48:05 2018
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


module RCA16 ( Cout, Sum, A, B, Cin );
  output [15:0] Sum;
  input [15:0] A;
  input [15:0] B;
  input Cin;
  output Cout;

  wire   [3:1] c;

  RCA4_3 rca1 ( .Cout(c[1]), .Sum(Sum[3:0]), .A(A[3:0]), .B(B[3:0]), .Cin(Cin)
         );
  RCA4_2 rca2 ( .Cout(c[2]), .Sum(Sum[7:4]), .A(A[7:4]), .B(B[7:4]), .Cin(c[1]) );
  RCA4_1 rca3 ( .Cout(c[3]), .Sum(Sum[11:8]), .A(A[11:8]), .B(B[11:8]), .Cin(
        c[2]) );
  RCA4_0 rca4 ( .Cout(Cout), .Sum(Sum[15:12]), .A(A[15:12]), .B(B[15:12]), 
        .Cin(c[3]) );
endmodule

