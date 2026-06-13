"""
Build SQL seed cho 39_reading_collection (book_seq=39).

Đọc 70 file JSON đã stamp DB IDs → generate SQL INSERT ... ON CONFLICT DO UPDATE.

Output: _shared/output/reading_collection_seed.sql

Mapping JSON → DB:

curricula (1 row):
  id = 800000039
  type = 'book'
  title = 'Reading Collection — Luyện đọc N5→Native'
  context = {"book_seq": 39, "total_passages": 700, "title_jp": "..."}

curriculum_node (700 rows, 1 / passage):
  id = make_id(39, R_xxxx_num)   ← cùng id với reading_passage để dễ debug
  curriculum_id = 800000039
  node_type = 'book'
  node_title = title (VN)
  note_title_jp = title (JP gốc)
  order_index = R_xxxx_num

curriculum_node_content (700 rows, 1 / node):
  id = BIGSERIAL (auto, BIGINT)
  curriculum_node_id = node id
  content_type = 'reading_passage'
  content_id = str(reading_passage_id)
  order_index = 0

reading_passages (700 rows):
  id = reading_passage_id (đã stamp)
  is_system = true, is_public = true
  title = title (JP), translation = translation (VN)
  content = text (JP)
  jlpt_level = jlpt
  category = level_label
  difficulty = min(5, level/2 + 1)
  context = {title_vi, topic, subtopic, tags, grammar_used, vocabulary, level, level_label, sentence_count}

question_sets (700 rows):
  id = question_set_id (đã stamp)
  set_type = 'reading'
  reading_passage_id = passage.id
  level = jlpt, name = 'Đọc hiểu — <title_vi>'
  is_system = true
  card_count = len(comprehension)
  context = {book_seq: 39}

questions (2680 rows):
  id = question_id (đã stamp)
  content_type = 'reading', question_type = 'chon_dap_an', selection_type = 'single'
  level = jlpt, is_system = true, skill_category = 'reading'
  question = q.question (JP)
  general_explanation = q.explanation
  context = {question_vi, reading_passage_id, comprehension_idx}

questions_answers (10720 rows):
  id = questions_answer_id (đã stamp)
  question_id = question_id
  sentence = ans.text (JP)
  sentence_translation = ans.text_vi
  is_correct = ans.is_correct
  "order" = ans_idx (1..4)
  context = {text_vi}

examples (11742 rows, 1 / process item):
  id = example_id (đã stamp)
  content_type = 'reading_passage'
  content_id = str(reading_passage_id)
  is_sentence = true
  sentence = process.sentence (JP)
  translation = process.translation (VN)
  explanation = process.guide
  order_index = process_idx (0-based trong bài)
  context = {chunks, process_idx, reading_passage_id}

question_set_questions (junction, 2680 rows):
  question_set_id = set.id
  question_id = question.id
  order_index = idx trong set
  reading_passage_id = passage.id

SQL pattern: INSERT ... ON CONFLICT (id) DO UPDATE → idempotent, re-run được.
"""

from __future__ import annotations

import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
BOOK_ROOT = ROOT / "books" / "39_reading_collection"
OUTPUT_DIR = ROOT / "_shared" / "output"
OUTPUT_FILE = OUTPUT_DIR / "reading_collection_seed.sql"

sys.path.insert(0, str(ROOT / "_shared" / "scripts"))
from book_id_utils import make_book_id  # noqa: E402

BOOK_SEQ = 39
BOOK_ID = make_book_id(BOOK_SEQ)  # 800000039

DRAFT_DIRS = [
    "n5_basic_drafts", "n5_advanced_drafts",
    "n4_basic_drafts", "n4_advanced_drafts",
    "n3_basic_drafts", "n3_advanced_drafts",
    "n2_basic_drafts", "n2_advanced_drafts",
    "n1_basic_drafts", "n1_advanced_drafts",
    "native_basic_drafts", "native_advanced_drafts",
]


def sql_str(s: str | None) -> str:
    """Escape Postgres string literal."""
    if s is None:
        return "NULL"
    return "'" + s.replace("'", "''") + "'"


def sql_json(obj) -> str:
    """JSONB literal."""
    if obj is None:
        return "NULL"
    return "'" + json.dumps(obj, ensure_ascii=False).replace("'", "''") + "'::jsonb"


