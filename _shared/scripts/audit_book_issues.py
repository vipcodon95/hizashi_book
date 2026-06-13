"""
Audit các vấn đề trong source markdown của sách Hizashi_book:

1. Ngữ cảnh nhét trong cột "Nhân vật" của bảng hội thoại
   - Pattern: cell đầu tiên chứa ngoặc đơn/ngoặc Nhật với mô tả hành động
   - VD: "Staff (cầm bảng "...")" thay vì chỉ "Staff"

2. Tiêu đề quá lớn / cấp heading bất hợp lý
   - Pattern: heading h1/h2 dùng cho nội dung con (vd "派生", "使えるフレーズ" trong rule)
   - VD: trong file rule_*.md, "派生" có h2 ## → khi gộp xuất EPUB sẽ thành h3 nhưng size vẫn lớn

Output: report markdown với count + sample lines + file paths.
"""

from __future__ import annotations

import re
from pathlib import Path
from collections import defaultdict

BOOKS_ROOT = Path("/Users/binh/Documents/Claude/Projects/Hizashi_book/books")


def is_dialogue_table_row(line: str) -> bool:
    """True nếu line là row của bảng hội thoại (3+ cell)."""
    if not line.startswith("|"):
        return False
    if line.startswith("|---") or line.startswith("|:-"):
        return False
    cells = [c.strip() for c in line.split("|")[1:-1]]
    return len(cells) >= 2


def has_context_in_name(name_cell: str) -> bool:
    """True nếu cell tên nhân vật chứa ngữ cảnh (mô tả hành động).

    Heuristic:
    - Có ngoặc đơn `(...)` hoặc ngoặc Nhật `（...）` với content >= 3 ký tự
    - Loại trừ pattern an toàn: "(VN)", "(JP)", "(internal)" (định danh ngôn ngữ)
    - Loại trừ tiêu đề bảng: "Nhân vật"
    """
    cell = name_cell.strip()
    if not cell or cell.lower() in {"nhân vật", "lời thoại", "speaker", "dialogue"}:
        return False
    # Kiểm tra có ngoặc với content
    m = re.search(r"[(（]([^)）]+)[)）]", cell)
    if not m:
        return False
    inner = m.group(1).strip()
    if len(inner) < 3:
        return False
    # Loại trừ tag ngôn ngữ
    safe = {"vn", "jp", "en", "internal", "vi", "ja", "nội tâm", "VN", "JP"}
    if inner.lower() in safe:
        return False
    return True


def audit_dialogue_context(md_files: list[Path]) -> dict:
    """Tìm các row có ngữ cảnh trong cột nhân vật."""
    findings = defaultdict(list)  # file → list[(line_no, name_cell, full_line)]
    for fp in md_files:
        try:
            lines = fp.read_text(encoding="utf-8").split("\n")
        except Exception:
            continue
        in_table = False
        header_seen = False
        for i, line in enumerate(lines, 1):
            if not is_dialogue_table_row(line):
                in_table = False
                header_seen = False
                continue
            # Skip header row + separator
            if "Nhân vật" in line or "Speaker" in line or "Người" in line:
                in_table = True
                header_seen = True
                continue
            if not in_table:
                continue
            cells = [c.strip() for c in line.split("|")[1:-1]]
            if len(cells) < 2:
                continue
            name = cells[0]
            if has_context_in_name(name):
                findings[fp].append((i, name, line[:120]))
    return findings


def audit_heading_levels(md_files: list[Path]) -> dict:
    """Phân tích cấp heading trong từng file."""
    stats = defaultdict(lambda: {"h1": 0, "h2": 0, "h3": 0, "h4": 0, "h5": 0, "samples": []})
    for fp in md_files:
        try:
            lines = fp.read_text(encoding="utf-8").split("\n")
        except Exception:
            continue
        for i, line in enumerate(lines, 1):
            m = re.match(r"^(#{1,6})\s+(.+)$", line)
            if not m:
                continue
            level = len(m.group(1))
            text = m.group(2).strip()[:60]
            if level <= 5:
                key = f"h{level}"
                stats[fp][key] += 1
                if level <= 2 and len(stats[fp]["samples"]) < 5:
                    stats[fp]["samples"].append((i, level, text))
    return stats


