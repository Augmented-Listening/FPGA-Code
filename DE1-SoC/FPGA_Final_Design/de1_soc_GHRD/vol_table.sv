module vol_table(
	input logic [31:0] vol_1,
	input logic [31:0] vol_2,
	input logic [31:0] vol_3,
	input logic [31:0] vol_4,
	input logic [31:0] vol_5,
	input logic [31:0] vol_6,
	input logic [31:0] vol_7,
	input logic [31:0] vol_8,
	output logic [31:0] vol_level_1,
	output logic [31:0] vol_level_2,
	output logic [31:0] vol_level_3,
	output logic [31:0] vol_level_4,
	output logic [31:0] vol_level_5,
	output logic [31:0] vol_level_6,
	output logic [31:0] vol_level_7,
	output logic [31:0] vol_level_8
);

logic [5:0] v_1, v_2, v_3, v_4, v_5, v_6, v_7, v_8;

initial begin
	v_1 = 6'd20;
	v_2 = 6'd20;
	v_3 = 6'd20;
	v_4 = 6'd20;
	v_5 = 6'd20;
	v_6 = 6'd20;
	v_7 = 6'd20;
	v_8 = 6'd20;
end

assign v_1 = vol_1[5:0];
assign v_2 = vol_2[5:0];
assign v_3 = vol_3[5:0];
assign v_4 = vol_4[5:0];
assign v_5 = vol_5[5:0];
assign v_6 = vol_6[5:0];
assign v_7 = vol_7[5:0];
assign v_8 = vol_8[5:0];

always_comb begin
	case (v_1)
		6'd0	:	vol_level_1 = 32'h3dcccccd;
		6'd1	:	vol_level_1 = 32'h3de5ca15;
		6'd2	:	vol_level_1 = 32'h3e00e9f9;
		6'd3	:	vol_level_1 = 32'h3e10a4d3;
		6'd4	:	vol_level_1 = 32'h3e224b06;
		6'd5	:	vol_level_1 = 32'h3e361887;
		6'd6	:	vol_level_1 = 32'h3e4c509b;
		6'd7	:	vol_level_1 = 32'h3e653ebb;
		6'd8	:	vol_level_1 = 32'h3e809bcc;
		6'd9	:	vol_level_1 = 32'h3e904d1c;
		6'd10	:	vol_level_1 = 32'h3ea1e89b;
		6'd11	:	vol_level_1 = 32'h3eb5aa1a;
		6'd12	:	vol_level_1 = 32'h3ecbd4b4;
		6'd13	:	vol_level_1 = 32'h3ee4b3b6;
		6'd14	:	vol_level_1 = 32'h3f004dce;
		6'd15	:	vol_level_1 = 32'h3f0ff59a;
		6'd16	:	vol_level_1 = 32'h3f21866c;
		6'd17	:	vol_level_1 = 32'h3f353bef;
		6'd18	:	vol_level_1 = 32'h3f4b5918;
		6'd19	:	vol_level_1 = 32'h3f642905;
		6'd20	:	vol_level_1 = 32'h3f800000;
		6'd21	:	vol_level_1 = 32'h3f8f9e4d;
		6'd22	:	vol_level_1 = 32'h3fa12478;
		6'd23	:	vol_level_1 = 32'h3fb4ce08;
		6'd24	:	vol_level_1 = 32'h3fcaddc8;
		6'd25	:	vol_level_1 = 32'h3fe39ea9;
		6'd26	: 	vol_level_1 = 32'h3fff64c1;
		6'd27	:	vol_level_1 = 32'h400f4735;
		6'd28	:	vol_level_1 = 32'h4020c2bf;
		6'd29	:	vol_level_1 = 32'h40346063;
		6'd30 :	vol_level_1 = 32'h404a62c2;
		6'd31	:	vol_level_1 = 32'h406314a0;
		6'd32	:	vol_level_1 = 32'h407ec9e1;
		6'd33	:	vol_level_1 = 32'h408ef052;
		6'd34	:	vol_level_1 = 32'h40a06142;
		6'd35	:	vol_level_1 = 32'h40b3f300;
		6'd36	:	vol_level_1 = 32'h40c9e807;
		6'd37	:	vol_level_1 = 32'h40e28aeb;
		6'd38	:	vol_level_1 = 32'h40fe2f5e;
		6'd39	:	vol_level_1 = 32'h410e99a3;
		6'd40	:	vol_level_1 = 32'h41200000;
		6'd41 :	vol_level_1 = 32'h413385e0;
		6'd42 :	vol_level_1 = 32'h41496d96;
		6'd43 :	vol_level_1 = 32'h4162018a;
		6'd44 :	vol_level_1 = 32'h417d953a;
		6'd45 :	vol_level_1 = 32'h418e432a;
		6'd46	:	vol_level_1 = 32'h419f9ef9;
		6'd47 :	vol_level_1 = 32'h41b31902;
		6'd48	:	vol_level_1 = 32'h41c8f36f;
		6'd49 :	vol_level_1 = 32'h41e1787c;
		6'd50	:	vol_level_1 = 32'h41fcfb72;
		6'd51	:	vol_level_1 = 32'h420dece4;
		6'd52 : 	vol_level_1 = 32'h421f3e2d;
		6'd53	:	vol_level_1 = 32'h4232ac66;
		6'd54	:	vol_level_1 = 32'h42487993;
		6'd55 :	vol_level_1 = 32'h4260efc0;
		6'd56 :	vol_level_1	= 32'h427c6208;
		6'd57	:	vol_level_1 = 32'h428d96d3;
		6'd58	:	vol_level_1 = 32'h429edd9b;
		6'd59	:	vol_level_1 = 32'h42b2400c;
		6'd60	:	vol_level_1 = 32'h42c80000;
		6'd61	:	vol_level_1 = 32'h42e06758;
		6'd62	:	vol_level_1 = 32'h42fbc8fb;
		6'd63 :	vol_level_1 = 32'h430d40f6;
		default	:	vol_level_1 = 32'd0;
	endcase
