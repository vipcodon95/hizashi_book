#!/usr/bin/env python3
"""
Apply JP + VN review fixes for sách 03 v1.0 → v1.1.

Two passes:
1. JP fixes (specific)
2. VN fixes — mass-replace raw kanji left in Vietnamese translations
"""
import json
import re
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

# ─── 1. JP CRITICAL/IMPROVE FIXES ─────────────────────────────────────

JP_FIXES = [
    # CRITICAL #1: ティエンファット社 → ティエンファット (ko phải media reference khi tự xưng)
    # Lưu ý: KHÔNG đổi tất cả — chỉ đổi khi xuất hiện trong câu nói (sentence) của staff TP tự xưng.
    # Đổi an toàn: 「ティエンファット社の」 → 「弊社、ティエンファット の」 hoặc giữ tự nhiên hơn 「ティエンファット の」.
    # Để đảm bảo không vỡ context khác (rule_context, label), chỉ đổi trong sentence + sentence_translation context phù hợp.
    # → áp dụng theo quy tắc: 「ティエンファット社、」 → 「ティエンファット、」 và 「ティエンファット社の」 → 「弊社のティエンファット、」 sẽ làm rule by rule riêng.
    # Tạm bỏ qua mass-replace 'ティエンファット社' để tránh phá rule_context/label, sẽ fix specific.

    # CRITICAL #2 — rule_12: 「白鷗株式会社様より、大垣 営業部長様、松本 プロジェクトマネージャー様の2名」
    ('phần_II/rule_12_出席者紹介/conversation.json',
     '続きまして、白鷗株式会社様より、大垣 営業部長様、松本 プロジェクトマネージャー様の2名にご出席いただいております。',
     '続きまして、白鷗株式会社からは、営業部長の大垣様、プロジェクトマネージャーの松本様、お二方にご出席いただいております。'),

    # CRITICAL #3 — rule_22: フィージビリティ → 実現可否
    ('phần_III/rule_22_同意表現/conversation.json',
     'フィージビリティ',
     '実現可否'),

    # CRITICAL #21 — rule_22 BJT explanation logic mismatch
    ('phần_III/rule_22_同意表現/conversation.json',
     'Aは完全同意になり後でリスク。Cは曖昧で否定的。',
     'Aは完全同意で後でリスク。Cは弱い拒否で議論を止める。'),

    # IMPROVE #4 — rule_01 「アジェンダ案でございます」 → 「アジェンダ案を作成しました」 + 「ご確認お願いいたします」
    ('phần_I/rule_01_アジェンダ5W1H/conversation.json',
     'フオン副部長、4月度月例会議のアジェンダ案でございます。',
     'フオン副部長、4月度月例会議のアジェンダ案を作成しました。ご確認お願いいたします。'),

    # IMPROVE #5 — rule_14 「ご確認させていただきます」 → 「確認させていただきます」
    ('phần_II/rule_14_司会書記/conversation.json',
     '議題に入る前に、本日の役割をご確認させていただきます。',
     '議題に入る前に、本日の役割を確認させていただきます。'),

    # IMPROVE #6 — rule_23 「一緒にご検討させて」 → 「一緒に検討させて」
    ('phần_III/rule_23_異論表現/conversation.json',
     '削減案を一緒にご検討させていただけませんでしょうか？',
     '削減案を一緒に検討させていただけませんでしょうか？'),

    # IMPROVE #7 — rule_17 「お続けください」 → 「続きをお願いいたします」
    ('phần_II/rule_17_遅刻入室/conversation.json',
     'ありがとうございます。お続けください。',
     'ありがとうございます。続きをお願いいたします。'),

    # IMPROVE #11 — rule_10 「および」 → 「と」 (Linh junior tone)
    ('phần_II/rule_10_自己紹介/conversation.json',
     '本プロジェクトでは、議事録および資料管理を担当いたします。',
     '本プロジェクトでは、議事録と資料管理を担当いたします。'),

    # IMPROVE #12 — rule_42 終了挨拶: 「お時間頂戴し」 重複 → 「お時間をいただき」
    ('phần_IV/rule_42_時間切れ/conversation.json',
     '本日はお時間頂戴し誠にありがとうございました。',
     '本日はお時間をいただき、誠にありがとうございました。'),
    ('phần_V/rule_43_終了挨拶/conversation.json',
     '本日はお時間頂戴し誠にありがとうございました。',
     '本日はお時間をいただき、誠にありがとうございました。'),

    # IMPROVE #13 — rule_48 「お出ましいただけなかった」 → 「ご出席いただけなかった」
    ('phần_V/rule_48_欠席者対応/conversation.json',
     'ご都合つかずお出ましいただけなかったこと、改めて承知しております。',
     'ご都合がつかずご出席いただけなかったこと、承知しております。'),

    # IMPROVE #16 — rule_44 大垣「了解です」 → 「承知しました」
    ('phần_V/rule_44_アクション確認/conversation.json',
     '了解です、確認します。',
     '承知しました、確認いたします。'),

    # NIT #17 — rule_15 大垣「decide」 → 「決めたい」
    ('phần_II/rule_15_本日のゴール/conversation.json',
     'ズンさん、本日 何を decide したいのか教えていただけますか。',
     'ズンさん、本日何を決めたいのか、教えていただけますか。'),

    # CRITICAL #9 — rule_47 お礼 mail 2 連結語
    # giảm xuống chỉ giữ 「今後ともどうぞよろしくお願い申し上げます。」, drop 「引き続き〜」
    ('phần_V/rule_47_お礼メール/conversation.json',
     '引き続き何卒よろしくお願い申し上げます。\\n今後ともどうぞよろしくお願い申し上げます。',
     '今後ともどうぞよろしくお願い申し上げます。'),
    ('phần_V/rule_47_お礼メール/conversation.json',
     '引き続き何卒よろしくお願い申し上げます。\n今後ともどうぞよろしくお願い申し上げます。',
     '今後ともどうぞよろしくお願い申し上げます。'),
]

