/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Wed Apr 18 23:17:51 2018
/////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module CLA_4bit_1 ( A, B, C_in, SUM, C_out );
  input [3:0] A;
  input [3:0] B;
  output [3:0] SUM;
  output [3:0] C_out;
  input C_in;
  wire   n1, n2, n3, n4, n5, n6;

  XOR2X1 U1 ( .A(n1), .B(C_out[2]), .Y(SUM[3]) );
  XOR2X1 U2 ( .A(n2), .B(n3), .Y(SUM[2]) );
  XOR2X1 U3 ( .A(n4), .B(C_out[0]), .Y(SUM[1]) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM[0]) );
  AO22X1 U5 ( .A0(C_out[2]), .A1(n1), .B0(B[3]), .B1(A[3]), .Y(C_out[3]) );
  XOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OAI21XL U7 ( .A0(n3), .A1(n2), .B0(n6), .Y(C_out[2]) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n6), .Y(n2) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n6) );
  CLKINVX1 U10 ( .A(n3), .Y(C_out[1]) );
  AOI22X1 U11 ( .A0(B[1]), .A1(A[1]), .B0(C_out[0]), .B1(n4), .Y(n3) );
  XOR2X1 U12 ( .A(A[1]), .B(B[1]), .Y(n4) );
  AO22X1 U13 ( .A0(B[0]), .A1(A[0]), .B0(n5), .B1(C_in), .Y(C_out[0]) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n5) );
endmodule


module CLA_4bit_0 ( A, B, C_in, SUM, C_out );
  input [3:0] A;
  input [3:0] B;
  output [3:0] SUM;
  output [3:0] C_out;
  input C_in;
  wire   n1, n2, n3, n4, n5, n6;

  XOR2X1 U1 ( .A(n1), .B(C_out[2]), .Y(SUM[3]) );
  XOR2X1 U2 ( .A(n2), .B(n3), .Y(SUM[2]) );
  XOR2X1 U3 ( .A(n4), .B(C_out[0]), .Y(SUM[1]) );
  XOR2X1 U4 ( .A(C_in), .B(n5), .Y(SUM[0]) );
  AO22X1 U5 ( .A0(C_out[2]), .A1(n1), .B0(B[3]), .B1(A[3]), .Y(C_out[3]) );
  XOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OAI21XL U7 ( .A0(n3), .A1(n2), .B0(n6), .Y(C_out[2]) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n6), .Y(n2) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n6) );
  CLKINVX1 U10 ( .A(n3), .Y(C_out[1]) );
  AOI22X1 U11 ( .A0(B[1]), .A1(A[1]), .B0(C_out[0]), .B1(n4), .Y(n3) );
  XOR2X1 U12 ( .A(A[1]), .B(B[1]), .Y(n4) );
  AO22X1 U13 ( .A0(B[0]), .A1(A[0]), .B0(n5), .B1(C_in), .Y(C_out[0]) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n5) );
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

