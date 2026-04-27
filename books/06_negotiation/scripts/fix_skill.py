#!/usr/bin/env python3
"""Fix skill enum: 聴解 → 発言聴解 to match schema."""
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"
files = [
    'phần_III/rule_23_異論表現/conversation.json',
    'phần_III/rule_30_曖昧発言/conversation.json',
    'phần_IV/rule_35_接続不良/conversation.json',
    'phần_IV/rule_41_フィードバック面談/conversation.json',
]

for f in files:
    p = ROOT / f
    text = p.read_text(encoding='utf-8')
    new = text.replace('"skill": "聴解"', '"skill": "発言聴解"')
    if text == new:
        print(f"no change: {f}")
    else:
        p.write_text(new, encoding='utf-8')
        print(f"fixed: {f}")
