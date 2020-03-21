# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name img_in_0_data_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_in_0_data_V \
    op interface \
    ports { img_in_0_data_V_dout { I 24 vector } img_in_0_data_V_empty_n { I 1 bit } img_in_0_data_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name img_in_1_data_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_in_1_data_V \
    op interface \
    ports { img_in_1_data_V_dout { I 24 vector } img_in_1_data_V_empty_n { I 1 bit } img_in_1_data_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name img_in_2_data_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_in_2_data_V \
    op interface \
    ports { img_in_2_data_V_dout { I 24 vector } img_in_2_data_V_empty_n { I 1 bit } img_in_2_data_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name r_channel_data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_channel_data_V \
    op interface \
    ports { r_channel_data_V_din { O 8 vector } r_channel_data_V_full_n { I 1 bit } r_channel_data_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name g_channel_data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_g_channel_data_V \
    op interface \
    ports { g_channel_data_V_din { O 8 vector } g_channel_data_V_full_n { I 1 bit } g_channel_data_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name b_channel_data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_channel_data_V \
    op interface \
    ports { b_channel_data_V_din { O 8 vector } b_channel_data_V_full_n { I 1 bit } b_channel_data_V_write { O 1 bit } } \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


