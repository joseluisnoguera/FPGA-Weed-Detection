set moduleName get_vegetation_image
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
set C_modelName {get_vegetation_image}
set C_modelType { void 0 }
set C_modelArgList {
	{ max_r int 32 regular {fifo 0}  }
	{ max_g int 32 regular {fifo 0}  }
	{ max_b int 32 regular {fifo 0}  }
	{ max_r_out int 32 regular {fifo 1}  }
	{ max_g_out int 32 regular {fifo 1}  }
	{ max_b_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "max_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_g", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_b", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_r_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_g_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_b_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ max_r_dout sc_in sc_lv 32 signal 0 } 
	{ max_r_empty_n sc_in sc_logic 1 signal 0 } 
	{ max_r_read sc_out sc_logic 1 signal 0 } 
	{ max_g_dout sc_in sc_lv 32 signal 1 } 
	{ max_g_empty_n sc_in sc_logic 1 signal 1 } 
	{ max_g_read sc_out sc_logic 1 signal 1 } 
	{ max_b_dout sc_in sc_lv 32 signal 2 } 
	{ max_b_empty_n sc_in sc_logic 1 signal 2 } 
	{ max_b_read sc_out sc_logic 1 signal 2 } 
	{ max_r_out_din sc_out sc_lv 32 signal 3 } 
	{ max_r_out_full_n sc_in sc_logic 1 signal 3 } 
	{ max_r_out_write sc_out sc_logic 1 signal 3 } 
	{ max_g_out_din sc_out sc_lv 32 signal 4 } 
	{ max_g_out_full_n sc_in sc_logic 1 signal 4 } 
	{ max_g_out_write sc_out sc_logic 1 signal 4 } 
	{ max_b_out_din sc_out sc_lv 32 signal 5 } 
	{ max_b_out_full_n sc_in sc_logic 1 signal 5 } 
	{ max_b_out_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "max_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_r", "role": "dout" }} , 
 	{ "name": "max_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_r", "role": "empty_n" }} , 
 	{ "name": "max_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_r", "role": "read" }} , 
 	{ "name": "max_g_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_g", "role": "dout" }} , 
 	{ "name": "max_g_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_g", "role": "empty_n" }} , 
 	{ "name": "max_g_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_g", "role": "read" }} , 
 	{ "name": "max_b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_b", "role": "dout" }} , 
 	{ "name": "max_b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_b", "role": "empty_n" }} , 
 	{ "name": "max_b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_b", "role": "read" }} , 
 	{ "name": "max_r_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_r_out", "role": "din" }} , 
 	{ "name": "max_r_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_r_out", "role": "full_n" }} , 
 	{ "name": "max_r_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_r_out", "role": "write" }} , 
 	{ "name": "max_g_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_g_out", "role": "din" }} , 
 	{ "name": "max_g_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_g_out", "role": "full_n" }} , 
 	{ "name": "max_g_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_g_out", "role": "write" }} , 
 	{ "name": "max_b_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_b_out", "role": "din" }} , 
 	{ "name": "max_b_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_b_out", "role": "full_n" }} , 
 	{ "name": "max_b_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_b_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "get_vegetation_image",
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
			{"Name" : "max_r", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "max_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "max_g_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "max_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_g_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_b_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	get_vegetation_image {
		max_r {Type I LastRead 0 FirstWrite -1}
		max_g {Type I LastRead 0 FirstWrite -1}
		max_b {Type I LastRead 0 FirstWrite -1}
		max_r_out {Type O LastRead -1 FirstWrite 0}
		max_g_out {Type O LastRead -1 FirstWrite 0}
		max_b_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	max_r { ap_fifo {  { max_r_dout fifo_data 0 32 }  { max_r_empty_n fifo_status 0 1 }  { max_r_read fifo_update 1 1 } } }
	max_g { ap_fifo {  { max_g_dout fifo_data 0 32 }  { max_g_empty_n fifo_status 0 1 }  { max_g_read fifo_update 1 1 } } }
	max_b { ap_fifo {  { max_b_dout fifo_data 0 32 }  { max_b_empty_n fifo_status 0 1 }  { max_b_read fifo_update 1 1 } } }
	max_r_out { ap_fifo {  { max_r_out_din fifo_data 1 32 }  { max_r_out_full_n fifo_status 0 1 }  { max_r_out_write fifo_update 1 1 } } }
	max_g_out { ap_fifo {  { max_g_out_din fifo_data 1 32 }  { max_g_out_full_n fifo_status 0 1 }  { max_g_out_write fifo_update 1 1 } } }
	max_b_out { ap_fifo {  { max_b_out_din fifo_data 1 32 }  { max_b_out_full_n fifo_status 0 1 }  { max_b_out_write fifo_update 1 1 } } }
}
