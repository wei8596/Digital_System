`timescale 1ns / 100ps
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Sat May 26 08:47:42 2018
/////////////////////////////////////////////////////////////


module traffic_light ( HG, HY, HR, FG, FY, FR, ST_out, TL, TS, clk, reset, C, 
        N, P );
  input TL, TS, clk, reset, C, N, P;
  output HG, HY, HR, FG, FY, FR, ST_out;
  wire   ST, N59, N63, n1, n2, n3, n4, n5, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36;
  wire   [0:2] state;
  wire   [0:2] next_state;
  assign HG = N59;
  assign FG = N63;

  DFFSX1 ST_out_reg ( .D(ST), .CK(clk), .SN(n1), .Q(ST_out) );
  CLKINVX1 U3 ( .A(reset), .Y(n1) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n1), .Q(state[0]), 
        .QN(n35) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n1), .Q(state[1]), 
        .QN(n33) );
  DFFRX1 \state_reg[2]  ( .D(n2), .CK(clk), .RN(n1), .Q(state[2]), .QN(n34) );
  CLKINVX1 U44 ( .A(n18), .Y(n4) );
  NOR2X1 U45 ( .A(n34), .B(n36), .Y(n18) );
  NAND2X1 U46 ( .A(n32), .B(n33), .Y(n26) );
  NOR2X1 U47 ( .A(n35), .B(state[2]), .Y(n32) );
  NOR3X1 U48 ( .A(state[1]), .B(state[2]), .C(n36), .Y(N59) );
  NOR3X1 U49 ( .A(n36), .B(state[2]), .C(n33), .Y(N63) );
  OAI21XL U50 ( .A0(n36), .A1(n22), .B0(n25), .Y(n19) );
  NAND4X1 U51 ( .A(n36), .B(P), .C(n9), .D(n33), .Y(n25) );
  OAI21XL U52 ( .A0(state[1]), .A1(C), .B0(TS), .Y(n17) );
  OAI2BB2XL U53 ( .B0(n24), .B1(n10), .A0N(n19), .A1N(state[2]), .Y(
        next_state[0]) );
  NOR2BX1 U54 ( .AN(n26), .B(n18), .Y(n24) );
  CLKBUFX3 U55 ( .A(state[0]), .Y(n36) );
  NAND2BX1 U56 ( .AN(N63), .B(n20), .Y(next_state[1]) );
  NAND4X1 U57 ( .A(n21), .B(n22), .C(n10), .D(n35), .Y(n20) );
  OAI21XL U58 ( .A0(TS), .A1(n33), .B0(n23), .Y(n21) );
  NAND4X1 U59 ( .A(C), .B(TS), .C(state[2]), .D(n33), .Y(n23) );
  OAI221XL U60 ( .A0(n27), .A1(n33), .B0(N), .B1(n5), .C0(n28), .Y(ST) );
  AOI21X1 U61 ( .A0(n14), .A1(n34), .B0(n36), .Y(n27) );
  CLKINVX1 U62 ( .A(n32), .Y(n5) );
  AOI22X1 U63 ( .A0(state[2]), .A1(n29), .B0(n13), .B1(N59), .Y(n28) );
  OAI211X1 U64 ( .A0(P), .A1(n17), .B0(n30), .C0(n31), .Y(n29) );
  OAI2BB1X1 U65 ( .A0N(n9), .A1N(P), .B0(n36), .Y(n30) );
  AO21X1 U66 ( .A0(n22), .A1(n10), .B0(n36), .Y(n31) );
  CLKINVX1 U67 ( .A(n12), .Y(n2) );
  AOI221XL U68 ( .A0(N59), .A1(n13), .B0(n14), .B1(N63), .C0(n3), .Y(n12) );
  CLKINVX1 U69 ( .A(n15), .Y(n3) );
  AOI32X1 U70 ( .A0(n16), .A1(n17), .A2(n18), .B0(state[2]), .B1(n19), .Y(n15)
         );
  OAI22XL U71 ( .A0(TS), .A1(n26), .B0(state[1]), .B1(n4), .Y(HY) );
  OAI22XL U72 ( .A0(TS), .A1(n26), .B0(n4), .B1(n33), .Y(FY) );
  NOR2X1 U73 ( .A(P), .B(N), .Y(n16) );
  AOI2BB1X1 U74 ( .A0N(C), .A1N(n11), .B0(n9), .Y(n13) );
  CLKINVX1 U75 ( .A(n16), .Y(n11) );
  NAND2X1 U76 ( .A(P), .B(n10), .Y(n22) );
  NAND3X1 U77 ( .A(n16), .B(n9), .C(C), .Y(n14) );
  CLKINVX1 U78 ( .A(N), .Y(n10) );
  NOR2X1 U79 ( .A(state[1]), .B(n32), .Y(FR) );
  CLKINVX1 U80 ( .A(TL), .Y(n9) );
  OAI32X1 U81 ( .A0(n35), .A1(state[1]), .A2(n34), .B0(n36), .B1(n33), .Y(HR)
         );
endmodule

