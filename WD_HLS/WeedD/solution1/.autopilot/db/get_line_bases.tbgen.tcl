set moduleName get_line_bases
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
set C_modelName {get_line_bases}
set C_modelType { void 0 }
set C_modelArgList {
	{ bottom_data_V int 8 regular {fifo 0 volatile }  }
	{ line_bases int 17 regular {array 6 { 2 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bottom_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "line_bases", "interface" : "memory", "bitwidth" : 17, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bottom_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ bottom_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ bottom_data_V_read sc_out sc_logic 1 signal 0 } 
	{ line_bases_address0 sc_out sc_lv 3 signal 1 } 
	{ line_bases_ce0 sc_out sc_logic 1 signal 1 } 
	{ line_bases_we0 sc_out sc_logic 1 signal 1 } 
	{ line_bases_d0 sc_out sc_lv 17 signal 1 } 
	{ line_bases_q0 sc_in sc_lv 17 signal 1 } 
	{ line_bases_address1 sc_out sc_lv 3 signal 1 } 
	{ line_bases_ce1 sc_out sc_logic 1 signal 1 } 
	{ line_bases_we1 sc_out sc_logic 1 signal 1 } 
	{ line_bases_d1 sc_out sc_lv 17 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bottom_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_data_V", "role": "dout" }} , 
 	{ "name": "bottom_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_data_V", "role": "empty_n" }} , 
 	{ "name": "bottom_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_data_V", "role": "read" }} , 
 	{ "name": "line_bases_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "line_bases", "role": "address0" }} , 
 	{ "name": "line_bases_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_bases", "role": "ce0" }} , 
 	{ "name": "line_bases_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_bases", "role": "we0" }} , 
 	{ "name": "line_bases_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "line_bases", "role": "d0" }} , 
 	{ "name": "line_bases_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "line_bases", "role": "q0" }} , 
 	{ "name": "line_bases_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "line_bases", "role": "address1" }} , 
 	{ "name": "line_bases_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_bases", "role": "ce1" }} , 
 	{ "name": "line_bases_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_bases", "role": "we1" }} , 
 	{ "name": "line_bases_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "line_bases", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "get_line_bases",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19557", "EstimateLatencyMax" : "20517",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bottom_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bottom_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "histogram", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "smoothed", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.histogram_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.smoothed_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	get_line_bases {
		bottom_data_V {Type I LastRead 26 FirstWrite -1}
		line_bases {Type IO LastRead 9 FirstWrite 7}
		histogram {Type IO LastRead -1 FirstWrite -1}
		smoothed {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19557", "Max" : "20517"}
	, {"Name" : "Interval", "Min" : "19557", "Max" : "20517"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	bottom_data_V { ap_fifo {  { bottom_data_V_dout fifo_data 0 8 }  { bottom_data_V_empty_n fifo_status 0 1 }  { bottom_data_V_read fifo_update 1 1 } } }
	line_bases { ap_memory {  { line_bases_address0 mem_address 1 3 }  { line_bases_ce0 mem_ce 1 1 }  { line_bases_we0 mem_we 1 1 }  { line_bases_d0 mem_din 1 17 }  { line_bases_q0 mem_dout 0 17 }  { line_bases_address1 MemPortADDR2 1 3 }  { line_bases_ce1 MemPortCE2 1 1 }  { line_bases_we1 MemPortWE2 1 1 }  { line_bases_d1 MemPortDIN2 1 17 } } }
}
