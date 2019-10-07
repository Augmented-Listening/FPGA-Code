module volumeControl(
	input logic CLK,
	input logic RESET,
	input logic fir_ready,
	input logic [31:0] fir_out_1,
	input logic [31:0] fir_out_2,
	input logic [31:0] fir_out_3,
	input logic [31:0] fir_out_4,
	input logic [31:0] fir_out_5,
	input logic [31:0] fir_out_6,
	input logic [31:0] fir_out_7,
	input logic [31:0] fir_out_8,
	input logic [31:0] vol_1,
	input logic [31:0] vol_2,
	input logic [31:0] vol_3,
	input logic [31:0] vol_4,
	input logic [31:0] vol_5,
	input logic [31:0] vol_6,
	input logic [31:0] vol_7,
	input logic [31:0] vol_8,
	output logic [31:0] vol_out_1,
	output logic [31:0] vol_out_2,
	output logic [31:0] vol_out_3,
	output logic [31:0] vol_out_4,
	output logic [31:0] vol_out_5,
	output logic [31:0] vol_out_6,
	output logic [31:0] vol_out_7,
	output logic [31:0] vol_out_8
);

logic [31:0] vol_level_1, vol_level_2, vol_level_3, vol_level_4, vol_level_5, vol_level_6, vol_level_7, vol_level_8;
 
logic [31:0] s2_result_wire, s2_dataa_wire, s2_datab_wire;
logic [2:0] s2_n_wire;
logic s2_start_wire, s2_done_wire;

gain_fsm fsm_L(
	.CLK(CLK),
	.RESET(RESET),
	.READY(fir_ready),
	.sample(fir_out_1),
	.float_multiplier(vol_level_1),
	.modified_sample(vol_out_1),
	.s2_result(s2_result_wire),
	.s2_dataa(s2_dataa_wire),
	.s2_datab(s2_datab_wire),
	.s2_n(s2_n_wire),
	.s2_start(s2_start_wire),
	.s2_done(s2_done_wire)
);

