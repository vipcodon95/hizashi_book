"""
Build EPUB v3 cho tổ hợp nhiều sách Hizashi_book.

Gộp các sách trong cùng bộ (vd: Thái Y1-Y5) thành 1 EPUB duy nhất.
Mỗi sách → 1 "Phần" trong EPUB, mỗi chương → 1 chapter.

Output: _shared/output/<combined_name>.epub
"""

from __future__ import annotations

import argparse
import subprocess
import tempfile
import sys
from pathlib import Path

SHARED_ROOT = Path(__file__).resolve().parent.parent
HIZASHI_BOOK_ROOT = SHARED_ROOT.parent
BOOKS_DIR = HIZASHI_BOOK_ROOT / "books"
OUTPUT_DIR = SHARED_ROOT / "output"


BUNDLES = {
    "thai_y1_y5": {
        "title": "Thái — Hành trình thợ khuôn 5 năm tại Nhật",
        "subtitle": "Y1 → Y5 (Anjo, Aichi)",
        "books": [
            ("14_thai_year1", "Năm 1 — Nhập cảnh và làm quen"),
            ("15_thai_year2", "Năm 2 — Operator và đề thi 検定"),
            ("16_thai_year3", "Năm 3 — CAD và thiết kế đầu tiên"),
            ("17_thai_year4", "Năm 4 — Lead và trưởng thành"),
            ("18_thai_year5", "Năm 5 — EV project và quyết định"),
        ],
    },
    "hoa_y2_y3": {
        "title": "Hoa — Hành trình thực tập sinh ngành thực phẩm",
        "subtitle": "Y2 → Y3 (Aichi, Saitama)",
        "books": [
            ("12_hoa_year2", "Năm 2 — Ikusei Shuurou và vai sempai"),
            ("13_hoa_year3", "Năm 3 — Chuẩn bị SSW1 và quyết định ở lại"),
        ],
    },
    "dai_y1_brse": {
        "title": "Đại — Hành trình du học sinh đến BrSE",
        "subtitle": "Y1 → BrSE Y1 (Osaka, Kobe)",
        "books": [
            ("19_dai_year1", "Đại Y1 — Du học sinh tại Osaka"),
            ("20_dai_year2", "Đại Y2 — Cuộc sống sinh viên"),
            ("21_dai_daigaku_year1", "Đại học Y1 — Vào trường"),
            ("22_dai_daigaku_year2", "Đại học Y2"),
            ("23_dai_daigaku_year3", "Đại học Y3"),
            ("24_dai_daigaku_year4", "Đại học Y4 — Tốt nghiệp"),
            ("25_dai_brse_year1", "BrSE Y1 — Đi làm IT"),
        ],
    },
    "dai_y1_only": {
        "title": "Đại — Du học sinh tiếng Nhật năm 1 tại Osaka",
        "subtitle": "4/2024 → 3/2025 (Tennoji, Osaka)",
        "books": [
            ("19_dai_year1", "Năm 1 — Du học sinh tại Osaka"),
        ],
    },
    "dai_brse_y2": {
        "title": "Đại — BrSE năm 2 và Series A",
        "subtitle": "Year 2 (Osaka → Tokyo)",
        "books": [
            ("26_dai_brse_year2", "BrSE Y2 — Quit + startup full-time + Series A"),
        ],
    },
    "kaigo_full": {
        "title": "Kaigo — Hành trình thực tập sinh điều dưỡng",
        "subtitle": "Y1 → Senior Y3 (TTS + SSW)",
        "books": [
            ("27_kaigo", "Kaigo Y1 — Năm 1 TTS"),
            ("28_kaigo_year2", "Kaigo Y2 — Năm 2"),
            ("29_kaigo_year3", "Kaigo Y3 — Năm 3"),
            ("30_kaigo_senior1", "Senior Y1 — SSW1"),
            ("31_kaigo_senior2", "Senior Y2"),
            ("32_kaigo_senior3", "Senior Y3"),
        ],
    },
    "kensetsu_full": {
        "title": "Kensetsu — Hành trình thực tập sinh xây dựng",
        "subtitle": "Y1 → Senior Y3 (TTS + SSW)",
        "books": [
            ("33_thuc_kensetsu1", "Kensetsu Y1 — Năm 1"),
            ("34_thuc_kensetsu2", "Kensetsu Y2 — Năm 2"),
            ("35_thuc_kensetsu3", "Kensetsu Y3 — Năm 3"),
            ("36_thuc_kensetsu_senior1", "Senior Y1 — SSW1"),
            ("37_thuc_kensetsu_senior2", "Senior Y2"),
            ("38_thuc_kensetsu_senior3", "Senior Y3"),
        ],
    },
    "nong_y1_y3": {
        "title": "Linh — Hành trình thực tập sinh nông nghiệp",
        "subtitle": "Y1 → Y3 (Ibaraki, rau JAS hữu cơ)",
        "books": [
            ("40_nong_year1", "Năm 1 — Đến nông trại Ibaraki"),
            ("41_nong_year2", "Năm 2 — Sempai + JAS audit"),
            ("42_nong_year3", "Năm 3 — SSW1 + xuất khẩu"),
        ],
    },
    "oto_y1_y3": {
        "title": "Phong — Hành trình thực tập sinh ô tô",
        "subtitle": "Y1 → Y3 (Garage Toyota Anjo, Aichi)",
        "books": [
            ("43_oto_year1", "Năm 1 — Garage Toyota Anjo"),
            ("44_oto_year2", "Năm 2 — 車検 + chẩn đoán"),
            ("45_oto_year3", "Năm 3 — SSW1 + 整備士 2級"),
        ],
    },
    "hotel_y1_y3": {
        "title": "Trang — Hành trình thực tập sinh khách sạn",
        "subtitle": "Y1 → Y3 (Ryokan Kyoto)",
        "books": [
            ("46_hotel_year1", "Năm 1 — Ryokan Higashiyama Kyoto"),
            ("47_hotel_year2", "Năm 2 — 高級宿 + inbound"),
            ("48_hotel_year3", "Năm 3 — SSW1 + 副仲居頭"),
        ],
    },
}


