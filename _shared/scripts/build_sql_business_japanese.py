#!/usr/bin/env python3
"""
Sinh SQL seed cho khoá học "Business Japanese — Kính ngữ".

Output:
  release/business_japanese_sql/business_japanese.sql

Cấu trúc seed:
  1. study_courses (id=8010)
  2. study_modules (id=8011..8015)
  3. study_course_modules (link course ↔ module)
  4. reading_passages (cho Mogishiken — 25 row)
  5. questions + questions_answers (420 q + 1680 ans)
  6. study_question_sets (37 sets — BaiTap split level + Mogishiken gộp)
  7. study_question_set_questions (link set ↔ question)
  8. study_resource_question_sets (link module ↔ set)

ID schema:
  course           = 8010
  modules          = 8011..8015
  reading_passages = 8010{topic:1d}0{section:1d}      vd 8010101
  questions        = 8{topic:1d}{kind:1d}{seq:04d}    vd 81110001
                       kind: 1=BaiTap, 2=Mogishiken, 3=BaiTap-2 (LuyenTap)
  question_sets    = 8010{topic:1d}{kind:1d}{level:1d}  vd 80101011
                       level: 1..4 cho BaiTap, 0 cho Mogishiken (gộp)
  Các bảng junction dùng autoincrement.

Dùng ON CONFLICT (id) DO UPDATE để re-runnable.

Đọc nguồn từ books/business_japanese/_normalized/ (đã chuẩn hoá schema A).
KHÔNG inline furigana / bunsetsu — chạy script khác sau.
"""

from __future__ import annotations

import json
import re
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
NORMALIZED_DIR = ROOT / "books" / "business_japanese" / "_normalized"
MD_SOURCE_DIR = ROOT / "books" / "business_japanese"
SQL_OUT_DIR = ROOT / "release" / "business_japanese_sql"

COURSE_ID = 8010
COURSE_CODE = "business_japanese_keigo"
COURSE_NAME = "Tiếng Nhật Thương Mại — Kính ngữ"
COURSE_DESC = "Khoá học chuyên sâu về hệ thống kính ngữ tiếng Nhật trong giao tiếp thương mại."

# Mapping module — order quan trọng vì module_id = 8010 + position.
MODULE_DEFS: list[dict] = [
    {
        "position": 1,
        "module_id": 8011,
        "code": "keigo_phan_loai",
        "name": "Phân loại Kính ngữ — Tổng quan",
        "module_type": "grammar",
        "topic": "keigo_overview",
        "difficulty": "basic",
        "folder": "2.1.0_keigo_phan_loai",
    },
    {
        "position": 2,
        "module_id": 8012,
        "code": "juzu_doushi",
        "name": "Động từ cho/nhận (授受動詞)",
        "module_type": "grammar",
        "topic": "juzu_doushi",
        "difficulty": "intermediate",
        "folder": "2.1.4_juzu_doushi",
    },
    {
        "position": 3,
        "module_id": 8013,
        "code": "uchi_soto",
        "name": "Uchi/Soto — In-group / Out-group",
        "module_type": "grammar",
        "topic": "uchi_soto",
        "difficulty": "intermediate",
        "folder": "2.1.5_uchi_soto",
    },
    {
        "position": 4,
        "module_id": 8014,
        "code": "ukemi_shieki",
        "name": "Bị động & Sai khiến (受動・使役)",
        "module_type": "grammar",
        "topic": "ukemi_shieki",
        "difficulty": "intermediate",
        "folder": "2.1.6_ukemi_shieki",
    },
    {
        "position": 5,
        "module_id": 8015,
        "code": "keigo_tong_hop",
        "name": "Tổng hợp & So sánh",
        "module_type": "grammar",
        "topic": "keigo_tong_hop",
        "difficulty": "advanced",
        "folder": "2.1.7_tong_hop_so_sanh",
    },
]

# Mapping topic-number cho từng file JSON. Topic từ tiền tố 2.1.X của tên file.
# kind: 1=BaiTap, 2=Mogishiken. Khi 1 module có 2 BaiTap (module 2.1.7),
# file thứ 2 (LuyenTap) dùng kind=3.
FILENAME_PATTERN = re.compile(
    r"^2\.1\.(\d+)_(.+?)_(BaiTap|Mogishiken|LuyenTap)\.json$"
)


