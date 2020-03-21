set moduleName extract_channels
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
set C_modelName {extract_channels}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in_0_data_V int 24 regular {fifo 0 volatile }  }
	{ img_in_1_data_V int 24 regular {fifo 0 volatile }  }
	{ img_in_2_data_V int 24 regular {fifo 0 volatile }  }
	{ r_channel_data_V int 8 regular {fifo 1 volatile }  }
	{ g_channel_data_V int 8 regular {fifo 1 volatile }  }
	{ b_channel_data_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in_0_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_1_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_2_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "r_channel_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "g_channel_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_channel_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ img_in_0_data_V_dout sc_in sc_lv 24 signal 0 } 
	{ img_in_0_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_in_0_data_V_read sc_out sc_logic 1 signal 0 } 
	{ img_in_1_data_V_dout sc_in sc_lv 24 signal 1 } 
	{ img_in_1_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ img_in_1_data_V_read sc_out sc_logic 1 signal 1 } 
	{ img_in_2_data_V_dout sc_in sc_lv 24 signal 2 } 
	{ img_in_2_data_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_in_2_data_V_read sc_out sc_logic 1 signal 2 } 
	{ r_channel_data_V_din sc_out sc_lv 8 signal 3 } 
	{ r_channel_data_V_full_n sc_in sc_logic 1 signal 3 } 
	{ r_channel_data_V_write sc_out sc_logic 1 signal 3 } 
	{ g_channel_data_V_din sc_out sc_lv 8 signal 4 } 
	{ g_channel_data_V_full_n sc_in sc_logic 1 signal 4 } 
	{ g_channel_data_V_write sc_out sc_logic 1 signal 4 } 
	{ b_channel_data_V_din sc_out sc_lv 8 signal 5 } 
	{ b_channel_data_V_full_n sc_in sc_logic 1 signal 5 } 
	{ b_channel_data_V_write sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "img_in_0_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "img_in_0_data_V", "role": "dout" }} , 
 	{ "name": "img_in_0_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_0_data_V", "role": "empty_n" }} , 
 	{ "name": "img_in_0_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_0_data_V", "role": "read" }} , 
 	{ "name": "img_in_1_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "img_in_1_data_V", "role": "dout" }} , 
 	{ "name": "img_in_1_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_1_data_V", "role": "empty_n" }} , 
 	{ "name": "img_in_1_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_1_data_V", "role": "read" }} , 
 	{ "name": "img_in_2_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "img_in_2_data_V", "role": "dout" }} , 
 	{ "name": "img_in_2_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_2_data_V", "role": "empty_n" }} , 
 	{ "name": "img_in_2_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_2_data_V", "role": "read" }} , 
 	{ "name": "r_channel_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "r_channel_data_V", "role": "din" }} , 
 	{ "name": "r_channel_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_channel_data_V", "role": "full_n" }} , 
 	{ "name": "r_channel_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_channel_data_V", "role": "write" }} , 
 	{ "name": "g_channel_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g_channel_data_V", "role": "din" }} , 
 	{ "name": "g_channel_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_channel_data_V", "role": "full_n" }} , 
 	{ "name": "g_channel_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_channel_data_V", "role": "write" }} , 
 	{ "name": "b_channel_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_channel_data_V", "role": "din" }} , 
 	{ "name": "b_channel_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_channel_data_V", "role": "full_n" }} , 
 	{ "name": "b_channel_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_channel_data_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5"],
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
		"InputProcess" : [
			{"ID" : "1", "Name" : "extractChannel432_U0", "ReadyCount" : "extractChannel432_U0_ap_ready_count"},
			{"ID" : "3", "Name" : "extractChannel433_U0", "ReadyCount" : "extractChannel433_U0_ap_ready_count"},
			{"ID" : "5", "Name" : "extractChannel434_U0", "ReadyCount" : "extractChannel434_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "extractChannel432_U0"},
			{"ID" : "3", "Name" : "extractChannel433_U0"},
			{"ID" : "5", "Name" : "extractChannel434_U0"}],
		"Port" : [
			{"Name" : "img_in_0_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "extractChannel432_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_in_1_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "extractChannel433_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_in_2_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "extractChannel434_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "r_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "extractChannel434_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "g_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "extractChannel433_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "b_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "extractChannel432_U0", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.extractChannel432_U0", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.extractChannel432_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "1",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.extractChannel433_U0", "Parent" : "0", "Child" : ["4"],
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
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.extractChannel433_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "3",
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
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.extractChannel434_U0", "Parent" : "0", "Child" : ["6"],
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
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.extractChannel434_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "5",
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
			{"Name" : "p_channel", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		p_channel {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "58142", "Max" : "58142"}
	, {"Name" : "Interval", "Min" : "58143", "Max" : "58143"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_in_0_data_V { ap_fifo {  { img_in_0_data_V_dout fifo_data 0 24 }  { img_in_0_data_V_empty_n fifo_status 0 1 }  { img_in_0_data_V_read fifo_update 1 1 } } }
	img_in_1_data_V { ap_fifo {  { img_in_1_data_V_dout fifo_data 0 24 }  { img_in_1_data_V_empty_n fifo_status 0 1 }  { img_in_1_data_V_read fifo_update 1 1 } } }
	img_in_2_data_V { ap_fifo {  { img_in_2_data_V_dout fifo_data 0 24 }  { img_in_2_data_V_empty_n fifo_status 0 1 }  { img_in_2_data_V_read fifo_update 1 1 } } }
	r_channel_data_V { ap_fifo {  { r_channel_data_V_din fifo_data 1 8 }  { r_channel_data_V_full_n fifo_status 0 1 }  { r_channel_data_V_write fifo_update 1 1 } } }
	g_channel_data_V { ap_fifo {  { g_channel_data_V_din fifo_data 1 8 }  { g_channel_data_V_full_n fifo_status 0 1 }  { g_channel_data_V_write fifo_update 1 1 } } }
	b_channel_data_V { ap_fifo {  { b_channel_data_V_din fifo_data 1 8 }  { b_channel_data_V_full_n fifo_status 0 1 }  { b_channel_data_V_write fifo_update 1 1 } } }
}
