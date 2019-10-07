	coef_fifo u0 (
		.clk_clk       (<connected-to-clk_clk>),       //   clk.clk
		.in_writedata  (<connected-to-in_writedata>),  //    in.writedata
		.in_write      (<connected-to-in_write>),      //      .write
		.out_readdata  (<connected-to-out_readdata>),  //   out.readdata
		.out_read      (<connected-to-out_read>),      //      .read
		.reset_reset_n (<connected-to-reset_reset_n>)  // reset.reset_n
	);