def collect_chapter_files(book_folder: Path) -> list[Path]:
    """Tìm các file t*_*_HoiThoai.md theo thứ tự."""
    files = []
    for subdir in sorted(book_folder.iterdir()):
        if not subdir.is_dir():
            continue
        if not subdir.name.startswith("t"):
            continue
        md_files = sorted(subdir.glob("*_HoiThoai.md"))
        if md_files:
            files.append(md_files[0])
    return files


_RE_BR_SELFCLOSE = None

# Whitelist các HTML tag được pandoc/EPUB hiểu. Tag ngoài whitelist → escape thành &lt;...&gt;
# để tránh pandoc render thành XHTML rồi vỡ XML well-formed.
_HTML_ALLOWED_TAGS = {
    "br", "hr", "img", "p", "div", "span", "a", "em", "strong", "b", "i", "u",
    "ruby", "rt", "rb", "rp",
    "table", "thead", "tbody", "tr", "td", "th",
    "ul", "ol", "li", "dl", "dt", "dd",
    "blockquote", "code", "pre", "kbd", "sup", "sub",
    "h1", "h2", "h3", "h4", "h5", "h6",
    "section", "article", "aside", "nav", "header", "footer",
    "figure", "figcaption",
    "small", "mark", "del", "ins",
}


def _normalize_html_for_xhtml(text: str) -> str:
    """Chuyển HTML tag không self-close sang XHTML-compliant + escape XML tag lạ.

    EPUB3 dùng XHTML strict → <br>, <hr>, <img> phải self-close.
    Pandoc với +raw_html giữ nguyên markup gốc → phải normalize trước.

    Tag XML không phải HTML5 (vd <document>, <example> trong code snippet) sẽ bị
    escape thành &lt;document&gt; để tránh pandoc parse như HTML rồi vỡ XHTML.
    """
    import re
    global _RE_BR_SELFCLOSE
    if _RE_BR_SELFCLOSE is None:
        _RE_BR_SELFCLOSE = re.compile(r"<(br|hr)(\s[^>]*)?>(?!\s*</\1>)", re.IGNORECASE)

    # 1. Self-close <br>, <hr>
    text = _RE_BR_SELFCLOSE.sub(r"<\1\2/>", text)

    # 2. Escape các tag KHÔNG nằm trong whitelist HTML5
    def _escape_unknown_tag(match: re.Match) -> str:
        full = match.group(0)
        tag_name = match.group(1).lower()
        if tag_name in _HTML_ALLOWED_TAGS:
            return full
        # Escape: <document> → &lt;document&gt;
        return full.replace("<", "&lt;").replace(">", "&gt;")

    # Bắt <tagname...> hoặc </tagname>
    text = re.sub(
        r"</?([a-zA-Z][a-zA-Z0-9_-]*)(\s[^>]*)?/?>",
        _escape_unknown_tag,
        text,
    )

    return text