def sql_escape(text: str | None) -> str:
    if text is None:
        return "NULL"
    return "'" + text.replace("'", "''") + "'"


def sql_text_or_null(text: str | None) -> str:
    if text is None or text == "":
        return "NULL"
    return sql_escape(text)


def sql_jsonb(obj) -> str:
    """Encode dict/list thành JSONB literal."""
    if obj is None:
        return "NULL"
    return sql_escape(json.dumps(obj, ensure_ascii=False)) + "::jsonb"


@dataclass
class JsonFile:
    path: Path
    module: dict          # MODULE_DEFS entry
    topic: int            # số sau "2.1." trong tên file
    kind: int             # 1=BaiTap, 2=Mogishiken, 3=BaiTap-2
    is_mogishiken: bool


def discover_json_files() -> list[JsonFile]:
    """Quét _normalized/, gắn vào module + tính topic/kind."""
    out: list[JsonFile] = []
    for module in MODULE_DEFS:
        mod_dir = NORMALIZED_DIR / module["folder"]
        if not mod_dir.is_dir():
            raise FileNotFoundError(mod_dir)
        # Sort: BaiTap trước, Mogishiken sau, LuyenTap (nếu có) cuối.
        files = sorted(mod_dir.glob("*.json"))

        # Đếm số BaiTap trong module để gán kind=3 cho file BaiTap thứ 2.
        baitap_seen = 0
        for fp in files:
            m = FILENAME_PATTERN.match(fp.name)
            if not m:
                raise ValueError(f"Tên file không khớp pattern: {fp.name}")
            topic = int(m.group(1))
            kind_name = m.group(3)
            is_mogi = kind_name == "Mogishiken"
            if is_mogi:
                kind = 2
            else:
                baitap_seen += 1
                # File BaiTap đầu = kind 1, file thứ 2 = kind 3.
                kind = 1 if baitap_seen == 1 else 3
            out.append(JsonFile(fp, module, topic, kind, is_mogi))
    return out


def question_id(topic: int, kind: int, seq: int) -> int:
    """8 {topic} {kind} {seq:04d} → integer."""
    return 80000000 + topic * 1000000 + kind * 100000 + seq


def passage_id(topic: int, section: int) -> int:
    """8010 {topic} 0 {section} → 7-digit."""
    return 8010000 + topic * 100 + section


def question_set_id(topic: int, kind: int, level: int) -> int:
    """8010 {topic} {kind} {level} → 8-digit."""
    return 80100000 + topic * 100 + kind * 10 + level


# ============================================================
# SQL builders
# ============================================================

def build_course_sql() -> str:
    return (
        "INSERT INTO study_courses ("
        "id, code, name, description, order_index, "
        "free_preview_count, tenant_id, is_active, is_deleted, created_at, created_by"
        ") VALUES ("
        f"{COURSE_ID}, "
        f"{sql_escape(COURSE_CODE)}, "
        f"{sql_escape(COURSE_NAME)}, "
        f"{sql_escape(COURSE_DESC)}, "
        "1, "
        "5, "
        "'system', "
        "TRUE, FALSE, NOW(), 'system'"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "code = EXCLUDED.code, "
        "name = EXCLUDED.name, "
        "description = EXCLUDED.description, "
        "order_index = EXCLUDED.order_index, "
        "free_preview_count = EXCLUDED.free_preview_count, "
        "tenant_id = EXCLUDED.tenant_id, "
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "updated_at = NOW(), "
        "updated_by = 'system';"
    )


