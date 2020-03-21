set moduleName get_lines_lsl
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {get_lines_lsl}
set C_modelType { int 1 }
set C_modelArgList {
	{ line_bases int 17 regular {array 6 { 1 3 } 1 1 } {global 0}  }
	{ centroids int 48 regular {array 72 { 1 3 } 1 1 } {global 0}  }
	{ lines int 57 regular {array 6 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "line_bases", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "centroids", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "lines", "interface" : "memory", "bitwidth" : 57, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ line_bases_address0 sc_out sc_lv 3 signal 0 } 
	{ line_bases_ce0 sc_out sc_logic 1 signal 0 } 
	{ line_bases_q0 sc_in sc_lv 17 signal 0 } 
	{ centroids_address0 sc_out sc_lv 7 signal 1 } 
	{ centroids_ce0 sc_out sc_logic 1 signal 1 } 
	{ centroids_q0 sc_in sc_lv 48 signal 1 } 
	{ lines_address0 sc_out sc_lv 3 signal 2 } 
	{ lines_ce0 sc_out sc_logic 1 signal 2 } 
	{ lines_we0 sc_out sc_logic 1 signal 2 } 
	{ lines_d0 sc_out sc_lv 57 signal 2 } 
	{ lines_q0 sc_in sc_lv 57 signal 2 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "line_bases_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "line_bases", "role": "address0" }} , 
 	{ "name": "line_bases_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_bases", "role": "ce0" }} , 
 	{ "name": "line_bases_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "line_bases", "role": "q0" }} , 
 	{ "name": "centroids_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "centroids", "role": "address0" }} , 
 	{ "name": "centroids_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "centroids", "role": "ce0" }} , 
 	{ "name": "centroids_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "centroids", "role": "q0" }} , 
 	{ "name": "lines_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lines", "role": "address0" }} , 
 	{ "name": "lines_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lines", "role": "ce0" }} , 
 	{ "name": "lines_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lines", "role": "we0" }} , 
 	{ "name": "lines_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":57, "type": "signal", "bundle":{"name": "lines", "role": "d0" }} , 
 	{ "name": "lines_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":57, "type": "signal", "bundle":{"name": "lines", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "get_lines_lsl",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "691",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_centroids", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_centroids_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_sdivXh4_U469", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_mac_PgM_U470", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_mul_Yie_U471", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	get_lines_lsl {
		line_bases {Type I LastRead 1 FirstWrite -1}
		centroids {Type I LastRead 3 FirstWrite -1}
		line_centroids {Type IO LastRead -1 FirstWrite -1}
		lines {Type IO LastRead 76 FirstWrite 76}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "691"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "691"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	line_bases { ap_memory {  { line_bases_address0 mem_address 1 3 }  { line_bases_ce0 mem_ce 1 1 }  { line_bases_q0 mem_dout 0 17 } } }
	centroids { ap_memory {  { centroids_address0 mem_address 1 7 }  { centroids_ce0 mem_ce 1 1 }  { centroids_q0 mem_dout 0 48 } } }
	lines { ap_memory {  { lines_address0 mem_address 1 3 }  { lines_ce0 mem_ce 1 1 }  { lines_we0 mem_we 1 1 }  { lines_d0 mem_din 1 57 }  { lines_q0 mem_dout 0 57 } } }
}
