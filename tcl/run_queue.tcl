# run_queue.tcl
# Usage: dc_shell -f tcl/run_queue.tcl

source [file dirname [file normalize [info script]]]/config.tcl
set OUT $BASE_DIR/results
file mkdir $OUT

set RTL_FILES [list \
    $BASE_DIR/rtl/queue/queue.v
]

set DESIGNS [list \
    qread_1 \
    qread_2 \
    qread_2_oh \
    qread_4 \
    qread_4_oh \
    qread_1_16e \
    qread_2_16e \
    qread_4_16e \
    qread_1_32e \
    qread_2_32e \
    qread_4_32e \
    qread16_1 \
    qread16_2 \
    qread16_4 \
    qread32_1 \
    qread32_2 \
    qread32_4 \
    qread64_1 \
    qread64_2 \
    qread64_4
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

echo "=== queue synthesis complete ==="