def sql_bool(b: bool) -> str:
    return "TRUE" if b else "FALSE"


def collect_records() -> list[dict]:
    records = []
    for d in DRAFT_DIRS:
        folder = BOOK_ROOT / d
        if not folder.exists():
            continue
        for fp in sorted(folder.glob("batch_*.json")):
            with fp.open(encoding="utf-8") as f:
                records.extend(json.load(f))
    records.sort(key=lambda r: int(r["id"].split("_")[1]))
    return records


def difficulty_of(level: int) -> int:
    return max(1, min(5, (level + 1) // 2))


def build_sql() -> str:
    records = collect_records()
    print(f"Loaded {len(records)} readings")

    lines: list[str] = []
    lines.append("-- =============================================================")
    lines.append("-- Reading Collection (book_seq=39) seed SQL")
    lines.append(f"-- book_id = {BOOK_ID}")
    lines.append("-- Generated bởi _shared/scripts/build_sql_reading_collection.py")
    lines.append("-- Idempotent: INSERT ... ON CONFLICT (id) DO UPDATE")
    lines.append("-- =============================================================")
    lines.append("BEGIN;")
    lines.append("")

    # ---------------------------------------------------------------
    # 1. curricula (1 row)
    # ---------------------------------------------------------------
    lines.append("-- 1. curricula (1 row)")
    curr_context = {
        "book_seq": BOOK_SEQ,
        "total_passages": len(records),
        "title_jp": "読解コレクション — N5→ネイティブ練習700編",
    }
    # Note: level='N5' để RC hiện trong Reading Home (endpoint home-featured filter level IS NOT NULL).
    # RC bao trùm N5→Native, đặt N5 là level đại diện (entry point cho người mới).
    lines.append(
        f"INSERT INTO curricula (id, title, introduction, type, level, category, "
        f"is_system, is_public, is_active, is_deleted, status, context, created_at) VALUES "
        f"({BOOK_ID}, "
        f"{sql_str('Reading Collection — Luyện đọc N5→Native')}, "
        f"{sql_str('Bộ 700 bài đọc luyện tập từ N5 đến Native, mỗi bài có dịch song ngữ, hướng dẫn đọc từng câu và câu hỏi trắc nghiệm.')}, "
        f"'book', 'N5', 'reading_collection', "
        f"TRUE, TRUE, TRUE, FALSE, 'published', "
        f"{sql_json(curr_context)}, now()) "
        f"ON CONFLICT (id) DO UPDATE SET "
        f"title=EXCLUDED.title, introduction=EXCLUDED.introduction, type=EXCLUDED.type, "
        f"level=EXCLUDED.level, category=EXCLUDED.category, "
        f"is_system=EXCLUDED.is_system, is_public=EXCLUDED.is_public, "
        f"is_active=EXCLUDED.is_active, is_deleted=EXCLUDED.is_deleted, status=EXCLUDED.status, "
        f"context=EXCLUDED.context, updated_at=now();"
    )
    lines.append("")

    # ---------------------------------------------------------------
    # 2. reading_passages (700 rows)
    # ---------------------------------------------------------------
    lines.append(f"-- 2. reading_passages ({len(records)} rows)")
    for rec in records:
        pid = rec["reading_passage_id"]
        ctx = {
            "title_vi": rec.get("title_vi"),
            "topic": rec.get("topic"),
            "subtopic": rec.get("subtopic"),
            "tags": rec.get("tags", []),
            "grammar_used": rec.get("grammar_used", []),
            "vocabulary": rec.get("vocabulary", []),
            "level": rec.get("level"),
            "level_label": rec.get("level_label"),
            "sentence_count": rec.get("sentence_count"),
            "r_id": rec["id"],  # vd "R_0641"
        }
        text = rec.get("text") or ""
        wc = len(text)
        diff = difficulty_of(rec.get("level", 1))
        lines.append(
            f"INSERT INTO reading_passages (id, title, content, translation, jlpt_level, "
            f"category, difficulty, word_count, is_system, is_public, is_active, is_deleted, "
            f"context, created_at) VALUES "
            f"({pid}, {sql_str(rec.get('title'))}, {sql_str(text)}, "
            f"{sql_str(rec.get('translation'))}, {sql_str(rec.get('jlpt'))}, "
            f"{sql_str(rec.get('level_label'))}, {diff}, {wc}, "
            f"TRUE, TRUE, TRUE, FALSE, {sql_json(ctx)}, now()) "
            f"ON CONFLICT (id) DO UPDATE SET "
            f"title=EXCLUDED.title, content=EXCLUDED.content, translation=EXCLUDED.translation, "
            f"jlpt_level=EXCLUDED.jlpt_level, category=EXCLUDED.category, "
            f"difficulty=EXCLUDED.difficulty, word_count=EXCLUDED.word_count, "
            f"is_system=EXCLUDED.is_system, is_public=EXCLUDED.is_public, "
            f"is_active=EXCLUDED.is_active, context=EXCLUDED.context, updated_at=now();"
        )
    lines.append("")

    # ---------------------------------------------------------------
    # 3. curriculum_node (1 node / bài, 700 rows)
    # ---------------------------------------------------------------
    lines.append(f"-- 3. curriculum_node ({len(records)} rows)")
    for rec in records:
        r_num = int(rec["id"].split("_")[1])
        node_id = rec["reading_passage_id"]  # dùng cùng id, dễ debug
        node_ctx = {"r_id": rec["id"], "level_label": rec.get("level_label")}
        lines.append(
            f"INSERT INTO curriculum_node (id, curriculum_id, node_type, node_title, "
            f"note_title_jp, order_index, is_active, is_deleted, access_level, context, "
            f"created_at) VALUES "
            f"({node_id}, {BOOK_ID}, 'book', "
            f"{sql_str(rec.get('title_vi') or rec.get('title'))}, "
            f"{sql_str(rec.get('title'))}, {r_num}, "
            f"TRUE, FALSE, 'free', {sql_json(node_ctx)}, now()) "
            f"ON CONFLICT (id) DO UPDATE SET "
            f"curriculum_id=EXCLUDED.curriculum_id, node_type=EXCLUDED.node_type, "
            f"node_title=EXCLUDED.node_title, note_title_jp=EXCLUDED.note_title_jp, "
            f"order_index=EXCLUDED.order_index, context=EXCLUDED.context, updated_at=now();"
        )
    lines.append("")

    # ---------------------------------------------------------------
    # 4. curriculum_node_content (700 rows) — junction node ↔ passage
    # ---------------------------------------------------------------
    # Vì id BIGSERIAL, KHÔNG dùng ON CONFLICT (id). Xoá rồi insert lại.
    lines.append(f"-- 4. curriculum_node_content (delete & insert {len(records)} rows)")
    lines.append(
        f"DELETE FROM curriculum_node_content WHERE curriculum_node_id IN "
        f"(SELECT id FROM curriculum_node WHERE curriculum_id = {BOOK_ID});"
    )
    for rec in records:
        node_id = rec["reading_passage_id"]
        passage_id = rec["reading_passage_id"]
        lines.append(
            f"INSERT INTO curriculum_node_content (curriculum_node_id, content_type, "
            f"content_id, order_index, is_active, is_deleted, created_at) VALUES "
            f"({node_id}, 'reading_passage', {sql_str(str(passage_id))}, 0, "
            f"TRUE, FALSE, now());"
        )
    lines.append("")

    # ---------------------------------------------------------------
    # 5. question_sets (700 rows, 1 / passage)
    # ---------------------------------------------------------------
    lines.append(f"-- 5. question_sets ({len(records)} rows)")
    for rec in records:
        set_id = rec["question_set_id"]
        passage_id = rec["reading_passage_id"]
        comp = rec.get("comprehension", []) or []
        set_ctx = {"book_seq": BOOK_SEQ, "r_id": rec["id"]}
        title_vi = rec.get("title_vi") or rec.get("title")
        # description: hướng dẫn làm bài (KHÔNG đặt translation VN ở đây vì
        # FE Flutter render description ở đầu trang Bài tập trước khi làm).
        lines.append(
            f"INSERT INTO question_sets (id, name, description, set_type, reading_passage_id, "
            f"level, is_system, is_public, is_active, is_deleted, card_count, category, "
            f"context, created_at) VALUES "
            f"({set_id}, {sql_str('Đọc hiểu — ' + title_vi)}, "
            f"{sql_str('Đọc kỹ bài và chọn đáp án đúng cho từng câu hỏi.')}, "
            f"'reading', {passage_id}, "
            f"{sql_str(rec.get('jlpt'))}, TRUE, TRUE, TRUE, FALSE, {len(comp)}, "
            f"'reading_collection', {sql_json(set_ctx)}, now()) "
            f"ON CONFLICT (id) DO UPDATE SET "
            f"name=EXCLUDED.name, description=EXCLUDED.description, "
            f"set_type=EXCLUDED.set_type, "
            f"reading_passage_id=EXCLUDED.reading_passage_id, level=EXCLUDED.level, "
            f"card_count=EXCLUDED.card_count, context=EXCLUDED.context, updated_at=now();"
        )
    lines.append("")

    # ---------------------------------------------------------------
    # 6. questions (2680 rows)
    # ---------------------------------------------------------------
    total_q = sum(len(r.get("comprehension", []) or []) for r in records)
    lines.append(f"-- 6. questions ({total_q} rows)")
    for rec in records:
        passage_id = rec["reading_passage_id"]
        for q_idx, q in enumerate(rec.get("comprehension", []) or []):
            qid = q["question_id"]
            q_ctx = {
                "question_vi": q.get("question_vi"),
                "reading_passage_id": passage_id,
                "comprehension_idx": q_idx,
                "r_id": rec["id"],
            }
            # question_type_num + base_difficulty: int NOT NULL trong Response schema → phải set giá trị
            diff = difficulty_of(rec.get("level", 1))
            lines.append(
                f"INSERT INTO questions (id, question, general_explanation, content_type, "
                f"question_type, selection_type, level, is_system, is_active, is_deleted, "
                f"skill_category, question_type_num, base_difficulty, context, created_at) VALUES "
                f"({qid}, {sql_str(q.get('question'))}, {sql_str(q.get('explanation'))}, "
                f"'reading', 'chon_dap_an', 'single', {sql_str(rec.get('jlpt'))}, "
                f"TRUE, TRUE, FALSE, 'reading', 0, {diff}, {sql_json(q_ctx)}, now()) "
                f"ON CONFLICT (id) DO UPDATE SET "
                f"question=EXCLUDED.question, general_explanation=EXCLUDED.general_explanation, "
                f"content_type=EXCLUDED.content_type, question_type=EXCLUDED.question_type, "
                f"selection_type=EXCLUDED.selection_type, level=EXCLUDED.level, "
                f"skill_category=EXCLUDED.skill_category, "
                f"question_type_num=EXCLUDED.question_type_num, "
                f"base_difficulty=EXCLUDED.base_difficulty, "
                f"context=EXCLUDED.context, updated_at=now();"
            )
    lines.append("")

    # ---------------------------------------------------------------
    # 7. questions_answers (10720 rows)
    # ---------------------------------------------------------------
    total_a = sum(
        len(q.get("answers", []) or [])
        for r in records for q in (r.get("comprehension", []) or [])
    )
    lines.append(f"-- 7. questions_answers ({total_a} rows)")
    for rec in records:
        for q in rec.get("comprehension", []) or []:
            qid = q["question_id"]
            for ans_idx, ans in enumerate(q.get("answers", []) or [], 1):
                aid = ans["questions_answer_id"]
                a_ctx = {"text_vi": ans.get("text_vi")}
                lines.append(
                    f"INSERT INTO questions_answers (id, question_id, sentence, "
                    f"sentence_translation, is_correct, \"order\", context) VALUES "
                    f"({aid}, {qid}, {sql_str(ans.get('text'))}, "
                    f"{sql_str(ans.get('text_vi'))}, {sql_bool(ans.get('is_correct', False))}, "
                    f"{ans_idx}, {sql_json(a_ctx)}) "
                    f"ON CONFLICT (id) DO UPDATE SET "
                    f"question_id=EXCLUDED.question_id, sentence=EXCLUDED.sentence, "
                    f"sentence_translation=EXCLUDED.sentence_translation, "
                    f"is_correct=EXCLUDED.is_correct, \"order\"=EXCLUDED.\"order\", "
                    f"context=EXCLUDED.context;"
                )
    lines.append("")

    # ---------------------------------------------------------------
    # 8. examples (11742 rows) — process sentences
    # ---------------------------------------------------------------
    total_e = sum(len(r.get("process", []) or []) for r in records)
    lines.append(f"-- 8. examples ({total_e} rows)")
    for rec in records:
        passage_id = rec["reading_passage_id"]
        for p_idx, proc in enumerate(rec.get("process", []) or []):
            eid = proc["example_id"]
            e_ctx = {
                "chunks": proc.get("chunks"),
                "process_idx": p_idx,
                "reading_passage_id": passage_id,
                "r_id": rec["id"],
            }
            lines.append(
                f"INSERT INTO examples (id, content_type, content_id, is_sentence, sentence, "
                f"translation, explanation, order_index, is_active, is_deleted, context, "
                f"created_at) VALUES "
                f"({eid}, 'reading_passage', {sql_str(str(passage_id))}, TRUE, "
                f"{sql_str(proc.get('sentence'))}, {sql_str(proc.get('translation'))}, "
                f"{sql_str(proc.get('guide'))}, {p_idx}, TRUE, FALSE, {sql_json(e_ctx)}, now()) "
                f"ON CONFLICT (id) DO UPDATE SET "
                f"content_type=EXCLUDED.content_type, content_id=EXCLUDED.content_id, "
                f"is_sentence=EXCLUDED.is_sentence, sentence=EXCLUDED.sentence, "
                f"translation=EXCLUDED.translation, explanation=EXCLUDED.explanation, "
                f"order_index=EXCLUDED.order_index, context=EXCLUDED.context, "
                f"updated_at=now();"
            )
    lines.append("")

    # ---------------------------------------------------------------
    # 9. question_set_questions junction (2680 rows)
    # ---------------------------------------------------------------
    lines.append(f"-- 9. question_set_questions (delete & insert {total_q} rows)")
    lines.append(
        f"DELETE FROM question_set_questions WHERE question_set_id IN "
        f"(SELECT id FROM question_sets WHERE id BETWEEN "
        f"{records[0]['question_set_id']} AND {records[-1]['question_set_id']});"
    )
    for rec in records:
        set_id = rec["question_set_id"]
        passage_id = rec["reading_passage_id"]
        for q_idx, q in enumerate(rec.get("comprehension", []) or []):
            qid = q["question_id"]
            lines.append(
                f"INSERT INTO question_set_questions (question_set_id, question_id, "
                f"order_index, reading_passage_id) VALUES "
                f"({set_id}, {qid}, {q_idx}, {passage_id});"
            )
    lines.append("")

    # ---------------------------------------------------------------
    # 10. resource_media — gắn question_set vào curriculum_node
    # Để Book Reader hiển thị drawer "Bài tập" + floating bottom bar.
    # Whitelist media_type: question_set, question, flashcards_list, flashcard
    # (xem app/services/media/curriculum_node_resources.py)
    # ---------------------------------------------------------------
    lines.append(f"-- 10. resource_media (delete & insert {len(records)} rows — gắn question_set vào node)")
    node_id_lo = records[0]["reading_passage_id"]
    node_id_hi = records[-1]["reading_passage_id"]
    lines.append(
        f"DELETE FROM resource_media WHERE resource_type='curriculum_node' "
        f"AND resource_id BETWEEN {node_id_lo} AND {node_id_hi};"
    )
    for rec in records:
        node_id = rec["reading_passage_id"]  # node_id = passage_id (cùng số)
        set_id = rec["question_set_id"]
        title_vi = rec.get("title_vi") or rec.get("title")
        rm_ctx = {"label": "Đọc hiểu"}
        lines.append(
            f"INSERT INTO resource_media (resource_type, resource_id, media_type, "
            f"media_id, in_table, order_index, context, is_active, created_at) VALUES "
            f"('curriculum_node', {node_id}, 'question_set', "
            f"{sql_str(str(set_id))}, 'question_sets', 0, {sql_json(rm_ctx)}, "
            f"TRUE, now());"
        )
    lines.append("")

    lines.append("COMMIT;")
    lines.append("")

    return "\n".join(lines)


def main() -> None:
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    sql = build_sql()
    OUTPUT_FILE.write_text(sql, encoding="utf-8")
    n_lines = sql.count("\n")
    size_kb = len(sql.encode("utf-8")) / 1024
    print(f"Wrote {OUTPUT_FILE.relative_to(ROOT)}")
    print(f"  lines: {n_lines:,}")
    print(f"  size:  {size_kb:,.1f} KB")


if __name__ == "__main__":
    main()