def build_module_sql(module: dict) -> str:
    return (
        "INSERT INTO study_modules ("
        "id, code, name, module_type, description, difficulty, topic, order_index, "
        "free_preview_count, tenant_id, is_active, is_deleted, created_at, created_by"
        ") VALUES ("
        f"{module['module_id']}, "
        f"{sql_escape(module['code'])}, "
        f"{sql_escape(module['name'])}, "
        f"{sql_escape(module['module_type'])}, "
        f"{sql_escape(module['name'])}, "
        f"{sql_escape(module['difficulty'])}, "
        f"{sql_escape(module['topic'])}, "
        f"{module['position']}, "
        "5, "
        "'system', "
        "TRUE, FALSE, NOW(), 'system'"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "code = EXCLUDED.code, "
        "name = EXCLUDED.name, "
        "module_type = EXCLUDED.module_type, "
        "description = EXCLUDED.description, "
        "difficulty = EXCLUDED.difficulty, "
        "topic = EXCLUDED.topic, "
        "order_index = EXCLUDED.order_index, "
        "free_preview_count = EXCLUDED.free_preview_count, "
        "tenant_id = EXCLUDED.tenant_id, "
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "updated_at = NOW(), "
        "updated_by = 'system';"
    )


def build_course_module_sql(module: dict) -> str:
    """Junction — upsert theo unique index (course_id, module_id)."""
    return (
        "INSERT INTO study_course_modules ("
        "course_id, module_id, position, tenant_id, is_deleted, created_at, created_by"
        ") VALUES ("
        f"{COURSE_ID}, "
        f"{module['module_id']}, "
        f"{module['position']}, "
        "'system', "
        "FALSE, NOW(), 'system'"
        ") "
        "ON CONFLICT (course_id, module_id) DO UPDATE SET "
        "position = EXCLUDED.position, "
        "is_deleted = FALSE;"
    )


def build_reading_passage_sql(jf: JsonFile, section: dict) -> str:
    pid = passage_id(jf.topic, section["section_id"])
    title = section.get("document_type") or f"Mogishiken 2.1.{jf.topic} - Section {section['section_id']}"
    content = section.get("passage_ja") or ""
    translation = section.get("situation_vn") or ""
    word_count = section.get("word_count") or 0
    difficulty = section.get("level") or 1

    return (
        "INSERT INTO reading_passages ("
        "id, user_id, is_system, is_public, title, content, translation, "
        "jlpt_level, category, difficulty, word_count, "
        "tenant_id, is_active, is_deleted, created_at, created_by"
        ") VALUES ("
        f"{pid}, "
        "NULL, TRUE, TRUE, "
        f"{sql_escape(title)}, "
        f"{sql_text_or_null(content)}, "
        f"{sql_text_or_null(translation)}, "
        "'BJT', "
        "'business_keigo', "
        f"{difficulty}, "
        f"{word_count}, "
        "'system', TRUE, FALSE, NOW(), 'system'"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "title = EXCLUDED.title, "
        "content = EXCLUDED.content, "
        "translation = EXCLUDED.translation, "
        "category = EXCLUDED.category, "
        "difficulty = EXCLUDED.difficulty, "
        "word_count = EXCLUDED.word_count, "
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "updated_at = NOW(), "
        "updated_by = 'system';"
    )


