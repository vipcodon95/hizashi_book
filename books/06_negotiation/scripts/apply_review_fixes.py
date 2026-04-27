#!/usr/bin/env python3
"""Apply JP + VN review fixes for sách 06 v1.0 → v1.1."""
import json
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

# ═══ JP P0 fixes — typo trong heading ═══

JP_FIXES = [
    # P0: 3 typo headings phá build SQL câu chốt extraction
    ('phần_I/rule_05_価格戦略/rule.md', '## 🎯 Câu chốト', '## 🎯 Câu chốt'),
    ('phần_IV/rule_34_調印依頼/rule.md', '## 🎯 Câu チョット', '## 🎯 Câu chốt'),
    ('phần_V/rule_43_エスカレーション/rule.md', '## 🎯 Câu チ ốt', '## 🎯 Câu chốt'),

    # P1: rule_11 「成果をいただいております」 direction wrong
    ('phần_II/rule_11_コンテキスト設定/rule.md',
     'という成果をいただいております',
     'という成果をお出しすることができました'),

    # P1: rule_36 全力でお取組みさせていただきます → 全力で取り組んでまいります
    ('phần_IV/rule_36_成立後挨拶/rule.md',
     '全力でお取組みさせていただきます',
     '全力で取り組んでまいります'),
    ('phần_IV/rule_36_成立後挨拶/conversation.json',
     '全力でお取組みさせていただきます',
     '全力で取り組んでまいります'),
    ('phần_IV/rule_36_成立後挨拶/conversation.json',
     '全力で取組みます',
     '全力で取り組んでまいります'),

    # P1: rule_19 ご提供可能です → ご提供可能でございます
    ('phần_III/rule_19_価格提示/conversation.json',
     'ご提供可能です',
     'ご提供可能でございます'),

    # P1: rule_38 ティエンファット社 → ティエンファット株式会社 in PR
    ('phần_IV/rule_38_対外発表/rule.md',
     'ティエンファット社、白鷗株式会社と',
     'ティエンファット株式会社、白鷗株式会社と'),
    ('phần_IV/rule_38_対外発表/conversation.json',
     'ティエンファット社、白鷗株式会社と',
     'ティエンファット株式会社、白鷗株式会社と'),

    # P1: rule_28 thêm idiom 「ご縁がございましたら」
    ('phần_III/rule_28_撤退作法/rule.md',
     '再度ご一緒できる機会がございましたら',
     'またご縁がございましたら、ぜひお声がけください。再度ご一緒できる機会'),
]


# ═══ VN FIX — Tanaka PMO xưng "tôi" + KHÔNG "ạ" ═══

# Per rule, fix Tanaka lines specifically (he's JP customer not Vietnamese junior)
VN_TANAKA_FIXES = [
    # rule_29 ニブル
    ('phần_III/rule_29_ニブル対応/conversation.json',
     'em xem draft',
     'tôi đã xem draft'),
    ('phần_III/rule_29_ニブル対応/conversation.json',
     'bên anh thêm training',
     'bên tôi thêm training'),
    ('phần_III/rule_29_ニブル対応/conversation.json',
     'Cảm ơn anh ạ! Tiện thể em thêm ngày 2 luôn ạ',
     'Cảm ơn. Tiện thể tôi muốn thêm ngày 2'),
    ('phần_III/rule_29_ニブル対応/conversation.json',
     'Cảm ơn anh chu đáo. Em thảo luận lại nội bộ rồi báo chính thức sau',
     'Cảm ơn anh chu đáo. Tôi thảo luận lại nội bộ rồi báo chính thức sau'),

    # rule_30 合意確認
    ('phần_IV/rule_30_合意確認/conversation.json',
     'Anh Dũng ơi, em đã xem contract draft',
     'Anh Dũng, tôi đã xem contract draft'),
    ('phần_IV/rule_30_合意確認/conversation.json',
     'hôm đó mình thống nhất 99.5% mà?',
     'hôm đó chúng ta thống nhất 99.5% mà?'),

    # rule_36 成立後挨拶
    ('phần_IV/rule_36_成立後挨拶/conversation.json',
     'Em rõ rồi ạ. Lúc đầu em sẽ review chặt hơn',
     'Tôi rõ rồi. Đầu tiên tôi sẽ review chặt hơn'),

    # rule_37 社内キックオフ
    ('phần_IV/rule_37_社内キックオフ/conversation.json',
     'Anh Dũng, em cảm ơn ạ. Sáng mai em sẽ set sync đầu tiên với anh Tuấn',
     'Anh Dũng, tôi cảm ơn. Sáng mai tôi sẽ set sync đầu tiên với anh Tuấn'),
]


# ═══ VN FIX — Ōgaki xưng "tôi" (NOT "anh" tự xưng) ═══

