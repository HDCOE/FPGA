############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CNN
set_top Lenet
add_files CNN/pooling.hpp
add_files CNN/fc.hpp
add_files CNN/conv.hpp
add_files CNN/classifier.hpp
add_files CNN/activation.hpp
add_files CNN/Tensor.h
add_files CNN/Lenet5.cpp
add_files CNN/CNN.hpp
add_files -tb CNN/TB_CNN.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./CNN/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog -description "cnn" -vendor "user.org" -display_name "cnn"
