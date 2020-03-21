set moduleName sectors_weed_classif
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
set C_modelName {sectors_weed_classif}
set C_modelType { void 0 }
set C_modelArgList {
	{ weed_mask_tmp_data_V int 2 regular {fifo 0 volatile }  }
	{ weed_mask_out_data_V int 8 regular {fifo 2 volatile }  }
	{ opened_data_V int 8 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weed_mask_tmp_data_V", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "weed_mask_out_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "opened_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weed_mask_tmp_data_V_dout sc_in sc_lv 2 signal 0 } 
	{ weed_mask_tmp_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ weed_mask_tmp_data_V_read sc_out sc_logic 1 signal 0 } 
	{ weed_mask_out_data_V_dout sc_in sc_lv 8 signal 1 } 
	{ weed_mask_out_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ weed_mask_out_data_V_read sc_out sc_logic 1 signal 1 } 
	{ weed_mask_out_data_V_din sc_out sc_lv 8 signal 1 } 
	{ weed_mask_out_data_V_full_n sc_in sc_logic 1 signal 1 } 
	{ weed_mask_out_data_V_write sc_out sc_logic 1 signal 1 } 
	{ opened_data_V_dout sc_in sc_lv 8 signal 2 } 
	{ opened_data_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ opened_data_V_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weed_mask_tmp_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weed_mask_tmp_data_V", "role": "dout" }} , 
 	{ "name": "weed_mask_tmp_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weed_mask_tmp_data_V", "role": "empty_n" }} , 
 	{ "name": "weed_mask_tmp_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weed_mask_tmp_data_V", "role": "read" }} , 
 	{ "name": "weed_mask_out_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weed_mask_out_data_V", "role": "dout" }} , 
 	{ "name": "weed_mask_out_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weed_mask_out_data_V", "role": "empty_n" }} , 
 	{ "name": "weed_mask_out_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weed_mask_out_data_V", "role": "read" }} , 
 	{ "name": "weed_mask_out_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weed_mask_out_data_V", "role": "din" }} , 
 	{ "name": "weed_mask_out_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weed_mask_out_data_V", "role": "full_n" }} , 
 	{ "name": "weed_mask_out_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weed_mask_out_data_V", "role": "write" }} , 
 	{ "name": "opened_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "opened_data_V", "role": "dout" }} , 
 	{ "name": "opened_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "opened_data_V", "role": "empty_n" }} , 
 	{ "name": "opened_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "opened_data_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "sectors_weed_classif",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59703", "EstimateLatencyMax" : "497463",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bitwise_and_fu_403"}],
		"Port" : [
			{"Name" : "weed_mask_tmp_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "weed_mask_tmp_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_bitwise_and_fu_403", "Port" : "p_src1_data_V"}]},
			{"Name" : "weed_mask_out_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "weed_mask_out_data_V_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_bitwise_and_fu_403", "Port" : "p_dst_data_V"}]},
			{"Name" : "opened_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_bitwise_and_fu_403", "Port" : "p_src2_data_V"}]},
			{"Name" : "segments", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.segments_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.quadrant_space_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.quadrant_weed_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bitwise_and_fu_403", "Parent" : "0",
		"CDFG" : "bitwise_and",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58141", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src1_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src2_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src2_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_udiv6jw_U496", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sectors_weed_classif {
		weed_mask_tmp_data_V {Type I LastRead 10 FirstWrite -1}
		weed_mask_out_data_V {Type IO LastRead 8 FirstWrite 3}
		opened_data_V {Type I LastRead 3 FirstWrite -1}
		segments {Type I LastRead -1 FirstWrite -1}}
	bitwise_and {
		p_src1_data_V {Type I LastRead 3 FirstWrite -1}
		p_src2_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "59703", "Max" : "497463"}
	, {"Name" : "Interval", "Min" : "59703", "Max" : "497463"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	weed_mask_tmp_data_V { ap_fifo {  { weed_mask_tmp_data_V_dout fifo_data 0 2 }  { weed_mask_tmp_data_V_empty_n fifo_status 0 1 }  { weed_mask_tmp_data_V_read fifo_update 1 1 } } }
	weed_mask_out_data_V { ap_fifo {  { weed_mask_out_data_V_dout fifo_data 0 8 }  { weed_mask_out_data_V_empty_n fifo_status 0 1 }  { weed_mask_out_data_V_read fifo_update 1 1 }  { weed_mask_out_data_V_din fifo_data 1 8 }  { weed_mask_out_data_V_full_n fifo_status 0 1 }  { weed_mask_out_data_V_write fifo_update 1 1 } } }
	opened_data_V { ap_fifo {  { opened_data_V_dout fifo_data 0 8 }  { opened_data_V_empty_n fifo_status 0 1 }  { opened_data_V_read fifo_update 1 1 } } }
}
