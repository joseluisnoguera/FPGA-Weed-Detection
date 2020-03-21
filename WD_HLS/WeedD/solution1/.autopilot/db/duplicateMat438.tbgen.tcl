set moduleName duplicateMat438
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
set C_modelName {duplicateMat438}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_data_V int 8 regular {fifo 0}  }
	{ p_dst1_data_V int 8 regular {fifo 1}  }
	{ p_dst2_data_V int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst1_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst2_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ p_src_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ p_src_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_data_V_read sc_out sc_logic 1 signal 0 } 
	{ p_dst1_data_V_din sc_out sc_lv 8 signal 1 } 
	{ p_dst1_data_V_full_n sc_in sc_logic 1 signal 1 } 
	{ p_dst1_data_V_write sc_out sc_logic 1 signal 1 } 
	{ p_dst2_data_V_din sc_out sc_lv 8 signal 2 } 
	{ p_dst2_data_V_full_n sc_in sc_logic 1 signal 2 } 
	{ p_dst2_data_V_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "p_src_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "dout" }} , 
 	{ "name": "p_src_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "read" }} , 
 	{ "name": "p_dst1_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "din" }} , 
 	{ "name": "p_dst1_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "full_n" }} , 
 	{ "name": "p_dst1_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "write" }} , 
 	{ "name": "p_dst2_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "din" }} , 
 	{ "name": "p_dst2_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "full_n" }} , 
 	{ "name": "p_dst2_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5", "8", "9", "10", "11", "12", "13", "14"],
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
			{"ID" : "1", "Name" : "duplicateMat438_Bloc_U0", "ReadyCount" : "duplicateMat438_Bloc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "duplicateMat438_Loop_U0", "ReadyCount" : "duplicateMat438_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "duplicateMat438_Loop_1_U0"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "duplicateMat438_Loop_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "duplicateMat438_Loop_1_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "duplicateMat438_Loop_1_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_Bloc_U0", "Parent" : "0",
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
			{"Name" : "p_src_cols_load7_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_Loop_U0", "Parent" : "0", "Child" : ["3"],
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
			{"Name" : "p_src_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "tmp_V_read_r_fu_105", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load7_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read_r_fu_105", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_Loop_U0.tmp_V_read_r_fu_105", "Parent" : "2",
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
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFDuplicate_1_U0", "Parent" : "0",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_xFDupliDeQ_U",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "p_dst1_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "p_dst2_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_Loop_1_U0", "Parent" : "0", "Child" : ["6", "7"],
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
		"StartSource" : "4",
		"StartFifo" : "start_for_duplicaEe0_U",
		"Port" : [
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "call_ln114_write797_fu_90", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "call_ln115_write797_fu_98", "Port" : "Mat_0_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln114_write797_fu_90", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln115_write797_fu_98", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_Loop_1_U0.call_ln114_write797_fu_90", "Parent" : "5",
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat438_Loop_1_U0.call_ln115_write797_fu_98", "Parent" : "5",
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
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_cols_load7_loc_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_V_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_cols_load7_loc_s_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_V_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst1_V_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFDupliDeQ_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_duplicaEe0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		Mat_0_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "58144", "Max" : "58144"}
	, {"Name" : "Interval", "Min" : "58142", "Max" : "58142"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_data_V { ap_fifo {  { p_src_data_V_dout fifo_data 0 8 }  { p_src_data_V_empty_n fifo_status 0 1 }  { p_src_data_V_read fifo_update 1 1 } } }
	p_dst1_data_V { ap_fifo {  { p_dst1_data_V_din fifo_data 1 8 }  { p_dst1_data_V_full_n fifo_status 0 1 }  { p_dst1_data_V_write fifo_update 1 1 } } }
	p_dst2_data_V { ap_fifo {  { p_dst2_data_V_din fifo_data 1 8 }  { p_dst2_data_V_full_n fifo_status 0 1 }  { p_dst2_data_V_write fifo_update 1 1 } } }
}