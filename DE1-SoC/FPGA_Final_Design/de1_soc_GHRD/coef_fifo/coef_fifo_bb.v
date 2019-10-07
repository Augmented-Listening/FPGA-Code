
module coef_fifo (
	clk_clk,
	in_writedata,
	in_write,
	out_readdata,
	out_read,
	reset_reset_n);	

	input		clk_clk;
	input	[15:0]	in_writedata;
	input		in_write;
	output	[15:0]	out_readdata;
	input		out_read;
	input		reset_reset_n;
endmodule
