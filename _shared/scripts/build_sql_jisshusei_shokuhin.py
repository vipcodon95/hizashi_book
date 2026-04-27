#!/usr/bin/env python3
"""
Sinh SQL seed cho khoá học "Một Năm của Hoa — Thực Tập Sinh Ngành Thực Phẩm" (sách 11).

Output:
  release/jisshusei_shokuhin_sql/jisshusei_shokuhin.sql

ID schema (NEW format, chuẩn 8 + STT 2 chữ số):
  course_id        = 8011
  modules          = 8011001..8011012  (12 modules = 12 chapters)
  reading_passages = 8011 0 {topic:1d} {section:2d}    vd 80110101
  questions        = 8011 {topic:1d} {kind:1d} {seq:03d}  vd 80111001
                       kind: 1=BaiTap, 2=Mogishiken
  question_sets    = 8011 0 {topic:1d} {kind:1d} {level:1d}  vd 801101110

Đọc nguồn từ books/11_jisshusei_shokuhin/<module_folder>/*.json
Format JSON theo skill `study-course-questions-builder` (mới, không phải _normalized cũ).
"""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
BOOK_DIR = ROOT / "books" / "11_jisshusei_shokuhin"
SQL_OUT_DIR = ROOT / "release" / "jisshusei_shokuhin_sql"

COURSE_ID = 8011
COURSE_CODE = "jisshusei_shokuhin"
COURSE_NAME = "Một Năm của Hoa — Nhật Ký Thực Tập Sinh Ngành Thực Phẩm"
COURSE_DESC = (
    "Hội thoại 12 tháng của thực tập sinh kỹ năng ngành thực phẩm tại Nhật Bản. "
    "Story arc 1 năm của Hoa — từ N5 lúc nhập công ty đến định hướng "
    "Sekininsha + HACCP + Tokutei Ginou cuối năm 1."
)

# 12 modules = 12 tháng
MODULE_DEFS = [
    {"position": 1,  "module_id": 8011001, "code": "t01_dat_chan_toi_nhat",   "name": "T1. Đặt chân tới Nhật",
     "module_type": "vocabulary", "topic": "arrival_nyuusha",       "difficulty": "basic",        "folder": "t01_dat_chan_toi_nhat",   "topic_id": 1},
    {"position": 2,  "module_id": 8011002, "code": "t02_tuan_dau_nha_may",    "name": "T2. Tuần đầu trong nhà máy",
     "module_type": "vocabulary", "topic": "factory_tour_5s",       "difficulty": "basic",        "folder": "t02_tuan_dau_nha_may",    "topic_id": 2},
    {"position": 3,  "module_id": 8011003, "code": "t03_eisei_kanri",         "name": "T3. Quy tắc vệ sinh thực phẩm",
     "module_type": "vocabulary", "topic": "eisei_haccp_allergen",  "difficulty": "basic",        "folder": "t03_eisei_kanri",         "topic_id": 3},
    {"position": 4,  "module_id": 8011004, "code": "t04_line_operation",      "name": "T4. Lần đầu đứng dây chuyền",
     "module_type": "grammar",    "topic": "line_kouttei",          "difficulty": "basic",        "folder": "t04_line_operation",      "topic_id": 4},
    {"position": 5,  "module_id": 8011005, "code": "t05_furyou_hin",          "name": "T5. Lần đầu mắc lỗi",
     "module_type": "grammar",    "topic": "mistake_apology_keigo", "difficulty": "intermediate", "folder": "t05_furyou_hin",          "topic_id": 5},
    {"position": 6,  "module_id": 8011006, "code": "t06_chukan_mensetsu",     "name": "T6. Nửa năm — Đánh giá giữa kỳ",
     "module_type": "grammar",    "topic": "interview_goals",       "difficulty": "intermediate", "folder": "t06_chukan_mensetsu",     "topic_id": 6},
    {"position": 7,  "module_id": 8011007, "code": "t07_matsuri_seikatsu",    "name": "T7. Mùa thu — Lễ hội & Đời sống",
     "module_type": "vocabulary", "topic": "festival_casual",       "difficulty": "intermediate", "folder": "t07_matsuri_seikatsu",    "topic_id": 7},
    {"position": 8,  "module_id": 8011008, "code": "t08_iso_audit",           "name": "T8. Khách kiểm tra audit",
     "module_type": "grammar",    "topic": "audit_iso22000",        "difficulty": "intermediate", "folder": "t08_iso_audit",           "topic_id": 8},
    {"position": 9,  "module_id": 8011009, "code": "t09_shihin_kaihatsu",     "name": "T9. Triển khai sản phẩm mới",
     "module_type": "grammar",    "topic": "new_product_meeting",   "difficulty": "intermediate", "folder": "t09_shihin_kaihatsu",     "topic_id": 9},
    # T10-T12 dùng topic_id 0,1,2 vì topic_id slot 1d
    {"position": 10, "module_id": 8011010, "code": "t10_recall_kuringu",      "name": "T10. Sự cố lớn — Recall",
     "module_type": "grammar",    "topic": "recall_complaint",      "difficulty": "advanced",     "folder": "t10_recall_kuringu",      "topic_id": 0},
    {"position": 11, "module_id": 8011011, "code": "t11_shourai_keikaku",     "name": "T11. Định hướng tương lai",
     "module_type": "grammar",    "topic": "future_certification",  "difficulty": "advanced",     "folder": "t11_shourai_keikaku",     "topic_id": 1},  # collision với T1, sẽ dùng kind=4 cho T11 BaiTap để phân biệt
    {"position": 12, "module_id": 8011012, "code": "t12_bonenkai_furikaeri",  "name": "T12. Một năm nhìn lại",
     "module_type": "grammar",    "topic": "yearend_reflection",    "difficulty": "advanced",     "folder": "t12_bonenkai_furikaeri",  "topic_id": 2},  # collision với T2
]


