set moduleName get_vegetation_image_113
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {get_vegetation_image.113}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in_0_rows0 int 9 regular {pointer 1}  }
	{ img_in_0_cols0 int 10 regular {pointer 1}  }
	{ img_in_cols int 10 regular {fifo 0}  }
	{ img_in_cols_out int 10 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in_0_rows0", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_in_0_cols0", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_in_cols", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_cols_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_in_0_rows0 sc_out sc_lv 9 signal 0 } 
	{ img_in_0_rows0_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ img_in_0_cols0 sc_out sc_lv 10 signal 1 } 
	{ img_in_0_cols0_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ img_in_cols_dout sc_in sc_lv 10 signal 2 } 
	{ img_in_cols_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_in_cols_read sc_out sc_logic 1 signal 2 } 
	{ img_in_cols_out_din sc_out sc_lv 10 signal 3 } 
	{ img_in_cols_out_full_n sc_in sc_logic 1 signal 3 } 
	{ img_in_cols_out_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_in_0_rows0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "img_in_0_rows0", "role": "default" }} , 
 	{ "name": "img_in_0_rows0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "img_in_0_rows0", "role": "ap_vld" }} , 
 	{ "name": "img_in_0_cols0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "img_in_0_cols0", "role": "default" }} , 
 	{ "name": "img_in_0_cols0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "img_in_0_cols0", "role": "ap_vld" }} , 
 	{ "name": "img_in_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "img_in_cols", "role": "dout" }} , 
 	{ "name": "img_in_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_cols", "role": "empty_n" }} , 
 	{ "name": "img_in_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_cols", "role": "read" }} , 
 	{ "name": "img_in_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "img_in_cols_out", "role": "din" }} , 
 	{ "name": "img_in_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_cols_out", "role": "full_n" }} , 
 	{ "name": "img_in_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_cols_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "get_vegetation_image_113",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_in_0_rows0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "img_in_0_cols0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "img_in_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_in_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_in_cols_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	get_vegetation_image_113 {
		img_in_0_rows0 {Type O LastRead -1 FirstWrite 0}
		img_in_0_cols0 {Type O LastRead -1 FirstWrite 0}
		img_in_cols {Type I LastRead 0 FirstWrite -1}
		img_in_cols_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_in_0_rows0 { ap_vld {  { img_in_0_rows0 out_data 1 9 }  { img_in_0_rows0_ap_vld out_vld 1 1 } } }
	img_in_0_cols0 { ap_vld {  { img_in_0_cols0 out_data 1 10 }  { img_in_0_cols0_ap_vld out_vld 1 1 } } }
	img_in_cols { ap_fifo {  { img_in_cols_dout fifo_data 0 10 }  { img_in_cols_empty_n fifo_status 0 1 }  { img_in_cols_read fifo_update 1 1 } } }
	img_in_cols_out { ap_fifo {  { img_in_cols_out_din fifo_data 1 10 }  { img_in_cols_out_full_n fifo_status 0 1 }  { img_in_cols_out_write fifo_update 1 1 } } }
}