set moduleName get_centroid_sh_Loop
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
set C_modelName {get_centroid_sh_Loop}
set C_modelType { int 96 }
set C_modelArgList {
	{ micro_roi_data_V int 8 regular {array 736 { 1 3 } 1 1 }  }
	{ v_limit int 8 regular  }
	{ h_limit int 16 regular  }
	{ h_offset int 16 regular  }
	{ v_offset_read int 8 regular  }
	{ possible_c_x int 8 regular  }
	{ possible_c_y int 32 regular  }
	{ c_read int 48 regular  }
	{ h_offset_out int 16 regular {fifo 1}  }
	{ v_offset_read_out int 8 regular {fifo 1}  }
	{ possible_c_x_out int 8 regular {fifo 1}  }
	{ possible_c_y_out int 32 regular {fifo 1}  }
	{ c_read_out int 48 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "micro_roi_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "v_limit", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "h_limit", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_offset", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "v_offset_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "possible_c_x", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "possible_c_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_read", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "h_offset_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v_offset_read_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "possible_c_x_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "possible_c_y_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_read_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ micro_roi_data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ micro_roi_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ micro_roi_data_V_q0 sc_in sc_lv 8 signal 0 } 
	{ v_limit sc_in sc_lv 8 signal 1 } 
	{ h_limit sc_in sc_lv 16 signal 2 } 
	{ h_offset sc_in sc_lv 16 signal 3 } 
	{ v_offset_read sc_in sc_lv 8 signal 4 } 
	{ possible_c_x sc_in sc_lv 8 signal 5 } 
	{ possible_c_y sc_in sc_lv 32 signal 6 } 
	{ c_read sc_in sc_lv 48 signal 7 } 
	{ h_offset_out_din sc_out sc_lv 16 signal 8 } 
	{ h_offset_out_full_n sc_in sc_logic 1 signal 8 } 
	{ h_offset_out_write sc_out sc_logic 1 signal 8 } 
	{ v_offset_read_out_din sc_out sc_lv 8 signal 9 } 
	{ v_offset_read_out_full_n sc_in sc_logic 1 signal 9 } 
	{ v_offset_read_out_write sc_out sc_logic 1 signal 9 } 
	{ possible_c_x_out_din sc_out sc_lv 8 signal 10 } 
	{ possible_c_x_out_full_n sc_in sc_logic 1 signal 10 } 
	{ possible_c_x_out_write sc_out sc_logic 1 signal 10 } 
	{ possible_c_y_out_din sc_out sc_lv 32 signal 11 } 
	{ possible_c_y_out_full_n sc_in sc_logic 1 signal 11 } 
	{ possible_c_y_out_write sc_out sc_logic 1 signal 11 } 
	{ c_read_out_din sc_out sc_lv 48 signal 12 } 
	{ c_read_out_full_n sc_in sc_logic 1 signal 12 } 
	{ c_read_out_write sc_out sc_logic 1 signal 12 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "micro_roi_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "address0" }} , 
 	{ "name": "micro_roi_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "ce0" }} , 
 	{ "name": "micro_roi_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "micro_roi_data_V", "role": "q0" }} , 
 	{ "name": "v_limit", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v_limit", "role": "default" }} , 
 	{ "name": "h_limit", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_limit", "role": "default" }} , 
 	{ "name": "h_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_offset", "role": "default" }} , 
 	{ "name": "v_offset_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v_offset_read", "role": "default" }} , 
 	{ "name": "possible_c_x", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "possible_c_x", "role": "default" }} , 
 	{ "name": "possible_c_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "possible_c_y", "role": "default" }} , 
 	{ "name": "c_read", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "c_read", "role": "default" }} , 
 	{ "name": "h_offset_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_offset_out", "role": "din" }} , 
 	{ "name": "h_offset_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_offset_out", "role": "full_n" }} , 
 	{ "name": "h_offset_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_offset_out", "role": "write" }} , 
 	{ "name": "v_offset_read_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v_offset_read_out", "role": "din" }} , 
 	{ "name": "v_offset_read_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_offset_read_out", "role": "full_n" }} , 
 	{ "name": "v_offset_read_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_offset_read_out", "role": "write" }} , 
 	{ "name": "possible_c_x_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "possible_c_x_out", "role": "din" }} , 
 	{ "name": "possible_c_x_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "possible_c_x_out", "role": "full_n" }} , 
 	{ "name": "possible_c_x_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "possible_c_x_out", "role": "write" }} , 
 	{ "name": "possible_c_y_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "possible_c_y_out", "role": "din" }} , 
 	{ "name": "possible_c_y_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "possible_c_y_out", "role": "full_n" }} , 
 	{ "name": "possible_c_y_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "possible_c_y_out", "role": "write" }} , 
 	{ "name": "c_read_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "c_read_out", "role": "din" }} , 
 	{ "name": "c_read_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_read_out", "role": "full_n" }} , 
 	{ "name": "c_read_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_read_out", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "get_centroid_sh_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1537", "EstimateLatencyMax" : "1537",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "v_offset_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_x_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "possible_c_x_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_y_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "possible_c_y_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "c_read_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	get_centroid_sh_Loop {
		micro_roi_data_V {Type I LastRead 2 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		v_offset_read {Type I LastRead 0 FirstWrite -1}
		possible_c_x {Type I LastRead 0 FirstWrite -1}
		possible_c_y {Type I LastRead 0 FirstWrite -1}
		c_read {Type I LastRead 0 FirstWrite -1}
		h_offset_out {Type O LastRead -1 FirstWrite 0}
		v_offset_read_out {Type O LastRead -1 FirstWrite 0}
		possible_c_x_out {Type O LastRead -1 FirstWrite 0}
		possible_c_y_out {Type O LastRead -1 FirstWrite 0}
		c_read_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1537", "Max" : "1537"}
	, {"Name" : "Interval", "Min" : "1537", "Max" : "1537"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	micro_roi_data_V { ap_memory {  { micro_roi_data_V_address0 mem_address 1 10 }  { micro_roi_data_V_ce0 mem_ce 1 1 }  { micro_roi_data_V_q0 mem_dout 0 8 } } }
	v_limit { ap_none {  { v_limit in_data 0 8 } } }
	h_limit { ap_none {  { h_limit in_data 0 16 } } }
	h_offset { ap_none {  { h_offset in_data 0 16 } } }
	v_offset_read { ap_none {  { v_offset_read in_data 0 8 } } }
	possible_c_x { ap_none {  { possible_c_x in_data 0 8 } } }
	possible_c_y { ap_none {  { possible_c_y in_data 0 32 } } }
	c_read { ap_none {  { c_read in_data 0 48 } } }
	h_offset_out { ap_fifo {  { h_offset_out_din fifo_data 1 16 }  { h_offset_out_full_n fifo_status 0 1 }  { h_offset_out_write fifo_update 1 1 } } }
	v_offset_read_out { ap_fifo {  { v_offset_read_out_din fifo_data 1 8 }  { v_offset_read_out_full_n fifo_status 0 1 }  { v_offset_read_out_write fifo_update 1 1 } } }
	possible_c_x_out { ap_fifo {  { possible_c_x_out_din fifo_data 1 8 }  { possible_c_x_out_full_n fifo_status 0 1 }  { possible_c_x_out_write fifo_update 1 1 } } }
	possible_c_y_out { ap_fifo {  { possible_c_y_out_din fifo_data 1 32 }  { possible_c_y_out_full_n fifo_status 0 1 }  { possible_c_y_out_write fifo_update 1 1 } } }
	c_read_out { ap_fifo {  { c_read_out_din fifo_data 1 48 }  { c_read_out_full_n fifo_status 0 1 }  { c_read_out_write fifo_update 1 1 } } }
}
