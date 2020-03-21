set moduleName duplicateMat_1
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
set C_modelName {duplicateMat.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_data_V int 8 regular {fifo 0}  }
	{ p_dst1_data_V int 8 regular {array 57600 { 0 3 } 0 1 }  }
	{ p_dst2_data_V int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst1_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst2_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ p_src_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ p_src_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_data_V_read sc_out sc_logic 1 signal 0 } 
	{ p_dst1_data_V_address0 sc_out sc_lv 16 signal 1 } 
	{ p_dst1_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ p_dst1_data_V_d0 sc_out sc_lv 8 signal 1 } 
	{ p_dst1_data_V_q0 sc_in sc_lv 8 signal 1 } 
	{ p_dst1_data_V_we0 sc_out sc_logic 1 signal 1 } 
	{ p_dst1_data_V_address1 sc_out sc_lv 16 signal 1 } 
	{ p_dst1_data_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ p_dst1_data_V_d1 sc_out sc_lv 8 signal 1 } 
	{ p_dst1_data_V_q1 sc_in sc_lv 8 signal 1 } 
	{ p_dst1_data_V_we1 sc_out sc_logic 1 signal 1 } 
	{ p_dst2_data_V_din sc_out sc_lv 8 signal 2 } 
	{ p_dst2_data_V_full_n sc_in sc_logic 1 signal 2 } 
	{ p_dst2_data_V_write sc_out sc_logic 1 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "p_src_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "dout" }} , 
 	{ "name": "p_src_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "read" }} , 
 	{ "name": "p_dst1_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "address0" }} , 
 	{ "name": "p_dst1_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "ce0" }} , 
 	{ "name": "p_dst1_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "d0" }} , 
 	{ "name": "p_dst1_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "q0" }} , 
 	{ "name": "p_dst1_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "we0" }} , 
 	{ "name": "p_dst1_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "address1" }} , 
 	{ "name": "p_dst1_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "ce1" }} , 
 	{ "name": "p_dst1_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "d1" }} , 
 	{ "name": "p_dst1_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "q1" }} , 
 	{ "name": "p_dst1_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data_V", "role": "we1" }} , 
 	{ "name": "p_dst2_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "din" }} , 
 	{ "name": "p_dst2_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "full_n" }} , 
 	{ "name": "p_dst2_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst2_data_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "6", "7", "8", "9", "10", "11", "12"],
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
			{"ID" : "1", "Name" : "duplicateMat_Loop_Re_2_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "duplicateMat_Loop_2_2_U0"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "duplicateMat_Loop_Re_2_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "duplicateMat_Loop_2_2_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "duplicateMat_Loop_2_2_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat_Loop_Re_2_U0", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "tmp_V_read_r_fu_123", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "6",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_rows_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "7",
				"BlockSignal" : [
					{"Name" : "p_src_rows_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "p_src_cols_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_cols_read_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst2_cols_read_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read_r_fu_123", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_Loop_Re_2_U0.tmp_V_read_r_fu_123", "Parent" : "1",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFDuplicate637_U0", "Parent" : "0",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_xFDuplizec_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "6",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_rows_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "7",
				"BlockSignal" : [
					{"Name" : "p_src_rows_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "p_src_cols_read_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicateMat_Loop_2_2_U0", "Parent" : "0", "Child" : ["5"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_duplicaAem_U",
		"Port" : [
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "call_ln115_write797_fu_112", "Port" : "Mat_0_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln115_write797_fu_112", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicateMat_Loop_2_2_U0.call_ln115_write797_fu_112", "Parent" : "4",
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
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_V_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_rows_read_c_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_cols_read_c_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_V_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst1_V_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFDuplizec_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_duplicaAem_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "58143", "Max" : "58143"}
	, {"Name" : "Interval", "Min" : "58142", "Max" : "58142"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_data_V { ap_fifo {  { p_src_data_V_dout fifo_data 0 8 }  { p_src_data_V_empty_n fifo_status 0 1 }  { p_src_data_V_read fifo_update 1 1 } } }
	p_dst1_data_V { ap_memory {  { p_dst1_data_V_address0 mem_address 1 16 }  { p_dst1_data_V_ce0 mem_ce 1 1 }  { p_dst1_data_V_d0 mem_din 1 8 }  { p_dst1_data_V_q0 mem_dout 0 8 }  { p_dst1_data_V_we0 mem_we 1 1 }  { p_dst1_data_V_address1 mem_address 1 16 }  { p_dst1_data_V_ce1 mem_ce 1 1 }  { p_dst1_data_V_d1 mem_din 1 8 }  { p_dst1_data_V_q1 mem_dout 0 8 }  { p_dst1_data_V_we1 mem_we 1 1 } } }
	p_dst2_data_V { ap_fifo {  { p_dst2_data_V_din fifo_data 1 8 }  { p_dst2_data_V_full_n fifo_status 0 1 }  { p_dst2_data_V_write fifo_update 1 1 } } }
}
