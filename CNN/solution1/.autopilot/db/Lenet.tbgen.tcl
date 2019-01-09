set C_TypeInfoList {{ 
"Lenet" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"data_in": [[],{ "pointer": "0"}] }, {"conv": [[],{ "pointer": "0"}] }, {"relu": [[],{ "pointer": "0"}] }, {"pool": [[],{ "pointer": "0"}] }, {"fc": [[],{ "pointer": "0"}] }, {"data_out": [[],{ "pointer": "1"}] }],[],""], 
"0": [ "tensor_t<2, 2, 2>", {"struct": [[],[{"x":[[], {"scalar": { "int": 2}}]},{"y":[[], {"scalar": { "int": 2}}]},{"z":[[], {"scalar": { "int": 2}}]}],[{ "data": [[],  {"array": ["2", [8]]}]},{ "size": [[], "3"]}],""]}], 
"3": [ "point_t", {"struct": [[],[],[{ "x": [[],  {"scalar": "int"}]},{ "y": [[],  {"scalar": "int"}]},{ "z": [[],  {"scalar": "int"}]}],""]}], 
"2": [ "fixedAP", {"typedef": [[[],"4"],""]}], 
"4": [ "ap_fixed<16, 8, 5, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 16}}],[[], {"scalar": { "int": 8}}],[[], {"scalar": { "5": 5}}],[[], {"scalar": { "6": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"6": [ "ap_o_mode", {"enum": [[],[],[{"SC_SAT":  {"scalar": "__integer__"}},{"SC_SAT_ZERO":  {"scalar": "__integer__"}},{"SC_SAT_SYM":  {"scalar": "__integer__"}},{"SC_WRAP":  {"scalar": "__integer__"}},{"SC_WRAP_SM":  {"scalar": "__integer__"}}],""]}], 
"5": [ "ap_q_mode", {"enum": [[],[],[{"SC_RND":  {"scalar": "__integer__"}},{"SC_RND_ZERO":  {"scalar": "__integer__"}},{"SC_RND_MIN_INF":  {"scalar": "__integer__"}},{"SC_RND_INF":  {"scalar": "__integer__"}},{"SC_RND_CONV":  {"scalar": "__integer__"}},{"SC_TRN":  {"scalar": "__integer__"}},{"SC_TRN_ZERO":  {"scalar": "__integer__"}}],""]}], 
"1": [ "tensor_t<3, 3, 3>", {"struct": [[],[{"x":[[], {"scalar": { "int": 3}}]},{"y":[[], {"scalar": { "int": 3}}]},{"z":[[], {"scalar": { "int": 3}}]}],[{ "data": [[],  {"array": ["2", [27]]}]},{ "size": [[], "3"]}],""]}]
}}
set moduleName Lenet
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
set C_modelName {Lenet}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_data_V int 16 regular {axi_slave 0}  }
	{ data_in_size_x int 32 regular {axi_slave 0}  }
	{ data_in_size_y int 32 regular {axi_slave 0}  }
	{ data_in_size_z int 32 regular {axi_slave 0}  }
	{ conv_data_V int 16 regular {axi_slave 1}  }
	{ conv_size_x int 32 regular {axi_slave 0}  }
	{ conv_size_y int 32 regular {axi_slave 0}  }
	{ conv_size_z int 32 unused {axi_slave 0}  }
	{ relu_data_V int 16 regular {axi_slave 1}  }
	{ relu_size_x int 32 regular {axi_slave 0}  }
	{ relu_size_y int 32 regular {axi_slave 0}  }
	{ relu_size_z int 32 unused {axi_slave 0}  }
	{ pool_data_V int 16 unused {axi_slave 3}  }
	{ pool_size_x int 32 unused {axi_slave 0}  }
	{ pool_size_y int 32 unused {axi_slave 0}  }
	{ pool_size_z int 32 unused {axi_slave 0}  }
	{ fc_data_V int 16 regular {axi_slave 1}  }
	{ fc_size_x int 32 regular {axi_slave 0}  }
	{ fc_size_y int 32 regular {axi_slave 0}  }
	{ fc_size_z int 32 unused {axi_slave 0}  }
	{ data_out_data_V int 16 regular {axi_slave 1}  }
	{ data_out_size_x int 32 regular {axi_slave 0}  }
	{ data_out_size_y int 32 regular {axi_slave 0}  }
	{ data_out_size_z int 32 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_data_V", "interface" : "axi_slave", "bundle":"axilite","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "data_in.data.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":31}} , 
 	{ "Name" : "data_in_size_x", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_in.size.x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "data_in_size_y", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_in.size.y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "data_in_size_z", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_in.size.z","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "conv_data_V", "interface" : "axi_slave", "bundle":"axilite","type":"ap_memory","bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "conv.data.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}], "offset" : {"out":64}, "offset_end" : {"out":79}} , 
 	{ "Name" : "conv_size_x", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv.size.x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "conv_size_y", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv.size.y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "conv_size_z", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv.size.z","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "relu_data_V", "interface" : "axi_slave", "bundle":"axilite","type":"ap_memory","bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "relu.data.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}], "offset" : {"out":112}, "offset_end" : {"out":127}} , 
 	{ "Name" : "relu_size_x", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "relu.size.x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "relu_size_y", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "relu.size.y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "relu_size_z", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "relu.size.z","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "pool_data_V", "interface" : "axi_slave", "bundle":"axilite","type":"ap_memory","bitwidth" : 16, "direction" : "NONE", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "pool.data.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}], "offset" : {"in":160}, "offset_end" : {"in":175}} , 
 	{ "Name" : "pool_size_x", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pool.size.x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "pool_size_y", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pool.size.y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":184}, "offset_end" : {"in":191}} , 
 	{ "Name" : "pool_size_z", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pool.size.z","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "fc_data_V", "interface" : "axi_slave", "bundle":"axilite","type":"ap_memory","bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "fc.data.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}], "offset" : {"out":208}, "offset_end" : {"out":223}} , 
 	{ "Name" : "fc_size_x", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fc.size.x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":224}, "offset_end" : {"in":231}} , 
 	{ "Name" : "fc_size_y", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fc.size.y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":232}, "offset_end" : {"in":239}} , 
 	{ "Name" : "fc_size_z", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fc.size.z","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":240}, "offset_end" : {"in":247}} , 
 	{ "Name" : "data_out_data_V", "interface" : "axi_slave", "bundle":"axilite","type":"ap_memory","bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "data_out.data.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 26,"step" : 1}]}]}], "offset" : {"out":256}, "offset_end" : {"out":319}} , 
 	{ "Name" : "data_out_size_x", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_out.size.x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":320}, "offset_end" : {"in":327}} , 
 	{ "Name" : "data_out_size_y", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_out.size.y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":328}, "offset_end" : {"in":335}} , 
 	{ "Name" : "data_out_size_z", "interface" : "axi_slave", "bundle":"axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_out.size.z","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":336}, "offset_end" : {"in":343}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_axilite_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_axilite_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_axilite_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_axilite_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_axilite_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_axilite_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_axilite_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_axilite_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_axilite_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_axilite_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_axilite_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_axilite_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_axilite_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_axilite_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_axilite_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_axilite_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_axilite_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_axilite_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "axilite", "role": "AWADDR" },"address":[{"name":"Lenet","role":"start","value":"0","valid_bit":"0"},{"name":"Lenet","role":"continue","value":"0","valid_bit":"4"},{"name":"Lenet","role":"auto_start","value":"0","valid_bit":"7"},{"name":"data_in_data_V","role":"data","value":"16"},{"name":"data_in_size_x","role":"data","value":"32"},{"name":"data_in_size_y","role":"data","value":"40"},{"name":"data_in_size_z","role":"data","value":"48"},{"name":"conv_size_x","role":"data","value":"80"},{"name":"conv_size_y","role":"data","value":"88"},{"name":"conv_size_z","role":"data","value":"96"},{"name":"relu_size_x","role":"data","value":"128"},{"name":"relu_size_y","role":"data","value":"136"},{"name":"relu_size_z","role":"data","value":"144"},{"name":"pool_data_V","role":"data","value":"160"},{"name":"pool_size_x","role":"data","value":"176"},{"name":"pool_size_y","role":"data","value":"184"},{"name":"pool_size_z","role":"data","value":"192"},{"name":"fc_size_x","role":"data","value":"224"},{"name":"fc_size_y","role":"data","value":"232"},{"name":"fc_size_z","role":"data","value":"240"},{"name":"data_out_size_x","role":"data","value":"320"},{"name":"data_out_size_y","role":"data","value":"328"},{"name":"data_out_size_z","role":"data","value":"336"}] },
	{ "name": "s_axi_axilite_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "AWVALID" } },
	{ "name": "s_axi_axilite_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "AWREADY" } },
	{ "name": "s_axi_axilite_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "WVALID" } },
	{ "name": "s_axi_axilite_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "WREADY" } },
	{ "name": "s_axi_axilite_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axilite", "role": "WDATA" } },
	{ "name": "s_axi_axilite_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axilite", "role": "WSTRB" } },
	{ "name": "s_axi_axilite_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "axilite", "role": "ARADDR" },"address":[{"name":"Lenet","role":"start","value":"0","valid_bit":"0"},{"name":"Lenet","role":"done","value":"0","valid_bit":"1"},{"name":"Lenet","role":"idle","value":"0","valid_bit":"2"},{"name":"Lenet","role":"ready","value":"0","valid_bit":"3"},{"name":"Lenet","role":"auto_start","value":"0","valid_bit":"7"},{"name":"conv_data_V","role":"data","value":"64"},{"name":"relu_data_V","role":"data","value":"112"},{"name":"pool_data_V","role":"data","value":"160"},{"name":"fc_data_V","role":"data","value":"208"},{"name":"data_out_data_V","role":"data","value":"256"}] },
	{ "name": "s_axi_axilite_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "ARVALID" } },
	{ "name": "s_axi_axilite_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "ARREADY" } },
	{ "name": "s_axi_axilite_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "RVALID" } },
	{ "name": "s_axi_axilite_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "RREADY" } },
	{ "name": "s_axi_axilite_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axilite", "role": "RDATA" } },
	{ "name": "s_axi_axilite_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axilite", "role": "RRESP" } },
	{ "name": "s_axi_axilite_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "BVALID" } },
	{ "name": "s_axi_axilite_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "BREADY" } },
	{ "name": "s_axi_axilite_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axilite", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilite", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "14", "18", "19", "20", "21", "24", "25"],
		"CDFG" : "Lenet",
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
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_softmax_fu_204"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Conv_forward_fu_216"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_copy_tensor_1_fu_225"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_copy_tensor_1_fu_225"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_copy_tensor_1_fu_225"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_copy_tensor_1_fu_225"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_copy_tensor_1_fu_225"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_copy_tensor_fu_248"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_copy_tensor_2_fu_258"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_fc_fu_268"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_ReLu_fu_275"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_copy_tensor_3_fu_281"}],
		"Port" : [
			{"Name" : "data_in_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_copy_tensor_1_fu_225", "Port" : "in2_V"}]},
			{"Name" : "data_in_size_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_size_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_size_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_copy_tensor_1_fu_225", "Port" : "in1_V"}]},
			{"Name" : "conv_size_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_size_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_size_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_copy_tensor_1_fu_225", "Port" : "in1_V"}]},
			{"Name" : "relu_size_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu_size_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu_size_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool_data_V", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "pool_size_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool_size_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool_size_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_copy_tensor_fu_248", "Port" : "in1_V"}]},
			{"Name" : "fc_size_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc_size_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc_size_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_copy_tensor_2_fu_258", "Port" : "in1_V"}]},
			{"Name" : "data_out_size_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_size_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_size_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_W_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_Conv_forward_fu_216", "Port" : "conv1_W_data_V"}]},
			{"Name" : "fc1_W_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_forward_fc_fu_268", "Port" : "fc1_W_data_V"}]},
			{"Name" : "f_x_lsb_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_softmax_fu_204", "Port" : "f_x_lsb_table"}]},
			{"Name" : "exp_x_msb_2_m_1_tabl", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_softmax_fu_204", "Port" : "exp_x_msb_2_m_1_tabl"}]},
			{"Name" : "exp_x_msb_1_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_softmax_fu_204", "Port" : "exp_x_msb_1_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Lenet_axilite_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_input_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_output_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_a_slice_pad_da_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fx_input_data_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fx_output_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_input_data_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_softmax_fu_204", "Parent" : "0", "Child" : ["9", "13"],
		"CDFG" : "softmax",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "87", "EstimateLatencyMax" : "87",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "classifier_1_1_2_input_data_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "classifier_1_1_2_input_data_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_lsb_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_exp_16_8_s_fu_126", "Port" : "f_x_lsb_table"}]},
			{"Name" : "exp_x_msb_2_m_1_tabl", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_exp_16_8_s_fu_126", "Port" : "exp_x_msb_2_m_1_tabl"}]},
			{"Name" : "exp_x_msb_1_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_exp_16_8_s_fu_126", "Port" : "exp_x_msb_1_table"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_fu_204.grp_exp_16_8_s_fu_126", "Parent" : "8", "Child" : ["10", "11", "12"],
		"CDFG" : "exp_16_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_lsb_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_2_m_1_tabl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_softmax_fu_204.grp_exp_16_8_s_fu_126.f_x_lsb_table_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_softmax_fu_204.grp_exp_16_8_s_fu_126.exp_x_msb_2_m_1_tabl_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_softmax_fu_204.grp_exp_16_8_s_fu_126.exp_x_msb_1_table_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_fu_204.Lenet_sdiv_24ns_1ibs_U27", "Parent" : "8"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Conv_forward_fu_216", "Parent" : "0", "Child" : ["15", "16", "17"],
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
					{"ID" : "16", "SubInstance" : "grp_Padding_fu_169", "Port" : "conv_layer1_2_2_2_1_2_2_2_input_data_V"}]},
			{"Name" : "conv_layer1_2_2_2_1_2_2_2_output_data_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_Padding_fu_169", "Port" : "padd_out_data_V"}]},
			{"Name" : "conv1_W_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv_forward_fu_216.conv1_W_data_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv_forward_fu_216.grp_Padding_fu_169", "Parent" : "14",
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv_forward_fu_216.Lenet_mac_muladd_cud_U10", "Parent" : "14"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_copy_tensor_1_fu_225", "Parent" : "0",
		"CDFG" : "copy_tensor_1",
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
		"Port" : [
			{"Name" : "in1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "size1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "size1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "size2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "size2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "size2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_copy_tensor_fu_248", "Parent" : "0",
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
			{"Name" : "size1_y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_copy_tensor_2_fu_258", "Parent" : "0",
		"CDFG" : "copy_tensor_2",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "size1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "size1_y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_fc_fu_268", "Parent" : "0", "Child" : ["22", "23"],
		"CDFG" : "forward_fc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "77", "EstimateLatencyMax" : "77",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fc_layer_2_2_2_2_input_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_W_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fc_fu_268.fc1_W_data_V_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fc_fu_268.Lenet_mac_muladd_eOg_U18", "Parent" : "21"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_ReLu_fu_275", "Parent" : "0",
		"CDFG" : "forward_ReLu",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "activation_layer_2_2_2_input_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "activation_layer_2_2_2_output_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_copy_tensor_3_fu_281", "Parent" : "0",
		"CDFG" : "copy_tensor_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Lenet {
		data_in_data_V {Type I LastRead 4 FirstWrite -1}
		data_in_size_x {Type I LastRead 0 FirstWrite -1}
		data_in_size_y {Type I LastRead 0 FirstWrite -1}
		data_in_size_z {Type I LastRead 0 FirstWrite -1}
		conv_data_V {Type O LastRead -1 FirstWrite 5}
		conv_size_x {Type I LastRead 0 FirstWrite -1}
		conv_size_y {Type I LastRead 0 FirstWrite -1}
		conv_size_z {Type I LastRead -1 FirstWrite -1}
		relu_data_V {Type O LastRead -1 FirstWrite 5}
		relu_size_x {Type I LastRead 0 FirstWrite -1}
		relu_size_y {Type I LastRead 0 FirstWrite -1}
		relu_size_z {Type I LastRead -1 FirstWrite -1}
		pool_data_V {Type X LastRead -1 FirstWrite -1}
		pool_size_x {Type I LastRead -1 FirstWrite -1}
		pool_size_y {Type I LastRead -1 FirstWrite -1}
		pool_size_z {Type I LastRead -1 FirstWrite -1}
		fc_data_V {Type O LastRead -1 FirstWrite 4}
		fc_size_x {Type I LastRead 0 FirstWrite -1}
		fc_size_y {Type I LastRead 0 FirstWrite -1}
		fc_size_z {Type I LastRead -1 FirstWrite -1}
		data_out_data_V {Type O LastRead -1 FirstWrite 4}
		data_out_size_x {Type I LastRead 0 FirstWrite -1}
		data_out_size_y {Type I LastRead 0 FirstWrite -1}
		data_out_size_z {Type I LastRead -1 FirstWrite -1}
		conv1_W_data_V {Type I LastRead -1 FirstWrite -1}
		fc1_W_data_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_tabl {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table {Type I LastRead -1 FirstWrite -1}}
	softmax {
		classifier_1_1_2_input_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		classifier_1_1_2_input_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		f_x_lsb_table {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_tabl {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table {Type I LastRead -1 FirstWrite -1}}
	exp_16_8_s {
		x_V {Type I LastRead 0 FirstWrite -1}
		f_x_lsb_table {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_tabl {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table {Type I LastRead -1 FirstWrite -1}}
	Conv_forward {
		conv_layer1_2_2_2_1_2_2_2_input_data_V {Type I LastRead 3 FirstWrite -1}
		conv_layer1_2_2_2_1_2_2_2_output_data_V {Type IO LastRead 9 FirstWrite 4}
		conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V {Type IO LastRead 7 FirstWrite 3}
		conv1_W_data_V {Type I LastRead -1 FirstWrite -1}}
	Padding {
		conv_layer1_2_2_2_1_2_2_2_input_data_V {Type I LastRead 3 FirstWrite -1}
		padd_out_data_V {Type O LastRead -1 FirstWrite 3}}
	copy_tensor_1 {
		in1_V {Type O LastRead -1 FirstWrite 5}
		in2_V {Type I LastRead 4 FirstWrite -1}
		size1_x {Type I LastRead 0 FirstWrite -1}
		size1_y {Type I LastRead 0 FirstWrite -1}
		size2_x {Type I LastRead 0 FirstWrite -1}
		size2_y {Type I LastRead 0 FirstWrite -1}
		size2_z {Type I LastRead 0 FirstWrite -1}}
	copy_tensor {
		in1_V {Type O LastRead -1 FirstWrite 4}
		in2_0_V_read {Type I LastRead 0 FirstWrite -1}
		in2_1_V_read {Type I LastRead 0 FirstWrite -1}
		size1_x {Type I LastRead 0 FirstWrite -1}
		size1_y {Type I LastRead 0 FirstWrite -1}}
	copy_tensor_2 {
		in1_V {Type O LastRead -1 FirstWrite 4}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		size1_x {Type I LastRead 0 FirstWrite -1}
		size1_y {Type I LastRead 0 FirstWrite -1}}
	forward_fc {
		fc_layer_2_2_2_2_input_data_V {Type I LastRead 5 FirstWrite -1}
		fc1_W_data_V {Type I LastRead -1 FirstWrite -1}}
	forward_ReLu {
		activation_layer_2_2_2_input_data_V {Type I LastRead 3 FirstWrite -1}
		activation_layer_2_2_2_output_data_V {Type O LastRead -1 FirstWrite 4}}
	copy_tensor_3 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