# Để tránh collision ID giữa T1↔T11, T2↔T12, T3↔T10:
# kind cho T1-T9 dùng 1 (BaiTap) / 2 (Mogi)
# kind cho T10-T12 dùng 5 (BaiTap) / 6 (Mogi)
def get_kinds_for_module(pos: int) -> tuple[int, int]:
    """Trả về (baitap_kind, mogishiken_kind) tuỳ position."""
    if pos <= 9:
        return (1, 2)
    else:
        return (5, 6)  # T10-T12 dùng kind 5/6


# ============================================================
# SQL helpers
# ============================================================

def sql_escape(text):
    if text is None:
        return "NULL"
    return "'" + str(text).replace("'", "''") + "'"


def sql_text_or_null(text):
    if text is None or text == "":
        return "NULL"
    return sql_escape(text)


def sql_jsonb(obj):
    if obj is None:
        return "NULL"
    return sql_escape(json.dumps(obj, ensure_ascii=False)) + "::jsonb"


# ============================================================
# ID functions
# ============================================================

def question_id(topic: int, kind: int, seq: int) -> int:
    """81 1 {topic:1d} {kind:1d} {seq:03d} — 9 digits, fit INT4.

    Format: 811 + topic + kind + seq (3 digits)
      topic: 0-9 (T10-T12 dùng 0,1,2 với kind=5/6)
      kind: 1=BaiTap T1-9, 2=Mogi T1-9, 5=BaiTap T10-12, 6=Mogi T10-12
      seq: 001-999
    Examples:
      T1 BaiTap q1 = 811110001 → 9 digits, fits INT4 max 2147483647
      T10 BaiTap q1 = 811050001
    """
    return 811000000 + topic * 100000 + kind * 10000 + seq


def passage_id(topic: int, section: int, kind_offset: int = 0) -> int:
    """81 1 {topic:1d} {kind_offset:1d} {section:2d} — 8 digits.
    kind_offset: 0 cho T1-T9, 5 cho T10-T12 (avoid collision)."""
    return 81100000 + topic * 1000 + kind_offset * 100 + section


def question_set_id(topic: int, kind: int, level: int) -> int:
    """81 1 {topic:1d} {kind:1d} {level:1d} — 7 digits.
    Format: 811 + topic*100 + kind*10 + level."""
    return 8110000 + topic * 100 + kind * 10 + level


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
        "11, "
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


def build_reading_passage_sql(pid: int, passage: dict) -> str:
    title = passage.get("title") or "Reading passage"
    content = passage.get("content_ja") or ""
    translation = passage.get("translation_vn") or ""
    word_count = passage.get("word_count") or 0
    difficulty = passage.get("difficulty") or 1
    jlpt_level = passage.get("jlpt_level") or "N4"
    category = passage.get("category") or "notice"

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
        f"{sql_escape(jlpt_level)}, "
        f"{sql_escape(category)}, "
        f"{difficulty}, "
        f"{word_count}, "
        "'system', TRUE, FALSE, NOW(), 'system'"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "title = EXCLUDED.title, "
        "content = EXCLUDED.content, "
        "translation = EXCLUDED.translation, "
        "jlpt_level = EXCLUDED.jlpt_level, "
        "category = EXCLUDED.category, "
        "difficulty = EXCLUDED.difficulty, "
        "word_count = EXCLUDED.word_count, "
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "updated_at = NOW(), "
        "updated_by = 'system';"
    )


