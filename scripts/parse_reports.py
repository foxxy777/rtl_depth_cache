#!/usr/bin/env python3
"""Parse all DC synthesis reports for rtl_depth_cache.
Counts logic levels excluding inv/buf and ports (noinv standard).
"""
import os, re, csv, glob

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

def parse_timing(rpt_path):
    try:
        with open(rpt_path, 'r') as f: text = f.read()
    except: return None
    m = re.search(r'data arrival time\s+(-?[\d.]+)', text)
    delay = float(m.group(1)) if m else None
    m = re.search(r'slack\s+\(MET\|VIOLATED\)\s+(-?[\d.]+)', text)
    slack = float(m.group(1)) if m else None
    path_match = re.search(r'\s*Point\s+Incr\s+Path\s*\n\s*-+\n(.*?)data arrival time', text, re.DOTALL)
    ll = 0; llni = 0
    if path_match:
        for line in path_match.group(1).split('\n'):
            line = line.strip()
            if not line: continue
            if any(kw in line for kw in ['clock ', 'clock network', 'input external', 'output external']): continue
            if '(in)' in line or '(out)' in line: continue
            cell_m = re.search(r'\((\w+)\)', line)
            if not cell_m: continue
            ct = cell_m.group(1)
            if 'DW' in ct or ct == 'ideal': continue
            ll += 1
            if not re.match(r'^(inv\d+|buf\d+|pclk\d+|clk\d+)', ct, re.IGNORECASE):
                llni += 1
    return {'delay_ns': delay, 'slack_ns': slack, 'logic_levels': ll, 'logic_levels_noinv': llni}

def parse_area(rpt_path):
    try:
        with open(rpt_path, 'r') as f: text = f.read()
    except: return None
    m = re.search(r'Total cell area:\s+([\d.]+)', text)
    return {'cell_area': float(m.group(1))} if m else None

def main():
    results_dir = os.path.join(BASE, 'results')
    all_rows = []
    for tf in sorted(glob.glob(os.path.join(results_dir, "*_timing.rpt"))):
        bn = os.path.basename(tf).replace('_timing.rpt', '')
        t = parse_timing(tf)
        ap = tf.replace('_timing.rpt', '_area.rpt')
        a = parse_area(ap) if os.path.exists(ap) else None
        row = {'design': bn}
        if t: row.update(t)
        if a: row.update(a)
        all_rows.append(row)
    
    csv_path = os.path.join(BASE, 'all_results.csv')
    fns = ['design','logic_levels','logic_levels_noinv','delay_ns','slack_ns','cell_area']
    with open(csv_path, 'w', newline='') as f:
        w = csv.DictWriter(f, fieldnames=fns, extrasaction='ignore')
        w.writeheader()
        w.writerows(all_rows)
    print(f"Wrote {len(all_rows)} rows to {csv_path}")

if __name__ == '__main__':
    main()
