`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:18 11/14/2016 
// Design Name: 
// Module Name:    hamming 
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
/////////////////////////////////////////////////////////////////////////////////
module corrector(I3,I2,I1,I0,O3,O2,O1,O0,P3,P2,P1);
output I3,I2,I1,I0;
wire [0:7]D;
wire A,B,C;
input O3,O2,O1,O0,P3,P2,P1;
 _generate  x1(C,B,A,O3,O2,O1,O0,P3,P2,P1);
assign D[0] = (~C) && (~B) && (~A),
		 D[1] = (~C) && (~B) && (A),
		 D[2] = (~C) && (B) && (~A),
		 D[3] = (~C) && (B) && (A),
		 D[4] = (C) && (~B) && (~A),
		 D[5] = (C) && (~B) && (A),
		 D[6] = (C) && (B) && (~A),
		 D[7] = (C) && (B) && (A);
assign I0 = O0 ^ D[3],
		 I1 = O1 ^ D[5],
		 I2 = O2 ^ D[6],
		 I3 = O3 ^ D[7];
endmodule

module _generate(C3,C2,C1,O3,O2,O1,O0,P3,P2,P1);
output C3,C2,C1;
input O3,O2,O1,O0,P3,P2,P1;

assign C1 = O3^O2^O1^P3,
		 C2 = O3^O2^O0^P2,
		 C3 = O3^O1^O0^P1;
endmodule
