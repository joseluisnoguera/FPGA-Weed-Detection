set moduleName extract_third_and_fo_1
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
set C_modelName {extract_third_and_fo.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ line_bases_active int 17 regular {array 6 { 1 3 } 1 1 }  }
	{ eroded_data_V int 8 regular {fifo 0 volatile }  }
	{ centroids int 48 regular {array 72 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "line_bases_active", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "eroded_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "centroids", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ line_bases_active_address0 sc_out sc_lv 3 signal 0 } 
	{ line_bases_active_ce0 sc_out sc_logic 1 signal 0 } 
	{ line_bases_active_q0 sc_in sc_lv 17 signal 0 } 
	{ eroded_data_V_dout sc_in sc_lv 8 signal 1 } 
	{ eroded_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ eroded_data_V_read sc_out sc_logic 1 signal 1 } 
	{ centroids_address0 sc_out sc_lv 7 signal 2 } 
	{ centroids_ce0 sc_out sc_logic 1 signal 2 } 
	{ centroids_we0 sc_out sc_logic 1 signal 2 } 
	{ centroids_d0 sc_out sc_lv 48 signal 2 } 
	{ centroids_q0 sc_in sc_lv 48 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "line_bases_active_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "line_bases_active", "role": "address0" }} , 
 	{ "name": "line_bases_active_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_bases_active", "role": "ce0" }} , 
 	{ "name": "line_bases_active_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "line_bases_active", "role": "q0" }} , 
 	{ "name": "eroded_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eroded_data_V", "role": "dout" }} , 
 	{ "name": "eroded_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_data_V", "role": "empty_n" }} , 
 	{ "name": "eroded_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_data_V", "role": "read" }} , 
 	{ "name": "centroids_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "centroids", "role": "address0" }} , 
 	{ "name": "centroids_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "centroids", "role": "ce0" }} , 
 	{ "name": "centroids_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "centroids", "role": "we0" }} , 
 	{ "name": "centroids_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "centroids", "role": "d0" }} , 
 	{ "name": "centroids_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "centroids", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "23", "24", "26", "27", "28", "29", "30"],
		"CDFG" : "extract_third_and_fo_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "30050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_centroid_fh_fu_350"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_micro_roi_fu_360"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_last_centroids_fu_371"}],
		"Port" : [
			{"Name" : "line_bases_active", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_extract_micro_roi_fu_360", "Port" : "img_in_mr_data_V"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_get_last_centroids_fu_371", "Port" : "centroids"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_get_last_centroids_fu_371", "Port" : "last_c_2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.segments647_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last_c_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.micro_roi_2_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350", "Parent" : "0", "Child" : ["5", "6", "7", "8", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "get_centroid_fh",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1540", "EstimateLatencyMax" : "1574",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "get_centroid_fh_entr_U0", "ReadyCount" : "get_centroid_fh_entr_U0_ap_ready_count"},
			{"ID" : "7", "Name" : "get_centroid_fh_Loop_U0", "ReadyCount" : "get_centroid_fh_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "get_centroid_fh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "get_centroid_fh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "get_centroid_fh_Bloc_U0", "Port" : "c"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.get_centroid_fh_entr_U0", "Parent" : "4",
		"CDFG" : "get_centroid_fh_entr",
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
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "v_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "v_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "v_limit_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "h_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "h_limit_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_1_U0", "Parent" : "4",
		"CDFG" : "get_centroid_fh_Bloc_1",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_get_cenJfO_U",
		"Port" : [
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.get_centroid_fh_Loop_U0", "Parent" : "4",
		"CDFG" : "get_centroid_fh_Loop",
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
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0", "Parent" : "4", "Child" : ["9", "10"],
		"CDFG" : "get_centroid_fh_Bloc",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "21"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "18"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "17"},
			{"Name" : "v_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "v_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "19"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "20"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0.ip_accel_app_udivHfu_U362", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0.ip_accel_app_udivIfE_U363", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.h_offset_c_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.v_offset_c_U", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.v_limit_c_U", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.v_limit_c8_U", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.h_limit_c_U", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.h_limit_c9_U", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.lshr_ln146_cast_loc_s_U", "Parent" : "4"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.lshr_ln147_cast_loc_s_U", "Parent" : "4"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.v_sum_0_loc_channel_U", "Parent" : "4"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.h_sum_0_loc_channel_U", "Parent" : "4"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.p_sum_0_loc_channel_U", "Parent" : "4"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_centroid_fh_fu_350.start_for_get_cenJfO_U", "Parent" : "4"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_extract_micro_roi_fu_360", "Parent" : "0",
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
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_last_centroids_fu_371", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "get_last_centroids",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "25", "Name" : "get_last_centroids_L_U0"}],
		"OutputProcess" : [
			{"ID" : "25", "Name" : "get_last_centroids_L_U0"}],
		"Port" : [
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "get_last_centroids_L_U0", "Port" : "centroids"}]},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "get_last_centroids_L_U0", "Port" : "last_c_2"}]},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_last_centroids_fu_371.get_last_centroids_L_U0", "Parent" : "24",
		"CDFG" : "get_last_centroids_L",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_sdivNgs_U402", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_udivOgC_U403", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_udivOgC_U404", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_mac_PgM_U405", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_mul_QgW_U406", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	extract_third_and_fo_1 {
		line_bases_active {Type I LastRead 2 FirstWrite -1}
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		centroids {Type IO LastRead 1 FirstWrite -1}
		segments647 {Type I LastRead -1 FirstWrite -1}
		last_c {Type IO LastRead -1 FirstWrite -1}}
	get_centroid_fh {
		micro_roi_data_V {Type I LastRead 2 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		v_offset {Type I LastRead 0 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 35}}
	get_centroid_fh_entr {
		h_offset {Type I LastRead 0 FirstWrite -1}
		v_offset {Type I LastRead 0 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}
		h_offset_out {Type O LastRead -1 FirstWrite 0}
		v_offset_out {Type O LastRead -1 FirstWrite 0}
		v_limit_out {Type O LastRead -1 FirstWrite 0}
		v_limit_out1 {Type O LastRead -1 FirstWrite 0}
		h_limit_out {Type O LastRead -1 FirstWrite 0}
		h_limit_out2 {Type O LastRead -1 FirstWrite 0}}
	get_centroid_fh_Bloc_1 {
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}}
	get_centroid_fh_Loop {
		h_limit {Type I LastRead 0 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		micro_roi_data_V {Type I LastRead 2 FirstWrite -1}}
	get_centroid_fh_Bloc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		v_offset {Type I LastRead 0 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 35}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}}
	extract_micro_roi {
		img_in_mr_data_V {Type I LastRead 2 FirstWrite -1}
		x_top {Type I LastRead 0 FirstWrite -1}
		x_bottom {Type I LastRead 0 FirstWrite -1}
		y_left {Type I LastRead 0 FirstWrite -1}
		y_right {Type I LastRead 0 FirstWrite -1}
		micro_roi_data_V {Type O LastRead -1 FirstWrite 2}}
	get_last_centroids {
		centroids {Type I LastRead 1 FirstWrite -1}
		selected_line {Type I LastRead 0 FirstWrite -1}
		last_c_2 {Type O LastRead -1 FirstWrite 2}
		seg_index_start {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}}
	get_last_centroids_L {
		size {Type I LastRead 0 FirstWrite -1}
		seg_index_start {Type I LastRead 0 FirstWrite -1}
		selected_line {Type I LastRead 0 FirstWrite -1}
		centroids {Type I LastRead 1 FirstWrite -1}
		last_c_2 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50", "Max" : "30050"}
	, {"Name" : "Interval", "Min" : "50", "Max" : "30050"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	line_bases_active { ap_memory {  { line_bases_active_address0 mem_address 1 3 }  { line_bases_active_ce0 mem_ce 1 1 }  { line_bases_active_q0 mem_dout 0 17 } } }
	eroded_data_V { ap_fifo {  { eroded_data_V_dout fifo_data 0 8 }  { eroded_data_V_empty_n fifo_status 0 1 }  { eroded_data_V_read fifo_update 1 1 } } }
	centroids { ap_memory {  { centroids_address0 mem_address 1 7 }  { centroids_ce0 mem_ce 1 1 }  { centroids_we0 mem_we 1 1 }  { centroids_d0 mem_din 1 48 }  { centroids_q0 mem_dout 0 48 } } }
}