def build_question_sql(
    qid: int,
    q: dict,
    content_type: str,
    passage_id_link: int | None,
    passage_translation: str | None = None,
) -> str:
    """Sinh INSERT cho 1 question.

    questions.question = question_jp + "\n\n" + question_vn (gộp song ngữ).
    questions.passage = str(passage_id) khi là dokkai (Mogishiken) — match
       pattern seed_dokkai.py để UI render passage chung cho nhóm câu hỏi.
    questions.question_type = 'reading' cho dokkai, 'chon_dap_an' cho BaiTap.
    questions.skill_category = 'dokkai' cho Mogishiken, 'grammar' cho BaiTap.
    """
    question_jp = q.get("question_jp") or ""
    question_vn = q.get("question_vn") or ""
    combined = question_jp
    if question_vn:
        combined = f"{question_jp}\n\n{question_vn}" if question_jp else question_vn

    explanation = q.get("explanation") or ""
    tip = q.get("tip") or ""
    if tip:
        explanation = f"{explanation}\n\n💡 {tip}".strip() if explanation else tip

    bjt_level = q.get("level")
    level_text = f"BJT-{bjt_level}" if bjt_level else None

    is_dokkai = passage_id_link is not None
    question_type = "reading" if is_dokkai else "chon_dap_an"
    skill_category = "dokkai" if is_dokkai else "grammar"

    # passage field: text cột reference passage_id (khớp seed_dokkai.py).
    passage_field = str(passage_id_link) if passage_id_link else ""

    return (
        "INSERT INTO questions ("
        "id, user_id, is_system, is_khoa_cu, "
        "question_type, content_type, level, selection_type, "
        "question, passage, passage_translation, general_explanation, "
        "skill_category, base_difficulty, "
        "tenant_id, is_active, is_deleted, created_at, created_by"
        ") VALUES ("
        f"{qid}, "
        "NULL, TRUE, FALSE, "
        f"{sql_escape(question_type)}, "
        f"{sql_escape(content_type)}, "
        f"{sql_text_or_null(level_text)}, "
        "'single', "
        f"{sql_text_or_null(combined)}, "
        f"{sql_text_or_null(passage_field)}, "
        f"{sql_text_or_null(passage_translation)}, "
        f"{sql_text_or_null(explanation)}, "
        f"{sql_escape(skill_category)}, "
        f"{bjt_level or 1}, "
        "'system', TRUE, FALSE, NOW(), 'system'"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "question_type = EXCLUDED.question_type, "
        "content_type = EXCLUDED.content_type, "
        "level = EXCLUDED.level, "
        "question = EXCLUDED.question, "
        "passage = EXCLUDED.passage, "
        "passage_translation = EXCLUDED.passage_translation, "
        "general_explanation = EXCLUDED.general_explanation, "
        "skill_category = EXCLUDED.skill_category, "
        "base_difficulty = EXCLUDED.base_difficulty, "
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "updated_at = NOW(), "
        "updated_by = 'system';"
    )


def build_answer_delete_sql(qid: int) -> str:
    """Xoá answers cũ của question để re-seed sạch (id auto, không upsert được)."""
    return f"DELETE FROM questions_answers WHERE question_id = {qid};"


def build_answer_sql(qid: int, choice: dict, correct_key: str, order: int) -> str:
    """Insert 1 answer. id = autoincrement."""
    is_correct = choice.get("key") == correct_key
    sentence = choice.get("jp") or ""
    translation = choice.get("vn")  # có thể None (Group 2)

    return (
        "INSERT INTO questions_answers ("
        "question_id, sentence, sentence_translation, is_correct, \"order\""
        ") VALUES ("
        f"{qid}, "
        f"{sql_text_or_null(sentence)}, "
        f"{sql_text_or_null(translation)}, "
        f"{'TRUE' if is_correct else 'FALSE'}, "
        f"{order}"
        ");"
    )


def build_question_set_sql(qsid: int, name: str, description: str, set_type: str, card_count: int) -> str:
    return (
        "INSERT INTO study_question_sets ("
        "id, name, description, set_type, card_count, "
        "tenant_id, is_active, is_deleted, created_at, created_by"
        ") VALUES ("
        f"{qsid}, "
        f"{sql_escape(name)}, "
        f"{sql_text_or_null(description)}, "
        f"{sql_escape(set_type)}, "
        f"{card_count}, "
        "'system', TRUE, FALSE, NOW(), 'system'"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "name = EXCLUDED.name, "
        "description = EXCLUDED.description, "
        "set_type = EXCLUDED.set_type, "
        "card_count = EXCLUDED.card_count, "
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "updated_at = NOW(), "
        "updated_by = 'system';"
    )


def build_set_question_link_sql(qsid: int, qid: int, order_index: int) -> str:
    """Link set ↔ question. Upsert theo unique index (set_id, question_id)."""
    return (
        "INSERT INTO study_question_set_questions ("
        "study_question_set_id, question_id, order_index, tenant_id, is_deleted, created_at, created_by"
        ") VALUES ("
        f"{qsid}, {qid}, {order_index}, 'system', FALSE, NOW(), 'system'"
        ") "
        "ON CONFLICT (study_question_set_id, question_id) DO UPDATE SET "
        "order_index = EXCLUDED.order_index, "
        "is_deleted = FALSE;"
    )


