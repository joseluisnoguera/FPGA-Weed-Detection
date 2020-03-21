set moduleName get_weed_mask
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
set C_modelName {get_weed_mask}
set C_modelType { void 0 }
set C_modelArgList {
	{ weed_mask_tmp_data_V int 2 regular {fifo 1 volatile }  }
	{ lines_founded_read int 1 regular  }
	{ lines int 57 regular {array 6 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weed_mask_tmp_data_V", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lines_founded_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "lines", "interface" : "memory", "bitwidth" : 57, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weed_mask_tmp_data_V_din sc_out sc_lv 2 signal 0 } 
	{ weed_mask_tmp_data_V_full_n sc_in sc_logic 1 signal 0 } 
	{ weed_mask_tmp_data_V_write sc_out sc_logic 1 signal 0 } 
	{ lines_founded_read sc_in sc_logic 1 signal 1 } 
	{ lines_address0 sc_out sc_lv 3 signal 2 } 
	{ lines_ce0 sc_out sc_logic 1 signal 2 } 
	{ lines_q0 sc_in sc_lv 57 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weed_mask_tmp_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weed_mask_tmp_data_V", "role": "din" }} , 
 	{ "name": "weed_mask_tmp_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weed_mask_tmp_data_V", "role": "full_n" }} , 
 	{ "name": "weed_mask_tmp_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weed_mask_tmp_data_V", "role": "write" }} , 
 	{ "name": "lines_founded_read", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lines_founded_read", "role": "default" }} , 
 	{ "name": "lines_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lines", "role": "address0" }} , 
 	{ "name": "lines_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lines", "role": "ce0" }} , 
 	{ "name": "lines_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":57, "type": "signal", "bundle":{"name": "lines", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "get_weed_mask",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "115561", "EstimateLatencyMax" : "2189161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_is_crop_or_furrow_fu_117"}],
		"Port" : [
			{"Name" : "weed_mask_tmp_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "weed_mask_tmp_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lines_founded_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_is_crop_or_furrow_fu_117", "Port" : "lines"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_crop_or_furrow_fu_117", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_is_crop_or_furrow_fu_117.ip_accel_app_mul_Zio_U478", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	get_weed_mask {
		weed_mask_tmp_data_V {Type O LastRead -1 FirstWrite 3}
		lines_founded_read {Type I LastRead 0 FirstWrite -1}
		lines {Type I LastRead 1 FirstWrite -1}}
	is_crop_or_furrow {
		lines {Type I LastRead 1 FirstWrite -1}
		px_read {Type I LastRead 0 FirstWrite -1}
		py_read {Type I LastRead 0 FirstWrite -1}
		crop_width_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "115561", "Max" : "2189161"}
	, {"Name" : "Interval", "Min" : "115561", "Max" : "2189161"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	weed_mask_tmp_data_V { ap_fifo {  { weed_mask_tmp_data_V_din fifo_data 1 2 }  { weed_mask_tmp_data_V_full_n fifo_status 0 1 }  { weed_mask_tmp_data_V_write fifo_update 1 1 } } }
	lines_founded_read { ap_none {  { lines_founded_read in_data 0 1 } } }
	lines { ap_memory {  { lines_address0 mem_address 1 3 }  { lines_ce0 mem_ce 1 1 }  { lines_q0 mem_dout 0 57 } } }
}
