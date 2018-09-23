/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Wed Apr 25 02:49:33 2018
/////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module half_adder_7 ( x, y, sum, carry );
  input x, y;
  output sum, carry;


  XOR2X1 U1 ( .A(y), .B(x), .Y(sum) );
  AND2X1 U2 ( .A(y), .B(x), .Y(carry) );
endmodule


module half_adder_4 ( x, y, sum, carry );
  input x, y;
  output sum, carry;


  XOR2X1 U1 ( .A(y), .B(x), .Y(sum) );
  AND2X1 U2 ( .A(y), .B(x), .Y(carry) );
endmodule


module half_adder_5 ( x, y, sum, carry );
  input x, y;
  output sum, carry;


  XOR2X1 U1 ( .A(y), .B(x), .Y(sum) );
  AND2X1 U2 ( .A(y), .B(x), .Y(carry) );
endmodule


module half_adder_6 ( x, y, sum, carry );
  input x, y;
  output sum, carry;


  XOR2X1 U1 ( .A(y), .B(x), .Y(sum) );
  AND2X1 U2 ( .A(y), .B(x), .Y(carry) );
endmodule


module CLA_4bit_1 ( A, B, C_in, SUM, C_out );
  input [3:0] A;
  input [3:0] B;
  output [3:0] SUM;
  output [3:0] C_out;
  input C_in;

  wire   [3:0] P;
  wire   [3:0] G;

  half_adder_7 HA0 ( .x(A[0]), .y(B[0]), .sum(P[0]), .carry(G[0]) );
  half_adder_6 HA1 ( .x(A[1]), .y(B[1]), .sum(P[1]), .carry(G[1]) );
  half_adder_5 HA2 ( .x(A[2]), .y(B[2]), .sum(P[2]), .carry(G[2]) );
  half_adder_4 HA3 ( .x(A[3]), .y(B[3]), .sum(P[3]), .carry(G[3]) );
  XOR2X1 U1 ( .A(P[3]), .B(C_out[2]), .Y(SUM[3]) );
  XOR2X1 U2 ( .A(P[2]), .B(C_out[1]), .Y(SUM[2]) );
  XOR2X1 U3 ( .A(P[1]), .B(C_out[0]), .Y(SUM[1]) );
  XOR2X1 U4 ( .A(P[0]), .B(C_in), .Y(SUM[0]) );
  AO21X1 U5 ( .A0(P[3]), .A1(C_out[2]), .B0(G[3]), .Y(C_out[3]) );
  AO21X1 U6 ( .A0(P[2]), .A1(C_out[1]), .B0(G[2]), .Y(C_out[2]) );
  AO21X1 U7 ( .A0(P[1]), .A1(C_out[0]), .B0(G[1]), .Y(C_out[1]) );
  AO21X1 U8 ( .A0(P[0]), .A1(C_in), .B0(G[0]), .Y(C_out[0]) );
endmodule


module half_adder_0 ( x, y, sum, carry );
  input x, y;
  output sum, carry;


  XOR2X1 U1 ( .A(y), .B(x), .Y(sum) );
  AND2X1 U2 ( .A(y), .B(x), .Y(carry) );
endmodule


module half_adder_1 ( x, y, sum, carry );
  input x, y;
  output sum, carry;


  XOR2X1 U1 ( .A(y), .B(x), .Y(sum) );
  AND2X1 U2 ( .A(y), .B(x), .Y(carry) );
endmodule


module half_adder_2 ( x, y, sum, carry );
  input x, y;
  output sum, carry;


  XOR2X1 U1 ( .A(y), .B(x), .Y(sum) );
  AND2X1 U2 ( .A(y), .B(x), .Y(carry) );
endmodule


module half_adder_3 ( x, y, sum, carry );
  input x, y;
  output sum, carry;


  XOR2X1 U1 ( .A(y), .B(x), .Y(sum) );
  AND2X1 U2 ( .A(y), .B(x), .Y(carry) );
endmodule


module CLA_4bit_0 ( A, B, C_in, SUM, C_out );
  input [3:0] A;
  input [3:0] B;
  output [3:0] SUM;
  output [3:0] C_out;
  input C_in;

  wire   [3:0] P;
  wire   [3:0] G;

  half_adder_3 HA0 ( .x(A[0]), .y(B[0]), .sum(P[0]), .carry(G[0]) );
  half_adder_2 HA1 ( .x(A[1]), .y(B[1]), .sum(P[1]), .carry(G[1]) );
  half_adder_1 HA2 ( .x(A[2]), .y(B[2]), .sum(P[2]), .carry(G[2]) );
  half_adder_0 HA3 ( .x(A[3]), .y(B[3]), .sum(P[3]), .carry(G[3]) );
  XOR2X1 U1 ( .A(P[3]), .B(C_out[2]), .Y(SUM[3]) );
  XOR2X1 U2 ( .A(P[2]), .B(C_out[1]), .Y(SUM[2]) );
  XOR2X1 U3 ( .A(P[1]), .B(C_out[0]), .Y(SUM[1]) );
  XOR2X1 U4 ( .A(P[0]), .B(C_in), .Y(SUM[0]) );
  AO21X1 U5 ( .A0(P[3]), .A1(C_out[2]), .B0(G[3]), .Y(C_out[3]) );
  AO21X1 U6 ( .A0(P[2]), .A1(C_out[1]), .B0(G[2]), .Y(C_out[2]) );
  AO21X1 U7 ( .A0(P[1]), .A1(C_out[0]), .B0(G[1]), .Y(C_out[1]) );
  AO21X1 U8 ( .A0(P[0]), .A1(C_in), .B0(G[0]), .Y(C_out[0]) );
endmodule


module CLA_8bit ( A, B, Add_ctrl, SUM, C_out, v );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input Add_ctrl;
  output C_out, v;
  wire   n1;
  wire   [7:0] new_B;
  wire   [7:0] C;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  CLA_4bit_1 CLA4_1 ( .A(A[3:0]), .B(new_B[3:0]), .C_in(n1), .SUM(SUM[3:0]), 
        .C_out({C[3], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2}) );
  CLA_4bit_0 CLA4_2 ( .A(A[7:4]), .B(new_B[7:4]), .C_in(C[3]), .SUM(SUM[7:4]), 
        .C_out({C[7:6], SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4}) );
  XOR2X1 U12 ( .A(C[7]), .B(C[6]), .Y(v) );
  XNOR2X1 U13 ( .A(Add_ctrl), .B(B[7]), .Y(new_B[7]) );
  XNOR2X1 U14 ( .A(Add_ctrl), .B(B[6]), .Y(new_B[6]) );
  XNOR2X1 U15 ( .A(Add_ctrl), .B(B[5]), .Y(new_B[5]) );
  XNOR2X1 U16 ( .A(Add_ctrl), .B(B[4]), .Y(new_B[4]) );
  XNOR2X1 U17 ( .A(Add_ctrl), .B(B[3]), .Y(new_B[3]) );
  XNOR2X1 U18 ( .A(Add_ctrl), .B(B[2]), .Y(new_B[2]) );
  XNOR2X1 U19 ( .A(Add_ctrl), .B(B[1]), .Y(new_B[1]) );
  XNOR2X1 U20 ( .A(Add_ctrl), .B(B[0]), .Y(new_B[0]) );
  OR2X1 U21 ( .A(C[7]), .B(n1), .Y(C_out) );
  CLKINVX1 U22 ( .A(Add_ctrl), .Y(n1) );
endmodule

