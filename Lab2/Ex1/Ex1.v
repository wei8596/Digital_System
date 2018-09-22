`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:37 10/24/2016 
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
module Ex1(F1, F2, w, x, y, z);
output F1, F2;
input w, x, y, z;

wire F1, F2, w, x, y, z;

assign F1 = ~x&~z | ~x&~y | ~w&~y&z;
assign F2 = (~y|~z) & (~w|~x) & (~x|z);

endmodule
