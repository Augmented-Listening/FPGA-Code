transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+H:/juanjm2_git/micArray/I2S_AUD_IP/base {H:/juanjm2_git/micArray/I2S_AUD_IP/base/audio_and_video_config.v}
vlog -vlog01compat -work work +incdir+H:/juanjm2_git/micArray/I2S_AUD_IP/base {H:/juanjm2_git/micArray/I2S_AUD_IP/base/altera_up_slow_clock_generator.v}
vlog -vlog01compat -work work +incdir+H:/juanjm2_git/micArray/I2S_AUD_IP/base {H:/juanjm2_git/micArray/I2S_AUD_IP/base/altera_up_i2c_av_auto_initialize.v}
vlog -vlog01compat -work work +incdir+H:/juanjm2_git/micArray/I2S_AUD_IP/base {H:/juanjm2_git/micArray/I2S_AUD_IP/base/altera_up_i2c.v}
vlog -sv -work work +incdir+H:/juanjm2_git/micArray/I2S_AUD_IP/base {H:/juanjm2_git/micArray/I2S_AUD_IP/base/temp_top.sv}
vlog -sv -work work +incdir+H:/juanjm2_git/micArray/I2S_AUD_IP/base {H:/juanjm2_git/micArray/I2S_AUD_IP/base/mic_dma.sv}

vlog -sv -work work +incdir+H:/juanjm2_git/micArray/I2S_AUD_IP/base {H:/juanjm2_git/micArray/I2S_AUD_IP/base/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
