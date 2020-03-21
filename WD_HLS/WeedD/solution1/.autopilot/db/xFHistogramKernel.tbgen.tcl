set moduleName xFHistogramKernel
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
set C_modelName {xFHistogramKernel}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_mat_data_V int 8 regular {fifo 0 volatile }  }
	{ hist_array int 32 regular {array 256 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hist_array", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_mat_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ p_src_mat_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_mat_data_V_read sc_out sc_logic 1 signal 0 } 
	{ hist_array_address0 sc_out sc_lv 8 signal 1 } 
	{ hist_array_ce0 sc_out sc_logic 1 signal 1 } 
	{ hist_array_we0 sc_out sc_logic 1 signal 1 } 
	{ hist_array_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_mat_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "dout" }} , 
 	{ "name": "p_src_mat_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "read" }} , 
 	{ "name": "hist_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_array", "role": "address0" }} , 
 	{ "name": "hist_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_array", "role": "ce0" }} , 
 	{ "name": "hist_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_array", "role": "we0" }} , 
 	{ "name": "hist_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hist_array", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_hist_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_hist1_0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFHistogramKernel {
		p_src_mat_data_V {Type I LastRead 8 FirstWrite -1}
		hist_array {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "59349", "Max" : "59349"}
	, {"Name" : "Interval", "Min" : "59349", "Max" : "59349"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	p_src_mat_data_V { ap_fifo {  { p_src_mat_data_V_dout fifo_data 0 8 }  { p_src_mat_data_V_empty_n fifo_status 0 1 }  { p_src_mat_data_V_read fifo_update 1 1 } } }
	hist_array { ap_memory {  { hist_array_address0 mem_address 1 8 }  { hist_array_ce0 mem_ce 1 1 }  { hist_array_we0 mem_we 1 1 }  { hist_array_d0 mem_din 1 32 } } }
}
