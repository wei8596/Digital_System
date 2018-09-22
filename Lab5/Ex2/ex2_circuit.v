`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:18 12/12/2016 
// Design Name: 
// Module Name:    ex2_circuit 
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
module ex2_circuit(output y,A,B, input x,clock,reset);
wire t1,t2;

and(t1,x,B);
jk jka(A,t1,~x,clock,reset);
or(t2,~A,~x);
jk jkb(B,x,t2,clock,reset);
and(y,A,B);

endmodule

module jk(output Q, input j,k,clk,reset);
wire t1,s,r,t2,q,d,t3,t4;

and(t3,j,~Q);
and(t4,~k,Q);
or(d,t3,t4);
nand(t1,t2,s);
nand(s,t1,clk,reset);
nand(r,s,clk,t2);
nand(t2,r,d,reset);
nand(Q,s,q);
nand(q,Q,r,reset);

endmodule
