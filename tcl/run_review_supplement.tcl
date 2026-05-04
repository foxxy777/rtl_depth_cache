# DC synthesis script for cache review supplement experiments
# Added 2026-05-04: XOR comparators, 2-way sel, C2/C3 32-way CAM, 16/32/64 entry queue read

set LIB_PATH /home/foxxy/synopsys/syn/V-2023.12-SP3/doc/syn/dv_tutorial/risc_design/libs
set search_path [list $LIB_PATH]
set target_library [list core_typ.db]
set link_library [list "*" core_typ.db]

set OUT_DIR /scratch/rtl_depth_cache/results
set RTL_DIR /scratch/rtl_depth_cache/rtl

# XOR comparators
set XOR_MODS [list eq_xor_8 eq_xor_16 eq_xor_20 eq_xor_24 eq_xor_32 eq_xor_48]
foreach DESIGN $XOR_MODS {
    remove_design -designs
    analyze -format verilog $RTL_DIR/tag/${DESIGN}.v
    elaborate $DESIGN; link; uniquify
    create_clock -period 20 -name clk
    set_input_delay 5 -clock clk [all_inputs]
    set_output_delay 5 -clock clk [all_outputs]
    set_load 0.1 [all_outputs]
    compile -map_effort medium
    redirect $OUT_DIR/${DESIGN}_timing.rpt { report_timing }
    redirect $OUT_DIR/${DESIGN}_area.rpt { report_area }
    puts "Done: $DESIGN"
}

# 2-way tag+sel
set SEL2_MODS [list tag8_2way_sel tag16_2way_sel tag32_2way_sel tag48_2way_sel]
foreach DESIGN $SEL2_MODS {
    remove_design -designs
    analyze -format verilog $RTL_DIR/tag/${DESIGN}.v
    elaborate $DESIGN; link; uniquify
    create_clock -period 20 -name clk
    set_input_delay 5 -clock clk [all_inputs]
    set_output_delay 5 -clock clk [all_outputs]
    set_load 0.1 [all_outputs]
    compile -map_effort medium
    redirect $OUT_DIR/${DESIGN}_timing.rpt { report_timing }
    redirect $OUT_DIR/${DESIGN}_area.rpt { report_area }
    puts "Done: $DESIGN"
}

# CAM C2/C3 32-way
set CAM32_MODS [list cam_C2_32w32 cam_C3_32w32]
foreach DESIGN $CAM32_MODS {
    remove_design -designs
    analyze -format verilog $RTL_DIR/cam/${DESIGN}.v
    elaborate $DESIGN; link; uniquify
    create_clock -period 20 -name clk
    set_input_delay 5 -clock clk [all_inputs]
    set_output_delay 5 -clock clk [all_outputs]
    set_load 0.1 [all_outputs]
    compile -map_effort medium
    redirect $OUT_DIR/${DESIGN}_timing.rpt { report_timing }
    redirect $OUT_DIR/${DESIGN}_area.rpt { report_area }
    puts "Done: $DESIGN"
}

# Queue read 16/32/64 entry
set QR_MODS [list qread16_1 qread16_2 qread16_4 qread32_1 qread32_2 qread32_4 qread64_1 qread64_2 qread64_4]
foreach DESIGN $QR_MODS {
    remove_design -designs
    analyze -format verilog $RTL_DIR/queue/${DESIGN}.v
    elaborate $DESIGN; link; uniquify
    create_clock -period 20 -name clk
    set_input_delay 5 -clock clk [all_inputs]
    set_output_delay 5 -clock clk [all_outputs]
    set_load 0.1 [all_outputs]
    compile -map_effort medium
    redirect $OUT_DIR/${DESIGN}_timing.rpt { report_timing }
    redirect $OUT_DIR/${DESIGN}_area.rpt { report_area }
    puts "Done: $DESIGN"
}

puts "ALL DONE"
exit
