
module fir (
	begin_load_reset_n,
	clk_clk,
	input_data,
	input_valid,
	input_error,
	input_startofpacket,
	input_endofpacket,
	output_data,
	output_valid,
	output_error,
	output_startofpacket,
	output_endofpacket,
	output_channel,
	reset_reset_n,
	slave_address,
	slave_write,
	slave_writedata);	

	input		begin_load_reset_n;
	input		clk_clk;
	input	[18:0]	input_data;
	input		input_valid;
	input	[1:0]	input_error;
	input		input_startofpacket;
	input		input_endofpacket;
	output	[31:0]	output_data;
	output		output_valid;
	output	[1:0]	output_error;
	output		output_startofpacket;
	output		output_endofpacket;
	output	[2:0]	output_channel;
	input		reset_reset_n;
	input	[9:0]	slave_address;
	input	[0:0]	slave_write;
	input	[15:0]	slave_writedata;
endmodule