end

always_comb begin
	case (v_2)
		6'd0	:	vol_level_2 = 32'h3dcccccd;
		6'd1	:	vol_level_2 = 32'h3de5ca15;
		6'd2	:	vol_level_2 = 32'h3e00e9f9;
		6'd3	:	vol_level_2 = 32'h3e10a4d3;
		6'd4	:	vol_level_2 = 32'h3e224b06;
		6'd5	:	vol_level_2 = 32'h3e361887;
		6'd6	:	vol_level_2 = 32'h3e4c509b;
		6'd7	:	vol_level_2 = 32'h3e653ebb;
		6'd8	:	vol_level_2 = 32'h3e809bcc;
		6'd9	:	vol_level_2 = 32'h3e904d1c;
		6'd10	:	vol_level_2 = 32'h3ea1e89b;
		6'd11	:	vol_level_2 = 32'h3eb5aa1a;
		6'd12	:	vol_level_2 = 32'h3ecbd4b4;
		6'd13	:	vol_level_2 = 32'h3ee4b3b6;
		6'd14	:	vol_level_2 = 32'h3f004dce;
		6'd15	:	vol_level_2 = 32'h3f0ff59a;
		6'd16	:	vol_level_2 = 32'h3f21866c;
		6'd17	:	vol_level_2 = 32'h3f353bef;
		6'd18	:	vol_level_2 = 32'h3f4b5918;
		6'd19	:	vol_level_2 = 32'h3f642905;
		6'd20	:	vol_level_2 = 32'h3f800000;
		6'd21	:	vol_level_2 = 32'h3f8f9e4d;
		6'd22	:	vol_level_2 = 32'h3fa12478;
		6'd23	:	vol_level_2 = 32'h3fb4ce08;
		6'd24	:	vol_level_2 = 32'h3fcaddc8;
		6'd25	:	vol_level_2 = 32'h3fe39ea9;
		6'd26	: 	vol_level_2 = 32'h3fff64c1;
		6'd27	:	vol_level_2 = 32'h400f4735;
		6'd28	:	vol_level_2 = 32'h4020c2bf;
		6'd29	:	vol_level_2 = 32'h40346063;
		6'd30 :	vol_level_2 = 32'h404a62c2;
		6'd31	:	vol_level_2 = 32'h406314a0;
		6'd32	:	vol_level_2 = 32'h407ec9e1;
		6'd33	:	vol_level_2 = 32'h408ef052;
		6'd34	:	vol_level_2 = 32'h40a06142;
		6'd35	:	vol_level_2 = 32'h40b3f300;
		6'd36	:	vol_level_2 = 32'h40c9e807;
		6'd37	:	vol_level_2 = 32'h40e28aeb;
		6'd38	:	vol_level_2 = 32'h40fe2f5e;
		6'd39	:	vol_level_2 = 32'h410e99a3;
		6'd40	:	vol_level_2 = 32'h41200000;
		6'd41 :	vol_level_2 = 32'h413385e0;
		6'd42 :	vol_level_2 = 32'h41496d96;
		6'd43 :	vol_level_2 = 32'h4162018a;
		6'd44 :	vol_level_2 = 32'h417d953a;
		6'd45 :	vol_level_2 = 32'h418e432a;
		6'd46	:	vol_level_2 = 32'h419f9ef9;
		6'd47 :	vol_level_2 = 32'h41b31902;
		6'd48	:	vol_level_2 = 32'h41c8f36f;
		6'd49 :	vol_level_2 = 32'h41e1787c;
		6'd50	:	vol_level_2 = 32'h41fcfb72;
		6'd51	:	vol_level_2 = 32'h420dece4;
		6'd52 : 	vol_level_2 = 32'h421f3e2d;
		6'd53	:	vol_level_2 = 32'h4232ac66;
		6'd54	:	vol_level_2 = 32'h42487993;
		6'd55 :	vol_level_2 = 32'h4260efc0;
		6'd56 :	vol_level_2	= 32'h427c6208;
		6'd57	:	vol_level_2 = 32'h428d96d3;
		6'd58	:	vol_level_2 = 32'h429edd9b;
		6'd59	:	vol_level_2 = 32'h42b2400c;
		6'd60	:	vol_level_2 = 32'h42c80000;
		6'd61	:	vol_level_2 = 32'h42e06758;
		6'd62	:	vol_level_2 = 32'h42fbc8fb;
		6'd63 :	vol_level_2 = 32'h430d40f6;
		default	:	vol_level_2 = 32'd0;
	endcase
