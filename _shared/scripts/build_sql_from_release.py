#!/usr/bin/env python3
"""
Sinh các file .sql từ release/books/ để import vào DB Hizashi.

Output:
  release/books_sql/<book_slug>.sql       — 1 file per sách
  release/books_sql/all_books.sql         — file tổng (concat)

Mỗi file SQL chứa:
  1. INSERT curricula (1 row)
  2. INSERT curriculum_node (N rows, parent_id = NULL — flat)
Dùng ON CONFLICT (id) DO UPDATE để re-runnable.

Quy tắc nội dung:
  - Frontmatter YAML trong file md KHÔNG đưa vào node_content.
  - H1 đầu file (# Rule NN — ...) lấy làm node_title.
  - Body sau H1 (đã strip frontmatter) → node_content (cho sách vi/bilingual)
                                       hoặc node_content_jp (cho sách ja).
  - Các cột song ngữ khác (definition, extra, notes, conclusion) để NULL.

Không sửa thủ công file .sql output — chạy lại script này để regenerate.
"""

from __future__ import annotations

import json
import re
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
RELEASE_BOOKS = ROOT / "release" / "books"
SQL_OUT_DIR = ROOT / "release" / "books_sql"

FRONTMATTER_PATTERN = re.compile(r"^---\n(.*?)\n---\n", re.DOTALL)
H1_PATTERN = re.compile(r"^#\s+(.+?)\s*$", re.MULTILINE)

# Số node mở free đầu sách. Từ node thứ N+1 trở đi: 'premium'.
FREE_NODE_COUNT = 20


@dataclass
class BookEntry:
    book_dir: Path
    book_json: dict


def find_books() -> list[BookEntry]:
    """Quét release/books/, lấy thư mục có book.json."""
    entries: list[BookEntry] = []
    for d in sorted(RELEASE_BOOKS.iterdir()):
        if not d.is_dir():
            continue
        bj = d / "book.json"
        if not bj.is_file():
            continue
        entries.append(BookEntry(d, json.loads(bj.read_text(encoding="utf-8"))))
    return entries


def parse_frontmatter(text: str) -> tuple[dict, str]:
    """Trả về (frontmatter_dict, body_after_frontmatter). Frontmatter YAML đơn giản."""
    m = FRONTMATTER_PATTERN.match(text)
    if not m:
        return {}, text
    fm_block = m.group(1)
    body = text[m.end():]
    fm: dict = {}
    for line in fm_block.splitlines():
        line = line.rstrip()
        if not line or ":" not in line:
            continue
        k, _, v = line.partition(":")
        v = v.strip()
        # Strip JSON-style quotes nếu có.
        if v.startswith('"') and v.endswith('"'):
            try:
                v = json.loads(v)
            except json.JSONDecodeError:
                v = v.strip('"')
        fm[k.strip()] = v
    return fm, body


def extract_h1(body: str) -> tuple[str, str]:
    """Tách H1 đầu file ra khỏi body. Trả về (h1_text, body_without_h1)."""
    m = H1_PATTERN.search(body)
    if not m:
        return "", body
    h1 = m.group(1).strip()
    # Cắt H1 + dòng kế đó nếu trống.
    end = m.end()
    if end < len(body) and body[end] == "\n":
        end += 1
    return h1, body[end:]


def sql_escape(text: str) -> str:
    """Escape ' → '' cho PostgreSQL string literal."""
    if text is None:
        return "NULL"
    return "'" + text.replace("'", "''") + "'"


def sql_text_or_null(text: str | None) -> str:
    if text is None or text == "":
        return "NULL"
    return sql_escape(text)


def build_curriculum_insert(book_json: dict) -> str:
    """Sinh INSERT cho bảng curricula."""
    cur_id = book_json["id"]
    title_vi = book_json.get("title_vi") or ""
    title_jp = book_json.get("title_jp") or ""
    language = book_json.get("language") or "bilingual"

    # Title hiển thị: ưu tiên VI, fallback JP. Phụ thuộc ngôn ngữ sách.
    if language == "ja":
        display_title = title_jp or title_vi
    else:
        display_title = title_vi or title_jp

    # Introduction: ghi gọn, không quá tải.
    intro_vi = f"Bộ sách Hizashi — {title_vi}".strip()
    intro_jp = f"Hizashi シリーズ — {title_jp}".strip() if title_jp else ""

    return (
        "INSERT INTO curricula ("
        "id, level, type, category, title, introduction, introduction_jp, "
        "tenant_id, is_system, is_public, is_active, is_deleted, "
        "free_preview_count, status, created_at"
        ") VALUES ("
        f"{cur_id}, "
        "NULL, "
        "'markdown_book', "
        "'BJT', "
        f"{sql_escape(display_title)}, "
        f"{sql_escape(intro_vi)}, "
        f"{sql_text_or_null(intro_jp)}, "
        "'system', "
        "TRUE, TRUE, TRUE, FALSE, "
        f"{FREE_NODE_COUNT}, "
        "'published', "
        "NOW()"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "type = EXCLUDED.type, "
        "title = EXCLUDED.title, "
        "introduction = EXCLUDED.introduction, "
        "introduction_jp = EXCLUDED.introduction_jp, "
        "category = EXCLUDED.category, "
        "tenant_id = EXCLUDED.tenant_id, "
        "is_system = EXCLUDED.is_system, "
        "is_public = EXCLUDED.is_public, "
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "free_preview_count = EXCLUDED.free_preview_count, "
        "status = EXCLUDED.status, "
        "updated_at = NOW();"
    )