def build_question_sql(qid: int, q: dict, content_type: str, passage_id_link=None, passage_translation=None) -> str:
    question_jp = q.get("question_jp") or ""
    question_vn = q.get("question_vn") or ""
    combined = question_jp
    if question_vn:
        combined = f"{question_jp}\n\n{question_vn}" if question_jp else question_vn

    explanation = q.get("explanation") or ""
    tip = q.get("tip") or ""
    if tip:
        explanation = f"{explanation}\n\n💡 {tip}".strip() if explanation else tip

    level_text = q.get("level") or "N4"
    is_dokkai = passage_id_link is not None
    question_type = q.get("question_type") or ("reading" if is_dokkai else "chon_dap_an")
    skill_category = q.get("skill_category") or ("dokkai" if is_dokkai else "grammar")
    selection_type = q.get("selection_type") or "single"

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
        f"{sql_escape(level_text)}, "
        f"{sql_escape(selection_type)}, "
        f"{sql_text_or_null(combined)}, "
        f"{sql_text_or_null(passage_field)}, "
        f"{sql_text_or_null(passage_translation)}, "
        f"{sql_text_or_null(explanation)}, "
        f"{sql_escape(skill_category)}, "
        "1, "
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
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "updated_at = NOW(), "
        "updated_by = 'system';"
    )


def build_answer_delete_sql(qid: int) -> str:
    return f"DELETE FROM questions_answers WHERE question_id = {qid};"


def build_answer_sql(qid: int, choice: dict, order: int) -> str:
    is_correct = choice.get("is_correct") or False
    sentence = choice.get("text") or ""
    translation = choice.get("text_translation")

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
# Process JSON files
# ============================================================

def process_baitap_file(json_path: Path, module: dict, lines: list, position_counter: dict):
    """Process 1 BaiTap.json — 40 questions, 4 sets by level."""
    data = json.loads(json_path.read_text(encoding="utf-8"))
    questions = data.get("questions") or []
    question_sets = data.get("question_sets") or []

    topic_id = module["topic_id"]
    baitap_kind, _ = get_kinds_for_module(module["position"])

    lines.append(f"-- BaiTap: {module['code']} ({len(questions)} questions)")

    # Insert questions + answers, build mapping json_id → sql_qid
    qid_by_jid = {}
    for seq, q in enumerate(questions, start=1):
        qid = question_id(topic_id, baitap_kind, seq)
        qid_by_jid[q["id"]] = qid
        content_type = f"jisshusei_baitap_{module['code']}"
        lines.append(build_question_sql(qid, q, content_type))
        lines.append(build_answer_delete_sql(qid))
        for order, choice in enumerate(q.get("choices") or [], start=1):
            lines.append(build_answer_sql(qid, choice, order))
    lines.append("")

    # Process question_sets — 4 sets by level
    for qs in question_sets:
        level = qs.get("module_position", 1)
        qsid = question_set_id(topic_id, baitap_kind, level)
        set_name = qs.get("name") or f"{module['name']} — Level {level}"
        set_desc = qs.get("description") or ""
        card_count = qs.get("card_count") or len(qs.get("question_ids") or [])
        set_type = qs.get("set_type") or "practice"

        lines.append(build_question_set_sql(qsid, set_name, set_desc, set_type, card_count))
        for order, jid in enumerate(qs.get("question_ids") or [], start=1):
            if jid in qid_by_jid:
                lines.append(build_set_question_link_sql(qsid, qid_by_jid[jid], order))

        # Link module ↔ set
        position_counter[module["module_id"]] += 1
        pos = position_counter[module["module_id"]]
        lines.append(build_resource_set_link_sql(module["module_id"], qsid, pos, label=set_name))
        lines.append("")

    return len(questions), len(question_sets)


