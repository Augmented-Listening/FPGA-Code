// ============================================================================
// Copyright (c) 2013 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Mon Jun 17 20:35:29 2013
// ============================================================================

`define ENABLE_HPS

module ghrd_top(

      
      ///////// ADC /////////
      inout              ADC_CS_N,
      output             ADC_DIN,
      input              ADC_DOUT,
      output             ADC_SCLK,

      ///////// AUD /////////
      input              AUD_ADCDAT,
      inout              AUD_ADCLRCK,
      inout              AUD_BCLK,
      output             AUD_DACDAT,
      inout              AUD_DACLRCK,
      output             AUD_XCK,
		
		///////// Mic Signals /////////
		input						GPIO_DIN,
		input						GPIO_DIN2,
		input						GPIO_DIN3,
		input						GPIO_DIN4,
		output					GPIO_BCLK,
		output					GPIO_LRCLK,

      ///////// CLOCK2 /////////
      input              CLOCK2_50,

      ///////// CLOCK3 /////////
      input              CLOCK3_50,

      ///////// CLOCK4 /////////
      input              CLOCK4_50,

      ///////// CLOCK /////////
      input              CLOCK_50,

      ///////// DRAM /////////
      output      [12:0] DRAM_ADDR,
      output      [1:0]  DRAM_BA,
      output             DRAM_CAS_N,
      output             DRAM_CKE,
      output             DRAM_CLK,
      output             DRAM_CS_N,
      inout       [15:0] DRAM_DQ,
      output             DRAM_LDQM,
      output             DRAM_RAS_N,
      output             DRAM_UDQM,
      output             DRAM_WE_N,

      ///////// FAN /////////
      output             FAN_CTRL,

      ///////// FPGA /////////
      output             FPGA_I2C_SCLK,
      inout              FPGA_I2C_SDAT,

      ///////// GPIO /////////
      inout     [35:0]         GPIO_0,
      inout     [35:0]         GPIO_1,
 

      ///////// HEX0 /////////
      output      [6:0]  HEX0,

      ///////// HEX1 /////////
      output      [6:0]  HEX1,

      ///////// HEX2 /////////
      output      [6:0]  HEX2,

      ///////// HEX3 /////////
      output      [6:0]  HEX3,

      ///////// HEX4 /////////
      output      [6:0]  HEX4,

      ///////// HEX5 /////////
      output      [6:0]  HEX5,

`ifdef ENABLE_HPS
      ///////// HPS /////////
      inout              HPS_CONV_USB_N,
      output      [14:0] HPS_DDR3_ADDR,
      output      [2:0]  HPS_DDR3_BA,
      output             HPS_DDR3_CAS_N,
      output             HPS_DDR3_CKE,
      output             HPS_DDR3_CK_N,
      output             HPS_DDR3_CK_P,
      output             HPS_DDR3_CS_N,
      output      [3:0]  HPS_DDR3_DM,
      inout       [31:0] HPS_DDR3_DQ,
      inout       [3:0]  HPS_DDR3_DQS_N,
      inout       [3:0]  HPS_DDR3_DQS_P,
      output             HPS_DDR3_ODT,
      output             HPS_DDR3_RAS_N,
      output             HPS_DDR3_RESET_N,
      input              HPS_DDR3_RZQ,
      output             HPS_DDR3_WE_N,
      output             HPS_ENET_GTX_CLK,
      inout              HPS_ENET_INT_N,
      output             HPS_ENET_MDC,
      inout              HPS_ENET_MDIO,
      input              HPS_ENET_RX_CLK,
      input       [3:0]  HPS_ENET_RX_DATA,
      input              HPS_ENET_RX_DV,
      output      [3:0]  HPS_ENET_TX_DATA,
      output             HPS_ENET_TX_EN,
      inout       [3:0]  HPS_FLASH_DATA,
      output             HPS_FLASH_DCLK,
      output             HPS_FLASH_NCSO,
      inout              HPS_GSENSOR_INT,
      inout              HPS_I2C1_SCLK,
      inout              HPS_I2C1_SDAT,
      inout              HPS_I2C2_SCLK,
      inout              HPS_I2C2_SDAT,
      inout              HPS_I2C_CONTROL,
      inout              HPS_KEY,
      inout              HPS_LED,
      inout              HPS_LTC_GPIO,
      output             HPS_SD_CLK,
      inout              HPS_SD_CMD,
      inout       [3:0]  HPS_SD_DATA,
      output             HPS_SPIM_CLK,
      input              HPS_SPIM_MISO,
      output             HPS_SPIM_MOSI,
      inout              HPS_SPIM_SS,
      input              HPS_UART_RX,
      output             HPS_UART_TX,
      input              HPS_USB_CLKOUT,
      inout       [7:0]  HPS_USB_DATA,
      input              HPS_USB_DIR,
      input              HPS_USB_NXT,
      output             HPS_USB_STP,
