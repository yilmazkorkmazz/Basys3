// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Sun Jun  5 17:42:57 2016
// Host        : Dries007-Arch running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dries/Projects/Basys3/VGA_text/VGA_text.srcs/sources_1/ip/rom/rom_stub.v
// Design      : rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_1,Vivado 2015.4" *)
module rom(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[14:0],douta[7:0]" */;
  input clka;
  input [14:0]addra;
  output [7:0]douta;
endmodule