def main() -> None:
    # Thu tất cả file md (kể cả markdown_book sách 01-09)
    md_files = []
    for book_folder in sorted(BOOKS_ROOT.iterdir()):
        if not book_folder.is_dir():
            continue
        # Chỉ folder dạng NN_xxx
        if not re.match(r"^\d{2}_", book_folder.name):
            continue
        # Skip _pipeline
        for fp in book_folder.rglob("*.md"):
            if "_pipeline" in fp.parts:
                continue
            if "_normalized" in fp.parts:
                continue
            if "output" in fp.parts:
                continue
            md_files.append(fp)

    print(f"# Audit report — {len(md_files)} markdown files")
    print()

    # === Audit 1: Ngữ cảnh trong cột nhân vật ===
    print("## 1. Ngữ cảnh trong cột 'Nhân vật'")
    print()
    context_findings = audit_dialogue_context(md_files)
    if not context_findings:
        print("✓ Không phát hiện trường hợp nào")
    else:
        total = sum(len(v) for v in context_findings.values())
        n_files = len(context_findings)
        print(f"⚠️ **{total} dòng** trong **{n_files} file** có ngữ cảnh nhét vào cột nhân vật.")
        print()
        # Group by book folder
        by_book = defaultdict(list)
        for fp, items in context_findings.items():
            book = fp.relative_to(BOOKS_ROOT).parts[0]
            by_book[book].extend([(fp, ln, name) for ln, name, _ in items])

        for book in sorted(by_book.keys()):
            print(f"### {book} — {len(by_book[book])} dòng")
            for fp, ln, name in by_book[book][:5]:
                rel = fp.relative_to(BOOKS_ROOT)
                print(f"  - `{rel}:{ln}` → name=`{name[:60]}`")
            if len(by_book[book]) > 5:
                print(f"  ... +{len(by_book[book])-5} dòng khác")
            print()

    # === Audit 2: Heading levels ===
    print("## 2. Phân tích heading levels")
    print()
    heading_stats = audit_heading_levels(md_files)

    # Group by book
    by_book_h = defaultdict(lambda: {"h1": 0, "h2": 0, "h3": 0, "h4": 0, "h5": 0, "n_files": 0, "samples": []})
    for fp, st in heading_stats.items():
        book = fp.relative_to(BOOKS_ROOT).parts[0]
        for k in ("h1", "h2", "h3", "h4", "h5"):
            by_book_h[book][k] += st[k]
        by_book_h[book]["n_files"] += 1
        # Lấy sample h1 từ file đầu tiên
        if not by_book_h[book]["samples"] and st["samples"]:
            by_book_h[book]["samples"] = [(fp.name, *s) for s in st["samples"][:3]]

    print("| Sách | files | h1 | h2 | h3 | h4 | h5 | Vấn đề |")
    print("|---|---|---|---|---|---|---|---|")
    for book in sorted(by_book_h.keys()):
        s = by_book_h[book]
        # Cảnh báo: nếu mỗi file trung bình có > 2 h1 → có thể h1 dùng cho subheading
        avg_h1 = s["h1"] / s["n_files"] if s["n_files"] else 0
        warning = ""
        if avg_h1 > 1.5:
            warning = f"⚠️ avg {avg_h1:.1f} h1/file (h1 nên chỉ là tiêu đề chương)"
        elif s["h2"] / s["n_files"] > 5 if s["n_files"] else False:
            warning = f"⚠️ nhiều h2 ({s['h2']/s['n_files']:.1f}/file)"
        print(f"| {book} | {s['n_files']} | {s['h1']} | {s['h2']} | {s['h3']} | {s['h4']} | {s['h5']} | {warning} |")

    print()
    print("### Sample h1/h2 từ vài sách (để check level có hợp lý không):")
    print()
    for book in sorted(by_book_h.keys())[:5]:
        if by_book_h[book]["samples"]:
            print(f"**{book}**:")
            for fname, ln, lvl, text in by_book_h[book]["samples"]:
                print(f"  - `{fname}:{ln}` h{lvl}: {text}")
            print()


if __name__ == "__main__":
    main()
