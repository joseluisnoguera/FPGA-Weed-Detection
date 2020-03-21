set moduleName segment_image
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
set C_modelName {segment_image}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in_data_V int 8 regular {fifo 0 volatile }  }
	{ img_out_data_V int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_out_data_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
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
	{ img_in_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ img_in_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_in_data_V_read sc_out sc_logic 1 signal 0 } 
	{ img_out_data_V_din sc_out sc_lv 1 signal 1 } 
	{ img_out_data_V_full_n sc_in sc_logic 1 signal 1 } 
	{ img_out_data_V_write sc_out sc_logic 1 signal 1 } 
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
 	{ "name": "img_in_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "dout" }} , 
 	{ "name": "img_in_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "empty_n" }} , 
 	{ "name": "img_in_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "read" }} , 
 	{ "name": "img_out_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "din" }} , 
 	{ "name": "img_out_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "full_n" }} , 
 	{ "name": "img_out_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "12"],
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_OtsuThreshold_fu_22"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Threshold_fu_30"}],
		"Port" : [
			{"Name" : "img_in_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Threshold_fu_30", "Port" : "p_src_mat_data_V"},
					{"ID" : "1", "SubInstance" : "grp_OtsuThreshold_fu_22", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Threshold_fu_30", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_OtsuThreshold_fu_22", "Port" : "xf_division_lut"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22", "Parent" : "0", "Child" : ["2", "3", "9"],
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
					{"ID" : "9", "SubInstance" : "grp_xFHistogramKernel_fu_35", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_xfOtsuKernel_fu_28", "Port" : "xf_division_lut"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22.hist_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28", "Parent" : "1", "Child" : ["4", "5", "7"],
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
					{"ID" : "7", "SubInstance" : "grp_Inverse_fu_239", "Port" : "xf_division_lut"},
					{"ID" : "5", "SubInstance" : "grp_Inverse_fu_227", "Port" : "xf_division_lut"}]}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.HistArray_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_227", "Parent" : "3", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_227.xf_division_lut_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_239", "Parent" : "3", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_239.xf_division_lut_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22.grp_xFHistogramKernel_fu_35", "Parent" : "1", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22.grp_xFHistogramKernel_fu_35.tmp_hist_0_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_OtsuThreshold_fu_22.grp_xFHistogramKernel_fu_35.tmp_hist1_0_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Threshold_fu_30", "Parent" : "0",
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
			{"Name" : "thresh", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		thresh {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "118530", "Max" : "118530"}
	, {"Name" : "Interval", "Min" : "118530", "Max" : "118530"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_in_data_V { ap_fifo {  { img_in_data_V_dout fifo_data 0 8 }  { img_in_data_V_empty_n fifo_status 0 1 }  { img_in_data_V_read fifo_update 1 1 } } }
	img_out_data_V { ap_fifo {  { img_out_data_V_din fifo_data 1 1 }  { img_out_data_V_full_n fifo_status 0 1 }  { img_out_data_V_write fifo_update 1 1 } } }
}