def process_mogishiken_file(json_path: Path, module: dict, lines: list, position_counter: dict):
    """Process 1 Mogishiken.json — 5 sections × 4 reading questions."""
    data = json.loads(json_path.read_text(encoding="utf-8"))
    passages = data.get("reading_passages") or []
    questions = data.get("questions") or []
    question_sets = data.get("question_sets") or []

    topic_id = module["topic_id"]
    _, mogi_kind = get_kinds_for_module(module["position"])

    lines.append(f"-- Mogishiken: {module['code']} ({len(passages)} passages, {len(questions)} questions)")

    # Insert passages
    kind_offset = 5 if module["position"] >= 10 else 0
    pid_by_passage_id = {}
    for sec_idx, p in enumerate(passages, start=1):
        pid = passage_id(topic_id, sec_idx, kind_offset)
        pid_by_passage_id[p["id"]] = pid
        lines.append(build_reading_passage_sql(pid, p))
    lines.append("")

    # Insert questions + answers
    qid_by_jid = {}
    for seq, q in enumerate(questions, start=1):
        qid = question_id(topic_id, mogi_kind, seq)
        qid_by_jid[q["id"]] = qid
        passage_ref = q.get("passage_ref")
        passage_id_link = pid_by_passage_id.get(passage_ref) if passage_ref else None
        content_type = f"jisshusei_mogishiken_{module['code']}"
        lines.append(build_question_sql(qid, q, content_type, passage_id_link=passage_id_link))
        lines.append(build_answer_delete_sql(qid))
        for order, choice in enumerate(q.get("choices") or [], start=1):
            lines.append(build_answer_sql(qid, choice, order))
    lines.append("")

    # Process question_sets — 5 sets, 1 per section
    for qs_idx, qs in enumerate(question_sets, start=1):
        qsid = question_set_id(topic_id, mogi_kind, qs_idx)
        set_name = qs.get("name") or f"{module['name']} — Reading Section {qs_idx}"
        set_desc = qs.get("description") or ""
        card_count = qs.get("card_count") or len(qs.get("question_ids") or [])
        set_type = qs.get("set_type") or "reading"

        lines.append(build_question_set_sql(qsid, set_name, set_desc, set_type, card_count))
        for order, jid in enumerate(qs.get("question_ids") or [], start=1):
            if jid in qid_by_jid:
                lines.append(build_set_question_link_sql(qsid, qid_by_jid[jid], order))

        position_counter[module["module_id"]] += 1
        pos = position_counter[module["module_id"]]
        lines.append(build_resource_set_link_sql(module["module_id"], qsid, pos, label=set_name))
        lines.append("")

    return len(passages), len(questions), len(question_sets)


# ============================================================
# Main
# ============================================================

def main():
    if not BOOK_DIR.is_dir():
        raise FileNotFoundError(BOOK_DIR)

    SQL_OUT_DIR.mkdir(parents=True, exist_ok=True)

    lines = []
    lines.append("-- Hizashi — Một Năm của Hoa: Nhật Ký Thực Tập Sinh Ngành Thực Phẩm")
    lines.append(f"-- course_id = {COURSE_ID}, modules = 8011001..8011012")
    lines.append("-- Generated từ _shared/scripts/build_sql_jisshusei_shokuhin.py")
    lines.append("-- KHÔNG sửa thủ công.")
    lines.append("")
    lines.append("BEGIN;")
    lines.append("")

    # 1. Course + modules
    lines.append("-- 1) Course")
    lines.append(build_course_sql())
    lines.append("")
    lines.append("-- 2) Modules + course_modules")
    for module in MODULE_DEFS:
        lines.append(build_module_sql(module))
        lines.append(build_course_module_sql(module))
    lines.append("")

    # 2. Process each module
    position_counter = {m["module_id"]: 0 for m in MODULE_DEFS}
    total_q = 0
    total_passages = 0
    total_sets = 0

    for module in MODULE_DEFS:
        mod_dir = BOOK_DIR / module["folder"]
        baitap_path = mod_dir / f"{module['code']}_BaiTap.json"
        mogi_path = mod_dir / f"{module['code']}_Mogishiken.json"

        if baitap_path.exists():
            q_count, s_count = process_baitap_file(baitap_path, module, lines, position_counter)
            total_q += q_count
            total_sets += s_count
        else:
            print(f"[WARN] Missing: {baitap_path}")

        if mogi_path.exists():
            p_count, q_count, s_count = process_mogishiken_file(mogi_path, module, lines, position_counter)
            total_passages += p_count
            total_q += q_count
            total_sets += s_count
        else:
            print(f"[WARN] Missing: {mogi_path}")

    lines.append("COMMIT;")
    lines.append("")

    out_path = SQL_OUT_DIR / "jisshusei_shokuhin.sql"
    out_path.write_text("\n".join(lines), encoding="utf-8")

    print(f"Đã sinh SQL vào {out_path}")
    print(f"  course: 1")
    print(f"  modules: {len(MODULE_DEFS)}")
    print(f"  reading_passages: {total_passages}")
    print(f"  questions: {total_q}")
    print(f"  question_sets: {total_sets}")


if __name__ == "__main__":
    main()
