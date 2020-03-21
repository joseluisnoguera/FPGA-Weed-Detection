set moduleName is_crop_or_furrow
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
set C_modelName {is_crop_or_furrow}
set C_modelType { int 2 }
set C_modelArgList {
	{ lines int 57 regular {array 6 { 1 3 } 1 1 }  }
	{ px_read int 9 regular  }
	{ py_read int 9 regular  }
	{ crop_width_read int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lines", "interface" : "memory", "bitwidth" : 57, "direction" : "READONLY"} , 
 	{ "Name" : "px_read", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "py_read", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "crop_width_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 2} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lines_address0 sc_out sc_lv 3 signal 0 } 
	{ lines_ce0 sc_out sc_logic 1 signal 0 } 
	{ lines_q0 sc_in sc_lv 57 signal 0 } 
	{ px_read sc_in sc_lv 9 signal 1 } 
	{ py_read sc_in sc_lv 9 signal 2 } 
	{ crop_width_read sc_in sc_lv 5 signal 3 } 
	{ ap_return sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lines_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lines", "role": "address0" }} , 
 	{ "name": "lines_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lines", "role": "ce0" }} , 
 	{ "name": "lines_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":57, "type": "signal", "bundle":{"name": "lines", "role": "q0" }} , 
 	{ "name": "px_read", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "px_read", "role": "default" }} , 
 	{ "name": "py_read", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "py_read", "role": "default" }} , 
 	{ "name": "crop_width_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "crop_width_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "is_crop_or_furrow",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "lines", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "px_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "py_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "crop_width_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_mul_Zio_U478", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	is_crop_or_furrow {
		lines {Type I LastRead 1 FirstWrite -1}
		px_read {Type I LastRead 0 FirstWrite -1}
		py_read {Type I LastRead 0 FirstWrite -1}
		crop_width_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "36"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "36"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	lines { ap_memory {  { lines_address0 mem_address 1 3 }  { lines_ce0 mem_ce 1 1 }  { lines_q0 mem_dout 0 57 } } }
	px_read { ap_none {  { px_read in_data 0 9 } } }
	py_read { ap_none {  { py_read in_data 0 9 } } }
	crop_width_read { ap_none {  { crop_width_read in_data 0 5 } } }
}
