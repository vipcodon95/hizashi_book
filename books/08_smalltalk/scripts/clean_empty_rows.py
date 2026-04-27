#!/usr/bin/env python3
"""Strip empty 2-col dialogue rows like '|  |  |' that survived fix_tables.py."""
import re
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"
total = 0
for md in sorted(ROOT.glob("phần_*/rule_*/rule.md")):
    src = md.read_text(encoding="utf-8")
    new = re.sub(r"^\|\s*\|\s*\|\s*$\n", "", src, flags=re.M)
    if new != src:
        md.write_text(new, encoding="utf-8")
        total += 1
        print(f"  ✓ {md.name}")
print(f"Cleaned {total} files")
