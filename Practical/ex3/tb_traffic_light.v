`timescale 1ns / 100ps
`include "traffic_light_syn.v"
`include "/mnt3/Process/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v"
module tb_traffic_light;	
	reg clk,reset,c,n,p;
	wire HG,HY,HR,FG,FY,FR,ST_out,tl,ts;
	traffic_light TL (HG,HY,HR,FG,FY,FR,ST_out,tl,ts,
		clk,reset,c,n,p);
	bcd_count counter(tl,ts,ST_out,clk);

	initial begin // Initialize Inputs
		clk = 1'b0;
		reset = 1'b0;
		c = 1'b0;
		n = 1'b0;
		p = 1'b0;
	end
	always begin
		#10 clk = ~clk;
	end
	initial begin
		#20 reset = 1'b1;
		#40 reset = 1'b0;
		#100 c = 1'b1;
		#800 c = 1'b0;
		#200 n = 1'b1;
		#800 n = 1'b0;
		#200 p = 1'b1;
		#800 p = 1'b0;
		#400 $finish;
	end
	initial begin
		$dumpfile("traffic_light.vcd");
		$dumpvars;
	end
	initial $sdf_annotate("traffic_light.sdf", TL);
endmodule

module bcd_count(tl,ts,st,clk); //counter
output tl,ts;
reg [3:0] count;
input st,clk;
wire tl=(count==4'b0110)?1'b1:1'b0; //combinational
wire ts=(count==4'b1000)?1'b1:1'b0; //combinational
always @(posedge clk or posedge st) //sequential
	if(st)
		count<=4'b1001;
	else if(count==0)
		count<=4'b1001;
	else
		count<=count-1;
endmodule

