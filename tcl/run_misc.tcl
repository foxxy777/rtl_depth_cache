set LIB_PATH /home/foxxy/synopsys/syn/V-2023.12-SP3/doc/syn/dv_tutorial/risc_design/libs
set search_path [list $LIB_PATH]
set target_library [list core_typ.db]
set link_library [list "*" core_typ.db]
set OUT /scratch/rtl_depth_cache/results
file mkdir $OUT

# --- repl_first_invalid_4 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design repl_first_invalid_4
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/repl_first_invalid_4_timing.rpt { report_timing }
redirect $OUT/repl_first_invalid_4_area.rpt { report_area }
echo "repl_first_invalid_4 done."

# --- repl_first_invalid_8 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design repl_first_invalid_8
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/repl_first_invalid_8_timing.rpt { report_timing }
redirect $OUT/repl_first_invalid_8_area.rpt { report_area }
echo "repl_first_invalid_8 done."

# --- repl_first_invalid_16 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design repl_first_invalid_16
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/repl_first_invalid_16_timing.rpt { report_timing }
redirect $OUT/repl_first_invalid_16_area.rpt { report_area }
echo "repl_first_invalid_16 done."

# --- repl_first_invalid_32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design repl_first_invalid_32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/repl_first_invalid_32_timing.rpt { report_timing }
redirect $OUT/repl_first_invalid_32_area.rpt { report_area }
echo "repl_first_invalid_32 done."

# --- repl_first_invalid_64 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design repl_first_invalid_64
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/repl_first_invalid_64_timing.rpt { report_timing }
redirect $OUT/repl_first_invalid_64_area.rpt { report_area }
echo "repl_first_invalid_64 done."

# --- line032_bytesel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design line032_bytesel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/line032_bytesel_timing.rpt { report_timing }
redirect $OUT/line032_bytesel_area.rpt { report_area }
echo "line032_bytesel done."

# --- line064_bytesel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design line064_bytesel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/line064_bytesel_timing.rpt { report_timing }
redirect $OUT/line064_bytesel_area.rpt { report_area }
echo "line064_bytesel done."

# --- line128_bytesel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design line128_bytesel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/line128_bytesel_timing.rpt { report_timing }
redirect $OUT/line128_bytesel_area.rpt { report_area }
echo "line128_bytesel done."

# --- addr_set04 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design addr_set04
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/addr_set04_timing.rpt { report_timing }
redirect $OUT/addr_set04_area.rpt { report_area }
echo "addr_set04 done."

# --- addr_set06 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design addr_set06
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/addr_set06_timing.rpt { report_timing }
redirect $OUT/addr_set06_area.rpt { report_area }
echo "addr_set06 done."

# --- addr_set08 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design addr_set08
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/addr_set08_timing.rpt { report_timing }
redirect $OUT/addr_set08_area.rpt { report_area }
echo "addr_set08 done."

# --- addr_set10 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/replace/repl_first_invalid.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/bytesel.v
read_verilog /scratch/rtl_depth_cache/rtl/misc/addr_decode.v
current_design addr_set10
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/addr_set10_timing.rpt { report_timing }
redirect $OUT/addr_set10_area.rpt { report_area }
echo "addr_set10 done."

echo "ALL DONE"
exit
