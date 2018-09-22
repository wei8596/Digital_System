`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:14 10/24/2016 
// Design Name: 
// Module Name:    Ex2 
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
module Ex2(F1, F2, F3, F4, x, y, z);
output F1, F2, F3, F4;
input x, y, z;

wire F1, F2, F3, F4, x, y, z, t1, t2, t3, t4;

assign F1 = z | x&~y | ~x&y;
nand(t1, x, ~y);
nand(t2, ~x, y);
nand(F2, ~z, t1, t2);

assign F3 = (x|y|z) & (~x|~y|z);
nor(t3, x, y, z);
nor(t4, ~x, ~y, z);
nor(F4, t3, t4);

endmodule
