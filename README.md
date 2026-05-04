# rtl_depth_cache

CPU Cache 子系统各组件的 Verilog 写法与 DC 综合逻辑层数实验。

配套知乎文章：《一个芯片工程师的 Cache 电路深度指南》

## 实验环境

| 项目 | 值 |
|------|-----|
| 综合工具 | Synopsys Design Compiler V-2023.12-SP3 |
| 工艺库 | core_typ (DC tutorial library, ~180nm 等效) |
| 约束周期 | 20ns (50MHz) |
| 编译策略 | `compile -map_effort medium` |

**评价指标：**
- **Delay (d)**：关键路径延迟 (ns)，越小越快
- **Slack (s)**：时序裕量 (ns)，正值满足时序，越大越好
- **Logic Levels (L)**：关键路径上去除 inv/buf 后的纯逻辑级数
- **Total Levels (Lt)**：包含 inv/buf 的完整级数
- **Cell Area (A)**：综合后面积

## 目录结构

```
rtl_depth_cache/
├── rtl/
│   ├── tag/            # Tag 比较器：== / XOR / N-way / sel
│   ├── cam/            # CAM 查找：并行比较 + 编码 + 数据选择
│   ├── lru/            # LRU 替换策略：Age Matrix / Counter / PLRU
│   ├── queue/          # Queue/Buffer 读出：8/16/32/64 entry
│   ├── ecc/            # ECC 校验：Parity + Hamming
│   ├── replace/        # 替换策略补充：First-Invalid
│   └── misc/           # Byte Select + 地址译码
├── tcl/                # DC 综合脚本（可复现所有实验）
├── results/            # 综合结果（每个设计一个 timing.rpt + area.rpt）
├── all_data.json       # 所有设计的汇总数据（Delay/Slack/Levels/Area）
└── README.md
```

## 如何复现

```bash
cd /scratch/rtl_depth_cache

# 按 category 分别综合
dc_shell -f tcl/run_tag.tcl              # Tag 比较（59 设计）
dc_shell -f tcl/run_cam.tcl              # CAM 查找（63 设计）
dc_shell -f tcl/run_lru.tcl              # LRU 替换（31 设计）
dc_shell -f tcl/run_queue.tcl            # Queue 读出（11 设计，8-entry）
dc_shell -f tcl/run_ecc.tcl              # ECC 校验（17 设计）
dc_shell -f tcl/run_misc.tcl             # Byte Select + 地址译码 + First-Invalid（12 设计）
dc_shell -f tcl/run_review_supplement.tcl # 补充实验（21 新设计）
```

## 各 category 详细说明

---

### 📁 `rtl/tag/` — Tag 比较（59 设计）

Tag 比较是 cache lookup 的第一步：判断请求的 tag 是否在某个 way 中命中。

| 子类 | 设计数 | 说明 |
|------|:---:|------|
| `tag{8,16,20,24,32,48}_eq` | 6 | 单个 tag `==` 比较，各宽度 |
| `tag{8,16,20,24,32,48,64}_xor_eq` | 7 | 单个 tag `~\|(a^b)` (XOR-NOR) 比较 |
| `eq_xor_{8,16,20,24,32,48}` | 6 | 独立 XOR 比较器（不依赖 tag 端口结构） |
| `tag{8,16,20,24,32,48}_*way_hit` | 18 | N-way (2/4/8) 并行 tag 比较 → hit 向量 |
| `tag{8,16,32,48}_2way_sel` | 4 | 2-way tag 比较 + 数据选择 |
| `tag{8,16,20,24,32,48}_4way_sel` | 6 | 4-way tag 比较 + 数据选择 |
| `tag{8,16,20,24,32,48}_8way_sel` | 6 | 8-way tag 比较 + 数据选择 |
| `tag{8,16,20,24,32,48}_mask_eq` | 6 | 带掩码的 tag 比较 |

**关键结论**：XOR 写法 (`~|(a^b)`) 在 32-bit 时比 `==` 快 1.27ns，面积也更小。

---

### 📁 `rtl/cam/` — CAM 查找（63 设计）

CAM（Content Addressable Memory）= Tag 比较器 + 编码器的组合。是 cache lookup 的核心电路。

| 子类 | 设计数 | 说明 |
|------|:---:|------|
| `cam_A_*w*` | 24 | 并行 `==` 比较 → hit 向量（6 ways × 4 widths） |
| `cam_B_*w*` | 20 | A + any_hit 输出（5 ways × 4 widths） |
| `cam_C1_*w32` | 5 | A + one-hot grant + oh2bin 编码（2/4/8/16/32-way） |
| `cam_C2_*w32` | 6 | A + if-else 串行优先级编码（2/4/8/16/32-way） |
| `cam_C3_*w32` | 5 | A + tree2 二分编码（2/4/8/16/32-way） |
| `cam_D_*w32_d64` | 4 | 完整 CAM：比较 + 编码 + 64-bit 数据选择（2/4/8/16-way） |
| `cam_E2_*w32` | 6 | XOR 写法 `~\|(a^b)` 比较（2/4/8/16/32/64-way） |
| `cam_E3_*w32` | 3 | `==` + generate 循环写法（4/8/16-way） |

**关键结论**：
- 纯比较层层数不随 way 数增长（并行比较）
- 8-way 以上编码：if-else (C2) 最优，tree2 (C3) 次之，one-hot+oh2bin (C1) 最差
- 32-way C2: 12.09ns, C3: 14.99ns, C1: ~15ns+

---

### 📁 `rtl/lru/` — LRU 替换策略（31 设计）

