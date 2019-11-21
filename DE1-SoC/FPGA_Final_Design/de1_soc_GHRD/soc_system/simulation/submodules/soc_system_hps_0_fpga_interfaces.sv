// (C) 2001-2017 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


`timescale 1 ns / 1 ns

import verbosity_pkg::*;
import avalon_mm_pkg::*;
import mgc_axi_pkg::*;

module soc_system_hps_0_fpga_interfaces
(
   output wire [  0:  0] h2f_rst_n,
   input  wire [  0:  0] h2f_lw_axi_clk,
   output wire [ 11:  0] h2f_lw_AWID,
   output wire [ 20:  0] h2f_lw_AWADDR,
   output wire [  3:  0] h2f_lw_AWLEN,
   output wire [  2:  0] h2f_lw_AWSIZE,
   output wire [  1:  0] h2f_lw_AWBURST,
   output wire [  1:  0] h2f_lw_AWLOCK,
   output wire [  3:  0] h2f_lw_AWCACHE,
   output wire [  2:  0] h2f_lw_AWPROT,
   output wire [  0:  0] h2f_lw_AWVALID,
   input  wire [  0:  0] h2f_lw_AWREADY,
   output wire [ 11:  0] h2f_lw_WID,
   output wire [ 31:  0] h2f_lw_WDATA,
   output wire [  3:  0] h2f_lw_WSTRB,
   output wire [  0:  0] h2f_lw_WLAST,
   output wire [  0:  0] h2f_lw_WVALID,
   input  wire [  0:  0] h2f_lw_WREADY,
   input  wire [ 11:  0] h2f_lw_BID,
   input  wire [  1:  0] h2f_lw_BRESP,
   input  wire [  0:  0] h2f_lw_BVALID,
   output wire [  0:  0] h2f_lw_BREADY,
   output wire [ 11:  0] h2f_lw_ARID,
   output wire [ 20:  0] h2f_lw_ARADDR,
   output wire [  3:  0] h2f_lw_ARLEN,
   output wire [  2:  0] h2f_lw_ARSIZE,
   output wire [  1:  0] h2f_lw_ARBURST,
   output wire [  1:  0] h2f_lw_ARLOCK,
   output wire [  3:  0] h2f_lw_ARCACHE,
   output wire [  2:  0] h2f_lw_ARPROT,
   output wire [  0:  0] h2f_lw_ARVALID,
   input  wire [  0:  0] h2f_lw_ARREADY,
   input  wire [ 11:  0] h2f_lw_RID,
   input  wire [ 31:  0] h2f_lw_RDATA,
   input  wire [  1:  0] h2f_lw_RRESP,
   input  wire [  0:  0] h2f_lw_RLAST,
   input  wire [  0:  0] h2f_lw_RVALID,
   output wire [  0:  0] h2f_lw_RREADY,
   input  wire [ 29:  0] f2h_sdram0_ADDRESS,
   input  wire [  7:  0] f2h_sdram0_BURSTCOUNT,
   output wire [  0:  0] f2h_sdram0_WAITREQUEST,
   output wire [ 31:  0] f2h_sdram0_READDATA,
   output wire [  0:  0] f2h_sdram0_READDATAVALID,
   input  wire [  0:  0] f2h_sdram0_READ,
   input  wire [ 31:  0] f2h_sdram0_WRITEDATA,
   input  wire [  3:  0] f2h_sdram0_BYTEENABLE,
   input  wire [  0:  0] f2h_sdram0_WRITE,
   input  wire [  0:  0] f2h_sdram0_clk,
   input  wire [ 31:  0] f2h_irq_p0,
   input  wire [ 31:  0] f2h_irq_p1
);




   altera_avalon_reset_source #(
      .ASSERT_HIGH_RESET(0),
      .INITIAL_RESET_CYCLES(1)
   ) h2f_reset_inst (
      .reset(h2f_rst_n),
      .clk('0)
   );

   altera_avalon_interrupt_sink #(
      .ASSERT_HIGH_IRQ(1),
      .AV_IRQ_W(32),
      .ASYNCHRONOUS_INTERRUPT(1)
   ) f2h_irq1_inst (
      .irq(f2h_irq_p1),
      .reset('0),
      .clk('0)
   );

   altera_avalon_interrupt_sink #(
      .ASSERT_HIGH_IRQ(1),
      .AV_IRQ_W(32),
      .ASYNCHRONOUS_INTERRUPT(1)
   ) f2h_irq0_inst (
      .irq(f2h_irq_p0),
      .reset('0),
      .clk('0)
   );

   mgc_axi_master #(
      .AXI_ID_WIDTH(12),
      .AXI_ADDRESS_WIDTH(21),
      .AXI_WDATA_WIDTH(32),
      .AXI_RDATA_WIDTH(32),
      .index(2)
   ) h2f_lw_axi_master_inst (
      .ARSIZE(h2f_lw_ARSIZE),
      .AWUSER(),
      .WVALID(h2f_lw_WVALID),
      .RLAST(h2f_lw_RLAST),
      .ACLK(h2f_lw_axi_clk),
      .RRESP(h2f_lw_RRESP),
      .ARREADY(h2f_lw_ARREADY),
      .ARPROT(h2f_lw_ARPROT),
      .ARADDR(h2f_lw_ARADDR),
      .BVALID(h2f_lw_BVALID),
      .ARID(h2f_lw_ARID),
      .BID(h2f_lw_BID),
      .ARBURST(h2f_lw_ARBURST),
      .ARCACHE(h2f_lw_ARCACHE),
      .AWVALID(h2f_lw_AWVALID),
      .WDATA(h2f_lw_WDATA),
      .ARUSER(),
      .RID(h2f_lw_RID),
      .RVALID(h2f_lw_RVALID),
      .WREADY(h2f_lw_WREADY),
      .AWLOCK(h2f_lw_AWLOCK),
      .BRESP(h2f_lw_BRESP),
      .ARLEN(h2f_lw_ARLEN),
      .AWSIZE(h2f_lw_AWSIZE),
      .AWLEN(h2f_lw_AWLEN),
      .BREADY(h2f_lw_BREADY),
      .AWID(h2f_lw_AWID),
      .RDATA(h2f_lw_RDATA),
      .AWREADY(h2f_lw_AWREADY),
      .ARVALID(h2f_lw_ARVALID),
      .WLAST(h2f_lw_WLAST),
      .ARESETn(h2f_rst_n),
      .AWPROT(h2f_lw_AWPROT),
      .WID(h2f_lw_WID),
      .AWADDR(h2f_lw_AWADDR),
      .AWCACHE(h2f_lw_AWCACHE),
      .ARLOCK(h2f_lw_ARLOCK),
      .AWBURST(h2f_lw_AWBURST),
      .RREADY(h2f_lw_RREADY),
      .WSTRB(h2f_lw_WSTRB)
   );

// (C) 2001-2017 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.




wire [9 - 1 : 0] intermediate;
assign intermediate[8:8] = intermediate[7:7];
assign intermediate[0:0] = ~intermediate[1:1];
assign intermediate[2:2] = intermediate[7:7];
assign intermediate[6:6] = intermediate[3:3]|intermediate[5:5];
assign intermediate[4:4] = intermediate[7:7];
assign f2h_sdram0_WAITREQUEST[0:0] = intermediate[0:0];
assign intermediate[3:3] = f2h_sdram0_READ[0:0];
assign intermediate[5:5] = f2h_sdram0_WRITE[0:0];
assign intermediate[7:7] = f2h_sdram0_clk[0:0];

cyclonev_hps_interface_fpga2sdram f2sdram(
 .cmd_data_0({
    18'b000000000000000000 // 59:42
   ,f2h_sdram0_BURSTCOUNT[7:0] // 41:34
   ,2'b00 // 33:32
   ,f2h_sdram0_ADDRESS[29:0] // 31:2
   ,intermediate[5:5] // 1:1
   ,intermediate[3:3] // 0:0
  })
,.cfg_port_width({
    12'b000000000000 // 11:0
  })
,.rd_valid_0({
    f2h_sdram0_READDATAVALID[0:0] // 0:0
  })
,.wr_clk_0({
    intermediate[4:4] // 0:0
  })
,.cfg_cport_type({
    12'b000000000011 // 11:0
  })
,.wr_data_0({
    6'b000000 // 89:84
   ,f2h_sdram0_BYTEENABLE[3:0] // 83:80
   ,48'b000000000000000000000000000000000000000000000000 // 79:32
   ,f2h_sdram0_WRITEDATA[31:0] // 31:0
  })
,.cfg_rfifo_cport_map({
    16'b0000000000000000 // 15:0
  })
,.cfg_cport_wfifo_map({
    18'b000000000000000000 // 17:0
  })
,.cmd_port_clk_0({
    intermediate[8:8] // 0:0
  })
,.cfg_cport_rfifo_map({
    18'b000000000000000000 // 17:0
  })
,.rd_ready_0({
    1'b1 // 0:0
  })
,.cmd_ready_0({
    intermediate[1:1] // 0:0
  })
,.rd_clk_0({
    intermediate[2:2] // 0:0
  })
,.cfg_wfifo_cport_map({
    16'b0000000000000000 // 15:0
  })
,.wrack_ready_0({
    1'b1 // 0:0
  })
,.cmd_valid_0({
    intermediate[6:6] // 0:0
  })
,.rd_data_0({
    f2h_sdram0_READDATA[31:0] // 31:0
  })
,.cfg_axi_mm_select({
    6'b000000 // 5:0
  })
);




endmodule 

