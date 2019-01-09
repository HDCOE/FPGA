# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 41
set hasByteEnable 0
set MemName Lenet_conv1_inputjbC
set CoreName ap_simcore_mem
set PortList { 2 }
set DataWd 16
set AddrRange 8
set AddrWd 3
set impl_style auto
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.322
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM_1P
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 42
set hasByteEnable 0
set MemName Lenet_conv1_a_slilbW
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 16
set AddrRange 32
set AddrWd 5
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.322
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set port_axilite {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
data_in_data_V { 
	dir I
	width 16
	depth 8
	mode ap_memory
	offset 16
	offset_end 31
}
data_in_size_x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
data_in_size_y { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
data_in_size_z { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
conv_data_V { 
	dir O
	width 16
	depth 8
	mode ap_memory
	offset 64
	offset_end 79
}
conv_size_x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
conv_size_y { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
conv_size_z { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
relu_data_V { 
	dir O
	width 16
	depth 8
	mode ap_memory
	offset 112
	offset_end 127
}
relu_size_x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
relu_size_y { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
relu_size_z { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
pool_data_V { 
	dir X
	width 16
	depth 8
	mode ap_memory
	offset 160
	offset_end 175
}
pool_size_x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 176
	offset_end 183
}
pool_size_y { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 184
	offset_end 191
}
pool_size_z { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 192
	offset_end 199
}
fc_data_V { 
	dir O
	width 16
	depth 8
	mode ap_memory
	offset 208
	offset_end 223
}
fc_size_x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 224
	offset_end 231
}
fc_size_y { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 232
	offset_end 239
}
fc_size_z { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 240
	offset_end 247
}
data_out_data_V { 
	dir O
	width 16
	depth 27
	mode ap_memory
	offset 256
	offset_end 319
}
data_out_size_x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 320
	offset_end 327
}
data_out_size_y { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 328
	offset_end 335
}
data_out_size_z { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 336
	offset_end 343
}
}


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 43 \
			corename Lenet_axilite_axilite \
			name Lenet_axilite_s_axi \
			ports {$port_axilite} \
			op interface \
			is_flushable 0 \ 
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'axilite'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler Lenet_axilite_s_axi
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


