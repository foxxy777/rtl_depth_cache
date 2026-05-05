# run_ecc.tcl
# Usage: dc_shell -f tcl/run_ecc.tcl

source [file dirname [file normalize [info script]]]/config.tcl
set OUT $BASE_DIR/results
file mkdir $OUT

set RTL_FILES [list \
    $BASE_DIR/rtl/ecc/ecc.v
]

set DESIGNS [list \
    parity8 \
    parity16 \
    parity32 \
    parity64 \
    parity64_byte \
    hamming8_encode \
    hamming8_syndrome \
    hamming8_decode \
    hamming16_encode \
    hamming16_syndrome \
    hamming16_decode \
    hamming32_encode \
    hamming32_syndrome \
    hamming32_decode \
    hamming64_encode \
    hamming64_syndrome \
    hamming64_decode
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

echo "=== ecc synthesis complete ==="
