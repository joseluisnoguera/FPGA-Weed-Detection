set moduleName xfExtractPixels
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 1
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {xfExtractPixels}
set C_modelType { int 96 }
set C_modelArgList {
	{ tmp_buf_0_V_read int 24 regular  }
	{ tmp_buf_1_V_read int 24 regular  }
	{ tmp_buf_2_V_read int 24 regular  }
	{ tmp_buf_3_V_read int 24 regular  }
	{ val1_V_read int 24 regular  }
	{ pos_r int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmp_buf_0_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_buf_1_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_buf_2_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_buf_3_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "val1_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "pos_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmp_buf_0_V_read sc_in sc_lv 24 signal 0 } 
	{ tmp_buf_1_V_read sc_in sc_lv 24 signal 1 } 
	{ tmp_buf_2_V_read sc_in sc_lv 24 signal 2 } 
	{ tmp_buf_3_V_read sc_in sc_lv 24 signal 3 } 
	{ val1_V_read sc_in sc_lv 24 signal 4 } 
	{ pos_r sc_in sc_lv 1 signal 5 } 
	{ ap_return_0 sc_out sc_lv 24 signal -1 } 
	{ ap_return_1 sc_out sc_lv 24 signal -1 } 
	{ ap_return_2 sc_out sc_lv 24 signal -1 } 
	{ ap_return_3 sc_out sc_lv 24 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmp_buf_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tmp_buf_0_V_read", "role": "default" }} , 
 	{ "name": "tmp_buf_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tmp_buf_1_V_read", "role": "default" }} , 
 	{ "name": "tmp_buf_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tmp_buf_2_V_read", "role": "default" }} , 
 	{ "name": "tmp_buf_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tmp_buf_3_V_read", "role": "default" }} , 
 	{ "name": "val1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "val1_V_read", "role": "default" }} , 
 	{ "name": "pos_r", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_r", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_mux_bbk_U537", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_mux_bbk_U538", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_mux_bbk_U539", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_accel_app_mux_bbk_U540", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xfExtractPixels {
		tmp_buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_1_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_2_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_3_V_read {Type I LastRead 0 FirstWrite -1}
		val1_V_read {Type I LastRead 0 FirstWrite -1}
		pos_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tmp_buf_0_V_read { ap_none {  { tmp_buf_0_V_read in_data 0 24 } } }
	tmp_buf_1_V_read { ap_none {  { tmp_buf_1_V_read in_data 0 24 } } }
	tmp_buf_2_V_read { ap_none {  { tmp_buf_2_V_read in_data 0 24 } } }
	tmp_buf_3_V_read { ap_none {  { tmp_buf_3_V_read in_data 0 24 } } }
	val1_V_read { ap_none {  { val1_V_read in_data 0 24 } } }
	pos_r { ap_none {  { pos_r in_data 0 1 } } }
}
