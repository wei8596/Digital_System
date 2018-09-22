`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:08 12/26/2016 
// Design Name: 
// Module Name:    ex1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ex1(output [3:0]a, input up,down,clk,rst);
wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11;

and(t1,~up,down);
or(t2,up,t1);

and(t3,t1,~a[0]);
and(t4,up,a[0]);
or(t5,t4,t3);

and(t6,t3,~a[1]);
and(t7,t4,a[1]);
or(t8,t6,t7);

and(t9,t6,~a[2]);
and(t10,t7,a[2]);
or(t11,t9,t10);

tff tff1(a[0],t2,clk,rst);
tff tff2(a[1],t5,clk,rst);
tff tff3(a[2],t8,clk,rst);
tff tff4(a[3],t11,clk,rst);

endmodule

module tff(output Q, input t,clk,reset);
wire t1,s,r,t2,q,d;

xor(d,Q,t);
nand(t1,t2,s);
nand(s,t1,clk,reset);
nand(r,s,clk,t2);
nand(t2,r,d,reset);
nand(Q,s,q);
nand(q,Q,r,reset);

endmodule
