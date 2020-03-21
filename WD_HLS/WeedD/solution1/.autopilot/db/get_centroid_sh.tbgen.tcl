set moduleName get_centroid_sh
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {get_centroid_sh}
set C_modelType { void 0 }
set C_modelArgList {
	{ micro_roi_data_V int 8 regular {array 736 { 1 3 } 1 1 }  }
	{ h_offset int 16 regular  }
	{ v_offset_read int 8 regular  }
	{ v_limit int 8 regular  }
	{ h_limit int 16 regular  }
	{ possible_c_x int 8 regular  }
	{ possible_c_y int 32 regular  }
	{ c int 48 regular {pointer 1}  }
	{ c_read int 48 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "micro_roi_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "h_offset", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "v_offset_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "v_limit", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "h_limit", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "possible_c_x", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "possible_c_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "wire", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_read", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ micro_roi_data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ micro_roi_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ micro_roi_data_V_d0 sc_out sc_lv 8 signal 0 } 
	{ micro_roi_data_V_q0 sc_in sc_lv 8 signal 0 } 
	{ micro_roi_data_V_we0 sc_out sc_logic 1 signal 0 } 
	{ micro_roi_data_V_address1 sc_out sc_lv 10 signal 0 } 
	{ micro_roi_data_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ micro_roi_data_V_d1 sc_out sc_lv 8 signal 0 } 
	{ micro_roi_data_V_q1 sc_in sc_lv 8 signal 0 } 
	{ micro_roi_data_V_we1 sc_out sc_logic 1 signal 0 } 
	{ h_offset sc_in sc_lv 16 signal 1 } 
	{ v_offset_read sc_in sc_lv 8 signal 2 } 
	{ v_limit sc_in sc_lv 8 signal 3 } 
	{ h_limit sc_in sc_lv 16 signal 4 } 
	{ possible_c_x sc_in sc_lv 8 signal 5 } 
	{ possible_c_y sc_in sc_lv 32 signal 6 } 
	{ c sc_out sc_lv 48 signal 7 } 
	{ c_read sc_in sc_lv 48 signal 8 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ v_limit_ap_vld sc_in sc_logic 1 invld 3 } 
	{ h_limit_ap_vld sc_in sc_logic 1 invld 4 } 
	{ h_offset_ap_vld sc_in sc_logic 1 invld 1 } 
	{ v_offset_read_ap_vld sc_in sc_logic 1 invld 2 } 
	{ possible_c_x_ap_vld sc_in sc_logic 1 invld 5 } 
	{ possible_c_y_ap_vld sc_in sc_logic 1 invld 6 } 
	{ c_read_ap_vld sc_in sc_logic 1 invld 8 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ c_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "micro_roi_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "address0" }} , 
 	{ "name": "micro_roi_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "ce0" }} , 
 	{ "name": "micro_roi_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "d0" }} , 
 	{ "name": "micro_roi_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "q0" }} , 
 	{ "name": "micro_roi_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "we0" }} , 
 	{ "name": "micro_roi_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "address1" }} , 
 	{ "name": "micro_roi_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "ce1" }} , 
 	{ "name": "micro_roi_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "d1" }} , 
 	{ "name": "micro_roi_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "q1" }} , 
 	{ "name": "micro_roi_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "we1" }} , 
 	{ "name": "h_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_offset", "role": "default" }} , 
 	{ "name": "v_offset_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v_offset_read", "role": "default" }} , 
 	{ "name": "v_limit", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v_limit", "role": "default" }} , 
 	{ "name": "h_limit", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_limit", "role": "default" }} , 
 	{ "name": "possible_c_x", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "possible_c_x", "role": "default" }} , 
 	{ "name": "possible_c_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "possible_c_y", "role": "default" }} , 
 	{ "name": "c", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "c", "role": "default" }} , 
 	{ "name": "c_read", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "c_read", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "v_limit_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "v_limit", "role": "ap_vld" }} , 
 	{ "name": "h_limit_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "h_limit", "role": "ap_vld" }} , 
 	{ "name": "h_offset_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "h_offset", "role": "ap_vld" }} , 
 	{ "name": "v_offset_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "v_offset_read", "role": "ap_vld" }} , 
 	{ "name": "possible_c_x_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "possible_c_x", "role": "ap_vld" }} , 
 	{ "name": "possible_c_y_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "possible_c_y", "role": "ap_vld" }} , 
 	{ "name": "c_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "c_read", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "c_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "get_centroid_sh",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1539", "EstimateLatencyMax" : "1573",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "get_centroid_sh_Loop_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "get_centroid_sh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "get_centroid_sh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "get_centroid_sh_Bloc_U0", "Port" : "c"}]},
			{"Name" : "c_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_centroid_sh_Loop_U0", "Parent" : "0",
		"CDFG" : "get_centroid_sh_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1537", "EstimateLatencyMax" : "1537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "6",
				"BlockSignal" : [
					{"Name" : "v_offset_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_x_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "7",
				"BlockSignal" : [
					{"Name" : "possible_c_x_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_y_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "possible_c_y_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "c_read_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_centroid_sh_Bloc_U0", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "get_centroid_sh_Bloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "12"},
			{"Name" : "possible_c_x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "7",
				"BlockSignal" : [
					{"Name" : "possible_c_x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "c_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "10"},
			{"Name" : "v_offset_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "6",
				"BlockSignal" : [
					{"Name" : "v_offset_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "11"},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_y", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "possible_c_y_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_centroid_sh_Bloc_U0.ip_accel_app_udivHfu_U434", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_centroid_sh_Bloc_U0.ip_accel_app_udivIfE_U435", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_offset_c_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_offset_read_c_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.possible_c_x_c_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.possible_c_y_c_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_read_c_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_sum_0_loc_0_i_loc_s_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_sum_0_loc_0_i_loc_s_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_sum_0_loc_0_i_loc_c_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	get_centroid_sh {
		micro_roi_data_V {Type I LastRead 2 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		v_offset_read {Type I LastRead 0 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}
		possible_c_x {Type I LastRead 0 FirstWrite -1}
		possible_c_y {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 35}
		c_read {Type I LastRead 0 FirstWrite -1}}
	get_centroid_sh_Loop {
		micro_roi_data_V {Type I LastRead 2 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		v_offset_read {Type I LastRead 0 FirstWrite -1}
		possible_c_x {Type I LastRead 0 FirstWrite -1}
		possible_c_y {Type I LastRead 0 FirstWrite -1}
		c_read {Type I LastRead 0 FirstWrite -1}
		h_offset_out {Type O LastRead -1 FirstWrite 0}
		v_offset_read_out {Type O LastRead -1 FirstWrite 0}
		possible_c_x_out {Type O LastRead -1 FirstWrite 0}
		possible_c_y_out {Type O LastRead -1 FirstWrite 0}
		c_read_out {Type O LastRead -1 FirstWrite 0}}
	get_centroid_sh_Bloc {
		p_read {Type I LastRead 0 FirstWrite -1}
		possible_c_x {Type I LastRead 0 FirstWrite -1}
		c_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		v_offset_read {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		possible_c_y {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 35}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1539", "Max" : "1573"}
	, {"Name" : "Interval", "Min" : "1538", "Max" : "1538"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	micro_roi_data_V { ap_memory {  { micro_roi_data_V_address0 mem_address 1 10 }  { micro_roi_data_V_ce0 mem_ce 1 1 }  { micro_roi_data_V_d0 mem_din 1 8 }  { micro_roi_data_V_q0 mem_dout 0 8 }  { micro_roi_data_V_we0 mem_we 1 1 }  { micro_roi_data_V_address1 mem_address 1 10 }  { micro_roi_data_V_ce1 mem_ce 1 1 }  { micro_roi_data_V_d1 mem_din 1 8 }  { micro_roi_data_V_q1 mem_dout 0 8 }  { micro_roi_data_V_we1 mem_we 1 1 } } }
	h_offset { ap_none {  { h_offset in_data 0 16 }  { h_offset_ap_vld in_vld 0 1 } } }
	v_offset_read { ap_none {  { v_offset_read in_data 0 8 }  { v_offset_read_ap_vld in_vld 0 1 } } }
	v_limit { ap_none {  { v_limit in_data 0 8 }  { v_limit_ap_vld in_vld 0 1 } } }
	h_limit { ap_none {  { h_limit in_data 0 16 }  { h_limit_ap_vld in_vld 0 1 } } }
	possible_c_x { ap_none {  { possible_c_x in_data 0 8 }  { possible_c_x_ap_vld in_vld 0 1 } } }
	possible_c_y { ap_none {  { possible_c_y in_data 0 32 }  { possible_c_y_ap_vld in_vld 0 1 } } }
	c { ap_vld {  { c out_data 1 48 }  { c_ap_vld out_vld 1 1 } } }
	c_read { ap_none {  { c_read in_data 0 48 }  { c_read_ap_vld in_vld 0 1 } } }
}
