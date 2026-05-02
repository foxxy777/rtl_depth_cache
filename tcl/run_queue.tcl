set LIB_PATH /home/foxxy/synopsys/syn/V-2023.12-SP3/doc/syn/dv_tutorial/risc_design/libs
set search_path [list $LIB_PATH]
set target_library [list core_typ.db]
set link_library [list "*" core_typ.db]
set OUT /scratch/rtl_depth_cache/results
file mkdir $OUT

# --- qread_1 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_1
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_1_timing.rpt { report_timing }
redirect $OUT/qread_1_area.rpt { report_area }
echo "qread_1 done."

# --- qread_2 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_2
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_2_timing.rpt { report_timing }
redirect $OUT/qread_2_area.rpt { report_area }
echo "qread_2 done."

# --- qread_2_oh ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_2_oh
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_2_oh_timing.rpt { report_timing }
redirect $OUT/qread_2_oh_area.rpt { report_area }
echo "qread_2_oh done."

# --- qread_4 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_4
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_4_timing.rpt { report_timing }
redirect $OUT/qread_4_area.rpt { report_area }
echo "qread_4 done."

# --- qread_4_oh ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_4_oh
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_4_oh_timing.rpt { report_timing }
redirect $OUT/qread_4_oh_area.rpt { report_area }
echo "qread_4_oh done."

# --- qread_1_16e ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_1_16e
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_1_16e_timing.rpt { report_timing }
redirect $OUT/qread_1_16e_area.rpt { report_area }
echo "qread_1_16e done."

# --- qread_2_16e ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_2_16e
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_2_16e_timing.rpt { report_timing }
redirect $OUT/qread_2_16e_area.rpt { report_area }
echo "qread_2_16e done."

# --- qread_4_16e ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_4_16e
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_4_16e_timing.rpt { report_timing }
redirect $OUT/qread_4_16e_area.rpt { report_area }
echo "qread_4_16e done."

# --- qread_1_32e ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_1_32e
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_1_32e_timing.rpt { report_timing }
redirect $OUT/qread_1_32e_area.rpt { report_area }
echo "qread_1_32e done."

# --- qread_2_32e ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_2_32e
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_2_32e_timing.rpt { report_timing }
redirect $OUT/qread_2_32e_area.rpt { report_area }
echo "qread_2_32e done."

# --- qread_4_32e ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue.v
read_verilog /scratch/rtl_depth_cache/rtl/queue/queue_supplement.v
current_design qread_4_32e
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/qread_4_32e_timing.rpt { report_timing }
redirect $OUT/qread_4_32e_area.rpt { report_area }
echo "qread_4_32e done."

echo "ALL DONE"
exit