end

always_comb begin
	case (v_3)
		6'd0	:	vol_level_3 = 32'h3dcccccd;
		6'd1	:	vol_level_3 = 32'h3de5ca15;
		6'd2	:	vol_level_3 = 32'h3e00e9f9;
		6'd3	:	vol_level_3 = 32'h3e10a4d3;
		6'd4	:	vol_level_3 = 32'h3e224b06;
		6'd5	:	vol_level_3 = 32'h3e361887;
		6'd6	:	vol_level_3 = 32'h3e4c509b;
		6'd7	:	vol_level_3 = 32'h3e653ebb;
		6'd8	:	vol_level_3 = 32'h3e809bcc;
		6'd9	:	vol_level_3 = 32'h3e904d1c;
		6'd10	:	vol_level_3 = 32'h3ea1e89b;
		6'd11	:	vol_level_3 = 32'h3eb5aa1a;
		6'd12	:	vol_level_3 = 32'h3ecbd4b4;
		6'd13	:	vol_level_3 = 32'h3ee4b3b6;
		6'd14	:	vol_level_3 = 32'h3f004dce;
		6'd15	:	vol_level_3 = 32'h3f0ff59a;
		6'd16	:	vol_level_3 = 32'h3f21866c;
		6'd17	:	vol_level_3 = 32'h3f353bef;
		6'd18	:	vol_level_3 = 32'h3f4b5918;
		6'd19	:	vol_level_3 = 32'h3f642905;
		6'd20	:	vol_level_3 = 32'h3f800000;
		6'd21	:	vol_level_3 = 32'h3f8f9e4d;
		6'd22	:	vol_level_3 = 32'h3fa12478;
		6'd23	:	vol_level_3 = 32'h3fb4ce08;
		6'd24	:	vol_level_3 = 32'h3fcaddc8;
		6'd25	:	vol_level_3 = 32'h3fe39ea9;
		6'd26	: 	vol_level_3 = 32'h3fff64c1;
		6'd27	:	vol_level_3 = 32'h400f4735;
		6'd28	:	vol_level_3 = 32'h4020c2bf;
		6'd29	:	vol_level_3 = 32'h40346063;
		6'd30 :	vol_level_3 = 32'h404a62c2;
		6'd31	:	vol_level_3 = 32'h406314a0;
		6'd32	:	vol_level_3 = 32'h407ec9e1;
		6'd33	:	vol_level_3 = 32'h408ef052;
		6'd34	:	vol_level_3 = 32'h40a06142;
		6'd35	:	vol_level_3 = 32'h40b3f300;
		6'd36	:	vol_level_3 = 32'h40c9e807;
		6'd37	:	vol_level_3 = 32'h40e28aeb;
		6'd38	:	vol_level_3 = 32'h40fe2f5e;
		6'd39	:	vol_level_3 = 32'h410e99a3;
		6'd40	:	vol_level_3 = 32'h41200000;
		6'd41 :	vol_level_3 = 32'h413385e0;
		6'd42 :	vol_level_3 = 32'h41496d96;
		6'd43 :	vol_level_3 = 32'h4162018a;
		6'd44 :	vol_level_3 = 32'h417d953a;
		6'd45 :	vol_level_3 = 32'h418e432a;
		6'd46	:	vol_level_3 = 32'h419f9ef9;
		6'd47 :	vol_level_3 = 32'h41b31902;
		6'd48	:	vol_level_3 = 32'h41c8f36f;
		6'd49 :	vol_level_3 = 32'h41e1787c;
		6'd50	:	vol_level_3 = 32'h41fcfb72;
		6'd51	:	vol_level_3 = 32'h420dece4;
		6'd52 : 	vol_level_3 = 32'h421f3e2d;
		6'd53	:	vol_level_3 = 32'h4232ac66;
		6'd54	:	vol_level_3 = 32'h42487993;
		6'd55 :	vol_level_3 = 32'h4260efc0;
		6'd56 :	vol_level_3	= 32'h427c6208;
		6'd57	:	vol_level_3 = 32'h428d96d3;
		6'd58	:	vol_level_3 = 32'h429edd9b;
		6'd59	:	vol_level_3 = 32'h42b2400c;
		6'd60	:	vol_level_3 = 32'h42c80000;
		6'd61	:	vol_level_3 = 32'h42e06758;
		6'd62	:	vol_level_3 = 32'h42fbc8fb;
		6'd63 :	vol_level_3 = 32'h430d40f6;
		default	:	vol_level_3 = 32'd0;
	endcase
