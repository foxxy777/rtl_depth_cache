# run_cam.tcl
# Usage: dc_shell -f tcl/run_cam.tcl

source [file dirname [file normalize [info script]]]/config.tcl
set OUT $BASE_DIR/results
file mkdir $OUT

set RTL_FILES [list \
    $BASE_DIR/rtl/cam/cam.v \
    $BASE_DIR/rtl/cam/cam_supplement.v \
    $BASE_DIR/rtl/cam/cam_c_supplement.v
]

set DESIGNS [list \
    cam_A_2w8 \
    cam_A_2w16 \
    cam_A_2w32 \
    cam_A_2w48 \
    cam_A_4w8 \
    cam_A_4w16 \
    cam_A_4w32 \
    cam_A_4w48 \
    cam_A_8w8 \
    cam_A_8w16 \
    cam_A_8w32 \
    cam_A_8w48 \
    cam_A_16w8 \
    cam_A_16w16 \
    cam_A_16w32 \
    cam_A_16w48 \
    cam_A_32w32 \
    cam_A_64w32 \
    cam_B_2w8 \
    cam_B_2w16 \
    cam_B_2w32 \
    cam_B_2w48 \
    cam_B_4w8 \
    cam_B_4w16 \
    cam_B_4w32 \
    cam_B_4w48 \
    cam_B_8w8 \
    cam_B_8w16 \
    cam_B_8w32 \
    cam_B_8w48 \
    cam_B_16w8 \
    cam_B_16w16 \
    cam_B_16w32 \
    cam_B_16w48 \
    cam_E2_2w32 \
    cam_E2_4w32 \
    cam_E2_8w32 \
    cam_E2_16w32 \
    cam_E2_32w32 \
    cam_E2_64w32 \
    cam_E3_4w32 \
    cam_E3_8w32 \
    cam_E3_16w32 \
    cam_C1_2w32 \
    cam_C1_4w32 \
    cam_C1_8w32 \
    cam_C1_16w32 \
    cam_C1_32w32 \
    cam_C2_2w32 \
    cam_C2_4w32 \
    cam_C2_8w32 \
    cam_C2_16w32 \
    cam_C2_32w32 \
    cam_C3_2w32 \
    cam_C3_4w32 \
    cam_C3_8w32 \
    cam_C3_16w32 \
    cam_C3_32w32 \
    cam_D_2w32_d64 \
    cam_D_4w32_d64 \
    cam_D_8w32_d64 \
    cam_D_16w32_d64
]

foreach DESIGN $DESIGNS {
    echo "=== $DESIGN ==="
    remove_design -designs
    foreach f $RTL_FILES { read_verilog $f }
    current_design $DESIGN
    link
    uniquify
    create_clock -period $CLK_PERIOD -name clk
    set_input_delay $INPUT_DELAY -clock clk [all_inputs]
    set_output_delay $OUTPUT_DELAY -clock clk [all_outputs]
    set_load $LOAD [all_outputs]
    compile -map_effort $MAP_EFFORT
    redirect $OUT/${DESIGN}_timing.rpt { report_timing -path full -delay max -max_paths 1 }
    redirect $OUT/${DESIGN}_area.rpt   { report_area }
    echo "$DESIGN done."
}

echo "=== cam synthesis complete ==="
