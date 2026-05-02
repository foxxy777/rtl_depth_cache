set LIB_PATH /home/foxxy/synopsys/syn/V-2023.12-SP3/doc/syn/dv_tutorial/risc_design/libs
set search_path [list $LIB_PATH]
set target_library [list core_typ.db]
set link_library [list "*" core_typ.db]
set OUT /scratch/rtl_depth_cache/results
file mkdir $OUT

# --- parity8 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design parity8
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/parity8_timing.rpt { report_timing }
redirect $OUT/parity8_area.rpt { report_area }
echo "parity8 done."

# --- parity16 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design parity16
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/parity16_timing.rpt { report_timing }
redirect $OUT/parity16_area.rpt { report_area }
echo "parity16 done."

# --- parity32 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design parity32
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/parity32_timing.rpt { report_timing }
redirect $OUT/parity32_area.rpt { report_area }
echo "parity32 done."

# --- parity64 ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design parity64
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/parity64_timing.rpt { report_timing }
redirect $OUT/parity64_area.rpt { report_area }
echo "parity64 done."

# --- parity64_byte ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design parity64_byte
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/parity64_byte_timing.rpt { report_timing }
redirect $OUT/parity64_byte_area.rpt { report_area }
echo "parity64_byte done."

# --- hamming8_encode ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming8_encode
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming8_encode_timing.rpt { report_timing }
redirect $OUT/hamming8_encode_area.rpt { report_area }
echo "hamming8_encode done."

# --- hamming8_syndrome ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming8_syndrome
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming8_syndrome_timing.rpt { report_timing }
redirect $OUT/hamming8_syndrome_area.rpt { report_area }
echo "hamming8_syndrome done."

# --- hamming8_decode ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming8_decode
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming8_decode_timing.rpt { report_timing }
redirect $OUT/hamming8_decode_area.rpt { report_area }
echo "hamming8_decode done."

# --- hamming16_encode ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming16_encode
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming16_encode_timing.rpt { report_timing }
redirect $OUT/hamming16_encode_area.rpt { report_area }
echo "hamming16_encode done."

# --- hamming16_syndrome ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming16_syndrome
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming16_syndrome_timing.rpt { report_timing }
redirect $OUT/hamming16_syndrome_area.rpt { report_area }
echo "hamming16_syndrome done."

# --- hamming16_decode ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming16_decode
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming16_decode_timing.rpt { report_timing }
redirect $OUT/hamming16_decode_area.rpt { report_area }
echo "hamming16_decode done."

# --- hamming32_encode ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming32_encode
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming32_encode_timing.rpt { report_timing }
redirect $OUT/hamming32_encode_area.rpt { report_area }
echo "hamming32_encode done."

# --- hamming32_syndrome ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming32_syndrome
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming32_syndrome_timing.rpt { report_timing }
redirect $OUT/hamming32_syndrome_area.rpt { report_area }
echo "hamming32_syndrome done."

# --- hamming32_decode ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming32_decode
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming32_decode_timing.rpt { report_timing }
redirect $OUT/hamming32_decode_area.rpt { report_area }
echo "hamming32_decode done."

# --- hamming64_encode ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming64_encode
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming64_encode_timing.rpt { report_timing }
redirect $OUT/hamming64_encode_area.rpt { report_area }
echo "hamming64_encode done."

# --- hamming64_syndrome ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming64_syndrome
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming64_syndrome_timing.rpt { report_timing }
redirect $OUT/hamming64_syndrome_area.rpt { report_area }
echo "hamming64_syndrome done."

# --- hamming64_decode ---
remove_design -designs
read_verilog /scratch/rtl_depth_cache/rtl/ecc/ecc.v
current_design hamming64_decode
link
uniquify
create_clock -period 20 -name clk
set_input_delay 5 -clock clk [all_inputs]
set_output_delay 5 -clock clk [all_outputs]
set_load 0.1 [all_outputs]
compile -map_effort medium
redirect $OUT/hamming64_decode_timing.rpt { report_timing }
redirect $OUT/hamming64_decode_area.rpt { report_area }
echo "hamming64_decode done."

echo "ALL DONE"
exit
