set moduleName get_total_vegetation_3
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
set C_modelName {get_total_vegetation.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ agg_result_V int 24 regular {pointer 1}  }
	{ img_in_data_V int 8 regular {array 57600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result_V", "interface" : "wire", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_in_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ agg_result_V sc_out sc_lv 24 signal 0 } 
	{ img_in_data_V_address0 sc_out sc_lv 16 signal 1 } 
	{ img_in_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ img_in_data_V_d0 sc_out sc_lv 8 signal 1 } 
	{ img_in_data_V_q0 sc_in sc_lv 8 signal 1 } 
	{ img_in_data_V_we0 sc_out sc_logic 1 signal 1 } 
	{ img_in_data_V_address1 sc_out sc_lv 16 signal 1 } 
	{ img_in_data_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ img_in_data_V_d1 sc_out sc_lv 8 signal 1 } 
	{ img_in_data_V_q1 sc_in sc_lv 8 signal 1 } 
	{ img_in_data_V_we1 sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ agg_result_V_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ img_in_data_V_i_address0 sc_in sc_lv 16 signal -1 } 
	{ img_in_data_V_i_ce0 sc_in sc_logic 1 signal -1 } 
	{ img_in_data_V_i_q0 sc_out sc_lv 8 signal -1 } 
	{ img_in_data_V_t_address0 sc_in sc_lv 16 signal -1 } 
	{ img_in_data_V_t_ce0 sc_in sc_logic 1 signal -1 } 
	{ img_in_data_V_t_q0 sc_out sc_lv 8 signal -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "agg_result_V", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "agg_result_V", "role": "default" }} , 
 	{ "name": "img_in_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "address0" }} , 
 	{ "name": "img_in_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "ce0" }} , 
 	{ "name": "img_in_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "d0" }} , 
 	{ "name": "img_in_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "q0" }} , 
 	{ "name": "img_in_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "we0" }} , 
 	{ "name": "img_in_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "address1" }} , 
 	{ "name": "img_in_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "ce1" }} , 
 	{ "name": "img_in_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "d1" }} , 
 	{ "name": "img_in_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "q1" }} , 
 	{ "name": "img_in_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "agg_result_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_V", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "img_in_data_V_i_address0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_in_data_V_i_address0", "role": "default" }} , 
 	{ "name": "img_in_data_V_i_ce0", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V_i_ce0", "role": "default" }} , 
 	{ "name": "img_in_data_V_i_q0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_data_V_i_q0", "role": "default" }} , 
 	{ "name": "img_in_data_V_t_address0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_in_data_V_t_address0", "role": "default" }} , 
 	{ "name": "img_in_data_V_t_ce0", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_V_t_ce0", "role": "default" }} , 
 	{ "name": "img_in_data_V_t_q0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_data_V_t_q0", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
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
			{"ID" : "3", "Name" : "get_total_vegetation_2_U0"}],
		"Port" : [
			{"Name" : "agg_result_V", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "get_total_vegetation_2_U0", "Port" : "agg_result_V"}]},
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "get_total_vegetation_1_U0", "Port" : "img_in_data_V"},
					{"ID" : "1", "SubInstance" : "get_total_vegetation_U0", "Port" : "img_in_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_total_vegetation_U0", "Parent" : "0",
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
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "4"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_total_vegetation_1_U0", "Parent" : "0",
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
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_total_vegetation_2_U0", "Parent" : "0",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "5"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "6"},
			{"Name" : "agg_result_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_data_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_Val2_loc_channel_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_Val2_19_loc_chan_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		agg_result_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28802", "Max" : "28802"}
	, {"Name" : "Interval", "Min" : "28803", "Max" : "28803"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	agg_result_V { ap_vld {  { agg_result_V out_data 1 24 }  { agg_result_V_ap_vld out_vld 1 1 } } }
	img_in_data_V { ap_memory {  { img_in_data_V_address0 mem_address 1 16 }  { img_in_data_V_ce0 mem_ce 1 1 }  { img_in_data_V_d0 mem_din 1 8 }  { img_in_data_V_q0 mem_dout 0 8 }  { img_in_data_V_we0 mem_we 1 1 }  { img_in_data_V_address1 mem_address 1 16 }  { img_in_data_V_ce1 mem_ce 1 1 }  { img_in_data_V_d1 mem_din 1 8 }  { img_in_data_V_q1 mem_dout 0 8 }  { img_in_data_V_we1 mem_we 1 1 } } }
}
