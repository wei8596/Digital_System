`timescale 1ns / 100ps
///////////////////////////////////////////////////////////////////////////////////////
// File			:	multiplier.v
// Author		:	范真瑋 周家池 吳俊忻
// Date			:	2018/06/28
// Version		:	1.b
// Description	:	16-bit direct 2's complement array multiplier (with CSEA)
//
// History
// Date			By		Version		Change Description
// --------------------------------------------------------------------------------
// 2018/06/07	范真瑋	0.1			build the first 4-bit array multiplier
// 2018/06/07	吳俊忻	0.2			implement the direct 2's complement algorithm
// 2018/06/07	范真瑋	1.1			extend to 16 bits
// 2018/06/07	周家池	1.2			modularize the code
// 2018/06/10	吳俊忻	1.3			implement the direct 2's complement algorithm
// 										in 16-bit (cannot synthesize)
// 2018/06/10	吳俊忻	1.4			modify the number of bits of the input zero
// 2018/06/13	吳俊忻	1.5			replace two FAs to HAs
// 2018/06/13	范真瑋	1.6			using CSKA on the last level
// 2018/06/14	吳俊忻	1.7			using CSEA(select adder) on the last level, haven't be optimized
// 2018/06/14	吳俊忻	1.8			optimize RCA area of CSEA
// 2018/06/14	周家池	1.9			modify the coding style of MUX
// 2018/06/26	范真瑋	1.a			fix the high-bit error, add output_valid and input_ready
// 2018/06/28	范真瑋	1.b			change the name to fit the rules
///////////////////////////////////////////////////////////////////////////////////////

// all FA and the '//****//' line may be able to  be optimized

module multiplier(output_valid, prod, a, b, clk, input_ready);
	output reg output_valid;
	output [31:0] prod;
	input [15:0] a;
	input [15:0] b;
	input clk, input_ready;
	wire [14:0] c[15:0]; //c[level][No.]
	wire [14:1] s[15:0]; //s[level][No.] (No need for No.0)
	
	reg [15:0] aa;
	reg [15:0] bb;
	
	// use clk to control output_valid
	always @(posedge clk) begin
		if(input_ready)		
			output_valid = 0;
		else
			output_valid = 1;
	end
	
	// use input_ready to control data
	always @(posedge input_ready) begin
		aa <= a;
		bb <= b;
	end

	assign prod[0] = aa[0] & bb[0];
	
	//level0
	HA A0(c[0][0], prod[1], (aa[1]&bb[0]), (aa[0]&bb[1]));
	HA A1(c[0][1], s[0][1], (aa[2]&bb[0]), (aa[1]&bb[1]));
	HA A2(c[0][2], s[0][2], (aa[3]&bb[0]), (aa[2]&bb[1]));
	HA A3(c[0][3], s[0][3], (aa[4]&bb[0]), (aa[3]&bb[1]));
	HA A4(c[0][4], s[0][4], (aa[5]&bb[0]), (aa[4]&bb[1]));
	HA A5(c[0][5], s[0][5], (aa[6]&bb[0]), (aa[5]&bb[1]));
	HA A6(c[0][6], s[0][6], (aa[7]&bb[0]), (aa[6]&bb[1]));
	HA A7(c[0][7], s[0][7], (aa[8]&bb[0]), (aa[7]&bb[1]));
	HA A8(c[0][8], s[0][8], (aa[9]&bb[0]), (aa[8]&bb[1]));
	HA A9(c[0][9], s[0][9], (aa[10]&bb[0]), (aa[9]&bb[1]));
	HA A10(c[0][10], s[0][10], (aa[11]&bb[0]), (aa[10]&bb[1]));
	HA A11(c[0][11], s[0][11], (aa[12]&bb[0]), (aa[11]&bb[1]));
	HA A12(c[0][12], s[0][12], (aa[13]&bb[0]), (aa[12]&bb[1]));
	HA A13(c[0][13], s[0][13], (aa[14]&bb[0]), (aa[13]&bb[1]));
	HA1 A14(c[0][14], s[0][14], (aa[15]&bb[0]), (aa[14]&bb[1]));	//****//
	
	//level1
	FA0 A15(c[1][0], prod[2], s[0][1], (aa[0]&bb[2]), c[0][0]);
	FA0 A16(c[1][1], s[1][1], s[0][2], (aa[1]&bb[2]), c[0][1]);
	FA0 A17(c[1][2], s[1][2], s[0][3], (aa[2]&bb[2]), c[0][2]);
	FA0 A18(c[1][3], s[1][3], s[0][4], (aa[3]&bb[2]), c[0][3]);
	FA0 A19(c[1][4], s[1][4], s[0][5], (aa[4]&bb[2]), c[0][4]);
	FA0 A20(c[1][5], s[1][5], s[0][6], (aa[5]&bb[2]), c[0][5]);
	FA0 A21(c[1][6], s[1][6], s[0][7], (aa[6]&bb[2]), c[0][6]);
	FA0 A22(c[1][7], s[1][7], s[0][8], (aa[7]&bb[2]), c[0][7]);
	FA0 A23(c[1][8], s[1][8], s[0][9], (aa[8]&bb[2]), c[0][8]);
	FA0 A24(c[1][9], s[1][9], s[0][10], (aa[9]&bb[2]), c[0][9]);
	FA0 A25(c[1][10], s[1][10], s[0][11], (aa[10]&bb[2]), c[0][10]);
	FA0 A26(c[1][11], s[1][11], s[0][12], (aa[11]&bb[2]), c[0][11]);
	FA0 A27(c[1][12], s[1][12], s[0][13], (aa[12]&bb[2]), c[0][12]);
	FA1 A28(c[1][13], s[1][13], s[0][14], (aa[13]&bb[2]), c[0][13]);
	FA1 A29(c[1][14], s[1][14], (aa[15]&bb[1]), (aa[14]&bb[2]), c[0][14]);
	
	//level2
	FA0 A30(c[2][0], prod[3], s[1][1], (aa[0]&bb[3]), c[1][0]);
	FA0 A31(c[2][1], s[2][1], s[1][2], (aa[1]&bb[3]), c[1][1]);
	FA0 A32(c[2][2], s[2][2], s[1][3], (aa[2]&bb[3]), c[1][2]);
	FA0 A33(c[2][3], s[2][3], s[1][4], (aa[3]&bb[3]), c[1][3]);
	FA0 A34(c[2][4], s[2][4], s[1][5], (aa[4]&bb[3]), c[1][4]);
	FA0 A35(c[2][5], s[2][5], s[1][6], (aa[5]&bb[3]), c[1][5]);
	FA0 A36(c[2][6], s[2][6], s[1][7], (aa[6]&bb[3]), c[1][6]);
	FA0 A37(c[2][7], s[2][7], s[1][8], (aa[7]&bb[3]), c[1][7]);
	FA0 A38(c[2][8], s[2][8], s[1][9], (aa[8]&bb[3]), c[1][8]);
	FA0 A39(c[2][9], s[2][9], s[1][10], (aa[9]&bb[3]), c[1][9]);
	FA0 A40(c[2][10], s[2][10], s[1][11], (aa[10]&bb[3]), c[1][10]);
	FA0 A41(c[2][11], s[2][11], s[1][12], (aa[11]&bb[3]), c[1][11]);
	FA1 A42(c[2][12], s[2][12], s[1][13], (aa[12]&bb[3]), c[1][12]);
	FA1 A43(c[2][13], s[2][13], s[1][14], (aa[13]&bb[3]), c[1][13]);
	FA1 A44(c[2][14], s[2][14], (aa[15]&bb[2]), (aa[14]&bb[3]), c[1][14]);
	
	//level3
	FA0 A45(c[3][0], prod[4], s[2][1], (aa[0]&bb[4]), c[2][0]);
	FA0 A46(c[3][1], s[3][1], s[2][2], (aa[1]&bb[4]), c[2][1]);
	FA0 A47(c[3][2], s[3][2], s[2][3], (aa[2]&bb[4]), c[2][2]);
	FA0 A48(c[3][3], s[3][3], s[2][4], (aa[3]&bb[4]), c[2][3]);
	FA0 A49(c[3][4], s[3][4], s[2][5], (aa[4]&bb[4]), c[2][4]);
	FA0 A50(c[3][5], s[3][5], s[2][6], (aa[5]&bb[4]), c[2][5]);
	FA0 A51(c[3][6], s[3][6], s[2][7], (aa[6]&bb[4]), c[2][6]);
	FA0 A52(c[3][7], s[3][7], s[2][8], (aa[7]&bb[4]), c[2][7]);
	FA0 A53(c[3][8], s[3][8], s[2][9], (aa[8]&bb[4]), c[2][8]);
	FA0 A54(c[3][9], s[3][9], s[2][10], (aa[9]&bb[4]), c[2][9]);
	FA0 A55(c[3][10], s[3][10], s[2][11], (aa[10]&bb[4]), c[2][10]);
	FA1 A56(c[3][11], s[3][11], s[2][12], (aa[11]&bb[4]), c[2][11]);
	FA1 A57(c[3][12], s[3][12], s[2][13], (aa[12]&bb[4]), c[2][12]);
	FA1 A58(c[3][13], s[3][13], s[2][14], (aa[13]&bb[4]), c[2][13]);
	FA1 A59(c[3][14], s[3][14], (aa[15]&bb[3]), (aa[14]&bb[4]), c[2][14]);
	
	//level4
	FA0 A60(c[4][0], prod[5], s[3][1], (aa[0]&bb[5]), c[3][0]);
	FA0 A61(c[4][1], s[4][1], s[3][2], (aa[1]&bb[5]), c[3][1]);
	FA0 A62(c[4][2], s[4][2], s[3][3], (aa[2]&bb[5]), c[3][2]);
	FA0 A63(c[4][3], s[4][3], s[3][4], (aa[3]&bb[5]), c[3][3]);
	FA0 A64(c[4][4], s[4][4], s[3][5], (aa[4]&bb[5]), c[3][4]);
	FA0 A65(c[4][5], s[4][5], s[3][6], (aa[5]&bb[5]), c[3][5]);
	FA0 A66(c[4][6], s[4][6], s[3][7], (aa[6]&bb[5]), c[3][6]);
	FA0 A67(c[4][7], s[4][7], s[3][8], (aa[7]&bb[5]), c[3][7]);
	FA0 A68(c[4][8], s[4][8], s[3][9], (aa[8]&bb[5]), c[3][8]);
	FA0 A69(c[4][9], s[4][9], s[3][10], (aa[9]&bb[5]), c[3][9]);
	FA1 A70(c[4][10], s[4][10], s[3][11], (aa[10]&bb[5]), c[3][10]);
	FA1 A71(c[4][11], s[4][11], s[3][12], (aa[11]&bb[5]), c[3][11]);
	FA1 A72(c[4][12], s[4][12], s[3][13], (aa[12]&bb[5]), c[3][12]);
	FA1 A73(c[4][13], s[4][13], s[3][14], (aa[13]&bb[5]), c[3][13]);
	FA1 A74(c[4][14], s[4][14], (aa[15]&bb[4]), (aa[14]&bb[5]), c[3][14]);
	
	//level5
	FA0 A75(c[5][0], prod[6], s[4][1], (aa[0]&bb[6]), c[4][0]);
	FA0 A76(c[5][1], s[5][1], s[4][2], (aa[1]&bb[6]), c[4][1]);
	FA0 A77(c[5][2], s[5][2], s[4][3], (aa[2]&bb[6]), c[4][2]);
	FA0 A78(c[5][3], s[5][3], s[4][4], (aa[3]&bb[6]), c[4][3]);
	FA0 A79(c[5][4], s[5][4], s[4][5], (aa[4]&bb[6]), c[4][4]);
	FA0 A80(c[5][5], s[5][5], s[4][6], (aa[5]&bb[6]), c[4][5]);
	FA0 A81(c[5][6], s[5][6], s[4][7], (aa[6]&bb[6]), c[4][6]);
	FA0 A82(c[5][7], s[5][7], s[4][8], (aa[7]&bb[6]), c[4][7]);
	FA0 A83(c[5][8], s[5][8], s[4][9], (aa[8]&bb[6]), c[4][8]);
	FA1 A84(c[5][9], s[5][9], s[4][10], (aa[9]&bb[6]), c[4][9]);
	FA1 A85(c[5][10], s[5][10], s[4][11], (aa[10]&bb[6]), c[4][10]);
	FA1 A86(c[5][11], s[5][11], s[4][12], (aa[11]&bb[6]), c[4][11]);
	FA1 A87(c[5][12], s[5][12], s[4][13], (aa[12]&bb[6]), c[4][12]);
	FA1 A88(c[5][13], s[5][13], s[4][14], (aa[13]&bb[6]), c[4][13]);
	FA1 A89(c[5][14], s[5][14], (aa[15]&bb[5]), (aa[14]&bb[6]), c[4][14]);
	
	//level6
	FA0 A90(c[6][0], prod[7], s[5][1], (aa[0]&bb[7]), c[5][0]);
	FA0 A91(c[6][1], s[6][1], s[5][2], (aa[1]&bb[7]), c[5][1]);
	FA0 A92(c[6][2], s[6][2], s[5][3], (aa[2]&bb[7]), c[5][2]);
	FA0 A93(c[6][3], s[6][3], s[5][4], (aa[3]&bb[7]), c[5][3]);
	FA0 A94(c[6][4], s[6][4], s[5][5], (aa[4]&bb[7]), c[5][4]);
	FA0 A95(c[6][5], s[6][5], s[5][6], (aa[5]&bb[7]), c[5][5]);
	FA0 A96(c[6][6], s[6][6], s[5][7], (aa[6]&bb[7]), c[5][6]);
	FA0 A97(c[6][7], s[6][7], s[5][8], (aa[7]&bb[7]), c[5][7]);
	FA1 A98(c[6][8], s[6][8], s[5][9], (aa[8]&bb[7]), c[5][8]);
	FA1 A99(c[6][9], s[6][9], s[5][10], (aa[9]&bb[7]), c[5][9]);
	FA1 A100(c[6][10], s[6][10], s[5][11], (aa[10]&bb[7]), c[5][10]);
	FA1 A101(c[6][11], s[6][11], s[5][12], (aa[11]&bb[7]), c[5][11]);
	FA1 A102(c[6][12], s[6][12], s[5][13], (aa[12]&bb[7]), c[5][12]);
	FA1 A103(c[6][13], s[6][13], s[5][14], (aa[13]&bb[7]), c[5][13]);
	FA1 A104(c[6][14], s[6][14], (aa[15]&bb[6]), (aa[14]&bb[7]), c[5][14]);
	
	//level7
	FA0 A105(c[7][0], prod[8], s[6][1], (aa[0]&bb[8]), c[6][0]);
	FA0 A106(c[7][1], s[7][1], s[6][2], (aa[1]&bb[8]), c[6][1]);
	FA0 A107(c[7][2], s[7][2], s[6][3], (aa[2]&bb[8]), c[6][2]);
	FA0 A108(c[7][3], s[7][3], s[6][4], (aa[3]&bb[8]), c[6][3]);
	FA0 A109(c[7][4], s[7][4], s[6][5], (aa[4]&bb[8]), c[6][4]);
	FA0 A110(c[7][5], s[7][5], s[6][6], (aa[5]&bb[8]), c[6][5]);
	FA0 A111(c[7][6], s[7][6], s[6][7], (aa[6]&bb[8]), c[6][6]);
	FA1 A112(c[7][7], s[7][7], s[6][8], (aa[7]&bb[8]), c[6][7]);
	FA1 A113(c[7][8], s[7][8], s[6][9], (aa[8]&bb[8]), c[6][8]);
	FA1 A114(c[7][9], s[7][9], s[6][10], (aa[9]&bb[8]), c[6][9]);
	FA1 A115(c[7][10], s[7][10], s[6][11], (aa[10]&bb[8]), c[6][10]);
	FA1 A116(c[7][11], s[7][11], s[6][12], (aa[11]&bb[8]), c[6][11]);
	FA1 A117(c[7][12], s[7][12], s[6][13], (aa[12]&bb[8]), c[6][12]);
	FA1 A118(c[7][13], s[7][13], s[6][14], (aa[13]&bb[8]), c[6][13]);
	FA1 A119(c[7][14], s[7][14], (aa[15]&bb[7]), (aa[14]&bb[8]), c[6][14]);
	
	//level8
	FA0 A120(c[8][0], prod[9], s[7][1], (aa[0]&bb[9]), c[7][0]);
	FA0 A121(c[8][1], s[8][1], s[7][2], (aa[1]&bb[9]), c[7][1]);
	FA0 A122(c[8][2], s[8][2], s[7][3], (aa[2]&bb[9]), c[7][2]);
	FA0 A123(c[8][3], s[8][3], s[7][4], (aa[3]&bb[9]), c[7][3]);
	FA0 A124(c[8][4], s[8][4], s[7][5], (aa[4]&bb[9]), c[7][4]);
	FA0 A125(c[8][5], s[8][5], s[7][6], (aa[5]&bb[9]), c[7][5]);
	FA1 A126(c[8][6], s[8][6], s[7][7], (aa[6]&bb[9]), c[7][6]);
	FA1 A127(c[8][7], s[8][7], s[7][8], (aa[7]&bb[9]), c[7][7]);
	FA1 A128(c[8][8], s[8][8], s[7][9], (aa[8]&bb[9]), c[7][8]);
	FA1 A129(c[8][9], s[8][9], s[7][10], (aa[9]&bb[9]), c[7][9]);
	FA1 A130(c[8][10], s[8][10], s[7][11], (aa[10]&bb[9]), c[7][10]);
	FA1 A131(c[8][11], s[8][11], s[7][12], (aa[11]&bb[9]), c[7][11]);
	FA1 A132(c[8][12], s[8][12], s[7][13], (aa[12]&bb[9]), c[7][12]);
	FA1 A133(c[8][13], s[8][13], s[7][14], (aa[13]&bb[9]), c[7][13]);
	FA1 A134(c[8][14], s[8][14], (aa[15]&bb[8]), (aa[14]&bb[9]), c[7][14]);
	
	//level9
	FA0 A135(c[9][0], prod[10], s[8][1], (aa[0]&bb[10]), c[8][0]);
	FA0 A136(c[9][1], s[9][1], s[8][2], (aa[1]&bb[10]), c[8][1]);
	FA0 A137(c[9][2], s[9][2], s[8][3], (aa[2]&bb[10]), c[8][2]);
	FA0 A138(c[9][3], s[9][3], s[8][4], (aa[3]&bb[10]), c[8][3]);
	FA0 A139(c[9][4], s[9][4], s[8][5], (aa[4]&bb[10]), c[8][4]);
	FA1 A140(c[9][5], s[9][5], s[8][6], (aa[5]&bb[10]), c[8][5]);
	FA1 A141(c[9][6], s[9][6], s[8][7], (aa[6]&bb[10]), c[8][6]);
	FA1 A142(c[9][7], s[9][7], s[8][8], (aa[7]&bb[10]), c[8][7]);
	FA1 A143(c[9][8], s[9][8], s[8][9], (aa[8]&bb[10]), c[8][8]);
	FA1 A144(c[9][9], s[9][9], s[8][10], (aa[9]&bb[10]), c[8][9]);
	FA1 A145(c[9][10], s[9][10], s[8][11], (aa[10]&bb[10]), c[8][10]);
	FA1 A146(c[9][11], s[9][11], s[8][12], (aa[11]&bb[10]), c[8][11]);
	FA1 A147(c[9][12], s[9][12], s[8][13], (aa[12]&bb[10]), c[8][12]);
	FA1 A148(c[9][13], s[9][13], s[8][14], (aa[13]&bb[10]), c[8][13]);
	FA1 A149(c[9][14], s[9][14], (aa[15]&bb[9]), (aa[14]&bb[10]), c[8][14]);
	
	//level10
	FA0 A150(c[10][0], prod[11], s[9][1], (aa[0]&bb[11]), c[9][0]);
	FA0 A151(c[10][1], s[10][1], s[9][2], (aa[1]&bb[11]), c[9][1]);
	FA0 A152(c[10][2], s[10][2], s[9][3], (aa[2]&bb[11]), c[9][2]);
	FA0 A153(c[10][3], s[10][3], s[9][4], (aa[3]&bb[11]), c[9][3]);
	FA1 A154(c[10][4], s[10][4], s[9][5], (aa[4]&bb[11]), c[9][4]);
	FA1 A155(c[10][5], s[10][5], s[9][6], (aa[5]&bb[11]), c[9][5]);
	FA1 A156(c[10][6], s[10][6], s[9][7], (aa[6]&bb[11]), c[9][6]);
	FA1 A157(c[10][7], s[10][7], s[9][8], (aa[7]&bb[11]), c[9][7]);
	FA1 A158(c[10][8], s[10][8], s[9][9], (aa[8]&bb[11]), c[9][8]);
	FA1 A159(c[10][9], s[10][9], s[9][10], (aa[9]&bb[11]), c[9][9]);
	FA1 A160(c[10][10], s[10][10], s[9][11], (aa[10]&bb[11]), c[9][10]);
	FA1 A161(c[10][11], s[10][11], s[9][12], (aa[11]&bb[11]), c[9][11]);
	FA1 A162(c[10][12], s[10][12], s[9][13], (aa[12]&bb[11]), c[9][12]);
	FA1 A163(c[10][13], s[10][13], s[9][14], (aa[13]&bb[11]), c[9][13]);
	FA1 A164(c[10][14], s[10][14], (aa[15]&bb[10]), (aa[14]&bb[11]), c[9][14]);
	
	//level11
	FA0 A165(c[11][0], prod[12], s[10][1], (aa[0]&bb[12]), c[10][0]);
	FA0 A166(c[11][1], s[11][1], s[10][2], (aa[1]&bb[12]), c[10][1]);
	FA0 A167(c[11][2], s[11][2], s[10][3], (aa[2]&bb[12]), c[10][2]);
	FA1 A168(c[11][3], s[11][3], s[10][4], (aa[3]&bb[12]), c[10][3]);
	FA1 A169(c[11][4], s[11][4], s[10][5], (aa[4]&bb[12]), c[10][4]);
	FA1 A170(c[11][5], s[11][5], s[10][6], (aa[5]&bb[12]), c[10][5]);
	FA1 A171(c[11][6], s[11][6], s[10][7], (aa[6]&bb[12]), c[10][6]);
	FA1 A172(c[11][7], s[11][7], s[10][8], (aa[7]&bb[12]), c[10][7]);
	FA1 A173(c[11][8], s[11][8], s[10][9], (aa[8]&bb[12]), c[10][8]);
	FA1 A174(c[11][9], s[11][9], s[10][10], (aa[9]&bb[12]), c[10][9]);
	FA1 A175(c[11][10], s[11][10], s[10][11], (aa[10]&bb[12]), c[10][10]);
	FA1 A176(c[11][11], s[11][11], s[10][12], (aa[11]&bb[12]), c[10][11]);
	FA1 A177(c[11][12], s[11][12], s[10][13], (aa[12]&bb[12]), c[10][12]);
	FA1 A178(c[11][13], s[11][13], s[10][14], (aa[13]&bb[12]), c[10][13]);
	FA1 A179(c[11][14], s[11][14], (aa[15]&bb[11]), (aa[14]&bb[12]), c[10][14]);
	
	//level12
	FA0 A180(c[12][0], prod[13], s[11][1], (aa[0]&bb[13]), c[11][0]);
	FA0 A181(c[12][1], s[12][1], s[11][2], (aa[1]&bb[13]), c[11][1]);
	FA1 A182(c[12][2], s[12][2], s[11][3], (aa[2]&bb[13]), c[11][2]);
	FA1 A183(c[12][3], s[12][3], s[11][4], (aa[3]&bb[13]), c[11][3]);
	FA1 A184(c[12][4], s[12][4], s[11][5], (aa[4]&bb[13]), c[11][4]);
	FA1 A185(c[12][5], s[12][5], s[11][6], (aa[5]&bb[13]), c[11][5]);
	FA1 A186(c[12][6], s[12][6], s[11][7], (aa[6]&bb[13]), c[11][6]);
	FA1 A187(c[12][7], s[12][7], s[11][8], (aa[7]&bb[13]), c[11][7]);
	FA1 A188(c[12][8], s[12][8], s[11][9], (aa[8]&bb[13]), c[11][8]);
	FA1 A189(c[12][9], s[12][9], s[11][10], (aa[9]&bb[13]), c[11][9]);
	FA1 A190(c[12][10], s[12][10], s[11][11], (aa[10]&bb[13]), c[11][10]);
	FA1 A191(c[12][11], s[12][11], s[11][12], (aa[11]&bb[13]), c[11][11]);
	FA1 A192(c[12][12], s[12][12], s[11][13], (aa[12]&bb[13]), c[11][12]);
	FA1 A193(c[12][13], s[12][13], s[11][14], (aa[13]&bb[13]), c[11][13]);
	FA1 A194(c[12][14], s[12][14], (aa[15]&bb[12]), (aa[14]&bb[13]), c[11][14]);
	
	//level13
	FA0 A195(c[13][0], prod[14], s[12][1], (aa[0]&bb[14]), c[12][0]);
	FA1 A196(c[13][1], s[13][1], s[12][2], (aa[1]&bb[14]), c[12][1]);
	FA1 A197(c[13][2], s[13][2], s[12][3], (aa[2]&bb[14]), c[12][2]);
	FA1 A198(c[13][3], s[13][3], s[12][4], (aa[3]&bb[14]), c[12][3]);
	FA1 A199(c[13][4], s[13][4], s[12][5], (aa[4]&bb[14]), c[12][4]);
	FA1 A200(c[13][5], s[13][5], s[12][6], (aa[5]&bb[14]), c[12][5]);
	FA1 A201(c[13][6], s[13][6], s[12][7], (aa[6]&bb[14]), c[12][6]);
	FA1 A202(c[13][7], s[13][7], s[12][8], (aa[7]&bb[14]), c[12][7]);
	FA1 A203(c[13][8], s[13][8], s[12][9], (aa[8]&bb[14]), c[12][8]);
	FA1 A204(c[13][9], s[13][9], s[12][10], (aa[9]&bb[14]), c[12][9]);
	FA1 A205(c[13][10], s[13][10], s[12][11], (aa[10]&bb[14]), c[12][10]);
	FA1 A206(c[13][11], s[13][11], s[12][12], (aa[11]&bb[14]), c[12][11]);
	FA1 A207(c[13][12], s[13][12], s[12][13], (aa[12]&bb[14]), c[12][12]);
	FA1 A208(c[13][13], s[13][13], s[12][14], (aa[13]&bb[14]), c[12][13]);
	FA1 A209(c[13][14], s[13][14], (aa[15]&bb[13]), (aa[14]&bb[14]), c[12][14]);
	
	//level14
	FA2 A210(c[14][0], prod[15], s[13][1], (aa[0]&bb[15]), c[13][0]);
	FA2 A211(c[14][1], s[14][1], s[13][2], (aa[1]&bb[15]), c[13][1]);
	FA2 A212(c[14][2], s[14][2], s[13][3], (aa[2]&bb[15]), c[13][2]);
	FA2 A213(c[14][3], s[14][3], s[13][4], (aa[3]&bb[15]), c[13][3]);
	FA2 A214(c[14][4], s[14][4], s[13][5], (aa[4]&bb[15]), c[13][4]);
	FA2 A215(c[14][5], s[14][5], s[13][6], (aa[5]&bb[15]), c[13][5]);
	FA2 A216(c[14][6], s[14][6], s[13][7], (aa[6]&bb[15]), c[13][6]);
	FA2 A217(c[14][7], s[14][7], s[13][8], (aa[7]&bb[15]), c[13][7]);
	FA2 A218(c[14][8], s[14][8], s[13][9], (aa[8]&bb[15]), c[13][8]);
	FA2 A219(c[14][9], s[14][9], s[13][10], (aa[9]&bb[15]), c[13][9]);
	FA2 A220(c[14][10], s[14][10], s[13][11], (aa[10]&bb[15]), c[13][10]);
	FA2 A221(c[14][11], s[14][11], s[13][12], (aa[11]&bb[15]), c[13][11]);
	FA2 A222(c[14][12], s[14][12], s[13][13], (aa[12]&bb[15]), c[13][12]);
	FA2 A223(c[14][13], s[14][13], s[13][14], (aa[13]&bb[15]), c[13][13]);
	FA2 A224(c[14][14], s[14][14], (aa[15]&bb[14]), (aa[14]&bb[15]), c[13][14]);
	
	//level15
	//CSKA cska(c[15][11], prod[27:16], s[14][12:1], c[14][11:0]);
	HA3 A225(c[15][0], prod[16], s[14][1], c[14][0]);		//****//
	FA3 A226(c[15][1], prod[17], s[14][2], c[15][0], c[14][1]);
	FA3 A227(c[15][2], prod[18], s[14][3], c[15][1], c[14][2]);
	FA3 A228(c[15][3], prod[19], s[14][4], c[15][2], c[14][3]);
	CSEA csea(prod[31], prod[30:20], (aa[15]&bb[15]), s[14][14:5], c[14][14:4], c[15][3]);
	//FA3 A229(c[15][4], prod[20], s[14][5], c[15][3], c[14][4]);
	//FA3 A230(c[15][5], prod[21], s[14][6], c[15][4], c[14][5]);
	//FA3 A231(c[15][6], prod[22], s[14][7], c[15][5], c[14][6]);
	//FA3 A232(c[15][7], prod[23], s[14][8], c[15][6], c[14][7]);
	//FA3 A233(c[15][8], prod[24], s[14][9], c[15][7], c[14][8]);
	//FA3 A234(c[15][9], prod[25], s[14][10], c[15][8], c[14][9]);
	//FA3 A235(c[15][10], prod[26], s[14][11], c[15][9], c[14][10]);
	//FA3 A236(c[15][11], prod[27], s[14][12], c[15][10], c[14][11]);
	//FA3 A237(c[15][12], prod[28], s[14][13], c[15][11], c[14][12]);
	//FA3 A238(c[15][13], prod[29], s[14][14], c[15][12], c[14][13]);
	//FA3 A239(prod[31], prod[30], (aa[15]&bb[15]), c[15][13], c[14][14]);

endmodule

module HA(Cout, Sum, A, B);
	output Cout, Sum;
	input A, B;

	assign Cout = A & B;
	assign Sum = A ^ B;
	
endmodule



//****//
//Z = A; X = B; Y = C;
// FA0 // = FA
module FA0(C_out, SUM, A, B, C_in) ;
input A, B;
input C_in;
output SUM;
output C_out;	//when V set ,overflow 

wire w1, w2, w3;

assign w1 = A ^ B;
assign w2 = w1 & C_in;
assign w3 = A & B;

assign SUM = w1 ^ C_in;
assign C_out = w2 | w3; 

endmodule

// FA1 // = FA( ~A, B, C_in)
module FA1(C_out, SUM, A, B, C_in) ;
input A, B;
input C_in;
output SUM;
output C_out;	//when V set ,overflow 

wire w1, w2, w3;

assign w1 = (~A) ^ B;
assign w2 = w1 & C_in;//NIMP (w1,C)
assign w3 = (~A) & B;

assign SUM = ~(w1 ^ C_in);
//assign SUM = (w1 ^ C_in);
assign C_out = w2 | w3; 

endmodule


// FA2 // = FA( ~A, ~B, C_in)
module FA2(C_out, SUM, A, B, C_in) ;
input A, B;
input C_in;
output SUM;
output C_out;	//when V set ,overflow 

wire w1, w2, w3;

assign w1 = (~A) ^ (~B);
assign w2 = w1 & C_in;//NIMP (w1,C)
assign w3 = (~A) & (~B);

assign SUM = w1 ^ C_in;
assign C_out = ~(w2 | w3); 

endmodule

// FA3 // = FA( A, ~B, ~C_in)
module FA3(C_out, SUM, A, B, C_in) ;
input A, B;
input C_in;
output SUM;
output C_out;	//when V set ,overflow 

wire w1, w2, w3;

assign w1 = A ^ (~B);
assign w2 = w1 & (~C_in);//NIMP (w1,C)
assign w3 = A & (~B);

assign SUM = w1 ^ (~C_in);
assign C_out = ~(w2 | w3); 

endmodule

// HA1 // = FA( ~A, B, 0)
module HA1(C_out, SUM, A, C_in) ;
input A;
input C_in;
output SUM;
output C_out;	//when V set ,overflow 

assign SUM = A ^ C_in;
assign C_out = (~A) & C_in; 

endmodule

// HA3 // = FA( A, ~0, ~C_in)
module HA3(C_out, SUM, A, C_in) ;
input A;
input C_in;
output SUM;
output C_out;	//when V set ,overflow 

assign SUM = A ^ C_in;
assign C_out = (~A) & C_in; 

endmodule

// 4-bit Ripple Carry Adder (for last level)
//module RCA(Cout, Sum, A, B, Cin);
//	output Cout;
//	output [3:0] Sum;
//	input [3:0] A, B;
//	input Cin;
//	
//	wire [3:1] c;
//
//	FA3 fa0(c[1], Sum[0], A[0], B[0], Cin);
//	FA3 fa1(c[2], Sum[1], A[1], B[1], c[1]);
//	FA3 fa2(c[3], Sum[2], A[2], B[2], c[2]);
//	FA3 fa3(Cout, Sum[3], A[3], B[3], c[3]);
//
//endmodule

// skip
//module skipLogic(cin_next, a, b, cin, cout);
//	output cin_next;
//	input [3:0] a, b;
//	input cin, cout;
//
//	wire p0, p1, p2, p3, P;
//	
//	assign p0 = aa[0] | bb[0];
//	assign p1 = aa[1] | bb[1];
//	assign p2 = aa[2] | bb[2];
//	assign p3 = aa[3] | bb[3];
//
//	assign P = p0 & p1 & p2 & p3 & cin;
//	assign cin_next = P | cout;
//
//endmodule

// 12-bit Carry Skip Adder
//module CSKA(Cout, Sum, A, B);
//	output Cout;
//	output [11:0] Sum;
//	input [11:0] A, B;
//	
//	wire [2:0] couts;
//	wire [1:0] e; 
//
//	RCA rca0(couts[0], Sum[3:0], A[3:0], B[3:0], 1'b0);
//	RCA rca1(couts[1], Sum[7:4], A[7:4], B[7:4], e[0]);
//	RCA rca2(couts[2], Sum[11:8], A[11:8], B[11:8], e[1]);
//
//	skipLogic skip0(e[0], A[3:0], B[3:0], 1'b0, couts[0]);
//	skipLogic skip1(e[1], A[7:4], B[7:4], e[0], couts[1]);
//	skipLogic skip2(Cout, A[11:8], B[11:8], e[1], couts[2]);
//
//endmodule

///////////////////
// HA3_1 // = FA( A, ~1, ~C_in)
module HA3_1(C_out, SUM, A, C_in) ;
input A;
input C_in;
output SUM;
output C_out;	//when V set ,overflow 

assign SUM = ~(A ^ C_in);
assign C_out = ~( A & (~C_in));

endmodule

// 3-bit Ripple Carry Adder (for last level) for 0in
module RCA3_0(Cout, Sum, A, B);
	output Cout;
	output [2:0] Sum;
	input [2:0] A, B;
	
	wire [2:1] c;

	HA3 fa0(c[1], Sum[0], A[0], B[0]);
	FA3 fa1(c[2], Sum[1], A[1], B[1], c[1]);
	FA3 fa2(Cout, Sum[2], A[2], B[2], c[2]);

endmodule
// 3-bit Ripple Carry Adder (for last level) for 1in
module RCA3_1(Cout, Sum, A, B);
	output Cout;
	output [2:0] Sum;
	input [2:0] A, B;
	
	wire [2:1] c;

	HA3_1 fa0(c[1], Sum[0], A[0], B[0]);
	FA3 fa1(c[2], Sum[1], A[1], B[1], c[1]);
	FA3 fa2(Cout, Sum[2], A[2], B[2], c[2]);

endmodule

// 4-bit Ripple Carry Adder (for last level) for 0in
module RCA4_0(Cout, Sum, A, B);
	output Cout;
	output [3:0] Sum;
	input [3:0] A, B;
	
	wire [3:1] c;

	HA3 a0(c[1], Sum[0], A[0], B[0]);
	FA3 a1(c[2], Sum[1], A[1], B[1], c[1]);
	FA3 a2(c[3], Sum[2], A[2], B[2], c[2]);
	FA3 a3(Cout, Sum[3], A[3], B[3], c[3]);

endmodule

// 4-bit Ripple Carry Adder (for last level) for 1in
module RCA4_1(Cout, Sum, A, B);
	output Cout;
	output [3:0] Sum;
	input [3:0] A, B;
	
	wire [3:1] c;

	HA3_1 a0(c[1], Sum[0], A[0], B[0]);
	FA3 a1(c[2], Sum[1], A[1], B[1], c[1]);
	FA3 a2(c[3], Sum[2], A[2], B[2], c[2]);
	FA3 a3(Cout, Sum[3], A[3], B[3], c[3]);

endmodule

// 3-bit Multiplexer (for last level)
module MUX3(Z, A, B, Sel);
	output [2:0] Z;
	input [2:0] A, B;
	input Sel;
/*
	assign Z[0] = (A[0] & (~Sel)) | (B[0] & Sel);
	assign Z[1] = (A[1] & (~Sel)) | (B[1] & Sel);
	assign Z[2] = (A[2] & (~Sel)) | (B[2] & Sel);
*/
	assign Z = Sel ? B : A;
endmodule

// 4-bit Multiplexer (for last level)
module MUX4(Z, A, B, Sel);
	output [3:0] Z;
	input [3:0] A, B;
	input Sel;
/*
	assign Z[0] = (A[0] & ~Sel) | (B[0] & Sel);
	assign Z[1] = (A[1] & ~Sel) | (B[1] & Sel);
	assign Z[2] = (A[2] & ~Sel) | (B[2] & Sel);
	assign Z[3] = (A[3] & ~Sel) | (B[3] & Sel);
*/
	assign Z = Sel ? B : A;
endmodule

//select
module CSEA(Cout, Sum, A10, Ain, B, Cin);
	output Cout;
	output [10:0] Sum;
	input Cin, A10;
	input [9:0] Ain;
	input [10:0] B;
	wire [10:0] A;
	assign A = {A10,Ain[9:0]};
	wire [2:0] couts [1:0]; //[level] [cin]
	wire [1:0] e; //for carry
	wire [10:0] sum_t [1:0]; //[Sum] [cin]
	
	RCA4_0 rca0_0 (couts[0][0], sum_t[0][3:0], A[3:0], B[3:0]);
	RCA4_1 rca0_1 (couts[1][0], sum_t[1][3:0], A[3:0], B[3:0]);
	MUX4 mux0(Sum[3:0], sum_t[0][3:0], sum_t[1][3:0], Cin);
	assign e[0] = ( Cin & couts[1][0] ) | couts[0][0] ;
	
	RCA4_0 rca1_0 (couts[0][1], sum_t[0][7:4], A[7:4], B[7:4]);
	RCA4_1 rca1_1 (couts[1][1], sum_t[1][7:4], A[7:4], B[7:4]);
	MUX4 mux1(Sum[7:4], sum_t[0][7:4], sum_t[1][7:4], e[0]);
	assign e[1] = ( e[0] & couts[1][1] ) | couts[0][1] ;
	
	RCA3_0 rca2_0 (couts[0][2], sum_t[0][10:8], A[10:8], B[10:8]);
	RCA3_1 rca2_1 (couts[1][2], sum_t[1][10:8], A[10:8], B[10:8]);
	MUX3 mux2(Sum[10:8], sum_t[0][10:8], sum_t[1][10:8], e[1]);
	assign Cout = ( e[1] & couts[1][2] ) | couts[0][2] ;
	
endmodule

