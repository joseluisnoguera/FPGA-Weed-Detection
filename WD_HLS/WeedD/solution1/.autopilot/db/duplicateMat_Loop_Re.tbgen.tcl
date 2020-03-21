set moduleName duplicateMat_Loop_Re
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
set C_modelName {duplicateMat_Loop_Re}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_cols_load10_loc int 10 regular {fifo 0}  }
	{ p_src_data_V int 24 regular {fifo 0}  }
	{ src_V_V int 24 regular {fifo 1 volatile }  }
	{ p_src_cols_load10_loc_out int 10 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_cols_load10_loc", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "src_V_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_cols_load10_loc_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
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
	{ p_src_cols_load10_loc_dout sc_in sc_lv 10 signal 0 } 
	{ p_src_cols_load10_loc_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_cols_load10_loc_read sc_out sc_logic 1 signal 0 } 
	{ p_src_data_V_dout sc_in sc_lv 24 signal 1 } 
	{ p_src_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_data_V_read sc_out sc_logic 1 signal 1 } 
	{ src_V_V_din sc_out sc_lv 24 signal 2 } 
	{ src_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ src_V_V_write sc_out sc_logic 1 signal 2 } 
	{ p_src_cols_load10_loc_out_din sc_out sc_lv 10 signal 3 } 
	{ p_src_cols_load10_loc_out_full_n sc_in sc_logic 1 signal 3 } 
	{ p_src_cols_load10_loc_out_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "p_src_cols_load10_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_src_cols_load10_loc", "role": "dout" }} , 
 	{ "name": "p_src_cols_load10_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols_load10_loc", "role": "empty_n" }} , 
 	{ "name": "p_src_cols_load10_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols_load10_loc", "role": "read" }} , 
 	{ "name": "p_src_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "dout" }} , 
 	{ "name": "p_src_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "read" }} , 
 	{ "name": "src_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "src_V_V", "role": "din" }} , 
 	{ "name": "src_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_V_V", "role": "full_n" }} , 
 	{ "name": "src_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_V_V", "role": "write" }} , 
 	{ "name": "p_src_cols_load10_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_src_cols_load10_loc_out", "role": "din" }} , 
 	{ "name": "p_src_cols_load10_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols_load10_loc_out", "role": "full_n" }} , 
 	{ "name": "p_src_cols_load10_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols_load10_loc_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "duplicateMat_Loop_Re",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "721", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "tmp_V_read779_fu_105", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read779_fu_105", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_read779_fu_105", "Parent" : "0",
		"CDFG" : "read779",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]}]}


set ArgLastReadFirstWriteLatency {
	duplicateMat_Loop_Re {
		p_src_cols_load10_loc {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		src_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load10_loc_out {Type O LastRead -1 FirstWrite 0}}
	read779 {
		Mat_9_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "721", "Max" : "58141"}
	, {"Name" : "Interval", "Min" : "721", "Max" : "58141"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_src_cols_load10_loc { ap_fifo {  { p_src_cols_load10_loc_dout fifo_data 0 10 }  { p_src_cols_load10_loc_empty_n fifo_status 0 1 }  { p_src_cols_load10_loc_read fifo_update 1 1 } } }
	p_src_data_V { ap_fifo {  { p_src_data_V_dout fifo_data 0 24 }  { p_src_data_V_empty_n fifo_status 0 1 }  { p_src_data_V_read fifo_update 1 1 } } }
	src_V_V { ap_fifo {  { src_V_V_din fifo_data 1 24 }  { src_V_V_full_n fifo_status 0 1 }  { src_V_V_write fifo_update 1 1 } } }
	p_src_cols_load10_loc_out { ap_fifo {  { p_src_cols_load10_loc_out_din fifo_data 1 10 }  { p_src_cols_load10_loc_out_full_n fifo_status 0 1 }  { p_src_cols_load10_loc_out_write fifo_update 1 1 } } }
}