end

always_comb begin
	case (v_4)
		6'd0	:	vol_level_4 = 32'h3dcccccd;
		6'd1	:	vol_level_4 = 32'h3de5ca15;
		6'd2	:	vol_level_4 = 32'h3e00e9f9;
		6'd3	:	vol_level_4 = 32'h3e10a4d3;
		6'd4	:	vol_level_4 = 32'h3e224b06;
		6'd5	:	vol_level_4 = 32'h3e361887;
		6'd6	:	vol_level_4 = 32'h3e4c509b;
		6'd7	:	vol_level_4 = 32'h3e653ebb;
		6'd8	:	vol_level_4 = 32'h3e809bcc;
		6'd9	:	vol_level_4 = 32'h3e904d1c;
		6'd10	:	vol_level_4 = 32'h3ea1e89b;
		6'd11	:	vol_level_4 = 32'h3eb5aa1a;
		6'd12	:	vol_level_4 = 32'h3ecbd4b4;
		6'd13	:	vol_level_4 = 32'h3ee4b3b6;
		6'd14	:	vol_level_4 = 32'h3f004dce;
		6'd15	:	vol_level_4 = 32'h3f0ff59a;
		6'd16	:	vol_level_4 = 32'h3f21866c;
		6'd17	:	vol_level_4 = 32'h3f353bef;
		6'd18	:	vol_level_4 = 32'h3f4b5918;
		6'd19	:	vol_level_4 = 32'h3f642905;
		6'd20	:	vol_level_4 = 32'h3f800000;
		6'd21	:	vol_level_4 = 32'h3f8f9e4d;
		6'd22	:	vol_level_4 = 32'h3fa12478;
		6'd23	:	vol_level_4 = 32'h3fb4ce08;
		6'd24	:	vol_level_4 = 32'h3fcaddc8;
		6'd25	:	vol_level_4 = 32'h3fe39ea9;
		6'd26	: 	vol_level_4 = 32'h3fff64c1;
		6'd27	:	vol_level_4 = 32'h400f4735;
		6'd28	:	vol_level_4 = 32'h4020c2bf;
		6'd29	:	vol_level_4 = 32'h40346063;
		6'd30 :	vol_level_4 = 32'h404a62c2;
		6'd31	:	vol_level_4 = 32'h406314a0;
		6'd32	:	vol_level_4 = 32'h407ec9e1;
		6'd33	:	vol_level_4 = 32'h408ef052;
		6'd34	:	vol_level_4 = 32'h40a06142;
		6'd35	:	vol_level_4 = 32'h40b3f300;
		6'd36	:	vol_level_4 = 32'h40c9e807;
		6'd37	:	vol_level_4 = 32'h40e28aeb;
		6'd38	:	vol_level_4 = 32'h40fe2f5e;
		6'd39	:	vol_level_4 = 32'h410e99a3;
		6'd40	:	vol_level_4 = 32'h41200000;
		6'd41 :	vol_level_4 = 32'h413385e0;
		6'd42 :	vol_level_4 = 32'h41496d96;
		6'd43 :	vol_level_4 = 32'h4162018a;
		6'd44 :	vol_level_4 = 32'h417d953a;
		6'd45 :	vol_level_4 = 32'h418e432a;
		6'd46	:	vol_level_4 = 32'h419f9ef9;
		6'd47 :	vol_level_4 = 32'h41b31902;
		6'd48	:	vol_level_4 = 32'h41c8f36f;
		6'd49 :	vol_level_4 = 32'h41e1787c;
		6'd50	:	vol_level_4 = 32'h41fcfb72;
		6'd51	:	vol_level_4 = 32'h420dece4;
		6'd52 : 	vol_level_4 = 32'h421f3e2d;
		6'd53	:	vol_level_4 = 32'h4232ac66;
		6'd54	:	vol_level_4 = 32'h42487993;
		6'd55 :	vol_level_4 = 32'h4260efc0;
		6'd56 :	vol_level_4	= 32'h427c6208;
		6'd57	:	vol_level_4 = 32'h428d96d3;
		6'd58	:	vol_level_4 = 32'h429edd9b;
		6'd59	:	vol_level_4 = 32'h42b2400c;
		6'd60	:	vol_level_4 = 32'h42c80000;
		6'd61	:	vol_level_4 = 32'h42e06758;
		6'd62	:	vol_level_4 = 32'h42fbc8fb;
		6'd63 :	vol_level_4 = 32'h430d40f6;
		default	:	vol_level_4 = 32'd0;
	endcase
