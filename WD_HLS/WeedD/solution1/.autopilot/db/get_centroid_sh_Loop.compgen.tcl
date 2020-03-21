# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 421 \
    name micro_roi_data_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename micro_roi_data_V \
    op interface \
    ports { micro_roi_data_V_address0 { O 10 vector } micro_roi_data_V_ce0 { O 1 bit } micro_roi_data_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'micro_roi_data_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name v_limit \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_limit \
    op interface \
    ports { v_limit { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name h_limit \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_h_limit \
    op interface \
    ports { h_limit { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name h_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_h_offset \
    op interface \
    ports { h_offset { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name v_offset_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_offset_read \
    op interface \
    ports { v_offset_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name possible_c_x \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_possible_c_x \
    op interface \
    ports { possible_c_x { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name possible_c_y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_possible_c_y \
    op interface \
    ports { possible_c_y { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name c_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_read \
    op interface \
    ports { c_read { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name h_offset_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_offset_out \
    op interface \
    ports { h_offset_out_din { O 16 vector } h_offset_out_full_n { I 1 bit } h_offset_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name v_offset_read_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_offset_read_out \
    op interface \
    ports { v_offset_read_out_din { O 8 vector } v_offset_read_out_full_n { I 1 bit } v_offset_read_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name possible_c_x_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_possible_c_x_out \
    op interface \
    ports { possible_c_x_out_din { O 8 vector } possible_c_x_out_full_n { I 1 bit } possible_c_x_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name possible_c_y_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_possible_c_y_out \
    op interface \
    ports { possible_c_y_out_din { O 32 vector } possible_c_y_out_full_n { I 1 bit } possible_c_y_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name c_read_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_read_out \
    op interface \
    ports { c_read_out_din { O 48 vector } c_read_out_full_n { I 1 bit } c_read_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


