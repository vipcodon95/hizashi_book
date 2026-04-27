#!/usr/bin/env python3
"""
Build release pack cho sách 8001 (Email Công Việc — bản tiếng Việt).

- Đọc nguồn:  books/01_email/nội_dung/vi/phần_*/rule_*.md
- Re-number:  rule_45b → 46, rule_46+ shift +1 → tổng 71 node liên tục
- Chuẩn hoá:  thêm frontmatter YAML, strip dòng tham chiếu file (nếu có)
- Output:     release/books/01_email_vi/<NN>_<slug>.md  (NN = 01..71)
              release/books/01_email_vi/book.json

KHÔNG đụng file gốc. Chỉ đọc + ghi sang release/.
"""

from __future__ import annotations

import json
import re
import shutil
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from normalize_release import normalize_text  # noqa: E402

ROOT = Path(__file__).resolve().parent.parent.parent
SOURCE_DIR = ROOT / "books" / "01_email" / "nội_dung" / "vi"
RELEASE_DIR = ROOT / "release" / "books" / "01_email_vi"

CURRICULUM_ID = 8001
BOOK_TITLE_VI = "Email Công Việc"
BOOK_TITLE_JP = "メール業務"

PART_ORDER = ["phần_I", "phần_II", "phần_III", "phần_IV", "phần_V"]

# Pattern dòng tham chiếu file kèm (sách 02 có, phòng khi sách 01 có biến thể).
LINK_FOOTER_PATTERNS = [
    re.compile(r"^\s*>\s*\*?📁\s*File JSON.*$", re.MULTILINE),
    re.compile(r"^\s*>\s*\*?File JSON.*$", re.MULTILINE),
]

H1_PATTERN = re.compile(r"^#\s+(.+?)\s*$", re.MULTILINE)
RULE_NO_PATTERN = re.compile(r"^rule_(\d+)([a-z]?)_(.+)\.md$")


def parse_rule_filename(name: str) -> tuple[int, str, str]:
    """rule_45b_xưng_hô_nhóm_hỗn_hợp.md → (45, 'b', 'xưng_hô_nhóm_hỗn_hợp')."""
    m = RULE_NO_PATTERN.match(name)
    if not m:
        raise ValueError(f"Không parse được tên file: {name}")
    return int(m.group(1)), m.group(2), m.group(3)


def collect_rules() -> list[dict]:
    """Quét toàn bộ rule_*.md theo thứ tự part rồi số rule (45 → 45b → 46)."""
    rules: list[dict] = []
    for part_name in PART_ORDER:
        part_dir = SOURCE_DIR / part_name
        if not part_dir.is_dir():
            raise FileNotFoundError(f"Thiếu phần: {part_dir}")
        files = sorted(
            part_dir.glob("rule_*.md"),
            key=lambda p: (
                parse_rule_filename(p.name)[0],
                parse_rule_filename(p.name)[1],  # '' < 'a' < 'b' theo lex
            ),
        )
        for fp in files:
            rule_no, suffix, slug = parse_rule_filename(fp.name)
            rules.append(
                {
                    "source_path": fp,
                    "part_original": part_name,
                    "rule_no_original": f"{rule_no:02d}{suffix}",
                    "slug": slug,
                }
            )
    return rules


def clean_body(text: str) -> str:
    """Bỏ link tham chiếu file kèm, chuẩn hoá heading, dọn whitespace."""
    for pat in LINK_FOOTER_PATTERNS:
        text = pat.sub("", text)
    text = normalize_text(text)
    # Nén >2 dòng trống liên tiếp về 2.
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text.rstrip() + "\n"


def extract_title(body: str) -> str:
    m = H1_PATTERN.search(body)
    if not m:
        raise ValueError("Không tìm thấy tiêu đề H1")
    return m.group(1).strip()


def build_frontmatter(node_id: int, order_index: int, rule: dict, title_full: str) -> str:
    """Frontmatter YAML — gọn, không dùng thư viện ngoài để cowork chạy được."""
    related: list[int] = []  # placeholder; sẽ tính sau khi cần.
    fm_lines = [
        "---",
        f"id: {node_id}",
        f"curriculum_id: {CURRICULUM_ID}",
        f"order_index: {order_index}",
        f"node_type: rule",
        f"title: {json.dumps(title_full, ensure_ascii=False)}",
        f"rule_no_original: {json.dumps(rule['rule_no_original'])}",
        f"slug: {json.dumps(rule['slug'], ensure_ascii=False)}",
        f"part_original: {json.dumps(rule['part_original'], ensure_ascii=False)}",
        "language: vi",
        "---",
        "",
    ]
    return "\n".join(fm_lines)


def build_book_json(rules_with_id: list[dict]) -> dict:
    return {
        "id": CURRICULUM_ID,
        "title_vi": BOOK_TITLE_VI,
        "title_jp": BOOK_TITLE_JP,
        "language": "vi",
        "node_count": len(rules_with_id),
        "node_id_range": [
            rules_with_id[0]["node_id"],
            rules_with_id[-1]["node_id"],
        ],
        "nodes": [
            {
                "id": r["node_id"],
                "order_index": r["order_index"],
                "title": r["title"],
                "filename": r["filename"],
                "rule_no_original": r["rule_no_original"],
                "part_original": r["part_original"],
            }
            for r in rules_with_id
        ],
    }


def main() -> None:
    if not SOURCE_DIR.is_dir():
        raise FileNotFoundError(f"Thiếu thư mục nguồn: {SOURCE_DIR}")

    # Reset thư mục release của sách 8001.
    if RELEASE_DIR.exists():
        shutil.rmtree(RELEASE_DIR)
    RELEASE_DIR.mkdir(parents=True)

    rules = collect_rules()
    if not rules:
        raise RuntimeError("Không tìm thấy rule nào")

    rules_with_id: list[dict] = []
    for idx, rule in enumerate(rules, start=1):
        node_id = CURRICULUM_ID * 1000 + idx
        raw = rule["source_path"].read_text(encoding="utf-8")
        body = clean_body(raw)
        title_full = extract_title(body)

        frontmatter = build_frontmatter(node_id, idx, rule, title_full)
        out_filename = f"{idx:02d}_{rule['slug']}.md"
        out_path = RELEASE_DIR / out_filename
        out_path.write_text(frontmatter + body, encoding="utf-8")

        rules_with_id.append(
            {
                "node_id": node_id,
                "order_index": idx,
                "title": title_full,
                "filename": out_filename,
                "rule_no_original": rule["rule_no_original"],
                "part_original": rule["part_original"],
            }
        )

    book_json = build_book_json(rules_with_id)
    (RELEASE_DIR / "book.json").write_text(
        json.dumps(book_json, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )

    print(f"Đã sinh {len(rules_with_id)} rule vào {RELEASE_DIR}")
    print(f"  ID range: {rules_with_id[0]['node_id']} .. {rules_with_id[-1]['node_id']}")
    print(f"  book.json: {RELEASE_DIR / 'book.json'}")


if __name__ == "__main__":
    main()
