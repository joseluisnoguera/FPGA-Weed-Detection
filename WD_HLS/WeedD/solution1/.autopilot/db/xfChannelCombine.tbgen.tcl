set moduleName xfChannelCombine
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
set C_modelName {xfChannelCombine}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_in1_V_V int 8 regular {fifo 0 volatile }  }
	{ p_in2_V_V int 8 regular {fifo 0 volatile }  }
	{ p_in3_V_V int 8 regular {fifo 0 volatile }  }
	{ p_out_V_V int 24 regular {fifo 1 volatile }  }
	{ p_src1_cols_load7_loc int 10 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_in1_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_in2_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_in3_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_out_V_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src1_cols_load7_loc", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ p_in1_V_V_dout sc_in sc_lv 8 signal 0 } 
	{ p_in1_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_in1_V_V_read sc_out sc_logic 1 signal 0 } 
	{ p_in2_V_V_dout sc_in sc_lv 8 signal 1 } 
	{ p_in2_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_in2_V_V_read sc_out sc_logic 1 signal 1 } 
	{ p_in3_V_V_dout sc_in sc_lv 8 signal 2 } 
	{ p_in3_V_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_in3_V_V_read sc_out sc_logic 1 signal 2 } 
	{ p_out_V_V_din sc_out sc_lv 24 signal 3 } 
	{ p_out_V_V_full_n sc_in sc_logic 1 signal 3 } 
	{ p_out_V_V_write sc_out sc_logic 1 signal 3 } 
	{ p_src1_cols_load7_loc_dout sc_in sc_lv 10 signal 4 } 
	{ p_src1_cols_load7_loc_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_src1_cols_load7_loc_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "p_in1_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_in1_V_V", "role": "dout" }} , 
 	{ "name": "p_in1_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_in1_V_V", "role": "empty_n" }} , 
 	{ "name": "p_in1_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_in1_V_V", "role": "read" }} , 
 	{ "name": "p_in2_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_in2_V_V", "role": "dout" }} , 
 	{ "name": "p_in2_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_in2_V_V", "role": "empty_n" }} , 
 	{ "name": "p_in2_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_in2_V_V", "role": "read" }} , 
 	{ "name": "p_in3_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_in3_V_V", "role": "dout" }} , 
 	{ "name": "p_in3_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_in3_V_V", "role": "empty_n" }} , 
 	{ "name": "p_in3_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_in3_V_V", "role": "read" }} , 
 	{ "name": "p_out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_out_V_V", "role": "din" }} , 
 	{ "name": "p_out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out_V_V", "role": "full_n" }} , 
 	{ "name": "p_out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out_V_V", "role": "write" }} , 
 	{ "name": "p_src1_cols_load7_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_src1_cols_load7_loc", "role": "dout" }} , 
 	{ "name": "p_src1_cols_load7_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src1_cols_load7_loc", "role": "empty_n" }} , 
 	{ "name": "p_src1_cols_load7_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src1_cols_load7_loc", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "xfChannelCombine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57961", "EstimateLatencyMax" : "57961",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_in1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_in1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_in2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_in2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_in3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_in3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src1_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src1_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	xfChannelCombine {
		p_in1_V_V {Type I LastRead 2 FirstWrite -1}
		p_in2_V_V {Type I LastRead 2 FirstWrite -1}
		p_in3_V_V {Type I LastRead 2 FirstWrite -1}
		p_out_V_V {Type O LastRead -1 FirstWrite 2}
		p_src1_cols_load7_loc {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57961", "Max" : "57961"}
	, {"Name" : "Interval", "Min" : "57961", "Max" : "57961"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_in1_V_V { ap_fifo {  { p_in1_V_V_dout fifo_data 0 8 }  { p_in1_V_V_empty_n fifo_status 0 1 }  { p_in1_V_V_read fifo_update 1 1 } } }
	p_in2_V_V { ap_fifo {  { p_in2_V_V_dout fifo_data 0 8 }  { p_in2_V_V_empty_n fifo_status 0 1 }  { p_in2_V_V_read fifo_update 1 1 } } }
	p_in3_V_V { ap_fifo {  { p_in3_V_V_dout fifo_data 0 8 }  { p_in3_V_V_empty_n fifo_status 0 1 }  { p_in3_V_V_read fifo_update 1 1 } } }
	p_out_V_V { ap_fifo {  { p_out_V_V_din fifo_data 1 24 }  { p_out_V_V_full_n fifo_status 0 1 }  { p_out_V_V_write fifo_update 1 1 } } }
	p_src1_cols_load7_loc { ap_fifo {  { p_src1_cols_load7_loc_dout fifo_data 0 10 }  { p_src1_cols_load7_loc_empty_n fifo_status 0 1 }  { p_src1_cols_load7_loc_read fifo_update 1 1 } } }
}
