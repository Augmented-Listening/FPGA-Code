set_global_assignment -entity "coef_fifo" -library "lib_coef_fifo" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "coef_fifo" -library "lib_coef_fifo" -name IP_TOOL_VERSION "17.1"
set_global_assignment -entity "coef_fifo" -library "lib_coef_fifo" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_coef_fifo" -name SPD_FILE [file join $::quartus(sip_path) "../coef_fifo.spd"]
set_global_assignment -library "lib_coef_fifo" -name MISC_FILE [file join $::quartus(sip_path) "../../coef_fifo.qsys"]

set_global_assignment -library "lib_coef_fifo" -name MISC_FILE [file join $::quartus(sip_path) "coef_fifo.v"]
set_global_assignment -library "lib_coef_fifo" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_controller.v"]
set_global_assignment -library "lib_coef_fifo" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_synchronizer.v"]
set_global_assignment -library "lib_coef_fifo" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_controller.sdc"]
set_global_assignment -library "lib_coef_fifo" -name MISC_FILE [file join $::quartus(sip_path) "submodules/coef_fifo_fifo_buffer.v"]
