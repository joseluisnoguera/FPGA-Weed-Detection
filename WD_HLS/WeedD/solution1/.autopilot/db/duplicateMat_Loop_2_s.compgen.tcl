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
    id 98 \
    name p_dst1_rows \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst1_rows \
    op interface \
    ports { p_dst1_rows_dout { I 9 vector } p_dst1_rows_empty_n { I 1 bit } p_dst1_rows_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name p_dst1_cols \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst1_cols \
    op interface \
    ports { p_dst1_cols_dout { I 10 vector } p_dst1_cols_empty_n { I 1 bit } p_dst1_cols_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name dst_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dst_V_V \
    op interface \
    ports { dst_V_V_dout { I 24 vector } dst_V_V_empty_n { I 1 bit } dst_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name p_dst1_data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst1_data_V \
    op interface \
    ports { p_dst1_data_V_din { O 24 vector } p_dst1_data_V_full_n { I 1 bit } p_dst1_data_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name dst1_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dst1_V_V \
    op interface \
    ports { dst1_V_V_dout { I 24 vector } dst1_V_V_empty_n { I 1 bit } dst1_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name p_dst2_data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst2_data_V \
    op interface \
    ports { p_dst2_data_V_din { O 24 vector } p_dst2_data_V_full_n { I 1 bit } p_dst2_data_V_write { O 1 bit } } \
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

