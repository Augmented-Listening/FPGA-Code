transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib aud_32
vmap aud_32 aud_32
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/aud_32.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_av_config_serial_bus_controller.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_slow_clock_generator.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_av_config_auto_init.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_av_config_auto_init_ob_de1_soc.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_av_config_auto_init_ob_audio.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_av_config_auto_init_ob_adv7180.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/aud_32_audio_and_video_config_0.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_audio_bit_counter.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_audio_in_deserializer.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_audio_out_serializer.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_clock_edge.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/altera_up_sync_fifo.v}
vlog -vlog01compat -work aud_32 +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/aud_32/synthesis/submodules/aud_32_audio_0.v}
vlib float
vmap float float
vlog -vlog01compat -work float +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/float.v}
vlog -vlog01compat -work float +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/float_nios_custom_instr_floating_point_2_0.v}
vlog -vlog01compat -work work +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/altera_up_clock_edge.v}
vlog -vlog01compat -work work +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/ip/edge_detect {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/ip/edge_detect/altera_edge_detector.v}
vlog -vlog01compat -work work +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/db {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/db/mult_rau.v}
vlog -vlog01compat -work work +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/db {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/db/mult_sau.v}
vlog -vlog01compat -work work +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/db {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/db/mult_1eu.v}
vlib audio_pll
vmap audio_pll audio_pll
vlog -vlog01compat -work audio_pll +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/audio_pll/synthesis {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/audio_pll/synthesis/audio_pll.v}
vlog -vlog01compat -work audio_pll +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/audio_pll/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/audio_pll/synthesis/submodules/audio_pll_audio_pll_0.v}
vlog -vlog01compat -work audio_pll +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/audio_pll/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/audio_pll/synthesis/submodules/altera_up_avalon_reset_from_locked_signal.v}
vlog -vlog01compat -work audio_pll +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/audio_pll/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/audio_pll/synthesis/submodules/audio_pll_audio_pll_0_audio_pll.v}
vlib soc_system
vmap soc_system soc_system
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/soc_system.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_1.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_0.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_up_clock_edge.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_hps_0.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_hps_0_hps_io.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/hps_sdram.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_mem_if_hhp_qseq_synth_top.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/hps_sdram_p0_acv_hard_addr_cmd_pads.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/hps_sdram_p0_acv_hard_io_pads.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/hps_sdram_p0_acv_hard_memphy.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/hps_sdram_p0_acv_ldc.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/hps_sdram_p0_altdqdqs.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/hps_sdram_p0_clock_pair_generator.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/hps_sdram_p0_generic_ddio.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_Secondary_PLL.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_Pushbuttons.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_Primary_PLL.v}
vlog -sv -work work +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/volumeControl.sv}
vlog -sv -work work +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/gain_fsm.sv}
vlog -sv -work work +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/ghrd_top.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_irq_mapper_001.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_irq_mapper.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_avalon_st_handshake_clock_crosser.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_avalon_st_clock_crosser.v}
vlog -vlog01compat -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_std_synchronizer_nocut.v}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_1_rsp_mux.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_1_rsp_demux.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_1_cmd_mux.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_1_cmd_demux.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_1_router_001.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_1_router.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_master_translator.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_burst_adapter.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_burst_adapter_13_1.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_address_alignment.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router_002.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_merlin_axi_master_ni.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/avalon_microphone_system.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/i2s_master.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/mic_dma.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altdq_dqs2_acv_connect_to_hard_phy_cyclonev.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_mem_if_dll_cyclonev.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_mem_if_hard_memory_controller_top_cyclonev.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/altera_mem_if_oct_cyclonev.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/hps_sdram_p0.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/hps_sdram_pll.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_hps_0_hps_io_border.sv}
vlog -sv -work soc_system +incdir+H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/soc_system/synthesis/submodules/soc_system_hps_0_fpga_interfaces.sv}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/fpoint2_multi.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/fpoint2_multi_datapath.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/fpoint2_multi_dspba_library_package.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/FPDiv/FPDiv.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/FloatToInt/FloatToInt.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/FPSqrt/FPSqrt_safe_path.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/fpoint2_combi.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/FPMinMaxFused/FPMinMaxFused.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/FPCompareFused/FPCompareFused.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/FPNeg_Abs/FPNeg.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/FPNeg_Abs/FPAbs.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/fpoint2_multi_dspba_library.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/FPAddSub/FPAddSub.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/FPMult/FPMult.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/IntToFloat/IntToFloat.vhd}
vcom -93 -work float {H:/juanjm2_git/micArray/Working_Code/de1_soc_GHRD/float/synthesis/submodules/FPSqrt/FPSqrt.vhd}

