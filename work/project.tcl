set projDir "/home/dudu/Desktop/LED_bkup/work/planAhead"
set projName "LED"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/dudu/Desktop/LED_bkup/work/verilog/mojo_top_0.v" "/home/dudu/Desktop/LED_bkup/work/verilog/songselection_1.v" "/home/dudu/Desktop/LED_bkup/work/verilog/display_2.v" "/home/dudu/Desktop/LED_bkup/work/verilog/display_2.v" "/home/dudu/Desktop/LED_bkup/work/verilog/selsong_4.v" "/home/dudu/Desktop/LED_bkup/work/verilog/seven_seg_5.v" "/home/dudu/Desktop/LED_bkup/work/verilog/seven_seg_5.v" "/home/dudu/Desktop/LED_bkup/work/verilog/reset_conditioner_7.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/music_24.v" "/home/dudu/Desktop/LED_bkup/work/verilog/alu_25.v" "/home/dudu/Desktop/LED_bkup/work/verilog/counter_26.v" "/home/dudu/Desktop/LED_bkup/work/verilog/counter_26.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/edge_detector_8.v" "/home/dudu/Desktop/LED_bkup/work/verilog/button_conditioner_9.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/music_ROM_46.v" "/home/dudu/Desktop/LED_bkup/work/verilog/divide_by12_47.v" "/home/dudu/Desktop/LED_bkup/work/verilog/adder_48.v" "/home/dudu/Desktop/LED_bkup/work/verilog/comparator_49.v" "/home/dudu/Desktop/LED_bkup/work/verilog/boolean_50.v" "/home/dudu/Desktop/LED_bkup/work/verilog/shifter_51.v" "/home/dudu/Desktop/LED_bkup/work/verilog/multiply_52.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v" "/home/dudu/Desktop/LED_bkup/work/verilog/pipeline_38.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "/home/dudu/Desktop/LED_bkup/constraint/myconstraints.ucf" "/home/dudu/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1