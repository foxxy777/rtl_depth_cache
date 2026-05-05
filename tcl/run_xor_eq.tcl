# run_xor_eq.tcl
# Usage: dc_shell -f tcl/run_xor_eq.tcl

source [file dirname [file normalize [info script]]]/config.tcl
set OUT $BASE_DIR/results
file mkdir $OUT

set RTL_FILES [list \
    $BASE_DIR/rtl/tag/tag.v \
    $BASE_DIR/rtl/tag/tag_xor_eq.v
]

set DESIGNS [list \
    eq_xor_8 \
    eq_xor_16 \
    eq_xor_20 \
    eq_xor_24 \
    eq_xor_32 \
    eq_xor_48
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

echo "=== xor_eq synthesis complete ==="
