#!/usr/bin/env python3
"""
Sinh SQL seed sách 09 (Real Dialogues) vào curricula / curriculum_node.

KHÁC các sách 02-08:
- Nguồn là 8 file `chương.md` (mỗi file 37-74KB), KHÔNG phải 51 file rule.md.
- Mỗi chương chứa 10-14 khối `## Tình huống N — …` → cắt thành node riêng,
  tổng 94 node. Lý do: đơn vị học tự nhiên của sách hội thoại là MỘT CẢNH,
  và node 58KB thì quá dài so với mặt bằng 15KB của các sách kia.
- **MỞ FREE TOÀN BỘ**: `is_free_override = TRUE` trên curricula.
  Backend (`api/domains/content/curriculum.py:388`) đọc cờ này và bỏ qua
  toàn bộ khối tính is_locked → không cần đụng free_preview_count.
  access_level của mọi node = 'free'.

ID (theo _shared/scripts/book_id_utils.py, book_seq=10):
    curricula        = 800000010
    curriculum_node  = 801000001 .. 801000094
  book_seq 10 là số tròn chục → ident đảo thành "01" để không đụng dải
  sách 1 (`81xxxxxxx`). Đã verify trên production: cả 2 dải đang TRỐNG.

Cập nhật: ON CONFLICT (id) DO UPDATE — CHỈ ghi node_title/node_content,
KHÔNG đụng cột vận hành (access_level, order_index, is_active, is_deleted…).

Usage:
    python3 build_sql_book09.py
    → release/books_sql/09_real_dialogues.sql
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from book_id_utils import make_book_id, make_id  # noqa: E402

ROOT = Path(__file__).resolve().parent.parent.parent
SRC = ROOT / "books" / "09_real_dialogues" / "nội_dung"
OUT_DIR = ROOT / "release" / "books_sql"

BOOK_SEQ = 10
CURRICULUM_ID = make_book_id(BOOK_SEQ)   # 800000010
TITLE_VI = "Hội thoại thực tế"
TITLE_JP = "実践会話"

# Cắt node tại heading cấp 2 bắt đầu bằng "Tình huống".
SCENE_RE = re.compile(r"^##\s+(Tình huống\s+.+)$", re.M)


def sql_escape(v: str) -> str:
    return "'" + v.replace("'", "''") + "'"


def sql_text_or_null(v: str | None) -> str:
    return sql_escape(v) if v else "NULL"


def strip_ruby(t: str) -> str:
    """Bỏ ruby để đo/kiểm, KHÔNG dùng cho nội dung ghi DB."""
    return re.sub(r"<rt>[^<]*</rt>", "", t).replace("<ruby>", "").replace("</ruby>", "")


def split_scenes(md: str, chapter_title: str) -> list[tuple[str, str]]:
    """Cắt 1 chương thành [(tiêu đề node, thân node)].

    Phần đầu chương (bối cảnh + 'Bí quyết tổng') gộp vào node đầu tiên để
    không mất — nó là dẫn nhập cho cả chương.
    Phần đuôi sau tình huống cuối ('Tổng kết của Dũng') gộp vào node cuối.
    """
    marks = list(SCENE_RE.finditer(md))
    if not marks:
        return [(chapter_title, md.strip())]

    head = md[: marks[0].start()].strip()
    out: list[tuple[str, str]] = []

    for i, m in enumerate(marks):
        end = marks[i + 1].start() if i + 1 < len(marks) else len(md)
        body = md[m.start(): end].strip()
        title = m.group(1).strip()
        if i == 0 and head:
            body = head + "\n\n" + body
        out.append((title, body))

    return out


def build_curriculum_sql() -> str:
    intro_vi = f"Bộ sách Hizashi — {TITLE_VI}"
    intro_jp = f"Hizashi シリーズ — {TITLE_JP}"
    return (
        "INSERT INTO curricula ("
        "id, level, type, category, title, introduction, introduction_jp, "
        "tenant_id, is_system, is_public, is_active, is_deleted, "
        "free_preview_count, is_free_override, status, created_at"
        ") VALUES ("
        f"{CURRICULUM_ID}, "
        "NULL, "
        "'markdown_book', "
        "'BJT', "
        f"{sql_escape(TITLE_VI)}, "
        f"{sql_escape(intro_vi)}, "
        f"{sql_escape(intro_jp)}, "
        "'system', "
        "TRUE, TRUE, TRUE, FALSE, "
        # 9999: mở hết kể cả khi is_free_override bị tắt tay sau này.
        # is_free_override=TRUE mới là công tắc chính (backend bỏ qua gating).
        "9999, TRUE, "
        "'published', "
        "NOW()"
        ") "
        # CHỈ cập nhật NỘI DUNG khi chạy lại. KHÔNG đụng cột vận hành.
        "ON CONFLICT (id) DO UPDATE SET "
        "title = EXCLUDED.title, "
        "introduction = EXCLUDED.introduction, "
        "introduction_jp = EXCLUDED.introduction_jp, "
        "updated_at = NOW();"
    )


def build_node_sql(node_id: int, order_index: int, title: str, body: str) -> str:
    return (
        "INSERT INTO curriculum_node ("
        "id, curriculum_id, parent_id, node_type, "
        "node_title, node_content, "
        "tenant_id, order_index, access_level, is_active, is_deleted, created_at"
        ") VALUES ("
        f"{node_id}, "
        f"{CURRICULUM_ID}, "
        "NULL, "
        "'markdown_book', "
        f"{sql_escape(title)}, "
        f"{sql_text_or_null(body)}, "
        "'system', "
        f"{order_index}, "
        "'free', "          # toàn bộ sách mở free
        "TRUE, FALSE, "
        "NOW()"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "node_title = EXCLUDED.node_title, "
        "node_content = EXCLUDED.node_content, "
        "updated_at = NOW();"
    )


def main() -> None:
    chapters = sorted(SRC.glob("chương_*/chương.md"))
    if not chapters:
        raise SystemExit(f"Không thấy chương nào trong {SRC}")

    lines: list[str] = [
        "-- Hizashi sách 09 — Hội thoại thực tế / 実践会話",
        f"-- curriculum_id = {CURRICULUM_ID} (book_seq={BOOK_SEQ})",
        "-- MỞ FREE TOÀN BỘ: is_free_override = TRUE",
        "-- Sinh tự động bởi build_sql_book09.py — KHÔNG sửa tay.",
        "",
        "BEGIN;",
        "",
        build_curriculum_sql(),
        "",
    ]

    order = 0
    report: list[tuple[str, int, int]] = []
    for ch in chapters:
        md = ch.read_text(encoding="utf-8")
        chap_slug = ch.parent.name
        chap_title = md.split("\n", 1)[0].lstrip("# ").strip()
        scenes = split_scenes(md, chap_title)
        for title, body in scenes:
            order += 1
            node_id = make_id(BOOK_SEQ, order)
            # Tiêu đề node: "Ch01 · Tình huống 3 — 09:30 · Gian hàng AWS"
            ch_no = re.match(r"chương_(\d+)", chap_slug)
            prefix = f"Ch{ch_no.group(1)} · " if ch_no else ""
            lines.append(build_node_sql(node_id, order, prefix + title, body))
        report.append((chap_slug, len(scenes), len(md)))

    lines += ["", "COMMIT;", ""]
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    out = OUT_DIR / "09_real_dialogues.sql"
    out.write_text("\n".join(lines), encoding="utf-8")

    for slug, n, size in report:
        print(f"  ✓ {slug[:26]:28s} {n:2d} node  ({size/1024:.0f}KB)")
    print(f"\ncurriculum_id = {CURRICULUM_ID}")
    print(f"node id       = {make_id(BOOK_SEQ,1)} .. {make_id(BOOK_SEQ,order)}")
    print(f"Tổng {order} node → {out}")


if __name__ == "__main__":
    main()
