module fir_channel_fsm(
	input logic CLOCK_50,
	input logic reset,
	input logic ready,
	input logic [15:0] channel_1,
	input logic [15:0] channel_2,
	input logic [15:0] channel_3,
	input logic [15:0] channel_4,
	input logic [15:0] channel_5,
	input logic [15:0] channel_6,
	input logic [15:0] channel_7,
	input logic [15:0] channel_8,
	output logic [18:0] output_data,
	output logic output_valid,
	output logic sop,
	output logic eop
);

enum logic [3:0] {
	IDLE = 4'd0,
	TX_1 = 4'd1,
	TX_2 = 4'd2,
	TX_3 = 4'd3,
	TX_4 = 4'd4,
	TX_5 = 4'd5,
	TX_6 = 4'd6,
	TX_7 = 4'd7,
	TX_8 = 4'd8
} state, next_state;

always_ff @(posedge CLOCK_50)
begin
	if (reset)
	begin
		state <= IDLE;
	end
	else
	begin
		state <= next_state;
	end
end

always_comb
begin
	next_state = state;
	unique case(state)
		IDLE:
			begin
				next_state = ready ? TX_1 : IDLE;
			end
		TX_1:
			begin
				next_state = TX_2;
			end
		TX_2:
			begin
				next_state = TX_3;
			end
		TX_3:
			begin
				next_state = TX_4;
			end
		TX_4:
			begin
				next_state = TX_5;
			end
		TX_5:
			begin
				next_state = TX_6;
			end
		TX_6:
			begin
				next_state = TX_7;
			end
		TX_7:
			begin
				next_state = TX_8;
			end
		TX_8:
			begin
				next_state = IDLE;
			end
		default : next_state = IDLE;
	endcase
	
	output_data = 19'd0;
	
	case(state)
		IDLE:
			begin
				sop <= 1'b0;
				eop <= 1'b0;
				output_valid <= 1'b0;
			end
		TX_1:
			begin
				sop <= 1'b1;
				output_data <= {3'b000, channel_1};
				eop <= 1'b0;
				output_valid <= 1'b1;
			end
		TX_2:
			begin
				sop <= 1'b0;
				output_data <= {3'b001, channel_2};
				eop <= 1'b0;
				output_valid <= 1'b1;
			end
		TX_3:
			begin
				sop <= 1'b0;
				output_data <= {3'b010, channel_3};
				eop <= 1'b0;
				output_valid <= 1'b1;
			end
		TX_4:
			begin
				sop <= 1'b0;
				output_data <= {3'b011, channel_4};
				eop <= 1'b0;
				output_valid <= 1'b1;
			end
		TX_5:
			begin
				sop <= 1'b0;
				output_data <= {3'b100, channel_5};
				eop <= 1'b0;
				output_valid <=1'b1;
			end
		TX_6:
			begin
				sop <= 1'b0;
				output_data <= {3'b101, channel_6};
				eop <= 1'b0;
				output_valid <=1'b1;
			end
		TX_7:
			begin
				sop <= 1'b0;
				output_data <= {3'b110, channel_7};
				eop <= 1'b0;
				output_valid <=1'b1;
			end
		TX_8:
			begin
				sop <= 1'b0;
				output_data <= {3'b111, channel_8};
				eop <= 1'b1;
				output_valid <=1'b1;
			end
		default: ;
	endcase
end

endmodule