def build_node_insert(book_entry: BookEntry, node_meta: dict, order_index: int) -> str | None:
    """Sinh INSERT cho 1 curriculum_node từ file md.

    - node_type cố định 'markdown_book'.
    - Toàn bộ body (sau khi strip frontmatter) → node_content.
      H1 vẫn nằm trong body — KHÔNG tách ra để giữ nội dung md đầy đủ.
    - node_content_jp = NULL (không split JP).
    - order_index tự sinh từ thứ tự duyệt sách (1..N).
    - access_level = 'free' cho 20 node đầu, 'premium' từ node thứ 21.
    """
    md_path = book_entry.book_dir / node_meta["filename"]
    if not md_path.is_file():
        return None
    raw = md_path.read_text(encoding="utf-8")
    fm, body_with_h1 = parse_frontmatter(raw)
    body = body_with_h1.strip()

    node_id = int(fm.get("id") or node_meta["id"])
    curriculum_id = int(fm.get("curriculum_id") or book_entry.book_json["id"])
    h1, _ = extract_h1(body_with_h1)
    title = h1 or fm.get("title") or node_meta.get("title") or ""

    access_level = "free" if order_index <= FREE_NODE_COUNT else "premium"

    return (
        "INSERT INTO curriculum_node ("
        "id, curriculum_id, parent_id, node_type, "
        "node_title, node_content, "
        "tenant_id, order_index, access_level, is_active, is_deleted, created_at"
        ") VALUES ("
        f"{node_id}, "
        f"{curriculum_id}, "
        "NULL, "
        "'markdown_book', "
        f"{sql_escape(title)}, "
        f"{sql_text_or_null(body)}, "
        "'system', "
        f"{order_index}, "
        f"{sql_escape(access_level)}, "
        "TRUE, FALSE, "
        "NOW()"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "curriculum_id = EXCLUDED.curriculum_id, "
        "node_type = EXCLUDED.node_type, "
        "node_title = EXCLUDED.node_title, "
        "node_content = EXCLUDED.node_content, "
        "tenant_id = EXCLUDED.tenant_id, "
        "order_index = EXCLUDED.order_index, "
        "access_level = EXCLUDED.access_level, "
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "updated_at = NOW();"
    )


def build_book_sql(book_entry: BookEntry) -> tuple[str, int]:
    """Sinh nội dung file SQL cho 1 sách. Trả về (sql_text, node_count)."""
    bj = book_entry.book_json
    lines: list[str] = []
    lines.append(f"-- Hizashi book SQL — {bj.get('title_vi')} / {bj.get('title_jp')}")
    lines.append(f"-- curriculum_id = {bj['id']}")
    lines.append(f"-- node count = {bj.get('node_count')}")
    lines.append(f"-- generated từ release/books/{book_entry.book_dir.name}/")
    lines.append("-- KHÔNG sửa thủ công file này. Chạy lại scripts/build_sql_from_release.py.")
    lines.append("")
    lines.append("BEGIN;")
    lines.append("")
    lines.append("-- 1) Curricula")
    lines.append(build_curriculum_insert(bj))
    lines.append("")
    lines.append("-- 2) Curriculum nodes")

    node_count = 0
    nodes = sorted(bj.get("nodes") or [], key=lambda n: n["order_index"])
    for idx, n in enumerate(nodes, start=1):
        sql = build_node_insert(book_entry, n, order_index=idx)
        if sql is None:
            continue
        lines.append(sql)
        node_count += 1

    lines.append("")
    lines.append("COMMIT;")
    lines.append("")
    return "\n".join(lines), node_count


def main() -> None:
    if not RELEASE_BOOKS.is_dir():
        raise FileNotFoundError(f"Chưa có release/books/: {RELEASE_BOOKS}")

    SQL_OUT_DIR.mkdir(parents=True, exist_ok=True)
    # Xoá file SQL cũ để tránh leftover.
    for old in SQL_OUT_DIR.glob("*.sql"):
        old.unlink()

    books = find_books()
    if not books:
        raise RuntimeError(f"Không tìm thấy book.json trong {RELEASE_BOOKS}")

    all_parts: list[str] = []
    summary: list[tuple[str, int, int]] = []

    for book_entry in books:
        sql_text, count = build_book_sql(book_entry)
        out_path = SQL_OUT_DIR / f"{book_entry.book_dir.name}.sql"
        out_path.write_text(sql_text, encoding="utf-8")
        all_parts.append(sql_text)
        summary.append((book_entry.book_dir.name, book_entry.book_json["id"], count))
        print(f"  ✓ {book_entry.book_dir.name:20s} curriculum={book_entry.book_json['id']}  nodes={count:3d}")

    (SQL_OUT_DIR / "all_books.sql").write_text(
        "\n".join(all_parts),
        encoding="utf-8",
    )

    print(f"\nĐã sinh {len(summary)} file SQL + all_books.sql vào {SQL_OUT_DIR}")
    total = sum(c for _, _, c in summary)
    print(f"Tổng node: {total}")


if __name__ == "__main__":
    main()