Cache miss 时选择驱逐哪个 way。三种策略的 find（找 victim）和 update（更新状态）。

| 子类 | 设计数 | ways |
|------|:---:|:---:|
| `agemtx{2,4,8,16,32}_find` | 5 | 2/4/8/16/32 |
| `agemtx{2,4,8,16,32}_update` | 5 | 2/4/8/16/32 |
| `agemtx{2,4,8,16,32}_full` | 5 | 2/4/8/16/32 |
| `counter{4,8,16,32}_find` | 4 | 4/8/16/32 |
| `counter{4,8,16,32}_update` | 4 | 4/8/16/32 |
| `plru{4,8,16,32}_find` | 4 | 4/8/16/32 |
| `plru{4,8,16,32}_update` | 4 | 4/8/16/32 |

**关键结论**：PLRU 碾压。32-way PLRU find ~6.7ns，Age Matrix ~13.6ns，Counter ~15ns。Counter 面积是 PLRU 的 220 倍。

---

### 📁 `rtl/queue/` — Queue/Buffer 读出（20 设计）

从 N-entry 队列中读 1/2/4 个连续 entry。本质是 N-to-1 MUX。

| 设计 | entry 数 | 读几个 | 地址模式 |
|------|:---:|:---:|:---:|
| `qread_1` | 8 | 1 | binary |
| `qread_2` / `qread_2_oh` | 8 | 2 | binary / one-hot |
| `qread_4` / `qread_4_oh` | 8 | 4 | binary / one-hot |
| `qread16_{1,2,4}` | 16 | 1/2/4 | binary |
| `qread32_{1,2,4}` | 32 | 1/2/4 | binary |
| `qread64_{1,2,4}` | 64 | 1/2/4 | binary |

**关键结论**：
- 读多个比读 1 个慢 ~2ns（加法器开销）
- One-hot 用循环移位代替加法器，省 3.4ns
- Entry 数翻倍（8→64），读 1 个 delay 只增加 ~1ns

---

### 📁 `rtl/ecc/` — ECC 校验（17 设计）

Parity 检测和 Hamming 编解码。

| 子类 | 设计数 | 数据位宽 |
|------|:---:|:---:|
| `parity_{8,16,32,64}` | 4 | 8/16/32/64-bit |
| `parity_64_bytewise` | 1 | 64-bit (每字节独立) |
| `hamming_encode_{8,16,32,64}` | 4 | 8/16/32/64-bit |
| `hamming_syndrome_{8,16,32,64}` | 4 | 8/16/32/64-bit |
| `hamming_decode_{8,16,32,64}` | 4 | 8/16/32/64-bit |

**关键结论**：Hamming decode 是 cache 最深路径（64-bit: 24 层）。如果 ECC 在关键路径上，考虑流水线化。

---

### 📁 `rtl/replace/` — First-Invalid 替换（5 设计）

Miss 时优先填 invalid way，全部 valid 再走 LRU。

| 设计 | ways |
|------|:---:|
| `repl_first_invalid_{4,8,16,32,64}` | 4/8/16/32/64 |

**关键结论**：4~8 way 时只有 6~7 层，很浅。16-way 以上线性增长。

---

### 📁 `rtl/misc/` — 其他（7 设计）

| 设计 | 功能 |
|------|------|
| `bytesel_32b` / `bytesel_64b` / `bytesel_128b` | Cache line byte select（32/64/128-byte line） |
| `addr_set04` / `addr_set06` / `addr_set08` / `addr_set10` | Set index 地址译码（16/64/256/1024 sets） |

**关键结论**：全都不深（3~10 层），不是关键路径瓶颈。

---

## 数据文件说明

### `all_data.json`

每个设计的汇总数据，格式：

```json
{
  "design_name": {
    "L": 8,        // 去除 inv/buf 后的纯逻辑层数
    "Lt": 10,       // 包含 inv/buf 的总层数
    "d": 6.33,      // 关键路径延迟 (ns)
    "s": 8.67,      // 时序裕量 (ns)，正值 = 满足时序
    "A": 1912.41,   // Cell area
    "dn": "设计名",  // 设计名
    "err": false     // 是否综合出错
  }
}
```

### `results/*.rpt`

每个设计两个文件：
- `*_timing.rpt` — DC `report_timing` 输出，包含完整的关键路径
- `*_area.rpt` — DC `report_area` 输出

## 实验统计

| Category | 设计数 | 关键路径范围 (delay, ns) |
|----------|:---:|:---:|
| Tag 比较 | 59 | 5.0 ~ 10.1 |
| CAM 查找 | 63 | 5.9 ~ 15.0 |
| LRU 替换 | 31 | 5.6 ~ 15.0 |
| Queue 读出 | 20 | 7.6 ~ 11.7 |
| ECC 校验 | 17 | 3.6 ~ 9.2 |
| First-Invalid | 5 | 5.6 ~ 14.3 |
| Byte Select + Addr | 7 | 5.0 ~ 6.6 |
| **总计** | **203** | — |

## 相关仓库

- [rtl_depth_cache](https://github.com/foxxy777/rtl_depth_cache) — 本仓库
- [rtl_depth_adder](https://github.com/foxxy777/rtl_depth_adder) — 加法器逻辑层数实验
- [rtl_depth_scan_logic](https://github.com/foxxy777/rtl_depth_scan_logic) — Find-First-One / 优先编码器 / case 写法实验
- [rtl_test](https://github.com/foxxy777/rtl_test) — 完整实验框架（Python 生成器 + 自动综合 + 结果汇总）
