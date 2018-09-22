`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:29:37 12/12/2016 
// Design Name: 
// Module Name:    ex1_circuit 
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
module ex1_circuit(output y,A,B, input x,clock,reset);
wire t1,t2,t3,t4,t5;

and(t1,A,x);
and(t2,B,x);
or(t3,t1,t2);
d_flip_flop da(A,t3,clock,reset);
and(t4,~B,x);
and(y,B,A);
or(t5,t1,t4);
d_flip_flop db(B,t5,clock,reset);

endmodule

module d_flip_flop(output Q, input d,clk,reset);
wire t1,s,r,t2,q;

nand(t1,t2,s);
nand(s,t1,clk,reset);
nand(r,s,clk,t2);
nand(t2,r,d,reset);
nand(Q,s,q);
nand(q,Q,r,reset);

endmodule
