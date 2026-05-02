# rtl_depth_cache

Cache 相关电路的 Verilog 写法与 DC 综合逻辑层数实验。

## 实验环境

| 项目 | 值 |
|------|-----|
| 综合工具 | Synopsys Design Compiler V-2023.12-SP3 |
| 工艺库 | core_typ (DC tutorial library) |
| 约束周期 | 20ns (50MHz) |
| 编译策略 | `compile -map_effort medium` |

**评价指标：**
- **逻辑层数 (Logic Level)**：关键路径上去除 inv/buf 后的纯逻辑级数
- **Cell Area**：综合后面积

## 目录结构

```
rtl_depth_cache/
├── rtl/
│   ├── cam/        # CAM 查找（61 设计）
│   ├── lru/        # LRU/PLRU/Counter 替换策略（30 设计）
│   ├── queue/      # Queue/Buffer 读出（11 设计）
│   ├── ecc/        # ECC 校验：parity + Hamming（17 设计）
│   ├── tag/        # Tag 比较：eq/hit/sel/mask + XOR 写法（49 设计）
│   ├── replace/    # 替换策略补充：first-invalid（5 设计）
│   └── misc/       # Byte select + 地址译码（7 设计）
├── tcl/            # DC 综合脚本
├── results/        # 综合结果（timing + area rpt）
└── README.md
```

## 如何复现

```bash
cd /scratch/rtl_depth_cache

# 按模块分别综合
dc_shell -f tcl/run_cam.tcl        # CAM 查找（61 设计）
dc_shell -f tcl/run_tag.tcl        # Tag 比较（49 设计）
dc_shell -f tcl/run_lru.tcl        # LRU 替换策略（30 设计）
dc_shell -f tcl/run_queue.tcl      # Queue 读出（11 设计）
dc_shell -f tcl/run_ecc.tcl        # ECC 校验（17 设计）
dc_shell -f tcl/run_misc.tcl       # Byte select + 地址译码 + 替换（12 设计）
```

## 实验分类

### CAM 查找（61 设计）

在 N-way set-associative cache 中，CAM 用于并行比较 tag 并输出 hit 向量。

| 系列 | 功能 | ways × tag_width |
|------|------|:---:|
| cam_A | 并行 `==` 比较 → hit 向量 | 2/4/8/16/32/64-way × 8/16/32/48-bit |
| cam_B | A + any_hit 输出 | 2/4/8/16-way × 8/16/32/48-bit |
| cam_C1 | A + one-hot grant + oh2bin 编码 | 2/4/8/16/32-way × 32-bit |
| cam_C2 | A + if-else 串行优先级编码 | 2/4/8/16/32-way × 32-bit |
| cam_C3 | A + tree2 编码 | 2/4/8/16-way × 32-bit |
| cam_D | 完整 CAM：比较 + 编码 + 数据读出 | 2/4/8/16-way × 32-bit |
| cam_E2 | 并行 XOR 写法 `~\|(a^b)` → hit 向量 | 2/4/8/16/32/64-way × 32-bit |
| cam_E3 | XOR + tree2 编码 | 4/8/16-way × 32-bit |

### Tag 比较（49 设计）

| 系列 | 功能 | tag 位宽 |
|------|------|:---:|
| tag*_eq | 单 tag `==` 比较 | 8/16/20/24/32/48-bit |
| tag*_xor_eq | 单 tag `~\|(a^b)` 比较 | 8/16/20/24/32/48/64-bit |
| tag*_Nway_hit | N-way 并行 tag 比较 → hit | 2/4/8-way |
| tag*_Nway_sel | N-way tag 比较 → 选择输出 | 4/8-way |
| tag*_mask_eq | 带掩码 tag 比较 | 8/16/20/24/32/48-bit |

### LRU 替换策略（30 设计）

| 系列 | 操作 | ways |
|------|------|:---:|
| agemtx | 真正 LRU（Age Matrix）：find/update/full | 2/4/8/16/32 |
| counter | 计数器伪 LRU：find/update | 4/8/16/32 |
| plru | 树形伪 LRU：find/update | 4/8/16/32 |

### Queue 读出（11 设计）

| 设计 | 功能 |
|------|------|
| qread_1/2/4 | 8-entry 队列读 1/2/4 个 entry（binary 地址） |
| qread_2_oh / qread_4_oh | 8-entry 队列读 2/4 个 entry（one-hot 地址） |
| qread_*_16e / *_32e | 16/32-entry 队列读 1/2/4 个 entry |

### ECC 校验（17 设计）

| 系列 | 数据位宽 |
|------|:---:|
| parity | 8/16/32/64-bit 整体 + 64-bit byte-wise |
| hamming_encode | 8/16/32/64-bit |
| hamming_syndrome | 8/16/32/64-bit |
| hamming_decode | 8/16/32/64-bit |

### 其他（12 设计）

| 系列 | 功能 |
|------|------|
| repl_first_invalid | 找第一个无效 way（4/8/16/32/64-way） |
| line*_bytesel | Cache line byte select（32/64/128-byte line） |
| addr_set* | Set index 地址译码（16/64/256/1024 sets） |

## 总计

**180 个设计，183 个 rpt 文件，6 个 TCL 脚本。**

## 相关仓库

- [rtl_depth_adder](https://github.com/foxxy777/rtl_depth_adder) — 加法器逻辑层数实验
- [rtl_depth_scan_logic](https://github.com/foxxy777/rtl_depth_scan_logic) — Find-First-One / 优先编码器 / case 写法实验
