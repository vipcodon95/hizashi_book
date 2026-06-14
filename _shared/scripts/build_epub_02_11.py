"""
Build EPUB cho sách 02-09 + 11 (cấu trúc content đa dạng).

Vì sách 02-09 đã có scripts/build_book.sh tạo $OUTPUT/_combined.md (logic concat
đúng cấu trúc từng sách), script này:
  1. Chạy build_book.sh để sinh _combined.md (nếu có).
  2. Pandoc lại từ _combined.md với CSS table-fix + lua strip_colgroup + raw_html
     (cho ruby furigana) → epub vào _shared/output/.

Sách 11 (jisshusei_shokuhin) dùng cấu trúc t*/*_LyThuyet.md giống sách Đại →
concat trực tiếp trong script này.

Sách 10 KHÔNG dùng script này — dùng build_epub_book10.py riêng (có render JSON bài tập).

CSS: epub_styles_book10.css (table-layout:auto — cột tự co, an toàn cho bảng 2-9 cột).
"""

from __future__ import annotations

import argparse
import subprocess
import tempfile
import re
from pathlib import Path

SHARED_ROOT = Path(__file__).resolve().parent.parent
HIZASHI_BOOK_ROOT = SHARED_ROOT.parent
BOOKS_DIR = HIZASHI_BOOK_ROOT / "books"
OUTPUT_DIR = SHARED_ROOT / "output"
CSS_PATH = SHARED_ROOT / "scripts" / "epub_styles_book10.css"
LUA_PATH = SHARED_ROOT / "scripts" / "strip_colgroup.lua"

# Sách dùng build_book.sh → combined.md (key: tên output epub, folder, title)
BASH_BOOKS = {
    "02_phone": ("hizashi_02_phone", "Hizashi — Điện thoại Công Việc / 電話応対"),
    "03_meeting": ("hizashi_03_meeting", "Hizashi — Họp hành / 会議"),
    "04_horenso": ("hizashi_04_horenso", "Hizashi — Hô-Ren-Sô / 報連相"),
    "05_presentation": ("hizashi_05_presentation", "Hizashi — Thuyết trình / プレゼン"),
    "06_negotiation": ("hizashi_06_negotiation", "Hizashi — Đàm phán / 交渉"),
    "07_visit_card": ("hizashi_07_visit_card", "Hizashi — Danh thiếp & Viếng thăm / 名刺・訪問"),
    "08_smalltalk": ("hizashi_08_smalltalk", "Hizashi — Trò chuyện xã giao / 雑談"),
    "09_real_dialogues": ("hizashi_09_real_dialogues", "Hizashi — Hội thoại thực tế / リアル会話"),
}

# Sách dùng cấu trúc t*/*_LyThuyet.md (concat trực tiếp)
LYTHUYET_BOOKS = {
    "11_jisshusei_shokuhin": ("hizashi_11_jisshusei", "Hizashi — Thực tập sinh ngành thực phẩm"),
}


# Whitelist HTML tag cho XHTML (copy từ build_epub_combined.py)
_HTML_ALLOWED_TAGS = {
    "br", "hr", "img", "p", "div", "span", "a", "em", "strong", "b", "i", "u",
    "ruby", "rt", "rb", "rp",
    "table", "thead", "tbody", "tr", "td", "th",
    "ul", "ol", "li", "dl", "dt", "dd",
    "blockquote", "code", "pre", "kbd", "sup", "sub",
    "h1", "h2", "h3", "h4", "h5", "h6",
    "section", "article", "aside", "nav", "header", "footer",
    "figure", "figcaption", "small", "mark", "del", "ins",
}
_RE_BR = re.compile(r"<(br|hr)(\s[^>]*)?>(?!\s*</\1>)", re.IGNORECASE)


def _normalize_html(text: str) -> str:
    text = _RE_BR.sub(r"<\1\2/>", text)

    def _esc(m: re.Match) -> str:
        full = m.group(0)
        if m.group(1).lower() in _HTML_ALLOWED_TAGS:
            return full
        return full.replace("<", "&lt;").replace(">", "&gt;")

    return re.sub(r"</?([a-zA-Z][a-zA-Z0-9_-]*)(\s[^>]*)?/?>", _esc, text)


