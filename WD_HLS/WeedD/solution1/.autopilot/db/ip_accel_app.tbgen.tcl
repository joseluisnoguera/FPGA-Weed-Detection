set moduleName ip_accel_app
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {ip_accel_app}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_in_V_data_V int 32 regular {axi_s 0 volatile  { stream_in Data } }  }
	{ stream_in_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in Keep } }  }
	{ stream_in_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in Strb } }  }
	{ stream_in_V_user_V int 1 regular {axi_s 0 volatile  { stream_in User } }  }
	{ stream_in_V_last_V int 1 regular {axi_s 0 volatile  { stream_in Last } }  }
	{ stream_in_V_id_V int 1 regular {axi_s 0 volatile  { stream_in ID } }  }
	{ stream_in_V_dest_V int 1 regular {axi_s 0 volatile  { stream_in Dest } }  }
	{ stream_out_V_data_V int 32 regular {axi_s 1 volatile  { stream_out Data } }  }
	{ stream_out_V_keep_V int 4 regular {axi_s 1 volatile  { stream_out Keep } }  }
	{ stream_out_V_strb_V int 4 regular {axi_s 1 volatile  { stream_out Strb } }  }
	{ stream_out_V_user_V int 1 regular {axi_s 1 volatile  { stream_out User } }  }
	{ stream_out_V_last_V int 1 regular {axi_s 1 volatile  { stream_out Last } }  }
	{ stream_out_V_id_V int 1 regular {axi_s 1 volatile  { stream_out ID } }  }
	{ stream_out_V_dest_V int 1 regular {axi_s 1 volatile  { stream_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "stream_in.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "stream_in.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "stream_in.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_in.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_in.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_in.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "stream_out.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "stream_out.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "stream_out.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_out.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_out.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_out.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ stream_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ stream_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ stream_in_TSTRB sc_in sc_lv 4 signal 2 } 
	{ stream_in_TUSER sc_in sc_lv 1 signal 3 } 
	{ stream_in_TLAST sc_in sc_lv 1 signal 4 } 
	{ stream_in_TID sc_in sc_lv 1 signal 5 } 
	{ stream_in_TDEST sc_in sc_lv 1 signal 6 } 
	{ stream_out_TDATA sc_out sc_lv 32 signal 7 } 
	{ stream_out_TKEEP sc_out sc_lv 4 signal 8 } 
	{ stream_out_TSTRB sc_out sc_lv 4 signal 9 } 
	{ stream_out_TUSER sc_out sc_lv 1 signal 10 } 
	{ stream_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ stream_out_TID sc_out sc_lv 1 signal 12 } 
	{ stream_out_TDEST sc_out sc_lv 1 signal 13 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ stream_in_TVALID sc_in sc_logic 1 invld 6 } 
	{ stream_in_TREADY sc_out sc_logic 1 inacc 6 } 
	{ stream_out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ stream_out_TREADY sc_in sc_logic 1 outacc 13 } 
}
set NewPortList {[ 
	{ "name": "stream_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_out_V_data_V", "role": "default" }} , 
 	{ "name": "stream_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_out_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_out_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_user_V", "role": "default" }} , 
 	{ "name": "stream_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_id_V", "role": "default" }} , 
 	{ "name": "stream_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "stream_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_out_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "10", "394", "402", "403", "404", "405"],
		"CDFG" : "ip_accel_app",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2419234", "EstimateLatencyMax" : "2419234",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc642_U0"},
			{"ID" : "2", "Name" : "AXIvideo2xfMat_U0"}],
		"OutputProcess" : [
			{"ID" : "394", "Name" : "xfMat2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2xfMat_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "stream_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2xfMat_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "stream_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2xfMat_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "stream_in_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2xfMat_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2xfMat_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "stream_in_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2xfMat_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "stream_in_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2xfMat_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "stream_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "xfMat2AXIvideo_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "stream_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "xfMat2AXIvideo_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "stream_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "xfMat2AXIvideo_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "stream_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "xfMat2AXIvideo_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "stream_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "xfMat2AXIvideo_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "stream_out_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "xfMat2AXIvideo_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "stream_out_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "xfMat2AXIvideo_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "xf_division_lut"}]},
			{"Name" : "histogram", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "histogram"}]},
			{"Name" : "smoothed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "smoothed"}]},
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "line_bases"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "segments647"}]},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "last_c"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "centroids"}]},
			{"Name" : "segments648", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "segments648"}]},
			{"Name" : "last_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "last_centroids"}]},
			{"Name" : "line_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "line_centroids"}]},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "lines"}]},
			{"Name" : "segments", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "weed_detection_U0", "Port" : "segments"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc642_U0", "Parent" : "0",
		"CDFG" : "Block_proc642",
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
			{"Name" : "img_in_cols", "Type" : "Vld", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "402"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2xfMat_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "AXIvideo2xfMat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "925203", "EstimateLatencyMax" : "925203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "403",
				"BlockSignal" : [
					{"Name" : "img_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2xfMat_U0.regslice_both_AXI_video_strm_V_data_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2xfMat_U0.regslice_both_AXI_video_strm_V_keep_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2xfMat_U0.regslice_both_AXI_video_strm_V_strb_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2xfMat_U0.regslice_both_AXI_video_strm_V_user_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2xfMat_U0.regslice_both_AXI_video_strm_V_last_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2xfMat_U0.regslice_both_AXI_video_strm_V_id_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2xfMat_U0.regslice_both_AXI_video_strm_V_dest_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0", "Parent" : "0", "Child" : ["11", "12", "13", "30", "47", "137", "150", "161", "194", "209", "211", "303", "309", "310", "327", "361", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393"],
		"CDFG" : "weed_detection",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2419233", "EstimateLatencyMax" : "2419233",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "11", "Name" : "weed_detection_entry_U0", "ReadyCount" : "weed_detection_entry_U0_ap_ready_count"},
			{"ID" : "12", "Name" : "weed_detection_Block_U0", "ReadyCount" : "weed_detection_Block_U0_ap_ready_count"},
			{"ID" : "13", "Name" : "duplicateMat_2762_U0", "ReadyCount" : "duplicateMat_2762_U0_ap_ready_count"},
			{"ID" : "194", "Name" : "duplicateMat438_U0", "ReadyCount" : "duplicateMat438_U0_ap_ready_count"},
			{"ID" : "309", "Name" : "zero_0_180_320_1_U0", "ReadyCount" : "zero_0_180_320_1_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "303", "Name" : "sectors_weed_classif_U0"},
			{"ID" : "361", "Name" : "add_2749_U0"}],
		"Port" : [
			{"Name" : "img_in_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "402",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "weed_detection_entry_U0", "Port" : "img_in_cols"}]},
			{"Name" : "img_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "403",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "duplicateMat_2762_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "404",
				"SubConnect" : [
					{"ID" : "361", "SubInstance" : "add_2749_U0", "Port" : "p_dst_data_V"}]},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "segment_image_U0", "Port" : "xf_division_lut"}]},
			{"Name" : "histogram", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "get_crop_lines_U0", "Port" : "histogram"}]},
			{"Name" : "smoothed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "get_crop_lines_U0", "Port" : "smoothed"}]},
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "get_crop_lines_U0", "Port" : "line_bases"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "get_crop_lines_U0", "Port" : "segments647"}]},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "get_crop_lines_U0", "Port" : "last_c"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "get_crop_lines_U0", "Port" : "centroids"}]},
			{"Name" : "segments648", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "get_crop_lines_U0", "Port" : "segments648"}]},
			{"Name" : "last_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "get_crop_lines_U0", "Port" : "last_centroids"}]},
			{"Name" : "line_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "get_crop_lines_U0", "Port" : "line_centroids"}]},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "get_crop_lines_U0", "Port" : "lines"}]},
			{"Name" : "segments", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "303", "SubInstance" : "sectors_weed_classif_U0", "Port" : "segments"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.weed_detection_entry_U0", "Parent" : "10",
		"CDFG" : "weed_detection_entry",
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
			{"Name" : "img_in_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "402"},
			{"Name" : "img_in_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "363",
				"BlockSignal" : [
					{"Name" : "img_in_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.weed_detection_Block_U0", "Parent" : "10",
		"CDFG" : "weed_detection_Block",
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
			{"Name" : "img_in_0_rows0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "364"},
			{"Name" : "img_in_0_cols0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "365"},
			{"Name" : "resized_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "366",
				"BlockSignal" : [
					{"Name" : "resized_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0", "Parent" : "10", "Child" : ["14", "15", "17", "18", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "duplicateMat_2762",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "174963", "EstimateLatencyMax" : "924003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "14", "Name" : "duplicateMat_2_Block_U0", "ReadyCount" : "duplicateMat_2_Block_U0_ap_ready_count"},
			{"ID" : "15", "Name" : "duplicateMat_2_Loop_U0", "ReadyCount" : "duplicateMat_2_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "18", "Name" : "duplicateMat_2_Loop_1_U0"}],
		"Port" : [
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "363",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "duplicateMat_2_Block_U0", "Port" : "p_src_cols"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "403",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "duplicateMat_2_Loop_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "364",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "duplicateMat_2_Block_U0", "Port" : "p_dst1_rows"}]},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "365",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "duplicateMat_2_Block_U0", "Port" : "p_dst1_cols"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "367",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "duplicateMat_2_Loop_1_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "361", "DependentChan" : "368",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "duplicateMat_2_Loop_1_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.duplicateMat_2_Block_U0", "Parent" : "13",
		"CDFG" : "duplicateMat_2_Block",
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
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "363",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load6_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load6_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "364"},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "365"},
			{"Name" : "p_dst1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.duplicateMat_2_Loop_U0", "Parent" : "13", "Child" : ["16"],
		"CDFG" : "duplicateMat_2_Loop_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2881", "EstimateLatencyMax" : "923761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_cols_load6_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load6_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "403",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "tmp_V_read765_fu_105", "Port" : "Mat_9_720_1280_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load6_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load6_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read765_fu_105", "SubBlockPort" : ["Mat_9_720_1280_1_data_V_addr_blk_n"]}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.duplicateMat_2_Loop_U0.tmp_V_read765_fu_105", "Parent" : "15",
		"CDFG" : "read765",
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
			{"Name" : "Mat_9_720_1280_1_data_V_addr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Mat_9_720_1280_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.xFDuplicate_2_U0", "Parent" : "13",
		"CDFG" : "xFDuplicate_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "174961", "EstimateLatencyMax" : "174961",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "15",
		"StartFifo" : "start_for_xFDuplicud_U",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "p_dst1_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "p_dst2_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load6_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load6_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.duplicateMat_2_Loop_1_U0", "Parent" : "13", "Child" : ["19", "20"],
		"CDFG" : "duplicateMat_2_Loop_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "923761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "14",
		"StartFifo" : "start_for_duplicabkb_U",
		"Port" : [
			{"Name" : "p_dst1_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "367",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "call_ln113_write_r_fu_100", "Port" : "Mat_9_720_1280_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "361", "DependentChan" : "368",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "call_ln114_write_r_fu_108", "Port" : "Mat_9_720_1280_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln113_write_r_fu_100", "SubBlockPort" : ["Mat_9_720_1280_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln114_write_r_fu_108", "SubBlockPort" : ["Mat_9_720_1280_1_data_V_addr_blk_n"]}]},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.duplicateMat_2_Loop_1_U0.call_ln113_write_r_fu_100", "Parent" : "18",
		"CDFG" : "write_r",
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
			{"Name" : "Mat_9_720_1280_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_720_1280_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.duplicateMat_2_Loop_1_U0.call_ln114_write_r_fu_108", "Parent" : "18",
		"CDFG" : "write_r",
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
			{"Name" : "Mat_9_720_1280_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_720_1280_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.p_src_cols_load6_loc_1_U", "Parent" : "13"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.p_dst1_rows_c_i_U", "Parent" : "13"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.p_dst1_cols_c_i_U", "Parent" : "13"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.src_V_V_U", "Parent" : "13"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.p_src_cols_load6_loc_s_U", "Parent" : "13"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.dst_V_V_U", "Parent" : "13"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.dst1_V_V_U", "Parent" : "13"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.start_for_duplicabkb_U", "Parent" : "13"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat_2762_U0.start_for_xFDuplicud_U", "Parent" : "13"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0", "Parent" : "10", "Child" : ["31", "32", "33", "34", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "resizeNNBilinear",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "931453", "EstimateLatencyMax" : "931453",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "13",
		"StartFifo" : "start_for_resizeNbkl_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfUDivResize_fu_519"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfUDivResize_fu_519"}],
		"Port" : [
			{"Name" : "imgInput_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "367",
				"BlockSignal" : [
					{"Name" : "imgInput_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgOutput_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "369",
				"BlockSignal" : [
					{"Name" : "imgOutput_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.line_buffer_0_0_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.line_buffer_1_0_V_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.line_buffer_2_0_V_U", "Parent" : "30"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.grp_xfUDivResize_fu_519", "Parent" : "30", "Child" : ["35"],
		"CDFG" : "xfUDivResize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.grp_xfUDivResize_fu_519.ip_accel_app_udivdEe_U54", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.grp_scaleCompute_fu_544", "Parent" : "30",
		"CDFG" : "scaleCompute",
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
			{"Name" : "currindex", "Type" : "None", "Direction" : "I"},
			{"Name" : "inscale_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.ip_accel_app_mul_hbi_U60", "Parent" : "30"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.ip_accel_app_mul_ibs_U61", "Parent" : "30"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.ip_accel_app_mul_ibs_U62", "Parent" : "30"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.ip_accel_app_mul_ibs_U63", "Parent" : "30"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.ip_accel_app_mac_jbC_U64", "Parent" : "30"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.ip_accel_app_mac_jbC_U65", "Parent" : "30"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.ip_accel_app_mac_jbC_U66", "Parent" : "30"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.ip_accel_app_mac_kbM_U67", "Parent" : "30"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.ip_accel_app_mac_kbM_U68", "Parent" : "30"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resizeNNBilinear_U0.ip_accel_app_mac_kbM_U69", "Parent" : "30"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0", "Parent" : "10", "Child" : ["48", "49", "66", "81", "88", "101", "102", "109", "110", "111", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136"],
		"CDFG" : "get_vegetation_image_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2419217", "EstimateLatencyMax" : "2419217",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "12",
		"StartFifo" : "start_for_get_vegbjl_U",
		"InputProcess" : [
			{"ID" : "48", "Name" : "get_vegetation_image_113_U0", "ReadyCount" : "get_vegetation_image_113_U0_ap_ready_count"},
			{"ID" : "49", "Name" : "duplicateMat635769_U0", "ReadyCount" : "duplicateMat635769_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "111", "Name" : "convert_fp_to_8b770_U0"}],
		"Port" : [
			{"Name" : "img_in_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "366",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "get_vegetation_image_113_U0", "Port" : "img_in_cols"}]},
			{"Name" : "img_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "369",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "duplicateMat635769_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "137", "DependentChan" : "370",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "convert_fp_to_8b770_U0", "Port" : "img_out_data_V"}]}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_vegetation_image_113_U0", "Parent" : "47",
		"CDFG" : "get_vegetation_image_113",
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
			{"Name" : "img_in_0_rows0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "113"},
			{"Name" : "img_in_0_cols0", "Type" : "Vld", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "114"},
			{"Name" : "img_in_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "366",
				"BlockSignal" : [
					{"Name" : "img_in_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "img_in_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0", "Parent" : "47", "Child" : ["50", "51", "53", "54", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
		"CDFG" : "duplicateMat635769",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43743", "EstimateLatencyMax" : "58383",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "50", "Name" : "duplicateMat_Block_U0", "ReadyCount" : "duplicateMat_Block_U0_ap_ready_count"},
			{"ID" : "51", "Name" : "duplicateMat_Loop_Re_U0", "ReadyCount" : "duplicateMat_Loop_Re_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "54", "Name" : "duplicateMat_Loop_2_U0"}],
		"Port" : [
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "115",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_src_cols"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "369",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "duplicateMat_Loop_Re_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "113",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_dst1_rows"}]},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "114",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "duplicateMat_Block_U0", "Port" : "p_dst1_cols"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "116",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "duplicateMat_Loop_2_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "117",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "duplicateMat_Loop_2_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Block_U0", "Parent" : "49",
		"CDFG" : "duplicateMat_Block_s",
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
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "57",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_rows", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "113"},
			{"Name" : "p_dst1_cols", "Type" : "None", "Direction" : "I", "DependentProc" : "48", "DependentChan" : "114"},
			{"Name" : "p_dst1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "58",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "59",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Loop_Re_U0", "Parent" : "49", "Child" : ["52"],
		"CDFG" : "duplicateMat_Loop_Re",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "721", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "57",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "369",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "tmp_V_read779_fu_105", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read779_fu_105", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Loop_Re_U0.tmp_V_read779_fu_105", "Parent" : "51",
		"CDFG" : "read779",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.xFDuplicate645_U0", "Parent" : "49",
		"CDFG" : "xFDuplicate645",
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
		"StartSource" : "51",
		"StartFifo" : "start_for_xFDuplimb6_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "63",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Loop_2_U0", "Parent" : "49", "Child" : ["55", "56"],
		"CDFG" : "duplicateMat_Loop_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "50",
		"StartFifo" : "start_for_duplicalbW_U",
		"Port" : [
			{"Name" : "p_dst1_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "58",
				"BlockSignal" : [
					{"Name" : "p_dst1_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "59",
				"BlockSignal" : [
					{"Name" : "p_dst1_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "call_ln114_write_1_fu_100", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "63",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "call_ln115_write_1_fu_108", "Port" : "Mat_9_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln114_write_1_fu_100", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln115_write_1_fu_108", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Loop_2_U0.call_ln114_write_1_fu_100", "Parent" : "54",
		"CDFG" : "write_1",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.duplicateMat_Loop_2_U0.call_ln115_write_1_fu_108", "Parent" : "54",
		"CDFG" : "write_1",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.p_src_cols_load10_loc_5_U", "Parent" : "49"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.p_dst1_rows_c_i_U", "Parent" : "49"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.p_dst1_cols_c_i_U", "Parent" : "49"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.src_V_V_U", "Parent" : "49"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.p_src_cols_load10_loc_U", "Parent" : "49"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.dst_V_V_U", "Parent" : "49"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.dst1_V_V_U", "Parent" : "49"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.start_for_duplicalbW_U", "Parent" : "49"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat635769_U0.start_for_xFDuplimb6_U", "Parent" : "49"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0", "Parent" : "47", "Child" : ["67", "68", "70", "71", "74", "75", "76", "77", "78", "79", "80"],
		"CDFG" : "duplicateMat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58144", "EstimateLatencyMax" : "58144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "49",
		"StartFifo" : "start_for_duplicasc4_U",
		"InputProcess" : [
			{"ID" : "67", "Name" : "duplicateMat_Block_1_U0", "ReadyCount" : "duplicateMat_Block_1_U0_ap_ready_count"},
			{"ID" : "68", "Name" : "duplicateMat_Loop_Re_1_U0", "ReadyCount" : "duplicateMat_Loop_Re_1_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "71", "Name" : "duplicateMat_Loop_2_1_U0"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "116",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "duplicateMat_Loop_Re_1_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "118",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "duplicateMat_Loop_2_1_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "119",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "duplicateMat_Loop_2_1_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Block_1_U0", "Parent" : "66",
		"CDFG" : "duplicateMat_Block_1",
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
			{"Name" : "p_src_cols_load10_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Loop_Re_1_U0", "Parent" : "66", "Child" : ["69"],
		"CDFG" : "duplicateMat_Loop_Re_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "721", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "tmp_V_read779_fu_105", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read779_fu_105", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Loop_Re_1_U0.tmp_V_read779_fu_105", "Parent" : "68",
		"CDFG" : "read779",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.xFDuplicate_U0", "Parent" : "66",
		"CDFG" : "xFDuplicate",
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
		"StartSource" : "68",
		"StartFifo" : "start_for_xFDuplincg_U",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "p_dst1_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "p_dst2_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load10_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load10_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Loop_2_1_U0", "Parent" : "66", "Child" : ["72", "73"],
		"CDFG" : "duplicateMat_Loop_2_1",
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
		"StartSource" : "70",
		"StartFifo" : "start_for_duplicaocq_U",
		"Port" : [
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "call_ln114_write_1_fu_90", "Port" : "Mat_9_180_320_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "call_ln115_write_1_fu_98", "Port" : "Mat_9_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln114_write_1_fu_90", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln115_write_1_fu_98", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Loop_2_1_U0.call_ln114_write_1_fu_90", "Parent" : "71",
		"CDFG" : "write_1",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.duplicateMat_Loop_2_1_U0.call_ln115_write_1_fu_98", "Parent" : "71",
		"CDFG" : "write_1",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.p_src_cols_load10_loc_2_U", "Parent" : "66"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.src_V_V_U", "Parent" : "66"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.p_src_cols_load10_loc_U", "Parent" : "66"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.dst_V_V_U", "Parent" : "66"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.dst1_V_V_U", "Parent" : "66"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.start_for_xFDuplincg_U", "Parent" : "66"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.duplicateMat_U0.start_for_duplicaocq_U", "Parent" : "66"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.extract_channels_U0", "Parent" : "47", "Child" : ["82", "84", "86"],
		"CDFG" : "extract_channels",
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
		"StartSource" : "49",
		"StartFifo" : "start_for_extracttde_U",
		"InputProcess" : [
			{"ID" : "82", "Name" : "extractChannel432_U0", "ReadyCount" : "extractChannel432_U0_ap_ready_count"},
			{"ID" : "84", "Name" : "extractChannel433_U0", "ReadyCount" : "extractChannel433_U0_ap_ready_count"},
			{"ID" : "86", "Name" : "extractChannel434_U0", "ReadyCount" : "extractChannel434_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "82", "Name" : "extractChannel432_U0"},
			{"ID" : "84", "Name" : "extractChannel433_U0"},
			{"ID" : "86", "Name" : "extractChannel434_U0"}],
		"Port" : [
			{"Name" : "img_in_0_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "117",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "extractChannel432_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_in_1_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "118",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "extractChannel433_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_in_2_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "119",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "extractChannel434_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "r_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "120",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "extractChannel434_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "g_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "121",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "extractChannel433_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "b_channel_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "122",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "extractChannel432_U0", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.extract_channels_U0.extractChannel432_U0", "Parent" : "81", "Child" : ["83"],
		"CDFG" : "extractChannel432",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfChannelExtractKern_fu_20"}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "117",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "122",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.extract_channels_U0.extractChannel432_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "82",
		"CDFG" : "xfChannelExtractKern",
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
			{"Name" : "p_channel", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.extract_channels_U0.extractChannel433_U0", "Parent" : "81", "Child" : ["85"],
		"CDFG" : "extractChannel433",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfChannelExtractKern_fu_20"}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "118",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "121",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.extract_channels_U0.extractChannel433_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "84",
		"CDFG" : "xfChannelExtractKern",
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
			{"Name" : "p_channel", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.extract_channels_U0.extractChannel434_U0", "Parent" : "81", "Child" : ["87"],
		"CDFG" : "extractChannel434",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xfChannelExtractKern_fu_20"}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "119",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "120",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_xfChannelExtractKern_fu_20", "Port" : "p_dst_mat_data_V"}]}]},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.extract_channels_U0.extractChannel434_U0.grp_xfChannelExtractKern_fu_20", "Parent" : "86",
		"CDFG" : "xfChannelExtractKern",
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
			{"Name" : "p_channel", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0", "Parent" : "47", "Child" : ["89", "91", "93", "95", "96", "97", "98", "99", "100"],
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
			{"ID" : "89", "Name" : "minMaxLoc435_U0", "ReadyCount" : "minMaxLoc435_U0_ap_ready_count"},
			{"ID" : "91", "Name" : "minMaxLoc436_U0", "ReadyCount" : "minMaxLoc436_U0_ap_ready_count"},
			{"ID" : "93", "Name" : "minMaxLoc_U0", "ReadyCount" : "minMaxLoc_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "95", "Name" : "p_prop_ret_max_b_dc_U0"},
			{"ID" : "96", "Name" : "p_prop_ret_max_g_dc_U0"},
			{"ID" : "97", "Name" : "p_prop_ret_max_r_dc_U0"}],
		"Port" : [
			{"Name" : "r_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "minMaxLoc435_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "g_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "minMaxLoc436_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "b_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "minMaxLoc_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "123",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "p_prop_ret_max_r_dc_U0", "Port" : "max_r_out"}]},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "124",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "p_prop_ret_max_g_dc_U0", "Port" : "max_g_out"}]},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "125",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "p_prop_ret_max_b_dc_U0", "Port" : "max_b_out"}]}]},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc435_U0", "Parent" : "88", "Child" : ["90"],
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
					{"ID" : "90", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc435_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "89",
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
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc436_U0", "Parent" : "88", "Child" : ["92"],
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
					{"ID" : "92", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc436_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "91",
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc_U0", "Parent" : "88", "Child" : ["94"],
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
					{"ID" : "94", "SubInstance" : "grp_xFMinMaxLocKernel_fu_16", "Port" : "p_src_data_V"}]}]},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.minMaxLoc_U0.grp_xFMinMaxLocKernel_fu_16", "Parent" : "93",
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.p_prop_ret_max_b_dc_U0", "Parent" : "88",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "100"},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "max_b_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.p_prop_ret_max_g_dc_U0", "Parent" : "88",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "99"},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "max_g_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.p_prop_ret_max_r_dc_U0", "Parent" : "88",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "98"},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "max_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.max_r_dc_channel_U", "Parent" : "88"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.max_g_dc_channel_U", "Parent" : "88"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_max_from_channel_U0.max_b_dc_channel_U", "Parent" : "88"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_vegetation_image_U0", "Parent" : "47",
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
			{"Name" : "max_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "max_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "max_g_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "max_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "126",
				"BlockSignal" : [
					{"Name" : "max_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "127",
				"BlockSignal" : [
					{"Name" : "max_g_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "128",
				"BlockSignal" : [
					{"Name" : "max_b_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_exg_image_U0", "Parent" : "47", "Child" : ["103", "104", "105", "106", "107", "108"],
		"CDFG" : "get_exg_image",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2419201", "EstimateLatencyMax" : "2419201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "r_channel_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "g_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "g_channel_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_channel_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "b_channel_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "126",
				"BlockSignal" : [
					{"Name" : "max_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_g", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "127",
				"BlockSignal" : [
					{"Name" : "max_g_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "128",
				"BlockSignal" : [
					{"Name" : "max_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "veg_img_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "111", "DependentChan" : "129",
				"BlockSignal" : [
					{"Name" : "veg_img_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "110", "DependentChan" : "130",
				"BlockSignal" : [
					{"Name" : "min_value_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "131",
				"BlockSignal" : [
					{"Name" : "max_value_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivpcA_U182", "Parent" : "102"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivpcA_U183", "Parent" : "102"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivpcA_U184", "Parent" : "102"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivqcK_U185", "Parent" : "102"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivqcK_U186", "Parent" : "102"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_exg_image_U0.ip_accel_app_sdivqcK_U187", "Parent" : "102"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_vegetation_image_3_U0", "Parent" : "47",
		"CDFG" : "get_vegetation_image_3",
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
			{"Name" : "max_value_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "131",
				"BlockSignal" : [
					{"Name" : "max_value_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.get_vegetation_image_2_U0", "Parent" : "47",
		"CDFG" : "get_vegetation_image_2",
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
			{"Name" : "min_value_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "130",
				"BlockSignal" : [
					{"Name" : "min_value_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "132"},
			{"Name" : "min_value_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "111", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "min_value_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.convert_fp_to_8b770_U0", "Parent" : "47", "Child" : ["112"],
		"CDFG" : "convert_fp_to_8b770",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57623", "EstimateLatencyMax" : "57623",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "min_value_V_c17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "min_value_V_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub_ln703_cast_loc_c", "Type" : "None", "Direction" : "I", "DependentProc" : "110", "DependentChan" : "134"},
			{"Name" : "veg_temp_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "129",
				"BlockSignal" : [
					{"Name" : "veg_temp_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "137", "DependentChan" : "370",
				"BlockSignal" : [
					{"Name" : "img_out_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.convert_fp_to_8b770_U0.ip_accel_app_sdivrcU_U203", "Parent" : "111"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.img_in_0_rows_channe_U", "Parent" : "47"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.img_in_0_cols_channe_U", "Parent" : "47"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.img_in_cols_c_i_U", "Parent" : "47"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.img_in_0_data_V_U", "Parent" : "47"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.img_in_1_data_V_U", "Parent" : "47"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.img_in_2_data_V_U", "Parent" : "47"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.img_in_3_data_V_U", "Parent" : "47"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.r_channel_data_V_U", "Parent" : "47"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.g_channel_data_V_U", "Parent" : "47"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.b_channel_data_V_U", "Parent" : "47"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.max_r_c_i_U", "Parent" : "47"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.max_g_c_i_U", "Parent" : "47"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.max_b_c_i_U", "Parent" : "47"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.max_r_c14_i_U", "Parent" : "47"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.max_g_c15_i_U", "Parent" : "47"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.max_b_c16_i_U", "Parent" : "47"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.veg_temp_data_V_U", "Parent" : "47"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.min_value_V_c_i_U", "Parent" : "47"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.max_value_V_c_i_U", "Parent" : "47"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.extLd_cast_loc_chann_U", "Parent" : "47"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.min_value_V_c17_i_U", "Parent" : "47"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.sub_ln703_cast_loc_c_U", "Parent" : "47"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.start_for_duplicasc4_U", "Parent" : "47"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_vegetation_image_4_U0.start_for_extracttde_U", "Parent" : "47"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0", "Parent" : "10", "Child" : ["138", "149"],
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
		"StartSource" : "47",
		"StartFifo" : "start_for_segmentbml_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_OtsuThreshold_fu_22"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Threshold_fu_30"}],
		"Port" : [
			{"Name" : "img_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "370",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_Threshold_fu_30", "Port" : "p_src_mat_data_V"},
					{"ID" : "138", "SubInstance" : "grp_OtsuThreshold_fu_22", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "img_out_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "371",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_Threshold_fu_30", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_OtsuThreshold_fu_22", "Port" : "xf_division_lut"}]}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22", "Parent" : "137", "Child" : ["139", "140", "146"],
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
					{"ID" : "146", "SubInstance" : "grp_xFHistogramKernel_fu_35", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "xf_division_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_xfOtsuKernel_fu_28", "Port" : "xf_division_lut"}]}]},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22.hist_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28", "Parent" : "138", "Child" : ["141", "142", "144"],
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
					{"ID" : "144", "SubInstance" : "grp_Inverse_fu_239", "Port" : "xf_division_lut"},
					{"ID" : "142", "SubInstance" : "grp_Inverse_fu_227", "Port" : "xf_division_lut"}]}]},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.HistArray_V_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_227", "Parent" : "140", "Child" : ["143"],
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
	{"ID" : "143", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_227.xf_division_lut_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_239", "Parent" : "140", "Child" : ["145"],
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
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xfOtsuKernel_fu_28.grp_Inverse_fu_239.xf_division_lut_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xFHistogramKernel_fu_35", "Parent" : "138", "Child" : ["147", "148"],
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
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xFHistogramKernel_fu_35.tmp_hist_0_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_OtsuThreshold_fu_22.grp_xFHistogramKernel_fu_35.tmp_hist1_0_U", "Parent" : "146"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segment_image_U0.grp_Threshold_fu_30", "Parent" : "137",
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
			{"Name" : "thresh", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0", "Parent" : "10", "Child" : ["151"],
		"CDFG" : "erode437",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59329", "EstimateLatencyMax" : "59329",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "137",
		"StartFifo" : "start_for_erode43bnm_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xferode790_fu_18"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "371",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_xferode790_fu_18", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "372",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_xferode790_fu_18", "Port" : "p_dst_data_V"}]}]},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0.grp_xferode790_fu_18", "Parent" : "150", "Child" : ["152", "153", "154", "155", "156", "157", "158", "159", "160"],
		"CDFG" : "xferode790",
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
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0.grp_xferode790_fu_18.buf_0_V_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0.grp_xferode790_fu_18.buf_1_V_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0.grp_xferode790_fu_18.buf_2_V_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0.grp_xferode790_fu_18.src_buf_temp_copy_ex_xfExtractPixels_1_fu_375", "Parent" : "151",
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
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0.grp_xferode790_fu_18.src_buf_temp_copy_ex_3_xfExtractPixels_1_fu_380", "Parent" : "151",
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
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0.grp_xferode790_fu_18.src_buf_temp_copy_ex_4_xfExtractPixels_1_fu_385", "Parent" : "151",
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
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0.grp_xferode790_fu_18.ip_accel_app_mux_yd2_U252", "Parent" : "151"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0.grp_xferode790_fu_18.ip_accel_app_mux_yd2_U253", "Parent" : "151"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.erode437_U0.grp_xferode790_fu_18.ip_accel_app_mux_yd2_U254", "Parent" : "151"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0", "Parent" : "10", "Child" : ["162", "163", "174", "181"],
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
		"StartSource" : "150",
		"StartFifo" : "start_for_remark_bom_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_erode_fu_111"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_total_vegetation_3_fu_118"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_duplicateMat_1_fu_124"}],
		"Port" : [
			{"Name" : "eroded_0_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "372",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_duplicateMat_1_fu_124", "Port" : "p_src_data_V"}]},
			{"Name" : "eroded_1_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "196", "DependentChan" : "373",
				"BlockSignal" : [
					{"Name" : "eroded_1_data_V_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_erode_fu_111", "Port" : "p_dst_data_V"}]},
			{"Name" : "eroded_2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "303", "DependentChan" : "374",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_duplicateMat_1_fu_124", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.eroded_tmp_data_V_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111", "Parent" : "161", "Child" : ["164"],
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
					{"ID" : "164", "SubInstance" : "grp_xferode793_fu_18", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_xferode793_fu_18", "Port" : "p_dst_data_V"}]}]},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18", "Parent" : "163", "Child" : ["165", "166", "167", "168", "169", "170", "171", "172", "173"],
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
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.buf_0_V_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.buf_1_V_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.buf_2_V_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.src_buf_temp_copy_ex_xfExtractPixels_1_fu_378", "Parent" : "164",
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
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.src_buf_temp_copy_ex_1_xfExtractPixels_1_fu_383", "Parent" : "164",
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
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.src_buf_temp_copy_ex_2_xfExtractPixels_1_fu_388", "Parent" : "164",
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
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.ip_accel_app_mux_yd2_U298", "Parent" : "164"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.ip_accel_app_mux_yd2_U299", "Parent" : "164"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_erode_fu_111.grp_xferode793_fu_18.ip_accel_app_mux_yd2_U300", "Parent" : "164"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118", "Parent" : "161", "Child" : ["175", "176", "177", "178", "179", "180"],
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
			{"ID" : "177", "Name" : "get_total_vegetation_2_U0"}],
		"Port" : [
			{"Name" : "agg_result_V", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "get_total_vegetation_2_U0", "Port" : "agg_result_V"}]},
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "get_total_vegetation_1_U0", "Port" : "img_in_data_V"},
					{"ID" : "175", "SubInstance" : "get_total_vegetation_U0", "Port" : "img_in_data_V"}]}]},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.get_total_vegetation_U0", "Parent" : "174",
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
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "178"}]},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.get_total_vegetation_1_U0", "Parent" : "174",
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
			{"Name" : "img_in_data_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "178"}]},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.get_total_vegetation_2_U0", "Parent" : "174",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "179"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "180"},
			{"Name" : "agg_result_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.img_in_data_V_U", "Parent" : "174"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.p_Val2_loc_channel_U", "Parent" : "174"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_get_total_vegetation_3_fu_118.p_Val2_19_loc_chan_U", "Parent" : "174"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124", "Parent" : "161", "Child" : ["182", "184", "185", "187", "188", "189", "190", "191", "192", "193"],
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
			{"ID" : "182", "Name" : "duplicateMat_Loop_Re_2_U0"}],
		"OutputProcess" : [
			{"ID" : "185", "Name" : "duplicateMat_Loop_2_2_U0"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "duplicateMat_Loop_Re_2_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "duplicateMat_Loop_2_2_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "duplicateMat_Loop_2_2_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.duplicateMat_Loop_Re_2_U0", "Parent" : "181", "Child" : ["183"],
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
					{"ID" : "183", "SubInstance" : "tmp_V_read_r_fu_123", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_rows_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "p_src_rows_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "p_src_cols_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_cols_read_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst2_cols_read_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read_r_fu_123", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.duplicateMat_Loop_Re_2_U0.tmp_V_read_r_fu_123", "Parent" : "182",
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
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.xFDuplicate637_U0", "Parent" : "181",
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
		"StartSource" : "182",
		"StartFifo" : "start_for_xFDuplizec_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_rows_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "p_src_rows_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "p_src_cols_read_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.duplicateMat_Loop_2_2_U0", "Parent" : "181", "Child" : ["186"],
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
		"StartSource" : "184",
		"StartFifo" : "start_for_duplicaAem_U",
		"Port" : [
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "call_ln115_write797_fu_112", "Port" : "Mat_0_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln115_write797_fu_112", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.duplicateMat_Loop_2_2_U0.call_ln115_write797_fu_112", "Parent" : "185",
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
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.src_V_V_U", "Parent" : "181"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.p_src_rows_read_c_U", "Parent" : "181"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.p_src_cols_read_c_U", "Parent" : "181"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.dst_V_V_U", "Parent" : "181"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.dst1_V_V_U", "Parent" : "181"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.start_for_xFDuplizec_U", "Parent" : "181"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.remark_crop_lines_U0.grp_duplicateMat_1_fu_124.start_for_duplicaAem_U", "Parent" : "181"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0", "Parent" : "10", "Child" : ["195", "196", "198", "199", "202", "203", "204", "205", "206", "207", "208"],
		"CDFG" : "duplicateMat438",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58144", "EstimateLatencyMax" : "58144",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "195", "Name" : "duplicateMat438_Bloc_U0", "ReadyCount" : "duplicateMat438_Bloc_U0_ap_ready_count"},
			{"ID" : "196", "Name" : "duplicateMat438_Loop_U0", "ReadyCount" : "duplicateMat438_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "199", "Name" : "duplicateMat438_Loop_1_U0"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "373",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "duplicateMat438_Loop_U0", "Port" : "p_src_data_V"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "375",
				"SubConnect" : [
					{"ID" : "199", "SubInstance" : "duplicateMat438_Loop_1_U0", "Port" : "p_dst1_data_V"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "376",
				"SubConnect" : [
					{"ID" : "199", "SubInstance" : "duplicateMat438_Loop_1_U0", "Port" : "p_dst2_data_V"}]}]},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.duplicateMat438_Bloc_U0", "Parent" : "194",
		"CDFG" : "duplicateMat438_Bloc",
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
			{"Name" : "p_src_cols_load7_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.duplicateMat438_Loop_U0", "Parent" : "194", "Child" : ["197"],
		"CDFG" : "duplicateMat438_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "721", "EstimateLatencyMax" : "58141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "373",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "tmp_V_read_r_fu_105", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load7_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "tmp_V_read_r_fu_105", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.duplicateMat438_Loop_U0.tmp_V_read_r_fu_105", "Parent" : "196",
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
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.xFDuplicate_1_U0", "Parent" : "194",
		"CDFG" : "xFDuplicate_1",
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
		"StartSource" : "196",
		"StartFifo" : "start_for_xFDupliDeQ_U",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "p_dst1_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "p_dst2_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "p_src_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.duplicateMat438_Loop_1_U0", "Parent" : "194", "Child" : ["200", "201"],
		"CDFG" : "duplicateMat438_Loop_1",
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
		"StartSource" : "198",
		"StartFifo" : "start_for_duplicaEe0_U",
		"Port" : [
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "198", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "375",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "call_ln114_write797_fu_90", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "dst1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "198", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "dst1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst2_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "376",
				"BlockSignal" : [
					{"Name" : "p_dst2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "call_ln115_write797_fu_98", "Port" : "Mat_0_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln114_write797_fu_90", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "call_ln115_write797_fu_98", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.duplicateMat438_Loop_1_U0.call_ln114_write797_fu_90", "Parent" : "199",
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
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.duplicateMat438_Loop_1_U0.call_ln115_write797_fu_98", "Parent" : "199",
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
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.p_src_cols_load7_loc_1_U", "Parent" : "194"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.src_V_V_U", "Parent" : "194"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.p_src_cols_load7_loc_s_U", "Parent" : "194"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.dst_V_V_U", "Parent" : "194"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.dst1_V_V_U", "Parent" : "194"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.start_for_xFDupliDeQ_U", "Parent" : "194"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.duplicateMat438_U0.start_for_duplicaEe0_U", "Parent" : "194"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_12th_segment_U0", "Parent" : "10", "Child" : ["210"],
		"CDFG" : "get_12th_segment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7362", "EstimateLatencyMax" : "7362",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "194",
		"StartFifo" : "start_for_get_12tbpm_U",
		"InputProcess" : [
			{"ID" : "210", "Name" : "get_12th_segment_Loo_U0"}],
		"OutputProcess" : [
			{"ID" : "210", "Name" : "get_12th_segment_Loo_U0"}],
		"Port" : [
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "199", "DependentChan" : "375",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "get_12th_segment_Loo_U0", "Port" : "eroded_data_V"}]},
			{"Name" : "bottom_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "377",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "get_12th_segment_Loo_U0", "Port" : "bottom_data_V"}]}]},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_12th_segment_U0.get_12th_segment_Loo_U0", "Parent" : "209",
		"CDFG" : "get_12th_segment_Loo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7362", "EstimateLatencyMax" : "7362",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "199", "DependentChan" : "375",
				"BlockSignal" : [
					{"Name" : "eroded_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bottom_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "377",
				"BlockSignal" : [
					{"Name" : "bottom_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0", "Parent" : "10", "Child" : ["212", "213", "214", "215", "269", "292", "297", "300"],
		"CDFG" : "get_crop_lines",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "135429", "EstimateLatencyMax" : "2388939",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "194",
		"StartFifo" : "start_for_get_crobqm_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extr_half_1_cent_fu_48"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extr_half_2_cent_fu_62"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_lines_lsl_fu_76"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_line_bases_fu_88"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_weed_mask_fu_100"}],
		"Port" : [
			{"Name" : "bottom_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "210", "DependentChan" : "377",
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "bottom_data_V"}]},
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "199", "DependentChan" : "376",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "eroded_data_V"},
					{"ID" : "269", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "eroded_data_V"}]},
			{"Name" : "weed_mask_tmp_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "303", "DependentChan" : "378",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_get_weed_mask_fu_100", "Port" : "weed_mask_tmp_data_V"}]},
			{"Name" : "histogram", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "histogram"}]},
			{"Name" : "smoothed", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "smoothed"}]},
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "line_bases"},
					{"ID" : "269", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "line_bases_active"},
					{"ID" : "292", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "line_bases"},
					{"ID" : "297", "SubInstance" : "grp_get_line_bases_fu_88", "Port" : "line_bases"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "segments647"}]},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "last_c"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_extr_half_1_cent_fu_48", "Port" : "centroids"},
					{"ID" : "269", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "centroids"},
					{"ID" : "292", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "centroids"}]},
			{"Name" : "segments648", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "segments648"}]},
			{"Name" : "last_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_extr_half_2_cent_fu_62", "Port" : "last_centroids"}]},
			{"Name" : "line_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "line_centroids"}]},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_get_weed_mask_fu_100", "Port" : "lines"},
					{"ID" : "292", "SubInstance" : "grp_get_lines_lsl_fu_76", "Port" : "lines"}]}]},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.line_bases_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.centroids_U", "Parent" : "211"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.lines_U", "Parent" : "211"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48", "Parent" : "211", "Child" : ["216", "217", "218", "249", "268"],
		"CDFG" : "extr_half_1_cent",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "58415",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_third_and_fo_1_fu_189"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_centroid_fh_fu_203"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_centroid_fh_fu_203"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_micro_roi_fu_217"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_micro_roi_fu_217"}],
		"Port" : [
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "line_bases_active"}]},
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "268", "SubInstance" : "grp_extract_micro_roi_fu_217", "Port" : "img_in_mr_data_V"},
					{"ID" : "218", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "eroded_data_V"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "centroids"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "segments647"}]},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_extract_third_and_fo_1_fu_189", "Port" : "last_c"}]}]},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.micro_roi_1_data_V_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.micro_roi_0_data_V_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189", "Parent" : "215", "Child" : ["219", "220", "221", "222", "241", "242", "244", "245", "246", "247", "248"],
		"CDFG" : "extract_third_and_fo_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "30050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_centroid_fh_fu_350"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_micro_roi_fu_360"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_last_centroids_fu_371"}],
		"Port" : [
			{"Name" : "line_bases_active", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_extract_micro_roi_fu_360", "Port" : "img_in_mr_data_V"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_get_last_centroids_fu_371", "Port" : "centroids"}]},
			{"Name" : "segments647", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_get_last_centroids_fu_371", "Port" : "last_c_2"}]}]},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.segments647_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.last_c_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.micro_roi_2_data_V_U", "Parent" : "218"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350", "Parent" : "218", "Child" : ["223", "224", "225", "226", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240"],
		"CDFG" : "get_centroid_fh",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1540", "EstimateLatencyMax" : "1574",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "223", "Name" : "get_centroid_fh_entr_U0", "ReadyCount" : "get_centroid_fh_entr_U0_ap_ready_count"},
			{"ID" : "225", "Name" : "get_centroid_fh_Loop_U0", "ReadyCount" : "get_centroid_fh_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "226", "Name" : "get_centroid_fh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "get_centroid_fh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "get_centroid_fh_Bloc_U0", "Port" : "c"}]}]},
	{"ID" : "223", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_entr_U0", "Parent" : "222",
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
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "v_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "v_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "v_limit_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "h_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "h_limit_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "224", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_1_U0", "Parent" : "222",
		"CDFG" : "get_centroid_fh_Bloc_1",
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
		"StartSource" : "223",
		"StartFifo" : "start_for_get_cenJfO_U",
		"Port" : [
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Loop_U0", "Parent" : "222",
		"CDFG" : "get_centroid_fh_Loop",
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
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "226", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0", "Parent" : "222", "Child" : ["227", "228"],
		"CDFG" : "get_centroid_fh_Bloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "239"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "236"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "235"},
			{"Name" : "v_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "v_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "237"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "238"}]},
	{"ID" : "227", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0.ip_accel_app_udivHfu_U362", "Parent" : "226"},
	{"ID" : "228", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.get_centroid_fh_Bloc_U0.ip_accel_app_udivIfE_U363", "Parent" : "226"},
	{"ID" : "229", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_offset_c_U", "Parent" : "222"},
	{"ID" : "230", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_offset_c_U", "Parent" : "222"},
	{"ID" : "231", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_limit_c_U", "Parent" : "222"},
	{"ID" : "232", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_limit_c8_U", "Parent" : "222"},
	{"ID" : "233", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_limit_c_U", "Parent" : "222"},
	{"ID" : "234", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_limit_c9_U", "Parent" : "222"},
	{"ID" : "235", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.lshr_ln146_cast_loc_s_U", "Parent" : "222"},
	{"ID" : "236", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.lshr_ln147_cast_loc_s_U", "Parent" : "222"},
	{"ID" : "237", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.v_sum_0_loc_channel_U", "Parent" : "222"},
	{"ID" : "238", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.h_sum_0_loc_channel_U", "Parent" : "222"},
	{"ID" : "239", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.p_sum_0_loc_channel_U", "Parent" : "222"},
	{"ID" : "240", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_centroid_fh_fu_350.start_for_get_cenJfO_U", "Parent" : "222"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_extract_micro_roi_fu_360", "Parent" : "218",
		"CDFG" : "extract_micro_roi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "783", "EstimateLatencyMax" : "783",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_in_mr_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_in_mr_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_top", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_bottom", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_left", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_right", "Type" : "None", "Direction" : "I"},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_last_centroids_fu_371", "Parent" : "218", "Child" : ["243"],
		"CDFG" : "get_last_centroids",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "243", "Name" : "get_last_centroids_L_U0"}],
		"OutputProcess" : [
			{"ID" : "243", "Name" : "get_last_centroids_L_U0"}],
		"Port" : [
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "243", "SubInstance" : "get_last_centroids_L_U0", "Port" : "centroids"}]},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "243", "SubInstance" : "get_last_centroids_L_U0", "Port" : "last_c_2"}]},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.grp_get_last_centroids_fu_371.get_last_centroids_L_U0", "Parent" : "242",
		"CDFG" : "get_last_centroids_L",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_sdivNgs_U402", "Parent" : "218"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_udivOgC_U403", "Parent" : "218"},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_udivOgC_U404", "Parent" : "218"},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_mac_PgM_U405", "Parent" : "218"},
	{"ID" : "248", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_third_and_fo_1_fu_189.ip_accel_app_mul_QgW_U406", "Parent" : "218"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203", "Parent" : "215", "Child" : ["250", "251", "252", "253", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267"],
		"CDFG" : "get_centroid_fh",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1540", "EstimateLatencyMax" : "1574",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "223", "Name" : "get_centroid_fh_entr_U0", "ReadyCount" : "get_centroid_fh_entr_U0_ap_ready_count"},
			{"ID" : "225", "Name" : "get_centroid_fh_Loop_U0", "ReadyCount" : "get_centroid_fh_Loop_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "226", "Name" : "get_centroid_fh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "252", "SubInstance" : "get_centroid_fh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "get_centroid_fh_Bloc_U0", "Port" : "c"}]}]},
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_entr_U0", "Parent" : "249",
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
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "v_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "v_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "v_limit_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "h_limit_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "h_limit_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_1_U0", "Parent" : "249",
		"CDFG" : "get_centroid_fh_Bloc_1",
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
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Loop_U0", "Parent" : "249",
		"CDFG" : "get_centroid_fh_Loop",
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
			{"Name" : "h_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "h_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_limit", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "v_limit_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_U0", "Parent" : "249", "Child" : ["254", "255"],
		"CDFG" : "get_centroid_fh_Bloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "239"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "236"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "235"},
			{"Name" : "v_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "v_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "237"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "238"}]},
	{"ID" : "254", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_U0.ip_accel_app_udivHfu_U362", "Parent" : "253"},
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.get_centroid_fh_Bloc_U0.ip_accel_app_udivIfE_U363", "Parent" : "253"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_offset_c_U", "Parent" : "249"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_offset_c_U", "Parent" : "249"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_limit_c_U", "Parent" : "249"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_limit_c8_U", "Parent" : "249"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_limit_c_U", "Parent" : "249"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_limit_c9_U", "Parent" : "249"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.lshr_ln146_cast_loc_s_U", "Parent" : "249"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.lshr_ln147_cast_loc_s_U", "Parent" : "249"},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.v_sum_0_loc_channel_U", "Parent" : "249"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.h_sum_0_loc_channel_U", "Parent" : "249"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.p_sum_0_loc_channel_U", "Parent" : "249"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_get_centroid_fh_fu_203.start_for_get_cenJfO_U", "Parent" : "249"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_1_cent_fu_48.grp_extract_micro_roi_fu_217", "Parent" : "215",
		"CDFG" : "extract_micro_roi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "783", "EstimateLatencyMax" : "783",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_in_mr_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_in_mr_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_top", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_bottom", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_left", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_right", "Type" : "None", "Direction" : "I"},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62", "Parent" : "211", "Child" : ["270", "271", "272", "273", "286", "287", "289", "290", "291"],
		"CDFG" : "extr_half_2_cent",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "120146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_centroid_sh_fu_382"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_micro_roi_fu_395"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_last_centroids_fu_406"}],
		"Port" : [
			{"Name" : "line_bases_active", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eroded_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "grp_extract_micro_roi_fu_395", "Port" : "img_in_mr_data_V"}]},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_get_last_centroids_fu_406", "Port" : "centroids"}]},
			{"Name" : "segments648", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_centroids", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_get_last_centroids_fu_406", "Port" : "last_c_2"}]}]},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.segments648_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.last_centroids_U", "Parent" : "269"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.micro_roi_3_data_V_U", "Parent" : "269"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382", "Parent" : "269", "Child" : ["274", "275", "278", "279", "280", "281", "282", "283", "284", "285"],
		"CDFG" : "get_centroid_sh",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1539", "EstimateLatencyMax" : "1573",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "274", "Name" : "get_centroid_sh_Loop_U0"}],
		"OutputProcess" : [
			{"ID" : "275", "Name" : "get_centroid_sh_Bloc_U0"}],
		"Port" : [
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "274", "SubInstance" : "get_centroid_sh_Loop_U0", "Port" : "micro_roi_data_V"}]},
			{"Name" : "h_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_offset_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "possible_c_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "get_centroid_sh_Bloc_U0", "Port" : "c"}]},
			{"Name" : "c_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Loop_U0", "Parent" : "273",
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
			{"Name" : "h_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "278",
				"BlockSignal" : [
					{"Name" : "h_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_offset_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "279",
				"BlockSignal" : [
					{"Name" : "v_offset_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_x_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "280",
				"BlockSignal" : [
					{"Name" : "possible_c_x_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_y_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "281",
				"BlockSignal" : [
					{"Name" : "possible_c_y_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "282",
				"BlockSignal" : [
					{"Name" : "c_read_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Bloc_U0", "Parent" : "273", "Child" : ["276", "277"],
		"CDFG" : "get_centroid_sh_Bloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "285"},
			{"Name" : "possible_c_x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "280",
				"BlockSignal" : [
					{"Name" : "possible_c_x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "282",
				"BlockSignal" : [
					{"Name" : "c_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "283"},
			{"Name" : "v_offset_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "279",
				"BlockSignal" : [
					{"Name" : "v_offset_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "284"},
			{"Name" : "h_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "278",
				"BlockSignal" : [
					{"Name" : "h_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "possible_c_y", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "281",
				"BlockSignal" : [
					{"Name" : "possible_c_y_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "276", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Bloc_U0.ip_accel_app_udivHfu_U434", "Parent" : "275"},
	{"ID" : "277", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.get_centroid_sh_Bloc_U0.ip_accel_app_udivIfE_U435", "Parent" : "275"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.h_offset_c_U", "Parent" : "273"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.v_offset_read_c_U", "Parent" : "273"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.possible_c_x_c_U", "Parent" : "273"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.possible_c_y_c_U", "Parent" : "273"},
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.c_read_c_U", "Parent" : "273"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.v_sum_0_loc_0_i_loc_s_U", "Parent" : "273"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.h_sum_0_loc_0_i_loc_s_U", "Parent" : "273"},
	{"ID" : "285", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_centroid_sh_fu_382.p_sum_0_loc_0_i_loc_c_U", "Parent" : "273"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_extract_micro_roi_fu_395", "Parent" : "269",
		"CDFG" : "extract_micro_roi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "783", "EstimateLatencyMax" : "783",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_in_mr_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_in_mr_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_top", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_bottom", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_left", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_right", "Type" : "None", "Direction" : "I"},
			{"Name" : "micro_roi_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_last_centroids_fu_406", "Parent" : "269", "Child" : ["288"],
		"CDFG" : "get_last_centroids",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "243", "Name" : "get_last_centroids_L_U0"}],
		"OutputProcess" : [
			{"ID" : "243", "Name" : "get_last_centroids_L_U0"}],
		"Port" : [
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "288", "SubInstance" : "get_last_centroids_L_U0", "Port" : "centroids"}]},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "288", "SubInstance" : "get_last_centroids_L_U0", "Port" : "last_c_2"}]},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.grp_get_last_centroids_fu_406.get_last_centroids_L_U0", "Parent" : "287",
		"CDFG" : "get_last_centroids_L",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "seg_index_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "selected_line", "Type" : "None", "Direction" : "I"},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_c_2", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.ip_accel_app_sdivNgs_U462", "Parent" : "269"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.ip_accel_app_mac_PgM_U463", "Parent" : "269"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_extr_half_2_cent_fu_62.ip_accel_app_mul_QgW_U464", "Parent" : "269"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_lines_lsl_fu_76", "Parent" : "211", "Child" : ["293", "294", "295", "296"],
		"CDFG" : "get_lines_lsl",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "691",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "centroids", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_centroids", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_lines_lsl_fu_76.line_centroids_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_lines_lsl_fu_76.ip_accel_app_sdivXh4_U469", "Parent" : "292"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_lines_lsl_fu_76.ip_accel_app_mac_PgM_U470", "Parent" : "292"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_lines_lsl_fu_76.ip_accel_app_mul_Yie_U471", "Parent" : "292"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_line_bases_fu_88", "Parent" : "211", "Child" : ["298", "299"],
		"CDFG" : "get_line_bases",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19557", "EstimateLatencyMax" : "20517",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bottom_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bottom_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "line_bases", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "histogram", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "smoothed", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_line_bases_fu_88.histogram_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_line_bases_fu_88.smoothed_U", "Parent" : "297"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_weed_mask_fu_100", "Parent" : "211", "Child" : ["301"],
		"CDFG" : "get_weed_mask",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "115561", "EstimateLatencyMax" : "2189161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_is_crop_or_furrow_fu_117"}],
		"Port" : [
			{"Name" : "weed_mask_tmp_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "weed_mask_tmp_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lines_founded_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lines", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_is_crop_or_furrow_fu_117", "Port" : "lines"}]}]},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_weed_mask_fu_100.grp_is_crop_or_furrow_fu_117", "Parent" : "300", "Child" : ["302"],
		"CDFG" : "is_crop_or_furrow",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "lines", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "px_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "py_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "crop_width_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.get_crop_lines_U0.grp_get_weed_mask_fu_100.grp_is_crop_or_furrow_fu_117.ip_accel_app_mul_Zio_U478", "Parent" : "301"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.sectors_weed_classif_U0", "Parent" : "10", "Child" : ["304", "305", "306", "307", "308"],
		"CDFG" : "sectors_weed_classif",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59703", "EstimateLatencyMax" : "497463",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "211",
		"StartFifo" : "start_for_sectorsbrm_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bitwise_and_fu_403"}],
		"Port" : [
			{"Name" : "weed_mask_tmp_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "211", "DependentChan" : "378",
				"BlockSignal" : [
					{"Name" : "weed_mask_tmp_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "grp_bitwise_and_fu_403", "Port" : "p_src1_data_V"}]},
			{"Name" : "weed_mask_out_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "312", "DependentChan" : "379",
				"BlockSignal" : [
					{"Name" : "weed_mask_out_data_V_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "grp_bitwise_and_fu_403", "Port" : "p_dst_data_V"}]},
			{"Name" : "opened_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "374",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "grp_bitwise_and_fu_403", "Port" : "p_src2_data_V"}]},
			{"Name" : "segments", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.sectors_weed_classif_U0.segments_U", "Parent" : "303"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.sectors_weed_classif_U0.quadrant_space_U", "Parent" : "303"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.sectors_weed_classif_U0.quadrant_weed_V_U", "Parent" : "303"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.sectors_weed_classif_U0.grp_bitwise_and_fu_403", "Parent" : "303",
		"CDFG" : "bitwise_and",
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
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src1_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src2_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src2_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.sectors_weed_classif_U0.ip_accel_app_udiv6jw_U496", "Parent" : "303"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.zero_0_180_320_1_U0", "Parent" : "10",
		"CDFG" : "zero_0_180_320_1_s",
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
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "312", "DependentChan" : "380",
				"BlockSignal" : [
					{"Name" : "p_src1_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0", "Parent" : "10", "Child" : ["311", "312", "316", "317", "319", "320", "321", "322", "323", "324", "325", "326"],
		"CDFG" : "merge",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57967", "EstimateLatencyMax" : "115206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "309",
		"StartFifo" : "start_for_merge_U0_U",
		"InputProcess" : [
			{"ID" : "311", "Name" : "merge_Block_crit_e_U0", "ReadyCount" : "merge_Block_crit_e_U0_ap_ready_count"},
			{"ID" : "312", "Name" : "merge_Loop_Read_Mat_U0", "ReadyCount" : "merge_Loop_Read_Mat_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "317", "Name" : "merge_Loop_Write_Mat_U0"}],
		"Port" : [
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "303", "DependentChan" : "379",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "merge_Loop_Read_Mat_U0", "Port" : "p_src1_data_V"}]},
			{"Name" : "p_src2_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "309", "DependentChan" : "380",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "merge_Loop_Read_Mat_U0", "Port" : "p_src2_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "327", "DependentChan" : "381",
				"SubConnect" : [
					{"ID" : "317", "SubInstance" : "merge_Loop_Write_Mat_U0", "Port" : "p_dst_data_V"}]}]},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.merge_Block_crit_e_U0", "Parent" : "310",
		"CDFG" : "merge_Block_crit_e",
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
			{"Name" : "p_src1_cols_load7_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "312", "DependentChan" : "319",
				"BlockSignal" : [
					{"Name" : "p_src1_cols_load7_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.merge_Loop_Read_Mat_U0", "Parent" : "310", "Child" : ["313", "314", "315"],
		"CDFG" : "merge_Loop_Read_Mat_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "115205",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src1_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "311", "DependentChan" : "319",
				"BlockSignal" : [
					{"Name" : "p_src1_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "303", "DependentChan" : "379",
				"BlockSignal" : [
					{"Name" : "p_src1_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_read_r_fu_112", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "p_in1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "320",
				"BlockSignal" : [
					{"Name" : "p_in1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src2_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "309", "DependentChan" : "380",
				"BlockSignal" : [
					{"Name" : "p_src2_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "tmp_V_4_read_r_fu_118", "Port" : "Mat_0_180_320_1_data_V_addr"},
					{"ID" : "313", "SubInstance" : "grp_read_r_fu_112", "Port" : "Mat_0_180_320_1_data_V_addr"}]},
			{"Name" : "p_in2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "321",
				"BlockSignal" : [
					{"Name" : "p_in2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_in3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "322",
				"BlockSignal" : [
					{"Name" : "p_in3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src1_cols_load7_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "316", "DependentChan" : "323",
				"BlockSignal" : [
					{"Name" : "p_src1_cols_load7_loc_out_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_read_r_fu_112", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]},
			{"SubInstance" : "tmp_V_4_read_r_fu_118", "SubBlockPort" : ["Mat_0_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.merge_Loop_Read_Mat_U0.grp_read_r_fu_112", "Parent" : "312",
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
	{"ID" : "314", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.merge_Loop_Read_Mat_U0.tmp_V_4_read_r_fu_118", "Parent" : "312",
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
	{"ID" : "315", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.merge_Loop_Read_Mat_U0.ip_accel_app_mul_7jG_U506", "Parent" : "312"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.xfChannelCombine_U0", "Parent" : "310",
		"CDFG" : "xfChannelCombine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57961", "EstimateLatencyMax" : "57961",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "312",
		"StartFifo" : "start_for_xfChann8jQ_U",
		"Port" : [
			{"Name" : "p_in1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "312", "DependentChan" : "320",
				"BlockSignal" : [
					{"Name" : "p_in1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_in2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "312", "DependentChan" : "321",
				"BlockSignal" : [
					{"Name" : "p_in2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_in3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "312", "DependentChan" : "322",
				"BlockSignal" : [
					{"Name" : "p_in3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "317", "DependentChan" : "324",
				"BlockSignal" : [
					{"Name" : "p_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src1_cols_load7_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "312", "DependentChan" : "323",
				"BlockSignal" : [
					{"Name" : "p_src1_cols_load7_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.merge_Loop_Write_Mat_U0", "Parent" : "310", "Child" : ["318"],
		"CDFG" : "merge_Loop_Write_Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57602", "EstimateLatencyMax" : "57602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "316",
		"StartFifo" : "start_for_merge_L9j0_U",
		"Port" : [
			{"Name" : "p_out_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "316", "DependentChan" : "324",
				"BlockSignal" : [
					{"Name" : "p_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "327", "DependentChan" : "381",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "318", "SubInstance" : "call_ln341_write_1_fu_63", "Port" : "Mat_9_180_320_1_data_V_addr"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "call_ln341_write_1_fu_63", "SubBlockPort" : ["Mat_9_180_320_1_data_V_addr_blk_n"]}]},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.merge_Loop_Write_Mat_U0.call_ln341_write_1_fu_63", "Parent" : "317",
		"CDFG" : "write_1",
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
			{"Name" : "Mat_9_180_320_1_data_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Mat_9_180_320_1_data_V_addr_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.p_src1_cols_load7_loc_1_U", "Parent" : "310"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.p_in1_V_V_U", "Parent" : "310"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.p_in2_V_V_U", "Parent" : "310"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.p_in3_V_V_U", "Parent" : "310"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.p_src1_cols_load7_loc_U", "Parent" : "310"},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.p_out_V_V_U", "Parent" : "310"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.start_for_xfChann8jQ_U", "Parent" : "310"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.merge_U0.start_for_merge_L9j0_U", "Parent" : "310"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0", "Parent" : "10", "Child" : ["328"],
		"CDFG" : "resize_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "928050", "EstimateLatencyMax" : "928050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "310",
		"StartFifo" : "start_for_resize_bsm_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFResizeAreaUpScale_s_fu_18"}],
		"Port" : [
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "317", "DependentChan" : "381",
				"SubConnect" : [
					{"ID" : "328", "SubInstance" : "grp_xFResizeAreaUpScale_s_fu_18", "Port" : "stream_in_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "361", "DependentChan" : "382",
				"SubConnect" : [
					{"ID" : "328", "SubInstance" : "grp_xFResizeAreaUpScale_s_fu_18", "Port" : "resize_out_data_V"}]}]},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18", "Parent" : "327", "Child" : ["329", "330", "331", "332", "333", "334", "335", "336", "338", "339", "340", "341", "346", "351", "356"],
		"CDFG" : "xFResizeAreaUpScale_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "928049", "EstimateLatencyMax" : "928049",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFUDivAreaUp_2_fu_984"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFUDivAreaUp_2_fu_984"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFUDivAreaUp_2_fu_984"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFUDivAreaUp_2_fu_984"}],
		"Port" : [
			{"Name" : "stream_in_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resize_out_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resize_out_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.lbuf_in0_V_U", "Parent" : "328"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.lbuf_in1_V_U", "Parent" : "328"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.lbuf_in2_V_U", "Parent" : "328"},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Hoffset_V_U", "Parent" : "328"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Voffset_V_U", "Parent" : "328"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Hweight_U", "Parent" : "328"},
	{"ID" : "335", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Vweight_U", "Parent" : "328"},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.grp_xFUDivAreaUp_2_fu_984", "Parent" : "328", "Child" : ["337"],
		"CDFG" : "xFUDivAreaUp_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.grp_xFUDivAreaUp_2_fu_984.ip_accel_app_udivbak_U533", "Parent" : "336"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Pixels_CoreProcessUpArea_2_fu_1024", "Parent" : "328",
		"CDFG" : "CoreProcessUpArea_2",
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
			{"Name" : "A0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wx", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wy", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Pixels_0_1_CoreProcessUpArea_2_fu_1035", "Parent" : "328",
		"CDFG" : "CoreProcessUpArea_2",
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
			{"Name" : "A0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wx", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wy", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.Pixels_0_2_CoreProcessUpArea_2_fu_1046", "Parent" : "328",
		"CDFG" : "CoreProcessUpArea_2",
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
			{"Name" : "A0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wx", "Type" : "None", "Direction" : "I"},
			{"Name" : "Wy", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret1_xfExtractPixels_fu_1057", "Parent" : "328", "Child" : ["342", "343", "344", "345"],
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
	{"ID" : "342", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret1_xfExtractPixels_fu_1057.ip_accel_app_mux_bbk_U537", "Parent" : "341"},
	{"ID" : "343", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret1_xfExtractPixels_fu_1057.ip_accel_app_mux_bbk_U538", "Parent" : "341"},
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret1_xfExtractPixels_fu_1057.ip_accel_app_mux_bbk_U539", "Parent" : "341"},
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret1_xfExtractPixels_fu_1057.ip_accel_app_mux_bbk_U540", "Parent" : "341"},
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret_xfExtractPixels_fu_1069", "Parent" : "328", "Child" : ["347", "348", "349", "350"],
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
	{"ID" : "347", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret_xfExtractPixels_fu_1069.ip_accel_app_mux_bbk_U537", "Parent" : "346"},
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret_xfExtractPixels_fu_1069.ip_accel_app_mux_bbk_U538", "Parent" : "346"},
	{"ID" : "349", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret_xfExtractPixels_fu_1069.ip_accel_app_mux_bbk_U539", "Parent" : "346"},
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret_xfExtractPixels_fu_1069.ip_accel_app_mux_bbk_U540", "Parent" : "346"},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret2_xfExtractPixels_fu_1081", "Parent" : "328", "Child" : ["352", "353", "354", "355"],
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
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret2_xfExtractPixels_fu_1081.ip_accel_app_mux_bbk_U537", "Parent" : "351"},
	{"ID" : "353", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret2_xfExtractPixels_fu_1081.ip_accel_app_mux_bbk_U538", "Parent" : "351"},
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret2_xfExtractPixels_fu_1081.ip_accel_app_mux_bbk_U539", "Parent" : "351"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret2_xfExtractPixels_fu_1081.ip_accel_app_mux_bbk_U540", "Parent" : "351"},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret3_xfExtractPixels_fu_1093", "Parent" : "328", "Child" : ["357", "358", "359", "360"],
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
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret3_xfExtractPixels_fu_1093.ip_accel_app_mux_bbk_U537", "Parent" : "356"},
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret3_xfExtractPixels_fu_1093.ip_accel_app_mux_bbk_U538", "Parent" : "356"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret3_xfExtractPixels_fu_1093.ip_accel_app_mux_bbk_U539", "Parent" : "356"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resize_2_U0.grp_xFResizeAreaUpScale_s_fu_18.call_ret3_xfExtractPixels_fu_1093.ip_accel_app_mux_bbk_U540", "Parent" : "356"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.add_2749_U0", "Parent" : "10", "Child" : ["362"],
		"CDFG" : "add_2749",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "923762", "EstimateLatencyMax" : "923762",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "13",
		"StartFifo" : "start_for_add_274bll_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFarithm_proc_2811_fu_20"}],
		"Port" : [
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "368",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_xFarithm_proc_2811_fu_20", "Port" : "p_src1_data_V"}]},
			{"Name" : "p_src2_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "327", "DependentChan" : "382",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_xFarithm_proc_2811_fu_20", "Port" : "p_src2_data_V"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "404",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_xFarithm_proc_2811_fu_20", "Port" : "p_dst_data_V"}]}]},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.add_2749_U0.grp_xFarithm_proc_2811_fu_20", "Parent" : "361",
		"CDFG" : "xFarithm_proc_2811",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "923761", "EstimateLatencyMax" : "923761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src1_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src1_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src2_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src2_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.img_in_cols_c_U", "Parent" : "10"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.img_in_0_rows_channe_U", "Parent" : "10"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.img_in_0_cols_channe_U", "Parent" : "10"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resized_cols_channel_U", "Parent" : "10"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.img_in_0_data_V_U", "Parent" : "10"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.img_in_1_data_V_U", "Parent" : "10"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.resized_data_V_U", "Parent" : "10"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.veg_img_data_V_U", "Parent" : "10"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.segmented_data_V_U", "Parent" : "10"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.eroded_0a_data_V_U", "Parent" : "10"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.eroded_1_data_V_U", "Parent" : "10"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.eroded_0b_data_V_U", "Parent" : "10"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.eroded_1a_data_V_U", "Parent" : "10"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.eroded_1b_data_V_U", "Parent" : "10"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.bottom_data_V_U", "Parent" : "10"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.weed_mask_tmp_data_V_U", "Parent" : "10"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.weed_mask_out_data_V_U", "Parent" : "10"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.zero_data_V_U", "Parent" : "10"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.mask_img_out_data_V_U", "Parent" : "10"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.rs_mask_img_out_data_U", "Parent" : "10"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_get_vegbjl_U", "Parent" : "10"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_resizeNbkl_U", "Parent" : "10"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_add_274bll_U", "Parent" : "10"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_segmentbml_U", "Parent" : "10"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_erode43bnm_U", "Parent" : "10"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_remark_bom_U", "Parent" : "10"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_get_12tbpm_U", "Parent" : "10"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_get_crobqm_U", "Parent" : "10"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_sectorsbrm_U", "Parent" : "10"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_merge_U0_U", "Parent" : "10"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.weed_detection_U0.start_for_resize_bsm_U", "Parent" : "10"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xfMat2AXIvideo_U0", "Parent" : "0", "Child" : ["395", "396", "397", "398", "399", "400", "401"],
		"CDFG" : "xfMat2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "924481", "EstimateLatencyMax" : "924481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "10",
		"StartFifo" : "start_for_xfMat2Abtn_U",
		"Port" : [
			{"Name" : "img_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "361", "DependentChan" : "404",
				"BlockSignal" : [
					{"Name" : "img_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2AXIvideo_U0.regslice_both_AXI_video_strm_V_data_V_U", "Parent" : "394"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2AXIvideo_U0.regslice_both_AXI_video_strm_V_keep_V_U", "Parent" : "394"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2AXIvideo_U0.regslice_both_AXI_video_strm_V_strb_V_U", "Parent" : "394"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2AXIvideo_U0.regslice_both_AXI_video_strm_V_user_V_U", "Parent" : "394"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2AXIvideo_U0.regslice_both_AXI_video_strm_V_last_V_U", "Parent" : "394"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2AXIvideo_U0.regslice_both_AXI_video_strm_V_id_V_U", "Parent" : "394"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2AXIvideo_U0.regslice_both_AXI_video_strm_V_dest_V_U", "Parent" : "394"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_cols_channel7_U", "Parent" : "0"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_in_data_V_U", "Parent" : "0"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_out_data_V_U", "Parent" : "0"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xfMat2Abtn_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ip_accel_app {
		stream_in_V_data_V {Type I LastRead 6 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 6 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 6 FirstWrite -1}
		stream_in_V_user_V {Type I LastRead 6 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 6 FirstWrite -1}
		stream_in_V_id_V {Type I LastRead 6 FirstWrite -1}
		stream_in_V_dest_V {Type I LastRead 6 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_keep_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_strb_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_user_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_id_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_dest_V {Type O LastRead -1 FirstWrite 3}
		xf_division_lut {Type I LastRead -1 FirstWrite -1}
		histogram {Type IO LastRead -1 FirstWrite -1}
		smoothed {Type IO LastRead -1 FirstWrite -1}
		line_bases {Type IO LastRead -1 FirstWrite -1}
		segments647 {Type I LastRead -1 FirstWrite -1}
		last_c {Type IO LastRead -1 FirstWrite -1}
		centroids {Type IO LastRead -1 FirstWrite -1}
		segments648 {Type I LastRead -1 FirstWrite -1}
		last_centroids {Type IO LastRead -1 FirstWrite -1}
		line_centroids {Type IO LastRead -1 FirstWrite -1}
		lines {Type IO LastRead -1 FirstWrite -1}
		segments {Type I LastRead -1 FirstWrite -1}}
	Block_proc642 {
		img_in_cols {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2xfMat {
		AXI_video_strm_V_data_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 6 FirstWrite -1}
		img_data_V {Type O LastRead -1 FirstWrite 5}}
	weed_detection {
		img_in_cols {Type I LastRead 0 FirstWrite -1}
		img_in_data_V {Type I LastRead 0 FirstWrite -1}
		img_out_data_V {Type O LastRead -1 FirstWrite 3}
		xf_division_lut {Type I LastRead -1 FirstWrite -1}
		histogram {Type IO LastRead -1 FirstWrite -1}
		smoothed {Type IO LastRead -1 FirstWrite -1}
		line_bases {Type IO LastRead -1 FirstWrite -1}
		segments647 {Type I LastRead -1 FirstWrite -1}
		last_c {Type IO LastRead -1 FirstWrite -1}
		centroids {Type IO LastRead -1 FirstWrite -1}
		segments648 {Type I LastRead -1 FirstWrite -1}
		last_centroids {Type IO LastRead -1 FirstWrite -1}
		line_centroids {Type IO LastRead -1 FirstWrite -1}
		lines {Type IO LastRead -1 FirstWrite -1}
		segments {Type I LastRead -1 FirstWrite -1}}
	weed_detection_entry {
		img_in_cols {Type I LastRead 0 FirstWrite -1}
		img_in_cols_out {Type O LastRead -1 FirstWrite 0}}
	weed_detection_Block {
		img_in_0_rows0 {Type O LastRead -1 FirstWrite 0}
		img_in_0_cols0 {Type O LastRead -1 FirstWrite 0}
		resized_cols_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_2762 {
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_2_Block {
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		p_src_cols_load6_out_out {Type O LastRead -1 FirstWrite 0}
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		p_dst1_rows_out {Type O LastRead -1 FirstWrite 0}
		p_dst1_cols_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_2_Loop_s {
		p_src_cols_load6_loc {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		src_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load6_loc_out {Type O LastRead -1 FirstWrite 0}}
	read765 {
		Mat_9_720_1280_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xFDuplicate_2 {
		p_src_mat_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_dst2_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load6_loc {Type I LastRead 0 FirstWrite -1}}
	duplicateMat_2_Loop_1 {
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		dst_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		dst1_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	write_r {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_720_1280_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	write_r {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_720_1280_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	resizeNNBilinear {
		imgInput_data_V {Type I LastRead 7 FirstWrite -1}
		imgOutput_data_V {Type O LastRead -1 FirstWrite 14}}
	xfUDivResize {
		in_n {Type I LastRead 0 FirstWrite -1}
		in_d {Type I LastRead 0 FirstWrite -1}}
	scaleCompute {
		currindex {Type I LastRead 0 FirstWrite -1}
		inscale_V {Type I LastRead 0 FirstWrite -1}}
	get_vegetation_image_4 {
		img_in_cols {Type I LastRead 0 FirstWrite -1}
		img_in_data_V {Type I LastRead 0 FirstWrite -1}
		img_out_data_V {Type O LastRead -1 FirstWrite 23}}
	get_vegetation_image_113 {
		img_in_0_rows0 {Type O LastRead -1 FirstWrite 0}
		img_in_0_cols0 {Type O LastRead -1 FirstWrite 0}
		img_in_cols {Type I LastRead 0 FirstWrite -1}
		img_in_cols_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat635769 {
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_Block_s {
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		p_src_cols_load10_out_out {Type O LastRead -1 FirstWrite 0}
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		p_dst1_rows_out {Type O LastRead -1 FirstWrite 0}
		p_dst1_cols_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_Loop_Re {
		p_src_cols_load10_loc {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		src_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load10_loc_out {Type O LastRead -1 FirstWrite 0}}
	read779 {
		Mat_9_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xFDuplicate645 {
		src_V_V {Type I LastRead 3 FirstWrite -1}
		dst_V_V {Type O LastRead -1 FirstWrite 3}
		dst1_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load10_loc {Type I LastRead 0 FirstWrite -1}}
	duplicateMat_Loop_2_s {
		p_dst1_rows {Type I LastRead 0 FirstWrite -1}
		p_dst1_cols {Type I LastRead 0 FirstWrite -1}
		dst_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		dst1_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	write_1 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	write_1 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	duplicateMat {
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_Block_1 {
		p_src_cols_load10_out_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat_Loop_Re_1 {
		p_src_cols_load10_loc {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		src_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load10_loc_out {Type O LastRead -1 FirstWrite 0}}
	read779 {
		Mat_9_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xFDuplicate {
		p_src_mat_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_dst2_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load10_loc {Type I LastRead 0 FirstWrite -1}}
	duplicateMat_Loop_2_1 {
		dst_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		dst1_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	write_1 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	write_1 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	extract_channels {
		img_in_0_data_V {Type I LastRead 3 FirstWrite -1}
		img_in_1_data_V {Type I LastRead 3 FirstWrite -1}
		img_in_2_data_V {Type I LastRead 3 FirstWrite -1}
		r_channel_data_V {Type O LastRead -1 FirstWrite 3}
		g_channel_data_V {Type O LastRead -1 FirstWrite 3}
		b_channel_data_V {Type O LastRead -1 FirstWrite 3}}
	extractChannel432 {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}}
	xfChannelExtractKern {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}
		p_channel {Type I LastRead 0 FirstWrite -1}}
	extractChannel433 {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}}
	xfChannelExtractKern {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}
		p_channel {Type I LastRead 0 FirstWrite -1}}
	extractChannel434 {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}}
	xfChannelExtractKern {
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 3}
		p_channel {Type I LastRead 0 FirstWrite -1}}
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
		max_r_out {Type O LastRead -1 FirstWrite 0}}
	get_vegetation_image {
		max_r {Type I LastRead 0 FirstWrite -1}
		max_g {Type I LastRead 0 FirstWrite -1}
		max_b {Type I LastRead 0 FirstWrite -1}
		max_r_out {Type O LastRead -1 FirstWrite 0}
		max_g_out {Type O LastRead -1 FirstWrite 0}
		max_b_out {Type O LastRead -1 FirstWrite 0}}
	get_exg_image {
		r_channel_data_V {Type I LastRead 1 FirstWrite -1}
		g_channel_data_V {Type I LastRead 1 FirstWrite -1}
		b_channel_data_V {Type I LastRead 1 FirstWrite -1}
		max_r {Type I LastRead 0 FirstWrite -1}
		max_g {Type I LastRead 0 FirstWrite -1}
		max_b {Type I LastRead 0 FirstWrite -1}
		veg_img_data_V {Type O LastRead -1 FirstWrite 42}
		min_value_V_out {Type O LastRead -1 FirstWrite 1}
		max_value_V_out {Type O LastRead -1 FirstWrite 1}}
	get_vegetation_image_3 {
		max_value_V {Type I LastRead 0 FirstWrite -1}}
	get_vegetation_image_2 {
		min_value_V {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		min_value_V_out {Type O LastRead -1 FirstWrite 0}}
	convert_fp_to_8b770 {
		min_value_V_c17 {Type I LastRead 21 FirstWrite -1}
		sub_ln703_cast_loc_c {Type I LastRead 0 FirstWrite -1}
		veg_temp_data_V {Type I LastRead 23 FirstWrite -1}
		img_out_data_V {Type O LastRead -1 FirstWrite 23}}
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
		thresh {Type I LastRead 0 FirstWrite -1}}
	erode437 {
		p_src_data_V {Type I LastRead 7 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 9}}
	xferode790 {
		p_src_data_V {Type I LastRead 7 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 9}}
	xfExtractPixels_1 {
		val1_V_read {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1 {
		val1_V_read {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1 {
		val1_V_read {Type I LastRead 0 FirstWrite -1}}
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
		Mat_0_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	duplicateMat438 {
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	duplicateMat438_Bloc {
		p_src_cols_load7_out_out {Type O LastRead -1 FirstWrite 0}}
	duplicateMat438_Loop {
		p_src_cols_load7_loc {Type I LastRead 0 FirstWrite -1}
		p_src_data_V {Type I LastRead 0 FirstWrite -1}
		src_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load7_loc_out {Type O LastRead -1 FirstWrite 0}}
	read_r {
		Mat_0_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xFDuplicate_1 {
		p_src_mat_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_dst2_mat_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_cols_load7_loc {Type I LastRead 0 FirstWrite -1}}
	duplicateMat438_Loop_1 {
		dst_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst1_data_V {Type O LastRead -1 FirstWrite 0}
		dst1_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst2_data_V {Type O LastRead -1 FirstWrite 0}}
	write797 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_0_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	write797 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_0_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	get_12th_segment {
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		bottom_data_V {Type O LastRead -1 FirstWrite 2}}
	get_12th_segment_Loo {
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		bottom_data_V {Type O LastRead -1 FirstWrite 2}}
	get_crop_lines {
		bottom_data_V {Type I LastRead 26 FirstWrite -1}
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		weed_mask_tmp_data_V {Type O LastRead -1 FirstWrite 3}
		histogram {Type IO LastRead -1 FirstWrite -1}
		smoothed {Type IO LastRead -1 FirstWrite -1}
		line_bases {Type IO LastRead -1 FirstWrite -1}
		segments647 {Type I LastRead -1 FirstWrite -1}
		last_c {Type IO LastRead -1 FirstWrite -1}
		centroids {Type IO LastRead -1 FirstWrite -1}
		segments648 {Type I LastRead -1 FirstWrite -1}
		last_centroids {Type IO LastRead -1 FirstWrite -1}
		line_centroids {Type IO LastRead -1 FirstWrite -1}
		lines {Type IO LastRead -1 FirstWrite -1}}
	extr_half_1_cent {
		line_bases {Type I LastRead 2 FirstWrite -1}
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		centroids {Type IO LastRead 3 FirstWrite -1}
		segments647 {Type I LastRead -1 FirstWrite -1}
		last_c {Type IO LastRead -1 FirstWrite -1}}
	extract_third_and_fo_1 {
		line_bases_active {Type I LastRead 2 FirstWrite -1}
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		centroids {Type IO LastRead 1 FirstWrite -1}
		segments647 {Type I LastRead -1 FirstWrite -1}
		last_c {Type IO LastRead -1 FirstWrite -1}}
	get_centroid_fh {
		micro_roi_data_V {Type I LastRead 2 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		v_offset {Type I LastRead 0 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 35}}
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
		h_limit_out2 {Type O LastRead -1 FirstWrite 0}}
	get_centroid_fh_Bloc_1 {
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}}
	get_centroid_fh_Loop {
		h_limit {Type I LastRead 0 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		micro_roi_data_V {Type I LastRead 2 FirstWrite -1}}
	get_centroid_fh_Bloc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		v_offset {Type I LastRead 0 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 35}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}}
	extract_micro_roi {
		img_in_mr_data_V {Type I LastRead 2 FirstWrite -1}
		x_top {Type I LastRead 0 FirstWrite -1}
		x_bottom {Type I LastRead 0 FirstWrite -1}
		y_left {Type I LastRead 0 FirstWrite -1}
		y_right {Type I LastRead 0 FirstWrite -1}
		micro_roi_data_V {Type O LastRead -1 FirstWrite 2}}
	get_last_centroids {
		centroids {Type I LastRead 1 FirstWrite -1}
		selected_line {Type I LastRead 0 FirstWrite -1}
		last_c_2 {Type O LastRead -1 FirstWrite 2}
		seg_index_start {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}}
	get_last_centroids_L {
		size {Type I LastRead 0 FirstWrite -1}
		seg_index_start {Type I LastRead 0 FirstWrite -1}
		selected_line {Type I LastRead 0 FirstWrite -1}
		centroids {Type I LastRead 1 FirstWrite -1}
		last_c_2 {Type O LastRead -1 FirstWrite 2}}
	get_centroid_fh {
		micro_roi_data_V {Type I LastRead 2 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		v_offset {Type I LastRead 0 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 35}}
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
		h_limit_out2 {Type O LastRead -1 FirstWrite 0}}
	get_centroid_fh_Bloc_1 {
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}}
	get_centroid_fh_Loop {
		h_limit {Type I LastRead 0 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		micro_roi_data_V {Type I LastRead 2 FirstWrite -1}}
	get_centroid_fh_Bloc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		v_offset {Type I LastRead 0 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 35}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}}
	extract_micro_roi {
		img_in_mr_data_V {Type I LastRead 2 FirstWrite -1}
		x_top {Type I LastRead 0 FirstWrite -1}
		x_bottom {Type I LastRead 0 FirstWrite -1}
		y_left {Type I LastRead 0 FirstWrite -1}
		y_right {Type I LastRead 0 FirstWrite -1}
		micro_roi_data_V {Type O LastRead -1 FirstWrite 2}}
	extr_half_2_cent {
		line_bases_active {Type I LastRead 2 FirstWrite -1}
		eroded_data_V {Type I LastRead 2 FirstWrite -1}
		centroids {Type IO LastRead 1 FirstWrite -1}
		segments648 {Type I LastRead -1 FirstWrite -1}
		last_centroids {Type IO LastRead -1 FirstWrite -1}}
	get_centroid_sh {
		micro_roi_data_V {Type I LastRead 2 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		v_offset_read {Type I LastRead 0 FirstWrite -1}
		v_limit {Type I LastRead 0 FirstWrite -1}
		h_limit {Type I LastRead 0 FirstWrite -1}
		possible_c_x {Type I LastRead 0 FirstWrite -1}
		possible_c_y {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 35}
		c_read {Type I LastRead 0 FirstWrite -1}}
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
		c_read_out {Type O LastRead -1 FirstWrite 0}}
	get_centroid_sh_Bloc {
		p_read {Type I LastRead 0 FirstWrite -1}
		possible_c_x {Type I LastRead 0 FirstWrite -1}
		c_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		v_offset_read {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		h_offset {Type I LastRead 0 FirstWrite -1}
		possible_c_y {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 35}}
	extract_micro_roi {
		img_in_mr_data_V {Type I LastRead 2 FirstWrite -1}
		x_top {Type I LastRead 0 FirstWrite -1}
		x_bottom {Type I LastRead 0 FirstWrite -1}
		y_left {Type I LastRead 0 FirstWrite -1}
		y_right {Type I LastRead 0 FirstWrite -1}
		micro_roi_data_V {Type O LastRead -1 FirstWrite 2}}
	get_last_centroids {
		centroids {Type I LastRead 1 FirstWrite -1}
		selected_line {Type I LastRead 0 FirstWrite -1}
		last_c_2 {Type O LastRead -1 FirstWrite 2}
		seg_index_start {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}}
	get_last_centroids_L {
		size {Type I LastRead 0 FirstWrite -1}
		seg_index_start {Type I LastRead 0 FirstWrite -1}
		selected_line {Type I LastRead 0 FirstWrite -1}
		centroids {Type I LastRead 1 FirstWrite -1}
		last_c_2 {Type O LastRead -1 FirstWrite 2}}
	get_lines_lsl {
		line_bases {Type I LastRead 1 FirstWrite -1}
		centroids {Type I LastRead 3 FirstWrite -1}
		line_centroids {Type IO LastRead -1 FirstWrite -1}
		lines {Type IO LastRead 76 FirstWrite 76}}
	get_line_bases {
		bottom_data_V {Type I LastRead 26 FirstWrite -1}
		line_bases {Type IO LastRead 9 FirstWrite 7}
		histogram {Type IO LastRead -1 FirstWrite -1}
		smoothed {Type IO LastRead -1 FirstWrite -1}}
	get_weed_mask {
		weed_mask_tmp_data_V {Type O LastRead -1 FirstWrite 3}
		lines_founded_read {Type I LastRead 0 FirstWrite -1}
		lines {Type I LastRead 1 FirstWrite -1}}
	is_crop_or_furrow {
		lines {Type I LastRead 1 FirstWrite -1}
		px_read {Type I LastRead 0 FirstWrite -1}
		py_read {Type I LastRead 0 FirstWrite -1}
		crop_width_read {Type I LastRead 0 FirstWrite -1}}
	sectors_weed_classif {
		weed_mask_tmp_data_V {Type I LastRead 10 FirstWrite -1}
		weed_mask_out_data_V {Type IO LastRead 8 FirstWrite 3}
		opened_data_V {Type I LastRead 3 FirstWrite -1}
		segments {Type I LastRead -1 FirstWrite -1}}
	bitwise_and {
		p_src1_data_V {Type I LastRead 3 FirstWrite -1}
		p_src2_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 3}}
	zero_0_180_320_1_s {
		p_src1_data_V {Type O LastRead -1 FirstWrite 3}}
	merge {
		p_src1_data_V {Type I LastRead 0 FirstWrite -1}
		p_src2_data_V {Type I LastRead 0 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 0}}
	merge_Block_crit_e {
		p_src1_cols_load7_out_out {Type O LastRead -1 FirstWrite 0}}
	merge_Loop_Read_Mat_s {
		p_src1_cols_load7_loc {Type I LastRead 0 FirstWrite -1}
		p_src1_data_V {Type I LastRead 0 FirstWrite -1}
		p_in1_V_V {Type O LastRead -1 FirstWrite 6}
		p_src2_data_V {Type I LastRead 0 FirstWrite -1}
		p_in2_V_V {Type O LastRead -1 FirstWrite 6}
		p_in3_V_V {Type O LastRead -1 FirstWrite 6}
		p_src1_cols_load7_loc_out {Type O LastRead -1 FirstWrite 0}}
	read_r {
		Mat_0_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	read_r {
		Mat_0_180_320_1_data_V_addr {Type I LastRead 0 FirstWrite -1}}
	xfChannelCombine {
		p_in1_V_V {Type I LastRead 2 FirstWrite -1}
		p_in2_V_V {Type I LastRead 2 FirstWrite -1}
		p_in3_V_V {Type I LastRead 2 FirstWrite -1}
		p_out_V_V {Type O LastRead -1 FirstWrite 2}
		p_src1_cols_load7_loc {Type I LastRead 0 FirstWrite -1}}
	merge_Loop_Write_Mat {
		p_out_V_V {Type I LastRead 2 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 0}}
	write_1 {
		val_V {Type I LastRead 0 FirstWrite -1}
		Mat_9_180_320_1_data_V_addr {Type O LastRead -1 FirstWrite 0}}
	resize_2 {
		p_src_data_V {Type I LastRead 16 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 17}}
	xFResizeAreaUpScale_s {
		stream_in_data_V {Type I LastRead 16 FirstWrite -1}
		resize_out_data_V {Type O LastRead -1 FirstWrite 17}}
	xFUDivAreaUp_2 {
		in_n {Type I LastRead 0 FirstWrite -1}
		in_d {Type I LastRead 0 FirstWrite -1}}
	CoreProcessUpArea_2 {
		A0 {Type I LastRead 0 FirstWrite -1}
		B0 {Type I LastRead 0 FirstWrite -1}
		A1 {Type I LastRead 0 FirstWrite -1}
		B1 {Type I LastRead 0 FirstWrite -1}
		Wx {Type I LastRead 0 FirstWrite -1}
		Wy {Type I LastRead 0 FirstWrite -1}}
	CoreProcessUpArea_2 {
		A0 {Type I LastRead 0 FirstWrite -1}
		B0 {Type I LastRead 0 FirstWrite -1}
		A1 {Type I LastRead 0 FirstWrite -1}
		B1 {Type I LastRead 0 FirstWrite -1}
		Wx {Type I LastRead 0 FirstWrite -1}
		Wy {Type I LastRead 0 FirstWrite -1}}
	CoreProcessUpArea_2 {
		A0 {Type I LastRead 0 FirstWrite -1}
		B0 {Type I LastRead 0 FirstWrite -1}
		A1 {Type I LastRead 0 FirstWrite -1}
		B1 {Type I LastRead 0 FirstWrite -1}
		Wx {Type I LastRead 0 FirstWrite -1}
		Wy {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels {
		tmp_buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_1_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_2_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_3_V_read {Type I LastRead 0 FirstWrite -1}
		val1_V_read {Type I LastRead 0 FirstWrite -1}
		pos_r {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels {
		tmp_buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_1_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_2_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_3_V_read {Type I LastRead 0 FirstWrite -1}
		val1_V_read {Type I LastRead 0 FirstWrite -1}
		pos_r {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels {
		tmp_buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_1_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_2_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_3_V_read {Type I LastRead 0 FirstWrite -1}
		val1_V_read {Type I LastRead 0 FirstWrite -1}
		pos_r {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels {
		tmp_buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_1_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_2_V_read {Type I LastRead 0 FirstWrite -1}
		tmp_buf_3_V_read {Type I LastRead 0 FirstWrite -1}
		val1_V_read {Type I LastRead 0 FirstWrite -1}
		pos_r {Type I LastRead 0 FirstWrite -1}}
	add_2749 {
		p_src1_data_V {Type I LastRead 3 FirstWrite -1}
		p_src2_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 3}}
	xFarithm_proc_2811 {
		p_src1_data_V {Type I LastRead 3 FirstWrite -1}
		p_src2_data_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 3}}
	xfMat2AXIvideo {
		img_data_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2419234", "Max" : "2419234"}
	, {"Name" : "Interval", "Min" : "2419202", "Max" : "2419202"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in_V_data_V { axis {  { stream_in_TDATA in_data 0 32 } } }
	stream_in_V_keep_V { axis {  { stream_in_TKEEP in_data 0 4 } } }
	stream_in_V_strb_V { axis {  { stream_in_TSTRB in_data 0 4 } } }
	stream_in_V_user_V { axis {  { stream_in_TUSER in_data 0 1 } } }
	stream_in_V_last_V { axis {  { stream_in_TLAST in_data 0 1 } } }
	stream_in_V_id_V { axis {  { stream_in_TID in_data 0 1 } } }
	stream_in_V_dest_V { axis {  { stream_in_TDEST in_data 0 1 }  { stream_in_TVALID in_vld 0 1 }  { stream_in_TREADY in_acc 1 1 } } }
	stream_out_V_data_V { axis {  { stream_out_TDATA out_data 1 32 } } }
	stream_out_V_keep_V { axis {  { stream_out_TKEEP out_data 1 4 } } }
	stream_out_V_strb_V { axis {  { stream_out_TSTRB out_data 1 4 } } }
	stream_out_V_user_V { axis {  { stream_out_TUSER out_data 1 1 } } }
	stream_out_V_last_V { axis {  { stream_out_TLAST out_data 1 1 } } }
	stream_out_V_id_V { axis {  { stream_out_TID out_data 1 1 } } }
	stream_out_V_dest_V { axis {  { stream_out_TDEST out_data 1 1 }  { stream_out_TVALID out_vld 1 1 }  { stream_out_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
