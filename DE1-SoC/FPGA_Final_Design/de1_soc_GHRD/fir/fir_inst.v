	fir u0 (
		.begin_load_reset_n   (<connected-to-begin_load_reset_n>),   // begin_load.reset_n
		.clk_clk              (<connected-to-clk_clk>),              //        clk.clk
		.input_data           (<connected-to-input_data>),           //      input.data
		.input_valid          (<connected-to-input_valid>),          //           .valid
		.input_error          (<connected-to-input_error>),          //           .error
		.input_startofpacket  (<connected-to-input_startofpacket>),  //           .startofpacket
		.input_endofpacket    (<connected-to-input_endofpacket>),    //           .endofpacket
		.output_data          (<connected-to-output_data>),          //     output.data
		.output_valid         (<connected-to-output_valid>),         //           .valid
		.output_error         (<connected-to-output_error>),         //           .error
		.output_startofpacket (<connected-to-output_startofpacket>), //           .startofpacket
		.output_endofpacket   (<connected-to-output_endofpacket>),   //           .endofpacket
		.output_channel       (<connected-to-output_channel>),       //           .channel
		.reset_reset_n        (<connected-to-reset_reset_n>),        //      reset.reset_n
		.slave_address        (<connected-to-slave_address>),        //      slave.address
		.slave_write          (<connected-to-slave_write>),          //           .write
		.slave_writedata      (<connected-to-slave_writedata>)       //           .writedata
	);

