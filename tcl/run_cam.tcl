set LIB_PATH /home/foxxy/synopsys/syn/V-2023.12-SP3/doc/syn/dv_tutorial/risc_design/libs
set search_path [list $LIB_PATH]
set target_library [list core_typ.db]
set link_library [list "*" core_typ.db]
set OUT /scratch/rtl_depth_cache/results
file mkdir $OUT

# --- cam_A_2w8 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_2w8
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_2w8_timing.rpt { report_timing }
redirect $OUT/cam_A_2w8_area.rpt { report_area }
echo "cam_A_2w8 done."

# --- cam_A_2w16 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_2w16
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_2w16_timing.rpt { report_timing }
redirect $OUT/cam_A_2w16_area.rpt { report_area }
echo "cam_A_2w16 done."

# --- cam_A_2w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_2w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_2w32_timing.rpt { report_timing }
redirect $OUT/cam_A_2w32_area.rpt { report_area }
echo "cam_A_2w32 done."

# --- cam_A_2w48 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_2w48
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_2w48_timing.rpt { report_timing }
redirect $OUT/cam_A_2w48_area.rpt { report_area }
echo "cam_A_2w48 done."

# --- cam_A_4w8 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_4w8
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_4w8_timing.rpt { report_timing }
redirect $OUT/cam_A_4w8_area.rpt { report_area }
echo "cam_A_4w8 done."

# --- cam_A_4w16 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_4w16
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_4w16_timing.rpt { report_timing }
redirect $OUT/cam_A_4w16_area.rpt { report_area }
echo "cam_A_4w16 done."

# --- cam_A_4w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_4w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_4w32_timing.rpt { report_timing }
redirect $OUT/cam_A_4w32_area.rpt { report_area }
echo "cam_A_4w32 done."

# --- cam_A_4w48 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_4w48
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_4w48_timing.rpt { report_timing }
redirect $OUT/cam_A_4w48_area.rpt { report_area }
echo "cam_A_4w48 done."

# --- cam_A_8w8 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_8w8
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_8w8_timing.rpt { report_timing }
redirect $OUT/cam_A_8w8_area.rpt { report_area }
echo "cam_A_8w8 done."

# --- cam_A_8w16 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_8w16
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_8w16_timing.rpt { report_timing }
redirect $OUT/cam_A_8w16_area.rpt { report_area }
echo "cam_A_8w16 done."

# --- cam_A_8w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_8w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_8w32_timing.rpt { report_timing }
redirect $OUT/cam_A_8w32_area.rpt { report_area }
echo "cam_A_8w32 done."

# --- cam_A_8w48 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_8w48
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_8w48_timing.rpt { report_timing }
redirect $OUT/cam_A_8w48_area.rpt { report_area }
echo "cam_A_8w48 done."

# --- cam_A_16w8 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_16w8
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_16w8_timing.rpt { report_timing }
redirect $OUT/cam_A_16w8_area.rpt { report_area }
echo "cam_A_16w8 done."

# --- cam_A_16w16 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_16w16
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_16w16_timing.rpt { report_timing }
redirect $OUT/cam_A_16w16_area.rpt { report_area }
echo "cam_A_16w16 done."

# --- cam_A_16w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_16w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_16w32_timing.rpt { report_timing }
redirect $OUT/cam_A_16w32_area.rpt { report_area }
echo "cam_A_16w32 done."

# --- cam_A_16w48 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_16w48
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_16w48_timing.rpt { report_timing }
redirect $OUT/cam_A_16w48_area.rpt { report_area }
echo "cam_A_16w48 done."

# --- cam_B_2w8 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_2w8
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_2w8_timing.rpt { report_timing }
redirect $OUT/cam_B_2w8_area.rpt { report_area }
echo "cam_B_2w8 done."

# --- cam_B_2w16 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_2w16
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_2w16_timing.rpt { report_timing }
redirect $OUT/cam_B_2w16_area.rpt { report_area }
echo "cam_B_2w16 done."

# --- cam_B_2w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_2w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_2w32_timing.rpt { report_timing }
redirect $OUT/cam_B_2w32_area.rpt { report_area }
echo "cam_B_2w32 done."

# --- cam_B_2w48 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_2w48
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_2w48_timing.rpt { report_timing }
redirect $OUT/cam_B_2w48_area.rpt { report_area }
echo "cam_B_2w48 done."

