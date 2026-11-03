#!/usr/bin/env python3
"""In gói tài liệu GỌN cho 1 unit (để viết chương mà không phải đọc file lớn).

Usage: python3 _shared/scripts/unit_pack.py b1 5        → unit 5 của cấp B1
In: tên unit, 4 phiếu (từ + loại từ, collocation, phrasal, ngữ pháp), bài đọc app cần tránh,
dòng outline của chương, và N sự kiện gần nhất trong characters.md.
"""
import json, re, sys
from pathlib import Path
ROOT = Path(__file__).resolve().parents[2]
lvl, n = sys.argv[1].lower(), int(sys.argv[2]); last = int(sys.argv[3]) if len(sys.argv) > 3 else 6
G = {g["id"]: g["title"] for g in json.load(open(ROOT / "_shared/en_curriculum/grammar.json"))}
u = json.load(open(ROOT / f"_shared/en_curriculum/{lvl}.json"))["units"][n - 1]
print(f"# {lvl.upper()} u{n:02d} — {u['title']['en']} / {u['title']['vi']}")
for s in u["sheets"]:
    print(f"\n{s['id']} · {s['theme']}")
    print("  words:", ", ".join(f"{w['word']}({w['pos'][:4]})" for w in s["words"]))
    if s.get("phrasal"): print("  phrasal:", ", ".join(s["phrasal"]))
    if s.get("collocations"): print("  collo:", ", ".join(s["collocations"]))
    if s["grammar"]: print("  grammar:", " | ".join(G.get(g, g) for g in s["grammar"]))
    if s.get("has_reading"): print("  ⛔ app reading (không viết trùng):", s["reading_title"])
book = next((p for p in (ROOT / "books").glob(f"*_english_{lvl}") if p.is_dir()), None)
if book:
    for line in (book / "_pipeline/02_outline.md").read_text(encoding="utf-8").splitlines():
        if re.match(rf"^\| u{n:02d} \|", line):
            print("\nOUTLINE:", line)
t = (ROOT / "_shared/en_curriculum/characters.md").read_text(encoding="utf-8")
rows = [l for l in t.splitlines() if re.match(r"^\| (A1|A2|B1|B2|C1) \|", l)]
print(f"\nSỰ KIỆN GẦN NHẤT ({last}):")
for r in rows[-last:]:
    print(" ", r[:400])