def build_combined_md(bundle_key: str) -> tuple[str, dict]:
    """Build markdown tổng hợp + metadata."""
    bundle = BUNDLES[bundle_key]
    lines: list[str] = []

    # YAML metadata block cho pandoc
    lines.append("---")
    lines.append(f'title: "{bundle["title"]}"')
    lines.append(f'subtitle: "{bundle["subtitle"]}"')
    lines.append('author: "Hizashi Teams"')
    lines.append('lang: vi')
    lines.append('rights: "© 2026 Hizashi"')
    lines.append("---")
    lines.append("")

    total_chapters = 0
    for book_folder_name, book_title in bundle["books"]:
        book_folder = BOOKS_DIR / book_folder_name
        if not book_folder.exists():
            print(f"  WARN: {book_folder_name} không tồn tại, bỏ qua")
            continue

        # Heading h1 = tên sách (mỗi sách = 1 part trong EPUB)
        lines.append(f"# {book_title}")
        lines.append("")

        chapter_files = collect_chapter_files(book_folder)
        for ch_idx, ch_file in enumerate(chapter_files, 1):
            content = ch_file.read_text(encoding="utf-8")
            content = _normalize_html_for_xhtml(content)
            # Hạ heading mỗi chương 1 cấp (h1 → h2) để h1 dành cho sách
            adjusted = []
            for line in content.split("\n"):
                if line.startswith("# "):
                    adjusted.append("## " + line[2:])
                elif line.startswith("## "):
                    adjusted.append("### " + line[3:])
                elif line.startswith("### "):
                    adjusted.append("#### " + line[4:])
                elif line.startswith("#### "):
                    adjusted.append("##### " + line[5:])
                else:
                    adjusted.append(line)
            lines.append("\n".join(adjusted))
            lines.append("")
            lines.append("---")
            lines.append("")
            total_chapters += 1

        print(f"  {book_folder_name}: {len(chapter_files)} chương")

    print(f"  TOTAL: {total_chapters} chương")
    return "\n".join(lines), bundle


def build_epub(bundle_key: str) -> Path:
    print(f"\n=== Build EPUB: {bundle_key} ===")
    md_content, bundle = build_combined_md(bundle_key)

    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    output_file = OUTPUT_DIR / f"hizashi_{bundle_key}.epub"

    with tempfile.NamedTemporaryFile(
        mode="w", suffix=".md", encoding="utf-8", delete=False
    ) as tmp:
        tmp.write(md_content)
        tmp_path = Path(tmp.name)

    try:
        css_path = SHARED_ROOT / "scripts" / "epub_styles.css"
        lua_filter = SHARED_ROOT / "scripts" / "strip_colgroup.lua"
        cmd = [
            "pandoc",
            str(tmp_path),
            "-o", str(output_file),
            "--from", "markdown+raw_html",     # cho phép <ruby>
            "--to", "epub3",
            "--toc", "--toc-depth=3",
            "--split-level=1",                  # mỗi h1 (sách) = 1 file XHTML
            "--css", str(css_path),
            "--lua-filter", str(lua_filter),    # xoá <colgroup> để CSS kiểm soát width
            "--metadata", f"title={bundle['title']}",
            "--metadata", f"author=Hizashi Teams",
            "--metadata", "lang=vi",
        ]
        print(f"  Running pandoc...")
        result = subprocess.run(cmd, capture_output=True, text=True)
        if result.returncode != 0:
            print(f"  ERROR: {result.stderr}")
            raise RuntimeError("pandoc failed")
        size_kb = output_file.stat().st_size / 1024
        print(f"  ✓ {output_file.relative_to(HIZASHI_BOOK_ROOT)} ({size_kb:.0f} KB)")
        return output_file
    finally:
        tmp_path.unlink(missing_ok=True)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--bundle",
        choices=list(BUNDLES.keys()) + ["all"],
        default="all",
    )
    args = parser.parse_args()

    if args.bundle == "all":
        for key in BUNDLES.keys():
            build_epub(key)
    else:
        build_epub(args.bundle)


if __name__ == "__main__":
    main()
