# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {1}  -string {{generated file not found}}  -suppress 
set_msg_config  -ruleid {2}  -id {Timing 38-282}  -string {{CRITICAL WARNING: [Timing 38-282] The design failed to meet the timing requirements. Please see the timing summary report for details on the timing violations.}}  -suppress 
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.cache/wt [current_project]
set_property parent.project_path /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files /home/dries/Projects/Basys3/FPGA-Z/utils/splash.coe
add_files /home/dries/Projects/Basys3/FPGA-Z/utils/zork1.coe
add_files -quiet /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.runs/ClockDivider_synth_1/ClockDivider.dcp
set_property used_in_implementation false [get_files /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.runs/ClockDivider_synth_1/ClockDivider.dcp]
add_files -quiet /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.runs/Stack_synth_1/Stack.dcp
set_property used_in_implementation false [get_files /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.runs/Stack_synth_1/Stack.dcp]
add_files -quiet /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.runs/FrameBuffer_synth_1/FrameBuffer.dcp
set_property used_in_implementation false [get_files /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.runs/FrameBuffer_synth_1/FrameBuffer.dcp]
add_files -quiet /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.runs/Mem_synth_1/Mem.dcp
set_property used_in_implementation false [get_files /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.runs/Mem_synth_1/Mem.dcp]
read_vhdl -library xil_defaultlib {
  /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/imports/Downloads/ps2_keyboard.vhd
  /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/new/Font.vhd
  /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/new/Vga.vhd
  /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/imports/Downloads/ps2_keyboard_to_ascii.vhd
  /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/new/Prng.vhd
  /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/new/Ram.vhd
  /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/new/Top.vhd
}
read_xdc /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/constrs_1/imports/Basys3/Basys3_Master.xdc
set_property used_in_implementation false [get_files /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/constrs_1/imports/Basys3/Basys3_Master.xdc]

synth_design -top top -part xc7a35tcpg236-1
write_checkpoint -noxdef top.dcp
catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
