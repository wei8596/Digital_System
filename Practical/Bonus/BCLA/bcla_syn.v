`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Jun 29 04:16:40 2018
/////////////////////////////////////////////////////////////


module RFA_15 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module BCLG4_4 ( Gout, Pout, g, p, Cin, \Cout[3] , \Cout[2] , \Cout[1]  );
  input [3:0] g;
  input [3:0] p;
  input Cin;
  output Gout, Pout, \Cout[3] , \Cout[2] , \Cout[1] ;
  wire   n1, n2;
  wire   [3:1] Cout;
  assign \Cout[3]  = Cout[3];
  assign \Cout[2]  = Cout[2];
  assign \Cout[1]  = Cout[1];

  AND4X1 U1 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(Pout) );
  AO21X1 U2 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(Gout) );
  AO21X1 U3 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U4 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
  AO21X1 U5 ( .A0(Cout[2]), .A1(p[2]), .B0(g[2]), .Y(Cout[3]) );
  AO21X1 U6 ( .A0(Cout[1]), .A1(p[1]), .B0(g[1]), .Y(Cout[2]) );
  AO21X1 U7 ( .A0(Cin), .A1(p[0]), .B0(g[0]), .Y(Cout[1]) );
endmodule


module RFA_0 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_1 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_2 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_3 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_4 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_5 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_6 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_7 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_8 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_9 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_10 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_11 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_12 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_13 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module RFA_14 ( G, P, Sum, A, B, Cin );
  input A, B, Cin;
  output G, P, Sum;
  wire   n1, n2, n3;

  MXI2X1 U1 ( .A(n1), .B(n2), .S0(Cin), .Y(Sum) );
  NOR2X1 U2 ( .A(G), .B(n3), .Y(n2) );
  XNOR2X1 U3 ( .A(A), .B(B), .Y(n1) );
  CLKINVX1 U4 ( .A(n3), .Y(P) );
  NOR2X1 U5 ( .A(B), .B(A), .Y(n3) );
  AND2X1 U6 ( .A(A), .B(B), .Y(G) );
endmodule


module BCLG4_0 ( Gout, Pout, g, p, Cin, \Cout[3] , \Cout[2] , \Cout[1]  );
  input [3:0] g;
  input [3:0] p;
  input Cin;
  output Gout, Pout, \Cout[3] , \Cout[2] , \Cout[1] ;
  wire   n1, n2;
  wire   [3:1] Cout;
  assign \Cout[3]  = Cout[3];
  assign \Cout[2]  = Cout[2];
  assign \Cout[1]  = Cout[1];

  AND4X1 U1 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(Pout) );
  AO21X1 U2 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(Gout) );
  AO21X1 U3 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U4 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
  AO21X1 U5 ( .A0(Cout[2]), .A1(p[2]), .B0(g[2]), .Y(Cout[3]) );
  AO21X1 U6 ( .A0(Cout[1]), .A1(p[1]), .B0(g[1]), .Y(Cout[2]) );
  AO21X1 U7 ( .A0(Cin), .A1(p[0]), .B0(g[0]), .Y(Cout[1]) );
endmodule


module BCLG4_1 ( Gout, Pout, g, p, Cin, \Cout[3] , \Cout[2] , \Cout[1]  );
  input [3:0] g;
  input [3:0] p;
  input Cin;
  output Gout, Pout, \Cout[3] , \Cout[2] , \Cout[1] ;
  wire   n1, n2;
  wire   [3:1] Cout;
  assign \Cout[3]  = Cout[3];
  assign \Cout[2]  = Cout[2];
  assign \Cout[1]  = Cout[1];

  AND4X1 U1 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(Pout) );
  AO21X1 U2 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(Gout) );
  AO21X1 U3 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U4 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
  AO21X1 U5 ( .A0(Cout[2]), .A1(p[2]), .B0(g[2]), .Y(Cout[3]) );
  AO21X1 U6 ( .A0(Cout[1]), .A1(p[1]), .B0(g[1]), .Y(Cout[2]) );
  AO21X1 U7 ( .A0(Cin), .A1(p[0]), .B0(g[0]), .Y(Cout[1]) );
endmodule


module BCLG4_2 ( Gout, Pout, g, p, Cin, \Cout[3] , \Cout[2] , \Cout[1]  );
  input [3:0] g;
  input [3:0] p;
  input Cin;
  output Gout, Pout, \Cout[3] , \Cout[2] , \Cout[1] ;
  wire   n1, n2;
  wire   [3:1] Cout;
  assign \Cout[3]  = Cout[3];
  assign \Cout[2]  = Cout[2];
  assign \Cout[1]  = Cout[1];

  AND4X1 U1 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(Pout) );
  AO21X1 U2 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(Gout) );
  AO21X1 U3 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U4 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
  AO21X1 U5 ( .A0(Cout[2]), .A1(p[2]), .B0(g[2]), .Y(Cout[3]) );
  AO21X1 U6 ( .A0(Cout[1]), .A1(p[1]), .B0(g[1]), .Y(Cout[2]) );
  AO21X1 U7 ( .A0(Cin), .A1(p[0]), .B0(g[0]), .Y(Cout[1]) );
endmodule


module BCLG4_3 ( Gout, Pout, g, p, Cin, \Cout[3] , \Cout[2] , \Cout[1]  );
  input [3:0] g;
  input [3:0] p;
  input Cin;
  output Gout, Pout, \Cout[3] , \Cout[2] , \Cout[1] ;
  wire   n1, n2;
  wire   [3:1] Cout;
  assign \Cout[3]  = Cout[3];
  assign \Cout[2]  = Cout[2];
  assign \Cout[1]  = Cout[1];

  AND4X1 U1 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(Pout) );
  AO21X1 U2 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(Gout) );
  AO21X1 U3 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U4 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
  AO21X1 U5 ( .A0(Cout[2]), .A1(p[2]), .B0(g[2]), .Y(Cout[3]) );
  AO21X1 U6 ( .A0(Cout[1]), .A1(p[1]), .B0(g[1]), .Y(Cout[2]) );
  AO21X1 U7 ( .A0(Cin), .A1(p[0]), .B0(g[0]), .Y(Cout[1]) );
endmodule


module CLA16 ( G, P, Sum, A, B, Cin );
  output [15:0] Sum;
  input [15:0] A;
  input [15:0] B;
  input Cin;
  output G, P;
  wire   \c1[15] , \c1[14] , \c1[13] , \c1[11] , \c1[10] , \c1[9] , \c1[7] ,
         \c1[6] , \c1[5] , \c1[3] , \c1[2] , \c1[1] , \c2[3] , \c2[2] ,
         \c2[1] ;
  wire   [15:0] gt;
  wire   [15:0] pt;
  wire   [3:0] g;
  wire   [3:0] p;

  RFA_15 rfa1 ( .G(gt[0]), .P(pt[0]), .Sum(Sum[0]), .A(A[0]), .B(B[0]), .Cin(
        Cin) );
  RFA_14 rfa2 ( .G(gt[1]), .P(pt[1]), .Sum(Sum[1]), .A(A[1]), .B(B[1]), .Cin(
        \c1[1] ) );
  RFA_13 rfa3 ( .G(gt[2]), .P(pt[2]), .Sum(Sum[2]), .A(A[2]), .B(B[2]), .Cin(
        \c1[2] ) );
  RFA_12 rfa4 ( .G(gt[3]), .P(pt[3]), .Sum(Sum[3]), .A(A[3]), .B(B[3]), .Cin(
        \c1[3] ) );
  BCLG4_4 bclg1 ( .Gout(g[0]), .Pout(p[0]), .g(gt[3:0]), .p(pt[3:0]), .Cin(Cin), .\Cout[3] (\c1[3] ), .\Cout[2] (\c1[2] ), .\Cout[1] (\c1[1] ) );
  RFA_11 rfa5 ( .G(gt[4]), .P(pt[4]), .Sum(Sum[4]), .A(A[4]), .B(B[4]), .Cin(
        \c2[1] ) );
  RFA_10 rfa6 ( .G(gt[5]), .P(pt[5]), .Sum(Sum[5]), .A(A[5]), .B(B[5]), .Cin(
        \c1[5] ) );
  RFA_9 rfa7 ( .G(gt[6]), .P(pt[6]), .Sum(Sum[6]), .A(A[6]), .B(B[6]), .Cin(
        \c1[6] ) );
  RFA_8 rfa8 ( .G(gt[7]), .P(pt[7]), .Sum(Sum[7]), .A(A[7]), .B(B[7]), .Cin(
        \c1[7] ) );
  BCLG4_3 bclg2 ( .Gout(g[1]), .Pout(p[1]), .g(gt[7:4]), .p(pt[7:4]), .Cin(
        \c2[1] ), .\Cout[3] (\c1[7] ), .\Cout[2] (\c1[6] ), .\Cout[1] (\c1[5] ) );
  RFA_7 rfa9 ( .G(gt[8]), .P(pt[8]), .Sum(Sum[8]), .A(A[8]), .B(B[8]), .Cin(
        \c2[2] ) );
  RFA_6 rfa10 ( .G(gt[9]), .P(pt[9]), .Sum(Sum[9]), .A(A[9]), .B(B[9]), .Cin(
        \c1[9] ) );
  RFA_5 rfa11 ( .G(gt[10]), .P(pt[10]), .Sum(Sum[10]), .A(A[10]), .B(B[10]), 
        .Cin(\c1[10] ) );
  RFA_4 rfa12 ( .G(gt[11]), .P(pt[11]), .Sum(Sum[11]), .A(A[11]), .B(B[11]), 
        .Cin(\c1[11] ) );
  BCLG4_2 bclg3 ( .Gout(g[2]), .Pout(p[2]), .g(gt[11:8]), .p(pt[11:8]), .Cin(
        \c2[2] ), .\Cout[3] (\c1[11] ), .\Cout[2] (\c1[10] ), .\Cout[1] (
        \c1[9] ) );
  RFA_3 rfa13 ( .G(gt[12]), .P(pt[12]), .Sum(Sum[12]), .A(A[12]), .B(B[12]), 
        .Cin(\c2[3] ) );
  RFA_2 rfa14 ( .G(gt[13]), .P(pt[13]), .Sum(Sum[13]), .A(A[13]), .B(B[13]), 
        .Cin(\c1[13] ) );
  RFA_1 rfa15 ( .G(gt[14]), .P(pt[14]), .Sum(Sum[14]), .A(A[14]), .B(B[14]), 
        .Cin(\c1[14] ) );
  RFA_0 rfa16 ( .G(gt[15]), .P(pt[15]), .Sum(Sum[15]), .A(A[15]), .B(B[15]), 
        .Cin(\c1[15] ) );
  BCLG4_1 bclg4 ( .Gout(g[3]), .Pout(p[3]), .g(gt[15:12]), .p(pt[15:12]), 
        .Cin(\c2[3] ), .\Cout[3] (\c1[15] ), .\Cout[2] (\c1[14] ), .\Cout[1] (
        \c1[13] ) );
  BCLG4_0 bclg5 ( .Gout(G), .Pout(P), .g(g), .p(p), .Cin(Cin), .\Cout[3] (
        \c2[3] ), .\Cout[2] (\c2[2] ), .\Cout[1] (\c2[1] ) );
endmodule

