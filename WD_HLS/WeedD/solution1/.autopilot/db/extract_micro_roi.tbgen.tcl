set moduleName extract_micro_roi
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
set C_modelName {extract_micro_roi}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in_mr_data_V int 8 regular {fifo 0 volatile }  }
	{ x_top int 10 regular  }
	{ x_bottom int 10 regular  }
	{ y_left int 16 regular  }
	{ y_right int 16 regular  }
	{ micro_roi_data_V int 8 regular {array 736 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in_mr_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_top", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "x_bottom", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "y_left", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "y_right", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "micro_roi_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_in_mr_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ img_in_mr_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_in_mr_data_V_read sc_out sc_logic 1 signal 0 } 
	{ x_top sc_in sc_lv 10 signal 1 } 
	{ x_bottom sc_in sc_lv 10 signal 2 } 
	{ y_left sc_in sc_lv 16 signal 3 } 
	{ y_right sc_in sc_lv 16 signal 4 } 
	{ micro_roi_data_V_address0 sc_out sc_lv 10 signal 5 } 
	{ micro_roi_data_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ micro_roi_data_V_we0 sc_out sc_logic 1 signal 5 } 
	{ micro_roi_data_V_d0 sc_out sc_lv 8 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_in_mr_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_mr_data_V", "role": "dout" }} , 
 	{ "name": "img_in_mr_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_mr_data_V", "role": "empty_n" }} , 
 	{ "name": "img_in_mr_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_mr_data_V", "role": "read" }} , 
 	{ "name": "x_top", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "x_top", "role": "default" }} , 
 	{ "name": "x_bottom", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "x_bottom", "role": "default" }} , 
 	{ "name": "y_left", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_left", "role": "default" }} , 
 	{ "name": "y_right", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_right", "role": "default" }} , 
 	{ "name": "micro_roi_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "address0" }} , 
 	{ "name": "micro_roi_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "ce0" }} , 
 	{ "name": "micro_roi_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "we0" }} , 
 	{ "name": "micro_roi_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extract_micro_roi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "783", "EstimateLatencyMax" : "783",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_in_mr_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_in_mr_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_top", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_bottom", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_left", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_right", "Type" : "None", "Direction" : "I"},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	extract_micro_roi {
		img_in_mr_data_V {Type I LastRead 2 FirstWrite -1}
		x_top {Type I LastRead 0 FirstWrite -1}
		x_bottom {Type I LastRead 0 FirstWrite -1}
		y_left {Type I LastRead 0 FirstWrite -1}
		y_right {Type I LastRead 0 FirstWrite -1}
		micro_roi_data_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "783", "Max" : "783"}
	, {"Name" : "Interval", "Min" : "783", "Max" : "783"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_in_mr_data_V { ap_fifo {  { img_in_mr_data_V_dout fifo_data 0 8 }  { img_in_mr_data_V_empty_n fifo_status 0 1 }  { img_in_mr_data_V_read fifo_update 1 1 } } }
	x_top { ap_none {  { x_top in_data 0 10 } } }
	x_bottom { ap_none {  { x_bottom in_data 0 10 } } }
	y_left { ap_none {  { y_left in_data 0 16 } } }
	y_right { ap_none {  { y_right in_data 0 16 } } }
	micro_roi_data_V { ap_memory {  { micro_roi_data_V_address0 mem_address 1 10 }  { micro_roi_data_V_ce0 mem_ce 1 1 }  { micro_roi_data_V_we0 mem_we 1 1 }  { micro_roi_data_V_d0 mem_din 1 8 } } }
}
