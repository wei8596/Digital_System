// Verilog test fixture created from schematic D:\Lab06-3\Ex3.sch - Mon Oct 24 11:11:10 2016

`timescale 1ns / 1ps

module Ex3_Ex3_sch_tb();

// Inputs
   reg x3;
   reg x0;
   reg x1;
   reg x2;

// Output
   wire y3;
   wire y2;
   wire y0;
   wire y1;

// Bidirs

// Instantiate the UUT
   Ex3 UUT (
		.x3(x3), 
		.x0(x0), 
		.y3(y3), 
		.y2(y2), 
		.y0(y0), 
		.x1(x1), 
		.y1(y1), 
		.x2(x2)
   );
// Initialize Inputs
       initial begin
		x3=0;x2=0;x1=0;x0=0;
		#10 x3=0;x2=0;x1=0;x0=1;
		#10 x3=0;x2=0;x1=1;x0=0;
		#10 x3=0;x2=0;x1=1;x0=1;
		#10 x3=0;x2=1;x1=0;x0=0;
		#10 x3=0;x2=1;x1=0;x0=1;
		#10 x3=0;x2=1;x1=1;x0=0;
		#10 x3=0;x2=1;x1=1;x0=1;
		#10 x3=1;x2=0;x1=0;x0=0;
		#10 x3=1;x2=0;x1=0;x0=1;
		#10 $finish;
		end
endmodule
