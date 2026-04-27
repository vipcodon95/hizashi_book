#!/usr/bin/env python3
"""
Build release pack cho sách 8003-8009 (sách 02-08 — bilingual).

Mapping curriculum_id:
  02_phone        → 8003
  03_meeting      → 8004
  04_horenso      → 8005
  05_presentation → 8006
  06_negotiation  → 8007
  07_visit_card   → 8008
  08_smalltalk    → 8009

- Đọc nguồn:  books/<slug>/nội_dung/phần_*/rule_NN_<slug>/rule.md
- Re-number:  flat 1..N theo thứ tự part rồi số rule
- Chuẩn hoá:  thêm frontmatter, strip dòng tham chiếu conversation.json
- Output:     release/books/<slug>/<NN>_<rule_slug>.md  (NN = 01..N)
              release/books/<slug>/book.json

KHÔNG đụng file gốc.
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
RELEASE_ROOT = ROOT / "release" / "books"

PART_ORDER = ["phần_I", "phần_II", "phần_III", "phần_IV", "phần_V"]

LINK_FOOTER_PATTERNS = [
    re.compile(r"^\s*>\s*\*?📁\s*File JSON.*$", re.MULTILINE),
    re.compile(r"^\s*>\s*\*?File JSON.*$", re.MULTILINE),
    # Strip mọi link tương đối tới conversation.json (nếu xuất hiện inline).
    re.compile(r"\[([^\]]+)\]\(conversation\.json\)"),
]

H1_PATTERN = re.compile(r"^#\s+(.+?)\s*$", re.MULTILINE)
RULE_DIR_PATTERN = re.compile(r"^rule_(\d+)([a-z]?)_(.+)$")


# Cấu hình từng sách.
BOOKS: list[dict] = [
    {
        "source_slug": "02_phone",
        "release_slug": "02_phone",
        "curriculum_id": 8003,
        "title_vi": "Điện thoại Công Việc",
        "title_jp": "電話応対",
    },
    {
        "source_slug": "03_meeting",
        "release_slug": "03_meeting",
        "curriculum_id": 8004,
        "title_vi": "Họp",
        "title_jp": "会議",
    },
    {
        "source_slug": "04_horenso",
        "release_slug": "04_horenso",
        "curriculum_id": 8005,
        "title_vi": "Báo · Liên · Tham vấn",
        "title_jp": "報・連・相",
    },
    {
        "source_slug": "05_presentation",
        "release_slug": "05_presentation",
        "curriculum_id": 8006,
        "title_vi": "Thuyết trình",
        "title_jp": "プレゼンテーション",
    },
    {
        "source_slug": "06_negotiation",
        "release_slug": "06_negotiation",
        "curriculum_id": 8007,
        "title_vi": "Đàm phán · Đề xuất",
        "title_jp": "商談・交渉",
    },
    {
        "source_slug": "07_visit_card",
        "release_slug": "07_visit_card",
        "curriculum_id": 8008,
        "title_vi": "Tiếp khách · Thăm · Danh thiếp",
        "title_jp": "来客・訪問・名刺交換",
    },
    {
        "source_slug": "08_smalltalk",
        "release_slug": "08_smalltalk",
        "curriculum_id": 8009,
        "title_vi": "Trò chuyện thân thiết",
        "title_jp": "雑談・関係構築",
    },
]


def parse_rule_dirname(name: str) -> tuple[int, str, str]:
    """rule_45b_xưng_hô → (45, 'b', 'xưng_hô')."""
    m = RULE_DIR_PATTERN.match(name)
    if not m:
        raise ValueError(f"Không parse được tên thư mục: {name}")
    return int(m.group(1)), m.group(2), m.group(3)


def collect_rules(book_source: Path) -> list[dict]:
    rules: list[dict] = []
    for part_name in PART_ORDER:
        part_dir = book_source / part_name
        if not part_dir.is_dir():
            raise FileNotFoundError(f"Thiếu phần: {part_dir}")
        rule_dirs = sorted(
            (p for p in part_dir.iterdir() if p.is_dir() and p.name.startswith("rule_")),
            key=lambda p: (
                parse_rule_dirname(p.name)[0],
                parse_rule_dirname(p.name)[1],
            ),
        )
        for rd in rule_dirs:
            rule_md = rd / "rule.md"
            if not rule_md.is_file():
                # Bỏ qua thư mục placeholder (chỉ có .placeholder, không có rule.md).
                continue
            rule_no, suffix, slug = parse_rule_dirname(rd.name)
            rules.append(
                {
                    "source_path": rule_md,
                    "part_original": part_name,
                    "rule_no_original": f"{rule_no:02d}{suffix}",
                    "slug": slug,
                }
            )
    return rules


def clean_body(text: str) -> str:
    for pat in LINK_FOOTER_PATTERNS:
        if pat.groups:
            # Pattern có capture → giữ text, drop link.
            text = pat.sub(r"\1", text)
        else:
            text = pat.sub("", text)
    text = normalize_text(text)
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text.rstrip() + "\n"


def extract_title(body: str) -> str:
    m = H1_PATTERN.search(body)
    if not m:
        raise ValueError("Không tìm thấy tiêu đề H1")
    return m.group(1).strip()


def build_frontmatter(node_id: int, order_index: int, rule: dict, title_full: str) -> str:
    fm_lines = [
        "---",
        f"id: {node_id}",
        f"curriculum_id: {node_id // 1000}",
        f"order_index: {order_index}",
        "node_type: rule",
        f"title: {json.dumps(title_full, ensure_ascii=False)}",
        f"rule_no_original: {json.dumps(rule['rule_no_original'])}",
        f"slug: {json.dumps(rule['slug'], ensure_ascii=False)}",
        f"part_original: {json.dumps(rule['part_original'], ensure_ascii=False)}",
        "language: bilingual",
        "---",
        "",
    ]
    return "\n".join(fm_lines)


def build_book_json(book_cfg: dict, rules_with_id: list[dict]) -> dict:
    return {
        "id": book_cfg["curriculum_id"],
        "title_vi": book_cfg["title_vi"],
        "title_jp": book_cfg["title_jp"],
        "language": "bilingual",
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


def build_one_book(book_cfg: dict) -> tuple[int, int, int]:
    book_source = ROOT / "books" / book_cfg["source_slug"] / "nội_dung"
    if not book_source.is_dir():
        raise FileNotFoundError(f"Thiếu sách nguồn: {book_source}")

    release_dir = RELEASE_ROOT / book_cfg["release_slug"]
    if release_dir.exists():
        shutil.rmtree(release_dir)
    release_dir.mkdir(parents=True)

    rules = collect_rules(book_source)
    if not rules:
        raise RuntimeError(f"Không tìm thấy rule trong {book_source}")

    rules_with_id: list[dict] = []
    cur_id = book_cfg["curriculum_id"]
    for idx, rule in enumerate(rules, start=1):
        node_id = cur_id * 1000 + idx
        raw = rule["source_path"].read_text(encoding="utf-8")
        body = clean_body(raw)
        title_full = extract_title(body)

        frontmatter = build_frontmatter(node_id, idx, rule, title_full)
        out_filename = f"{idx:02d}_{rule['slug']}.md"
        out_path = release_dir / out_filename
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

    book_json = build_book_json(book_cfg, rules_with_id)
    (release_dir / "book.json").write_text(
        json.dumps(book_json, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )

    return cur_id, rules_with_id[0]["node_id"], rules_with_id[-1]["node_id"]


def main() -> None:
    summary: list[tuple[str, int, int, int, int]] = []
    for book_cfg in BOOKS:
        cur_id, first, last = build_one_book(book_cfg)
        count = last - first + 1
        summary.append((book_cfg["release_slug"], cur_id, count, first, last))
        print(f"  ✓ {book_cfg['release_slug']:20s} curriculum={cur_id}  nodes={count:3d}  range=[{first}..{last}]")

    print("\nTổng kết:")
    total = sum(r[2] for r in summary)
    print(f"  {len(summary)} sách, {total} node")


if __name__ == "__main__":
    main()
