# run_tag.tcl
# Usage: dc_shell -f tcl/run_tag.tcl

source [file dirname [file normalize [info script]]]/config.tcl
set OUT $BASE_DIR/results
file mkdir $OUT

set RTL_FILES [list \
    $BASE_DIR/rtl/tag/tag.v \
    $BASE_DIR/rtl/tag/tag_xor_eq.v
]

set DESIGNS [list \
    tag08_eq \
    tag08_mask_eq \
    tag08_xor_eq \
    tag08_2way_hit \
    tag08_4way_hit \
    tag08_8way_hit \
    tag08_4way_sel \
    tag08_8way_sel \
    tag8_2way_sel \
    tag16_eq \
    tag16_mask_eq \
    tag16_xor_eq \
    tag16_2way_hit \
    tag16_4way_hit \
    tag16_8way_hit \
    tag16_2way_sel \
    tag16_4way_sel \
    tag16_8way_sel \
    tag20_eq \
    tag20_mask_eq \
    tag20_xor_eq \
    tag20_2way_hit \
    tag20_4way_hit \
    tag20_8way_hit \
    tag20_4way_sel \
    tag20_8way_sel \
    tag24_eq \
    tag24_mask_eq \
    tag24_xor_eq \
    tag24_2way_hit \
    tag24_4way_hit \
    tag24_8way_hit \
    tag24_4way_sel \
    tag24_8way_sel \
    tag32_eq \
    tag32_mask_eq \
    tag32_xor_eq \
    tag32_2way_hit \
    tag32_4way_hit \
    tag32_8way_hit \
    tag32_2way_sel \
    tag32_4way_sel \
    tag32_8way_sel \
    tag48_eq \
    tag48_mask_eq \
    tag48_xor_eq \
    tag48_2way_hit \
    tag48_4way_hit \
    tag48_8way_hit \
    tag48_2way_sel \
    tag48_4way_sel \
    tag48_8way_sel \
    tag64_xor_eq
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

echo "=== tag synthesis complete ==="
