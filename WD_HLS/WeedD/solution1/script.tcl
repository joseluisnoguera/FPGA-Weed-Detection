############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project WeedD
set_top ip_accel_app
add_files headers.h -cflags "-D__SDSVHLS__ -ID:/Xilinx/xfopencv-master/include"
add_files image_config.h -cflags "-D__SDSVHLS__ -ID:/Xilinx/xfopencv-master/include"
add_files wd_stage_1.h
add_files wd_stage_2.h
add_files wd_stage_3.h
add_files weed_detection.cpp -cflags "-D__SDSVHLS__ -ID:/Xilinx/xfopencv-master/include"
add_files weed_detection.h -cflags "-D__SDSVHLS__ -ID:/Xilinx/xfopencv-master/include"
add_files xf_add_2.hpp
add_files xf_duplicate_2.hpp
add_files xf_resize_2.hpp
add_files -tb image_config_tb.h -cflags "-I../../../Xilinx/xfopencv-master/include -D__SDSVHLS__ -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test1.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test11.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test17.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test18.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test19.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test20.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test22.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test23.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test24.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test25.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test3.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test4.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test5.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test6.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test7.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb WeedD/test9.bmp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb weed_detection_tb.cpp -cflags "-I../../../Xilinx/xfopencv-master/include -D__SDSVHLS__ -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg400-1}
create_clock -period 50 -name default
config_sdx -target none
config_schedule -effort high -enable_dsp_full_reg -relax_ii_for_timing -verbose=0
config_export -format ip_catalog -rtl vhdl -use_netlist none -vivado_optimization_level 3 -vivado_phys_opt all -vivado_report_level 0
set_clock_uncertainty 12.5%
source "./WeedD/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -rtl vhdl
export_design -flow syn -rtl vhdl -format ip_catalog
