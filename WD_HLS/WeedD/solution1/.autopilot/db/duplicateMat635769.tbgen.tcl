set moduleName duplicateMat635769
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
set C_modelName {duplicateMat635769}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_cols int 10 regular {fifo 0}  }
	{ p_src_data_V int 24 regular {fifo 0}  }
	{ p_dst1_rows int 9 regular {pointer 0}  }
	{ p_dst1_cols int 10 regular {pointer 0}  }
	{ p_dst1_data_V int 24 regular {fifo 1}  }
	{ p_dst2_data_V int 24 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_cols", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst1_rows", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst1_cols", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst1_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst2_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ p_src_cols_dout sc_in sc_lv 10 signal 0 } 
	{ p_src_cols_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_cols_read sc_out sc_logic 1 signal 0 } 
	{ p_src_data_V_dout sc_in sc_lv 24 signal 1 } 
	{ p_src_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_data_V_read sc_out sc_logic 1 signal 1 } 
	{ p_dst1_rows sc_in sc_lv 9 signal 2 } 
	{ p_dst1_cols sc_in sc_lv 10 signal 3 } 
	{ p_dst1_data_V_din sc_out sc_lv 24 signal 4 } 
	{ p_dst1_data_V_full_n sc_in sc_logic 1 signal 4 } 
	{ p_dst1_data_V_write sc_out sc_logic 1 signal 4 } 
	{ p_dst2_data_V_din sc_out sc_lv 24 signal 5 } 
	{ p_dst2_data_V_full_n sc_in sc_logic 1 signal 5 } 
	{ p_dst2_data_V_write sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_dst1_rows_ap_vld sc_in sc_logic 1 invld 2 } 
	{ p_dst1_cols_ap_vld sc_in sc_logic 1 invld 3 } 
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
 	{ "name": "p_src_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_src_cols", "role": "dout" }} , 
 	{ "name": "p_src_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols", "role": "read" }} , 
 	{ "name": "p_src_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "dout" }} , 
 	{ "name": "p_src_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "read" }} , 
 	{ "name": "p_dst1_rows", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_dst1_rows", "role": "default" }} , 
 	{ "name": "p_dst1_cols", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_dst1_cols", "role": "default" }} , 
 	{ "name": "p_dst1_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "din" }} , 
 	{ "name": "p_dst1_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "full_n" }} , 
 	{ "name": "p_dst1_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "write" }} , 
 	{ "name": "p_dst2_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "din" }} , 
 	{ "name": "p_dst2_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "full_n" }} , 
 	{ "name": "p_dst2_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_dst1_rows_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_dst1_rows", "role": "ap_vld" }} , 
 	{ "name": "p_dst1_cols_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_dst1_cols", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
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
			{"ID" : "1", "Name" : "duplicateMat_Block_U0", "ReadyCount" : "duplicateMat_Block_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "duplicateMat_Loop_Re_U0", "ReadyCount" : "duplicateMat_Loop_Re_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "duplicateMat_Loop_2_U0"}],
		"Port" : [
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_src_cols"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "duplicateMat_Loop_Re_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_dst1_rows"}]},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_dst1_cols"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "duplicateMat_Loop_2_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "duplicateMat_Loop_2_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat_Block_U0", "Parent" : "0",
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
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "p_dst1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat_Loop_Re_U0", "Parent" : "0", "Child" : ["3"],
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
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "tmp_V_read779_fu_105", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read779_fu_105", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_Loop_Re_U0.tmp_V_read779_fu_105", "Parent" : "2",
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
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFDuplicate645_U0", "Parent" : "0",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_xFDuplimb6_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat_Loop_2_U0", "Parent" : "0", "Child" : ["6", "7"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_duplicalbW_U",
		"Port" : [
			{"Name" : "p_dst1_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "call_ln114_write_1_fu_100", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "call_ln115_write_1_fu_108", "Port" : "Mat_9_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln114_write_1_fu_100", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln115_write_1_fu_108", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_Loop_2_U0.call_ln114_write_1_fu_100", "Parent" : "5",
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_Loop_2_U0.call_ln115_write_1_fu_108", "Parent" : "5",
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
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_cols_load10_loc_5_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_dst1_rows_c_i_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_dst1_cols_c_i_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_V_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_cols_load10_loc_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_V_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst1_V_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_duplicalbW_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFDuplimb6_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "43743", "Max" : "58383"}
	, {"Name" : "Interval", "Min" : "43742", "Max" : "58142"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_cols { ap_fifo {  { p_src_cols_dout fifo_data 0 10 }  { p_src_cols_empty_n fifo_status 0 1 }  { p_src_cols_read fifo_update 1 1 } } }
	p_src_data_V { ap_fifo {  { p_src_data_V_dout fifo_data 0 24 }  { p_src_data_V_empty_n fifo_status 0 1 }  { p_src_data_V_read fifo_update 1 1 } } }
	p_dst1_rows { ap_none {  { p_dst1_rows in_data 0 9 }  { p_dst1_rows_ap_vld in_vld 0 1 } } }
	p_dst1_cols { ap_none {  { p_dst1_cols in_data 0 10 }  { p_dst1_cols_ap_vld in_vld 0 1 } } }
	p_dst1_data_V { ap_fifo {  { p_dst1_data_V_din fifo_data 1 24 }  { p_dst1_data_V_full_n fifo_status 0 1 }  { p_dst1_data_V_write fifo_update 1 1 } } }
	p_dst2_data_V { ap_fifo {  { p_dst2_data_V_din fifo_data 1 24 }  { p_dst2_data_V_full_n fifo_status 0 1 }  { p_dst2_data_V_write fifo_update 1 1 } } }
}
