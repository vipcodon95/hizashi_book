#!/usr/bin/env python3
"""Fix remaining raw kanji in VN flow text inside rule.md files."""
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

# Each fix: (file path, old, new)
FIXES = [
    # rule_14 司会書記 — VN flow text
    ('phần_II/rule_14_司会書記/rule.md',
     'Trước khi vào議題 đầu tiên: **公表 ai là 司会, ai là 書記**',
     'Trước khi vào nội dung đầu tiên: **công bố ai là chủ trì (司会), ai là người ghi biên bản (書記)**'),
    ('phần_II/rule_14_司会書記/rule.md',
     'Sau khi giới thiệu出席者 + agenda, em Dũng phân vai. Tự xác nhận 司会, đề cử em Linh làm 書記.',
     'Sau khi giới thiệu người tham dự + agenda, em Dũng phân vai. Tự xác nhận chủ trì (司会), đề cử em Linh làm người ghi biên bản (書記).'),
    ('phần_II/rule_14_司会書記/rule.md',
     '**Vì sao xấu:** 書記 quyết định ai retain知識 sau họp. Phân vai trong lúc họp = lộn xộn, 書記 chưa kịp prep template, biên bản fail.',
     '**Vì sao xấu:** Người ghi biên bản (書記) quyết định ai giữ được kiến thức sau họp. Phân vai giữa chừng = lộn xộn, không kịp prep template, biên bản fail.'),
    ('phần_II/rule_14_司会書記/rule.md',
     '## ✅ Hội thoại TỐT — 公表 trước議題',
     '## ✅ Hội thoại TỐT — Công bố vai trò trước nội dung'),
    ('phần_II/rule_14_司会書記/rule.md',
     '> *Trước議題 phải báo司会 + 書記. 書記 cam kết draft trong ngày.*',
     '> *Trước nội dung phải báo chủ trì (司会) + người ghi biên bản (書記). Người ghi biên bản cam kết draft trong ngày.*'),
    ('phần_II/rule_14_司会書記/rule.md',
     '## 📋 Vai trò 書記 phải làm',
     '## 📋 Vai trò người ghi biên bản (書記) phải làm'),
    ('phần_II/rule_14_司会書記/rule.md',
     '- 司会 + 書記 cùng 1 người → 司会 phải tập trung điều phối, không kịp ghi.',
     '- Chủ trì + người ghi biên bản cùng 1 người → chủ trì phải tập trung điều phối, không kịp ghi.'),

    # rule_18 — VN flow text
    ('phần_II/rule_18_欠席者対応/rule.md',
     'Trước議題 1, em Linh báo Dũng:',
     'Trước nội dung 1, em Linh báo Dũng:'),
    ('phần_II/rule_18_欠席者対応/rule.md',
     '*(議題1へ即進入)*',
     '*(vào thẳng nội dung 1)*'),
    ('phần_II/rule_18_欠席者対応/rule.md',
     '**Vì sao xấu:** Không 公表 ngay → khách phát hiện chính khi vào議題. Nguy hiểm hơn: 大垣 không biết người có quyền quyết vắng → có thể đi đến quyết định fake mà người có quyền sau lại từ chối.',
     '**Vì sao xấu:** Không thông báo ngay → khách phát hiện giữa chừng. Nguy hiểm hơn: anh Ōgaki không biết người có quyền quyết vắng → có thể đi đến quyết định fake mà người có quyền sau lại từ chối.'),

    # rule_12 — VN flow text (uchi-soto explanation)
    ('phần_II/rule_12_出席者紹介/rule.md',
     'Lúc giới thiệu phía mình DROP title (内のXXX, không gọi "副部長フオン様").',
     'Lúc giới thiệu phía mình DROP title (nội bộ — 内, không gọi "副部長フオン様").'),
    ('phần_II/rule_12_出席者紹介/rule.md',
     '**Vì sao xấu:** Gọi 内 (nội bộ) bằng 「様」 → khách Nhật cảm thấy **uchi-soto** chưa nắm vững. Đây là lỗi keigo căn bản nhất — sách 02 đã đề cập (drop title cho内).',
     '**Vì sao xấu:** Gọi nội bộ (内) bằng 「様」 → khách Nhật cảm thấy **uchi-soto** chưa nắm vững. Đây là lỗi keigo căn bản nhất — sách 02 đã đề cập (drop title cho 内 = phía mình).'),

    # rule_14 luận điểm chính (line 3) — full rewrite
    ('phần_II/rule_14_司会書記/rule.md',
     '> **Luận điểm.** Trước khi vào nội dung đầu tiên: **công bố ai là chủ trì (司会), ai là người ghi biên bản (書記)**. Cả phòng phải biết "ai chủ trì timing, ai ghi biên bản". Không có 書記 = biên bản không reliable, không gửi follow-up được.',
     '> **Luận điểm.** Trước khi vào nội dung đầu tiên: **công bố ai là chủ trì (司会), ai là người ghi biên bản (書記)**. Cả phòng phải biết "ai chủ trì timing, ai ghi biên bản". Không có người ghi biên bản = biên bản không reliable, không gửi follow-up được.'),

    # rule_14 câu chốt JP block — giữ JP nguyên (đó là JP citation, OK)
    # Bỏ qua vì đó là citation JP trong câu chốt
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
            print(f"fixed: {path}")
            count += 1
        else:
            print(f"  not found: {old[:60]}...")
    print(f"\nTotal: {count} fixes")


if __name__ == "__main__":
    main()
