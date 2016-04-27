# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.cache/wt [current_project]
set_property parent.project_path /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_ip /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Stack/Stack.xci
set_property is_locked true [get_files /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Stack/Stack.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top Stack -part xc7a35tcpg236-1 -mode out_of_context
rename_ref -prefix_all Stack_
write_checkpoint -noxdef Stack.dcp
catch { report_utilization -file Stack_utilization_synth.rpt -pb Stack_utilization_synth.pb }
if { [catch {
  file copy -force /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.runs/Stack_synth_1/Stack.dcp /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Stack/Stack.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Stack/Stack_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Stack/Stack_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Stack/Stack_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Stack/Stack_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.ip_user_files/ip/Stack]} {
  catch { 
    file copy -force /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Stack/Stack_stub.v /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.ip_user_files/ip/Stack
  }
}

if {[file isdir /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.ip_user_files/ip/Stack]} {
  catch { 
    file copy -force /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Stack/Stack_stub.vhdl /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.ip_user_files/ip/Stack
  }
}