def build_resource_set_link_sql(module_id: int, qsid: int, position: int, label: str) -> str:
    """Link module ↔ question_set."""
    return (
        "INSERT INTO study_resource_question_sets ("
        "resource_type, resource_id, study_question_set_id, position, context, "
        "tenant_id, is_active, is_deleted, created_at, created_by"
        ") VALUES ("
        f"'module', {module_id}, {qsid}, {position}, "
        f"{sql_jsonb({'label': label})}, "
        "'system', TRUE, FALSE, NOW(), 'system'"
        ") "
        "ON CONFLICT (resource_type, resource_id, study_question_set_id) DO UPDATE SET "
        "position = EXCLUDED.position, "
        "context = EXCLUDED.context, "
        "is_active = TRUE, "
        "is_deleted = FALSE;"
    )


# ============================================================
# Main pipeline
# ============================================================

def process_baitap_file(jf: JsonFile, lines: list[str], position_counter: dict) -> tuple[int, int]:
    """Tách 1 file BaiTap thành 4 question_sets theo level. Trả về (q_count, set_count)."""
    data = json.loads(jf.path.read_text(encoding="utf-8"))
    questions = data.get("questions") or []
    meta = data.get("meta") or {}

    # Group questions by level (1..4).
    by_level: dict[int, list[dict]] = {}
    for q in questions:
        lvl = q.get("level") or 1
        by_level.setdefault(lvl, []).append(q)

    # Insert questions + answers theo seq trong file (1..N).
    lines.append(f"-- BaiTap file: {jf.path.name}")
    seq_counter = 0
    qid_by_q: dict[int, int] = {}   # mapping JSON q.id → qid SQL
    for q in questions:
        seq_counter += 1
        qid = question_id(jf.topic, jf.kind, seq_counter)
        qid_by_q[id(q)] = qid
        # Content_type theo nội dung module.
        content_type = f"keigo_baitap_{jf.module['code']}"
        lines.append(build_question_sql(qid, q, content_type, passage_id_link=None))
        lines.append(build_answer_delete_sql(qid))
        for order, choice in enumerate(q.get("choices") or [], start=1):
            lines.append(build_answer_sql(qid, choice, q.get("answer", ""), order))
    lines.append("")

    # Tạo 4 set theo level.
    set_count = 0
    for level in sorted(by_level.keys()):
        qs_id = question_set_id(jf.topic, jf.kind, level)
        level_qs = by_level[level]
        level_name = level_qs[0].get("level_name") or f"Cấp {level}"
        title_meta = meta.get("title_vn") or meta.get("title") or jf.path.stem
        set_name = f"{title_meta} — {level_name}"
        set_desc = f"Bài tập cấp {level} ({level_name}) — {len(level_qs)} câu."
        lines.append(build_question_set_sql(qs_id, set_name, set_desc, "practice", len(level_qs)))
        for order_in_set, q in enumerate(level_qs, start=1):
            lines.append(build_set_question_link_sql(qs_id, qid_by_q[id(q)], order_in_set))
        # Link module ↔ set (position tăng dần trong module).
        position_counter[jf.module["module_id"]] += 1
        pos = position_counter[jf.module["module_id"]]
        lines.append(build_resource_set_link_sql(
            jf.module["module_id"], qs_id, pos,
            label=set_name,
        ))
        lines.append("")
        set_count += 1

    return seq_counter, set_count


