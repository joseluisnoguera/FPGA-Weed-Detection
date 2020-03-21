set moduleName get_centroid_fh_entr
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {get_centroid_fh.entr}
set C_modelType { void 0 }
set C_modelArgList {
	{ h_offset int 16 regular  }
	{ v_offset int 8 regular  }
	{ v_limit int 8 regular  }
	{ h_limit int 16 regular  }
	{ h_offset_out int 16 regular {fifo 1}  }
	{ v_offset_out int 8 regular {fifo 1}  }
	{ v_limit_out int 8 regular {fifo 1}  }
	{ v_limit_out1 int 8 regular {fifo 1}  }
	{ h_limit_out int 16 regular {fifo 1}  }
	{ h_limit_out2 int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "h_offset", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "v_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "v_limit", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "h_limit", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_offset_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v_offset_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v_limit_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v_limit_out1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_limit_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_limit_out2", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
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
	{ h_offset sc_in sc_lv 16 signal 0 } 
	{ v_offset sc_in sc_lv 8 signal 1 } 
	{ v_limit sc_in sc_lv 8 signal 2 } 
	{ h_limit sc_in sc_lv 16 signal 3 } 
	{ h_offset_out_din sc_out sc_lv 16 signal 4 } 
	{ h_offset_out_full_n sc_in sc_logic 1 signal 4 } 
	{ h_offset_out_write sc_out sc_logic 1 signal 4 } 
	{ v_offset_out_din sc_out sc_lv 8 signal 5 } 
	{ v_offset_out_full_n sc_in sc_logic 1 signal 5 } 
	{ v_offset_out_write sc_out sc_logic 1 signal 5 } 
	{ v_limit_out_din sc_out sc_lv 8 signal 6 } 
	{ v_limit_out_full_n sc_in sc_logic 1 signal 6 } 
	{ v_limit_out_write sc_out sc_logic 1 signal 6 } 
	{ v_limit_out1_din sc_out sc_lv 8 signal 7 } 
	{ v_limit_out1_full_n sc_in sc_logic 1 signal 7 } 
	{ v_limit_out1_write sc_out sc_logic 1 signal 7 } 
	{ h_limit_out_din sc_out sc_lv 16 signal 8 } 
	{ h_limit_out_full_n sc_in sc_logic 1 signal 8 } 
	{ h_limit_out_write sc_out sc_logic 1 signal 8 } 
	{ h_limit_out2_din sc_out sc_lv 16 signal 9 } 
	{ h_limit_out2_full_n sc_in sc_logic 1 signal 9 } 
	{ h_limit_out2_write sc_out sc_logic 1 signal 9 } 
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
 	{ "name": "h_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_offset", "role": "default" }} , 
 	{ "name": "v_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v_offset", "role": "default" }} , 
 	{ "name": "v_limit", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v_limit", "role": "default" }} , 
 	{ "name": "h_limit", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_limit", "role": "default" }} , 
 	{ "name": "h_offset_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_offset_out", "role": "din" }} , 
 	{ "name": "h_offset_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_offset_out", "role": "full_n" }} , 
 	{ "name": "h_offset_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_offset_out", "role": "write" }} , 
 	{ "name": "v_offset_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v_offset_out", "role": "din" }} , 
 	{ "name": "v_offset_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_offset_out", "role": "full_n" }} , 
 	{ "name": "v_offset_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_offset_out", "role": "write" }} , 
 	{ "name": "v_limit_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v_limit_out", "role": "din" }} , 
 	{ "name": "v_limit_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_limit_out", "role": "full_n" }} , 
 	{ "name": "v_limit_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_limit_out", "role": "write" }} , 
 	{ "name": "v_limit_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v_limit_out1", "role": "din" }} , 
 	{ "name": "v_limit_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_limit_out1", "role": "full_n" }} , 
 	{ "name": "v_limit_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_limit_out1", "role": "write" }} , 
 	{ "name": "h_limit_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_limit_out", "role": "din" }} , 
 	{ "name": "h_limit_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_limit_out", "role": "full_n" }} , 
 	{ "name": "h_limit_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_limit_out", "role": "write" }} , 
 	{ "name": "h_limit_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_limit_out2", "role": "din" }} , 
 	{ "name": "h_limit_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_limit_out2", "role": "full_n" }} , 
 	{ "name": "h_limit_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_limit_out2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "get_centroid_fh_entr",
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
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "v_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "v_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "v_limit_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "h_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "h_limit_out2_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	get_centroid_fh_entr {
		h_offset {Type I LastRead 0 FirstWrite -1}
		v_offset {Type I LastRead 0 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}
		h_offset_out {Type O LastRead -1 FirstWrite 0}
		v_offset_out {Type O LastRead -1 FirstWrite 0}
		v_limit_out {Type O LastRead -1 FirstWrite 0}
		v_limit_out1 {Type O LastRead -1 FirstWrite 0}
		h_limit_out {Type O LastRead -1 FirstWrite 0}
		h_limit_out2 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	h_offset { ap_none {  { h_offset in_data 0 16 } } }
	v_offset { ap_none {  { v_offset in_data 0 8 } } }
	v_limit { ap_none {  { v_limit in_data 0 8 } } }
	h_limit { ap_none {  { h_limit in_data 0 16 } } }
	h_offset_out { ap_fifo {  { h_offset_out_din fifo_data 1 16 }  { h_offset_out_full_n fifo_status 0 1 }  { h_offset_out_write fifo_update 1 1 } } }
	v_offset_out { ap_fifo {  { v_offset_out_din fifo_data 1 8 }  { v_offset_out_full_n fifo_status 0 1 }  { v_offset_out_write fifo_update 1 1 } } }
	v_limit_out { ap_fifo {  { v_limit_out_din fifo_data 1 8 }  { v_limit_out_full_n fifo_status 0 1 }  { v_limit_out_write fifo_update 1 1 } } }
	v_limit_out1 { ap_fifo {  { v_limit_out1_din fifo_data 1 8 }  { v_limit_out1_full_n fifo_status 0 1 }  { v_limit_out1_write fifo_update 1 1 } } }
	h_limit_out { ap_fifo {  { h_limit_out_din fifo_data 1 16 }  { h_limit_out_full_n fifo_status 0 1 }  { h_limit_out_write fifo_update 1 1 } } }
	h_limit_out2 { ap_fifo {  { h_limit_out2_din fifo_data 1 16 }  { h_limit_out2_full_n fifo_status 0 1 }  { h_limit_out2_write fifo_update 1 1 } } }
}