# --- cam_B_4w8 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_4w8
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_4w8_timing.rpt { report_timing }
redirect $OUT/cam_B_4w8_area.rpt { report_area }
echo "cam_B_4w8 done."

# --- cam_B_4w16 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_4w16
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_4w16_timing.rpt { report_timing }
redirect $OUT/cam_B_4w16_area.rpt { report_area }
echo "cam_B_4w16 done."

# --- cam_B_4w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_4w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_4w32_timing.rpt { report_timing }
redirect $OUT/cam_B_4w32_area.rpt { report_area }
echo "cam_B_4w32 done."

# --- cam_B_4w48 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_4w48
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_4w48_timing.rpt { report_timing }
redirect $OUT/cam_B_4w48_area.rpt { report_area }
echo "cam_B_4w48 done."

# --- cam_B_8w8 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_8w8
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_8w8_timing.rpt { report_timing }
redirect $OUT/cam_B_8w8_area.rpt { report_area }
echo "cam_B_8w8 done."

# --- cam_B_8w16 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_8w16
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_8w16_timing.rpt { report_timing }
redirect $OUT/cam_B_8w16_area.rpt { report_area }
echo "cam_B_8w16 done."

# --- cam_B_8w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_8w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_8w32_timing.rpt { report_timing }
redirect $OUT/cam_B_8w32_area.rpt { report_area }
echo "cam_B_8w32 done."

# --- cam_B_8w48 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_8w48
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_8w48_timing.rpt { report_timing }
redirect $OUT/cam_B_8w48_area.rpt { report_area }
echo "cam_B_8w48 done."

# --- cam_B_16w8 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_16w8
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_16w8_timing.rpt { report_timing }
redirect $OUT/cam_B_16w8_area.rpt { report_area }
echo "cam_B_16w8 done."

# --- cam_B_16w16 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_16w16
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_16w16_timing.rpt { report_timing }
redirect $OUT/cam_B_16w16_area.rpt { report_area }
echo "cam_B_16w16 done."

# --- cam_B_16w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_16w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_16w32_timing.rpt { report_timing }
redirect $OUT/cam_B_16w32_area.rpt { report_area }
echo "cam_B_16w32 done."

# --- cam_B_16w48 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_B_16w48
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_B_16w48_timing.rpt { report_timing }
redirect $OUT/cam_B_16w48_area.rpt { report_area }
echo "cam_B_16w48 done."

# --- cam_C1_2w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C1_2w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C1_2w32_timing.rpt { report_timing }
redirect $OUT/cam_C1_2w32_area.rpt { report_area }
echo "cam_C1_2w32 done."

# --- cam_C1_4w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C1_4w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C1_4w32_timing.rpt { report_timing }
redirect $OUT/cam_C1_4w32_area.rpt { report_area }
echo "cam_C1_4w32 done."

# --- cam_C1_8w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C1_8w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C1_8w32_timing.rpt { report_timing }
redirect $OUT/cam_C1_8w32_area.rpt { report_area }
echo "cam_C1_8w32 done."

# --- cam_C1_16w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C1_16w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C1_16w32_timing.rpt { report_timing }
redirect $OUT/cam_C1_16w32_area.rpt { report_area }
echo "cam_C1_16w32 done."

# --- cam_C2_2w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C2_2w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C2_2w32_timing.rpt { report_timing }
redirect $OUT/cam_C2_2w32_area.rpt { report_area }
echo "cam_C2_2w32 done."

# --- cam_C2_4w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C2_4w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C2_4w32_timing.rpt { report_timing }
redirect $OUT/cam_C2_4w32_area.rpt { report_area }
echo "cam_C2_4w32 done."

# --- cam_C2_8w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C2_8w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C2_8w32_timing.rpt { report_timing }
redirect $OUT/cam_C2_8w32_area.rpt { report_area }
echo "cam_C2_8w32 done."

# --- cam_C2_16w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C2_16w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C2_16w32_timing.rpt { report_timing }
redirect $OUT/cam_C2_16w32_area.rpt { report_area }
echo "cam_C2_16w32 done."

# --- cam_C3_2w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C3_2w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C3_2w32_timing.rpt { report_timing }
redirect $OUT/cam_C3_2w32_area.rpt { report_area }
echo "cam_C3_2w32 done."

# --- cam_C3_4w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C3_4w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C3_4w32_timing.rpt { report_timing }
redirect $OUT/cam_C3_4w32_area.rpt { report_area }
echo "cam_C3_4w32 done."

