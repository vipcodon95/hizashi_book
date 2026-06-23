#!/usr/bin/env python3
"""
Build dữ liệu seed DB cho các sách LITE dialogue (book_seq 12-48, trừ 39).

Sách LITE = mỗi sách 12 file `tNN_*/...HoiThoai.md` (1 file/tháng), KHÔNG có
JSON bài tập, KHÔNG có LyThuyet. Mỗi file md → 1 curriculum_node (giữ nguyên
inline HTML `<ruby>`/`<br>` để app render furigana qua path HTML).

Đường dữ liệu (TÁCH RIÊNG khỏi epub):
  Nguồn (CHỈ ĐỌC):  books/<NN>_<slug>/tNN_*/...HoiThoai.md
  Output DB:        release/for_db/books_md/<NN>_<slug>/<NN>.md   (md đã stamp)
                    release/for_db/books_sql/<NN>_<slug>.sql      (SQL seed)

KHÔNG đụng file md gốc trong books/. Chỉ đọc + ghi sang release/for_db/.

ID schema: theo BOOK_REGISTRY.md (2026-05-16), qua book_id_utils.
  curricula  = make_book_id(book_seq) = 800000000 + book_seq
  node       = make_id(book_seq, seq)   seq = 1..12 theo thứ tự tNN

Usage:
  python3 build_lite_books.py                # build toàn bộ 36 sách LITE
  python3 build_lite_books.py 14 27 40       # build chọn lọc theo book_seq
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from book_id_utils import make_book_id, make_id  # noqa: E402

ROOT = Path(__file__).resolve().parents[2]
BOOKS_DIR = ROOT / "books"
OUT_MD_DIR = ROOT / "release" / "for_db" / "books_md"
OUT_SQL_DIR = ROOT / "release" / "for_db" / "books_sql"
REGISTRY = ROOT / "_shared" / "BOOK_REGISTRY.md"

# book_seq của 36 sách LITE (12-38, 40-48). 39 xử lý riêng (reading_collection).
LITE_BOOK_SEQS = list(range(12, 39)) + list(range(40, 49))

# Phân loại từng sách: category = chủ đề ngành nghề, level theo số quyển/series
# (series ≤3 quyển → N4, nhiều hơn → N3). Quy tắc do team chốt 2026-06-22.
# Mỗi entry: range book_seq → (category, level).
BOOK_META: dict[int, tuple[str, str]] = {}


def _assign(seqs: range | list[int], category: str, level: str) -> None:
    for s in seqs:
        BOOK_META[s] = (category, level)


_assign([12, 13], "Thực phẩm", "N4")          # Hoa — TTS thực phẩm (series 3 quyển)
_assign(range(14, 19), "Cơ khí", "N3")        # Thái — kỹ sư khuôn đúc (5 quyển)
_assign([19, 20], "Du học", "N4")             # Đại — du học trường tiếng (2 quyển)
_assign(range(21, 25), "Du học", "N3")        # Đại học — du học đại học (4 quyển)
_assign([25, 26], "Công nghệ thông tin", "N4")  # BrSE — IT (2 quyển)
_assign(range(27, 33), "Điều dưỡng", "N3")    # Kaigo — điều dưỡng (6 quyển)
_assign(range(33, 39), "Xây dựng", "N3")      # Kensetsu — xây dựng (6 quyển)
_assign([40, 41, 42], "Nông nghiệp", "N4")    # Nông nghiệp (3 quyển)
_assign([43, 44, 45], "Ô tô", "N4")           # Ô tô (3 quyển)
_assign([46, 47, 48], "Khách sạn", "N4")      # Khách sạn (3 quyển)

# Số node free đầu sách (đồng bộ với build_sql_from_release.py).
FREE_NODE_COUNT = 12  # LITE chỉ 12 chương → mở hết, hoặc đổi tuỳ chính sách.

H1_PATTERN = re.compile(r"^#\s+(.+?)\s*$", re.MULTILINE)


def load_registry_titles() -> dict[int, str]:
    """Đọc tên sách từ bảng mục 3 của BOOK_REGISTRY.md.

    Dòng dạng: | 14 | `14_thai_year1` | Thái Y1 | DRAFT | ... |
    Trả {book_seq: title}.
    """
    titles: dict[int, str] = {}
    if not REGISTRY.is_file():
        return titles
    row_re = re.compile(r"^\|\s*(\d+)\s*\|\s*`[^`]+`\s*\|\s*([^|]+?)\s*\|")
    for line in REGISTRY.read_text(encoding="utf-8").splitlines():
        m = row_re.match(line)
        if m:
            titles[int(m.group(1))] = m.group(2).strip()
    return titles


def find_book_dir(book_seq: int) -> Path | None:
    """Tìm folder books/<NN>_* theo book_seq (NN zero-pad 2)."""
    prefix = f"{book_seq:02d}_"
    for d in sorted(BOOKS_DIR.iterdir()):
        if d.is_dir() and d.name.startswith(prefix):
            return d
    return None


def collect_chapters(book_dir: Path) -> list[Path]:
    """Lấy danh sách file *HoiThoai.md theo thứ tự tNN tăng dần."""
    files = list(book_dir.glob("t*/*HoiThoai.md"))
    # Sort theo tên folder tNN (t01..t12) — zero-pad nên sort chuỗi đúng thứ tự.
    files.sort(key=lambda p: p.parent.name)
    return files


def node_title_from_h1(body: str, fallback: str) -> str:
    """node_title = phần sau '·' của H1, hoặc cả H1, hoặc fallback."""
    m = H1_PATTERN.search(body)
    if not m:
        return fallback
    h1 = m.group(1).strip()
    if "·" in h1:
        return h1.split("·", 1)[1].strip()
    return h1


def sql_escape(text: str) -> str:
    return "'" + text.replace("'", "''") + "'"


def sql_text_or_null(text: str | None) -> str:
    if not text:
        return "NULL"
    return sql_escape(text)


def build_curriculum_insert(book_seq: int, title: str) -> str:
    cur_id = make_book_id(book_seq)
    intro = f"Bộ sách Hizashi — {title}".strip()
    category, level = BOOK_META.get(book_seq, ("Hội thoại", "N4"))
    return (
        "INSERT INTO curricula ("
        "id, level, type, category, title, introduction, "
        "tenant_id, is_system, is_public, is_active, is_deleted, "
        "free_preview_count, status, created_at"
        ") VALUES ("
        f"{cur_id}, {sql_escape(level)}, 'markdown_book', {sql_escape(category)}, "
        f"{sql_escape(title)}, {sql_escape(intro)}, "
        "'system', TRUE, TRUE, TRUE, FALSE, "
        f"{FREE_NODE_COUNT}, 'published', NOW()"
        ") ON CONFLICT (id) DO UPDATE SET "
        "type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, "
        "introduction = EXCLUDED.introduction, category = EXCLUDED.category, "
        "tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, "
        "is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "free_preview_count = EXCLUDED.free_preview_count, "
        "status = EXCLUDED.status, updated_at = NOW();"
    )


def build_node_insert(
    book_seq: int, order_index: int, node_title: str, body: str
) -> str:
    node_id = make_id(book_seq, order_index)
    cur_id = make_book_id(book_seq)
    access = "free" if order_index <= FREE_NODE_COUNT else "premium"
    return (
        "INSERT INTO curriculum_node ("
        "id, curriculum_id, parent_id, node_type, "
        "node_title, node_content, "
        "tenant_id, order_index, access_level, is_active, is_deleted, created_at"
        ") VALUES ("
        f"{node_id}, {cur_id}, NULL, 'markdown_book', "
        f"{sql_escape(node_title)}, {sql_text_or_null(body)}, "
        f"'system', {order_index}, {sql_escape(access)}, "
        "TRUE, FALSE, NOW()"
        ") ON CONFLICT (id) DO UPDATE SET "
        "curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, "
        "node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, "
        "tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, "
        "access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, updated_at = NOW();"
    )


def build_one_book(book_seq: int, title: str) -> tuple[int, int]:
    """Build 1 sách LITE → ghi md stamp + SQL. Trả (cur_id, node_count)."""
    book_dir = find_book_dir(book_seq)
    if book_dir is None:
        raise FileNotFoundError(f"Không thấy folder cho book_seq={book_seq}")
    chapters = collect_chapters(book_dir)
    if not chapters:
        raise RuntimeError(f"Không thấy *HoiThoai.md trong {book_dir}")

    slug = book_dir.name
    md_out = OUT_MD_DIR / slug
    md_out.mkdir(parents=True, exist_ok=True)

    cur_id = make_book_id(book_seq)
    lines: list[str] = [
        f"-- Hizashi LITE book SQL — {title}",
        f"-- curriculum_id = {cur_id}  (book_seq={book_seq})",
        f"-- nguồn: books/{slug}/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.",
        "",
        "BEGIN;",
        "",
        "-- 1) Curricula",
        build_curriculum_insert(book_seq, title),
        "",
        "-- 2) Curriculum nodes",
    ]

    node_count = 0
    for idx, ch in enumerate(chapters, start=1):
        body = ch.read_text(encoding="utf-8").strip()
        node_title = node_title_from_h1(body, fallback=f"{title} — T{idx}")
        # Stamp md ra release/for_db/books_md (giữ nguyên nội dung, thêm tên chuẩn).
        (md_out / f"{idx:02d}_{ch.parent.name}.md").write_text(
            body + "\n", encoding="utf-8"
        )
        lines.append(build_node_insert(book_seq, idx, node_title, body))
        node_count += 1

    lines += ["", "COMMIT;", ""]
    OUT_SQL_DIR.mkdir(parents=True, exist_ok=True)
    (OUT_SQL_DIR / f"{slug}.sql").write_text("\n".join(lines), encoding="utf-8")
    return cur_id, node_count


def main() -> None:
    titles = load_registry_titles()
    args = [int(a) for a in sys.argv[1:]] if len(sys.argv) > 1 else LITE_BOOK_SEQS

    OUT_MD_DIR.mkdir(parents=True, exist_ok=True)
    OUT_SQL_DIR.mkdir(parents=True, exist_ok=True)

    all_sql: list[str] = []
    total_nodes = 0
    for bs in args:
        if bs not in LITE_BOOK_SEQS:
            print(f"  ! book_seq={bs} không thuộc nhóm LITE — bỏ qua")
            continue
        title = titles.get(bs, f"Sách {bs}")
        cur_id, n = build_one_book(bs, title)
        slug = find_book_dir(bs).name
        print(f"  ✓ {slug:28s} curriculum={cur_id}  nodes={n:2d}  {title}")
        all_sql.append((OUT_SQL_DIR / f"{slug}.sql").read_text(encoding="utf-8"))
        total_nodes += n

    # File gom để seed 1 phát.
    (OUT_SQL_DIR / "all_lite_books.sql").write_text(
        "\n".join(all_sql), encoding="utf-8"
    )
    print(
        f"\nĐã build {len(args)} sách LITE, {total_nodes} node.\n"
        f"  MD : {OUT_MD_DIR}\n  SQL: {OUT_SQL_DIR}/ (+ all_lite_books.sql)"
    )


if __name__ == "__main__":
    main()
