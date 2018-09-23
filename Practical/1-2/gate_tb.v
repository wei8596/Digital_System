`timescale 1ns / 100ps
`include "gate_syn.v"
`include "/data/software/Process/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v"
module gate_tb;

	// Inputs
	reg signed [7:0] A;
	reg signed [7:0] B;
	reg Add_ctrl;

	// Outputs
	wire signed [7:0] SUM;
	wire C_out;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	CLA_8bit uut (
		.A(A), 
		.B(B), 
		.Add_ctrl(Add_ctrl), 
		.SUM(SUM), 
		.C_out(C_out), 
		.v(v)
	);
  
  initial $sdf_annotate("gate.sdf", uut);

	reg [7:0] S;
  
  initial begin
		// A = 0, B = 0
    A = 8'b00000000; B = 8'b00000000; Add_ctrl = 1;
    #30
    S = A + B;
    if(S == SUM)
      $display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,SUM);
		#5 Add_ctrl = 0;
    #25
    S = A - B;
    if(S==SUM && C_out==1)
      $display($time, "ns %d\t- %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t- %d\t=%d\t(wrong)", A,B,SUM);
		
    // A = 2, B = 3
    #5 A = 8'b00000010; B = 8'b00000011; Add_ctrl = 1;
    #25
    S = A + B;
    if(S == SUM)
      $display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,SUM);
		#5 Add_ctrl = 0;
    #25
    S = A - B;
    if(S==SUM && C_out==1)
      $display($time, "ns %d\t- %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t- %d\t=%d\t(wrong)", A,B,SUM);
		
    // A = 127, B = 127
    #5 A = 8'b01111111; B = 8'b01111111; Add_ctrl = 1;
    #25
    S = A + B;
    if(S==SUM && v==1)
      $display($time, "ns %d\t+ %d\t=%d\t(correct)(overflow)", A,B,SUM);
    else
      $display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,SUM);
		#5 Add_ctrl = 0;
    #25
    S = A - B;
    if(S==SUM && C_out==1)
      $display($time, "ns %d\t- %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t- %d\t=%d\t(wrong)", A,B,SUM);
    
    // A = -128, B = -128
    #5 A = 8'b10000000; B = 8'b10000000; Add_ctrl = 1;
    #25
    S = A + B;
    if(S==SUM && C_out==1 && v==1)
      $display($time, "ns %d\t+ %d\t=%d\t(correct)(overflow)", A,B,SUM);
    else
      $display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,SUM);
		#5 Add_ctrl = 0;
    #25
    S = A - B;
    if(S==SUM && C_out==1)
      $display($time, "ns %d\t- %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t- %d\t=%d\t(wrong)", A,B,SUM);
    
    // A = -128, B = 127
    #5 A = 8'b10000000; B = 8'b01111111; Add_ctrl = 1;
    #25
    S = A + B;
    if(S == SUM)
      $display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,SUM);
		#5 Add_ctrl = 0;
    #25
    S = A - B;
    if(S==SUM && C_out==1 && v==1)
      $display($time, "ns %d\t- %d\t=%d\t(correct)(overflow)", A,B,SUM);
    else
      $display($time, "ns %d\t- %d\t=%d\t(wrong)", A,B,SUM);
		
    // A = -127, B = 127
    #5 A = 8'b10000001; B = 8'b01111111; Add_ctrl = 1;
    #25
    S = A + B;
    if(S==SUM && C_out==1)
      $display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,SUM);
		#5 Add_ctrl = 0;
    #25
    S = A - B;
    if(S==SUM && C_out==1 && v==1)
      $display($time, "ns %d\t- %d\t=%d\t(correct)(overflow)", A,B,SUM);
    else
      $display($time, "ns %d\t- %d\t=%d\t(wrong)", A,B,SUM);
		
    // A = -1, B = -1
    #5 A = 8'b11111111; B = 8'b11111111; Add_ctrl = 1;
    #25
    S = A + B;
    if(S==SUM && C_out==1)
      $display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,SUM);
		#5 Add_ctrl = 0;
    #25
    S = A - B;
    if(S==SUM && C_out==1)
      $display($time, "ns %d\t- %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t- %d\t=%d\t(wrong)", A,B,SUM);
      
    // A = -2, B = -3
    #5 A = 8'b11111110; B = 8'b11111101; Add_ctrl = 1;
    #25
    S = A + B;
    if(S==SUM && C_out==1)
      $display($time, "ns %d\t+ %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t+ %d\t=%d\t(wrong)", A,B,SUM);
		#5 Add_ctrl = 0;
    #25
    S = A - B;
    if(S==SUM && C_out==1)
      $display($time, "ns %d\t- %d\t=%d\t(correct)", A,B,SUM);
    else
      $display($time, "ns %d\t- %d\t=%d\t(wrong)", A,B,SUM);
		#50 $finish;
	end
	
	initial begin
		$dumpfile("gate.vcd");
		$dumpvars;
	end
      
endmodule
