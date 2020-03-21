set moduleName get_max_from_channel
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
set C_modelName {get_max_from_channel}
set C_modelType { void 0 }
set C_modelArgList {
	{ r_channel_data_V int 8 regular {fifo 0 volatile }  }
	{ g_channel_data_V int 8 regular {fifo 0 volatile }  }
	{ b_channel_data_V int 8 regular {fifo 0 volatile }  }
	{ max_r_out int 32 regular {fifo 1}  }
	{ max_g_out int 32 regular {fifo 1}  }
	{ max_b_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_channel_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "g_channel_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b_channel_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "max_r_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_g_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_b_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ r_channel_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ r_channel_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ r_channel_data_V_read sc_out sc_logic 1 signal 0 } 
	{ g_channel_data_V_dout sc_in sc_lv 8 signal 1 } 
	{ g_channel_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ g_channel_data_V_read sc_out sc_logic 1 signal 1 } 
	{ b_channel_data_V_dout sc_in sc_lv 8 signal 2 } 
	{ b_channel_data_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ b_channel_data_V_read sc_out sc_logic 1 signal 2 } 
	{ max_r_out_din sc_out sc_lv 32 signal 3 } 
	{ max_r_out_full_n sc_in sc_logic 1 signal 3 } 
	{ max_r_out_write sc_out sc_logic 1 signal 3 } 
	{ max_g_out_din sc_out sc_lv 32 signal 4 } 
	{ max_g_out_full_n sc_in sc_logic 1 signal 4 } 
	{ max_g_out_write sc_out sc_logic 1 signal 4 } 
	{ max_b_out_din sc_out sc_lv 32 signal 5 } 
	{ max_b_out_full_n sc_in sc_logic 1 signal 5 } 
	{ max_b_out_write sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "r_channel_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "r_channel_data_V", "role": "dout" }} , 
 	{ "name": "r_channel_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_channel_data_V", "role": "empty_n" }} , 
 	{ "name": "r_channel_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_channel_data_V", "role": "read" }} , 
 	{ "name": "g_channel_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g_channel_data_V", "role": "dout" }} , 
 	{ "name": "g_channel_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_channel_data_V", "role": "empty_n" }} , 
 	{ "name": "g_channel_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_channel_data_V", "role": "read" }} , 
 	{ "name": "b_channel_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_channel_data_V", "role": "dout" }} , 
 	{ "name": "b_channel_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_channel_data_V", "role": "empty_n" }} , 
 	{ "name": "b_channel_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_channel_data_V", "role": "read" }} , 
 	{ "name": "max_r_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_r_out", "role": "din" }} , 
 	{ "name": "max_r_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_r_out", "role": "full_n" }} , 
 	{ "name": "max_r_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_r_out", "role": "write" }} , 
 	{ "name": "max_g_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_g_out", "role": "din" }} , 
 	{ "name": "max_g_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_g_out", "role": "full_n" }} , 
 	{ "name": "max_g_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_g_out", "role": "write" }} , 
 	{ "name": "max_b_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_b_out", "role": "din" }} , 
 	{ "name": "max_b_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_b_out", "role": "full_n" }} , 
 	{ "name": "max_b_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_b_out", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "8", "9", "10", "11", "12"],
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
			{"ID" : "1", "Name" : "minMaxLoc435_U0", "ReadyCount" : "minMaxLoc435_U0_ap_ready_count"},
			{"ID" : "3", "Name" : "minMaxLoc436_U0", "ReadyCount" : "minMaxLoc436_U0_ap_ready_count"},
			{"ID" : "5", "Name" : "minMaxLoc_U0", "ReadyCount" : "minMaxLoc_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "p_prop_ret_max_b_dc_U0"},
			{"ID" : "8", "Name" : "p_prop_ret_max_g_dc_U0"},
			{"ID" : "9", "Name" : "p_prop_ret_max_r_dc_U0"}],
		"Port" : [
			{"Name" : "r_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "minMaxLoc435_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "g_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "minMaxLoc436_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "b_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "minMaxLoc_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "p_prop_ret_max_r_dc_U0", "Port" : "max_r_out"}]},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "p_prop_ret_max_g_dc_U0", "Port" : "max_g_out"}]},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "p_prop_ret_max_b_dc_U0", "Port" : "max_b_out"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.minMaxLoc435_U0", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.minMaxLoc435_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "1",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.minMaxLoc436_U0", "Parent" : "0", "Child" : ["4"],
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
					{"ID" : "4", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.minMaxLoc436_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "3",
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
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.minMaxLoc_U0", "Parent" : "0", "Child" : ["6"],
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
					{"ID" : "6", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.minMaxLoc_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "5",
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
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_prop_ret_max_b_dc_U0", "Parent" : "0",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "12"},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_b_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_prop_ret_max_g_dc_U0", "Parent" : "0",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "11"},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_g_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_prop_ret_max_r_dc_U0", "Parent" : "0",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "10"},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_r_dc_channel_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_g_dc_channel_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_b_dc_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		max_r_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "58142", "Max" : "58142"}
	, {"Name" : "Interval", "Min" : "58143", "Max" : "58143"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_channel_data_V { ap_fifo {  { r_channel_data_V_dout fifo_data 0 8 }  { r_channel_data_V_empty_n fifo_status 0 1 }  { r_channel_data_V_read fifo_update 1 1 } } }
	g_channel_data_V { ap_fifo {  { g_channel_data_V_dout fifo_data 0 8 }  { g_channel_data_V_empty_n fifo_status 0 1 }  { g_channel_data_V_read fifo_update 1 1 } } }
	b_channel_data_V { ap_fifo {  { b_channel_data_V_dout fifo_data 0 8 }  { b_channel_data_V_empty_n fifo_status 0 1 }  { b_channel_data_V_read fifo_update 1 1 } } }
	max_r_out { ap_fifo {  { max_r_out_din fifo_data 1 32 }  { max_r_out_full_n fifo_status 0 1 }  { max_r_out_write fifo_update 1 1 } } }
	max_g_out { ap_fifo {  { max_g_out_din fifo_data 1 32 }  { max_g_out_full_n fifo_status 0 1 }  { max_g_out_write fifo_update 1 1 } } }
	max_b_out { ap_fifo {  { max_b_out_din fifo_data 1 32 }  { max_b_out_full_n fifo_status 0 1 }  { max_b_out_write fifo_update 1 1 } } }
}
