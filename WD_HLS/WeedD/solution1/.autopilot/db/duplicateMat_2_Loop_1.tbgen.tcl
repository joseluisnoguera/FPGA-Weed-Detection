set moduleName duplicateMat_2_Loop_1
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
set C_modelName {duplicateMat_2_Loop_.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_dst1_rows int 11 regular {fifo 0}  }
	{ p_dst1_cols int 12 regular {fifo 0}  }
	{ dst_V_V int 24 regular {fifo 0 volatile }  }
	{ p_dst1_data_V int 24 regular {fifo 1}  }
	{ dst1_V_V int 24 regular {fifo 0 volatile }  }
	{ p_dst2_data_V int 24 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_dst1_rows", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst1_cols", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "dst_V_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst1_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst1_V_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst2_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_dst1_rows_dout sc_in sc_lv 11 signal 0 } 
	{ p_dst1_rows_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_dst1_rows_read sc_out sc_logic 1 signal 0 } 
	{ p_dst1_cols_dout sc_in sc_lv 12 signal 1 } 
	{ p_dst1_cols_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_dst1_cols_read sc_out sc_logic 1 signal 1 } 
	{ dst_V_V_dout sc_in sc_lv 24 signal 2 } 
	{ dst_V_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ dst_V_V_read sc_out sc_logic 1 signal 2 } 
	{ p_dst1_data_V_din sc_out sc_lv 24 signal 3 } 
	{ p_dst1_data_V_full_n sc_in sc_logic 1 signal 3 } 
	{ p_dst1_data_V_write sc_out sc_logic 1 signal 3 } 
	{ dst1_V_V_dout sc_in sc_lv 24 signal 4 } 
	{ dst1_V_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ dst1_V_V_read sc_out sc_logic 1 signal 4 } 
	{ p_dst2_data_V_din sc_out sc_lv 24 signal 5 } 
	{ p_dst2_data_V_full_n sc_in sc_logic 1 signal 5 } 
	{ p_dst2_data_V_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_dst1_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_dst1_rows", "role": "dout" }} , 
 	{ "name": "p_dst1_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_rows", "role": "empty_n" }} , 
 	{ "name": "p_dst1_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_rows", "role": "read" }} , 
 	{ "name": "p_dst1_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_dst1_cols", "role": "dout" }} , 
 	{ "name": "p_dst1_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_cols", "role": "empty_n" }} , 
 	{ "name": "p_dst1_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_cols", "role": "read" }} , 
 	{ "name": "dst_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "dst_V_V", "role": "dout" }} , 
 	{ "name": "dst_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_V", "role": "empty_n" }} , 
 	{ "name": "dst_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_V", "role": "read" }} , 
 	{ "name": "p_dst1_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "din" }} , 
 	{ "name": "p_dst1_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "full_n" }} , 
 	{ "name": "p_dst1_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "write" }} , 
 	{ "name": "dst1_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "dst1_V_V", "role": "dout" }} , 
 	{ "name": "dst1_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst1_V_V", "role": "empty_n" }} , 
 	{ "name": "dst1_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst1_V_V", "role": "read" }} , 
 	{ "name": "p_dst2_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "din" }} , 
 	{ "name": "p_dst2_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "full_n" }} , 
 	{ "name": "p_dst2_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "duplicateMat_2_Loop_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "923761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_dst1_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln113_write_r_fu_100", "Port" : "Mat_9_720_1280_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln114_write_r_fu_108", "Port" : "Mat_9_720_1280_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln113_write_r_fu_100", "SubBlockPort" : ["Mat_9_720_1280_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln114_write_r_fu_108", "SubBlockPort" : ["Mat_9_720_1280_1_data_V_addr_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ln113_write_r_fu_100", "Parent" : "0",
		"CDFG" : "write_r",
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
			{"Name" : "val_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Mat_9_720_1280_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_720_1280_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ln114_write_r_fu_108", "Parent" : "0",
		"CDFG" : "write_r",
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
			{"Name" : "val_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Mat_9_720_1280_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_720_1280_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]}]}


set ArgLastReadFirstWriteLatency {
	duplicateMat_2_Loop_1 {
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		dst_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		dst1_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	write_r {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_720_1280_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	write_r {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_720_1280_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "923761"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "923761"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_dst1_rows { ap_fifo {  { p_dst1_rows_dout fifo_data 0 11 }  { p_dst1_rows_empty_n fifo_status 0 1 }  { p_dst1_rows_read fifo_update 1 1 } } }
	p_dst1_cols { ap_fifo {  { p_dst1_cols_dout fifo_data 0 12 }  { p_dst1_cols_empty_n fifo_status 0 1 }  { p_dst1_cols_read fifo_update 1 1 } } }
	dst_V_V { ap_fifo {  { dst_V_V_dout fifo_data 0 24 }  { dst_V_V_empty_n fifo_status 0 1 }  { dst_V_V_read fifo_update 1 1 } } }
	p_dst1_data_V { ap_fifo {  { p_dst1_data_V_din fifo_data 1 24 }  { p_dst1_data_V_full_n fifo_status 0 1 }  { p_dst1_data_V_write fifo_update 1 1 } } }
	dst1_V_V { ap_fifo {  { dst1_V_V_dout fifo_data 0 24 }  { dst1_V_V_empty_n fifo_status 0 1 }  { dst1_V_V_read fifo_update 1 1 } } }
	p_dst2_data_V { ap_fifo {  { p_dst2_data_V_din fifo_data 1 24 }  { p_dst2_data_V_full_n fifo_status 0 1 }  { p_dst2_data_V_write fifo_update 1 1 } } }
}
