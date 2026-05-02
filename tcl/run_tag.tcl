set LIB_PATH /home/foxxy/synopsys/syn/V-2023.12-SP3/doc/syn/dv_tutorial/risc_design/libs
set search_path [list $LIB_PATH]
set target_library [list core_typ.db]
set link_library [list "*" core_typ.db]
set OUT /scratch/rtl_depth_cache/results
file mkdir $OUT

# --- tag08_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag08_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag08_eq_timing.rpt { report_timing }
redirect $OUT/tag08_eq_area.rpt { report_area }
echo "tag08_eq done."

# --- tag08_mask_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag08_mask_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag08_mask_eq_timing.rpt { report_timing }
redirect $OUT/tag08_mask_eq_area.rpt { report_area }
echo "tag08_mask_eq done."

# --- tag08_2way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag08_2way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag08_2way_hit_timing.rpt { report_timing }
redirect $OUT/tag08_2way_hit_area.rpt { report_area }
echo "tag08_2way_hit done."

# --- tag08_4way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag08_4way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag08_4way_hit_timing.rpt { report_timing }
redirect $OUT/tag08_4way_hit_area.rpt { report_area }
echo "tag08_4way_hit done."

# --- tag08_4way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag08_4way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag08_4way_sel_timing.rpt { report_timing }
redirect $OUT/tag08_4way_sel_area.rpt { report_area }
echo "tag08_4way_sel done."

# --- tag08_8way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag08_8way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag08_8way_hit_timing.rpt { report_timing }
redirect $OUT/tag08_8way_hit_area.rpt { report_area }
echo "tag08_8way_hit done."

# --- tag08_8way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag08_8way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag08_8way_sel_timing.rpt { report_timing }
redirect $OUT/tag08_8way_sel_area.rpt { report_area }
echo "tag08_8way_sel done."

# --- tag16_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag16_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag16_eq_timing.rpt { report_timing }
redirect $OUT/tag16_eq_area.rpt { report_area }
echo "tag16_eq done."

# --- tag16_mask_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag16_mask_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag16_mask_eq_timing.rpt { report_timing }
redirect $OUT/tag16_mask_eq_area.rpt { report_area }
echo "tag16_mask_eq done."

# --- tag16_2way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag16_2way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag16_2way_hit_timing.rpt { report_timing }
redirect $OUT/tag16_2way_hit_area.rpt { report_area }
echo "tag16_2way_hit done."

# --- tag16_4way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag16_4way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag16_4way_hit_timing.rpt { report_timing }
redirect $OUT/tag16_4way_hit_area.rpt { report_area }
echo "tag16_4way_hit done."

# --- tag16_4way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag16_4way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag16_4way_sel_timing.rpt { report_timing }
redirect $OUT/tag16_4way_sel_area.rpt { report_area }
echo "tag16_4way_sel done."

# --- tag16_8way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag16_8way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag16_8way_hit_timing.rpt { report_timing }
redirect $OUT/tag16_8way_hit_area.rpt { report_area }
echo "tag16_8way_hit done."

# --- tag16_8way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag16_8way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag16_8way_sel_timing.rpt { report_timing }
redirect $OUT/tag16_8way_sel_area.rpt { report_area }
echo "tag16_8way_sel done."

# --- tag20_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag20_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag20_eq_timing.rpt { report_timing }
redirect $OUT/tag20_eq_area.rpt { report_area }
echo "tag20_eq done."

# --- tag20_mask_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag20_mask_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag20_mask_eq_timing.rpt { report_timing }
redirect $OUT/tag20_mask_eq_area.rpt { report_area }
echo "tag20_mask_eq done."

# --- tag20_2way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag20_2way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag20_2way_hit_timing.rpt { report_timing }
redirect $OUT/tag20_2way_hit_area.rpt { report_area }
echo "tag20_2way_hit done."

# --- tag20_4way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag20_4way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag20_4way_hit_timing.rpt { report_timing }
redirect $OUT/tag20_4way_hit_area.rpt { report_area }
echo "tag20_4way_hit done."

# --- tag20_4way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag20_4way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag20_4way_sel_timing.rpt { report_timing }
redirect $OUT/tag20_4way_sel_area.rpt { report_area }
echo "tag20_4way_sel done."

# --- tag20_8way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag20_8way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag20_8way_hit_timing.rpt { report_timing }
redirect $OUT/tag20_8way_hit_area.rpt { report_area }
echo "tag20_8way_hit done."

# --- tag20_8way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag20_8way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag20_8way_sel_timing.rpt { report_timing }
redirect $OUT/tag20_8way_sel_area.rpt { report_area }
echo "tag20_8way_sel done."

# --- tag24_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag24_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag24_eq_timing.rpt { report_timing }
redirect $OUT/tag24_eq_area.rpt { report_area }
echo "tag24_eq done."

# --- tag24_mask_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag24_mask_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag24_mask_eq_timing.rpt { report_timing }
redirect $OUT/tag24_mask_eq_area.rpt { report_area }
echo "tag24_mask_eq done."

# --- tag24_2way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag24_2way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag24_2way_hit_timing.rpt { report_timing }
redirect $OUT/tag24_2way_hit_area.rpt { report_area }
echo "tag24_2way_hit done."

