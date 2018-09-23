`timescale 1 ns / 100 ps
`include "multiplier.v"
//`include "multiplier_syn.v"
//`include "/mnt3/Process/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v"

module testbench ;
	// Declare Data type
	reg	signed [15:0] a;
	reg	signed [15:0] b;
	wire signed [31:0] prod;
	reg	clk, input_ready;
	wire	output_valid;

	multiplier MUL0(.output_valid(output_valid), .prod(prod), .a(a), .b(b), .clk(clk), .input_ready(input_ready));
	
	initial begin // Initialize
		clk = 1'b1;
		input_ready = 1'b1;
	end
	
	always begin
		#5 clk = ~clk;
		
	end
	
	always begin
		#0.5 input_ready = 0;
		//#5 input_ready = 0;
		#19 input_ready = 1;
		#0.5 ;//input_ready = 1;
		
	end
	
	// Apply stimulus
	initial
	begin
		#15 a = 3; b = 21845;
		/*#50
			if(prod !== 3*21845)
				$display("Wrong answer %d;  Right answer: %d\n", prod, 3*21845);
			else
				$display("Right answer: %d\n", 3*21845);
		*/
		#20 a = -21846; b = -32767; 
		/*#50
			if(prod != (-21846)*(-32767))
				$display("Wrong answer %d;  Right answer: %d\n", prod, (-21846)*(-32767));
			else
				$display("Right answer: %d\n", (-21846)*(-32767));
		*/
		#20 a = 21845; b = -16384; 
		/*#50
			if(prod != 21845*(-16384))
				$display("Wrong answer %d;  Right answer: %d\n", prod, 21845*(-16384));		
			else
				$display("Right answer: %d\n", 21845*(-16384));
		*/
		#20 a=32767; b=32513;
		/*#50
			if(prod != 32767*32513)
				$display("Wrong answer %d;  Right answer: %d\n", prod, 32767*32513);
			else
				$display("Right answer: %d\n", 32767*32513);
		*/
		#20 a=-1; b=32513;
		/*#50
			if(prod != (-1)*32513)
				$display("Wrong answer %d;  Right answer: %d\n", prod, (-1)*32513);
			else
				$display("Right answer: %d\n", (-1)*32513);
		*/
		#20 a=-1; b=-255;
		/*#50
			if(prod != (-1)*(-255))
				$display("Wrong answer %d;  Right answer: %d\n", prod, (-1)*(-255));
			else
				$display("Right answer: %d\n", (-1)*(-255));
		*/
		#20 a=-16385; b=-1;
		/*#50
			if(prod != (-16385)*(-1))
				$display("Wrong answer %d;  Right answer: %d\n", prod, (-16385)*(-1));
			else
				$display("Right answer: %d\n", (-16385)*(-1));
		*/
		#20 a=32767; b=-1;
		/*#50
			if(prod != 32767*(-1))
				$display("Wrong answer %d;  Right answer: %d\n", prod, 32767*(-1));
			else
				$display("Right answer: %d\n", 32767*(-1));
		*/
		#20 a=32767; b=32767;
		/*#50
			if(prod != 32767*32767)
				$display("Wrong answer %d;  Right answer: %d\n", prod, 32767*32767);
			else
				$display("Right answer: %d\n", 32767*32767);
		*/
		#20 a = 0;b = 5;
		/*#50
			if(prod !== 0*5)
				$display("Wrong answer %d;  Right answer: %d\n", prod, 0*5);
			else
				$display("Right answer: %d\n", 0*5);
		*/
		#20 a=-32767; b=-32767;
		/*#50
			if(prod != (-32767)*(-32767))
				$display("Wrong answer %d;  Right answer: %d\n", prod, (-32767)*(-32767));		
			else
				$display("Right answer: %d\n", (-32767)*(-32767));
		*/
		#20 a=-32768; b=-32768;
		/*#50
			if(prod != (-32768)*(-32768))
				$display("Wrong answer %d;  Right answer: %d\n", prod, (-32768)*(-32768));		
			else
				$display("Right answer: %d\n", (-32768)*(-32768));
		*/
		#20 a=-1; b=-1;
		/*
		#50
			if(prod != (-1)*(-1))
				$display("Wrong answer %d;  Right answer: %d\n", prod, (-1)*(-1));		
			else
				$display("Right answer: %d\n", (-1)*(-1));
		*/
		#100 $finish;
	end
	// Display results
	initial
		$monitor($time, " a=%d b=%d prod=%d ", a, b, prod);
	initial begin
		$dumpfile("multiplier.vcd");
		$dumpvars;
	end
//	initial $sdf_annotate("multiplier_syn.sdf", MUL0);
endmodule

