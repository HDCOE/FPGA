set moduleName Conv_forward
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Conv_forward}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv_layer1_2_2_2_1_2_2_2_input_data_V int 16 regular {array 8 { 1 } 1 1 }  }
	{ conv_layer1_2_2_2_1_2_2_2_output_data_V int 16 regular {array 8 { 2 } 1 1 }  }
	{ conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V int 16 regular {array 32 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv_layer1_2_2_2_1_2_2_2_input_data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "conv_layer1_2_2_2_1_2_2_2_output_data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv_layer1_2_2_2_1_2_2_2_input_data_V_address0 sc_out sc_lv 3 signal 0 } 
	{ conv_layer1_2_2_2_1_2_2_2_input_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ conv_layer1_2_2_2_1_2_2_2_input_data_V_q0 sc_in sc_lv 16 signal 0 } 
	{ conv_layer1_2_2_2_1_2_2_2_output_data_V_address0 sc_out sc_lv 3 signal 1 } 
	{ conv_layer1_2_2_2_1_2_2_2_output_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv_layer1_2_2_2_1_2_2_2_output_data_V_we0 sc_out sc_logic 1 signal 1 } 
	{ conv_layer1_2_2_2_1_2_2_2_output_data_V_d0 sc_out sc_lv 16 signal 1 } 
	{ conv_layer1_2_2_2_1_2_2_2_output_data_V_q0 sc_in sc_lv 16 signal 1 } 
	{ conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_address0 sc_out sc_lv 5 signal 2 } 
	{ conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_we0 sc_out sc_logic 1 signal 2 } 
	{ conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_d0 sc_out sc_lv 16 signal 2 } 
	{ conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_q0 sc_in sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_input_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_input_data_V", "role": "address0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_input_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_input_data_V", "role": "ce0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_input_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_input_data_V", "role": "q0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_output_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_output_data_V", "role": "address0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_output_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_output_data_V", "role": "ce0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_output_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_output_data_V", "role": "we0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_output_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_output_data_V", "role": "d0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_output_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_output_data_V", "role": "q0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V", "role": "address0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V", "role": "ce0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V", "role": "we0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V", "role": "d0" }} , 
 	{ "name": "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "Conv_forward",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Padding_fu_169"}],
		"Port" : [
			{"Name" : "conv_layer1_2_2_2_1_2_2_2_input_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Padding_fu_169", "Port" : "conv_layer1_2_2_2_1_2_2_2_input_data_V"}]},
			{"Name" : "conv_layer1_2_2_2_1_2_2_2_output_data_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Padding_fu_169", "Port" : "padd_out_data_V"}]},
			{"Name" : "conv1_W_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_W_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Padding_fu_169", "Parent" : "0",
		"CDFG" : "Padding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv_layer1_2_2_2_1_2_2_2_input_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "padd_out_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Lenet_mac_muladd_cud_U10", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Conv_forward {
		conv_layer1_2_2_2_1_2_2_2_input_data_V {Type I LastRead 3 FirstWrite -1}
		conv_layer1_2_2_2_1_2_2_2_output_data_V {Type IO LastRead 9 FirstWrite 4}
		conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V {Type IO LastRead 7 FirstWrite 3}
		conv1_W_data_V {Type I LastRead -1 FirstWrite -1}}
	Padding {
		conv_layer1_2_2_2_1_2_2_2_input_data_V {Type I LastRead 3 FirstWrite -1}
		padd_out_data_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv_layer1_2_2_2_1_2_2_2_input_data_V { ap_memory {  { conv_layer1_2_2_2_1_2_2_2_input_data_V_address0 mem_address 1 3 }  { conv_layer1_2_2_2_1_2_2_2_input_data_V_ce0 mem_ce 1 1 }  { conv_layer1_2_2_2_1_2_2_2_input_data_V_q0 mem_dout 0 16 } } }
	conv_layer1_2_2_2_1_2_2_2_output_data_V { ap_memory {  { conv_layer1_2_2_2_1_2_2_2_output_data_V_address0 mem_address 1 3 }  { conv_layer1_2_2_2_1_2_2_2_output_data_V_ce0 mem_ce 1 1 }  { conv_layer1_2_2_2_1_2_2_2_output_data_V_we0 mem_we 1 1 }  { conv_layer1_2_2_2_1_2_2_2_output_data_V_d0 mem_din 1 16 }  { conv_layer1_2_2_2_1_2_2_2_output_data_V_q0 mem_dout 0 16 } } }
	conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V { ap_memory {  { conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_address0 mem_address 1 5 }  { conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_ce0 mem_ce 1 1 }  { conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_we0 mem_we 1 1 }  { conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_d0 mem_din 1 16 }  { conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_q0 mem_dout 0 16 } } }
}
