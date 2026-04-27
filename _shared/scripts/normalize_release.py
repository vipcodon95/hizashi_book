#!/usr/bin/env python3
"""
Chuẩn hoá các file md trong release/ — chạy được standalone hoặc gọi như module.

Quy tắc:
  1. Bỏ icon (emoji + một số ký hiệu) ở đầu mọi heading markdown (#, ##, ###...).
     Ví dụ: "## ✅ Hội thoại TỐT" → "## Hội thoại TỐT".
  2. Đổi một số heading tiếng Anh thường gặp sang tiếng Việt:
       BJT Practice           → Luyện BJT
       Vocab note             → Bảng từ vựng
       Self-grading           → Tự đánh giá
       Tips                   → Mẹo
       Checklist              → Danh sách kiểm tra
       Variant                → Biến thể
     (Áp dụng case-insensitive ở phần text heading. Phần phụ trong ngoặc đơn — vd
     "BJT Practice (J3 — 場面把握)" — vẫn giữ nguyên.)
  3. Không đụng frontmatter, không đụng nội dung body ngoài heading.

Hai cách dùng:
  python3 normalize_release.py             # chạy trên toàn release/books/
  from normalize_release import normalize_text   # gọi từ build script khác

KHÔNG đụng file gốc trong books/.
"""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
RELEASE_BOOKS = ROOT / "release" / "books"

# Heading: bắt đầu dòng bằng 1-6 dấu '#' + space.
HEADING_PATTERN = re.compile(r"^(#{1,6})\s+(.+?)\s*$", re.MULTILINE)

# Bỏ icon ở đầu phần text của heading. Pattern này là 'mọi ký tự không phải
# chữ/chữ số/ký tự CJK/dấu câu mở đầu hợp lệ' → cắt sạch tới khi gặp ký tự hợp lệ.
# Bao gồm emoji (range 0x1F000-0x1FFFF), ký hiệu lẻ (✅❌⚠), ký tự thừa khoảng trắng.
LEADING_ICON_PATTERN = re.compile(
    r"^["
    r"\U0001F000-\U0001FFFF"   # emoji blocks
    r"\u2600-\u27BF"            # symbols (✅ ❌ ⚠ ✓ ✗ etc.)
    r"\u2300-\u23FF"            # misc technical
    r"\u2B00-\u2BFF"            # arrows
    r"\u3030\u303D"             # wavy/part alternation marks
    r"\uFE00-\uFE0F"            # variation selectors
    r"\s"
    r"]+",
    re.UNICODE,
)

# Đổi text heading tiếng Anh → Việt (case-insensitive cho key).
# Áp dụng nếu phần text heading (sau khi strip icon) khớp y nguyên hoặc bắt đầu
# bằng key + dấu phân cách (space, '(', '—', '/').
ENG_VI_RENAMES: dict[str, str] = {
    # Đặt key cụ thể trước key chung — match theo thứ tự dict.
    "BJT Practice": "Luyện BJT",
    "Vocab note": "Bảng từ vựng",
    "Vocabulary note": "Bảng từ vựng",
    "Vocab list": "Bảng từ vựng",
    "Vocabulary": "Bảng từ vựng",
    "Vocab": "Bảng từ vựng",
    "Self-grading": "Tự đánh giá",
    "Self-diagnostic": "Tự chẩn đoán",
    "Self-review": "Tự rà soát",
    "Self-reflection": "Tự nhìn lại",
    "Self-check": "Tự kiểm tra",
    "Tips": "Mẹo",
    "Note": "Ghi chú",
    "Notes": "Ghi chú",
    "Summary": "Tóm tắt",
    "Recap": "Tóm tắt nhanh",
    "Review": "Rà soát",
    "Practice": "Luyện tập",
}

# Đổi heading VI → VI (chuẩn hoá thuật ngữ nội bộ).
# Match theo prefix giống ENG_VI_RENAMES — đặt biến thể dài trước biến thể ngắn.
VI_VI_RENAMES: dict[str, str] = {
    "Câu chốt mang đi": "Cụm từ mẫu",
    "Câu chốt": "Cụm từ mẫu",
}


def _strip_leading_icons(text: str) -> str:
    out = LEADING_ICON_PATTERN.sub("", text)
    return out.strip()


def _apply_rename_table(text: str, table: dict[str, str], case_sensitive: bool = False) -> str:
    for src, dst in table.items():
        src_cmp = src if case_sensitive else src.lower()
        text_cmp = text if case_sensitive else text.lower()
        # Trùng nguyên.
        if text_cmp == src_cmp:
            return dst
        # Match prefix + dấu phân cách hợp lệ.
        if text_cmp.startswith(src_cmp) and len(text) > len(src):
            sep = text[len(src)]
            if sep in (" ", "(", "—", "-", "/"):
                return dst + text[len(src):]
    return text


def _rename_english_heading(text: str) -> str:
    text = _apply_rename_table(text, ENG_VI_RENAMES, case_sensitive=False)
    text = _apply_rename_table(text, VI_VI_RENAMES, case_sensitive=True)
    return text


def _replace_heading(match: re.Match[str]) -> str:
    hashes = match.group(1)
    body = match.group(2)
    body = _strip_leading_icons(body)
    body = _rename_english_heading(body)
    if not body:
        # Heading rỗng sau khi strip — giữ nguyên dòng gốc.
        return match.group(0)
    return f"{hashes} {body}"


def normalize_text(text: str) -> str:
    """Áp dụng chuẩn hoá lên 1 chuỗi markdown — public API cho build script."""
    return HEADING_PATTERN.sub(_replace_heading, text)


def normalize_file(path: Path) -> bool:
    """Đọc + ghi đè nếu có thay đổi. Trả về True nếu file đổi."""
    original = path.read_text(encoding="utf-8")
    updated = normalize_text(original)
    if updated != original:
        path.write_text(updated, encoding="utf-8")
        return True
    return False


def main() -> None:
    if not RELEASE_BOOKS.is_dir():
        raise FileNotFoundError(f"Chưa có release: {RELEASE_BOOKS}")

    total_files = 0
    changed_files = 0
    for md_path in sorted(RELEASE_BOOKS.rglob("*.md")):
        total_files += 1
        if normalize_file(md_path):
            changed_files += 1

    print(f"Đã quét {total_files} file. Cập nhật {changed_files} file.")


if __name__ == "__main__":
    main()
