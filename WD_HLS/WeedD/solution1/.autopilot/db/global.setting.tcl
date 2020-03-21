
set TopModule "ip_accel_app"
set ClockPeriod 50
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c ../../weed_detection.cpp}
set SourceFlags {sc {} c {{-D__SDSVHLS__ -ID:/Xilinx/xfopencv-master/include}}}
set DirectiveFile D:/GitHub/Weed_Detection/WD_HLS/WeedD/solution1/solution1.directive
set TBFiles {verilog {../../weed_detection_tb.cpp ../test9.bmp ../test7.bmp ../test6.bmp ../test5.bmp ../test4.bmp ../test3.bmp ../test25.bmp ../test24.bmp ../test23.bmp ../test22.bmp ../test20.bmp ../test19.bmp ../test18.bmp ../test17.bmp ../test11.bmp ../test1.bmp ../../image_config_tb.h} bc {../../weed_detection_tb.cpp ../test9.bmp ../test7.bmp ../test6.bmp ../test5.bmp ../test4.bmp ../test3.bmp ../test25.bmp ../test24.bmp ../test23.bmp ../test22.bmp ../test20.bmp ../test19.bmp ../test18.bmp ../test17.bmp ../test11.bmp ../test1.bmp ../../image_config_tb.h} sc {../../weed_detection_tb.cpp ../test9.bmp ../test7.bmp ../test6.bmp ../test5.bmp ../test4.bmp ../test3.bmp ../test25.bmp ../test24.bmp ../test23.bmp ../test22.bmp ../test20.bmp ../test19.bmp ../test18.bmp ../test17.bmp ../test11.bmp ../test1.bmp ../../image_config_tb.h} vhdl {../../weed_detection_tb.cpp ../test9.bmp ../test7.bmp ../test6.bmp ../test5.bmp ../test4.bmp ../test3.bmp ../test25.bmp ../test24.bmp ../test23.bmp ../test22.bmp ../test20.bmp ../test19.bmp ../test18.bmp ../test17.bmp ../test11.bmp ../test1.bmp ../../image_config_tb.h} c {} cas {../../weed_detection_tb.cpp ../test9.bmp ../test7.bmp ../test6.bmp ../test5.bmp ../test4.bmp ../test3.bmp ../test25.bmp ../test24.bmp ../test23.bmp ../test22.bmp ../test20.bmp ../test19.bmp ../test18.bmp ../test17.bmp ../test11.bmp ../test1.bmp ../../image_config_tb.h}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
