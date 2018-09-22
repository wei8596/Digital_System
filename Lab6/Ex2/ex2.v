`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:48 12/26/2016 
// Design Name: 
// Module Name:    EX2 
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
module EX2(output [3:0]o, input mem,rw,input[3:0]i,input[1:0]a);
wire [3:0]d;
wire [15:0]t;

decoder_case twotofour(a, d , mem);

bc bc1(t[0],i[0],d[0],rw);
bc bc2(t[1],i[0],d[1],rw);
bc bc3(t[2],i[0],d[2],rw);
bc bc4(t[3],i[0],d[3],rw);
or(o[0],t[0],t[1],t[2],t[3]);

bc bc5(t[4],i[1],d[0],rw);
bc bc6(t[5],i[1],d[1],rw);
bc bc7(t[6],i[1],d[2],rw);
bc bc8(t[7],i[1],d[3],rw);
or(o[1],t[4],t[5],t[6],t[7]);

bc bc9(t[8],i[2],d[0],rw);
bc bc10(t[9],i[2],d[1],rw);
bc bc11(t[10],i[2],d[2],rw);
bc bc12(t[11],i[2],d[3],rw);
or(o[2],t[8],t[9],t[10],t[11]);

bc bc13(t[12],i[3],d[0],rw);
bc bc14(t[13],i[3],d[1],rw);
bc bc15(t[14],i[3],d[2],rw);
bc bc16(t[15],i[3],d[3],rw);
or(o[3],t[12],t[13],t[14],t[15]);

endmodule

module decoder_case(binary_in, decoder_out , enable);
	input [1:0] binary_in ; // 2 bit binary input
	input enable ; // Enable for the decoder
	output [3:0] decoder_out ; // 4-bit out
	
	reg [3:0] decoder_out ;

 always @ (enable or binary_in)
 begin
	decoder_out = 0; 
	if (enable) begin
		case (binary_in)
			2'b00 : decoder_out = 4'b0001;
			2'b01 : decoder_out = 4'b0010;
			2'b10 : decoder_out = 4'b0100;
			2'b11 : decoder_out = 4'b1000;
		endcase
	end
 end
endmodule

module bc(output o, input i,s,rw);
reg q,o;

always @ (i or s or rw)
  if(s)
    if(rw) o=q;
    else q=i;
  else o=0;
endmodule
