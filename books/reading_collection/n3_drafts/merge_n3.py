#!/usr/bin/env python3
"""
Ghep tat ca batch JSON trong n3_drafts/ thanh file readings_XXXX_YYYY.json
Usage: python merge_n3.py [--output ../readings_0141_XXXX.json]
"""
import json
import glob
import os
import sys
import argparse

sys.stdout.reconfigure(encoding="utf-8")

def merge_batches(input_dir: str, output_path: str):
    pattern = os.path.join(input_dir, "batch_*.json")
    files = sorted(glob.glob(pattern))

    if not files:
        print("Không tìm thấy file batch_*.json nào.")
        return

    all_readings = []
    for f in files:
        with open(f, encoding="utf-8") as fh:
            data = json.load(fh)
            if isinstance(data, list):
                all_readings.extend(data)
            else:
                all_readings.append(data)
        print(f"  Đọc {f}: {len(data) if isinstance(data, list) else 1} bài")

    # Sắp xếp theo id
    all_readings.sort(key=lambda x: x.get("id", ""))

    # Tự động đặt tên output theo id đầu và cuối
    if not output_path:
        first_id = all_readings[0]["id"].replace("R_", "")
        last_id  = all_readings[-1]["id"].replace("R_", "")
        output_path = os.path.join(os.path.dirname(input_dir),
                                   f"readings_{first_id}_{last_id}.json")

    with open(output_path, "w", encoding="utf-8") as fh:
        json.dump(all_readings, fh, ensure_ascii=False, indent=2)

    print(f"\nĐã ghép {len(all_readings)} bài → {output_path}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", default="", help="Đường dẫn file output (tùy chọn)")
    args = parser.parse_args()

    script_dir = os.path.dirname(os.path.abspath(__file__))
    merge_batches(script_dir, args.output)
