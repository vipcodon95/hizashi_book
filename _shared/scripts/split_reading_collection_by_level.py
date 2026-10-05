#!/usr/bin/env python3
"""
Tách Reading Collection (sách 39) từ 1 cuốn 700 bài → 5 cuốn theo cấp JLPT.

BỐI CẢNH
    Bản gốc dồn cả 6 nhóm (N5→Native) vào 1 curricula 800000039.
    Chủ nhà muốn tách riêng từng cấp, gộp Native vào N1 cho N1 "dày" hơn.

ĐIỂM THUẬN LỢI
    reading_passages đã xếp LIÊN TỤC theo cấp (N5 = 001-060, N4 = 061-140, …)
    → tách chỉ là cắt theo lát, không phải xáo trộn.

DẢI ID — giữ tiền tố 839 để nhìn là biết thuộc sách 39
    839000001-839099999   passage / node / question_set  (99.999 chỗ, đang dùng 700)
    839000001-839011742   questions, examples            (dùng chung tiền tố)
    839900001-839900005   ← 5 CURRICULA MỚI (vùng này cách chỗ bận nhất 888.259 số)

    ⚠️ PHÁ QUY ƯỚC make_book_id(): curricula lẽ ra phải là 800000000+seq.
       Đổi lại được thứ quan trọng hơn — nhìn id biết ngay gốc dữ liệu.
       Sách 10 cũng đã đi ngoài quy ước (study_courses id 8010).

THAY ĐỔI DUY NHẤT
    curriculum_node.curriculum_id : 800000039 → 8399000{1..5}
    Toàn bộ id của node/passage/question/example/answer GIỮ NGUYÊN.
    reading_passages, questions, examples… KHÔNG ĐỤNG — chúng gắn theo
    reading_passage_id, không gắn theo curricula.

Usage:
    python3 split_reading_collection_by_level.py
    → release/books_sql/39_reading_split.sql
"""

from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
OUT = ROOT / "release" / "books_sql" / "39_reading_split.sql"

OLD_CURRICULUM_ID = 800000039
CURRICULA_BASE = 839900000

# (số thứ tự, cấp, tiêu đề VN, tiêu đề JP, id passage đầu, id passage cuối, số bài)
LEVELS = [
    (1, "N5", "Luyện đọc N5 — Nhập môn",        "読解 N5 — 入門",     839000001, 839000060,  60),
    (2, "N4", "Luyện đọc N4 — Sơ cấp",          "読解 N4 — 初級",     839000061, 839000140,  80),
    (3, "N3", "Luyện đọc N3 — Sơ trung cấp",    "読解 N3 — 初中級",   839000141, 839000340, 200),
    (4, "N2", "Luyện đọc N2 — Trung cấp",       "読解 N2 — 中級",     839000341, 839000520, 180),
    # Native gộp vào N1 — nằm ngay sau N1 nên vẫn là một lát liên tục.
    (5, "N1", "Luyện đọc N1 — Cao cấp & Native", "読解 N1 — 上級・ネイティブ", 839000521, 839000700, 180),
]


def esc(v: str) -> str:
    return "'" + v.replace("'", "''") + "'"


def main() -> None:
    L: list[str] = [
        "-- Tách Reading Collection (sách 39) → 5 cuốn theo cấp JLPT",
        "-- Sinh bởi split_reading_collection_by_level.py — KHÔNG sửa tay.",
        "--",
        "-- curricula 839900001..839900005 (giữ tiền tố 839 = định danh sách 39)",
        "-- Native gộp vào N1. Node/passage/question GIỮ NGUYÊN id, chỉ đổi curriculum_id.",
        "",
        "BEGIN;",
        "",
        "-- 1) 5 curricula mới",
    ]

    for seq, lv, title_vi, title_jp, lo, hi, n in LEVELS:
        cid = CURRICULA_BASE + seq
        intro = (f"Bộ {n} bài luyện đọc trình độ {lv}, mỗi bài có bản dịch, "
                 f"hướng dẫn đọc từng câu và câu hỏi trắc nghiệm.")
        ctx = (f'{{"book_seq": 39, "jlpt_level": "{lv}", "total_passages": {n}, '
               f'"passage_id_range": [{lo}, {hi}], "title_jp": "{title_jp}", '
               f'"split_from": {OLD_CURRICULUM_ID}}}')
        L.append(
            "INSERT INTO curricula ("
            "id, title, introduction, type, level, category, "
            "is_system, is_public, is_active, is_deleted, status, context, created_at"
            ") VALUES ("
            f"{cid}, {esc(title_vi)}, {esc(intro)}, 'book', '{lv}', 'reading_collection', "
            f"TRUE, TRUE, TRUE, FALSE, 'published', {esc(ctx)}::jsonb, now()"
            ") ON CONFLICT (id) DO UPDATE SET "
            "title=EXCLUDED.title, introduction=EXCLUDED.introduction, "
            "level=EXCLUDED.level, context=EXCLUDED.context, updated_at=now();"
        )

    L += ["", "-- 2) Trỏ node về cuốn tương ứng (id node KHÔNG đổi)"]
    for seq, lv, _t, _tj, lo, hi, n in LEVELS:
        cid = CURRICULA_BASE + seq
        L.append(
            f"UPDATE curriculum_node SET curriculum_id = {cid}, updated_at = now() "
            f"WHERE id BETWEEN {lo} AND {hi};  -- {lv}: {n} bài"
        )

    L += [
        "",
        "-- 3) Đánh lại order_index trong từng cuốn (1..n) để hiển thị đúng thứ tự",
    ]
    for seq, lv, _t, _tj, lo, hi, _n in LEVELS:
        cid = CURRICULA_BASE + seq
        L.append(
            f"UPDATE curriculum_node n SET order_index = s.rn FROM ("
            f"SELECT id, ROW_NUMBER() OVER (ORDER BY id) rn FROM curriculum_node "
            f"WHERE curriculum_id = {cid}) s WHERE n.id = s.id;  -- {lv}"
        )

    L += [
        "",
        "-- 4) Ẩn cuốn gộp cũ (KHÔNG xoá — giữ để tra cứu / hoàn nguyên)",
        f"UPDATE curricula SET is_active = FALSE, is_public = FALSE, "
        f"status = 'archived', updated_at = now() WHERE id = {OLD_CURRICULUM_ID};",
        "",
        "COMMIT;",
        "",
    ]

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text("\n".join(L), encoding="utf-8")

    total = sum(x[6] for x in LEVELS)
    for seq, lv, title_vi, _tj, lo, hi, n in LEVELS:
        print(f"  {CURRICULA_BASE+seq}  {lv:3s} {n:3d} bài  "
              f"[{lo}-{hi}]  {title_vi}")
    print(f"\n  Tổng {total} bài / 5 cuốn → {OUT}")
    assert total == 700, f"Tổng phải là 700, đang là {total}"


if __name__ == "__main__":
    main()