float inst_L(
	.s2_clk(CLK),
	.s2_clk_en(1'b1),
	.s2_dataa(s2_dataa_wire),
	.s2_datab(s2_datab_wire),
	.s2_n(s2_n_wire),
	.s2_reset(RESET),
	.s2_reset_req(1'b0),
	.s2_start(s2_start_wire),
	.s2_done(s2_done_wire),
	.s2_result(s2_result_wire)
);

logic [31:0] s2_result_wire_2, s2_dataa_wire_2, s2_datab_wire_2;
logic [2:0] s2_n_wire_2;
logic s2_start_wire_2, s2_done_wire_2;


gain_fsm fsm_R(
	.CLK(CLK),
	.RESET(RESET),
	.READY(fir_ready),
	.sample(fir_out_2),
	.float_multiplier(vol_level_2),
	.modified_sample(vol_out_2),
	.s2_result(s2_result_wire_2),
	.s2_dataa(s2_dataa_wire_2),
	.s2_datab(s2_datab_wire_2),
	.s2_n(s2_n_wire_2),
	.s2_start(s2_start_wire_2),
	.s2_done(s2_done_wire_2)
);

float inst_R(
	.s2_clk(CLK),
	.s2_clk_en(1'b1),
	.s2_dataa(s2_dataa_wire_2),
	.s2_datab(s2_datab_wire_2),
	.s2_n(s2_n_wire_2),
	.s2_reset(RESET),
	.s2_reset_req(1'b0),
	.s2_start(s2_start_wire_2),
	.s2_done(s2_done_wire_2),
	.s2_result(s2_result_wire_2)
);

logic [31:0] s2_result_wire_3, s2_dataa_wire_3, s2_datab_wire_3;
logic [2:0] s2_n_wire_3;
logic s2_start_wire_3, s2_done_wire_3;


gain_fsm fsm_fir_3(
	.CLK(CLK),
	.RESET(RESET),
	.READY(fir_ready),
	.sample(fir_out_3),
	.float_multiplier(vol_level_3),
	.modified_sample(vol_out_3),
	.s2_result(s2_result_wire_3),
	.s2_dataa(s2_dataa_wire_3),
	.s2_datab(s2_datab_wire_3),
	.s2_n(s2_n_wire_3),
	.s2_start(s2_start_wire_3),
	.s2_done(s2_done_wire_3)
);

float inst_fir_3(
	.s2_clk(CLK),
	.s2_clk_en(1'b1),
	.s2_dataa(s2_dataa_wire_3),
	.s2_datab(s2_datab_wire_3),
	.s2_n(s2_n_wire_3),
	.s2_reset(RESET),
	.s2_reset_req(1'b0),
	.s2_start(s2_start_wire_3),
	.s2_done(s2_done_wire_3),
	.s2_result(s2_result_wire_3)
);

logic [31:0] s2_result_wire_4, s2_dataa_wire_4, s2_datab_wire_4;
logic [2:0] s2_n_wire_4;
logic s2_start_wire_4, s2_done_wire_4;


gain_fsm fsm_fir_4(
	.CLK(CLK),
	.RESET(RESET),
	.READY(fir_ready),
	.sample(fir_out_4),
	.float_multiplier(vol_level_4),
	.modified_sample(vol_out_4),
	.s2_result(s2_result_wire_4),
	.s2_dataa(s2_dataa_wire_4),
	.s2_datab(s2_datab_wire_4),
	.s2_n(s2_n_wire_4),
	.s2_start(s2_start_wire_4),
	.s2_done(s2_done_wire_4)
);

float inst_fir_4(
	.s2_clk(CLK),
	.s2_clk_en(1'b1),
	.s2_dataa(s2_dataa_wire_4),
	.s2_datab(s2_datab_wire_4),
	.s2_n(s2_n_wire_4),
	.s2_reset(RESET),
	.s2_reset_req(1'b0),
	.s2_start(s2_start_wire_4),
	.s2_done(s2_done_wire_4),
	.s2_result(s2_result_wire_4)
);

logic [31:0] s2_result_wire_5, s2_dataa_wire_5, s2_datab_wire_5;
logic [2:0] s2_n_wire_5;
logic s2_start_wire_5, s2_done_wire_5;


gain_fsm fsm_fir_5(
	.CLK(CLK),
	.RESET(RESET),
	.READY(fir_ready),
	.sample(fir_out_5),
	.float_multiplier(vol_level_5),
	.modified_sample(vol_out_5),
	.s2_result(s2_result_wire_5),
	.s2_dataa(s2_dataa_wire_5),
	.s2_datab(s2_datab_wire_5),
	.s2_n(s2_n_wire_5),
	.s2_start(s2_start_wire_5),
	.s2_done(s2_done_wire_5)
);

float inst_fir_5(
	.s2_clk(CLK),
	.s2_clk_en(1'b1),
	.s2_dataa(s2_dataa_wire_5),
	.s2_datab(s2_datab_wire_5),
	.s2_n(s2_n_wire_5),
	.s2_reset(RESET),
	.s2_reset_req(1'b0),
	.s2_start(s2_start_wire_5),
	.s2_done(s2_done_wire_5),
	.s2_result(s2_result_wire_5)
);

logic [31:0] s2_result_wire_6, s2_dataa_wire_6, s2_datab_wire_6;
logic [2:0] s2_n_wire_6;
logic s2_start_wire_6, s2_done_wire_6;


gain_fsm fsm_fir_6(
	.CLK(CLK),
	.RESET(RESET),
	.READY(fir_ready),
	.sample(fir_out_6),
	.float_multiplier(vol_level_6),
	.modified_sample(vol_out_6),
	.s2_result(s2_result_wire_6),
	.s2_dataa(s2_dataa_wire_6),
	.s2_datab(s2_datab_wire_6),
	.s2_n(s2_n_wire_6),
	.s2_start(s2_start_wire_6),
	.s2_done(s2_done_wire_6)
);

float inst_fir_6(
	.s2_clk(CLK),
	.s2_clk_en(1'b1),
	.s2_dataa(s2_dataa_wire_6),
	.s2_datab(s2_datab_wire_6),
	.s2_n(s2_n_wire_6),
	.s2_reset(RESET),
	.s2_reset_req(1'b0),
	.s2_start(s2_start_wire_6),
	.s2_done(s2_done_wire_6),
	.s2_result(s2_result_wire_6)
);

logic [31:0] s2_result_wire_7, s2_dataa_wire_7, s2_datab_wire_7;
logic [2:0] s2_n_wire_7;
logic s2_start_wire_7, s2_done_wire_7;


gain_fsm fsm_fir_7(
	.CLK(CLK),
	.RESET(RESET),
	.READY(fir_ready),
	.sample(fir_out_7),
	.float_multiplier(vol_level_7),
	.modified_sample(vol_out_7),
	.s2_result(s2_result_wire_7),
	.s2_dataa(s2_dataa_wire_7),
	.s2_datab(s2_datab_wire_7),
	.s2_n(s2_n_wire_7),
	.s2_start(s2_start_wire_7),
	.s2_done(s2_done_wire_7)
);

float inst_fir_7(
	.s2_clk(CLK),
	.s2_clk_en(1'b1),
	.s2_dataa(s2_dataa_wire_7),
	.s2_datab(s2_datab_wire_7),
	.s2_n(s2_n_wire_7),
	.s2_reset(RESET),
	.s2_reset_req(1'b0),
	.s2_start(s2_start_wire_7),
	.s2_done(s2_done_wire_7),
	.s2_result(s2_result_wire_7)
);

logic [31:0] s2_result_wire_8, s2_dataa_wire_8, s2_datab_wire_8;
logic [2:0] s2_n_wire_8;
logic s2_start_wire_8, s2_done_wire_8;


gain_fsm fsm_fir_8(
	.CLK(CLK),
	.RESET(RESET),
	.READY(fir_ready),
	.sample(fir_out_8),
	.float_multiplier(vol_level_8),
	.modified_sample(vol_out_8),
	.s2_result(s2_result_wire_8),
	.s2_dataa(s2_dataa_wire_8),
	.s2_datab(s2_datab_wire_8),
	.s2_n(s2_n_wire_8),
	.s2_start(s2_start_wire_8),
	.s2_done(s2_done_wire_8)
);

float inst_fir_8(
	.s2_clk(CLK),
	.s2_clk_en(1'b1),
	.s2_dataa(s2_dataa_wire_8),
	.s2_datab(s2_datab_wire_8),
	.s2_n(s2_n_wire_8),
	.s2_reset(RESET),
	.s2_reset_req(1'b0),
	.s2_start(s2_start_wire_8),
	.s2_done(s2_done_wire_8),
	.s2_result(s2_result_wire_8)
);


vol_table v_table(.*);

endmodule
