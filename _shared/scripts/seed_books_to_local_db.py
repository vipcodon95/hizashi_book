#!/usr/bin/env python3
"""
Seed các file SQL trong release/books_sql/ vào DB Postgres LOCAL.

Chạy all_books.sql (concat của 9 sách 01-08) qua psycopg2. File dùng
ON CONFLICT (id) DO UPDATE nên re-runnable — ghi đè node cũ bằng nội dung mới,
KHÔNG đụng các curricula khác trong DB.

Usage:
    python3 seed_books_to_local_db.py            # seed all_books.sql
    python3 seed_books_to_local_db.py 01_email_vi.sql 02_phone.sql   # seed chọn lọc

DB local (theo memory dự án):
    host=localhost port=5432 dbname=hizashi_db user=admin password=admin123
"""

from __future__ import annotations

import sys
from pathlib import Path

import psycopg2

ROOT = Path(__file__).resolve().parent.parent.parent
SQL_DIR = ROOT / "release" / "books_sql"

DB = dict(
    host="localhost",
    port=5432,
    dbname="hizashi_db",
    user="admin",
    password="admin123",
)

# curriculum_id của 9 sách được seed — schema 2026-05-16 (800000000 + book_seq).
# vi=1, ja=2, phone=3, meeting=4, horenso=5, presentation=6, negotiation=7,
# visit_card=8, smalltalk=9.
BOOK_IDS = [800000001, 800000002, 800000003, 800000004, 800000005,
            800000006, 800000007, 800000008, 800000009]


def pick_sql_files() -> list[Path]:
    args = sys.argv[1:]
    if not args:
        f = SQL_DIR / "all_books.sql"
        if not f.is_file():
            raise FileNotFoundError(f"Không thấy {f} — chạy build_sql_from_release.py trước.")
        return [f]
    files = []
    for a in args:
        f = SQL_DIR / a
        if not f.is_file():
            raise FileNotFoundError(f"Không thấy {f}")
        files.append(f)
    return files


def main() -> None:
    files = pick_sql_files()
    conn = psycopg2.connect(**DB)
    conn.autocommit = False
    cur = conn.cursor()
    try:
        for f in files:
            sql = f.read_text(encoding="utf-8")
            cur.execute(sql)
            print(f"  ✓ executed {f.name}")
        conn.commit()
        print("Đã commit.")

        # Verify.
        cur.execute(
            "SELECT id, title FROM curricula WHERE id = ANY(%s) ORDER BY id",
            (BOOK_IDS,),
        )
        rows = cur.fetchall()
        print(f"\n=== Verify: {len(rows)} curricula ===")
        for cid, title in rows:
            cur.execute(
                "SELECT count(*) FROM curriculum_node "
                "WHERE curriculum_id = %s AND is_deleted = FALSE",
                (cid,),
            )
            n = cur.fetchone()[0]
            print(f"  {cid}  nodes={n:>3}  {title}")
    except Exception:
        conn.rollback()
        print("ROLLBACK — có lỗi, không thay đổi DB.")
        raise
    finally:
        cur.close()
        conn.close()


if __name__ == "__main__":
    main()
