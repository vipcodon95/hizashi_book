#!/usr/bin/env python3
"""Apply fixes directly to rule.md files (build pipeline reads rule.md, not JSON)."""
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

FIXES = [
    # rule_01: でございます → です (副部長 internal — không cần ございます過剰)
    ('phần_I/rule_01_報告3原則/rule.md',
     '結論：概ね合格、ただし画面遷移の1点は再検討が必要でございます',
     '結論：概ね合格、ただし画面遷移の1点は再検討が必要です'),

    # rule_08: トゥアン口調
    ('phần_I/rule_08_報告書/rule.md',
     'ズン、これ良くなった。これは社内標準にしよう',
     'ズン、これは良くなったね。社内標準にしよう'),
    ('phần_I/rule_08_報告書/rule.md',
     'ズン、これ良くなった',
     'ズン、これは良くなったね'),
    ('phần_I/rule_08_報告書/rule.md',
     'これは社内標準にしよう',
     '社内標準にしよう'),

    # rule_16: 拝見します → 確認いたします
    ('phần_II/rule_16_Slackマナー/rule.md',
     '拝見します',
     '確認いたします'),

    # rule_18: Matsumoto L4 reply
    ('phần_II/rule_18_スケジュール変更/rule.md',
     'お手数おかけしますが、よろしくお願いいたします',
     '承知しました。新しい招待をお待ちしております'),
    ('phần_II/rule_18_スケジュール変更/rule.md',
     'Phiền anh, em nhờ anh nhé',
     'Em rõ rồi. Em đợi lời mời mới ạ'),

    # rule_24: contradiction unify — drop line 70 contradiction
    ('phần_III/rule_24_切り出し/rule.md',
     '「ご相談する」「相談したい」 thuần — thiếu kính ngữ',
     '「相談したい」 đơn thuần — thiếu kính ngữ + thiếu hỏi thời gian'),

    # rule_29: strengthen warning
    ('phần_III/rule_29_客先相談/rule.md',
     'やや軽い口調',
     '客先で 「〜たくて…」 cắt văn = lỗi maner nghiêm trọng (mức học sinh)'),

    # rule_32: mail apology prepend (twin-closing fix)
    ('phần_IV/rule_32_クレーム/rule.md',
     '重ねてお詫び申し上げます',
     '先ほどはお電話にて失礼いたしました。ご不便をおかけし誠に申し訳ございません。重ねてお詫び申し上げます'),

    # rule_36: Matsumoto tone soften
    ('phần_IV/rule_36_VN_JPギャップ/rule.md',
     'VN チームの ホウレンソウ 進化、感謝します',
     'ベトナムチームのホウレンソウが大変分かりやすくなり、感謝しております'),
    ('phần_IV/rule_36_VN_JPギャップ/rule.md',
     'Cảm ơn team VN đã evolve Hou-Ren-Sou',
     'Báo cáo của team VN dễ hiểu hơn rất nhiều, tôi rất cảm ơn'),
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
            print(f"fixed: {path} | {old[:40]}...")
        else:
            print(f"  not found: {path} | {old[:40]}...")

    # Front matter version
    fm = ROOT / '_front_matter.md'
    text = fm.read_text(encoding='utf-8')
    text = text.replace('Phiên bản 1.0', 'Phiên bản 1.1')
    fm.write_text(text, encoding='utf-8')
    print("front_matter: Phiên bản 1.0 → 1.1")
    print(f"\nTotal: {count} fixes")


if __name__ == "__main__":
    main()
