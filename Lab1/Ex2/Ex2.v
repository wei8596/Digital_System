`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:43 10/03/2016 
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
module Ex2(S1, S2, S3, S4, C1, C2, C3, C4, x, y, z);
output S1, S2, S3, S4, C1, C2, C3, C4;
input x, y, z;

wire S1, S2, S3, S4, C1, C2, C3, C4, x, y, z;

nor(S1, x, y);
nor(S2, S1, z);
nor(C1, y, x);
nor(C2, C1, z);

nor(S3, x, y);
nor(S4, S3, z);
nor(C3, y, z);
nor(C4, C3, x);

endmodule