def process_mogishiken_file(jf: JsonFile, lines: list[str], position_counter: dict) -> tuple[int, int, int]:
    """Tách Mogishiken: 5 reading_passages + 1 question_set gộp 20 câu.
    Trả về (passage_count, q_count, set_count=1).
    """
    data = json.loads(jf.path.read_text(encoding="utf-8"))
    sections = data.get("sections") or []
    meta = data.get("meta") or {}

    lines.append(f"-- Mogishiken file: {jf.path.name}")

    # Tạo passages.
    passage_count = 0
    section_passage_map: dict[int, int] = {}   # section_id → passage_id
    for s in sections:
        pid = passage_id(jf.topic, s["section_id"])
        lines.append(build_reading_passage_sql(jf, s))
        section_passage_map[s["section_id"]] = pid
        passage_count += 1

    # Insert questions + answers (gộp 20 câu).
    seq_counter = 0
    all_qids: list[int] = []
    for s in sections:
        pid = section_passage_map[s["section_id"]]
        passage_translation = s.get("situation_vn") or ""
        for q in s.get("questions") or []:
            seq_counter += 1
            qid = question_id(jf.topic, jf.kind, seq_counter)
            content_type = f"keigo_dokkai_{jf.module['code']}"
            lines.append(build_question_sql(
                qid, q, content_type,
                passage_id_link=pid,
                passage_translation=passage_translation,
            ))
            lines.append(build_answer_delete_sql(qid))
            for order, choice in enumerate(q.get("choices") or [], start=1):
                lines.append(build_answer_sql(qid, choice, q.get("answer", ""), order))
            all_qids.append(qid)
    lines.append("")

    # 1 question_set gộp tất cả — set_type='reading' để UI biết render
    # với passage panel (group questions cùng passage_id).
    qs_id = question_set_id(jf.topic, jf.kind, 0)
    title_meta = meta.get("title_vn") or meta.get("title") or jf.path.stem
    set_name = f"{title_meta} — Mô phỏng đề thi"
    set_desc = f"Mô phỏng đề thi BJT đọc hiểu — {len(all_qids)} câu, {passage_count} bài đọc."
    lines.append(build_question_set_sql(qs_id, set_name, set_desc, "reading", len(all_qids)))
    for order_in_set, qid in enumerate(all_qids, start=1):
        lines.append(build_set_question_link_sql(qs_id, qid, order_in_set))
    position_counter[jf.module["module_id"]] += 1
    pos = position_counter[jf.module["module_id"]]
    lines.append(build_resource_set_link_sql(
        jf.module["module_id"], qs_id, pos,
        label=set_name,
    ))
    lines.append("")

    return passage_count, seq_counter, 1


def main() -> None:
    if not NORMALIZED_DIR.is_dir():
        raise FileNotFoundError(f"Chưa có thư mục normalized: {NORMALIZED_DIR}. Chạy normalize_business_japanese_json.py trước.")

    SQL_OUT_DIR.mkdir(parents=True, exist_ok=True)

    json_files = discover_json_files()
    print(f"Phát hiện {len(json_files)} file JSON")

    lines: list[str] = []
    lines.append("-- Hizashi Business Japanese — Khoá học Kính ngữ")
    lines.append(f"-- course_id = {COURSE_ID}, modules = 8011..8015")
    lines.append("-- generated từ release/business_japanese_sql/build_sql_business_japanese.py")
    lines.append("-- KHÔNG sửa thủ công — chạy lại script để regenerate.")
    lines.append("")
    lines.append("BEGIN;")
    lines.append("")

    # 1. Course + modules + course_modules.
    lines.append("-- 1) Course")
    lines.append(build_course_sql())
    lines.append("")
    lines.append("-- 2) Modules + course_modules")
    for module in MODULE_DEFS:
        lines.append(build_module_sql(module))
        lines.append(build_course_module_sql(module))
    lines.append("")

    # 2. Process từng file JSON.
    position_counter: dict[int, int] = {m["module_id"]: 0 for m in MODULE_DEFS}
    total_q = 0
    total_passages = 0
    total_sets = 0
    for jf in json_files:
        if jf.is_mogishiken:
            p, q, s = process_mogishiken_file(jf, lines, position_counter)
            total_passages += p
            total_q += q
            total_sets += s
        else:
            q, s = process_baitap_file(jf, lines, position_counter)
            total_q += q
            total_sets += s

    lines.append("COMMIT;")
    lines.append("")

    out_path = SQL_OUT_DIR / "business_japanese.sql"
    out_path.write_text("\n".join(lines), encoding="utf-8")

    print(f"Đã sinh SQL vào {out_path}")
    print(f"  course: 1")
    print(f"  modules: {len(MODULE_DEFS)}")
    print(f"  reading_passages: {total_passages}")
    print(f"  questions: {total_q}")
    print(f"  question_sets: {total_sets}")


if __name__ == "__main__":
    main()
