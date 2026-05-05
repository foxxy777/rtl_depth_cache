# run_lru.tcl
# Usage: dc_shell -f tcl/run_lru.tcl

source [file dirname [file normalize [info script]]]/config.tcl
set OUT $BASE_DIR/results
file mkdir $OUT

set RTL_FILES [list \
    $BASE_DIR/rtl/lru/lru.v \
    $BASE_DIR/rtl/lru/lru32.v
]

set DESIGNS [list \
    plru4_find \
    plru4_update \
    plru4_way \
    plru8_find \
    plru8_update \
    plru8_way \
    plru16_find \
    plru16_update \
    plru32_find \
    plru32_update \
    agemtx2_find \
    agemtx2_full \
    agemtx2_update \
    agemtx4_find \
    agemtx4_full \
    agemtx4_update \
    agemtx8_find \
    agemtx8_full \
    agemtx8_update \
    agemtx16_find \
    agemtx16_full \
    agemtx16_update \
    agemtx32_find \
    agemtx32_full \
    agemtx32_update \
    counter4_find \
    counter4_update \
    counter8_find \
    counter8_update \
    counter16_find \
    counter16_update \
    counter32_find \
    counter32_update \
    repl_first_invalid_4 \
    repl_first_invalid_8 \
    repl_first_invalid_16 \
    repl_first_invalid_32 \
    repl_first_invalid_64
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

echo "=== lru synthesis complete ==="
