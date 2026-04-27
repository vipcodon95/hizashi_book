#!/usr/bin/env python3
"""Apply JP review fixes for sách 07 v1.0 → v1.1, focusing on rule.md (build pipeline)."""
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

# ═══ JP P0: ティエンファット社 → ティエンファット (self-reference) ═══

P0_TIENFART_FIXES = [
    # Mass replace 「ティエンファット社の」 → 「ティエンファットの」 in self-intro contexts
    # Affected files (rule.md primary):
    'phần_I/rule_03_渡し方/rule.md',
    'phần_I/rule_03_渡し方/conversation.json',
    'phần_I/rule_04_同時交換/rule.md',
    'phần_I/rule_04_同時交換/conversation.json',
    'phần_I/rule_05_順序/rule.md',
    'phần_I/rule_05_順序/conversation.json',
    'phần_III/rule_16_訪問準備/rule.md',
    'phần_III/rule_16_訪問準備/conversation.json',
    'phần_III/rule_17_5分前/rule.md',
    'phần_III/rule_17_5分前/conversation.json',
    'phần_III/rule_18_受付/rule.md',
    'phần_III/rule_18_受付/conversation.json',
    'phần_III/rule_21_入室/rule.md',
    'phần_III/rule_21_入室/conversation.json',
    'phần_IV/rule_30_お礼メール/rule.md',
    'phần_IV/rule_30_お礼メール/conversation.json',
]

# ═══ Other JP P0/P1 specific fixes ═══

SPECIFIC_FIXES = [
    # P0-2: お通りすぎいたしましょう (fabricated keigo)
    ('phần_III/rule_22_社内案内/rule.md',
     'お通りすぎいたしましょう',
     '通り過ぎましょう'),
    ('phần_V/rule_35_振り返り/rule.md',
     'お通りすぎいたしましょう',
     '通り過ぎましょう'),

    # P1-2: ご到着でございます (rule_09)
    ('phần_II/rule_09_案内/rule.md',
     'ご到着でございます。お先にどうぞ',
     '3階に到着いたしました。お先にどうぞ'),

    # P1-8: お会社名 → 御社名
    ('phần_III/rule_18_受付/rule.md',
     'お会社名',
     '御社名'),

    # P1-9: rule_17 vocab phiên âm sai
    ('phần_III/rule_17_5分前/rule.md',
     '| 5-10分前 | ごじゅっぷんまえ',
     '| 5-10分前 | 5〜10ぷんまえ'),

    # P1-10: rule_15 typo "NghĮa"
    ('phần_II/rule_15_早退遅刻/rule.md',
     'NghĮa',
     'Nghĩa'),

    # P2-1: rule_08 「Câu chốト」
    ('phần_II/rule_08_お出迎え/rule.md',
     '## 🎯 Câu chốト',
     '## 🎯 Câu chốt'),

    # P2-10: rule_22 「自意」 fabricated
    ('phần_III/rule_22_社内案内/rule.md',
     '自意ドア',
     '勝手にドア'),
]


def apply_tienfart_fix(path):
    """Replace ティエンファット社 → ティエンファット (self-ref) but preserve PR contexts."""
    f = ROOT / path
    if not f.exists():
        return 0
    text = f.read_text(encoding='utf-8')
    original = text
    # Self-intro: 「ティエンファット社の」 → 「ティエンファットの」
    text = text.replace('ティエンファット社の', 'ティエンファットの')
    # Standalone 「ティエンファット社」 in signature/template (when preceded by space/JP punct, becomes ティエンファット)
    # But preserve cases like「ティエンファット社、白鷗株式会社と」 (PR formal — keep 株式会社)
    # For visit_card, no PR context — safe replace
    text = text.replace('ティエンファット社 ', 'ティエンファット ')  # space-separated
    text = text.replace('ティエンファット社、', 'ティエンファット、')
    if text != original:
        f.write_text(text, encoding='utf-8')
        return text.count('ティエンファット') - original.count('ティエンファット')
    return 0


def main():
    print("=== P0: ティエンファット社 → ティエンファット ===")
    total = 0
    for path in P0_TIENFART_FIXES:
        c = apply_tienfart_fix(path)
        if c > 0:
            print(f"  fixed {c}: {path}")
            total += c
        elif (ROOT / path).exists():
            text = (ROOT / path).read_text(encoding='utf-8')
            if 'ティエンファット社' in text:
                print(f"  STILL contains 社: {path}")
            else:
                print(f"  no change: {path}")
    print(f"  Total replacements: {total}")

    print("\n=== Specific fixes ===")
    count = 0
    for path, old, new in SPECIFIC_FIXES:
        f = ROOT / path
        if not f.exists():
            print(f"  SKIP: {path}")
            continue
        text = f.read_text(encoding='utf-8')
        if old in text:
            f.write_text(text.replace(old, new), encoding='utf-8')
            count += 1
            print(f"  fixed: {path} | {old[:40]}")
        else:
            print(f"  not found: {path} | {old[:40]}")
    print(f"  Subtotal: {count}/{len(SPECIFIC_FIXES)}")


if __name__ == "__main__":
    main()
