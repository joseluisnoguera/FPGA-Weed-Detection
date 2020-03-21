set moduleName get_vegetation_image_4
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
set C_modelName {get_vegetation_image.4}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in_cols int 10 regular {fifo 0}  }
	{ img_in_data_V int 24 regular {fifo 0}  }
	{ img_out_data_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in_cols", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "img_out_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ img_in_cols_dout sc_in sc_lv 10 signal 0 } 
	{ img_in_cols_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_in_cols_read sc_out sc_logic 1 signal 0 } 
	{ img_in_data_V_dout sc_in sc_lv 24 signal 1 } 
	{ img_in_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ img_in_data_V_read sc_out sc_logic 1 signal 1 } 
	{ img_out_data_V_din sc_out sc_lv 8 signal 2 } 
	{ img_out_data_V_full_n sc_in sc_logic 1 signal 2 } 
	{ img_out_data_V_write sc_out sc_logic 1 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
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
 	{ "name": "img_in_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "img_in_cols", "role": "dout" }} , 
 	{ "name": "img_in_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_cols", "role": "empty_n" }} , 
 	{ "name": "img_in_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_cols", "role": "read" }} , 
 	{ "name": "img_in_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "dout" }} , 
 	{ "name": "img_in_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "empty_n" }} , 
 	{ "name": "img_in_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "read" }} , 
 	{ "name": "img_out_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "din" }} , 
 	{ "name": "img_out_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "full_n" }} , 
 	{ "name": "img_out_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "19", "34", "41", "54", "55", "62", "63", "64", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89"],
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
		"InputProcess" : [
			{"ID" : "1", "Name" : "get_vegetation_image_113_U0", "ReadyCount" : "get_vegetation_image_113_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "duplicateMat635769_U0", "ReadyCount" : "duplicateMat635769_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "64", "Name" : "convert_fp_to_8b770_U0"}],
		"Port" : [
			{"Name" : "img_in_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "get_vegetation_image_113_U0", "Port" : "img_in_cols"}]},
			{"Name" : "img_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "duplicateMat635769_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convert_fp_to_8b770_U0", "Port" : "img_out_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_113_U0", "Parent" : "0",
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
			{"Name" : "img_in_0_rows0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "66"},
			{"Name" : "img_in_0_cols0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "67"},
			{"Name" : "img_in_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_in_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "img_in_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0", "Parent" : "0", "Child" : ["3", "4", "6", "7", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
			{"ID" : "3", "Name" : "duplicateMat_Block_U0", "ReadyCount" : "duplicateMat_Block_U0_ap_ready_count"},
			{"ID" : "4", "Name" : "duplicateMat_Loop_Re_U0", "ReadyCount" : "duplicateMat_Loop_Re_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "duplicateMat_Loop_2_U0"}],
		"Port" : [
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "68",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_src_cols"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "duplicateMat_Loop_Re_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "66",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_dst1_rows"}]},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "67",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_dst1_cols"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "69",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "duplicateMat_Loop_2_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "70",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "duplicateMat_Loop_2_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.duplicateMat_Block_U0", "Parent" : "2",
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
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "66"},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "67"},
			{"Name" : "p_dst1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.duplicateMat_Loop_Re_U0", "Parent" : "2", "Child" : ["5"],
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
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "tmp_V_read779_fu_105", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read779_fu_105", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.duplicateMat_Loop_Re_U0.tmp_V_read779_fu_105", "Parent" : "4",
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.xFDuplicate645_U0", "Parent" : "2",
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
		"StartSource" : "4",
		"StartFifo" : "start_for_xFDuplimb6_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.duplicateMat_Loop_2_U0", "Parent" : "2", "Child" : ["8", "9"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_duplicalbW_U",
		"Port" : [
			{"Name" : "p_dst1_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "call_ln114_write_1_fu_100", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "70",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "call_ln115_write_1_fu_108", "Port" : "Mat_9_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln114_write_1_fu_100", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln115_write_1_fu_108", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.duplicateMat_Loop_2_U0.call_ln114_write_1_fu_100", "Parent" : "7",
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.duplicateMat_Loop_2_U0.call_ln115_write_1_fu_108", "Parent" : "7",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.p_src_cols_load10_loc_5_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.p_dst1_rows_c_i_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.p_dst1_cols_c_i_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.src_V_V_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.p_src_cols_load10_loc_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.dst_V_V_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.dst1_V_V_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.start_for_duplicalbW_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat635769_U0.start_for_xFDuplimb6_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0", "Parent" : "0", "Child" : ["20", "21", "23", "24", "27", "28", "29", "30", "31", "32", "33"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_duplicasc4_U",
		"InputProcess" : [
			{"ID" : "20", "Name" : "duplicateMat_Block_1_U0", "ReadyCount" : "duplicateMat_Block_1_U0_ap_ready_count"},
			{"ID" : "21", "Name" : "duplicateMat_Loop_Re_1_U0", "ReadyCount" : "duplicateMat_Loop_Re_1_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "24", "Name" : "duplicateMat_Loop_2_1_U0"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "69",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "duplicateMat_Loop_Re_1_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "71",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "duplicateMat_Loop_2_1_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "72",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "duplicateMat_Loop_2_1_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.duplicateMat_Block_1_U0", "Parent" : "19",
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
			{"Name" : "p_src_cols_load10_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.duplicateMat_Loop_Re_1_U0", "Parent" : "19", "Child" : ["22"],
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
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "tmp_V_read779_fu_105", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read779_fu_105", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.duplicateMat_Loop_Re_1_U0.tmp_V_read779_fu_105", "Parent" : "21",
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
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.xFDuplicate_U0", "Parent" : "19",
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
		"StartSource" : "21",
		"StartFifo" : "start_for_xFDuplincg_U",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "p_dst1_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "p_dst2_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.duplicateMat_Loop_2_1_U0", "Parent" : "19", "Child" : ["25", "26"],
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
		"StartSource" : "23",
		"StartFifo" : "start_for_duplicaocq_U",
		"Port" : [
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "call_ln114_write_1_fu_90", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "call_ln115_write_1_fu_98", "Port" : "Mat_9_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln114_write_1_fu_90", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln115_write_1_fu_98", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.duplicateMat_Loop_2_1_U0.call_ln114_write_1_fu_90", "Parent" : "24",
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
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.duplicateMat_Loop_2_1_U0.call_ln115_write_1_fu_98", "Parent" : "24",
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.p_src_cols_load10_loc_2_U", "Parent" : "19"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.src_V_V_U", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.p_src_cols_load10_loc_U", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.dst_V_V_U", "Parent" : "19"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.dst1_V_V_U", "Parent" : "19"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.start_for_xFDuplincg_U", "Parent" : "19"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_U0.start_for_duplicaocq_U", "Parent" : "19"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.extract_channels_U0", "Parent" : "0", "Child" : ["35", "37", "39"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_extracttde_U",
		"InputProcess" : [
			{"ID" : "35", "Name" : "extractChannel432_U0", "ReadyCount" : "extractChannel432_U0_ap_ready_count"},
			{"ID" : "37", "Name" : "extractChannel433_U0", "ReadyCount" : "extractChannel433_U0_ap_ready_count"},
			{"ID" : "39", "Name" : "extractChannel434_U0", "ReadyCount" : "extractChannel434_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "35", "Name" : "extractChannel432_U0"},
			{"ID" : "37", "Name" : "extractChannel433_U0"},
			{"ID" : "39", "Name" : "extractChannel434_U0"}],
		"Port" : [
			{"Name" : "img_in_0_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "70",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "extractChannel432_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_in_1_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "71",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "extractChannel433_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_in_2_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "72",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "extractChannel434_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "r_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "73",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "extractChannel434_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "g_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "74",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "extractChannel433_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "b_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "75",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "extractChannel432_U0", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.extract_channels_U0.extractChannel432_U0", "Parent" : "34", "Child" : ["36"],
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
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "70",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "75",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.extract_channels_U0.extractChannel432_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "35",
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
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.extract_channels_U0.extractChannel433_U0", "Parent" : "34", "Child" : ["38"],
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
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "71",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "74",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.extract_channels_U0.extractChannel433_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "37",
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.extract_channels_U0.extractChannel434_U0", "Parent" : "34", "Child" : ["40"],
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
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "72",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "73",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.extract_channels_U0.extractChannel434_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "39",
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
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0", "Parent" : "0", "Child" : ["42", "44", "46", "48", "49", "50", "51", "52", "53"],
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
			{"ID" : "42", "Name" : "minMaxLoc435_U0", "ReadyCount" : "minMaxLoc435_U0_ap_ready_count"},
			{"ID" : "44", "Name" : "minMaxLoc436_U0", "ReadyCount" : "minMaxLoc436_U0_ap_ready_count"},
			{"ID" : "46", "Name" : "minMaxLoc_U0", "ReadyCount" : "minMaxLoc_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "48", "Name" : "p_prop_ret_max_b_dc_U0"},
			{"ID" : "49", "Name" : "p_prop_ret_max_g_dc_U0"},
			{"ID" : "50", "Name" : "p_prop_ret_max_r_dc_U0"}],
		"Port" : [
			{"Name" : "r_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "minMaxLoc435_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "g_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "minMaxLoc436_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "b_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "minMaxLoc_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "76",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "p_prop_ret_max_r_dc_U0", "Port" : "max_r_out"}]},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "77",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "p_prop_ret_max_g_dc_U0", "Port" : "max_g_out"}]},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "78",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "p_prop_ret_max_b_dc_U0", "Port" : "max_b_out"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.minMaxLoc435_U0", "Parent" : "41", "Child" : ["43"],
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
					{"ID" : "43", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.minMaxLoc435_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "42",
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
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.minMaxLoc436_U0", "Parent" : "41", "Child" : ["45"],
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
					{"ID" : "45", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.minMaxLoc436_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "44",
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
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.minMaxLoc_U0", "Parent" : "41", "Child" : ["47"],
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
					{"ID" : "47", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.minMaxLoc_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "46",
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
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.p_prop_ret_max_b_dc_U0", "Parent" : "41",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "53"},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "max_b_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.p_prop_ret_max_g_dc_U0", "Parent" : "41",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "52"},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "max_g_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.p_prop_ret_max_r_dc_U0", "Parent" : "41",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "42", "DependentChan" : "51"},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "max_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.max_r_dc_channel_U", "Parent" : "41"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.max_g_dc_channel_U", "Parent" : "41"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_max_from_channel_U0.max_b_dc_channel_U", "Parent" : "41"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_U0", "Parent" : "0",
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
			{"Name" : "max_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "max_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "max_g_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "max_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "max_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "max_g_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "max_b_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_exg_image_U0", "Parent" : "0", "Child" : ["56", "57", "58", "59", "60", "61"],
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
			{"Name" : "max_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "max_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "max_g_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "max_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "veg_img_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "veg_img_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "min_value_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "max_value_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_exg_image_U0.ip_accel_app_sdivpcA_U182", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_exg_image_U0.ip_accel_app_sdivpcA_U183", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_exg_image_U0.ip_accel_app_sdivpcA_U184", "Parent" : "55"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_exg_image_U0.ip_accel_app_sdivqcK_U185", "Parent" : "55"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_exg_image_U0.ip_accel_app_sdivqcK_U186", "Parent" : "55"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.get_exg_image_U0.ip_accel_app_sdivqcK_U187", "Parent" : "55"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_3_U0", "Parent" : "0",
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
			{"Name" : "max_value_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "max_value_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_vegetation_image_2_U0", "Parent" : "0",
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
			{"Name" : "min_value_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "min_value_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "85"},
			{"Name" : "min_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "min_value_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convert_fp_to_8b770_U0", "Parent" : "0", "Child" : ["65"],
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
			{"Name" : "min_value_V_c17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "min_value_V_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub_ln703_cast_loc_c", "Type" : "None", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "87"},
			{"Name" : "veg_temp_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "veg_temp_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_out_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convert_fp_to_8b770_U0.ip_accel_app_sdivrcU_U203", "Parent" : "64"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_0_rows_channe_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_0_cols_channe_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_cols_c_i_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_0_data_V_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_1_data_V_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_2_data_V_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_3_data_V_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_channel_data_V_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.g_channel_data_V_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_channel_data_V_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_r_c_i_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_g_c_i_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_b_c_i_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_r_c14_i_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_g_c15_i_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_b_c16_i_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.veg_temp_data_V_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.min_value_V_c_i_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_value_V_c_i_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.extLd_cast_loc_chann_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.min_value_V_c17_i_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sub_ln703_cast_loc_c_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_duplicasc4_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_extracttde_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		img_out_data_V {Type O LastRead -1 FirstWrite 23}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2419217", "Max" : "2419217"}
	, {"Name" : "Interval", "Min" : "2419202", "Max" : "2419202"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_in_cols { ap_fifo {  { img_in_cols_dout fifo_data 0 10 }  { img_in_cols_empty_n fifo_status 0 1 }  { img_in_cols_read fifo_update 1 1 } } }
	img_in_data_V { ap_fifo {  { img_in_data_V_dout fifo_data 0 24 }  { img_in_data_V_empty_n fifo_status 0 1 }  { img_in_data_V_read fifo_update 1 1 } } }
	img_out_data_V { ap_fifo {  { img_out_data_V_din fifo_data 1 8 }  { img_out_data_V_full_n fifo_status 0 1 }  { img_out_data_V_write fifo_update 1 1 } } }
}
