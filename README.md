# rtl_depth_cache — CPU Cache 子系统电路深度实验

DC (Design Compiler) 综合实验，测量 CPU cache 子系统各组件的逻辑层数。

## 快速开始

### 1. 修改配置
编辑 `tcl/config.tcl`，修改库路径和库名：
```tcl
set LIB_PATH /your/library/path
set LIB_FILE your_lib.db
```

### 2. 运行综合
```bash
dc_shell -f tcl/run_all.tcl          # 跑全部实验
dc_shell -f tcl/run_tag.tcl          # 只跑 tag 比较
dc_shell -f tcl/run_cam.tcl          # 只跑 CAM
```

### 3. 收集数据
```bash
python3 scripts/parse_reports.py     # 生成 all_results.csv
```

## 目录结构

```
rtl_depth_cache/
├── tcl/
│   ├── config.tcl          ← 库路径/时钟/延迟配置（改这里！）
│   ├── run_all.tcl         ← 一键跑全部
│   ├── run_tag.tcl         ← Tag 比较 (eq/mask_eq/xor_eq + N-way hit/sel)
│   ├── run_cam.tcl         ← CAM 查找 (A/B/C1/C2/C3/D/E2/E3 系列)
│   ├── run_lru.tcl         ← LRU 替换 (PLRU/AgeMatrix/Counter + first-invalid)
│   ├── run_ecc.tcl         ← ECC (Parity + Hamming encode/syndrome/decode)
│   ├── run_queue.tcl       ← Queue 读出 (8/16/32/64 entry)
│   ├── run_misc.tcl        ← 地址译码 + Byte select
│   └── run_xor_eq.tcl      ← 独立 XOR 比较器 (eq_xor 系列)
├── rtl/
│   ├── tag/                ← Tag 比较器 Verilog
│   ├── cam/                ← CAM Verilog
│   ├── lru/                ← LRU/PLRU/AgeMatrix/Counter Verilog
│   ├── ecc/                ← ECC Verilog
│   ├── queue/              ← Queue 读出 Verilog
│   ├── replace/            ← First-invalid 替换 Verilog
│   └── misc/               ← 地址译码 + Byte select Verilog
├── results/                ← DC 综合报告 (*_timing.rpt, *_area.rpt)
├── scripts/
│   └── parse_reports.py    ← 解析报告生成 CSV
├── all_results.csv         ← 解析后的汇总数据
└── README.md
```

## 数据说明

- **logic_levels_noinv**: 关键路径上去除 inv/buf 和端口后的纯门级逻辑级数
- **delay_ns**: 关键路径延迟 (ns)
- **slack_ns**: 时序裕量 (ns)，正值表示满足时序
- **cell_area**: 总单元面积

## 实验覆盖

| 组件 | 实验数 | 说明 |
|------|:---:|------|
| Tag 比较 | ~50 | 5种位宽 × (eq + mask_eq + xor_eq + N-way hit/sel) |
| CAM | ~50 | A/B/C1/C2/C3/D/E2/E3 系列，2~64 way |
| LRU 替换 | ~30 | PLRU/AgeMatrix/Counter + first-invalid |
| ECC | ~18 | Parity + Hamming 8/16/32/64 |
| Queue | ~20 | 8/16/32/64 entry × 1/2/4 读出 |
| Misc | ~10 | 地址译码 + Byte select |

总计约 180 个设计。
