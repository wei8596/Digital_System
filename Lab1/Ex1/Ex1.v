`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:44 10/03/2016 
// Design Name: 
// Module Name:    Ex1 
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
module Ex1(F1, F2, x, y, z);
output F1, F2;
input x, y, z;

wire F1, F2, x, y, z;

assign F1 = (~x&~y&~z) | (~x&~y&z) | (x&~y&~z) | (x&y&z);
assign F2 = (x|~y|z) & (x|~y|~z) & (~x|y|~z) & (~x|~y|z);


endmodule
