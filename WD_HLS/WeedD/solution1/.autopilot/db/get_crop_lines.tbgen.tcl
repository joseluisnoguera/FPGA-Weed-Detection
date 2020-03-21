set moduleName get_crop_lines
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
set C_modelName {get_crop_lines}
set C_modelType { void 0 }
set C_modelArgList {
	{ bottom_data_V int 8 regular {fifo 0 volatile }  }
	{ eroded_data_V int 8 regular {fifo 0 volatile }  }
	{ weed_mask_tmp_data_V int 2 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bottom_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "eroded_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weed_mask_tmp_data_V", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
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
	{ bottom_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ bottom_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ bottom_data_V_read sc_out sc_logic 1 signal 0 } 
	{ eroded_data_V_dout sc_in sc_lv 8 signal 1 } 
	{ eroded_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ eroded_data_V_read sc_out sc_logic 1 signal 1 } 
	{ weed_mask_tmp_data_V_din sc_out sc_lv 2 signal 2 } 
	{ weed_mask_tmp_data_V_full_n sc_in sc_logic 1 signal 2 } 
	{ weed_mask_tmp_data_V_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "bottom_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bottom_data_V", "role": "dout" }} , 
 	{ "name": "bottom_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_data_V", "role": "empty_n" }} , 
 	{ "name": "bottom_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bottom_data_V", "role": "read" }} , 
 	{ "name": "eroded_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eroded_data_V", "role": "dout" }} , 
 	{ "name": "eroded_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_data_V", "role": "empty_n" }} , 
 	{ "name": "eroded_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_data_V", "role": "read" }} , 
 	{ "name": "weed_mask_tmp_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weed_mask_tmp_data_V", "role": "din" }} , 
 	{ "name": "weed_mask_tmp_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weed_mask_tmp_data_V", "role": "full_n" }} , 
 	{ "name": "weed_mask_tmp_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weed_mask_tmp_data_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "58", "81", "86", "89"],
		"CDFG" : "get_crop_lines",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "135429", "EstimateLatencyMax" : "2388939",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extr_half_1_cent_fu_48"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extr_half_2_cent_fu_62"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_lines_lsl_fu_76"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_line_bases_fu_88"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_weed_mask_fu_100"}],
		"Port" : [
			{"Name" : "bottom_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "bottom_data_V"}]},
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "eroded_data_V"},
					{"ID" : "58", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "eroded_data_V"}]},
			{"Name" : "weed_mask_tmp_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_get_weed_mask_fu_100", "Port" : "weed_mask_tmp_data_V"}]},
			{"Name" : "histogram", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "histogram"}]},
			{"Name" : "smoothed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "smoothed"}]},
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "line_bases"},
					{"ID" : "58", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "line_bases_active"},
					{"ID" : "81", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "line_bases"},
					{"ID" : "86", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "line_bases"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "segments647"}]},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "last_c"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "centroids"},
					{"ID" : "58", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "centroids"},
					{"ID" : "81", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "centroids"}]},
			{"Name" : "segments648", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "segments648"}]},
			{"Name" : "last_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "last_centroids"}]},
			{"Name" : "line_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "line_centroids"}]},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_get_weed_mask_fu_100", "Port" : "lines"},
					{"ID" : "81", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "lines"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_bases_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.centroids_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lines_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48", "Parent" : "0", "Child" : ["5", "6", "7", "38", "57"],
		"CDFG" : "extr_half_1_cent",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "58415",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_third_and_fo_1_fu_189"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_centroid_fh_fu_203"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_centroid_fh_fu_203"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_micro_roi_fu_217"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_micro_roi_fu_217"}],
		"Port" : [
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "line_bases_active"}]},
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_extract_micro_roi_fu_217", "Port" : "img_in_mr_data_V"},
					{"ID" : "7", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "eroded_data_V"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "centroids"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "segments647"}]},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "last_c"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.micro_roi_1_data_V_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.micro_roi_0_data_V_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189", "Parent" : "4", "Child" : ["8", "9", "10", "11", "30", "31", "33", "34", "35", "36", "37"],
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
					{"ID" : "30", "SubInstance" : "grp_extract_micro_roi_fu_360", "Port" : "img_in_mr_data_V"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_get_last_centroids_fu_371", "Port" : "centroids"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_get_last_centroids_fu_371", "Port" : "last_c_2"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.segments647_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.last_c_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.micro_roi_2_data_V_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350", "Parent" : "7", "Child" : ["12", "13", "14", "15", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
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
			{"ID" : "12", "Name" : "get_centroid_fh_entr_U0", "ReadyCount" : "get_centroid_fh_entr_U0_ap_ready_count"},
			{"ID" : "14", "Name" : "get_centroid_fh_Loop_U0", "ReadyCount" : "get_centroid_fh_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "15", "Name" : "get_centroid_fh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "get_centroid_fh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "get_centroid_fh_Bloc_U0", "Port" : "c"}]}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_entr_U0", "Parent" : "11",
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
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "v_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "v_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "v_limit_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "h_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "h_limit_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_1_U0", "Parent" : "11",
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
		"StartSource" : "12",
		"StartFifo" : "start_for_get_cenJfO_U",
		"Port" : [
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Loop_U0", "Parent" : "11",
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
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0", "Parent" : "11", "Child" : ["16", "17"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "28"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "25"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "24"},
			{"Name" : "v_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "v_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "26"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "27"}]},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0.ip_accel_app_udivHfu_U362", "Parent" : "15"},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0.ip_accel_app_udivIfE_U363", "Parent" : "15"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_offset_c_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_offset_c_U", "Parent" : "11"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_limit_c_U", "Parent" : "11"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_limit_c8_U", "Parent" : "11"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_limit_c_U", "Parent" : "11"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_limit_c9_U", "Parent" : "11"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.lshr_ln146_cast_loc_s_U", "Parent" : "11"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.lshr_ln147_cast_loc_s_U", "Parent" : "11"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_sum_0_loc_channel_U", "Parent" : "11"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_sum_0_loc_channel_U", "Parent" : "11"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.p_sum_0_loc_channel_U", "Parent" : "11"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.start_for_get_cenJfO_U", "Parent" : "11"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_extract_micro_roi_fu_360", "Parent" : "7",
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_last_centroids_fu_371", "Parent" : "7", "Child" : ["32"],
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
			{"ID" : "32", "Name" : "get_last_centroids_L_U0"}],
		"OutputProcess" : [
			{"ID" : "32", "Name" : "get_last_centroids_L_U0"}],
		"Port" : [
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "get_last_centroids_L_U0", "Port" : "centroids"}]},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "get_last_centroids_L_U0", "Port" : "last_c_2"}]},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_last_centroids_fu_371.get_last_centroids_L_U0", "Parent" : "31",
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_sdivNgs_U402", "Parent" : "7"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_udivOgC_U403", "Parent" : "7"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_udivOgC_U404", "Parent" : "7"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_mac_PgM_U405", "Parent" : "7"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_mul_QgW_U406", "Parent" : "7"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203", "Parent" : "4", "Child" : ["39", "40", "41", "42", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56"],
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
			{"ID" : "12", "Name" : "get_centroid_fh_entr_U0", "ReadyCount" : "get_centroid_fh_entr_U0_ap_ready_count"},
			{"ID" : "14", "Name" : "get_centroid_fh_Loop_U0", "ReadyCount" : "get_centroid_fh_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "15", "Name" : "get_centroid_fh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "get_centroid_fh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "get_centroid_fh_Bloc_U0", "Port" : "c"}]}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_entr_U0", "Parent" : "38",
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
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "v_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "v_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "v_limit_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "h_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "h_limit_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_1_U0", "Parent" : "38",
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
		"Port" : [
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Loop_U0", "Parent" : "38",
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
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_U0", "Parent" : "38", "Child" : ["43", "44"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "28"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "25"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "24"},
			{"Name" : "v_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "v_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "26"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "27"}]},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_U0.ip_accel_app_udivHfu_U362", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_U0.ip_accel_app_udivIfE_U363", "Parent" : "42"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_offset_c_U", "Parent" : "38"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_offset_c_U", "Parent" : "38"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_limit_c_U", "Parent" : "38"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_limit_c8_U", "Parent" : "38"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_limit_c_U", "Parent" : "38"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_limit_c9_U", "Parent" : "38"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.lshr_ln146_cast_loc_s_U", "Parent" : "38"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.lshr_ln147_cast_loc_s_U", "Parent" : "38"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_sum_0_loc_channel_U", "Parent" : "38"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_sum_0_loc_channel_U", "Parent" : "38"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.p_sum_0_loc_channel_U", "Parent" : "38"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.start_for_get_cenJfO_U", "Parent" : "38"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_1_cent_fu_48.grp_extract_micro_roi_fu_217", "Parent" : "4",
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
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62", "Parent" : "0", "Child" : ["59", "60", "61", "62", "75", "76", "78", "79", "80"],
		"CDFG" : "extr_half_2_cent",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "120146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_centroid_sh_fu_382"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_micro_roi_fu_395"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_last_centroids_fu_406"}],
		"Port" : [
			{"Name" : "line_bases_active", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_extract_micro_roi_fu_395", "Port" : "img_in_mr_data_V"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_get_last_centroids_fu_406", "Port" : "centroids"}]},
			{"Name" : "segments648", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_get_last_centroids_fu_406", "Port" : "last_c_2"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.segments648_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.last_centroids_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.micro_roi_3_data_V_U", "Parent" : "58"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382", "Parent" : "58", "Child" : ["63", "64", "67", "68", "69", "70", "71", "72", "73", "74"],
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
			{"ID" : "63", "Name" : "get_centroid_sh_Loop_U0"}],
		"OutputProcess" : [
			{"ID" : "64", "Name" : "get_centroid_sh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "get_centroid_sh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "get_centroid_sh_Bloc_U0", "Port" : "c"}]},
			{"Name" : "c_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Loop_U0", "Parent" : "62",
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
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "v_offset_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_x_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "possible_c_x_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_y_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "70",
				"BlockSignal" : [
					{"Name" : "possible_c_y_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "c_read_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Bloc_U0", "Parent" : "62", "Child" : ["65", "66"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "74"},
			{"Name" : "possible_c_x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "possible_c_x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "c_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "72"},
			{"Name" : "v_offset_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "v_offset_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "73"},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_y", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "70",
				"BlockSignal" : [
					{"Name" : "possible_c_y_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Bloc_U0.ip_accel_app_udivHfu_U434", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Bloc_U0.ip_accel_app_udivIfE_U435", "Parent" : "64"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.h_offset_c_U", "Parent" : "62"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.v_offset_read_c_U", "Parent" : "62"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.possible_c_x_c_U", "Parent" : "62"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.possible_c_y_c_U", "Parent" : "62"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.c_read_c_U", "Parent" : "62"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.v_sum_0_loc_0_i_loc_s_U", "Parent" : "62"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.h_sum_0_loc_0_i_loc_s_U", "Parent" : "62"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.p_sum_0_loc_0_i_loc_c_U", "Parent" : "62"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_extract_micro_roi_fu_395", "Parent" : "58",
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
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_last_centroids_fu_406", "Parent" : "58", "Child" : ["77"],
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
			{"ID" : "32", "Name" : "get_last_centroids_L_U0"}],
		"OutputProcess" : [
			{"ID" : "32", "Name" : "get_last_centroids_L_U0"}],
		"Port" : [
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "get_last_centroids_L_U0", "Port" : "centroids"}]},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "get_last_centroids_L_U0", "Port" : "last_c_2"}]},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.grp_get_last_centroids_fu_406.get_last_centroids_L_U0", "Parent" : "76",
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
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.ip_accel_app_sdivNgs_U462", "Parent" : "58"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.ip_accel_app_mac_PgM_U463", "Parent" : "58"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extr_half_2_cent_fu_62.ip_accel_app_mul_QgW_U464", "Parent" : "58"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_lines_lsl_fu_76", "Parent" : "0", "Child" : ["82", "83", "84", "85"],
		"CDFG" : "get_lines_lsl",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "691",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_centroids", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_lines_lsl_fu_76.line_centroids_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_lines_lsl_fu_76.ip_accel_app_sdivXh4_U469", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_lines_lsl_fu_76.ip_accel_app_mac_PgM_U470", "Parent" : "81"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_lines_lsl_fu_76.ip_accel_app_mul_Yie_U471", "Parent" : "81"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_line_bases_fu_88", "Parent" : "0", "Child" : ["87", "88"],
		"CDFG" : "get_line_bases",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19557", "EstimateLatencyMax" : "20517",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bottom_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bottom_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "histogram", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "smoothed", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_line_bases_fu_88.histogram_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_line_bases_fu_88.smoothed_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_weed_mask_fu_100", "Parent" : "0", "Child" : ["90"],
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
					{"ID" : "90", "SubInstance" : "grp_is_crop_or_furrow_fu_117", "Port" : "lines"}]}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_weed_mask_fu_100.grp_is_crop_or_furrow_fu_117", "Parent" : "89", "Child" : ["91"],
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
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_weed_mask_fu_100.grp_is_crop_or_furrow_fu_117.ip_accel_app_mul_Zio_U478", "Parent" : "90"}]}


