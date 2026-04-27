#!/usr/bin/env python3
"""Apply JP + VN review fixes for sách 05 v1.0 → v1.1, focusing on rule.md."""
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

FIXES = [
    # JP P0-1: rule_28 ティエンファット社 → 弊社 (in own self-intro/signature)
    ('phần_IV/rule_28_事後フォロー/rule.md',
     'ティエンファット社 営業部のズンでございます',
     '弊社営業部のズンでございます'),
    ('phần_IV/rule_28_事後フォロー/rule.md',
     'ティエンファット社 営業部 BD担当',
     'ティエンファット 営業部 BD担当'),
    ('phần_IV/rule_28_事後フォロー/conversation.json',
     'ティエンファット社 営業部のズンでございます',
     '弊社営業部のズンでございます'),
    ('phần_IV/rule_28_事後フォロー/conversation.json',
     'ティエンファット社 営業部 BD担当',
     'ティエンファット 営業部 BD担当'),

    # JP P0-2: rule_28 お時間を頂戴し → お時間を頂き
    ('phần_IV/rule_28_事後フォロー/rule.md',
     'お時間を頂戴し、誠にありがとうございました',
     'お時間を頂き、誠にありがとうございました'),
    ('phần_IV/rule_28_事後フォロー/conversation.json',
     'お時間を頂戴し、誠にありがとうございました',
     'お時間を頂き、誠にありがとうございました'),

    # JP P0-3: rule_26 サインインオフ → サインオフ
    ('phần_IV/rule_26_クロージングCTA/rule.md',
     'サインインオフ',
     'サインオフ'),

    # JP P1-2: rule_13 30分の枠でいただいております → 30分のお時間を頂戴しております
    ('phần_II/rule_13_時間管理の約束/rule.md',
     '本日は30分の枠でいただいております',
     '本日は30分のお時間を頂戴しております'),

    # JP P1-3: rule_23 お答えになっておりますでしょうか → お答えできておりますでしょうか
    ('phần_IV/rule_23_LASR/rule.md',
     'お答えになっておりますでしょうか',
     'お答えできておりますでしょうか'),
    ('phần_IV/rule_23_LASR/conversation.json',
     'お答えになっておりますでしょうか',
     'お答えできておりますでしょうか'),

    # JP P1-8: rule_31 お騒がせしました → ご迷惑をおかけし、申し訳ございませんでした
    ('phần_V/rule_31_技術トラブル/rule.md',
     'お騒がせしました',
     'ご迷惑をおかけし、申し訳ございませんでした'),

    # JP P1-9: rule_33 ご依頼承りました → 承知いたしました (Slack tone)
    ('phần_V/rule_33_録画と共有/rule.md',
     'ご依頼承りました',
     '承知いたしました'),

    # JP P1-6: rule_32 ハーでございます → 続きまして、ハーよりご説明申し上げます
    ('phần_V/rule_32_引き継ぎ/rule.md',
     'ハーでございます',
     '改めまして、ハーでございます'),

    # VN fixes
    # rule_24: 議事録 raw → gloss
    ('phần_IV/rule_24_持ち帰り/rule.md',
     'Sách 03 rule 35 (議事録 follow up)',
     'Sách 03 rule 35 (gijiroku — biên bản follow up)'),

    # rule_29: vocab 背景 furigana sai
    ('phần_V/rule_29_オンラインプレゼン/rule.md',
     '| 背景 | はいけん',
     '| 背景 | はいけい'),

    # rule_30: vocab プライオリタイズ → 優先する
    ('phần_V/rule_30_ハイブリッド/rule.md',
     'プライオリタイズ',
     '優先する'),
    ('phần_V/rule_30_ハイブリッド/rule.md',
     'priorititize',
     'yuusen suru'),

    # rule_06: 100%发生 (Chinese simplified) → "100% sẽ xảy ra"
    ('phần_I/rule_06_密度ルール/rule.md',
     '100%发生',
     '100% sẽ xảy ra'),
]


def main():
    count = 0
    for path, old, new in FIXES:
        f = ROOT / path
        if not f.exists():
            print(f"SKIP: {path}")
            continue
        text = f.read_text(encoding='utf-8')
        if old in text:
            f.write_text(text.replace(old, new), encoding='utf-8')
            count += 1
            print(f"fixed: {path} | {old[:40]}")
        else:
            print(f"  not found: {path} | {old[:40]}")
    print(f"\nTotal: {count}/{len(FIXES)}")


if __name__ == "__main__":
    main()
