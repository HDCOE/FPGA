############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project Lab_10_Conv2d
set_top doImgProc
add_files Lab_10_Conv2d/core.cpp
add_files Lab_10_Conv2d/core.h
add_files -tb Lab_10_Conv2d/TestUtils.cpp
add_files -tb Lab_10_Conv2d/TestUtils.h
add_files -tb Lab_10_Conv2d/test_core.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./Lab_10_Conv2d/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool modelsim
export_design -format ip_catalog