# --- tag24_4way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag24_4way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag24_4way_hit_timing.rpt { report_timing }
redirect $OUT/tag24_4way_hit_area.rpt { report_area }
echo "tag24_4way_hit done."

# --- tag24_4way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag24_4way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag24_4way_sel_timing.rpt { report_timing }
redirect $OUT/tag24_4way_sel_area.rpt { report_area }
echo "tag24_4way_sel done."

# --- tag24_8way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag24_8way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag24_8way_hit_timing.rpt { report_timing }
redirect $OUT/tag24_8way_hit_area.rpt { report_area }
echo "tag24_8way_hit done."

# --- tag24_8way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag24_8way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag24_8way_sel_timing.rpt { report_timing }
redirect $OUT/tag24_8way_sel_area.rpt { report_area }
echo "tag24_8way_sel done."

# --- tag32_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag32_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag32_eq_timing.rpt { report_timing }
redirect $OUT/tag32_eq_area.rpt { report_area }
echo "tag32_eq done."

# --- tag32_mask_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag32_mask_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag32_mask_eq_timing.rpt { report_timing }
redirect $OUT/tag32_mask_eq_area.rpt { report_area }
echo "tag32_mask_eq done."

# --- tag32_2way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag32_2way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag32_2way_hit_timing.rpt { report_timing }
redirect $OUT/tag32_2way_hit_area.rpt { report_area }
echo "tag32_2way_hit done."

# --- tag32_4way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag32_4way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag32_4way_hit_timing.rpt { report_timing }
redirect $OUT/tag32_4way_hit_area.rpt { report_area }
echo "tag32_4way_hit done."

# --- tag32_4way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag32_4way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag32_4way_sel_timing.rpt { report_timing }
redirect $OUT/tag32_4way_sel_area.rpt { report_area }
echo "tag32_4way_sel done."

# --- tag32_8way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag32_8way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag32_8way_hit_timing.rpt { report_timing }
redirect $OUT/tag32_8way_hit_area.rpt { report_area }
echo "tag32_8way_hit done."

# --- tag32_8way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag32_8way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag32_8way_sel_timing.rpt { report_timing }
redirect $OUT/tag32_8way_sel_area.rpt { report_area }
echo "tag32_8way_sel done."

# --- tag48_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag48_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag48_eq_timing.rpt { report_timing }
redirect $OUT/tag48_eq_area.rpt { report_area }
echo "tag48_eq done."

# --- tag48_mask_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag48_mask_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag48_mask_eq_timing.rpt { report_timing }
redirect $OUT/tag48_mask_eq_area.rpt { report_area }
echo "tag48_mask_eq done."

# --- tag48_2way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag48_2way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag48_2way_hit_timing.rpt { report_timing }
redirect $OUT/tag48_2way_hit_area.rpt { report_area }
echo "tag48_2way_hit done."

# --- tag48_4way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag48_4way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag48_4way_hit_timing.rpt { report_timing }
redirect $OUT/tag48_4way_hit_area.rpt { report_area }
echo "tag48_4way_hit done."

# --- tag48_4way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag48_4way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag48_4way_sel_timing.rpt { report_timing }
redirect $OUT/tag48_4way_sel_area.rpt { report_area }
echo "tag48_4way_sel done."

# --- tag48_8way_hit ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag48_8way_hit
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag48_8way_hit_timing.rpt { report_timing }
redirect $OUT/tag48_8way_hit_area.rpt { report_area }
echo "tag48_8way_hit done."

# --- tag48_8way_sel ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag48_8way_sel
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag48_8way_sel_timing.rpt { report_timing }
redirect $OUT/tag48_8way_sel_area.rpt { report_area }
echo "tag48_8way_sel done."

# --- tag64_xor_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag64_xor_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag64_xor_eq_timing.rpt { report_timing }
redirect $OUT/tag64_xor_eq_area.rpt { report_area }
echo "tag64_xor_eq done."

# --- tag08_xor_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag08_xor_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag08_xor_eq_timing.rpt { report_timing }
redirect $OUT/tag08_xor_eq_area.rpt { report_area }
echo "tag08_xor_eq done."

# --- tag16_xor_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag16_xor_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag16_xor_eq_timing.rpt { report_timing }
redirect $OUT/tag16_xor_eq_area.rpt { report_area }
echo "tag16_xor_eq done."

# --- tag20_xor_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag20_xor_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag20_xor_eq_timing.rpt { report_timing }
redirect $OUT/tag20_xor_eq_area.rpt { report_area }
echo "tag20_xor_eq done."

# --- tag24_xor_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag24_xor_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag24_xor_eq_timing.rpt { report_timing }
redirect $OUT/tag24_xor_eq_area.rpt { report_area }
echo "tag24_xor_eq done."

# --- tag32_xor_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag32_xor_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag32_xor_eq_timing.rpt { report_timing }
redirect $OUT/tag32_xor_eq_area.rpt { report_area }
echo "tag32_xor_eq done."

# --- tag48_xor_eq ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag.v
read_verilog /scratch/rtl_depth_cache/rtl/tag/tag_xor_eq.v
current_design tag48_xor_eq
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/tag48_xor_eq_timing.rpt { report_timing }
redirect $OUT/tag48_xor_eq_area.rpt { report_area }
echo "tag48_xor_eq done."

echo "ALL DONE"
exit