`endif /*ENABLE_HPS*/

      ///////// IRDA /////////
      input              IRDA_RXD,
      output             IRDA_TXD,

      ///////// KEY /////////
      input       [3:0]  KEY,

      ///////// LEDR /////////
      output      [9:0]  LEDR,

      ///////// PS2 /////////
      inout              PS2_CLK,
      inout              PS2_CLK2,
      inout              PS2_DAT,
      inout              PS2_DAT2,

      ///////// SW /////////
      input       [9:0]  SW,

      ///////// TD /////////
      input              TD_CLK27,
      input      [7:0]  TD_DATA,
      input             TD_HS,
      output             TD_RESET_N,
      input             TD_VS,


      ///////// VGA /////////
      output      [7:0]  VGA_B,
      output             VGA_BLANK_N,
      output             VGA_CLK,
      output      [7:0]  VGA_G,
      output             VGA_HS,
      output      [7:0]  VGA_R,
      output             VGA_SYNC_N,
      output             VGA_VS
);

assign GPIO_LRCLK = AUD_ADCLRCK;
assign GPIO_BCLK = AUD_BCLK;

//=======================================================
//  REG/WIRE declarations
//=======================================================
//  wire  hps_fpga_reset_n;
//  wire [3:0] fpga_debounced_buttons;
//  wire [8:0]  fpga_led_internal;
//  wire [2:0]  hps_reset_req;
//  wire        hps_cold_reset;
//  wire        hps_warm_reset;
//  wire        hps_debug_reset;
//  wire [27:0] stm_hw_events;
//  wire        fpga_clk_50;
//// connection of internal logics
//  assign LEDR[9:1] = fpga_led_internal;
//  assign stm_hw_events    = {{4{1'b0}}, SW, fpga_led_internal, fpga_debounced_buttons};
//  assign fpga_clk_50=CLOCK_50;
//=======================================================
//  Structural coding
//=======================================================
soc_system u0 (      
		  .clk_clk                               (CLOCK_50),                             //                clk.clk
		  .reset_reset_n                         (1'b1),                                 //                reset.reset_n
		  //HPS ddr3
		  .hps_0_addr_mem_a                          ( HPS_DDR3_ADDR),                       //                memory.mem_a
        .hps_0_addr_mem_ba                         ( HPS_DDR3_BA),                         //                .mem_ba
        .hps_0_addr_mem_ck                         ( HPS_DDR3_CK_P),                       //                .mem_ck
        .hps_0_addr_mem_ck_n                       ( HPS_DDR3_CK_N),                       //                .mem_ck_n
        .hps_0_addr_mem_cke                        ( HPS_DDR3_CKE),                        //                .mem_cke
        .hps_0_addr_mem_cs_n                       ( HPS_DDR3_CS_N),                       //                .mem_cs_n
        .hps_0_addr_mem_ras_n                      ( HPS_DDR3_RAS_N),                      //                .mem_ras_n
        .hps_0_addr_mem_cas_n                      ( HPS_DDR3_CAS_N),                      //                .mem_cas_n
        .hps_0_addr_mem_we_n                       ( HPS_DDR3_WE_N),                       //                .mem_we_n
        .hps_0_addr_mem_reset_n                    ( HPS_DDR3_RESET_N),                    //                .mem_reset_n
        .hps_0_addr_mem_dq                         ( HPS_DDR3_DQ),                         //                .mem_dq
        .hps_0_addr_mem_dqs                        ( HPS_DDR3_DQS_P),                      //                .mem_dqs
        .hps_0_addr_mem_dqs_n                      ( HPS_DDR3_DQS_N),                      //                .mem_dqs_n
        .hps_0_addr_mem_odt                        ( HPS_DDR3_ODT),                        //                .mem_odt
        .hps_0_addr_mem_dm                         ( HPS_DDR3_DM),                         //                .mem_dm
        .hps_0_addr_oct_rzqin                      ( HPS_DDR3_RZQ),                        //                .oct_rzqin
       //HPS ethernet		
	     .hps_io_hps_io_emac1_inst_TX_CLK ( HPS_ENET_GTX_CLK),       //                             hps_0_hps_io.hps_io_emac1_inst_TX_CLK
        .hps_io_hps_io_emac1_inst_TXD0   ( HPS_ENET_TX_DATA[0] ),   //                             .hps_io_emac1_inst_TXD0
        .hps_io_hps_io_emac1_inst_TXD1   ( HPS_ENET_TX_DATA[1] ),   //                             .hps_io_emac1_inst_TXD1
        .hps_io_hps_io_emac1_inst_TXD2   ( HPS_ENET_TX_DATA[2] ),   //                             .hps_io_emac1_inst_TXD2
        .hps_io_hps_io_emac1_inst_TXD3   ( HPS_ENET_TX_DATA[3] ),   //                             .hps_io_emac1_inst_TXD3
        .hps_io_hps_io_emac1_inst_RXD0   ( HPS_ENET_RX_DATA[0] ),   //                             .hps_io_emac1_inst_RXD0
        .hps_io_hps_io_emac1_inst_MDIO   ( HPS_ENET_MDIO ),         //                             .hps_io_emac1_inst_MDIO
        .hps_io_hps_io_emac1_inst_MDC    ( HPS_ENET_MDC  ),         //                             .hps_io_emac1_inst_MDC
        .hps_io_hps_io_emac1_inst_RX_CTL ( HPS_ENET_RX_DV),         //                             .hps_io_emac1_inst_RX_CTL
        .hps_io_hps_io_emac1_inst_TX_CTL ( HPS_ENET_TX_EN),         //                             .hps_io_emac1_inst_TX_CTL
        .hps_io_hps_io_emac1_inst_RX_CLK ( HPS_ENET_RX_CLK),        //                             .hps_io_emac1_inst_RX_CLK
        .hps_io_hps_io_emac1_inst_RXD1   ( HPS_ENET_RX_DATA[1] ),   //                             .hps_io_emac1_inst_RXD1
        .hps_io_hps_io_emac1_inst_RXD2   ( HPS_ENET_RX_DATA[2] ),   //                             .hps_io_emac1_inst_RXD2
        .hps_io_hps_io_emac1_inst_RXD3   ( HPS_ENET_RX_DATA[3] ),   //                             .hps_io_emac1_inst_RXD3
       //HPS QSPI  
		  .hps_io_hps_io_qspi_inst_IO0     ( HPS_FLASH_DATA[0]    ),     //                               .hps_io_qspi_inst_IO0
        .hps_io_hps_io_qspi_inst_IO1     ( HPS_FLASH_DATA[1]    ),     //                               .hps_io_qspi_inst_IO1
        .hps_io_hps_io_qspi_inst_IO2     ( HPS_FLASH_DATA[2]    ),     //                               .hps_io_qspi_inst_IO2
        .hps_io_hps_io_qspi_inst_IO3     ( HPS_FLASH_DATA[3]    ),     //                               .hps_io_qspi_inst_IO3
        .hps_io_hps_io_qspi_inst_SS0     ( HPS_FLASH_NCSO    ),        //                               .hps_io_qspi_inst_SS0
        .hps_io_hps_io_qspi_inst_CLK     ( HPS_FLASH_DCLK    ),        //                               .hps_io_qspi_inst_CLK
       //HPS SD card 
		  .hps_io_hps_io_sdio_inst_CMD     ( HPS_SD_CMD    ),           //                               .hps_io_sdio_inst_CMD
        .hps_io_hps_io_sdio_inst_D0      ( HPS_SD_DATA[0]     ),      //                               .hps_io_sdio_inst_D0
        .hps_io_hps_io_sdio_inst_D1      ( HPS_SD_DATA[1]     ),      //                               .hps_io_sdio_inst_D1
        .hps_io_hps_io_sdio_inst_CLK     ( HPS_SD_CLK   ),            //                               .hps_io_sdio_inst_CLK
        .hps_io_hps_io_sdio_inst_D2      ( HPS_SD_DATA[2]     ),      //                               .hps_io_sdio_inst_D2
        .hps_io_hps_io_sdio_inst_D3      ( HPS_SD_DATA[3]     ),      //                               .hps_io_sdio_inst_D3
       //HPS USB 		  
		  .hps_io_hps_io_usb1_inst_D0      ( HPS_USB_DATA[0]    ),      //                               .hps_io_usb1_inst_D0
        .hps_io_hps_io_usb1_inst_D1      ( HPS_USB_DATA[1]    ),      //                               .hps_io_usb1_inst_D1
        .hps_io_hps_io_usb1_inst_D2      ( HPS_USB_DATA[2]    ),      //                               .hps_io_usb1_inst_D2
        .hps_io_hps_io_usb1_inst_D3      ( HPS_USB_DATA[3]    ),      //                               .hps_io_usb1_inst_D3
        .hps_io_hps_io_usb1_inst_D4      ( HPS_USB_DATA[4]    ),      //                               .hps_io_usb1_inst_D4
        .hps_io_hps_io_usb1_inst_D5      ( HPS_USB_DATA[5]    ),      //                               .hps_io_usb1_inst_D5
        .hps_io_hps_io_usb1_inst_D6      ( HPS_USB_DATA[6]    ),      //                               .hps_io_usb1_inst_D6
        .hps_io_hps_io_usb1_inst_D7      ( HPS_USB_DATA[7]    ),      //                               .hps_io_usb1_inst_D7
        .hps_io_hps_io_usb1_inst_CLK     ( HPS_USB_CLKOUT    ),       //                               .hps_io_usb1_inst_CLK
        .hps_io_hps_io_usb1_inst_STP     ( HPS_USB_STP    ),          //                               .hps_io_usb1_inst_STP
        .hps_io_hps_io_usb1_inst_DIR     ( HPS_USB_DIR    ),          //                               .hps_io_usb1_inst_DIR
        .hps_io_hps_io_usb1_inst_NXT     ( HPS_USB_NXT    ),          //                               .hps_io_usb1_inst_NXT
       //HPS SPI 		  
		  .hps_io_hps_io_spim1_inst_CLK    ( HPS_SPIM_CLK  ),           //                               .hps_io_spim1_inst_CLK
        .hps_io_hps_io_spim1_inst_MOSI   ( HPS_SPIM_MOSI ),           //                               .hps_io_spim1_inst_MOSI
        .hps_io_hps_io_spim1_inst_MISO   ( HPS_SPIM_MISO ),           //                               .hps_io_spim1_inst_MISO
        .hps_io_hps_io_spim1_inst_SS0    ( HPS_SPIM_SS ),             //                               .hps_io_spim1_inst_SS0
      //HPS UART		
		  .hps_io_hps_io_uart0_inst_RX     ( HPS_UART_RX    ),          //                               .hps_io_uart0_inst_RX
        .hps_io_hps_io_uart0_inst_TX     ( HPS_UART_TX    ),          //                               .hps_io_uart0_inst_TX
		//HPS I2C1
		  .hps_io_hps_io_i2c0_inst_SDA     ( HPS_I2C1_SDAT    ),        //                               .hps_io_i2c0_inst_SDA
        .hps_io_hps_io_i2c0_inst_SCL     ( HPS_I2C1_SCLK    ),        //                               .hps_io_i2c0_inst_SCL
		//HPS I2C2
		  .hps_io_hps_io_i2c1_inst_SDA     ( HPS_I2C2_SDAT    ),        //                               .hps_io_i2c1_inst_SDA
        .hps_io_hps_io_i2c1_inst_SCL     ( HPS_I2C2_SCLK    ),        //                               .hps_io_i2c1_inst_SCL
      //HPS GPIO  
		  .hps_io_hps_io_gpio_inst_GPIO09  ( HPS_CONV_USB_N),           //                               .hps_io_gpio_inst_GPIO09
        .hps_io_hps_io_gpio_inst_GPIO35  ( HPS_ENET_INT_N),           //                               .hps_io_gpio_inst_GPIO35
        .hps_io_hps_io_gpio_inst_GPIO40  ( HPS_LTC_GPIO),              //                               .hps_io_gpio_inst_GPIO40
        //.hps_0_hps_io_hps_io_gpio_inst_GPIO41  ( HPS_GPIO[1]),              //                               .hps_io_gpio_inst_GPIO41
        .hps_io_hps_io_gpio_inst_GPIO48  ( HPS_I2C_CONTROL),          //                               .hps_io_gpio_inst_GPIO48
        .hps_io_hps_io_gpio_inst_GPIO53  ( HPS_LED),                  //                               .hps_io_gpio_inst_GPIO53
        .hps_io_hps_io_gpio_inst_GPIO54  ( HPS_KEY),                  //                               .hps_io_gpio_inst_GPIO54
        .hps_io_hps_io_gpio_inst_GPIO61  ( HPS_GSENSOR_INT),          //                               .hps_io_gpio_inst_GPIO61
		  
			// Audio signals
			.mic_system_0_adc_data_new_signal({left_data[31:16], right_data[31:16]}),
			.mic_system_0_aud_adclrck_new_signal(AUD_ADCLRCK),
			.mic_system_0_aud_bclk_new_signal(AUD_BCLK),
		   .mic_system_0_codec_stream_new_signal(inter_data),
			.mic_system_0_fir_left_data_new_signal(vol_out_1),
			.mic_system_0_fir_right_data_new_signal(vol_out_2),
			.mic_system_0_gpio_din1_new_signal(GPIO_DIN),
			.mic_system_0_gpio_din2_new_signal(GPIO_DIN2),
			.mic_system_0_gpio_din3_new_signal(GPIO_DIN3),
			.mic_system_0_gpio_din4_new_signal(GPIO_DIN4),
			.mic_system_0_sample_ready_new_signal(sample_ready),
			.mic_system_0_vol_1_new_signal(vol_1),   //       mic_system_0_volume_level.new_signal
			.mic_system_0_vol_2_new_signal(vol_2),
			.mic_system_0_vol_3_new_signal(vol_3),
			.mic_system_0_vol_4_new_signal(vol_4),
			.mic_system_0_vol_5_new_signal(vol_5),   //       mic_system_0_volume_level.new_signal
			.mic_system_0_vol_6_new_signal(vol_6),
			.mic_system_0_vol_7_new_signal(vol_7),
			.mic_system_0_vol_8_new_signal(vol_8),
			.mic_system_0_coef_data_new_signal(coef_data),
			.mic_system_0_load_coef_new_signal(load_coef),
			.mic_system_0_change_filter_new_signal(change_filter),
			.pushbuttons_external_connection_export(~KEY[3:0])
    );
	 
logic sample_ready;
logic [31:0] vol_out_1, vol_out_2, vol_out_3, vol_out_4, vol_out_5, vol_out_6, vol_out_7, vol_out_8, left_vol_out, right_vol_out, inter_data, vol_1, vol_2, vol_3, vol_4, vol_5, vol_6, vol_7, vol_8;	
logic fir_chan_done;

assign fir_chan_done = fir_output_valid & fir_out_eop;

volumeControl vol_cntl(
	.CLK(CLOCK_50),
	.RESET(~KEY[0]),
	.fir_ready(fir_chan_done),
	.fir_out_1(fir_left),
	.fir_out_2(fir_right),
	.fir_out_3(fir_left_2),
	.fir_out_4(fir_right_2),
	.fir_out_5(fir_left_3),
	.fir_out_6(fir_right_3),
	.fir_out_7(fir_left_4),
	.fir_out_8(fir_right_4),
	.*
);

assign left_vol_out = vol_out_1 + vol_out_3 + vol_out_5 + vol_out_7;
assign right_vol_out = vol_out_2 + vol_out_4 + vol_out_6 + vol_out_8;

audio_pll clock_gen(
	.audio_pll_0_audio_clk_clk(AUD_XCK),
	.audio_pll_0_ref_clk_clk(CLOCK2_50),
	.audio_pll_0_ref_reset_reset(1'b0),
	.audio_pll_0_ref_reset_source_reset()
);

logic left_ready, left_valid;
logic right_ready, right_valid;
logic [31:0] left_data;
logic [31:0] right_data;

aud_32 line32(
	.clk_clk(CLOCK_50),
	.ext_ADCDAT(AUD_ADCDAT),
	.ext_ADCLRCK(AUD_ADCLRCK),
	.ext_BCLK(AUD_BCLK),
	.ext_DACDAT(AUD_DACDAT),
	.ext_DACLRCK(AUD_DACLRCK),
	.ext_1_SDAT(FPGA_I2C_SDAT),
	.ext_1_SCLK(FPGA_I2C_SCLK),
	.left_input_data(left_vol_out),
	.left_input_valid(left_valid),
	.left_input_ready(left_ready),
	.left_output_ready(left_ready),
	.left_output_data(left_data),
	.left_output_valid(left_valid),
	.reset_reset_n(1'b1),
	.right_input_data(right_vol_out),
	.right_input_valid(right_valid),
	.right_input_ready(right_ready),
	.right_output_ready(right_ready),
	.right_output_data(right_data),
	.right_output_valid(right_valid)
);



logic [15:0] mic_l, mic_l2, mic_l3, mic_l4;
logic [15:0] mic_r, mic_r2, mic_r3, mic_r4;

i2s_master m1(
	.sck(AUD_BCLK),
	.ws(AUD_ADCLRCK),
	.sd(GPIO_DIN),
	.data_left(mic_l),
	.data_right(mic_r)
);

i2s_master m2(
	.sck(AUD_BCLK),
	.ws(AUD_ADCLRCK),
	.sd(GPIO_DIN2),
	.data_left(mic_l2),
	.data_right(mic_r2)
);

i2s_master m3(
	.sck(AUD_BCLK),
	.ws(AUD_ADCLRCK),
	.sd(GPIO_DIN3),
	.data_left(mic_l3),
	.data_right(mic_r3)
);

i2s_master m4(
	.sck(AUD_BCLK),
	.ws(AUD_ADCLRCK),
	.sd(GPIO_DIN4),
	.data_left(mic_l4),
	.data_right(mic_r4)
);

logic [18:0] fir_input;
logic fir_sop, fir_eop, output_valid;

fir_channel_fsm fir_feed(
	.CLOCK_50(CLOCK_50),
	.reset(~KEY[0]),
	.ready(left_valid),
	.channel_1(mic_l * 16'd10),
	.channel_2(mic_r * 16'd10),
	.channel_3(mic_l2 * 16'd10),
	.channel_4(mic_r2 * 16'd10),
	.channel_5(mic_l3 * 16'd10),
	.channel_6(mic_r3 * 16'd10),
	.channel_7(mic_l4 * 16'd10),
	.channel_8(mic_r4 * 16'd10),
	.output_data(fir_input),
	.output_valid(output_valid),
	.sop(fir_sop),
	.eop(fir_eop)
);

logic [31:0] p_fir_left, p_fir_right, p_fir_left_2, p_fir_right_2, p_fir_left_3, p_fir_right_3, p_fir_left_4, p_fir_right_4;

always_ff @(posedge CLOCK_50)
begin
	if (~KEY[0])
	begin
		p_fir_left <= 32'd0;
		p_fir_right <= 32'd0;
		p_fir_left_2 <= 32'd0;
		p_fir_right_2 <= 32'd0;
		p_fir_left_3 <= 32'd0;
		p_fir_right_3 <= 32'd0;
		p_fir_left_4 <= 32'd0;
		p_fir_right_4 <= 32'd0;
	end
	else
	begin
		p_fir_left <= fir_left;
		p_fir_right <= fir_right;
		p_fir_left_2 <= fir_left_2;
		p_fir_right_2 <= fir_right_2;
		p_fir_left_3 <= fir_left_3;
		p_fir_right_3 <= fir_right_3;
		p_fir_left_4 <= fir_left_4;
		p_fir_right_4 <= fir_right_4;
	end
end

always_comb 
begin
	fir_left <= (fir_output_valid & (fir_chan == 3'b000)) ? fir_data : p_fir_left;
	fir_right <= (fir_output_valid & (fir_chan == 3'b001)) ? fir_data : p_fir_right;
	fir_left_2 <= (fir_output_valid & (fir_chan == 3'b010)) ? fir_data : p_fir_left_2;
	fir_right_2 <= (fir_output_valid & (fir_chan == 3'b011)) ? fir_data : p_fir_right_2;
	fir_left_3 <= (fir_output_valid & (fir_chan == 3'b100)) ? fir_data : p_fir_left_3;
	fir_right_3 <= (fir_output_valid & (fir_chan == 3'b101)) ? fir_data : p_fir_right_3;
	fir_left_4 <= (fir_output_valid & (fir_chan == 3'b110)) ? fir_data : p_fir_left_4;
	fir_right_4 <= (fir_output_valid & (fir_chan == 3'b111)) ? fir_data : p_fir_right_4;
end

logic [31:0] fir_left, fir_right, fir_left_2, fir_right_2, fir_left_3, fir_right_3, fir_left_4, fir_right_4, fir_data;
logic [2:0] fir_chan;
logic fir_output_valid, fir_out_sop, fir_out_eop;

fir low_pass(
		.begin_load_reset_n(c_areset),
		.clk_clk(CLOCK_50),                  //        clk.clk
		.input_data(fir_input),           //  fir_input.data
		.input_valid(output_valid),          //           .valid
		.input_error(2'd0),          //           .error
		.input_startofpacket(fir_sop),  //           .startofpacket
		.input_endofpacket(fir_eop),    //           .endofpacket
		.output_data(fir_data),          // fir_output.data
		.output_valid(fir_output_valid),         //           .valid
		.output_error(),         //           .error
		.output_startofpacket(fir_out_sop), //           .startofpacket
		.output_endofpacket(fir_out_eop),   //           .endofpacket
		.output_channel(fir_chan),       //           .channel
		.reset_reset_n(KEY[0]),             //      reset.reset_n
		.slave_address(c_addr),        //  slave.address
		.slave_write(c_we),          //       .write
		.slave_writedata(readdata_latch)       //       .writedata
);

logic [15:0] coef_data;
logic load_coef, change_filter;

coef_fifo f1(
		.clk_clk(CLOCK_50),       //   clk.clk
		.in_writedata(coef_data),  //    in.writedata
		.in_write(load_coef),      //      .write
		.out_readdata(readdata_wire_fifo),  //   out.readdata
		.out_read(read_wire),      //      .read
		.reset_reset_n(KEY[0])  // reset.reset_n
);

logic [15:0] readdata_wire_fifo, readdata_latch;
logic [9:0] c_addr;
logic read_wire, c_areset, c_we;

fifo_fsm_interface fsm_fir(
	.*,
	.reset(~KEY[0]),
	.start(change_filter),
	.read(read_wire),
	.fifo_out(readdata_wire_fifo),
	.fifo_out_latch(readdata_latch),
	.coeff_address(c_addr),
	.coeff_areset(c_areset),
	.coeff_we(c_we)
);

/*
(big money-se)
 _______   _______    ______   __    __   ______   __    __          
|       \ |       \  /      \ |  \  |  \ /      \ |  \  |  \         
| $$$$$$$\| $$$$$$$\|  $$$$$$\| $$\ | $$|  $$$$$$\| $$  | $$         
| $$__/ $$| $$__| $$| $$__| $$| $$$\| $$| $$   \$$| $$__| $$         
| $$    $$| $$    $$| $$    $$| $$$$\ $$| $$      | $$    $$         
| $$$$$$$\| $$$$$$$\| $$$$$$$$| $$\$$ $$| $$   __ | $$$$$$$$         
| $$__/ $$| $$  | $$| $$  | $$| $$ \$$$$| $$__/  \| $$  | $$         
| $$    $$| $$  | $$| $$  | $$| $$  \$$$ \$$    $$| $$  | $$         
 \$$$$$$$  \$$   \$$ \$$   \$$ \$$   \$$  \$$$$$$  \$$   \$$         
                                                                     
                                                                     
                                                                     
 ________   ______   _______  ________  __    __  __    __  ________ 
|        \ /      \ |       \|        \|  \  |  \|  \  |  \|        \
| $$$$$$$$|  $$$$$$\| $$$$$$$\\$$$$$$$$| $$  | $$| $$\ | $$| $$$$$$$$
| $$__    | $$  | $$| $$__| $$  | $$   | $$  | $$| $$$\| $$| $$__    
| $$  \   | $$  | $$| $$    $$  | $$   | $$  | $$| $$$$\ $$| $$  \   
| $$$$$   | $$  | $$| $$$$$$$\  | $$   | $$  | $$| $$\$$ $$| $$$$$   
| $$      | $$__/ $$| $$  | $$  | $$   | $$__/ $$| $$ \$$$$| $$_____ 
| $$       \$$    $$| $$  | $$  | $$    \$$    $$| $$  \$$$| $$     \
 \$$        \$$$$$$  \$$   \$$   \$$     \$$$$$$  \$$   \$$ \$$$$$$$$
                                                                     
                                                                     
                                                                     
 ________  ________  __        __        ________  _______           
|        \|        \|  \      |  \      |        \|       \          
 \$$$$$$$$| $$$$$$$$| $$      | $$      | $$$$$$$$| $$$$$$$\         
   | $$   | $$__    | $$      | $$      | $$__    | $$__| $$         
   | $$   | $$  \   | $$      | $$      | $$  \   | $$    $$         
   | $$   | $$$$$   | $$      | $$      | $$$$$   | $$$$$$$\         
   | $$   | $$_____ | $$_____ | $$_____ | $$_____ | $$  | $$         
   | $$   | $$     \| $$     \| $$     \| $$     \| $$  | $$         
    \$$    \$$$$$$$$ \$$$$$$$$ \$$$$$$$$ \$$$$$$$$ \$$   \$$         
                                                                     

										.---.
									 .'_..._'.
									.''_   _''.
								  .' :  '  : '.
								 .'_.-'_~_'-._'.
								.'(     '     )'.
							  .'  \ \     / /  '.
							 .'    \ \   / /    '.
					 ____________'''` '```____________
					/              .''.               \
				  /              (  ` )               \
				 /               .'..'.                \
				/                '----'                 \
			  /_________________________________________\
				 \  /'--'                       '--'\  /
				  ||                                 ||
				  ||                                 ||
				 _||_                               _||_
				 '--'                               '--'  
*/

endmodule

  