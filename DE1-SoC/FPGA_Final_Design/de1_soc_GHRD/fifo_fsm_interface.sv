module fifo_fsm_interface(
	input logic CLOCK_50,
	input logic reset,
	input logic start,
	output logic read,
	input logic [15:0] fifo_out,
	output logic [15:0] fifo_out_latch,
	output logic [9:0] coeff_address,
	output logic coeff_areset,
	output logic coeff_we
);

initial begin
	coeff_address = 10'd0;
	p_coeff_address = 10'd0;
end

logic [15:0] p_fifo_out_latch;
logic [9:0] p_coeff_address;

enum logic [3:0]{
	IDLE 		= 4'd0,
	INTER_1 	= 4'd1,
	READ 		= 4'd2,
	WAIT 		= 4'd3,
	COEF		= 4'd4,
	INTER_2 	= 4'd5
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

always_ff @(posedge CLOCK_50)
begin
	if (reset)
	begin
		p_fifo_out_latch <= 16'd0;
		p_coeff_address <= 10'd0;
	end
	else
	begin
		p_fifo_out_latch <= fifo_out_latch;
		p_coeff_address <= coeff_address;
	end
end

always_comb
begin
	next_state = state;
	unique case(state)
		IDLE:
			begin
				next_state = start ? INTER_1 : IDLE;
			end
		INTER_1:
			begin
				next_state = READ;
			end
		READ:
			begin
				next_state = WAIT;
			end
		WAIT:
			begin
				next_state = COEF;
			end
		COEF:
			begin
				next_state = INTER_2;
			end
		INTER_2:
			begin
				next_state = (coeff_address == 10'd568) ? IDLE : READ;
			end
		default: next_state = IDLE;
	endcase
	
	fifo_out_latch = p_fifo_out_latch;
	coeff_address = p_coeff_address;
	
	case(state)
		IDLE:
			begin
				read <= 1'b0;
				coeff_we <= 1'b0;
				coeff_address <= 10'd0;
				coeff_areset <= start ? 1'b1 : 1'b0;
			end
		INTER_1:
			begin
				read <= 1'b0;
				coeff_we <= 1'b0;
				coeff_areset <= 1'b1;
			end
		READ:
			begin
				read <= 1'b1;
				coeff_we <= 1'b1;
				coeff_areset <= 1'b0;
			end
		WAIT:
			begin
				read <= 1'b0;
				coeff_we <= 1'b1;
				coeff_areset <= 1'b0;
				fifo_out_latch <= fifo_out;
			end
		COEF:
			begin
				read <= 1'b0;
				coeff_we <= 1'b1;
				coeff_areset <= 1'b0;
			end
		INTER_2:
			begin
				read <= 1'b0;
				coeff_we <= 1'b1;
				coeff_areset <= 1'b0;
				coeff_address <= coeff_address + 10'd1;
			end
		default: ;
	endcase
end

endmodule
