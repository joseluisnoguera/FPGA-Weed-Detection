############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project WeedD
set_top ip_accel_app
add_files headers.h -cflags "-D__SDSVHLS__ -I D:/Xilinx/xfopencv-master/include"
add_files image_config.h -cflags "-D__SDSVHLS__ -I D:/Xilinx/xfopencv-master/include"
add_files weed_detection.cpp -cflags "-D__SDSVHLS__ -I D:/Xilinx/xfopencv-master/include"
add_files weed_detection.h -cflags "-D__SDSVHLS__ -I D:/Xilinx/xfopencv-master/include"
add_files -tb weed_detection_tb.cpp -cflags "-D__SDSVHLS__ -I../../../Xilinx/xfopencv-master/include"
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./WeedD/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
