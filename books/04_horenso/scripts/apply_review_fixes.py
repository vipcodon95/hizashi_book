#!/usr/bin/env python3
"""Apply JP + VN review fixes for sách 04 v1.0 → v1.1."""
import json
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

# ─── JP P0/P1 FIXES (specific) ─────────────────────────────────────────

JP_FIXES = [
    # P0 [03]: rule_24 注釈【4】「ご相談する」 false negative — remove
    ('phần_III/rule_24_切り出し/rule.md',
     '(Không 「ご相談する」 — chú ý kính ngữ)',
     '(「ご相談する」 cũng đúng, nhưng 「ご相談したい」 + 「のですが」 mềm hơn cho cấp trên)'),

    # P0 [02]: rule_18 L4 「お手数おかけします」 — Matsumoto không nên nói câu này
    ('phần_II/rule_18_スケジュール変更/conversation.json',
     '"sentence": "お手数おかけしますが、よろしくお願いいたします。"',
     '"sentence": "承知しました。新しい招待をお待ちしております。"'),
    ('phần_II/rule_18_スケジュール変更/conversation.json',
     '"sentence_translation": "Phiền anh, em nhờ anh nhé."',
     '"sentence_translation": "Em rõ rồi. Em đợi lời mời mới ạ."'),

    # P0 [05]: rule_32 L7 mail「重ねて」 — thêm 1st apology
    ('phần_IV/rule_32_クレーム/conversation.json',
     '"sentence": "重ねてお詫び申し上げます。"',
     '"sentence": "先ほどはお電話にて失礼いたしました。ご不便をおかけし誠に申し訳ございません。重ねてお詫び申し上げます。"'),

    # P0 [04]: rule_29 strengthen warning
    ('phần_III/rule_29_客先相談/rule.md',
     '「ちょっと相談したくて…」 — やや軽い口調',
     '「ちょっと相談したくて…」 — 客先で文末を切る不完全文 = lỗi maner nghiêm trọng (mức học sinh)'),

    # P1 [13]: rule_16 田中 「拝見します」 — đổi
    ('phần_II/rule_16_Slackマナー/conversation.json',
     '"sentence": "拝見します。"',
     '"sentence": "確認いたします。"'),
    ('phần_II/rule_16_Slackマナー/rule.md',
     '「拝見します」',
     '「確認いたします」'),

    # P1 [19]: 「ご提案させていただけませんでしょうか」 → 「ご提案させていただけますでしょうか」
    ('phần_III/rule_30_持ち帰り相談/conversation.json',
     'ご提案させていただけませんでしょうか',
     'ご提案させていただけますでしょうか'),
    ('phần_III/rule_30_持ち帰り相談/rule.md',
     'ご提案させていただけませんでしょうか',
     'ご提案させていただけますでしょうか'),

    # P1 [23]: rule_36 Matsumoto tone soften
    ('phần_IV/rule_36_VN_JPギャップ/conversation.json',
     '"sentence": "VN チームの ホウレンソウ 進化、感謝します。"',
     '"sentence": "ベトナムチームのホウレンソウが大変分かりやすくなり、感謝しております。"'),

    # P1 [10]: rule_08 トゥアン口調
    ('phần_I/rule_08_報告書/conversation.json',
     '"sentence": "ズン、これ良くなった。これは社内標準にしよう。"',
     '"sentence": "ズン、これは良くなったね。社内標準にしよう。"'),

    # P1 [06]: rule_01 副部長相手「ございます」過剰
    ('phần_I/rule_01_報告3原則/conversation.json',
     'Phase 2デモのご報告です。結論：概ね合格、ただし画面遷移の1点は再検討が必要でございます。',
     'Phase 2デモのご報告です。結論は、概ね合格、ただし画面遷移の1点は再検討が必要です。'),
]

# ─── VN raw-kanji + Tanaka tone fixes ────────────────────────────────

