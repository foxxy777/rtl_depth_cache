# run_all.tcl — Run all cache synthesis experiments
# Usage: dc_shell -f tcl/run_all.tcl

source [file dirname [file normalize [info script]]]/run_tag.tcl
source [file dirname [file normalize [info script]]]/run_cam.tcl
source [file dirname [file normalize [info script]]]/run_lru.tcl
source [file dirname [file normalize [info script]]]/run_ecc.tcl
source [file dirname [file normalize [info script]]]/run_queue.tcl
source [file dirname [file normalize [info script]]]/run_misc.tcl
source [file dirname [file normalize [info script]]]/run_xor_eq.tcl

echo "=== ALL CACHE EXPERIMENTS COMPLETE ==="