end

always_comb begin
	case (v_5)
		6'd0	:	vol_level_5 = 32'h3dcccccd;
		6'd1	:	vol_level_5 = 32'h3de5ca15;
		6'd2	:	vol_level_5 = 32'h3e00e9f9;
		6'd3	:	vol_level_5 = 32'h3e10a4d3;
		6'd4	:	vol_level_5 = 32'h3e224b06;
		6'd5	:	vol_level_5 = 32'h3e361887;
		6'd6	:	vol_level_5 = 32'h3e4c509b;
		6'd7	:	vol_level_5 = 32'h3e653ebb;
		6'd8	:	vol_level_5 = 32'h3e809bcc;
		6'd9	:	vol_level_5 = 32'h3e904d1c;
		6'd10	:	vol_level_5 = 32'h3ea1e89b;
		6'd11	:	vol_level_5 = 32'h3eb5aa1a;
		6'd12	:	vol_level_5 = 32'h3ecbd4b4;
		6'd13	:	vol_level_5 = 32'h3ee4b3b6;
		6'd14	:	vol_level_5 = 32'h3f004dce;
		6'd15	:	vol_level_5 = 32'h3f0ff59a;
		6'd16	:	vol_level_5 = 32'h3f21866c;
		6'd17	:	vol_level_5 = 32'h3f353bef;
		6'd18	:	vol_level_5 = 32'h3f4b5918;
		6'd19	:	vol_level_5 = 32'h3f642905;
		6'd20	:	vol_level_5 = 32'h3f800000;
		6'd21	:	vol_level_5 = 32'h3f8f9e4d;
		6'd22	:	vol_level_5 = 32'h3fa12478;
		6'd23	:	vol_level_5 = 32'h3fb4ce08;
		6'd24	:	vol_level_5 = 32'h3fcaddc8;
		6'd25	:	vol_level_5 = 32'h3fe39ea9;
		6'd26	: 	vol_level_5 = 32'h3fff64c1;
		6'd27	:	vol_level_5 = 32'h400f4735;
		6'd28	:	vol_level_5 = 32'h4020c2bf;
		6'd29	:	vol_level_5 = 32'h40346063;
		6'd30 :	vol_level_5 = 32'h404a62c2;
		6'd31	:	vol_level_5 = 32'h406314a0;
		6'd32	:	vol_level_5 = 32'h407ec9e1;
		6'd33	:	vol_level_5 = 32'h408ef052;
		6'd34	:	vol_level_5 = 32'h40a06142;
		6'd35	:	vol_level_5 = 32'h40b3f300;
		6'd36	:	vol_level_5 = 32'h40c9e807;
		6'd37	:	vol_level_5 = 32'h40e28aeb;
		6'd38	:	vol_level_5 = 32'h40fe2f5e;
		6'd39	:	vol_level_5 = 32'h410e99a3;
		6'd40	:	vol_level_5 = 32'h41200000;
		6'd41 :	vol_level_5 = 32'h413385e0;
		6'd42 :	vol_level_5 = 32'h41496d96;
		6'd43 :	vol_level_5 = 32'h4162018a;
		6'd44 :	vol_level_5 = 32'h417d953a;
		6'd45 :	vol_level_5 = 32'h418e432a;
		6'd46	:	vol_level_5 = 32'h419f9ef9;
		6'd47 :	vol_level_5 = 32'h41b31902;
		6'd48	:	vol_level_5 = 32'h41c8f36f;
		6'd49 :	vol_level_5 = 32'h41e1787c;
		6'd50	:	vol_level_5 = 32'h41fcfb72;
		6'd51	:	vol_level_5 = 32'h420dece4;
		6'd52 : 	vol_level_5 = 32'h421f3e2d;
		6'd53	:	vol_level_5 = 32'h4232ac66;
		6'd54	:	vol_level_5 = 32'h42487993;
		6'd55 :	vol_level_5 = 32'h4260efc0;
		6'd56 :	vol_level_5	= 32'h427c6208;
		6'd57	:	vol_level_5 = 32'h428d96d3;
		6'd58	:	vol_level_5 = 32'h429edd9b;
		6'd59	:	vol_level_5 = 32'h42b2400c;
		6'd60	:	vol_level_5 = 32'h42c80000;
		6'd61	:	vol_level_5 = 32'h42e06758;
		6'd62	:	vol_level_5 = 32'h42fbc8fb;
		6'd63 :	vol_level_5 = 32'h430d40f6;
		default	:	vol_level_5 = 32'd0;
	endcase