VN_OOGAKI_FIXES = [
    # rule_24 譲歩交換
    ('phần_III/rule_24_譲歩交換/conversation.json',
     '"sentence_translation": "Cảm ơn em.',
     '"sentence_translation": "Cảm ơn anh.'),

    # rule_27 再アンカリング
    ('phần_III/rule_27_再アンカリング/conversation.json',
     '"sentence_translation": "Cảm ơn em.',
     '"sentence_translation": "Cảm ơn anh.'),

    # rule_33 条項調整
    ('phần_IV/rule_33_条項調整/conversation.json',
     'IP thuộc bên anh giúp em',
     'IP thuộc bên tôi, anh giúp tôi'),
    ('phần_IV/rule_33_条項調整/conversation.json',
     'IP 2 layers em hiểu được',
     'IP 2 layers tôi hiểu được'),
    ('phần_IV/rule_33_条項調整/conversation.json',
     'Cả 3 điểm bên anh đồng thuận. Phiền em update',
     'Cả 3 điểm bên tôi đồng thuận. Phiền anh update'),

    # rule_30 合意確認 — Ōgaki "giúp anh" → "giúp tôi"
    ('phần_IV/rule_30_合意確認/conversation.json',
     'trả cuối tháng kế tiếp giúp anh',
     'trả cuối tháng kế tiếp giúp tôi'),

    # rule_32 LOI契約
    ('phần_IV/rule_32_LOI契約/conversation.json',
     'Hôm nay anh đóng dấu rồi gửi PDF',
     'Hôm nay tôi đóng dấu rồi gửi PDF'),

    # rule_34 調印依頼
    ('phần_IV/rule_34_調印依頼/conversation.json',
     'Bên anh đi theo eSignature. Chiều nay anh xử lý',
     'Bên tôi đi theo eSignature. Chiều nay tôi xử lý'),

    # rule_36 成立後挨拶
    ('phần_IV/rule_36_成立後挨拶/conversation.json',
     'Anh Tanaka, weekly đầu tiên cứ grip chặt giúp anh',
     'Anh Tanaka, weekly đầu tiên cứ grip chặt giúp tôi'),

    # rule_38 対外発表
    ('phần_IV/rule_38_対外発表/conversation.json',
     'bên anh PR không nhận liên lạc',
     'bên tôi PR không nhận liên lạc'),
    ('phần_IV/rule_38_対外発表/conversation.json',
     'Budget IT bên anh lộ',
     'Budget IT bên tôi lộ'),
    ('phần_IV/rule_38_対外発表/conversation.json',
     'take-down giúp anh',
     'take-down giúp tôi'),
]


# ═══ VN FIX — Nakamura CFO + Matsumoto xưng "tôi" ═══

VN_NAKAMURA_MATSUMOTO_FIXES = [
    # rule_43 エスカレーション
    ('phần_V/rule_43_エスカレーション/conversation.json',
     'Indemnity không unlimited thì bên anh không duyệt được. Bây giờ ngay đây em quyết đi',
     'Indemnity không unlimited thì bên tôi không duyệt được. Bây giờ anh quyết đi'),
    ('phần_V/rule_43_エスカレーション/conversation.json',
     '"sentence_translation": "anh mang về xem',
     '"sentence_translation": "tôi mang về xem'),

    # rule_40 多者間交渉
    ('phần_V/rule_40_多者間交渉/conversation.json',
     'Cảm ơn em. Bên anh vào nội bộ thảo luận',
     'Cảm ơn. Chúng tôi vào nội bộ thảo luận'),

    # rule_44 VN_JP gap
    ('phần_V/rule_44_VN_JP_ギャップ/conversation.json',
     'đề xuất lại giúp anh được không',
     'đề xuất lại giúp tôi được không'),
    ('phần_V/rule_44_VN_JP_ギャップ/conversation.json',
     'Anh Tuấn giảm liên tiếp 2 lần. Bên anh ratchet',
     'Anh Tuấn giảm liên tiếp 2 lần. Bên tôi ratchet'),
    ('phần_V/rule_44_VN_JP_ギャップ/conversation.json',
     '"sentence_translation": "Anh mang về xem',
     '"sentence_translation": "Tôi mang về xem'),
]


def apply_fixes(fixes, label):
    print(f"\n=== {label} ===")
    count = 0
    for path, old, new in fixes:
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
    print(f"  Subtotal: {count}/{len(fixes)}")


def main():
    apply_fixes(JP_FIXES, "JP P0/P1")
    apply_fixes(VN_TANAKA_FIXES, "VN — Tanaka PMO 'tôi' (NOT 'em ạ')")
    apply_fixes(VN_OOGAKI_FIXES, "VN — Ōgaki self-ref 'tôi'")
    apply_fixes(VN_NAKAMURA_MATSUMOTO_FIXES, "VN — Nakamura/Matsumoto self-ref 'tôi'")
    print("\n✓ Done.")


if __name__ == "__main__":
    main()
