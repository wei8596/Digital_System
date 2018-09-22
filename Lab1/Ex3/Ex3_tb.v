// Verilog test fixture created from schematic D:\Lab04-3\Ex3.sch - Mon Oct 03 11:07:45 2016

`timescale 1ns / 1ps

module Ex3_Ex3_sch_tb();

// Inputs
reg x1;
reg x2;
reg x3;
reg y1;
reg y2;
reg y3;
reg z1;
reg z2;
reg z3;

// Output
wire F1;
wire F2;
wire F3;

// Bidirs

// Instantiate the UUT
   Ex3 UUT (
		.x1(x1),
		.x2(x2),
		.x3(x3),
		.y1(y1),
		.y2(y2),
		.y3(y3),
		.z1(z1),
		.z2(z2),
		.z3(z3),
		.F1(F1),
		.F2(F2),
		.F3(F3)
   );
// Initialize Inputs
	initial begin
		x1=0;y1=0;z1=0;
		x2=0;y2=0;z2=0;
		x3=0;y3=0;z3=0;
		#10
		x1=0;y1=0;z1=1;
		x2=0;y2=0;z2=1;
		x3=0;y3=0;z3=1;
		#10
		x1=0;y1=1;z1=0;
		x2=0;y2=1;z2=0;
		x3=0;y3=1;z3=0;
		#10
		x1=0;y1=1;z1=1;
		x2=0;y2=1;z2=1;
		x3=0;y3=1;z3=1;
		#10
		x1=1;y1=0;z1=0;
		x2=1;y2=0;z2=0;
		x3=1;y3=0;z3=0;
		#10
		x1=1;y1=0;z1=1;
		x2=1;y2=0;z2=1;
		x3=1;y3=0;z3=1;
		#10
		x1=1;y1=1;z1=0;
		x2=1;y2=1;z2=0;
		x3=1;y3=1;z3=0;
		#10
		x1=1;y1=1;z1=1;
		x2=1;y2=1;z2=1;
		x3=1;y3=1;z3=1;
		#10 $finish;
   end
endmodule
