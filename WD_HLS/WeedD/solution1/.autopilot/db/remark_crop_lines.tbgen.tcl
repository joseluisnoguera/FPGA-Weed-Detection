set moduleName remark_crop_lines
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
set C_modelName {remark_crop_lines}
set C_modelType { void 0 }
set C_modelArgList {
	{ eroded_0_data_V int 8 regular {fifo 0}  }
	{ eroded_1_data_V int 8 regular {fifo 2 volatile }  }
	{ eroded_2_data_V int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "eroded_0_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "eroded_1_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "eroded_2_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ eroded_0_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ eroded_0_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ eroded_0_data_V_read sc_out sc_logic 1 signal 0 } 
	{ eroded_1_data_V_dout sc_in sc_lv 8 signal 1 } 
	{ eroded_1_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ eroded_1_data_V_read sc_out sc_logic 1 signal 1 } 
	{ eroded_1_data_V_din sc_out sc_lv 8 signal 1 } 
	{ eroded_1_data_V_full_n sc_in sc_logic 1 signal 1 } 
	{ eroded_1_data_V_write sc_out sc_logic 1 signal 1 } 
	{ eroded_2_data_V_din sc_out sc_lv 8 signal 2 } 
	{ eroded_2_data_V_full_n sc_in sc_logic 1 signal 2 } 
	{ eroded_2_data_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "eroded_0_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eroded_0_data_V", "role": "dout" }} , 
 	{ "name": "eroded_0_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_0_data_V", "role": "empty_n" }} , 
 	{ "name": "eroded_0_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_0_data_V", "role": "read" }} , 
 	{ "name": "eroded_1_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eroded_1_data_V", "role": "dout" }} , 
 	{ "name": "eroded_1_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_1_data_V", "role": "empty_n" }} , 
 	{ "name": "eroded_1_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_1_data_V", "role": "read" }} , 
 	{ "name": "eroded_1_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eroded_1_data_V", "role": "din" }} , 
 	{ "name": "eroded_1_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_1_data_V", "role": "full_n" }} , 
 	{ "name": "eroded_1_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_1_data_V", "role": "write" }} , 
 	{ "name": "eroded_2_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eroded_2_data_V", "role": "din" }} , 
 	{ "name": "eroded_2_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_2_data_V", "role": "full_n" }} , 
 	{ "name": "eroded_2_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eroded_2_data_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "13", "20"],
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_erode_fu_111"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_total_vegetation_3_fu_118"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_duplicateMat_1_fu_124"}],
		"Port" : [
			{"Name" : "eroded_0_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_duplicateMat_1_fu_124", "Port" : "p_src_data_V"}]},
			{"Name" : "eroded_1_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "eroded_1_data_V_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_erode_fu_111", "Port" : "p_dst_data_V"}]},
			{"Name" : "eroded_2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_duplicateMat_1_fu_124", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eroded_tmp_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111", "Parent" : "0", "Child" : ["3"],
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
					{"ID" : "3", "SubInstance" : "grp_xferode793_fu_18", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_xferode793_fu_18", "Port" : "p_dst_data_V"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111.grp_xferode793_fu_18", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12"],
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111.grp_xferode793_fu_18.buf_0_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111.grp_xferode793_fu_18.buf_1_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111.grp_xferode793_fu_18.buf_2_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111.grp_xferode793_fu_18.src_buf_temp_copy_ex_xfExtractPixels_1_fu_378", "Parent" : "3",
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111.grp_xferode793_fu_18.src_buf_temp_copy_ex_1_xfExtractPixels_1_fu_383", "Parent" : "3",
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111.grp_xferode793_fu_18.src_buf_temp_copy_ex_2_xfExtractPixels_1_fu_388", "Parent" : "3",
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111.grp_xferode793_fu_18.ip_accel_app_mux_yd2_U298", "Parent" : "3"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111.grp_xferode793_fu_18.ip_accel_app_mux_yd2_U299", "Parent" : "3"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_erode_fu_111.grp_xferode793_fu_18.ip_accel_app_mux_yd2_U300", "Parent" : "3"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_total_vegetation_3_fu_118", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19"],
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
			{"ID" : "16", "Name" : "get_total_vegetation_2_U0"}],
		"Port" : [
			{"Name" : "agg_result_V", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "get_total_vegetation_2_U0", "Port" : "agg_result_V"}]},
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "get_total_vegetation_1_U0", "Port" : "img_in_data_V"},
					{"ID" : "14", "SubInstance" : "get_total_vegetation_U0", "Port" : "img_in_data_V"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_total_vegetation_3_fu_118.get_total_vegetation_U0", "Parent" : "13",
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
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "17"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_total_vegetation_3_fu_118.get_total_vegetation_1_U0", "Parent" : "13",
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
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "17"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_total_vegetation_3_fu_118.get_total_vegetation_2_U0", "Parent" : "13",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "18"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "19"},
			{"Name" : "agg_result_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_total_vegetation_3_fu_118.img_in_data_V_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_total_vegetation_3_fu_118.p_Val2_loc_channel_U", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_total_vegetation_3_fu_118.p_Val2_19_loc_chan_U", "Parent" : "13"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124", "Parent" : "0", "Child" : ["21", "23", "24", "26", "27", "28", "29", "30", "31", "32"],
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
			{"ID" : "21", "Name" : "duplicateMat_Loop_Re_2_U0"}],
		"OutputProcess" : [
			{"ID" : "24", "Name" : "duplicateMat_Loop_2_2_U0"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "duplicateMat_Loop_Re_2_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "duplicateMat_Loop_2_2_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "duplicateMat_Loop_2_2_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.duplicateMat_Loop_Re_2_U0", "Parent" : "20", "Child" : ["22"],
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
					{"ID" : "22", "SubInstance" : "tmp_V_read_r_fu_123", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_rows_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "p_src_rows_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "p_src_cols_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_cols_read_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst2_cols_read_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read_r_fu_123", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.duplicateMat_Loop_Re_2_U0.tmp_V_read_r_fu_123", "Parent" : "21",
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
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.xFDuplicate637_U0", "Parent" : "20",
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
		"StartSource" : "21",
		"StartFifo" : "start_for_xFDuplizec_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_rows_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "p_src_rows_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "p_src_cols_read_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.duplicateMat_Loop_2_2_U0", "Parent" : "20", "Child" : ["25"],
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
		"StartSource" : "23",
		"StartFifo" : "start_for_duplicaAem_U",
		"Port" : [
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "call_ln115_write797_fu_112", "Port" : "Mat_0_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln115_write797_fu_112", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.duplicateMat_Loop_2_2_U0.call_ln115_write797_fu_112", "Parent" : "24",
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
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.src_V_V_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.p_src_rows_read_c_U", "Parent" : "20"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.p_src_cols_read_c_U", "Parent" : "20"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.dst_V_V_U", "Parent" : "20"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.dst1_V_V_U", "Parent" : "20"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.start_for_xFDuplizec_U", "Parent" : "20"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_duplicateMat_1_fu_124.start_for_duplicaAem_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
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
		Mat_0_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "144910", "Max" : "146279"}
	, {"Name" : "Interval", "Min" : "144910", "Max" : "146279"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	eroded_0_data_V { ap_fifo {  { eroded_0_data_V_dout fifo_data 0 8 }  { eroded_0_data_V_empty_n fifo_status 0 1 }  { eroded_0_data_V_read fifo_update 1 1 } } }
	eroded_1_data_V { ap_fifo {  { eroded_1_data_V_dout fifo_data 0 8 }  { eroded_1_data_V_empty_n fifo_status 0 1 }  { eroded_1_data_V_read fifo_update 1 1 }  { eroded_1_data_V_din fifo_data 1 8 }  { eroded_1_data_V_full_n fifo_status 0 1 }  { eroded_1_data_V_write fifo_update 1 1 } } }
	eroded_2_data_V { ap_fifo {  { eroded_2_data_V_din fifo_data 1 8 }  { eroded_2_data_V_full_n fifo_status 0 1 }  { eroded_2_data_V_write fifo_update 1 1 } } }
}