end

always_comb begin
	case (v_6)
		6'd0	:	vol_level_6 = 32'h3dcccccd;
		6'd1	:	vol_level_6 = 32'h3de5ca15;
		6'd2	:	vol_level_6 = 32'h3e00e9f9;
		6'd3	:	vol_level_6 = 32'h3e10a4d3;
		6'd4	:	vol_level_6 = 32'h3e224b06;
		6'd5	:	vol_level_6 = 32'h3e361887;
		6'd6	:	vol_level_6 = 32'h3e4c509b;
		6'd7	:	vol_level_6 = 32'h3e653ebb;
		6'd8	:	vol_level_6 = 32'h3e809bcc;
		6'd9	:	vol_level_6 = 32'h3e904d1c;
		6'd10	:	vol_level_6 = 32'h3ea1e89b;
		6'd11	:	vol_level_6 = 32'h3eb5aa1a;
		6'd12	:	vol_level_6 = 32'h3ecbd4b4;
		6'd13	:	vol_level_6 = 32'h3ee4b3b6;
		6'd14	:	vol_level_6 = 32'h3f004dce;
		6'd15	:	vol_level_6 = 32'h3f0ff59a;
		6'd16	:	vol_level_6 = 32'h3f21866c;
		6'd17	:	vol_level_6 = 32'h3f353bef;
		6'd18	:	vol_level_6 = 32'h3f4b5918;
		6'd19	:	vol_level_6 = 32'h3f642905;
		6'd20	:	vol_level_6 = 32'h3f800000;
		6'd21	:	vol_level_6 = 32'h3f8f9e4d;
		6'd22	:	vol_level_6 = 32'h3fa12478;
		6'd23	:	vol_level_6 = 32'h3fb4ce08;
		6'd24	:	vol_level_6 = 32'h3fcaddc8;
		6'd25	:	vol_level_6 = 32'h3fe39ea9;
		6'd26	: 	vol_level_6 = 32'h3fff64c1;
		6'd27	:	vol_level_6 = 32'h400f4735;
		6'd28	:	vol_level_6 = 32'h4020c2bf;
		6'd29	:	vol_level_6 = 32'h40346063;
		6'd30 :	vol_level_6 = 32'h404a62c2;
		6'd31	:	vol_level_6 = 32'h406314a0;
		6'd32	:	vol_level_6 = 32'h407ec9e1;
		6'd33	:	vol_level_6 = 32'h408ef052;
		6'd34	:	vol_level_6 = 32'h40a06142;
		6'd35	:	vol_level_6 = 32'h40b3f300;
		6'd36	:	vol_level_6 = 32'h40c9e807;
		6'd37	:	vol_level_6 = 32'h40e28aeb;
		6'd38	:	vol_level_6 = 32'h40fe2f5e;
		6'd39	:	vol_level_6 = 32'h410e99a3;
		6'd40	:	vol_level_6 = 32'h41200000;
		6'd41 :	vol_level_6 = 32'h413385e0;
		6'd42 :	vol_level_6 = 32'h41496d96;
		6'd43 :	vol_level_6 = 32'h4162018a;
		6'd44 :	vol_level_6 = 32'h417d953a;
		6'd45 :	vol_level_6 = 32'h418e432a;
		6'd46	:	vol_level_6 = 32'h419f9ef9;
		6'd47 :	vol_level_6 = 32'h41b31902;
		6'd48	:	vol_level_6 = 32'h41c8f36f;
		6'd49 :	vol_level_6 = 32'h41e1787c;
		6'd50	:	vol_level_6 = 32'h41fcfb72;
		6'd51	:	vol_level_6 = 32'h420dece4;
		6'd52 : 	vol_level_6 = 32'h421f3e2d;
		6'd53	:	vol_level_6 = 32'h4232ac66;
		6'd54	:	vol_level_6 = 32'h42487993;
		6'd55 :	vol_level_6 = 32'h4260efc0;
		6'd56 :	vol_level_6	= 32'h427c6208;
		6'd57	:	vol_level_6 = 32'h428d96d3;
		6'd58	:	vol_level_6 = 32'h429edd9b;
		6'd59	:	vol_level_6 = 32'h42b2400c;
		6'd60	:	vol_level_6 = 32'h42c80000;
		6'd61	:	vol_level_6 = 32'h42e06758;
		6'd62	:	vol_level_6 = 32'h42fbc8fb;
		6'd63 :	vol_level_6 = 32'h430d40f6;
		default	:	vol_level_6 = 32'd0;
	endcase