VN_FIXES = [
    # 朝礼 → "chōrei" / "họp đầu giờ"
    ('phần_I/rule_10_朝礼報告/conversation.json',
     '"vi": "Báo cáo trong 朝礼 (morning standup)"',
     '"vi": "Báo cáo trong chōrei (họp đầu giờ / morning standup)"'),

    ('phần_I/rule_08_報告書/conversation.json',
     '"vi": "Cách viết 報告書 (formal Japanese business document)"',
     '"vi": "Cách viết houkokusho — báo cáo formal kiểu Nhật"'),

    ('phần_II/rule_19_不在連絡/conversation.json',
     '"vi": "Báo vắng (休暇 / 病欠)"',
     '"vi": "Báo vắng (nghỉ phép / nghỉ ốm)"'),

    ('phần_III/rule_30_持ち帰り相談/conversation.json',
     '"vi": "Mang về tham vấn (持ち帰り)"',
     '"vi": "Mang về tham vấn (mochikaeri)"'),

    # 持ち帰り raw inside VN content
    ('phần_III/rule_30_持ち帰り相談/conversation.json',
     'Quản lý 持ち帰り bằng trí nhớ',
     'Quản lý mochikaeri (việc mang về) bằng trí nhớ'),
    ('phần_III/rule_30_持ち帰り相談/conversation.json',
     'Notion #持ち帰りボード',
     'Notion #mochikaeri-board'),
    ('phần_III/rule_30_持ち帰り相談/conversation.json',
     'Slack #内部相談',
     'Slack #naibu-soudan'),

    # 候補 → "lựa chọn" / "khung giờ"
    ('phần_III/rule_29_客先相談/conversation.json',
     '3 候補 thuận tiện ạ',
     '3 lựa chọn thuận tiện ạ'),
    ('phần_III/rule_29_客先相談/conversation.json',
     '〇 候補 thuận tiện ạ',
     '〇 lựa chọn thuận tiện ạ'),

    # rule_36 raw kanji 「no news 報告」
    ('phần_IV/rule_36_VN_JPギャップ/conversation.json',
     'no news 報告',
     'no-news report (báo "không có tin")'),

    # ウチ・ソト → uchi-soto + gloss
    ('phần_I/rule_11_顧客報告/conversation.json',
     'Theo ウチ・ソト dùng 「弊社のトゥアン」',
     'Theo nguyên tắc uchi-soto (trong/ngoài) dùng 「弊社のトゥアン」 (Tuấn bên em)'),

    # rule_02 template なし → gloss
    ('phần_I/rule_02_進捗報告/conversation.json',
     'Blocked dù không có vẫn để dòng 「なし」.',
     'Blocked dù không có vẫn ghi 「なし」 (nashi = không có).'),
    ('phần_I/rule_02_進捗報告/conversation.json',
     'Blocker không có vẫn ghi 「なし」.',
     'Blocker không có vẫn ghi 「なし」 (nashi = không có).'),

    # rule_30 持ち帰り line good_04
    ('phần_III/rule_30_持ち帰り相談/conversation.json',
     '"sentence_translation": "Việc lock cost Phase 2 hôm trước em đã mang về"',
     '"sentence_translation": "Về việc lock cost Phase 2 em đã mang về xem xét hôm trước"'),

    # rule_30 closing missing "giúp đỡ ạ"
    ('phần_III/rule_30_持ち帰り相談/conversation.json',
     '"sentence_translation": "Anh Matsumoto, lúc nào cũng cảm ơn anh."',
     '"sentence_translation": "Anh Matsumoto, lúc nào cũng cảm ơn anh giúp đỡ ạ."'),

    # rule_38 「そんなはずない」 add gloss
    ('phần_V/rule_38_自己診断/conversation.json',
     'em nói 「そんなはずない」 quên rồi à?',
     'em nói 「そんなはずない」 (không thể nào) quên rồi à?'),

    # Tanaka tone: rule_35 / rule_37 — đổi xưng "anh" + "ạ" → "tôi"
    ('phần_IV/rule_35_リモート/conversation.json',
     '"sentence_translation": "Linh, em gửi giúp anh bản đã hiệu đính brochure ạ?"',
     '"sentence_translation": "Linh, em gửi giúp tôi bản đã hiệu đính brochure được không?"'),
    ('phần_IV/rule_35_リモート/conversation.json',
     '"sentence_translation": "Tôi đã nhận handoff. ① và ② tôi review trong sáng nay."',
     '"sentence_translation": "Tôi đã nhận handoff. ① và ② tôi review trong sáng nay."'),  # already OK
    ('phần_V/rule_37_ツール選択/conversation.json',
     'Dũng, anh có 4 việc cần hỏi',
     'Dũng, tôi có 4 việc cần hỏi'),

    # rule_07 「Báo tốt」 → 「Báo cáo tốt」
    ('phần_I/rule_07_悪い知らせ/conversation.json',
     '"sentence_translation": "Predict đến Plan đủ trong 30 giây. Báo tốt. Báo đầu em làm đi. Anh sẽ phản hồi trong 2 giờ."',
     '"sentence_translation": "Predict đến Plan đủ trong 30 giây. Báo cáo tốt. Báo đầu em làm đi. Anh sẽ phản hồi trong 2 giờ."'),

    # rule_36 Matsumoto VN closing
    ('phần_IV/rule_36_VN_JPギャップ/conversation.json',
     '"sentence_translation": "Cảm ơn team VN đã evolve Hou-Ren-Sou."',
     '"sentence_translation": "Cảm ơn team VN đã nâng cấp Hou-Ren-Sou."'),
]


def apply_fixes(fixes, label):
    print(f"\n=== {label} ===")
    count = 0
    for path, old, new in fixes:
        f = ROOT / path
        if not f.exists():
            print(f"  SKIP (not found): {path}")
            continue
        text = f.read_text(encoding='utf-8')
        if old in text:
            f.write_text(text.replace(old, new), encoding='utf-8')
            count += 1
            print(f"  fixed: {path}")
        else:
            # Try variations / log first 60 chars to debug
            if old.startswith('"sentence_translation"') or old.startswith('"sentence"') or old.startswith('"vi"'):
                print(f"  not found (probably already changed): {path} | {old[:60]}")
            else:
                print(f"  not found: {path}: {old[:60]}...")
    print(f"  Subtotal: {count}/{len(fixes)}")


def main():
    apply_fixes(JP_FIXES, "JP P0/P1 fixes")
    apply_fixes(VN_FIXES, "VN raw-kanji + Tanaka tone fixes")
    print("\n✓ Done.")


if __name__ == "__main__":
    main()
