`timescale 1ns / 100ps
module traffic_light(HG,HY,HR,FG,FY,FR,ST_out,TL,TS,clk,reset,C,N,P);
output HG,HY,HR,FG,FY,FR,ST_out;
input TL,TS,clk,reset,C,N,P;
reg HY,FY,ST_out,ST; // Start timer, similar to state and next_state
reg[0:2] state,next_state;

parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101;
assign HG=(state==S0);
assign HR=((state==S2)||(state==S3)||(state==S5));
assign FG=(state==S2);
assign FR=((state==S0)||(state==S1)||(state==S5));

always @(state or TS)
	if((state==S4)&TS) begin
		HY=0;
		FY=0;
	end
	else if(state==S4) begin
		HY=1;
		FY=1;
	end
	else begin
		HY=(state==S1);
		FY=(state==S3);
	end

// flip-flops
always @(posedge clk or posedge reset)
	if(reset) // an asynchronous reset
	begin
		state<=S0;
		ST_out<=1;
	end
	else begin
		state<=next_state;
		ST_out<=ST;
	end

// Combinational circuit
always @(state or C or N or P or TL or TS)
	case(state) // state transition
	S0:if(TL&(C|N|P)) begin
			next_state=S1;
			ST=1;
		end
		else begin
			next_state=S0;
			ST=0;
		end
	S1:if(N) begin
			next_state=S4;
			ST=1;
		end
		else if(P) begin
			next_state=S5;
			ST=1;
		end
		else if(TS&C) begin
			next_state=S2;
			ST=1;
		end
		else begin
			next_state=S1;
			ST=0;
		end
	S2:if(TL|(!C|N|P)) begin
			next_state=S3;
			ST=1;
		end
		else begin
			next_state=S2;
			ST=0;
		end
	S3:if(N) begin
			next_state=S4;
			ST=1;
		end
		else if(P) begin
			next_state=S5;
			ST=1;
		end
		else if(TS) begin
			next_state=S0;
			ST=1;
		end
		else begin
			next_state=S3;
			ST=0;
		end
	S4:if(!N) begin
			next_state=S0;
			ST=1;
		end
		else begin
			next_state=S4;
			ST=0;
		end
	S5:if(TL|!P) begin
			next_state=S0;
			ST=1;
		end
		else begin
			next_state=S5;
			ST=0;
		end
	default: begin
		next_state=S0;
		ST=1;
	end
	endcase
endmodule

