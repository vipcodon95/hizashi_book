#!/usr/bin/env python3
"""
Build master glossary cross-book bằng cách parse vocab từ tất cả rule.md
của 7 sách Hizashi. Dedupe theo kanji, ghi rõ source rule.

Output: _shared/master_glossary.md
"""
import re
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).parent.parent.parent  # Hizashi_book/
BOOKS = [
    ("01", "01_email", "Email"),
    ("02", "02_phone", "Điện thoại"),
    ("03", "03_meeting", "Họp"),
    ("04", "04_horenso", "Báo·Liên·Tham vấn"),
    ("05", "05_presentation", "Thuyết trình"),
    ("06", "06_negotiation", "Đàm phán"),
    ("07", "07_visit_card", "Tiếp khách·Danh thiếp"),
    ("08", "08_smalltalk", "Trò chuyện thân thiết"),
]


def parse_vocab_from_md(md_path):
    """Extract vocab table after '## 📚 Vocab' heading."""
    if not md_path.exists():
        return []
    text = md_path.read_text(encoding='utf-8')
    m = re.search(r"##\s*📚\s*Vocab\s*\n(.*?)(?=\n##|\Z)", text, re.DOTALL)
    if not m:
        return []
    vocabs = []
    for line in m.group(1).split("\n"):
        if "|" not in line:
            continue
        parts = [p.strip() for p in line.split("|") if p.strip()]
        if len(parts) >= 3 and not parts[0].startswith("-") and parts[0] not in ("漢字", "Tiếng Nhật", "漢字 / Tiếng Nhật"):
            kanji, yomi, meaning = parts[0], parts[1], parts[2]
            if "---" in kanji or kanji == "":
                continue
            vocabs.append((kanji, yomi, meaning))
    return vocabs


def find_rules(book_folder):
    """Find all rule.md in book. Sách 01 có structure khác (vi/ phần_I/ rule_NN.md)."""
    rules = []
    book_path = ROOT / "books" / book_folder
    if not book_path.exists():
        return rules
    # Sách 02-07: nội_dung/phần_I/rule_NN_*/rule.md
    for md_path in sorted(book_path.glob("nội_dung/phần_*/rule_*/rule.md")):
        folder = md_path.parent.name
        m = re.search(r"rule_(\d+)", folder)
        if m:
            rules.append((int(m.group(1)), md_path))
    # Sách 01: nội_dung/vi/phần_I/rule_NN_*.md
    if not rules:
        for md_path in sorted(book_path.glob("nội_dung/vi/phần_*/rule_*.md")):
            m = re.search(r"rule_(\d+)", md_path.name)
            if m:
                rules.append((int(m.group(1)), md_path))
    return sorted(rules)


def main():
    # kanji → list of (book_id, rule_num, yomi, meaning)
    master = defaultdict(list)
    book_stats = []

    for book_id, folder, label in BOOKS:
        rules = find_rules(folder)
        book_vocab_count = 0
        for rule_num, md_path in rules:
            vocabs = parse_vocab_from_md(md_path)
            for kanji, yomi, meaning in vocabs:
                master[kanji].append((book_id, rule_num, yomi, meaning))
                book_vocab_count += 1
        book_stats.append((book_id, label, len(rules), book_vocab_count))
        print(f"Book {book_id} {label}: {len(rules)} rules, {book_vocab_count} vocab entries")

    print(f"\nTotal unique vocab: {len(master)}")

    # Build master glossary markdown
    out = ROOT / "_shared" / "master_glossary.md"
    lines = [
        "# Hizashi — Master Glossary (Cross-book)",
        "",
        "*Tổng hợp từ vựng từ 7 sách Hizashi. Dedupe theo kanji/term. Mỗi entry list các sách + rule xuất hiện.*",
        "",
        "---",
        "",
        "## 📊 Stats per book",
        "",
        "| Book | Tên | Rules | Vocab entries |",
        "|------|-----|-------|---------------|",
    ]
    total_rules = 0
    total_entries = 0
    for bid, label, nr, nv in book_stats:
        lines.append(f"| {bid} | {label} | {nr} | {nv} |")
        total_rules += nr
        total_entries += nv
    lines.append(f"| **TOTAL** | **7 sách** | **{total_rules}** | **{total_entries}** |")
    lines.append("")
    lines.append(f"**Unique terms (dedupe theo kanji):** {len(master)}")
    lines.append("")
    lines.append("---")
    lines.append("")
    lines.append("## 📚 Master Glossary (sorted alphabetical)")
    lines.append("")
    lines.append("| 漢字/Tiếng Nhật | よみ | Nghĩa | Xuất hiện ở |")
    lines.append("|---|---|---|---|")

    # Sort by kanji (try Japanese collation, fallback default)
    for kanji in sorted(master.keys()):
        occurrences = master[kanji]
        # Use first occurrence's yomi/meaning as primary
        yomi, meaning = occurrences[0][2], occurrences[0][3]
        sources = ", ".join(f"S{bid}/r{rn:02d}" for bid, rn, _, _ in occurrences[:5])
        if len(occurrences) > 5:
            sources += f" +{len(occurrences) - 5}"
        lines.append(f"| {kanji} | {yomi} | {meaning} | {sources} |")

    lines.append("")
    lines.append("---")
    lines.append("")
    lines.append("## 🌐 High-frequency terms (xuất hiện ≥ 3 sách)")
    lines.append("")
    lines.append("Từ xuất hiện ở 3+ sách = core business JP vocabulary cho học viên Hizashi.")
    lines.append("")

    high_freq = []
    for kanji, occs in master.items():
        unique_books = set(bid for bid, _, _, _ in occs)
        if len(unique_books) >= 3:
            high_freq.append((kanji, len(unique_books), occs[0][2], occs[0][3]))
    high_freq.sort(key=lambda x: -x[1])

    lines.append(f"**Tổng:** {len(high_freq)} terms.")
    lines.append("")
    lines.append("| 漢字 | よみ | Nghĩa | # sách |")
    lines.append("|---|---|---|---|")
    for kanji, nbooks, yomi, meaning in high_freq[:50]:
        lines.append(f"| {kanji} | {yomi} | {meaning} | {nbooks} |")
    if len(high_freq) > 50:
        lines.append(f"| ... | | | {len(high_freq) - 50} more |")

    lines.append("")
    lines.append(f"*Generated: 2026-04. Source: scripts/build_master_glossary.py*")
    lines.append("")

    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"\n✓ Master glossary: {out}")
    print(f"  Total rules: {total_rules}")
    print(f"  Unique vocab: {len(master)}")
    print(f"  High-freq (≥3 books): {len(high_freq)}")


if __name__ == "__main__":
    main()
