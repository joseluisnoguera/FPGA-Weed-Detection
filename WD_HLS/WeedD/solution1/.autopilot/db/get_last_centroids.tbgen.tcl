set moduleName get_last_centroids
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {get_last_centroids}
set C_modelType { void 0 }
set C_modelArgList {
	{ centroids int 48 regular {array 72 { 1 3 } 1 1 }  }
	{ selected_line int 3 regular  }
	{ last_c_2 int 48 regular {array 4 { 0 3 } 0 1 }  }
	{ seg_index_start int 4 regular  }
	{ size int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "centroids", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "selected_line", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "last_c_2", "interface" : "memory", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "seg_index_start", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "size", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ centroids_address0 sc_out sc_lv 7 signal 0 } 
	{ centroids_ce0 sc_out sc_logic 1 signal 0 } 
	{ centroids_d0 sc_out sc_lv 48 signal 0 } 
	{ centroids_q0 sc_in sc_lv 48 signal 0 } 
	{ centroids_we0 sc_out sc_logic 1 signal 0 } 
	{ centroids_address1 sc_out sc_lv 7 signal 0 } 
	{ centroids_ce1 sc_out sc_logic 1 signal 0 } 
	{ centroids_d1 sc_out sc_lv 48 signal 0 } 
	{ centroids_q1 sc_in sc_lv 48 signal 0 } 
	{ centroids_we1 sc_out sc_logic 1 signal 0 } 
	{ selected_line sc_in sc_lv 3 signal 1 } 
	{ last_c_2_address0 sc_out sc_lv 2 signal 2 } 
	{ last_c_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ last_c_2_d0 sc_out sc_lv 48 signal 2 } 
	{ last_c_2_q0 sc_in sc_lv 48 signal 2 } 
	{ last_c_2_we0 sc_out sc_logic 1 signal 2 } 
	{ last_c_2_address1 sc_out sc_lv 2 signal 2 } 
	{ last_c_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ last_c_2_d1 sc_out sc_lv 48 signal 2 } 
	{ last_c_2_q1 sc_in sc_lv 48 signal 2 } 
	{ last_c_2_we1 sc_out sc_logic 1 signal 2 } 
	{ seg_index_start sc_in sc_lv 4 signal 3 } 
	{ size sc_in sc_lv 4 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ size_ap_vld sc_in sc_logic 1 invld 4 } 
	{ seg_index_start_ap_vld sc_in sc_logic 1 invld 3 } 
	{ selected_line_ap_vld sc_in sc_logic 1 invld 1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "centroids_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "centroids", "role": "address0" }} , 
 	{ "name": "centroids_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "centroids", "role": "ce0" }} , 
 	{ "name": "centroids_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "centroids", "role": "d0" }} , 
 	{ "name": "centroids_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "centroids", "role": "q0" }} , 
 	{ "name": "centroids_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "centroids", "role": "we0" }} , 
 	{ "name": "centroids_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "centroids", "role": "address1" }} , 
 	{ "name": "centroids_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "centroids", "role": "ce1" }} , 
 	{ "name": "centroids_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "centroids", "role": "d1" }} , 
 	{ "name": "centroids_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "centroids", "role": "q1" }} , 
 	{ "name": "centroids_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "centroids", "role": "we1" }} , 
 	{ "name": "selected_line", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "selected_line", "role": "default" }} , 
 	{ "name": "last_c_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "last_c_2", "role": "address0" }} , 
 	{ "name": "last_c_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_c_2", "role": "ce0" }} , 
 	{ "name": "last_c_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "last_c_2", "role": "d0" }} , 
 	{ "name": "last_c_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "last_c_2", "role": "q0" }} , 
 	{ "name": "last_c_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_c_2", "role": "we0" }} , 
 	{ "name": "last_c_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "last_c_2", "role": "address1" }} , 
 	{ "name": "last_c_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_c_2", "role": "ce1" }} , 
 	{ "name": "last_c_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "last_c_2", "role": "d1" }} , 
 	{ "name": "last_c_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "last_c_2", "role": "q1" }} , 
 	{ "name": "last_c_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_c_2", "role": "we1" }} , 
 	{ "name": "seg_index_start", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "seg_index_start", "role": "default" }} , 
 	{ "name": "size", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "size", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "size_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "size", "role": "ap_vld" }} , 
 	{ "name": "seg_index_start_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "seg_index_start", "role": "ap_vld" }} , 
 	{ "name": "selected_line_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "selected_line", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "get_last_centroids",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "get_last_centroids_L_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "get_last_centroids_L_U0"}],
		"Port" : [
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "get_last_centroids_L_U0", "Port" : "centroids"}]},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "get_last_centroids_L_U0", "Port" : "last_c_2"}]},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_last_centroids_L_U0", "Parent" : "0",
		"CDFG" : "get_last_centroids_L",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	get_last_centroids {
		centroids {Type I LastRead 1 FirstWrite -1}
		selected_line {Type I LastRead 0 FirstWrite -1}
		last_c_2 {Type O LastRead -1 FirstWrite 2}
		seg_index_start {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}}
	get_last_centroids_L {
		size {Type I LastRead 0 FirstWrite -1}
		seg_index_start {Type I LastRead 0 FirstWrite -1}
		selected_line {Type I LastRead 0 FirstWrite -1}
		centroids {Type I LastRead 1 FirstWrite -1}
		last_c_2 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	centroids { ap_memory {  { centroids_address0 mem_address 1 7 }  { centroids_ce0 mem_ce 1 1 }  { centroids_d0 mem_din 1 48 }  { centroids_q0 mem_dout 0 48 }  { centroids_we0 mem_we 1 1 }  { centroids_address1 mem_address 1 7 }  { centroids_ce1 mem_ce 1 1 }  { centroids_d1 mem_din 1 48 }  { centroids_q1 mem_dout 0 48 }  { centroids_we1 mem_we 1 1 } } }
	selected_line { ap_none {  { selected_line in_data 0 3 }  { selected_line_ap_vld in_vld 0 1 } } }
	last_c_2 { ap_memory {  { last_c_2_address0 mem_address 1 2 }  { last_c_2_ce0 mem_ce 1 1 }  { last_c_2_d0 mem_din 1 48 }  { last_c_2_q0 mem_dout 0 48 }  { last_c_2_we0 mem_we 1 1 }  { last_c_2_address1 mem_address 1 2 }  { last_c_2_ce1 mem_ce 1 1 }  { last_c_2_d1 mem_din 1 48 }  { last_c_2_q1 mem_dout 0 48 }  { last_c_2_we1 mem_we 1 1 } } }
	seg_index_start { ap_none {  { seg_index_start in_data 0 4 }  { seg_index_start_ap_vld in_vld 0 1 } } }
	size { ap_none {  { size in_data 0 4 }  { size_ap_vld in_vld 0 1 } } }
}
