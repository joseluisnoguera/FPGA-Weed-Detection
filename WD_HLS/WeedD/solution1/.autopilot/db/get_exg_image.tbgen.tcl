set moduleName get_exg_image
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
set C_modelName {get_exg_image}
set C_modelType { void 0 }
set C_modelArgList {
	{ r_channel_data_V int 8 regular {fifo 0 volatile }  }
	{ g_channel_data_V int 8 regular {fifo 0 volatile }  }
	{ b_channel_data_V int 8 regular {fifo 0 volatile }  }
	{ max_r int 32 regular {fifo 0}  }
	{ max_g int 32 regular {fifo 0}  }
	{ max_b int 32 regular {fifo 0}  }
	{ veg_img_data_V int 32 regular {fifo 1 volatile }  }
	{ min_value_V_out int 28 regular {fifo 1}  }
	{ max_value_V_out int 29 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_channel_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "g_channel_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b_channel_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "max_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_g", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_b", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "veg_img_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_value_V_out", "interface" : "fifo", "bitwidth" : 28, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_value_V_out", "interface" : "fifo", "bitwidth" : 29, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_channel_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ r_channel_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ r_channel_data_V_read sc_out sc_logic 1 signal 0 } 
	{ g_channel_data_V_dout sc_in sc_lv 8 signal 1 } 
	{ g_channel_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ g_channel_data_V_read sc_out sc_logic 1 signal 1 } 
	{ b_channel_data_V_dout sc_in sc_lv 8 signal 2 } 
	{ b_channel_data_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ b_channel_data_V_read sc_out sc_logic 1 signal 2 } 
	{ max_r_dout sc_in sc_lv 32 signal 3 } 
	{ max_r_empty_n sc_in sc_logic 1 signal 3 } 
	{ max_r_read sc_out sc_logic 1 signal 3 } 
	{ max_g_dout sc_in sc_lv 32 signal 4 } 
	{ max_g_empty_n sc_in sc_logic 1 signal 4 } 
	{ max_g_read sc_out sc_logic 1 signal 4 } 
	{ max_b_dout sc_in sc_lv 32 signal 5 } 
	{ max_b_empty_n sc_in sc_logic 1 signal 5 } 
	{ max_b_read sc_out sc_logic 1 signal 5 } 
	{ veg_img_data_V_din sc_out sc_lv 32 signal 6 } 
	{ veg_img_data_V_full_n sc_in sc_logic 1 signal 6 } 
	{ veg_img_data_V_write sc_out sc_logic 1 signal 6 } 
	{ min_value_V_out_din sc_out sc_lv 28 signal 7 } 
	{ min_value_V_out_full_n sc_in sc_logic 1 signal 7 } 
	{ min_value_V_out_write sc_out sc_logic 1 signal 7 } 
	{ max_value_V_out_din sc_out sc_lv 29 signal 8 } 
	{ max_value_V_out_full_n sc_in sc_logic 1 signal 8 } 
	{ max_value_V_out_write sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_channel_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "r_channel_data_V", "role": "dout" }} , 
 	{ "name": "r_channel_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_channel_data_V", "role": "empty_n" }} , 
 	{ "name": "r_channel_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_channel_data_V", "role": "read" }} , 
 	{ "name": "g_channel_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g_channel_data_V", "role": "dout" }} , 
 	{ "name": "g_channel_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_channel_data_V", "role": "empty_n" }} , 
 	{ "name": "g_channel_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_channel_data_V", "role": "read" }} , 
 	{ "name": "b_channel_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_channel_data_V", "role": "dout" }} , 
 	{ "name": "b_channel_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_channel_data_V", "role": "empty_n" }} , 
 	{ "name": "b_channel_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_channel_data_V", "role": "read" }} , 
 	{ "name": "max_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_r", "role": "dout" }} , 
 	{ "name": "max_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_r", "role": "empty_n" }} , 
 	{ "name": "max_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_r", "role": "read" }} , 
 	{ "name": "max_g_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_g", "role": "dout" }} , 
 	{ "name": "max_g_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_g", "role": "empty_n" }} , 
 	{ "name": "max_g_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_g", "role": "read" }} , 
 	{ "name": "max_b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_b", "role": "dout" }} , 
 	{ "name": "max_b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_b", "role": "empty_n" }} , 
 	{ "name": "max_b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_b", "role": "read" }} , 
 	{ "name": "veg_img_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "veg_img_data_V", "role": "din" }} , 
 	{ "name": "veg_img_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "veg_img_data_V", "role": "full_n" }} , 
 	{ "name": "veg_img_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "veg_img_data_V", "role": "write" }} , 
 	{ "name": "min_value_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "min_value_V_out", "role": "din" }} , 
 	{ "name": "min_value_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_value_V_out", "role": "full_n" }} , 
 	{ "name": "min_value_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_value_V_out", "role": "write" }} , 
 	{ "name": "max_value_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "max_value_V_out", "role": "din" }} , 
 	{ "name": "max_value_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_value_V_out", "role": "full_n" }} , 
 	{ "name": "max_value_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_value_V_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "get_exg_image",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2419201", "EstimateLatencyMax" : "2419201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "r_channel_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "g_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "g_channel_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "b_channel_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_g_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "veg_img_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "veg_img_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "min_value_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_value_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_sdivpcA_U182", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_sdivpcA_U183", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_sdivpcA_U184", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_sdivqcK_U185", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_sdivqcK_U186", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_sdivqcK_U187", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	get_exg_image {
		r_channel_data_V {Type I LastRead 1 FirstWrite -1}
		g_channel_data_V {Type I LastRead 1 FirstWrite -1}
		b_channel_data_V {Type I LastRead 1 FirstWrite -1}
		max_r {Type I LastRead 0 FirstWrite -1}
		max_g {Type I LastRead 0 FirstWrite -1}
		max_b {Type I LastRead 0 FirstWrite -1}
		veg_img_data_V {Type O LastRead -1 FirstWrite 42}
		min_value_V_out {Type O LastRead -1 FirstWrite 1}
		max_value_V_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2419201", "Max" : "2419201"}
	, {"Name" : "Interval", "Min" : "2419201", "Max" : "2419201"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_channel_data_V { ap_fifo {  { r_channel_data_V_dout fifo_data 0 8 }  { r_channel_data_V_empty_n fifo_status 0 1 }  { r_channel_data_V_read fifo_update 1 1 } } }
	g_channel_data_V { ap_fifo {  { g_channel_data_V_dout fifo_data 0 8 }  { g_channel_data_V_empty_n fifo_status 0 1 }  { g_channel_data_V_read fifo_update 1 1 } } }
	b_channel_data_V { ap_fifo {  { b_channel_data_V_dout fifo_data 0 8 }  { b_channel_data_V_empty_n fifo_status 0 1 }  { b_channel_data_V_read fifo_update 1 1 } } }
	max_r { ap_fifo {  { max_r_dout fifo_data 0 32 }  { max_r_empty_n fifo_status 0 1 }  { max_r_read fifo_update 1 1 } } }
	max_g { ap_fifo {  { max_g_dout fifo_data 0 32 }  { max_g_empty_n fifo_status 0 1 }  { max_g_read fifo_update 1 1 } } }
	max_b { ap_fifo {  { max_b_dout fifo_data 0 32 }  { max_b_empty_n fifo_status 0 1 }  { max_b_read fifo_update 1 1 } } }
	veg_img_data_V { ap_fifo {  { veg_img_data_V_din fifo_data 1 32 }  { veg_img_data_V_full_n fifo_status 0 1 }  { veg_img_data_V_write fifo_update 1 1 } } }
	min_value_V_out { ap_fifo {  { min_value_V_out_din fifo_data 1 28 }  { min_value_V_out_full_n fifo_status 0 1 }  { min_value_V_out_write fifo_update 1 1 } } }
	max_value_V_out { ap_fifo {  { max_value_V_out_din fifo_data 1 29 }  { max_value_V_out_full_n fifo_status 0 1 }  { max_value_V_out_write fifo_update 1 1 } } }
}
