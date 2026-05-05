# ==========================================
# DC Synthesis Configuration — 只需要改这里！
# ==========================================
# 库文件路径（内网替换成自己的库路径）
set LIB_PATH /home/foxxy/synopsys/syn/V-2023.12-SP3/doc/syn/dv_tutorial/risc_design/libs
# 库文件名（内网替换成自己的工艺库 .db 文件名）
set LIB_FILE core_typ.db
# 时钟周期 (ns)
set CLK_PERIOD 20
# 输入延迟 (ns)
set INPUT_DELAY 5
# 输出延迟 (ns)
set OUTPUT_DELAY 5
# 输出负载
set LOAD 0.1
# 综合优化力度 (low/medium/high)
set MAP_EFFORT medium

# ---- 自动设置（一般不需要改）----
set search_path [list $LIB_PATH]
set target_library [list $LIB_FILE]
set link_library [list "*" $LIB_FILE]

# 项目根目录（自动检测）
set BASE_DIR [file dirname [file dirname [file normalize [info script]]]]