# ─── 2. VN MASS FIX — replace raw kanji in VN translations ────────────

# Map kanji JP → VN word in business meeting context
VN_KANJI_FIX = {
    # rule label/translation context
    '議題': 'mục',  # agenda item / nội dung
    '司会': 'người chủ trì',
    '書記': 'người ghi biên bản',
    '議事録': 'biên bản',
    '出席者': 'người tham dự',
    '公表': 'thông báo',
    '未決': 'chưa quyết',
    '案件': 'việc',
    '欠席': 'vắng',
    '司会者': 'người chủ trì',
}

# Files that have known raw-kanji issues (from VN reviewer)
VN_FIX_FILES = [
    'phần_II/rule_09_第一声/conversation.json',
    'phần_II/rule_10_自己紹介/conversation.json',
    'phần_II/rule_11_名刺交換/conversation.json',
    'phần_II/rule_12_出席者紹介/conversation.json',
    'phần_II/rule_13_アジェンダ説明/conversation.json',
    'phần_II/rule_14_司会書記/conversation.json',
    'phần_II/rule_15_本日のゴール/conversation.json',
    'phần_II/rule_16_時間配分/conversation.json',
    'phần_II/rule_17_遅刻入室/conversation.json',
    'phần_II/rule_18_欠席者対応/conversation.json',
    'phần_III/rule_19_発言挙手/conversation.json',
    'phần_III/rule_20_質問5W1H/conversation.json',
    'phần_III/rule_21_不明点確認/conversation.json',
    'phần_V/rule_45_議事録作成/conversation.json',
    'phần_V/rule_46_議事録フォーマット/conversation.json',
    'phần_V/rule_47_お礼メール/conversation.json',
    'phần_V/rule_48_欠席者対応/conversation.json',
    'phần_V/rule_49_CRM管理/conversation.json',
    'phần_V/rule_50_振り返り改善/conversation.json',
]


def fix_vn_kanji_in_json(path):
    """For each JSON file, replace raw kanji in *.vi fields and sentence_translation, plus label_vi."""
    text = path.read_text(encoding='utf-8')
    data = json.loads(text)
    changes = 0

    def fix_str(s):
        nonlocal changes
        if not isinstance(s, str):
            return s
        new = s
        for k, v in VN_KANJI_FIX.items():
            if k in new:
                new = new.replace(k, v)
                changes += 1
        return new

    def walk(obj, path_keys=()):
        if isinstance(obj, dict):
            for k, val in list(obj.items()):
                if k in ('vi', 'sentence_translation', 'label_vi', 'title_vi', 'note_vi', 'notes_vi', 'content_vi'):
                    obj[k] = fix_str(val)
                else:
                    walk(val, path_keys + (k,))
        elif isinstance(obj, list):
            for x in obj:
                walk(x, path_keys)

    walk(data)
    if changes > 0:
        path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    return changes


def apply_jp_fixes():
    print("\n=== JP FIXES ===")
    fixed_count = 0
    for path, old, new in JP_FIXES:
        f = ROOT / path
        if not f.exists():
            print(f"  SKIP (not found): {path}")
            continue
        text = f.read_text(encoding='utf-8')
        if old in text:
            f.write_text(text.replace(old, new), encoding='utf-8')
            print(f"  fixed: {path}")
            fixed_count += 1
        else:
            print(f"  not found in {path}: {old[:50]}...")
    print(f"  Total JP fixes: {fixed_count}/{len(JP_FIXES)}")


def apply_vn_fixes():
    print("\n=== VN MASS FIX (raw kanji → VN word) ===")
    total = 0
    for path in VN_FIX_FILES:
        f = ROOT / path
        if not f.exists():
            print(f"  SKIP: {path}")
            continue
        c = fix_vn_kanji_in_json(f)
        if c > 0:
            print(f"  fixed {c} occurrences: {path}")
            total += c
    print(f"  Total VN replacements: {total}")


def main():
    apply_jp_fixes()
    apply_vn_fixes()
    print("\n✓ All fixes applied. Re-run review/build to verify.")


if __name__ == "__main__":
    main()
