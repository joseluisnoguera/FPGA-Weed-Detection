set moduleName convert_fp_to_8b770
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
set C_modelName {convert_fp_to_8b770}
set C_modelType { void 0 }
set C_modelArgList {
	{ min_value_V_c17 int 28 regular {fifo 0}  }
	{ sub_ln703_cast_loc_c int 24 regular  }
	{ veg_temp_data_V int 32 regular {fifo 0 volatile }  }
	{ img_out_data_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "min_value_V_c17", "interface" : "fifo", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln703_cast_loc_c", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "veg_temp_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_out_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
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
	{ min_value_V_c17_dout sc_in sc_lv 28 signal 0 } 
	{ min_value_V_c17_empty_n sc_in sc_logic 1 signal 0 } 
	{ min_value_V_c17_read sc_out sc_logic 1 signal 0 } 
	{ sub_ln703_cast_loc_c sc_in sc_lv 24 signal 1 } 
	{ veg_temp_data_V_dout sc_in sc_lv 32 signal 2 } 
	{ veg_temp_data_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ veg_temp_data_V_read sc_out sc_logic 1 signal 2 } 
	{ img_out_data_V_din sc_out sc_lv 8 signal 3 } 
	{ img_out_data_V_full_n sc_in sc_logic 1 signal 3 } 
	{ img_out_data_V_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "min_value_V_c17_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "min_value_V_c17", "role": "dout" }} , 
 	{ "name": "min_value_V_c17_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_value_V_c17", "role": "empty_n" }} , 
 	{ "name": "min_value_V_c17_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_value_V_c17", "role": "read" }} , 
 	{ "name": "sub_ln703_cast_loc_c", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "sub_ln703_cast_loc_c", "role": "default" }} , 
 	{ "name": "veg_temp_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "veg_temp_data_V", "role": "dout" }} , 
 	{ "name": "veg_temp_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "veg_temp_data_V", "role": "empty_n" }} , 
 	{ "name": "veg_temp_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "veg_temp_data_V", "role": "read" }} , 
 	{ "name": "img_out_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "din" }} , 
 	{ "name": "img_out_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "full_n" }} , 
 	{ "name": "img_out_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "convert_fp_to_8b770",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57623", "EstimateLatencyMax" : "57623",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "min_value_V_c17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "min_value_V_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub_ln703_cast_loc_c", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "veg_temp_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "veg_temp_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_out_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_sdivrcU_U203", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convert_fp_to_8b770 {
		min_value_V_c17 {Type I LastRead 21 FirstWrite -1}
		sub_ln703_cast_loc_c {Type I LastRead 0 FirstWrite -1}
		veg_temp_data_V {Type I LastRead 23 FirstWrite -1}
		img_out_data_V {Type O LastRead -1 FirstWrite 23}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57623", "Max" : "57623"}
	, {"Name" : "Interval", "Min" : "57623", "Max" : "57623"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	min_value_V_c17 { ap_fifo {  { min_value_V_c17_dout fifo_data 0 28 }  { min_value_V_c17_empty_n fifo_status 0 1 }  { min_value_V_c17_read fifo_update 1 1 } } }
	sub_ln703_cast_loc_c { ap_none {  { sub_ln703_cast_loc_c in_data 0 24 } } }
	veg_temp_data_V { ap_fifo {  { veg_temp_data_V_dout fifo_data 0 32 }  { veg_temp_data_V_empty_n fifo_status 0 1 }  { veg_temp_data_V_read fifo_update 1 1 } } }
	img_out_data_V { ap_fifo {  { img_out_data_V_din fifo_data 1 8 }  { img_out_data_V_full_n fifo_status 0 1 }  { img_out_data_V_write fifo_update 1 1 } } }
}
