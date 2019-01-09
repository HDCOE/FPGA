set moduleName copy_tensor
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
set C_modelName {copy_tensor}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1_V int 16 regular {array 8 { 0 } 0 1 }  }
	{ in2_0_V_read int 16 regular  }
	{ in2_1_V_read int 16 regular  }
	{ size1_x int 32 regular  }
	{ size1_y int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in2_0_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in2_1_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "size1_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size1_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_V_address0 sc_out sc_lv 3 signal 0 } 
	{ in1_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_V_we0 sc_out sc_logic 1 signal 0 } 
	{ in1_V_d0 sc_out sc_lv 16 signal 0 } 
	{ in2_0_V_read sc_in sc_lv 16 signal 1 } 
	{ in2_1_V_read sc_in sc_lv 16 signal 2 } 
	{ size1_x sc_in sc_lv 32 signal 3 } 
	{ size1_y sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1_V", "role": "address0" }} , 
 	{ "name": "in1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_V", "role": "ce0" }} , 
 	{ "name": "in1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_V", "role": "we0" }} , 
 	{ "name": "in1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in1_V", "role": "d0" }} , 
 	{ "name": "in2_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in2_0_V_read", "role": "default" }} , 
 	{ "name": "in2_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in2_1_V_read", "role": "default" }} , 
 	{ "name": "size1_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size1_x", "role": "default" }} , 
 	{ "name": "size1_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size1_y", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "copy_tensor",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "size1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "size1_y", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	copy_tensor {
		in1_V {Type O LastRead -1 FirstWrite 4}
		in2_0_V_read {Type I LastRead 0 FirstWrite -1}
		in2_1_V_read {Type I LastRead 0 FirstWrite -1}
		size1_x {Type I LastRead 0 FirstWrite -1}
		size1_y {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "13"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1_V { ap_memory {  { in1_V_address0 mem_address 1 3 }  { in1_V_ce0 mem_ce 1 1 }  { in1_V_we0 mem_we 1 1 }  { in1_V_d0 mem_din 1 16 } } }
	in2_0_V_read { ap_none {  { in2_0_V_read in_data 0 16 } } }
	in2_1_V_read { ap_none {  { in2_1_V_read in_data 0 16 } } }
	size1_x { ap_none {  { size1_x in_data 0 32 } } }
	size1_y { ap_none {  { size1_y in_data 0 32 } } }
}
