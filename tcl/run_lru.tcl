set LIB_PATH /home/foxxy/synopsys/syn/V-2023.12-SP3/doc/syn/dv_tutorial/risc_design/libs
set search_path [list $LIB_PATH]
set target_library [list core_typ.db]
set link_library [list "*" core_typ.db]
set OUT /scratch/rtl_depth_cache/results
file mkdir $OUT

# --- agemtx2_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx2_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx2_find_timing.rpt { report_timing }
redirect $OUT/agemtx2_find_area.rpt { report_area }
echo "agemtx2_find done."

# --- agemtx2_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx2_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx2_update_timing.rpt { report_timing }
redirect $OUT/agemtx2_update_area.rpt { report_area }
echo "agemtx2_update done."

# --- agemtx2_full ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx2_full
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx2_full_timing.rpt { report_timing }
redirect $OUT/agemtx2_full_area.rpt { report_area }
echo "agemtx2_full done."

# --- agemtx4_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx4_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx4_find_timing.rpt { report_timing }
redirect $OUT/agemtx4_find_area.rpt { report_area }
echo "agemtx4_find done."

# --- agemtx4_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx4_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx4_update_timing.rpt { report_timing }
redirect $OUT/agemtx4_update_area.rpt { report_area }
echo "agemtx4_update done."

# --- agemtx4_full ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx4_full
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx4_full_timing.rpt { report_timing }
redirect $OUT/agemtx4_full_area.rpt { report_area }
echo "agemtx4_full done."

# --- agemtx8_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx8_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx8_find_timing.rpt { report_timing }
redirect $OUT/agemtx8_find_area.rpt { report_area }
echo "agemtx8_find done."

# --- agemtx8_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx8_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx8_update_timing.rpt { report_timing }
redirect $OUT/agemtx8_update_area.rpt { report_area }
echo "agemtx8_update done."

# --- agemtx8_full ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx8_full
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx8_full_timing.rpt { report_timing }
redirect $OUT/agemtx8_full_area.rpt { report_area }
echo "agemtx8_full done."

# --- agemtx16_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx16_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx16_find_timing.rpt { report_timing }
redirect $OUT/agemtx16_find_area.rpt { report_area }
echo "agemtx16_find done."

# --- agemtx16_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx16_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx16_update_timing.rpt { report_timing }
redirect $OUT/agemtx16_update_area.rpt { report_area }
echo "agemtx16_update done."

# --- agemtx16_full ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx16_full
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx16_full_timing.rpt { report_timing }
redirect $OUT/agemtx16_full_area.rpt { report_area }
echo "agemtx16_full done."

# --- agemtx32_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx32_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx32_find_timing.rpt { report_timing }
redirect $OUT/agemtx32_find_area.rpt { report_area }
echo "agemtx32_find done."

# --- agemtx32_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design agemtx32_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/agemtx32_update_timing.rpt { report_timing }
redirect $OUT/agemtx32_update_area.rpt { report_area }
echo "agemtx32_update done."

# --- counter4_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design counter4_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/counter4_find_timing.rpt { report_timing }
redirect $OUT/counter4_find_area.rpt { report_area }
echo "counter4_find done."

# --- counter4_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design counter4_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/counter4_update_timing.rpt { report_timing }
redirect $OUT/counter4_update_area.rpt { report_area }
echo "counter4_update done."

# --- counter8_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design counter8_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/counter8_find_timing.rpt { report_timing }
redirect $OUT/counter8_find_area.rpt { report_area }
echo "counter8_find done."

# --- counter8_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design counter8_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/counter8_update_timing.rpt { report_timing }
redirect $OUT/counter8_update_area.rpt { report_area }
echo "counter8_update done."

# --- counter16_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design counter16_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/counter16_find_timing.rpt { report_timing }
redirect $OUT/counter16_find_area.rpt { report_area }
echo "counter16_find done."

# --- counter16_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design counter16_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/counter16_update_timing.rpt { report_timing }
redirect $OUT/counter16_update_area.rpt { report_area }
echo "counter16_update done."

# --- counter32_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design counter32_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/counter32_find_timing.rpt { report_timing }
redirect $OUT/counter32_find_area.rpt { report_area }
echo "counter32_find done."

# --- counter32_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design counter32_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/counter32_update_timing.rpt { report_timing }
redirect $OUT/counter32_update_area.rpt { report_area }
echo "counter32_update done."

# --- plru4_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design plru4_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/plru4_find_timing.rpt { report_timing }
redirect $OUT/plru4_find_area.rpt { report_area }
echo "plru4_find done."

# --- plru4_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design plru4_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/plru4_update_timing.rpt { report_timing }
redirect $OUT/plru4_update_area.rpt { report_area }
echo "plru4_update done."

# --- plru8_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design plru8_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/plru8_find_timing.rpt { report_timing }
redirect $OUT/plru8_find_area.rpt { report_area }
echo "plru8_find done."

# --- plru8_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design plru8_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/plru8_update_timing.rpt { report_timing }
redirect $OUT/plru8_update_area.rpt { report_area }
echo "plru8_update done."

# --- plru16_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design plru16_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/plru16_find_timing.rpt { report_timing }
redirect $OUT/plru16_find_area.rpt { report_area }
echo "plru16_find done."

# --- plru16_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design plru16_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/plru16_update_timing.rpt { report_timing }
redirect $OUT/plru16_update_area.rpt { report_area }
echo "plru16_update done."

# --- plru32_find ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design plru32_find
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/plru32_find_timing.rpt { report_timing }
redirect $OUT/plru32_find_area.rpt { report_area }
echo "plru32_find done."

# --- plru32_update ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru.v
read_verilog /scratch/rtl_depth_cache/rtl/lru/lru32.v
current_design plru32_update
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/plru32_update_timing.rpt { report_timing }
redirect $OUT/plru32_update_area.rpt { report_area }
echo "plru32_update done."

echo "ALL DONE"
exit