def build_combined_from_bash(book_folder: str) -> Path | None:
    """Chạy build_book.sh để sinh _combined.md, trả về path."""
    book_dir = BOOKS_DIR / book_folder
    script = book_dir / "scripts" / "build_book.sh"
    if not script.exists():
        print(f"  WARN: {book_folder}/scripts/build_book.sh không tồn tại")
        return None
    combined = book_dir / "output" / "_combined.md"
    # Chạy build_book.sh (nó tự concat; phần pandoc của nó sẽ chạy nhưng ta bỏ qua output đó)
    print(f"  Chạy build_book.sh để concat content...")
    subprocess.run(
        ["bash", str(script)],
        cwd=book_dir, capture_output=True, text=True,
    )
    if not combined.exists():
        print(f"  ERROR: không tìm thấy {combined}")
        return None
    return combined


def build_combined_from_lythuyet(book_folder: str, title: str) -> Path:
    """Concat các t*/*_LyThuyet.md (sách 11)."""
    book_dir = BOOKS_DIR / book_folder
    lines = ["---", f'title: "{title}"', 'author: "Hizashi Teams"', "lang: vi", "---", ""]
    for subdir in sorted(book_dir.iterdir()):
        if not subdir.is_dir() or not subdir.name.startswith("t"):
            continue
        md_files = sorted(subdir.glob("*_LyThuyet.md"))
        if md_files:
            lines.append(md_files[0].read_text(encoding="utf-8"))
            lines.append("\n\n---\n")
    combined = book_dir / "output" / "_combined.md"
    combined.parent.mkdir(parents=True, exist_ok=True)
    combined.write_text("\n".join(lines), encoding="utf-8")
    return combined


def pandoc_epub(combined_md: Path, out_name: str, title: str) -> Path:
    """Pandoc từ combined.md → epub với CSS+lua+raw_html."""
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    output_file = OUTPUT_DIR / f"{out_name}.epub"

    # Normalize HTML cho XHTML + ruby
    content = _normalize_html(combined_md.read_text(encoding="utf-8"))
    with tempfile.NamedTemporaryFile(mode="w", suffix=".md", encoding="utf-8", delete=False) as tmp:
        tmp.write(content)
        tmp_path = Path(tmp.name)

    try:
        cmd = [
            "pandoc", str(tmp_path),
            "-o", str(output_file),
            "--from", "markdown+raw_html",
            "--to", "epub3",
            "--toc", "--toc-depth=2",
            "--css", str(CSS_PATH),
            "--lua-filter", str(LUA_PATH),
            "--metadata", f"title={title}",
            "--metadata", "author=Hizashi Teams",
            "--metadata", "lang=vi",
        ]
        print(f"  Running pandoc...")
        result = subprocess.run(cmd, capture_output=True, text=True)
        if result.returncode != 0:
            print(f"  ERROR: {result.stderr[:500]}")
            raise RuntimeError("pandoc failed")
        size_kb = output_file.stat().st_size / 1024
        print(f"  ✓ {output_file.relative_to(HIZASHI_BOOK_ROOT)} ({size_kb:.0f} KB)")
        return output_file
    finally:
        tmp_path.unlink(missing_ok=True)


def build_book(book_folder: str) -> None:
    print(f"\n=== Build EPUB: {book_folder} ===")
    if book_folder in BASH_BOOKS:
        out_name, title = BASH_BOOKS[book_folder]
        combined = build_combined_from_bash(book_folder)
        if combined:
            pandoc_epub(combined, out_name, title)
    elif book_folder in LYTHUYET_BOOKS:
        out_name, title = LYTHUYET_BOOKS[book_folder]
        combined = build_combined_from_lythuyet(book_folder, title)
        pandoc_epub(combined, out_name, title)
    else:
        print(f"  WARN: {book_folder} không có trong cấu hình")


def main() -> None:
    all_books = list(BASH_BOOKS.keys()) + list(LYTHUYET_BOOKS.keys())
    parser = argparse.ArgumentParser()
    parser.add_argument("--book", choices=all_books + ["all"], default="all")
    args = parser.parse_args()

    if args.book == "all":
        for b in all_books:
            build_book(b)
    else:
        build_book(args.book)


if __name__ == "__main__":
    main()
