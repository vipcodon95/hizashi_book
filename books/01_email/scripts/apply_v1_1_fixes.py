#!/usr/bin/env python3
"""Apply v1.0 → v1.1 fixes for sách 01 Email."""
import re
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

print("=== P0-1: Email domain @thienphat.vn → @tienphat.com.vn ===")
count = 0
for md in ROOT.rglob("*.md"):
    text = md.read_text(encoding='utf-8')
    new = text.replace('@thienphat.vn', '@tienphat.com.vn')
    if text != new:
        md.write_text(new, encoding='utf-8')
        count += 1
        print(f"  fixed: {md.relative_to(ROOT)}")
print(f"  Total files: {count}")

print("\n=== P0-2: ティエンファット社 → 弊社 in body (JP) ===")
JP_BODY_FIXES = [
    ('ティエンファット社より', '弊社より'),
    ('ティエンファット社の', '弊社の'),
]
count = 0
for md in ROOT.rglob("ja/**/*.md"):
    text = md.read_text(encoding='utf-8')
    new = text
    for old, repl in JP_BODY_FIXES:
        new = new.replace(old, repl)
    # Restore signature/header context (preserve in 署名)
    if text != new:
        md.write_text(new, encoding='utf-8')
        count += 1
        print(f"  fixed: {md.relative_to(ROOT)}")
print(f"  Total files: {count}")

print("\n=== P0-4: rule_03 'Minh' → 'Matsumoto' ===")
rule_03 = ROOT / "vi/phần_I/rule_03_nguyên_tắc_3_chạm.md"
if rule_03.exists():
    text = rule_03.read_text(encoding='utf-8')
    # Replace "Minh" as character name (not "minh bạch" etc.)
    new = re.sub(r'\b(②|④|⑥)\s*Minh\b', r'\1Matsumoto', text)
    new = new.replace('**②Minh**', '**②Matsumoto**')
    new = new.replace('**④Minh**', '**④Matsumoto**')
    if text != new:
        rule_03.write_text(new, encoding='utf-8')
        print(f"  fixed: {rule_03.relative_to(ROOT)}")

print("\n=== P0-5: rule_09 'Chị cảm ơn chị' → 'Em cảm ơn chị' ===")
rule_09 = ROOT / "vi/phần_I/rule_09_re_và_tiêu_đề_mới.md"
if rule_09.exists():
    text = rule_09.read_text(encoding='utf-8')
    new = text.replace('Chị cảm ơn chị', 'Em cảm ơn chị')
    if text != new:
        rule_09.write_text(new, encoding='utf-8')
        print(f"  fixed: {rule_09.relative_to(ROOT)}")

print("\n=== P0-6: rule_17 JP English signature 'Isamu Tanaka' → 'Zung Tran' ===")
rule_17_ja = ROOT / "ja/第1章/rule_17_2種類の署名.md"
if rule_17_ja.exists():
    text = rule_17_ja.read_text(encoding='utf-8')
    new = text.replace('Isamu Tanaka', 'Zung Tran')
    new = new.replace('Tenhou Co., Ltd.', 'Tien Phat Co., Ltd.')
    if text != new:
        rule_17_ja.write_text(new, encoding='utf-8')
        print(f"  fixed: {rule_17_ja.relative_to(ROOT)}")

print("\n=== P0-7: rule_20 JP CC emails Suzuki/Yamamoto → Tuan/Loan ===")
rule_20_ja = ROOT / "ja/第1章/rule_20_CCの紹介.md"
if rule_20_ja.exists():
    text = rule_20_ja.read_text(encoding='utf-8')
    new = text.replace('suzuki.ken', 'tuan.le').replace('yamamoto.miwa', 'loan.nguyen')
    new = new.replace('@hakuo.co.jp', '@tienphat.com.vn').replace('@tenhou.co.jp', '@tienphat.com.vn')
    # But keep @hakuo.co.jp for actual Hakuo customer emails — only fix Cc context
    if text != new:
        rule_20_ja.write_text(new, encoding='utf-8')
        print(f"  fixed: {rule_20_ja.relative_to(ROOT)}")

print("\n=== P0-8: Phụ lục A item 16 currency 15tr VND → ¥1,500,000 ===")
fluc_a = ROOT / "vi/phụ_lục/phụ_lục_A_khuôn_mẫu.md"
if fluc_a.exists():
    text = fluc_a.read_text(encoding='utf-8')
    new = text.replace('tương đương 15 triệu VND', '1,500,000 円 (≈ 15 triệu VND)')
    new = new.replace('15 triệu VND', '¥1,500,000')
    if text != new:
        fluc_a.write_text(new, encoding='utf-8')
        print(f"  fixed: {fluc_a.relative_to(ROOT)}")

print("\n=== P1-2: rule_53 VN 'Hà Nội' → 'Tokyo' (geography fix) ===")
rule_53_vi = ROOT / "vi/phần_IV/rule_53_xin_lỗi_4_bước.md"
if rule_53_vi.exists():
    text = rule_53_vi.read_text(encoding='utf-8')
    new = text.replace('bay ra Hà Nội họp', 'bay sang Tokyo họp')
    if text != new:
        rule_53_vi.write_text(new, encoding='utf-8')
        print(f"  fixed: {rule_53_vi.relative_to(ROOT)}")

print("\n=== P1-5: rule_13 JP 'ティエンファット社のズン' → 'ティエンファットのズン' (drop 社 in self-name) ===")
rule_13_ja = ROOT / "ja/第1章/rule_13_冒頭挨拶.md"
if rule_13_ja.exists():
    text = rule_13_ja.read_text(encoding='utf-8')
    new = text.replace('ティエンファット社のズンと申します', 'ティエンファットのズンと申します')
    if text != new:
        rule_13_ja.write_text(new, encoding='utf-8')
        print(f"  fixed: {rule_13_ja.relative_to(ROOT)}")

print("\n=== P2-11: Phụ lục B 'Hy vọng mail này...' dịch máy ===")
fluc_b = ROOT / "vi/phụ_lục/phụ_lục_B_cụm_từ.md"
if fluc_b.exists():
    text = fluc_b.read_text(encoding='utf-8')
    new = text.replace(
        'Hy vọng mail này đến anh/chị vào một lúc thuận tiện',
        'Em xin phép gửi anh/chị mail này'
    )
    if text != new:
        fluc_b.write_text(new, encoding='utf-8')
        print(f"  fixed: {fluc_b.relative_to(ROOT)}")

print("\n✓ Done.")