end

always_comb begin
	case (v_7)
		6'd0	:	vol_level_7 = 32'h3dcccccd;
		6'd1	:	vol_level_7 = 32'h3de5ca15;
		6'd2	:	vol_level_7 = 32'h3e00e9f9;
		6'd3	:	vol_level_7 = 32'h3e10a4d3;
		6'd4	:	vol_level_7 = 32'h3e224b06;
		6'd5	:	vol_level_7 = 32'h3e361887;
		6'd6	:	vol_level_7 = 32'h3e4c509b;
		6'd7	:	vol_level_7 = 32'h3e653ebb;
		6'd8	:	vol_level_7 = 32'h3e809bcc;
		6'd9	:	vol_level_7 = 32'h3e904d1c;
		6'd10	:	vol_level_7 = 32'h3ea1e89b;
		6'd11	:	vol_level_7 = 32'h3eb5aa1a;
		6'd12	:	vol_level_7 = 32'h3ecbd4b4;
		6'd13	:	vol_level_7 = 32'h3ee4b3b6;
		6'd14	:	vol_level_7 = 32'h3f004dce;
		6'd15	:	vol_level_7 = 32'h3f0ff59a;
		6'd16	:	vol_level_7 = 32'h3f21866c;
		6'd17	:	vol_level_7 = 32'h3f353bef;
		6'd18	:	vol_level_7 = 32'h3f4b5918;
		6'd19	:	vol_level_7 = 32'h3f642905;
		6'd20	:	vol_level_7 = 32'h3f800000;
		6'd21	:	vol_level_7 = 32'h3f8f9e4d;
		6'd22	:	vol_level_7 = 32'h3fa12478;
		6'd23	:	vol_level_7 = 32'h3fb4ce08;
		6'd24	:	vol_level_7 = 32'h3fcaddc8;
		6'd25	:	vol_level_7 = 32'h3fe39ea9;
		6'd26	: 	vol_level_7 = 32'h3fff64c1;
		6'd27	:	vol_level_7 = 32'h400f4735;
		6'd28	:	vol_level_7 = 32'h4020c2bf;
		6'd29	:	vol_level_7 = 32'h40346063;
		6'd30 :	vol_level_7 = 32'h404a62c2;
		6'd31	:	vol_level_7 = 32'h406314a0;
		6'd32	:	vol_level_7 = 32'h407ec9e1;
		6'd33	:	vol_level_7 = 32'h408ef052;
		6'd34	:	vol_level_7 = 32'h40a06142;
		6'd35	:	vol_level_7 = 32'h40b3f300;
		6'd36	:	vol_level_7 = 32'h40c9e807;
		6'd37	:	vol_level_7 = 32'h40e28aeb;
		6'd38	:	vol_level_7 = 32'h40fe2f5e;
		6'd39	:	vol_level_7 = 32'h410e99a3;
		6'd40	:	vol_level_7 = 32'h41200000;
		6'd41 :	vol_level_7 = 32'h413385e0;
		6'd42 :	vol_level_7 = 32'h41496d96;
		6'd43 :	vol_level_7 = 32'h4162018a;
		6'd44 :	vol_level_7 = 32'h417d953a;
		6'd45 :	vol_level_7 = 32'h418e432a;
		6'd46	:	vol_level_7 = 32'h419f9ef9;
		6'd47 :	vol_level_7 = 32'h41b31902;
		6'd48	:	vol_level_7 = 32'h41c8f36f;
		6'd49 :	vol_level_7 = 32'h41e1787c;
		6'd50	:	vol_level_7 = 32'h41fcfb72;
		6'd51	:	vol_level_7 = 32'h420dece4;
		6'd52 : 	vol_level_7 = 32'h421f3e2d;
		6'd53	:	vol_level_7 = 32'h4232ac66;
		6'd54	:	vol_level_7 = 32'h42487993;
		6'd55 :	vol_level_7 = 32'h4260efc0;
		6'd56 :	vol_level_7	= 32'h427c6208;
		6'd57	:	vol_level_7 = 32'h428d96d3;
		6'd58	:	vol_level_7 = 32'h429edd9b;
		6'd59	:	vol_level_7 = 32'h42b2400c;
		6'd60	:	vol_level_7 = 32'h42c80000;
		6'd61	:	vol_level_7 = 32'h42e06758;
		6'd62	:	vol_level_7 = 32'h42fbc8fb;
		6'd63 :	vol_level_7 = 32'h430d40f6;
		default	:	vol_level_7 = 32'd0;
	endcase
