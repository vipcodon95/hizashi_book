"""
Build furigana cho mọi sách Hizashi_book theo book_seq.

Dùng `app.utils.furigana_builder_fugashi.build_furigana_json` của backend Hizashi.
Output JSON format: [{"s": surface, "r": reading, "l": jlpt_level?}, ...]

Cập nhật 4 bảng:
  - reading_passages.furigana ← content (JP)
  - questions.furigana        ← question (JP)
  - questions_answers.furigana ← sentence (JP)
  - examples.sentence_hira    ← sentence (JP, lưu vào cột sentence_hira sẵn có)

Idempotent: chỉ UPDATE row có furigana IS NULL → re-run safe.

Usage:
    python3 build_furigana.py --book-seq 39                 # full book
    python3 build_furigana.py --book-seq 39 --limit 5        # test 5 passages đầu
    python3 build_furigana.py --book-seq 39 --table passages # chỉ 1 bảng
    python3 build_furigana.py --book-seq 39 --force          # ghi đè furigana đã có
"""

from __future__ import annotations

import argparse
import os
import sys
import time
from pathlib import Path

# Setup paths
SHARED_ROOT = Path(__file__).resolve().parent.parent
HIZASHI_BOOK_ROOT = SHARED_ROOT.parent
BACKEND_ROOT = Path("/Users/binh/Documents/Project/Hizashi/HizashiWeb/backend")

sys.path.insert(0, str(SHARED_ROOT / "scripts"))
sys.path.insert(0, str(BACKEND_ROOT))

# venv của backend
VENV_PYTHON = BACKEND_ROOT / ".venv" / "bin" / "python3"

# Re-exec với venv của backend nếu không phải python venv hiện tại
if not os.environ.get("_FURIGANA_VENV_OK") and VENV_PYTHON.exists():
    os.environ["_FURIGANA_VENV_OK"] = "1"
    os.execv(str(VENV_PYTHON), [str(VENV_PYTHON), __file__] + sys.argv[1:])

from book_id_utils import make_id, seq_capacity  # noqa: E402
from app.utils.furigana_builder_fugashi import build_furigana_json  # noqa: E402
from sqlalchemy import create_engine, text  # noqa: E402

DB_URL = os.environ.get(
    "DATABASE_URL",
    "postgresql://admin:admin123@localhost:5432/hizashi_db",
)


def build_for_table(
    engine,
    book_seq: int,
    table: str,
    source_col: str,
    target_col: str,
    *,
    limit: int | None = None,
    force: bool = False,
    batch_commit: int = 100,
) -> tuple[int, int]:
    """Build furigana cho 1 bảng. Trả (n_processed, n_skipped)."""
    cap = seq_capacity(book_seq)
    id_lo = make_id(book_seq, 1)
    id_hi = make_id(book_seq, cap)

    where_force = "" if force else f" AND {target_col} IS NULL"
    limit_clause = f" LIMIT {limit}" if limit else ""

    if table == "questions_answers":
        # answers ID 10 digit (bigint), không nằm trong range chuẩn → query qua question_id
        q_lo = make_id(book_seq, 1)
        q_hi = make_id(book_seq, cap)
        sql_select = f"""
            SELECT id, {source_col} AS src
            FROM {table}
            WHERE question_id BETWEEN {q_lo} AND {q_hi}
              AND {source_col} IS NOT NULL AND {source_col} != ''
              {where_force}
            ORDER BY id
            {limit_clause}
        """
    else:
        sql_select = f"""
            SELECT id, {source_col} AS src
            FROM {table}
            WHERE id BETWEEN {id_lo} AND {id_hi}
              AND {source_col} IS NOT NULL AND {source_col} != ''
              {where_force}
            ORDER BY id
            {limit_clause}
        """

    sql_update = f"UPDATE {table} SET {target_col} = :fg WHERE id = :id"

    with engine.connect() as conn:
        rows = conn.execute(text(sql_select)).fetchall()

    total = len(rows)
    if total == 0:
        print(f"  [{table}.{target_col}] không có row nào cần build")
        return 0, 0

    print(f"  [{table}.{target_col}] {total} rows cần build...")
    t0 = time.time()
    n_done = 0
    n_skip = 0

    with engine.begin() as conn:
        for i, row in enumerate(rows, 1):
            src = row.src
            try:
                fg = build_furigana_json(src)
                if not fg or fg in ("[]", "null"):
                    n_skip += 1
                    continue
                conn.execute(text(sql_update), {"fg": fg, "id": row.id})
                n_done += 1
            except Exception as e:
                print(f"    ERROR id={row.id}: {e}")
                n_skip += 1

            if i % batch_commit == 0:
                elapsed = time.time() - t0
                rate = i / elapsed
                eta = (total - i) / rate
                print(f"    {i:>6}/{total} ({rate:.1f}/s, ETA {eta:.0f}s)")

    elapsed = time.time() - t0
    print(f"  [{table}.{target_col}] done: {n_done} updated, {n_skip} skipped, {elapsed:.1f}s")
    return n_done, n_skip


def main() -> None:
    parser = argparse.ArgumentParser(description="Build furigana cho sách Hizashi_book")
    parser.add_argument("--book-seq", type=int, required=True, help="book_seq (vd: 39 cho reading_collection)")
    parser.add_argument("--limit", type=int, default=None, help="Giới hạn số row/table (test)")
    parser.add_argument("--force", action="store_true", help="Ghi đè furigana đã có")
    parser.add_argument(
        "--table",
        choices=["passages", "questions", "answers", "examples", "all"],
        default="all",
        help="Bảng cần build (default: all)",
    )
    args = parser.parse_args()

    engine = create_engine(DB_URL)

    print(f"Build furigana cho book_seq={args.book_seq}")
    print(f"  limit={args.limit}, force={args.force}, table={args.table}")
    print()

    targets = {
        "passages": ("reading_passages", "content", "furigana"),
        "questions": ("questions", "question", "furigana"),
        "answers": ("questions_answers", "sentence", "furigana"),
        "examples": ("examples", "sentence", "sentence_hira"),
    }

    tables = list(targets.keys()) if args.table == "all" else [args.table]

    total_done = 0
    total_skip = 0
    grand_t0 = time.time()
    for key in tables:
        tbl, src, tgt = targets[key]
        done, skip = build_for_table(
            engine, args.book_seq, tbl, src, tgt,
            limit=args.limit, force=args.force,
        )
        total_done += done
        total_skip += skip
        print()

    grand_elapsed = time.time() - grand_t0
    print(f"TOTAL: {total_done} updated, {total_skip} skipped, {grand_elapsed:.1f}s")


if __name__ == "__main__":
    main()
