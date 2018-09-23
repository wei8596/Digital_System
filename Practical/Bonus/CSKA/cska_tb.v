//`include "cska.v"
`include "cska_syn.v"
`include "/mnt3/Process/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v"
`timescale 1ns / 1ps

module cska_tb;

	// Inputs
	reg signed [15:0] A;
	reg signed [15:0] B;
	reg Cin;

	// Outputs
	wire Cout;
	wire signed [15:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	CSKA16 uut (
		.Cout(Cout), 
		.Sum(Sum), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);
	
	reg signed [15:0] S;

	initial begin
		// Initialize Inputs
		A = 16'd0; B = 16'd0; Cin = 0;
		#5
		// Add stimulus here
		S = A + B;
		if(S == Sum)
			$display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,Sum);
		else
			$display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,Sum);
		
		#5 A = 16'd2; B = 16'd3;
		#5
		S = A + B;
		if(S == Sum)
			$display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,Sum);
		else
			$display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,Sum);
		
		#5 A = 16'd127; B = 16'd127;
		#5
		S = A + B;
		if(S == Sum)
			$display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,Sum);
		else
			$display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,Sum);
		
		#5 A = -16'd128; B = -16'd128;
		#5
		S = A + B;
		if(S == Sum)
			$display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,Sum);
		else
			$display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,Sum);
		
		#5 A = -16'd32768; B = 16'd32767;
		#5
		S = A + B;
		if(S == Sum)
			$display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,Sum);
		else
			$display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,Sum);
		
		#5 A = -16'd127; B = -16'd127;
		#5
		S = A + B;
		if(S == Sum)
			$display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,Sum);
		else
			$display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,Sum);
		
		#5 A = -16'd1; B = -16'd1;
		#5
		S = A + B;
		if(S == Sum)
			$display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,Sum);
		else
			$display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,Sum);
		
		#5 A = -16'd2; B = -16'd3;
		#5
		S = A + B;
		if(S == Sum)
			$display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,Sum);
		else
			$display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,Sum);
		#5 $finish;
	end
	
	initial begin
		$dumpfile("cska.vcd");
		$dumpvars;
	end
	initial $sdf_annotate("cska.sdf", uut);
      
endmodule