end

always_comb begin
	case (v_8)
		6'd0	:	vol_level_8 = 32'h3dcccccd;
		6'd1	:	vol_level_8 = 32'h3de5ca15;
		6'd2	:	vol_level_8 = 32'h3e00e9f9;
		6'd3	:	vol_level_8 = 32'h3e10a4d3;
		6'd4	:	vol_level_8 = 32'h3e224b06;
		6'd5	:	vol_level_8 = 32'h3e361887;
		6'd6	:	vol_level_8 = 32'h3e4c509b;
		6'd7	:	vol_level_8 = 32'h3e653ebb;
		6'd8	:	vol_level_8 = 32'h3e809bcc;
		6'd9	:	vol_level_8 = 32'h3e904d1c;
		6'd10	:	vol_level_8 = 32'h3ea1e89b;
		6'd11	:	vol_level_8 = 32'h3eb5aa1a;
		6'd12	:	vol_level_8 = 32'h3ecbd4b4;
		6'd13	:	vol_level_8 = 32'h3ee4b3b6;
		6'd14	:	vol_level_8 = 32'h3f004dce;
		6'd15	:	vol_level_8 = 32'h3f0ff59a;
		6'd16	:	vol_level_8 = 32'h3f21866c;
		6'd17	:	vol_level_8 = 32'h3f353bef;
		6'd18	:	vol_level_8 = 32'h3f4b5918;
		6'd19	:	vol_level_8 = 32'h3f642905;
		6'd20	:	vol_level_8 = 32'h3f800000;
		6'd21	:	vol_level_8 = 32'h3f8f9e4d;
		6'd22	:	vol_level_8 = 32'h3fa12478;
		6'd23	:	vol_level_8 = 32'h3fb4ce08;
		6'd24	:	vol_level_8 = 32'h3fcaddc8;
		6'd25	:	vol_level_8 = 32'h3fe39ea9;
		6'd26	: 	vol_level_8 = 32'h3fff64c1;
		6'd27	:	vol_level_8 = 32'h400f4735;
		6'd28	:	vol_level_8 = 32'h4020c2bf;
		6'd29	:	vol_level_8 = 32'h40346063;
		6'd30 :	vol_level_8 = 32'h404a62c2;
		6'd31	:	vol_level_8 = 32'h406314a0;
		6'd32	:	vol_level_8 = 32'h407ec9e1;
		6'd33	:	vol_level_8 = 32'h408ef052;
		6'd34	:	vol_level_8 = 32'h40a06142;
		6'd35	:	vol_level_8 = 32'h40b3f300;
		6'd36	:	vol_level_8 = 32'h40c9e807;
		6'd37	:	vol_level_8 = 32'h40e28aeb;
		6'd38	:	vol_level_8 = 32'h40fe2f5e;
		6'd39	:	vol_level_8 = 32'h410e99a3;
		6'd40	:	vol_level_8 = 32'h41200000;
		6'd41 :	vol_level_8 = 32'h413385e0;
		6'd42 :	vol_level_8 = 32'h41496d96;
		6'd43 :	vol_level_8 = 32'h4162018a;
		6'd44 :	vol_level_8 = 32'h417d953a;
		6'd45 :	vol_level_8 = 32'h418e432a;
		6'd46	:	vol_level_8 = 32'h419f9ef9;
		6'd47 :	vol_level_8 = 32'h41b31902;
		6'd48	:	vol_level_8 = 32'h41c8f36f;
		6'd49 :	vol_level_8 = 32'h41e1787c;
		6'd50	:	vol_level_8 = 32'h41fcfb72;
		6'd51	:	vol_level_8 = 32'h420dece4;
		6'd52 : 	vol_level_8 = 32'h421f3e2d;
		6'd53	:	vol_level_8 = 32'h4232ac66;
		6'd54	:	vol_level_8 = 32'h42487993;
		6'd55 :	vol_level_8 = 32'h4260efc0;
		6'd56 :	vol_level_8	= 32'h427c6208;
		6'd57	:	vol_level_8 = 32'h428d96d3;
		6'd58	:	vol_level_8 = 32'h429edd9b;
		6'd59	:	vol_level_8 = 32'h42b2400c;
		6'd60	:	vol_level_8 = 32'h42c80000;
		6'd61	:	vol_level_8 = 32'h42e06758;
		6'd62	:	vol_level_8 = 32'h42fbc8fb;
		6'd63 :	vol_level_8 = 32'h430d40f6;
		default	:	vol_level_8 = 32'd0;
	endcase
end

endmodule