set ArgLastReadFirstWriteLatency {
	get_crop_lines {
		bottom_data_V {Type I LastRead 26 FirstWrite -1}
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		weed_mask_tmp_data_V {Type O LastRead -1 FirstWrite 3}
		histogram {Type IO LastRead -1 FirstWrite -1}
		smoothed {Type IO LastRead -1 FirstWrite -1}
		line_bases {Type IO LastRead -1 FirstWrite -1}
		segments647 {Type I LastRead -1 FirstWrite -1}
		last_c {Type IO LastRead -1 FirstWrite -1}
		centroids {Type IO LastRead -1 FirstWrite -1}
		segments648 {Type I LastRead -1 FirstWrite -1}
		last_centroids {Type IO LastRead -1 FirstWrite -1}
		line_centroids {Type IO LastRead -1 FirstWrite -1}
		lines {Type IO LastRead -1 FirstWrite -1}}
	extr_half_1_cent {
		line_bases {Type I LastRead 2 FirstWrite -1}
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		centroids {Type IO LastRead 3 FirstWrite -1}
		segments647 {Type I LastRead -1 FirstWrite -1}
		last_c {Type IO LastRead -1 FirstWrite -1}}
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
		last_c_2 {Type O LastRead -1 FirstWrite 2}}
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
	extr_half_2_cent {
		line_bases_active {Type I LastRead 2 FirstWrite -1}
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		centroids {Type IO LastRead 1 FirstWrite -1}
		segments648 {Type I LastRead -1 FirstWrite -1}
		last_centroids {Type IO LastRead -1 FirstWrite -1}}
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
		c {Type O LastRead -1 FirstWrite 35}}
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
		last_c_2 {Type O LastRead -1 FirstWrite 2}}
	get_lines_lsl {
		line_bases {Type I LastRead 1 FirstWrite -1}
		centroids {Type I LastRead 3 FirstWrite -1}
		line_centroids {Type IO LastRead -1 FirstWrite -1}
		lines {Type IO LastRead 76 FirstWrite 76}}
	get_line_bases {
		bottom_data_V {Type I LastRead 26 FirstWrite -1}
		line_bases {Type IO LastRead 9 FirstWrite 7}
		histogram {Type IO LastRead -1 FirstWrite -1}
		smoothed {Type IO LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "135429", "Max" : "2388939"}
	, {"Name" : "Interval", "Min" : "135429", "Max" : "2388939"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bottom_data_V { ap_fifo {  { bottom_data_V_dout fifo_data 0 8 }  { bottom_data_V_empty_n fifo_status 0 1 }  { bottom_data_V_read fifo_update 1 1 } } }
	eroded_data_V { ap_fifo {  { eroded_data_V_dout fifo_data 0 8 }  { eroded_data_V_empty_n fifo_status 0 1 }  { eroded_data_V_read fifo_update 1 1 } } }
	weed_mask_tmp_data_V { ap_fifo {  { weed_mask_tmp_data_V_din fifo_data 1 2 }  { weed_mask_tmp_data_V_full_n fifo_status 0 1 }  { weed_mask_tmp_data_V_write fifo_update 1 1 } } }
}
