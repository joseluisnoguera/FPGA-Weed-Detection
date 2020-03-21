set moduleName weed_detection
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
set C_modelName {weed_detection}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in_cols int 12 regular {pointer 0}  }
	{ img_in_data_V int 24 regular {fifo 0}  }
	{ img_out_data_V int 24 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in_cols", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "img_out_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ img_in_cols sc_in sc_lv 12 signal 0 } 
	{ img_in_data_V_dout sc_in sc_lv 24 signal 1 } 
	{ img_in_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ img_in_data_V_read sc_out sc_logic 1 signal 1 } 
	{ img_out_data_V_din sc_out sc_lv 24 signal 2 } 
	{ img_out_data_V_full_n sc_in sc_logic 1 signal 2 } 
	{ img_out_data_V_write sc_out sc_logic 1 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ img_in_cols_ap_vld sc_in sc_logic 1 invld 0 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "img_in_cols", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_in_cols", "role": "default" }} , 
 	{ "name": "img_in_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "dout" }} , 
 	{ "name": "img_in_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "empty_n" }} , 
 	{ "name": "img_in_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "read" }} , 
 	{ "name": "img_out_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "din" }} , 
 	{ "name": "img_out_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "full_n" }} , 
 	{ "name": "img_out_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "img_in_cols_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "img_in_cols", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "20", "37", "127", "140", "151", "184", "199", "201", "293", "299", "300", "317", "351", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383"],
		"CDFG" : "weed_detection",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2419233", "EstimateLatencyMax" : "2419233",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "weed_detection_entry_U0", "ReadyCount" : "weed_detection_entry_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "weed_detection_Block_U0", "ReadyCount" : "weed_detection_Block_U0_ap_ready_count"},
			{"ID" : "3", "Name" : "duplicateMat_2762_U0", "ReadyCount" : "duplicateMat_2762_U0_ap_ready_count"},
			{"ID" : "184", "Name" : "duplicateMat438_U0", "ReadyCount" : "duplicateMat438_U0_ap_ready_count"},
			{"ID" : "299", "Name" : "zero_0_180_320_1_U0", "ReadyCount" : "zero_0_180_320_1_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "293", "Name" : "sectors_weed_classif_U0"},
			{"ID" : "351", "Name" : "add_2749_U0"}],
		"Port" : [
			{"Name" : "img_in_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "weed_detection_entry_U0", "Port" : "img_in_cols"}]},
			{"Name" : "img_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "duplicateMat_2762_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "add_2749_U0", "Port" : "p_dst_data_V"}]},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "segment_image_U0", "Port" : "xf_division_lut"}]},
			{"Name" : "histogram", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "get_crop_lines_U0", "Port" : "histogram"}]},
			{"Name" : "smoothed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "get_crop_lines_U0", "Port" : "smoothed"}]},
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "get_crop_lines_U0", "Port" : "line_bases"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "get_crop_lines_U0", "Port" : "segments647"}]},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "get_crop_lines_U0", "Port" : "last_c"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "get_crop_lines_U0", "Port" : "centroids"}]},
			{"Name" : "segments648", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "get_crop_lines_U0", "Port" : "segments648"}]},
			{"Name" : "last_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "get_crop_lines_U0", "Port" : "last_centroids"}]},
			{"Name" : "line_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "get_crop_lines_U0", "Port" : "line_centroids"}]},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "get_crop_lines_U0", "Port" : "lines"}]},
			{"Name" : "segments", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "sectors_weed_classif_U0", "Port" : "segments"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weed_detection_entry_U0", "Parent" : "0",
		"CDFG" : "weed_detection_entry",
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
			{"Name" : "img_in_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "img_in_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "353",
				"BlockSignal" : [
					{"Name" : "img_in_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weed_detection_Block_U0", "Parent" : "0",
		"CDFG" : "weed_detection_Block",
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
			{"Name" : "img_in_0_rows0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "354"},
			{"Name" : "img_in_0_cols0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "355"},
			{"Name" : "resized_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "356",
				"BlockSignal" : [
					{"Name" : "resized_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0", "Parent" : "0", "Child" : ["4", "5", "7", "8", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "duplicateMat_2762",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "174963", "EstimateLatencyMax" : "924003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "duplicateMat_2_Block_U0", "ReadyCount" : "duplicateMat_2_Block_U0_ap_ready_count"},
			{"ID" : "5", "Name" : "duplicateMat_2_Loop_U0", "ReadyCount" : "duplicateMat_2_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "duplicateMat_2_Loop_1_U0"}],
		"Port" : [
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "353",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "duplicateMat_2_Block_U0", "Port" : "p_src_cols"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "duplicateMat_2_Loop_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "354",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "duplicateMat_2_Block_U0", "Port" : "p_dst1_rows"}]},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "355",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "duplicateMat_2_Block_U0", "Port" : "p_dst1_cols"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "357",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "duplicateMat_2_Loop_1_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "358",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "duplicateMat_2_Loop_1_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.duplicateMat_2_Block_U0", "Parent" : "3",
		"CDFG" : "duplicateMat_2_Block",
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
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "353",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load6_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load6_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "354"},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "355"},
			{"Name" : "p_dst1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.duplicateMat_2_Loop_U0", "Parent" : "3", "Child" : ["6"],
		"CDFG" : "duplicateMat_2_Loop_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2881", "EstimateLatencyMax" : "923761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_cols_load6_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load6_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "tmp_V_read765_fu_105", "Port" : "Mat_9_720_1280_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load6_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load6_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read765_fu_105", "SubBlockPort" : ["Mat_9_720_1280_1_data_V_addr_blk_n"]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.duplicateMat_2_Loop_U0.tmp_V_read765_fu_105", "Parent" : "5",
		"CDFG" : "read765",
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
			{"Name" : "Mat_9_720_1280_1_data_V_addr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Mat_9_720_1280_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.xFDuplicate_2_U0", "Parent" : "3",
		"CDFG" : "xFDuplicate_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "174961", "EstimateLatencyMax" : "174961",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_xFDuplicud_U",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "p_dst1_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "p_dst2_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load6_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load6_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.duplicateMat_2_Loop_1_U0", "Parent" : "3", "Child" : ["9", "10"],
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
		"StartSource" : "4",
		"StartFifo" : "start_for_duplicabkb_U",
		"Port" : [
			{"Name" : "p_dst1_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "357",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "call_ln113_write_r_fu_100", "Port" : "Mat_9_720_1280_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "358",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "call_ln114_write_r_fu_108", "Port" : "Mat_9_720_1280_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln113_write_r_fu_100", "SubBlockPort" : ["Mat_9_720_1280_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln114_write_r_fu_108", "SubBlockPort" : ["Mat_9_720_1280_1_data_V_addr_blk_n"]}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.duplicateMat_2_Loop_1_U0.call_ln113_write_r_fu_100", "Parent" : "8",
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.duplicateMat_2_Loop_1_U0.call_ln114_write_r_fu_108", "Parent" : "8",
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.p_src_cols_load6_loc_1_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.p_dst1_rows_c_i_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.p_dst1_cols_c_i_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.src_V_V_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.p_src_cols_load6_loc_s_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.dst_V_V_U", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.dst1_V_V_U", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.start_for_duplicabkb_U", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_2762_U0.start_for_xFDuplicud_U", "Parent" : "3"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0", "Parent" : "0", "Child" : ["21", "22", "23", "24", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "resizeNNBilinear",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "931453", "EstimateLatencyMax" : "931453",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_resizeNbkl_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfUDivResize_fu_519"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfUDivResize_fu_519"}],
		"Port" : [
			{"Name" : "imgInput_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "357",
				"BlockSignal" : [
					{"Name" : "imgInput_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgOutput_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "359",
				"BlockSignal" : [
					{"Name" : "imgOutput_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.line_buffer_0_0_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.line_buffer_1_0_V_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.line_buffer_2_0_V_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.grp_xfUDivResize_fu_519", "Parent" : "20", "Child" : ["25"],
		"CDFG" : "xfUDivResize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.grp_xfUDivResize_fu_519.ip_accel_app_udivdEe_U54", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.grp_scaleCompute_fu_544", "Parent" : "20",
		"CDFG" : "scaleCompute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "currindex", "Type" : "None", "Direction" : "I"},
			{"Name" : "inscale_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.ip_accel_app_mul_hbi_U60", "Parent" : "20"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.ip_accel_app_mul_ibs_U61", "Parent" : "20"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.ip_accel_app_mul_ibs_U62", "Parent" : "20"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.ip_accel_app_mul_ibs_U63", "Parent" : "20"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.ip_accel_app_mac_jbC_U64", "Parent" : "20"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.ip_accel_app_mac_jbC_U65", "Parent" : "20"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.ip_accel_app_mac_jbC_U66", "Parent" : "20"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.ip_accel_app_mac_kbM_U67", "Parent" : "20"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.ip_accel_app_mac_kbM_U68", "Parent" : "20"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resizeNNBilinear_U0.ip_accel_app_mac_kbM_U69", "Parent" : "20"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0", "Parent" : "0", "Child" : ["38", "39", "56", "71", "78", "91", "92", "99", "100", "101", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126"],
		"CDFG" : "get_vegetation_image_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2419217", "EstimateLatencyMax" : "2419217",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_get_vegbjl_U",
		"InputProcess" : [
			{"ID" : "38", "Name" : "get_vegetation_image_113_U0", "ReadyCount" : "get_vegetation_image_113_U0_ap_ready_count"},
			{"ID" : "39", "Name" : "duplicateMat635769_U0", "ReadyCount" : "duplicateMat635769_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "101", "Name" : "convert_fp_to_8b770_U0"}],
		"Port" : [
			{"Name" : "img_in_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "356",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "get_vegetation_image_113_U0", "Port" : "img_in_cols"}]},
			{"Name" : "img_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "359",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "duplicateMat635769_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "360",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "convert_fp_to_8b770_U0", "Port" : "img_out_data_V"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_vegetation_image_113_U0", "Parent" : "37",
		"CDFG" : "get_vegetation_image_113",
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
			{"Name" : "img_in_0_rows0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "103"},
			{"Name" : "img_in_0_cols0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "104"},
			{"Name" : "img_in_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "356",
				"BlockSignal" : [
					{"Name" : "img_in_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "img_in_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0", "Parent" : "37", "Child" : ["40", "41", "43", "44", "47", "48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "duplicateMat635769",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43743", "EstimateLatencyMax" : "58383",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "40", "Name" : "duplicateMat_Block_U0", "ReadyCount" : "duplicateMat_Block_U0_ap_ready_count"},
			{"ID" : "41", "Name" : "duplicateMat_Loop_Re_U0", "ReadyCount" : "duplicateMat_Loop_Re_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "44", "Name" : "duplicateMat_Loop_2_U0"}],
		"Port" : [
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "105",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_src_cols"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "359",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "duplicateMat_Loop_Re_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "103",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_dst1_rows"}]},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "104",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_dst1_cols"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "106",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "duplicateMat_Loop_2_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "107",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "duplicateMat_Loop_2_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Block_U0", "Parent" : "39",
		"CDFG" : "duplicateMat_Block_s",
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
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "103"},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "104"},
			{"Name" : "p_dst1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Loop_Re_U0", "Parent" : "39", "Child" : ["42"],
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
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "359",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "tmp_V_read779_fu_105", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read779_fu_105", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Loop_Re_U0.tmp_V_read779_fu_105", "Parent" : "41",
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
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.xFDuplicate645_U0", "Parent" : "39",
		"CDFG" : "xFDuplicate645",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43741", "EstimateLatencyMax" : "43741",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "41",
		"StartFifo" : "start_for_xFDuplimb6_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Loop_2_U0", "Parent" : "39", "Child" : ["45", "46"],
		"CDFG" : "duplicateMat_Loop_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "40",
		"StartFifo" : "start_for_duplicalbW_U",
		"Port" : [
			{"Name" : "p_dst1_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "call_ln114_write_1_fu_100", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "call_ln115_write_1_fu_108", "Port" : "Mat_9_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln114_write_1_fu_100", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln115_write_1_fu_108", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Loop_2_U0.call_ln114_write_1_fu_100", "Parent" : "44",
		"CDFG" : "write_1",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Loop_2_U0.call_ln115_write_1_fu_108", "Parent" : "44",
		"CDFG" : "write_1",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.p_src_cols_load10_loc_5_U", "Parent" : "39"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.p_dst1_rows_c_i_U", "Parent" : "39"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.p_dst1_cols_c_i_U", "Parent" : "39"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.src_V_V_U", "Parent" : "39"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.p_src_cols_load10_loc_U", "Parent" : "39"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.dst_V_V_U", "Parent" : "39"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.dst1_V_V_U", "Parent" : "39"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.start_for_duplicalbW_U", "Parent" : "39"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat635769_U0.start_for_xFDuplimb6_U", "Parent" : "39"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0", "Parent" : "37", "Child" : ["57", "58", "60", "61", "64", "65", "66", "67", "68", "69", "70"],
		"CDFG" : "duplicateMat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58144", "EstimateLatencyMax" : "58144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "39",
		"StartFifo" : "start_for_duplicasc4_U",
		"InputProcess" : [
			{"ID" : "57", "Name" : "duplicateMat_Block_1_U0", "ReadyCount" : "duplicateMat_Block_1_U0_ap_ready_count"},
			{"ID" : "58", "Name" : "duplicateMat_Loop_Re_1_U0", "ReadyCount" : "duplicateMat_Loop_Re_1_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "61", "Name" : "duplicateMat_Loop_2_1_U0"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "106",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "duplicateMat_Loop_Re_1_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "108",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "duplicateMat_Loop_2_1_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "109",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "duplicateMat_Loop_2_1_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Block_1_U0", "Parent" : "56",
		"CDFG" : "duplicateMat_Block_1",
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
			{"Name" : "p_src_cols_load10_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "64",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Loop_Re_1_U0", "Parent" : "56", "Child" : ["59"],
		"CDFG" : "duplicateMat_Loop_Re_1",
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
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "64",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "tmp_V_read779_fu_105", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "65",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "66",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read779_fu_105", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Loop_Re_1_U0.tmp_V_read779_fu_105", "Parent" : "58",
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
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.xFDuplicate_U0", "Parent" : "56",
		"CDFG" : "xFDuplicate",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43741", "EstimateLatencyMax" : "43741",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "58",
		"StartFifo" : "start_for_xFDuplincg_U",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "65",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "p_dst1_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "p_dst2_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "66",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Loop_2_1_U0", "Parent" : "56", "Child" : ["62", "63"],
		"CDFG" : "duplicateMat_Loop_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58141", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "60",
		"StartFifo" : "start_for_duplicaocq_U",
		"Port" : [
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "call_ln114_write_1_fu_90", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "call_ln115_write_1_fu_98", "Port" : "Mat_9_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln114_write_1_fu_90", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln115_write_1_fu_98", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Loop_2_1_U0.call_ln114_write_1_fu_90", "Parent" : "61",
		"CDFG" : "write_1",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Loop_2_1_U0.call_ln115_write_1_fu_98", "Parent" : "61",
		"CDFG" : "write_1",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.p_src_cols_load10_loc_2_U", "Parent" : "56"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.src_V_V_U", "Parent" : "56"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.p_src_cols_load10_loc_U", "Parent" : "56"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.dst_V_V_U", "Parent" : "56"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.dst1_V_V_U", "Parent" : "56"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.start_for_xFDuplincg_U", "Parent" : "56"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.duplicateMat_U0.start_for_duplicaocq_U", "Parent" : "56"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.extract_channels_U0", "Parent" : "37", "Child" : ["72", "74", "76"],
		"CDFG" : "extract_channels",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58142", "EstimateLatencyMax" : "58142",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "39",
		"StartFifo" : "start_for_extracttde_U",
		"InputProcess" : [
			{"ID" : "72", "Name" : "extractChannel432_U0", "ReadyCount" : "extractChannel432_U0_ap_ready_count"},
			{"ID" : "74", "Name" : "extractChannel433_U0", "ReadyCount" : "extractChannel433_U0_ap_ready_count"},
			{"ID" : "76", "Name" : "extractChannel434_U0", "ReadyCount" : "extractChannel434_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "72", "Name" : "extractChannel432_U0"},
			{"ID" : "74", "Name" : "extractChannel433_U0"},
			{"ID" : "76", "Name" : "extractChannel434_U0"}],
		"Port" : [
			{"Name" : "img_in_0_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "107",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "extractChannel432_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_in_1_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "108",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "extractChannel433_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_in_2_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "109",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "extractChannel434_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "r_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "110",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "extractChannel434_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "g_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "111",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "extractChannel433_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "b_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "112",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "extractChannel432_U0", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.extract_channels_U0.extractChannel432_U0", "Parent" : "71", "Child" : ["73"],
		"CDFG" : "extractChannel432",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58142", "EstimateLatencyMax" : "58142",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfChannelExtractKern_fu_20"}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "107",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "112",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.extract_channels_U0.extractChannel432_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "72",
		"CDFG" : "xfChannelExtractKern",
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
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_channel", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.extract_channels_U0.extractChannel433_U0", "Parent" : "71", "Child" : ["75"],
		"CDFG" : "extractChannel433",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58142", "EstimateLatencyMax" : "58142",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfChannelExtractKern_fu_20"}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "108",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "111",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.extract_channels_U0.extractChannel433_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "74",
		"CDFG" : "xfChannelExtractKern",
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
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_channel", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.extract_channels_U0.extractChannel434_U0", "Parent" : "71", "Child" : ["77"],
		"CDFG" : "extractChannel434",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58142", "EstimateLatencyMax" : "58142",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfChannelExtractKern_fu_20"}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "109",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "110",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.extract_channels_U0.extractChannel434_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "76",
		"CDFG" : "xfChannelExtractKern",
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
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_channel", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0", "Parent" : "37", "Child" : ["79", "81", "83", "85", "86", "87", "88", "89", "90"],
		"CDFG" : "get_max_from_channel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58142", "EstimateLatencyMax" : "58142",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "79", "Name" : "minMaxLoc435_U0", "ReadyCount" : "minMaxLoc435_U0_ap_ready_count"},
			{"ID" : "81", "Name" : "minMaxLoc436_U0", "ReadyCount" : "minMaxLoc436_U0_ap_ready_count"},
			{"ID" : "83", "Name" : "minMaxLoc_U0", "ReadyCount" : "minMaxLoc_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "85", "Name" : "p_prop_ret_max_b_dc_U0"},
			{"ID" : "86", "Name" : "p_prop_ret_max_g_dc_U0"},
			{"ID" : "87", "Name" : "p_prop_ret_max_r_dc_U0"}],
		"Port" : [
			{"Name" : "r_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "minMaxLoc435_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "g_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "minMaxLoc436_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "b_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "minMaxLoc_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "113",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "p_prop_ret_max_r_dc_U0", "Port" : "max_r_out"}]},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "114",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "p_prop_ret_max_g_dc_U0", "Port" : "max_g_out"}]},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "115",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "p_prop_ret_max_b_dc_U0", "Port" : "max_b_out"}]}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc435_U0", "Parent" : "78", "Child" : ["80"],
		"CDFG" : "minMaxLoc435",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58142", "EstimateLatencyMax" : "58142",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc435_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "79",
		"CDFG" : "xFMinMaxLocKernel",
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
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc436_U0", "Parent" : "78", "Child" : ["82"],
		"CDFG" : "minMaxLoc436",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58142", "EstimateLatencyMax" : "58142",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc436_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "81",
		"CDFG" : "xFMinMaxLocKernel",
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
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc_U0", "Parent" : "78", "Child" : ["84"],
		"CDFG" : "minMaxLoc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58142", "EstimateLatencyMax" : "58142",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "83",
		"CDFG" : "xFMinMaxLocKernel",
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
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.p_prop_ret_max_b_dc_U0", "Parent" : "78",
		"CDFG" : "p_prop_ret_max_b_dc_s",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "90"},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "max_b_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.p_prop_ret_max_g_dc_U0", "Parent" : "78",
		"CDFG" : "p_prop_ret_max_g_dc_s",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "89"},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "max_g_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.p_prop_ret_max_r_dc_U0", "Parent" : "78",
		"CDFG" : "p_prop_ret_max_r_dc_s",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "88"},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "max_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.max_r_dc_channel_U", "Parent" : "78"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.max_g_dc_channel_U", "Parent" : "78"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_max_from_channel_U0.max_b_dc_channel_U", "Parent" : "78"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_vegetation_image_U0", "Parent" : "37",
		"CDFG" : "get_vegetation_image",
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
			{"Name" : "max_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "max_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "max_g_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "max_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "max_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "max_g_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "max_b_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_exg_image_U0", "Parent" : "37", "Child" : ["93", "94", "95", "96", "97", "98"],
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
			{"Name" : "max_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "max_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "max_g_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "max_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "veg_img_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "veg_img_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "min_value_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "99", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "max_value_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivpcA_U182", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivpcA_U183", "Parent" : "92"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivpcA_U184", "Parent" : "92"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivqcK_U185", "Parent" : "92"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivqcK_U186", "Parent" : "92"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivqcK_U187", "Parent" : "92"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_vegetation_image_3_U0", "Parent" : "37",
		"CDFG" : "get_vegetation_image_3",
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
			{"Name" : "max_value_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "max_value_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.get_vegetation_image_2_U0", "Parent" : "37",
		"CDFG" : "get_vegetation_image_2",
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
			{"Name" : "min_value_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "min_value_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "99", "DependentChan" : "122"},
			{"Name" : "min_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "min_value_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.convert_fp_to_8b770_U0", "Parent" : "37", "Child" : ["102"],
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
			{"Name" : "min_value_V_c17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "min_value_V_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub_ln703_cast_loc_c", "Type" : "None", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "124"},
			{"Name" : "veg_temp_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "veg_temp_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "360",
				"BlockSignal" : [
					{"Name" : "img_out_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.convert_fp_to_8b770_U0.ip_accel_app_sdivrcU_U203", "Parent" : "101"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.img_in_0_rows_channe_U", "Parent" : "37"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.img_in_0_cols_channe_U", "Parent" : "37"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.img_in_cols_c_i_U", "Parent" : "37"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.img_in_0_data_V_U", "Parent" : "37"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.img_in_1_data_V_U", "Parent" : "37"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.img_in_2_data_V_U", "Parent" : "37"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.img_in_3_data_V_U", "Parent" : "37"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.r_channel_data_V_U", "Parent" : "37"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.g_channel_data_V_U", "Parent" : "37"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.b_channel_data_V_U", "Parent" : "37"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.max_r_c_i_U", "Parent" : "37"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.max_g_c_i_U", "Parent" : "37"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.max_b_c_i_U", "Parent" : "37"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.max_r_c14_i_U", "Parent" : "37"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.max_g_c15_i_U", "Parent" : "37"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.max_b_c16_i_U", "Parent" : "37"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.veg_temp_data_V_U", "Parent" : "37"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.min_value_V_c_i_U", "Parent" : "37"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.max_value_V_c_i_U", "Parent" : "37"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.extLd_cast_loc_chann_U", "Parent" : "37"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.min_value_V_c17_i_U", "Parent" : "37"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.sub_ln703_cast_loc_c_U", "Parent" : "37"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.start_for_duplicasc4_U", "Parent" : "37"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_4_U0.start_for_extracttde_U", "Parent" : "37"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.segment_image_U0", "Parent" : "0", "Child" : ["128", "139"],
		"CDFG" : "segment_image",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "118530", "EstimateLatencyMax" : "118530",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "37",
		"StartFifo" : "start_for_segmentbml_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_OtsuThreshold_fu_22"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Threshold_fu_30"}],
		"Port" : [
			{"Name" : "img_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "360",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_Threshold_fu_30", "Port" : "p_src_mat_data_V"},
					{"ID" : "128", "SubInstance" : "grp_OtsuThreshold_fu_22", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "361",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_Threshold_fu_30", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_OtsuThreshold_fu_22", "Port" : "xf_division_lut"}]}]},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22", "Parent" : "127", "Child" : ["129", "130", "136"],
		"CDFG" : "OtsuThreshold",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "60386", "EstimateLatencyMax" : "60386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfOtsuKernel_fu_28"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFHistogramKernel_fu_35"}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_xFHistogramKernel_fu_35", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_xfOtsuKernel_fu_28", "Port" : "xf_division_lut"}]}]},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22.hist_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28", "Parent" : "128", "Child" : ["131", "132", "134"],
		"CDFG" : "xfOtsuKernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1034", "EstimateLatencyMax" : "1034",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_hist", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_Inverse_fu_239", "Port" : "xf_division_lut"},
					{"ID" : "132", "SubInstance" : "grp_Inverse_fu_227", "Port" : "xf_division_lut"}]}]},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.HistArray_V_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_227", "Parent" : "130", "Child" : ["133"],
		"CDFG" : "Inverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "M", "Type" : "None", "Direction" : "I"},
			{"Name" : "N_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_227.xf_division_lut_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_239", "Parent" : "130", "Child" : ["135"],
		"CDFG" : "Inverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "M", "Type" : "None", "Direction" : "I"},
			{"Name" : "N_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_239.xf_division_lut_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xFHistogramKernel_fu_35", "Parent" : "128", "Child" : ["137", "138"],
		"CDFG" : "xFHistogramKernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59349", "EstimateLatencyMax" : "59349",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state8_pp1_iter0_stage1", "FromInitialIteration" : "ap_enable_reg_pp1_iter0", "FromInitialOperation" : "ap_enable_operation_73", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_76", "FromFinalSV" : "8", "FromAddress" : "tmp_hist_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_81", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_81", "ToFinalSV" : "8", "ToAddress" : "tmp_hist_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "8", "II" : "2", "Pragma" : "(D:/Xilinx/xfopencv-master/include\imgproc/xf_histogram.hpp:87:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_81", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_81", "FromFinalSV" : "8", "FromAddress" : "tmp_hist_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp1_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp1_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter1", "ToInitialOperation" : "ap_enable_operation_73", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_76", "ToFinalSV" : "8", "ToAddress" : "tmp_hist_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "8", "II" : "2", "Pragma" : "(D:/Xilinx/xfopencv-master/include\imgproc/xf_histogram.hpp:87:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp1_iter0_stage1", "ap_enable_state10_pp1_iter1_stage1"]},
			{"FromInitialState" : "ap_enable_state9_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_79", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state10_pp1_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_87", "FromFinalSV" : "9", "FromAddress" : "tmp_hist1_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state10_pp1_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_89", "ToInitialSV" : "9", "ToFinalState" : "ap_enable_state10_pp1_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_89", "ToFinalSV" : "9", "ToAddress" : "tmp_hist1_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "8", "II" : "2", "Pragma" : "(D:/Xilinx/xfopencv-master/include\imgproc/xf_histogram.hpp:88:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state10_pp1_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_89", "FromInitialSV" : "9", "FromFinalState" : "ap_enable_state10_pp1_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_89", "FromFinalSV" : "9", "FromAddress" : "tmp_hist1_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_79", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state10_pp1_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_87", "ToFinalSV" : "9", "ToAddress" : "tmp_hist1_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "8", "II" : "2", "Pragma" : "(D:/Xilinx/xfopencv-master/include\imgproc/xf_histogram.hpp:88:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state9_pp1_iter1_stage0"]}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_array", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xFHistogramKernel_fu_35.tmp_hist_0_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xFHistogramKernel_fu_35.tmp_hist1_0_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.segment_image_U0.grp_Threshold_fu_30", "Parent" : "127",
		"CDFG" : "Threshold",
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
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "thresh", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.erode437_U0", "Parent" : "0", "Child" : ["141"],
		"CDFG" : "erode437",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59329", "EstimateLatencyMax" : "59329",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "127",
		"StartFifo" : "start_for_erode43bnm_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xferode790_fu_18"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "361",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_xferode790_fu_18", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "362",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_xferode790_fu_18", "Port" : "p_dst_data_V"}]}]},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.erode437_U0.grp_xferode790_fu_18", "Parent" : "140", "Child" : ["142", "143", "144", "145", "146", "147", "148", "149", "150"],
		"CDFG" : "xferode790",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59328", "EstimateLatencyMax" : "59328",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode437_U0.grp_xferode790_fu_18.buf_0_V_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode437_U0.grp_xferode790_fu_18.buf_1_V_U", "Parent" : "141"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode437_U0.grp_xferode790_fu_18.buf_2_V_U", "Parent" : "141"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode437_U0.grp_xferode790_fu_18.src_buf_temp_copy_ex_xfExtractPixels_1_fu_375", "Parent" : "141",
		"CDFG" : "xfExtractPixels_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "val1_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode437_U0.grp_xferode790_fu_18.src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380", "Parent" : "141",
		"CDFG" : "xfExtractPixels_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "val1_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode437_U0.grp_xferode790_fu_18.src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385", "Parent" : "141",
		"CDFG" : "xfExtractPixels_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "val1_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode437_U0.grp_xferode790_fu_18.ip_accel_app_mux_yd2_U252", "Parent" : "141"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode437_U0.grp_xferode790_fu_18.ip_accel_app_mux_yd2_U253", "Parent" : "141"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode437_U0.grp_xferode790_fu_18.ip_accel_app_mux_yd2_U254", "Parent" : "141"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0", "Parent" : "0", "Child" : ["152", "153", "164", "171"],
		"CDFG" : "remark_crop_lines",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "144910", "EstimateLatencyMax" : "146279",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "140",
		"StartFifo" : "start_for_remark_bom_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_erode_fu_111"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_total_vegetation_3_fu_118"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_duplicateMat_1_fu_124"}],
		"Port" : [
			{"Name" : "eroded_0_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "362",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_duplicateMat_1_fu_124", "Port" : "p_src_data_V"}]},
			{"Name" : "eroded_1_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "186", "DependentChan" : "363",
				"BlockSignal" : [
					{"Name" : "eroded_1_data_V_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_erode_fu_111", "Port" : "p_dst_data_V"}]},
			{"Name" : "eroded_2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "293", "DependentChan" : "364",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_duplicateMat_1_fu_124", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.eroded_tmp_data_V_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111", "Parent" : "151", "Child" : ["154"],
		"CDFG" : "erode",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59329", "EstimateLatencyMax" : "59329",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xferode793_fu_18"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_xferode793_fu_18", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_xferode793_fu_18", "Port" : "p_dst_data_V"}]}]},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18", "Parent" : "153", "Child" : ["155", "156", "157", "158", "159", "160", "161", "162", "163"],
		"CDFG" : "xferode793",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59328", "EstimateLatencyMax" : "59328",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.buf_0_V_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.buf_1_V_U", "Parent" : "154"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.buf_2_V_U", "Parent" : "154"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.src_buf_temp_copy_ex_xfExtractPixels_1_fu_378", "Parent" : "154",
		"CDFG" : "xfExtractPixels_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "val1_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.src_buf_temp_copy_ex_1_xfExtractPixels_1_fu_383", "Parent" : "154",
		"CDFG" : "xfExtractPixels_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "val1_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.src_buf_temp_copy_ex_2_xfExtractPixels_1_fu_388", "Parent" : "154",
		"CDFG" : "xfExtractPixels_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "val1_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.ip_accel_app_mux_yd2_U298", "Parent" : "154"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.ip_accel_app_mux_yd2_U299", "Parent" : "154"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.ip_accel_app_mux_yd2_U300", "Parent" : "154"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118", "Parent" : "151", "Child" : ["165", "166", "167", "168", "169", "170"],
		"CDFG" : "get_total_vegetation_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28802", "EstimateLatencyMax" : "28802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [],
		"OutputProcess" : [
			{"ID" : "167", "Name" : "get_total_vegetation_2_U0"}],
		"Port" : [
			{"Name" : "agg_result_V", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "get_total_vegetation_2_U0", "Port" : "agg_result_V"}]},
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "get_total_vegetation_1_U0", "Port" : "img_in_data_V"},
					{"ID" : "165", "SubInstance" : "get_total_vegetation_U0", "Port" : "img_in_data_V"}]}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.get_total_vegetation_U0", "Parent" : "164",
		"CDFG" : "get_total_vegetation",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28802", "EstimateLatencyMax" : "28802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "168"}]},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.get_total_vegetation_1_U0", "Parent" : "164",
		"CDFG" : "get_total_vegetation_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28802", "EstimateLatencyMax" : "28802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "168"}]},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.get_total_vegetation_2_U0", "Parent" : "164",
		"CDFG" : "get_total_vegetation_2",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "169"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "170"},
			{"Name" : "agg_result_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.img_in_data_V_U", "Parent" : "164"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.p_Val2_loc_channel_U", "Parent" : "164"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.p_Val2_19_loc_chan_U", "Parent" : "164"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124", "Parent" : "151", "Child" : ["172", "174", "175", "177", "178", "179", "180", "181", "182", "183"],
		"CDFG" : "duplicateMat_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58143", "EstimateLatencyMax" : "58143",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "172", "Name" : "duplicateMat_Loop_Re_2_U0"}],
		"OutputProcess" : [
			{"ID" : "175", "Name" : "duplicateMat_Loop_2_2_U0"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "duplicateMat_Loop_Re_2_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "duplicateMat_Loop_2_2_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "duplicateMat_Loop_2_2_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.duplicateMat_Loop_Re_2_U0", "Parent" : "171", "Child" : ["173"],
		"CDFG" : "duplicateMat_Loop_Re_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58141", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "173", "SubInstance" : "tmp_V_read_r_fu_123", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_rows_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "p_src_rows_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "p_src_cols_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_cols_read_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst2_cols_read_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read_r_fu_123", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.duplicateMat_Loop_Re_2_U0.tmp_V_read_r_fu_123", "Parent" : "172",
		"CDFG" : "read_r",
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
			{"Name" : "Mat_0_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Mat_0_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.xFDuplicate637_U0", "Parent" : "171",
		"CDFG" : "xFDuplicate637",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43741", "EstimateLatencyMax" : "43741",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "172",
		"StartFifo" : "start_for_xFDuplizec_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_rows_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "p_src_rows_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "p_src_cols_read_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.duplicateMat_Loop_2_2_U0", "Parent" : "171", "Child" : ["176"],
		"CDFG" : "duplicateMat_Loop_2_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58141", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "174",
		"StartFifo" : "start_for_duplicaAem_U",
		"Port" : [
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "call_ln115_write797_fu_112", "Port" : "Mat_0_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln115_write797_fu_112", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.duplicateMat_Loop_2_2_U0.call_ln115_write797_fu_112", "Parent" : "175",
		"CDFG" : "write797",
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
			{"Name" : "Mat_0_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_0_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.src_V_V_U", "Parent" : "171"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.p_src_rows_read_c_U", "Parent" : "171"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.p_src_cols_read_c_U", "Parent" : "171"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.dst_V_V_U", "Parent" : "171"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.dst1_V_V_U", "Parent" : "171"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.start_for_xFDuplizec_U", "Parent" : "171"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.start_for_duplicaAem_U", "Parent" : "171"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0", "Parent" : "0", "Child" : ["185", "186", "188", "189", "192", "193", "194", "195", "196", "197", "198"],
		"CDFG" : "duplicateMat438",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58144", "EstimateLatencyMax" : "58144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "185", "Name" : "duplicateMat438_Bloc_U0", "ReadyCount" : "duplicateMat438_Bloc_U0_ap_ready_count"},
			{"ID" : "186", "Name" : "duplicateMat438_Loop_U0", "ReadyCount" : "duplicateMat438_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "189", "Name" : "duplicateMat438_Loop_1_U0"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "363",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "duplicateMat438_Loop_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "365",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "duplicateMat438_Loop_1_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "366",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "duplicateMat438_Loop_1_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.duplicateMat438_Bloc_U0", "Parent" : "184",
		"CDFG" : "duplicateMat438_Bloc",
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
			{"Name" : "p_src_cols_load7_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "186", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.duplicateMat438_Loop_U0", "Parent" : "184", "Child" : ["187"],
		"CDFG" : "duplicateMat438_Loop",
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
			{"Name" : "p_src_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "363",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "tmp_V_read_r_fu_105", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "188", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load7_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "188", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read_r_fu_105", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.duplicateMat438_Loop_U0.tmp_V_read_r_fu_105", "Parent" : "186",
		"CDFG" : "read_r",
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
			{"Name" : "Mat_0_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Mat_0_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.xFDuplicate_1_U0", "Parent" : "184",
		"CDFG" : "xFDuplicate_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43741", "EstimateLatencyMax" : "43741",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "186",
		"StartFifo" : "start_for_xFDupliDeQ_U",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "189", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "p_dst1_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "189", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "p_dst2_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.duplicateMat438_Loop_1_U0", "Parent" : "184", "Child" : ["190", "191"],
		"CDFG" : "duplicateMat438_Loop_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58141", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "188",
		"StartFifo" : "start_for_duplicaEe0_U",
		"Port" : [
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "365",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "call_ln114_write797_fu_90", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "366",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "call_ln115_write797_fu_98", "Port" : "Mat_0_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln114_write797_fu_90", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln115_write797_fu_98", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.duplicateMat438_Loop_1_U0.call_ln114_write797_fu_90", "Parent" : "189",
		"CDFG" : "write797",
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
			{"Name" : "Mat_0_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_0_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.duplicateMat438_Loop_1_U0.call_ln115_write797_fu_98", "Parent" : "189",
		"CDFG" : "write797",
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
			{"Name" : "Mat_0_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_0_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.p_src_cols_load7_loc_1_U", "Parent" : "184"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.src_V_V_U", "Parent" : "184"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.p_src_cols_load7_loc_s_U", "Parent" : "184"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.dst_V_V_U", "Parent" : "184"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.dst1_V_V_U", "Parent" : "184"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.start_for_xFDupliDeQ_U", "Parent" : "184"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_U0.start_for_duplicaEe0_U", "Parent" : "184"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_12th_segment_U0", "Parent" : "0", "Child" : ["200"],
		"CDFG" : "get_12th_segment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7362", "EstimateLatencyMax" : "7362",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "184",
		"StartFifo" : "start_for_get_12tbpm_U",
		"InputProcess" : [
			{"ID" : "200", "Name" : "get_12th_segment_Loo_U0"}],
		"OutputProcess" : [
			{"ID" : "200", "Name" : "get_12th_segment_Loo_U0"}],
		"Port" : [
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "365",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "get_12th_segment_Loo_U0", "Port" : "eroded_data_V"}]},
			{"Name" : "bottom_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "367",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "get_12th_segment_Loo_U0", "Port" : "bottom_data_V"}]}]},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_12th_segment_U0.get_12th_segment_Loo_U0", "Parent" : "199",
		"CDFG" : "get_12th_segment_Loo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7362", "EstimateLatencyMax" : "7362",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "365",
				"BlockSignal" : [
					{"Name" : "eroded_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bottom_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "367",
				"BlockSignal" : [
					{"Name" : "bottom_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0", "Parent" : "0", "Child" : ["202", "203", "204", "205", "259", "282", "287", "290"],
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
		"StartSource" : "184",
		"StartFifo" : "start_for_get_crobqm_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extr_half_1_cent_fu_48"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extr_half_2_cent_fu_62"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_lines_lsl_fu_76"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_line_bases_fu_88"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_weed_mask_fu_100"}],
		"Port" : [
			{"Name" : "bottom_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "200", "DependentChan" : "367",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "bottom_data_V"}]},
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "366",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "eroded_data_V"},
					{"ID" : "259", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "eroded_data_V"}]},
			{"Name" : "weed_mask_tmp_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "293", "DependentChan" : "368",
				"SubConnect" : [
					{"ID" : "290", "SubInstance" : "grp_get_weed_mask_fu_100", "Port" : "weed_mask_tmp_data_V"}]},
			{"Name" : "histogram", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "histogram"}]},
			{"Name" : "smoothed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "smoothed"}]},
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "line_bases"},
					{"ID" : "259", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "line_bases_active"},
					{"ID" : "282", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "line_bases"},
					{"ID" : "287", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "line_bases"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "segments647"}]},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "last_c"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "centroids"},
					{"ID" : "259", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "centroids"},
					{"ID" : "282", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "centroids"}]},
			{"Name" : "segments648", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "segments648"}]},
			{"Name" : "last_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "last_centroids"}]},
			{"Name" : "line_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "line_centroids"}]},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "290", "SubInstance" : "grp_get_weed_mask_fu_100", "Port" : "lines"},
					{"ID" : "282", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "lines"}]}]},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.line_bases_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.centroids_U", "Parent" : "201"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.lines_U", "Parent" : "201"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48", "Parent" : "201", "Child" : ["206", "207", "208", "239", "258"],
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
					{"ID" : "208", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "line_bases_active"}]},
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "258", "SubInstance" : "grp_extract_micro_roi_fu_217", "Port" : "img_in_mr_data_V"},
					{"ID" : "208", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "eroded_data_V"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "208", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "centroids"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "208", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "segments647"}]},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "208", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "last_c"}]}]},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.micro_roi_1_data_V_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.micro_roi_0_data_V_U", "Parent" : "205"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189", "Parent" : "205", "Child" : ["209", "210", "211", "212", "231", "232", "234", "235", "236", "237", "238"],
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
					{"ID" : "231", "SubInstance" : "grp_extract_micro_roi_fu_360", "Port" : "img_in_mr_data_V"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "grp_get_last_centroids_fu_371", "Port" : "centroids"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "grp_get_last_centroids_fu_371", "Port" : "last_c_2"}]}]},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.segments647_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.last_c_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.micro_roi_2_data_V_U", "Parent" : "208"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350", "Parent" : "208", "Child" : ["213", "214", "215", "216", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230"],
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
			{"ID" : "213", "Name" : "get_centroid_fh_entr_U0", "ReadyCount" : "get_centroid_fh_entr_U0_ap_ready_count"},
			{"ID" : "215", "Name" : "get_centroid_fh_Loop_U0", "ReadyCount" : "get_centroid_fh_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "216", "Name" : "get_centroid_fh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "get_centroid_fh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "get_centroid_fh_Bloc_U0", "Port" : "c"}]}]},
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_entr_U0", "Parent" : "212",
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
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "216", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "216", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "v_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "v_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "v_limit_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "h_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "h_limit_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_1_U0", "Parent" : "212",
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
		"StartSource" : "213",
		"StartFifo" : "start_for_get_cenJfO_U",
		"Port" : [
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Loop_U0", "Parent" : "212",
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
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0", "Parent" : "212", "Child" : ["217", "218"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "229"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "226"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "225"},
			{"Name" : "v_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "v_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "227"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "228"}]},
	{"ID" : "217", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0.ip_accel_app_udivHfu_U362", "Parent" : "216"},
	{"ID" : "218", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0.ip_accel_app_udivIfE_U363", "Parent" : "216"},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_offset_c_U", "Parent" : "212"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_offset_c_U", "Parent" : "212"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_limit_c_U", "Parent" : "212"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_limit_c8_U", "Parent" : "212"},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_limit_c_U", "Parent" : "212"},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_limit_c9_U", "Parent" : "212"},
	{"ID" : "225", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.lshr_ln146_cast_loc_s_U", "Parent" : "212"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.lshr_ln147_cast_loc_s_U", "Parent" : "212"},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_sum_0_loc_channel_U", "Parent" : "212"},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_sum_0_loc_channel_U", "Parent" : "212"},
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.p_sum_0_loc_channel_U", "Parent" : "212"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.start_for_get_cenJfO_U", "Parent" : "212"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_extract_micro_roi_fu_360", "Parent" : "208",
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
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_last_centroids_fu_371", "Parent" : "208", "Child" : ["233"],
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
			{"ID" : "233", "Name" : "get_last_centroids_L_U0"}],
		"OutputProcess" : [
			{"ID" : "233", "Name" : "get_last_centroids_L_U0"}],
		"Port" : [
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "get_last_centroids_L_U0", "Port" : "centroids"}]},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "get_last_centroids_L_U0", "Port" : "last_c_2"}]},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_last_centroids_fu_371.get_last_centroids_L_U0", "Parent" : "232",
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
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_sdivNgs_U402", "Parent" : "208"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_udivOgC_U403", "Parent" : "208"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_udivOgC_U404", "Parent" : "208"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_mac_PgM_U405", "Parent" : "208"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_mul_QgW_U406", "Parent" : "208"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203", "Parent" : "205", "Child" : ["240", "241", "242", "243", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257"],
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
			{"ID" : "213", "Name" : "get_centroid_fh_entr_U0", "ReadyCount" : "get_centroid_fh_entr_U0_ap_ready_count"},
			{"ID" : "215", "Name" : "get_centroid_fh_Loop_U0", "ReadyCount" : "get_centroid_fh_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "216", "Name" : "get_centroid_fh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "get_centroid_fh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "243", "SubInstance" : "get_centroid_fh_Bloc_U0", "Port" : "c"}]}]},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_entr_U0", "Parent" : "239",
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
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "216", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "216", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "v_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "v_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "v_limit_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "h_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "h_limit_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_1_U0", "Parent" : "239",
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
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Loop_U0", "Parent" : "239",
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
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_U0", "Parent" : "239", "Child" : ["244", "245"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "229"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "226"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "225"},
			{"Name" : "v_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "v_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "213", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "227"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "228"}]},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_U0.ip_accel_app_udivHfu_U362", "Parent" : "243"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_U0.ip_accel_app_udivIfE_U363", "Parent" : "243"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_offset_c_U", "Parent" : "239"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_offset_c_U", "Parent" : "239"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_limit_c_U", "Parent" : "239"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_limit_c8_U", "Parent" : "239"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_limit_c_U", "Parent" : "239"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_limit_c9_U", "Parent" : "239"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.lshr_ln146_cast_loc_s_U", "Parent" : "239"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.lshr_ln147_cast_loc_s_U", "Parent" : "239"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_sum_0_loc_channel_U", "Parent" : "239"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_sum_0_loc_channel_U", "Parent" : "239"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.p_sum_0_loc_channel_U", "Parent" : "239"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.start_for_get_cenJfO_U", "Parent" : "239"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_micro_roi_fu_217", "Parent" : "205",
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
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62", "Parent" : "201", "Child" : ["260", "261", "262", "263", "276", "277", "279", "280", "281"],
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
					{"ID" : "276", "SubInstance" : "grp_extract_micro_roi_fu_395", "Port" : "img_in_mr_data_V"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_get_last_centroids_fu_406", "Port" : "centroids"}]},
			{"Name" : "segments648", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_get_last_centroids_fu_406", "Port" : "last_c_2"}]}]},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.segments648_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.last_centroids_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.micro_roi_3_data_V_U", "Parent" : "259"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382", "Parent" : "259", "Child" : ["264", "265", "268", "269", "270", "271", "272", "273", "274", "275"],
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
			{"ID" : "264", "Name" : "get_centroid_sh_Loop_U0"}],
		"OutputProcess" : [
			{"ID" : "265", "Name" : "get_centroid_sh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "get_centroid_sh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "get_centroid_sh_Bloc_U0", "Port" : "c"}]},
			{"Name" : "c_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Loop_U0", "Parent" : "263",
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
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "268",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "269",
				"BlockSignal" : [
					{"Name" : "v_offset_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_x_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "270",
				"BlockSignal" : [
					{"Name" : "possible_c_x_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_y_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "271",
				"BlockSignal" : [
					{"Name" : "possible_c_y_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "272",
				"BlockSignal" : [
					{"Name" : "c_read_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Bloc_U0", "Parent" : "263", "Child" : ["266", "267"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "275"},
			{"Name" : "possible_c_x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "270",
				"BlockSignal" : [
					{"Name" : "possible_c_x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "272",
				"BlockSignal" : [
					{"Name" : "c_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "273"},
			{"Name" : "v_offset_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "269",
				"BlockSignal" : [
					{"Name" : "v_offset_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "274"},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "268",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_y", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "264", "DependentChan" : "271",
				"BlockSignal" : [
					{"Name" : "possible_c_y_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Bloc_U0.ip_accel_app_udivHfu_U434", "Parent" : "265"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Bloc_U0.ip_accel_app_udivIfE_U435", "Parent" : "265"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.h_offset_c_U", "Parent" : "263"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.v_offset_read_c_U", "Parent" : "263"},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.possible_c_x_c_U", "Parent" : "263"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.possible_c_y_c_U", "Parent" : "263"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.c_read_c_U", "Parent" : "263"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.v_sum_0_loc_0_i_loc_s_U", "Parent" : "263"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.h_sum_0_loc_0_i_loc_s_U", "Parent" : "263"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.p_sum_0_loc_0_i_loc_c_U", "Parent" : "263"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_extract_micro_roi_fu_395", "Parent" : "259",
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
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_last_centroids_fu_406", "Parent" : "259", "Child" : ["278"],
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
			{"ID" : "233", "Name" : "get_last_centroids_L_U0"}],
		"OutputProcess" : [
			{"ID" : "233", "Name" : "get_last_centroids_L_U0"}],
		"Port" : [
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "get_last_centroids_L_U0", "Port" : "centroids"}]},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "get_last_centroids_L_U0", "Port" : "last_c_2"}]},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_last_centroids_fu_406.get_last_centroids_L_U0", "Parent" : "277",
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
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.ip_accel_app_sdivNgs_U462", "Parent" : "259"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.ip_accel_app_mac_PgM_U463", "Parent" : "259"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.ip_accel_app_mul_QgW_U464", "Parent" : "259"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_lines_lsl_fu_76", "Parent" : "201", "Child" : ["283", "284", "285", "286"],
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
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_lines_lsl_fu_76.line_centroids_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_lines_lsl_fu_76.ip_accel_app_sdivXh4_U469", "Parent" : "282"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_lines_lsl_fu_76.ip_accel_app_mac_PgM_U470", "Parent" : "282"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_lines_lsl_fu_76.ip_accel_app_mul_Yie_U471", "Parent" : "282"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_line_bases_fu_88", "Parent" : "201", "Child" : ["288", "289"],
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
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_line_bases_fu_88.histogram_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_line_bases_fu_88.smoothed_U", "Parent" : "287"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_weed_mask_fu_100", "Parent" : "201", "Child" : ["291"],
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
					{"ID" : "291", "SubInstance" : "grp_is_crop_or_furrow_fu_117", "Port" : "lines"}]}]},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_weed_mask_fu_100.grp_is_crop_or_furrow_fu_117", "Parent" : "290", "Child" : ["292"],
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
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.get_crop_lines_U0.grp_get_weed_mask_fu_100.grp_is_crop_or_furrow_fu_117.ip_accel_app_mul_Zio_U478", "Parent" : "291"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sectors_weed_classif_U0", "Parent" : "0", "Child" : ["294", "295", "296", "297", "298"],
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
		"StartSource" : "201",
		"StartFifo" : "start_for_sectorsbrm_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bitwise_and_fu_403"}],
		"Port" : [
			{"Name" : "weed_mask_tmp_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "368",
				"BlockSignal" : [
					{"Name" : "weed_mask_tmp_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "grp_bitwise_and_fu_403", "Port" : "p_src1_data_V"}]},
			{"Name" : "weed_mask_out_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "302", "DependentChan" : "369",
				"BlockSignal" : [
					{"Name" : "weed_mask_out_data_V_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "grp_bitwise_and_fu_403", "Port" : "p_dst_data_V"}]},
			{"Name" : "opened_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "364",
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "grp_bitwise_and_fu_403", "Port" : "p_src2_data_V"}]},
			{"Name" : "segments", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sectors_weed_classif_U0.segments_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sectors_weed_classif_U0.quadrant_space_U", "Parent" : "293"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sectors_weed_classif_U0.quadrant_weed_V_U", "Parent" : "293"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sectors_weed_classif_U0.grp_bitwise_and_fu_403", "Parent" : "293",
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
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sectors_weed_classif_U0.ip_accel_app_udiv6jw_U496", "Parent" : "293"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zero_0_180_320_1_U0", "Parent" : "0",
		"CDFG" : "zero_0_180_320_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58141", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "370",
				"BlockSignal" : [
					{"Name" : "p_src1_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.merge_U0", "Parent" : "0", "Child" : ["301", "302", "306", "307", "309", "310", "311", "312", "313", "314", "315", "316"],
		"CDFG" : "merge",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57967", "EstimateLatencyMax" : "115206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "299",
		"StartFifo" : "start_for_merge_U0_U",
		"InputProcess" : [
			{"ID" : "301", "Name" : "merge_Block_crit_e_U0", "ReadyCount" : "merge_Block_crit_e_U0_ap_ready_count"},
			{"ID" : "302", "Name" : "merge_Loop_Read_Mat_U0", "ReadyCount" : "merge_Loop_Read_Mat_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "307", "Name" : "merge_Loop_Write_Mat_U0"}],
		"Port" : [
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "293", "DependentChan" : "369",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "merge_Loop_Read_Mat_U0", "Port" : "p_src1_data_V"}]},
			{"Name" : "p_src2_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "299", "DependentChan" : "370",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "merge_Loop_Read_Mat_U0", "Port" : "p_src2_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "317", "DependentChan" : "371",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "merge_Loop_Write_Mat_U0", "Port" : "p_dst_data_V"}]}]},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.merge_Block_crit_e_U0", "Parent" : "300",
		"CDFG" : "merge_Block_crit_e",
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
			{"Name" : "p_src1_cols_load7_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "309",
				"BlockSignal" : [
					{"Name" : "p_src1_cols_load7_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.merge_Loop_Read_Mat_U0", "Parent" : "300", "Child" : ["303", "304", "305"],
		"CDFG" : "merge_Loop_Read_Mat_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "115205",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src1_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "301", "DependentChan" : "309",
				"BlockSignal" : [
					{"Name" : "p_src1_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "293", "DependentChan" : "369",
				"BlockSignal" : [
					{"Name" : "p_src1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "303", "SubInstance" : "grp_read_r_fu_112", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "p_in1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "306", "DependentChan" : "310",
				"BlockSignal" : [
					{"Name" : "p_in1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src2_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "299", "DependentChan" : "370",
				"BlockSignal" : [
					{"Name" : "p_src2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "tmp_V_4_read_r_fu_118", "Port" : "Mat_0_180_320_1_data_V_addr"},
					{"ID" : "303", "SubInstance" : "grp_read_r_fu_112", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "p_in2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "306", "DependentChan" : "311",
				"BlockSignal" : [
					{"Name" : "p_in2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_in3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "306", "DependentChan" : "312",
				"BlockSignal" : [
					{"Name" : "p_in3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src1_cols_load7_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "306", "DependentChan" : "313",
				"BlockSignal" : [
					{"Name" : "p_src1_cols_load7_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_read_r_fu_112", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "tmp_V_4_read_r_fu_118", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.merge_U0.merge_Loop_Read_Mat_U0.grp_read_r_fu_112", "Parent" : "302",
		"CDFG" : "read_r",
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
			{"Name" : "Mat_0_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Mat_0_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.merge_U0.merge_Loop_Read_Mat_U0.tmp_V_4_read_r_fu_118", "Parent" : "302",
		"CDFG" : "read_r",
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
			{"Name" : "Mat_0_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Mat_0_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.merge_U0.merge_Loop_Read_Mat_U0.ip_accel_app_mul_7jG_U506", "Parent" : "302"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.xfChannelCombine_U0", "Parent" : "300",
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
		"StartSource" : "302",
		"StartFifo" : "start_for_xfChann8jQ_U",
		"Port" : [
			{"Name" : "p_in1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "310",
				"BlockSignal" : [
					{"Name" : "p_in1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_in2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "311",
				"BlockSignal" : [
					{"Name" : "p_in2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_in3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "312",
				"BlockSignal" : [
					{"Name" : "p_in3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "307", "DependentChan" : "314",
				"BlockSignal" : [
					{"Name" : "p_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src1_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "313",
				"BlockSignal" : [
					{"Name" : "p_src1_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.merge_Loop_Write_Mat_U0", "Parent" : "300", "Child" : ["308"],
		"CDFG" : "merge_Loop_Write_Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57602", "EstimateLatencyMax" : "57602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "306",
		"StartFifo" : "start_for_merge_L9j0_U",
		"Port" : [
			{"Name" : "p_out_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "306", "DependentChan" : "314",
				"BlockSignal" : [
					{"Name" : "p_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "317", "DependentChan" : "371",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "call_ln341_write_1_fu_63", "Port" : "Mat_9_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln341_write_1_fu_63", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.merge_U0.merge_Loop_Write_Mat_U0.call_ln341_write_1_fu_63", "Parent" : "307",
		"CDFG" : "write_1",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.p_src1_cols_load7_loc_1_U", "Parent" : "300"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.p_in1_V_V_U", "Parent" : "300"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.p_in2_V_V_U", "Parent" : "300"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.p_in3_V_V_U", "Parent" : "300"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.p_src1_cols_load7_loc_U", "Parent" : "300"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.p_out_V_V_U", "Parent" : "300"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.start_for_xfChann8jQ_U", "Parent" : "300"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.start_for_merge_L9j0_U", "Parent" : "300"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.resize_2_U0", "Parent" : "0", "Child" : ["318"],
		"CDFG" : "resize_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "928050", "EstimateLatencyMax" : "928050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "300",
		"StartFifo" : "start_for_resize_bsm_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFResizeAreaUpScale_s_fu_18"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "307", "DependentChan" : "371",
				"SubConnect" : [
					{"ID" : "318", "SubInstance" : "grp_xFResizeAreaUpScale_s_fu_18", "Port" : "stream_in_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "351", "DependentChan" : "372",
				"SubConnect" : [
					{"ID" : "318", "SubInstance" : "grp_xFResizeAreaUpScale_s_fu_18", "Port" : "resize_out_data_V"}]}]},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18", "Parent" : "317", "Child" : ["319", "320", "321", "322", "323", "324", "325", "326", "328", "329", "330", "331", "336", "341", "346"],
		"CDFG" : "xFResizeAreaUpScale_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "928049", "EstimateLatencyMax" : "928049",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFUDivAreaUp_2_fu_984"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFUDivAreaUp_2_fu_984"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFUDivAreaUp_2_fu_984"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFUDivAreaUp_2_fu_984"}],
		"Port" : [
			{"Name" : "stream_in_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resize_out_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resize_out_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.lbuf_in0_V_U", "Parent" : "318"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.lbuf_in1_V_U", "Parent" : "318"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.lbuf_in2_V_U", "Parent" : "318"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Hoffset_V_U", "Parent" : "318"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Voffset_V_U", "Parent" : "318"},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Hweight_U", "Parent" : "318"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Vweight_U", "Parent" : "318"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.grp_xFUDivAreaUp_2_fu_984", "Parent" : "318", "Child" : ["327"],
		"CDFG" : "xFUDivAreaUp_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.grp_xFUDivAreaUp_2_fu_984.ip_accel_app_udivbak_U533", "Parent" : "326"},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Pixels_CoreProcessUpArea_2_fu_1024", "Parent" : "318",
		"CDFG" : "CoreProcessUpArea_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wx", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wy", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Pixels_0_1_CoreProcessUpArea_2_fu_1035", "Parent" : "318",
		"CDFG" : "CoreProcessUpArea_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wx", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wy", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Pixels_0_2_CoreProcessUpArea_2_fu_1046", "Parent" : "318",
		"CDFG" : "CoreProcessUpArea_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wx", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wy", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret1_xfExtractPixels_fu_1057", "Parent" : "318", "Child" : ["332", "333", "334", "335"],
		"CDFG" : "xfExtractPixels",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tmp_buf_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "val1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pos_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret1_xfExtractPixels_fu_1057.ip_accel_app_mux_bbk_U537", "Parent" : "331"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret1_xfExtractPixels_fu_1057.ip_accel_app_mux_bbk_U538", "Parent" : "331"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret1_xfExtractPixels_fu_1057.ip_accel_app_mux_bbk_U539", "Parent" : "331"},
	{"ID" : "335", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret1_xfExtractPixels_fu_1057.ip_accel_app_mux_bbk_U540", "Parent" : "331"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret_xfExtractPixels_fu_1069", "Parent" : "318", "Child" : ["337", "338", "339", "340"],
		"CDFG" : "xfExtractPixels",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tmp_buf_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "val1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pos_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret_xfExtractPixels_fu_1069.ip_accel_app_mux_bbk_U537", "Parent" : "336"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret_xfExtractPixels_fu_1069.ip_accel_app_mux_bbk_U538", "Parent" : "336"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret_xfExtractPixels_fu_1069.ip_accel_app_mux_bbk_U539", "Parent" : "336"},
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret_xfExtractPixels_fu_1069.ip_accel_app_mux_bbk_U540", "Parent" : "336"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret2_xfExtractPixels_fu_1081", "Parent" : "318", "Child" : ["342", "343", "344", "345"],
		"CDFG" : "xfExtractPixels",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tmp_buf_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "val1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pos_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret2_xfExtractPixels_fu_1081.ip_accel_app_mux_bbk_U537", "Parent" : "341"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret2_xfExtractPixels_fu_1081.ip_accel_app_mux_bbk_U538", "Parent" : "341"},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret2_xfExtractPixels_fu_1081.ip_accel_app_mux_bbk_U539", "Parent" : "341"},
	{"ID" : "345", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret2_xfExtractPixels_fu_1081.ip_accel_app_mux_bbk_U540", "Parent" : "341"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret3_xfExtractPixels_fu_1093", "Parent" : "318", "Child" : ["347", "348", "349", "350"],
		"CDFG" : "xfExtractPixels",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tmp_buf_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "val1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pos_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret3_xfExtractPixels_fu_1093.ip_accel_app_mux_bbk_U537", "Parent" : "346"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret3_xfExtractPixels_fu_1093.ip_accel_app_mux_bbk_U538", "Parent" : "346"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret3_xfExtractPixels_fu_1093.ip_accel_app_mux_bbk_U539", "Parent" : "346"},
	{"ID" : "350", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret3_xfExtractPixels_fu_1093.ip_accel_app_mux_bbk_U540", "Parent" : "346"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_2749_U0", "Parent" : "0", "Child" : ["352"],
		"CDFG" : "add_2749",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "923762", "EstimateLatencyMax" : "923762",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_add_274bll_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFarithm_proc_2811_fu_20"}],
		"Port" : [
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "358",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_xFarithm_proc_2811_fu_20", "Port" : "p_src1_data_V"}]},
			{"Name" : "p_src2_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "317", "DependentChan" : "372",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_xFarithm_proc_2811_fu_20", "Port" : "p_src2_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_xFarithm_proc_2811_fu_20", "Port" : "p_dst_data_V"}]}]},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.add_2749_U0.grp_xFarithm_proc_2811_fu_20", "Parent" : "351",
		"CDFG" : "xFarithm_proc_2811",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "923761", "EstimateLatencyMax" : "923761",
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
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_cols_c_U", "Parent" : "0"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_0_rows_channe_U", "Parent" : "0"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_0_cols_channe_U", "Parent" : "0"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.resized_cols_channel_U", "Parent" : "0"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_0_data_V_U", "Parent" : "0"},
	{"ID" : "358", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_1_data_V_U", "Parent" : "0"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.resized_data_V_U", "Parent" : "0"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.veg_img_data_V_U", "Parent" : "0"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.segmented_data_V_U", "Parent" : "0"},
	{"ID" : "362", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eroded_0a_data_V_U", "Parent" : "0"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eroded_1_data_V_U", "Parent" : "0"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eroded_0b_data_V_U", "Parent" : "0"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eroded_1a_data_V_U", "Parent" : "0"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eroded_1b_data_V_U", "Parent" : "0"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bottom_data_V_U", "Parent" : "0"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weed_mask_tmp_data_V_U", "Parent" : "0"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weed_mask_out_data_V_U", "Parent" : "0"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zero_data_V_U", "Parent" : "0"},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mask_img_out_data_V_U", "Parent" : "0"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rs_mask_img_out_data_U", "Parent" : "0"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_get_vegbjl_U", "Parent" : "0"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_resizeNbkl_U", "Parent" : "0"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_add_274bll_U", "Parent" : "0"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_segmentbml_U", "Parent" : "0"},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_erode43bnm_U", "Parent" : "0"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_remark_bom_U", "Parent" : "0"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_get_12tbpm_U", "Parent" : "0"},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_get_crobqm_U", "Parent" : "0"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_sectorsbrm_U", "Parent" : "0"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_merge_U0_U", "Parent" : "0"},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_resize_bsm_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	weed_detection {
		img_in_cols {Type I LastRead 0 FirstWrite -1}
		img_in_data_V {Type I LastRead 0 FirstWrite -1}
		img_out_data_V {Type O LastRead -1 FirstWrite 3}
		xf_division_lut {Type I LastRead -1 FirstWrite -1}
		histogram {Type IO LastRead -1 FirstWrite -1}
		smoothed {Type IO LastRead -1 FirstWrite -1}
		line_bases {Type IO LastRead -1 FirstWrite -1}
		segments647 {Type I LastRead -1 FirstWrite -1}
		last_c {Type IO LastRead -1 FirstWrite -1}
		centroids {Type IO LastRead -1 FirstWrite -1}
		segments648 {Type I LastRead -1 FirstWrite -1}
		last_centroids {Type IO LastRead -1 FirstWrite -1}
		line_centroids {Type IO LastRead -1 FirstWrite -1}
		lines {Type IO LastRead -1 FirstWrite -1}
		segments {Type I LastRead -1 FirstWrite -1}}
	weed_detection_entry {
		img_in_cols {Type I LastRead 0 FirstWrite -1}
		img_in_cols_out {Type O LastRead -1 FirstWrite 0}}
	weed_detection_Block {
		img_in_0_rows0 {Type O LastRead -1 FirstWrite 0}
		img_in_0_cols0 {Type O LastRead -1 FirstWrite 0}
		resized_cols_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_2762 {
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_2_Block {
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		p_src_cols_load6_out_out {Type O LastRead -1 FirstWrite 0}
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		p_dst1_rows_out {Type O LastRead -1 FirstWrite 0}
		p_dst1_cols_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_2_Loop_s {
		p_src_cols_load6_loc {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		src_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load6_loc_out {Type O LastRead -1 FirstWrite 0}}
	read765 {
		Mat_9_720_1280_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xFDuplicate_2 {
		p_src_mat_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_dst2_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load6_loc {Type I LastRead 0 FirstWrite -1}}
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
		Mat_9_720_1280_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	resizeNNBilinear {
		imgInput_data_V {Type I LastRead 7 FirstWrite -1}
		imgOutput_data_V {Type O LastRead -1 FirstWrite 14}}
	xfUDivResize {
		in_n {Type I LastRead 0 FirstWrite -1}
		in_d {Type I LastRead 0 FirstWrite -1}}
	scaleCompute {
		currindex {Type I LastRead 0 FirstWrite -1}
		inscale_V {Type I LastRead 0 FirstWrite -1}}
	get_vegetation_image_4 {
		img_in_cols {Type I LastRead 0 FirstWrite -1}
		img_in_data_V {Type I LastRead 0 FirstWrite -1}
		img_out_data_V {Type O LastRead -1 FirstWrite 23}}
	get_vegetation_image_113 {
		img_in_0_rows0 {Type O LastRead -1 FirstWrite 0}
		img_in_0_cols0 {Type O LastRead -1 FirstWrite 0}
		img_in_cols {Type I LastRead 0 FirstWrite -1}
		img_in_cols_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat635769 {
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_Block_s {
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		p_src_cols_load10_out_out {Type O LastRead -1 FirstWrite 0}
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		p_dst1_rows_out {Type O LastRead -1 FirstWrite 0}
		p_dst1_cols_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_Loop_Re {
		p_src_cols_load10_loc {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		src_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load10_loc_out {Type O LastRead -1 FirstWrite 0}}
	read779 {
		Mat_9_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xFDuplicate645 {
		src_V_V {Type I LastRead 3 FirstWrite -1}
		dst_V_V {Type O LastRead -1 FirstWrite 3}
		dst1_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load10_loc {Type I LastRead 0 FirstWrite -1}}
	duplicateMat_Loop_2_s {
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		dst_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		dst1_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	write_1 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	write_1 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	duplicateMat {
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_Block_1 {
		p_src_cols_load10_out_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_Loop_Re_1 {
		p_src_cols_load10_loc {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		src_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load10_loc_out {Type O LastRead -1 FirstWrite 0}}
	read779 {
		Mat_9_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xFDuplicate {
		p_src_mat_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_dst2_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load10_loc {Type I LastRead 0 FirstWrite -1}}
	duplicateMat_Loop_2_1 {
		dst_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		dst1_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	write_1 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	write_1 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	extract_channels {
		img_in_0_data_V {Type I LastRead 3 FirstWrite -1}
		img_in_1_data_V {Type I LastRead 3 FirstWrite -1}
		img_in_2_data_V {Type I LastRead 3 FirstWrite -1}
		r_channel_data_V {Type O LastRead -1 FirstWrite 3}
		g_channel_data_V {Type O LastRead -1 FirstWrite 3}
		b_channel_data_V {Type O LastRead -1 FirstWrite 3}}
	extractChannel432 {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}}
	xfChannelExtractKern {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}
		p_channel {Type I LastRead 0 FirstWrite -1}}
	extractChannel433 {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}}
	xfChannelExtractKern {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}
		p_channel {Type I LastRead 0 FirstWrite -1}}
	extractChannel434 {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}}
	xfChannelExtractKern {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}
		p_channel {Type I LastRead 0 FirstWrite -1}}
	get_max_from_channel {
		r_channel_data_V {Type I LastRead 3 FirstWrite -1}
		g_channel_data_V {Type I LastRead 3 FirstWrite -1}
		b_channel_data_V {Type I LastRead 3 FirstWrite -1}
		max_r_out {Type O LastRead -1 FirstWrite 0}
		max_g_out {Type O LastRead -1 FirstWrite 0}
		max_b_out {Type O LastRead -1 FirstWrite 0}}
	minMaxLoc435 {
		p_src_data_V {Type I LastRead 3 FirstWrite -1}}
	xFMinMaxLocKernel {
		p_src_data_V {Type I LastRead 3 FirstWrite -1}}
	minMaxLoc436 {
		p_src_data_V {Type I LastRead 3 FirstWrite -1}}
	xFMinMaxLocKernel {
		p_src_data_V {Type I LastRead 3 FirstWrite -1}}
	minMaxLoc {
		p_src_data_V {Type I LastRead 3 FirstWrite -1}}
	xFMinMaxLocKernel {
		p_src_data_V {Type I LastRead 3 FirstWrite -1}}
	p_prop_ret_max_b_dc_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		max_b_out {Type O LastRead -1 FirstWrite 0}}
	p_prop_ret_max_g_dc_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		max_g_out {Type O LastRead -1 FirstWrite 0}}
	p_prop_ret_max_r_dc_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		max_r_out {Type O LastRead -1 FirstWrite 0}}
	get_vegetation_image {
		max_r {Type I LastRead 0 FirstWrite -1}
		max_g {Type I LastRead 0 FirstWrite -1}
		max_b {Type I LastRead 0 FirstWrite -1}
		max_r_out {Type O LastRead -1 FirstWrite 0}
		max_g_out {Type O LastRead -1 FirstWrite 0}
		max_b_out {Type O LastRead -1 FirstWrite 0}}
	get_exg_image {
		r_channel_data_V {Type I LastRead 1 FirstWrite -1}
		g_channel_data_V {Type I LastRead 1 FirstWrite -1}
		b_channel_data_V {Type I LastRead 1 FirstWrite -1}
		max_r {Type I LastRead 0 FirstWrite -1}
		max_g {Type I LastRead 0 FirstWrite -1}
		max_b {Type I LastRead 0 FirstWrite -1}
		veg_img_data_V {Type O LastRead -1 FirstWrite 42}
		min_value_V_out {Type O LastRead -1 FirstWrite 1}
		max_value_V_out {Type O LastRead -1 FirstWrite 1}}
	get_vegetation_image_3 {
		max_value_V {Type I LastRead 0 FirstWrite -1}}
	get_vegetation_image_2 {
		min_value_V {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		min_value_V_out {Type O LastRead -1 FirstWrite 0}}
	convert_fp_to_8b770 {
		min_value_V_c17 {Type I LastRead 21 FirstWrite -1}
		sub_ln703_cast_loc_c {Type I LastRead 0 FirstWrite -1}
		veg_temp_data_V {Type I LastRead 23 FirstWrite -1}
		img_out_data_V {Type O LastRead -1 FirstWrite 23}}
	segment_image {
		img_in_data_V {Type I LastRead 8 FirstWrite -1}
		img_out_data_V {Type O LastRead -1 FirstWrite 3}
		xf_division_lut {Type I LastRead -1 FirstWrite -1}}
	OtsuThreshold {
		p_src_mat_data_V {Type I LastRead 8 FirstWrite -1}
		xf_division_lut {Type I LastRead -1 FirstWrite -1}}
	xfOtsuKernel {
		p_hist {Type I LastRead 2 FirstWrite -1}
		xf_division_lut {Type I LastRead -1 FirstWrite -1}}
	Inverse {
		x {Type I LastRead 0 FirstWrite -1}
		M {Type I LastRead 0 FirstWrite -1}
		N_read {Type I LastRead 0 FirstWrite -1}
		xf_division_lut {Type I LastRead -1 FirstWrite -1}}
	Inverse {
		x {Type I LastRead 0 FirstWrite -1}
		M {Type I LastRead 0 FirstWrite -1}
		N_read {Type I LastRead 0 FirstWrite -1}
		xf_division_lut {Type I LastRead -1 FirstWrite -1}}
	xFHistogramKernel {
		p_src_mat_data_V {Type I LastRead 8 FirstWrite -1}
		hist_array {Type O LastRead -1 FirstWrite 7}}
	Threshold {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}
		thresh {Type I LastRead 0 FirstWrite -1}}
	erode437 {
		p_src_data_V {Type I LastRead 7 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 9}}
	xferode790 {
		p_src_data_V {Type I LastRead 7 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 9}}
	xfExtractPixels_1 {
		val1_V_read {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1 {
		val1_V_read {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1 {
		val1_V_read {Type I LastRead 0 FirstWrite -1}}
	remark_crop_lines {
		eroded_0_data_V {Type I LastRead 0 FirstWrite -1}
		eroded_1_data_V {Type IO LastRead 6 FirstWrite 9}
		eroded_2_data_V {Type O LastRead -1 FirstWrite 0}}
	erode {
		p_src_data_V {Type I LastRead 6 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 9}}
	xferode793 {
		p_src_data_V {Type I LastRead 6 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 9}}
	xfExtractPixels_1 {
		val1_V_read {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1 {
		val1_V_read {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1 {
		val1_V_read {Type I LastRead 0 FirstWrite -1}}
	get_total_vegetation_3 {
		agg_result_V {Type O LastRead -1 FirstWrite 0}
		img_in_data_V {Type I LastRead 1 FirstWrite -1}}
	get_total_vegetation {
		img_in_data_V {Type I LastRead 1 FirstWrite -1}}
	get_total_vegetation_1 {
		img_in_data_V {Type I LastRead 1 FirstWrite -1}}
	get_total_vegetation_2 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		agg_result_V {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_1 {
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 3}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_Loop_Re_2 {
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		src_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_rows_read_out {Type O LastRead -1 FirstWrite 0}
		p_src_cols_read_out {Type O LastRead -1 FirstWrite 0}
		p_dst2_cols_read_out {Type O LastRead -1 FirstWrite 0}}
	read_r {
		Mat_0_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xFDuplicate637 {
		src_V_V {Type I LastRead 3 FirstWrite -1}
		dst_V_V {Type O LastRead -1 FirstWrite 3}
		dst1_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_rows_read {Type I LastRead 0 FirstWrite -1}
		p_src_cols_read {Type I LastRead 0 FirstWrite -1}}
	duplicateMat_Loop_2_2 {
		dst_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 3}
		dst1_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	write797 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_0_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	duplicateMat438 {
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	duplicateMat438_Bloc {
		p_src_cols_load7_out_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat438_Loop {
		p_src_cols_load7_loc {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		src_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load7_loc_out {Type O LastRead -1 FirstWrite 0}}
	read_r {
		Mat_0_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xFDuplicate_1 {
		p_src_mat_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_dst2_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load7_loc {Type I LastRead 0 FirstWrite -1}}
	duplicateMat438_Loop_1 {
		dst_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		dst1_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	write797 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_0_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	write797 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_0_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	get_12th_segment {
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		bottom_data_V {Type O LastRead -1 FirstWrite 2}}
	get_12th_segment_Loo {
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		bottom_data_V {Type O LastRead -1 FirstWrite 2}}
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
		crop_width_read {Type I LastRead 0 FirstWrite -1}}
	sectors_weed_classif {
		weed_mask_tmp_data_V {Type I LastRead 10 FirstWrite -1}
		weed_mask_out_data_V {Type IO LastRead 8 FirstWrite 3}
		opened_data_V {Type I LastRead 3 FirstWrite -1}
		segments {Type I LastRead -1 FirstWrite -1}}
	bitwise_and {
		p_src1_data_V {Type I LastRead 3 FirstWrite -1}
		p_src2_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 3}}
	zero_0_180_320_1_s {
		p_src1_data_V {Type O LastRead -1 FirstWrite 3}}
	merge {
		p_src1_data_V {Type I LastRead 0 FirstWrite -1}
		p_src2_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 0}}
	merge_Block_crit_e {
		p_src1_cols_load7_out_out {Type O LastRead -1 FirstWrite 0}}
	merge_Loop_Read_Mat_s {
		p_src1_cols_load7_loc {Type I LastRead 0 FirstWrite -1}
		p_src1_data_V {Type I LastRead 0 FirstWrite -1}
		p_in1_V_V {Type O LastRead -1 FirstWrite 6}
		p_src2_data_V {Type I LastRead 0 FirstWrite -1}
		p_in2_V_V {Type O LastRead -1 FirstWrite 6}
		p_in3_V_V {Type O LastRead -1 FirstWrite 6}
		p_src1_cols_load7_loc_out {Type O LastRead -1 FirstWrite 0}}
	read_r {
		Mat_0_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	read_r {
		Mat_0_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xfChannelCombine {
		p_in1_V_V {Type I LastRead 2 FirstWrite -1}
		p_in2_V_V {Type I LastRead 2 FirstWrite -1}
		p_in3_V_V {Type I LastRead 2 FirstWrite -1}
		p_out_V_V {Type O LastRead -1 FirstWrite 2}
		p_src1_cols_load7_loc {Type I LastRead 0 FirstWrite -1}}
	merge_Loop_Write_Mat {
		p_out_V_V {Type I LastRead 2 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 0}}
	write_1 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	resize_2 {
		p_src_data_V {Type I LastRead 16 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 17}}
	xFResizeAreaUpScale_s {
		stream_in_data_V {Type I LastRead 16 FirstWrite -1}
		resize_out_data_V {Type O LastRead -1 FirstWrite 17}}
	xFUDivAreaUp_2 {
		in_n {Type I LastRead 0 FirstWrite -1}
		in_d {Type I LastRead 0 FirstWrite -1}}
	CoreProcessUpArea_2 {
		A0 {Type I LastRead 0 FirstWrite -1}
		B0 {Type I LastRead 0 FirstWrite -1}
		A1 {Type I LastRead 0 FirstWrite -1}
		B1 {Type I LastRead 0 FirstWrite -1}
		Wx {Type I LastRead 0 FirstWrite -1}
		Wy {Type I LastRead 0 FirstWrite -1}}
	CoreProcessUpArea_2 {
		A0 {Type I LastRead 0 FirstWrite -1}
		B0 {Type I LastRead 0 FirstWrite -1}
		A1 {Type I LastRead 0 FirstWrite -1}
		B1 {Type I LastRead 0 FirstWrite -1}
		Wx {Type I LastRead 0 FirstWrite -1}
		Wy {Type I LastRead 0 FirstWrite -1}}
	CoreProcessUpArea_2 {
		A0 {Type I LastRead 0 FirstWrite -1}
		B0 {Type I LastRead 0 FirstWrite -1}
		A1 {Type I LastRead 0 FirstWrite -1}
		B1 {Type I LastRead 0 FirstWrite -1}
		Wx {Type I LastRead 0 FirstWrite -1}
		Wy {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels {
		tmp_buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_1_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_2_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_3_V_read {Type I LastRead 0 FirstWrite -1}
		val1_V_read {Type I LastRead 0 FirstWrite -1}
		pos_r {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels {
		tmp_buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_1_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_2_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_3_V_read {Type I LastRead 0 FirstWrite -1}
		val1_V_read {Type I LastRead 0 FirstWrite -1}
		pos_r {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels {
		tmp_buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_1_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_2_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_3_V_read {Type I LastRead 0 FirstWrite -1}
		val1_V_read {Type I LastRead 0 FirstWrite -1}
		pos_r {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels {
		tmp_buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_1_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_2_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_3_V_read {Type I LastRead 0 FirstWrite -1}
		val1_V_read {Type I LastRead 0 FirstWrite -1}
		pos_r {Type I LastRead 0 FirstWrite -1}}
	add_2749 {
		p_src1_data_V {Type I LastRead 3 FirstWrite -1}
		p_src2_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 3}}
	xFarithm_proc_2811 {
		p_src1_data_V {Type I LastRead 3 FirstWrite -1}
		p_src2_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2419233", "Max" : "2419233"}
	, {"Name" : "Interval", "Min" : "2419202", "Max" : "2419202"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_in_cols { ap_none {  { img_in_cols in_data 0 12 }  { img_in_cols_ap_vld in_vld 0 1 } } }
	img_in_data_V { ap_fifo {  { img_in_data_V_dout fifo_data 0 24 }  { img_in_data_V_empty_n fifo_status 0 1 }  { img_in_data_V_read fifo_update 1 1 } } }
	img_out_data_V { ap_fifo {  { img_out_data_V_din fifo_data 1 24 }  { img_out_data_V_full_n fifo_status 0 1 }  { img_out_data_V_write fifo_update 1 1 } } }
}
