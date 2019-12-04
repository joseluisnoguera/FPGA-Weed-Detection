############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Weed_Detection_HLS
add_files Weed_Detection_HLS/weed_detection_algorithm/utils.cpp
add_files Weed_Detection_HLS/weed_detection_algorithm/weed_detection.cpp
open_solution "weed_detection_algorithm"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./Weed_Detection_HLS/weed_detection_algorithm/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