# --- cam_C3_8w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C3_8w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C3_8w32_timing.rpt { report_timing }
redirect $OUT/cam_C3_8w32_area.rpt { report_area }
echo "cam_C3_8w32 done."

# --- cam_C3_16w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C3_16w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C3_16w32_timing.rpt { report_timing }
redirect $OUT/cam_C3_16w32_area.rpt { report_area }
echo "cam_C3_16w32 done."

# --- cam_D_2w32_d64 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_D_2w32_d64
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_D_2w32_d64_timing.rpt { report_timing }
redirect $OUT/cam_D_2w32_d64_area.rpt { report_area }
echo "cam_D_2w32_d64 done."

# --- cam_D_4w32_d64 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_D_4w32_d64
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_D_4w32_d64_timing.rpt { report_timing }
redirect $OUT/cam_D_4w32_d64_area.rpt { report_area }
echo "cam_D_4w32_d64 done."

# --- cam_D_8w32_d64 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_D_8w32_d64
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_D_8w32_d64_timing.rpt { report_timing }
redirect $OUT/cam_D_8w32_d64_area.rpt { report_area }
echo "cam_D_8w32_d64 done."

# --- cam_D_16w32_d64 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_D_16w32_d64
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_D_16w32_d64_timing.rpt { report_timing }
redirect $OUT/cam_D_16w32_d64_area.rpt { report_area }
echo "cam_D_16w32_d64 done."

# --- cam_E2_2w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_E2_2w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_E2_2w32_timing.rpt { report_timing }
redirect $OUT/cam_E2_2w32_area.rpt { report_area }
echo "cam_E2_2w32 done."

# --- cam_E2_4w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_E2_4w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_E2_4w32_timing.rpt { report_timing }
redirect $OUT/cam_E2_4w32_area.rpt { report_area }
echo "cam_E2_4w32 done."

# --- cam_E2_8w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_E2_8w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_E2_8w32_timing.rpt { report_timing }
redirect $OUT/cam_E2_8w32_area.rpt { report_area }
echo "cam_E2_8w32 done."

# --- cam_E2_16w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_E2_16w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_E2_16w32_timing.rpt { report_timing }
redirect $OUT/cam_E2_16w32_area.rpt { report_area }
echo "cam_E2_16w32 done."

# --- cam_E3_4w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_E3_4w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_E3_4w32_timing.rpt { report_timing }
redirect $OUT/cam_E3_4w32_area.rpt { report_area }
echo "cam_E3_4w32 done."

# --- cam_E3_8w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_E3_8w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_E3_8w32_timing.rpt { report_timing }
redirect $OUT/cam_E3_8w32_area.rpt { report_area }
echo "cam_E3_8w32 done."

# --- cam_E3_16w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_E3_16w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_E3_16w32_timing.rpt { report_timing }
redirect $OUT/cam_E3_16w32_area.rpt { report_area }
echo "cam_E3_16w32 done."

# --- cam_A_32w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_32w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_32w32_timing.rpt { report_timing }
redirect $OUT/cam_A_32w32_area.rpt { report_area }
echo "cam_A_32w32 done."

# --- cam_E2_32w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_E2_32w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_E2_32w32_timing.rpt { report_timing }
redirect $OUT/cam_E2_32w32_area.rpt { report_area }
echo "cam_E2_32w32 done."

# --- cam_A_64w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_A_64w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_A_64w32_timing.rpt { report_timing }
redirect $OUT/cam_A_64w32_area.rpt { report_area }
echo "cam_A_64w32 done."

# --- cam_E2_64w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_E2_64w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_E2_64w32_timing.rpt { report_timing }
redirect $OUT/cam_E2_64w32_area.rpt { report_area }
echo "cam_E2_64w32 done."

# --- cam_C1_32w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C1_32w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C1_32w32_timing.rpt { report_timing }
redirect $OUT/cam_C1_32w32_area.rpt { report_area }
echo "cam_C1_32w32 done."

# --- cam_C2_32w32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_supplement.v
read_verilog /scratch/rtl_depth_cache/rtl/cam/cam_c_supplement.v
current_design cam_C2_32w32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/cam_C2_32w32_timing.rpt { report_timing }
redirect $OUT/cam_C2_32w32_area.rpt { report_area }
echo "cam_C2_32w32 done."

echo "ALL DONE"
exit
