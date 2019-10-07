module sample_feed_fsm(
	input logic CLK,
	input logic RESET,
	input logic sample_ready,
	input logic idle_signal,
	input logic fin_signal,
	input logic [31:0] fir_1,
	input logic [31:0] fir_2,
	input logic [31:0] fir_3,
	input logic [31:0] fir_4,
	input logic [31:0] result,
	output logic [31:0] sample_feed,
	output logic start,
	output logic [31:0] vol_out_1,
	output logic [31:0] vol_out_2,
	output logic [31:0] vol_out_3,
	output logic [31:0] vol_out_4
);

logic [31:0] p_vol_out_1, p_vol_out_2, p_vol_out_3, p_vol_out_4;

enum logic [3:0]{
	IDLE		= 4'd0,
	WAIT_1	= 4'd1,
	INTER_1	= 4'd2,
	WAIT_2 	= 4'd3,
	INTER_2	= 4'd4,
	WAIT_3 	= 4'd5,
	INTER_3 	= 4'd6,
	WAIT_4 	= 4'd7,
	FIN	 	= 4'd8
} state, next_state;

always_ff @(posedge CLK)
begin
	if (RESET)
	begin
		state <= IDLE;
	end
	else
	begin
		state <= next_state;
	end
end

always_ff @(posedge CLK)
begin
	if (RESET)
	begin
		p_vol_out_1 <= 32'd0;
		p_vol_out_2 <= 32'd0;
		p_vol_out_3 <= 32'd0;
		p_vol_out_4 <= 32'd0;
	end
	else
	begin
		p_vol_out_1 <= vol_out_1;
		p_vol_out_2 <= vol_out_2;
		p_vol_out_3 <= vol_out_3;
		p_vol_out_4 <= vol_out_4;
	end
end

always_comb
begin
	next_state = state;
	unique case (state)
		IDLE:
			next_state = sample_ready ? WAIT_1 : IDLE;
		WAIT_1:
			next_state = fin_signal ? INTER_1 : WAIT_1;
		INTER_1:
			next_state = idle_signal ? WAIT_2 : INTER_1;
		WAIT_2:
			next_state = fin_signal ? INTER_2 : WAIT_2;
		INTER_2:
			next_state = idle_signal ? WAIT_3 : INTER_2;
		WAIT_3:
			next_state = fin_signal ? INTER_3 : WAIT_3;
		INTER_3:
			next_state = idle_signal ? WAIT_4 : INTER_3;
		WAIT_4:
			next_state = fin_signal ? FIN : WAIT_4;
		FIN:
			next_state = IDLE;
		default	:	next_state = IDLE;
	endcase

	vol_out_1 = p_vol_out_1;
	vol_out_2 = p_vol_out_2;
	vol_out_3 = p_vol_out_3;
	vol_out_4 = p_vol_out_4;
	
	case(state)
		IDLE:
			begin
				if (sample_ready)
				begin
					sample_feed <= fir_1;
					start <= 1'b1;
				end
				else
				begin
					sample_feed <= 32'd0;
					start <= 1'b0;
				end
			end
		WAIT_1:
			begin
				sample_feed <= fir_1;
				start <= 1'b0;
			end
		INTER_1:
			begin
				vol_out_1 <= result;
				sample_feed <= fir_2;
				start <= 1'b1;
			end
		WAIT_2:
			begin
				sample_feed <= fir_2;
				start <= 1'b0;
			end
		INTER_2:
			begin
				vol_out_2 <= result;
				sample_feed <= fir_3;
				start <= 1'b1;
			end
		WAIT_3:
			begin
				sample_feed <= fir_3;
				start <= 1'b0;
			end
		INTER_3:
			begin
				vol_out_3 <= result;
				sample_feed <= fir_4;
				start <= 1'b1;
			end
		WAIT_4:
			begin
				sample_feed <= fir_4;
				start <= 1'b0;
			end
		FIN:
			begin
				vol_out_4 <= result;
				sample_feed <= 32'd0;
				start <= 1'b0;
			end	
		default: ;
	endcase
end

endmodule
