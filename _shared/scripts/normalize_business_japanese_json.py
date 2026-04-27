#!/usr/bin/env python3
"""
Chuẩn hoá toàn bộ file JSON trong books/10_business_japanese/ về Schema A duy nhất.

Schema A (chuẩn — dùng cho mọi file BaiTap + Mogishiken):

    BaiTap:
    {
      "meta": { ... },
      "questions": [
        {
          "id": "...",
          "level": 1,
          "level_name": "Cơ bản",
          "category": "...",
          "question_jp": "...",
          "question_vn": "...",
          "choices": [
            {"key": "A", "jp": "...", "vn": "..." | null},
            ...
          ],
          "answer": "C",
          "explanation": "...",
          "tip": "..."          # optional
        }
      ]
    }

    Mogishiken:
    {
      "meta": { ... },
      "sections": [
        {
          "section_id": 1,
          "level": 1,
          "level_name": "Cơ bản",
          "document_type": "...",
          "situation_vn": "...",
          "passage_ja": "...",
          "questions": [ <giống BaiTap question> ]
        }
      ]
    }

Mapping từ Schema B (Group 2 — JuzuDoushi/UchiSoto/Ukemi/TongHopSoSanh):
  question_ja          → question_jp
  explanation_vn       → explanation
  choices DICT {A: ja} → choices LIST [{key, jp, vn=null}]
  category_vn          → giữ; category gốc bỏ qua nếu trùng nghĩa
  level (1-4 không có level_name) → tự suy ra level_name từ map

KHÔNG đụng file gốc — ghi sang books/10_business_japanese/_normalized/.
"""

from __future__ import annotations

import json
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
SOURCE_DIR = ROOT / "books" / "10_business_japanese"
OUT_DIR = SOURCE_DIR / "_normalized"

# Suy ra level_name khi schema B không có.
LEVEL_NAME_FALLBACK = {
    1: "Cơ bản",
    2: "Trung cấp",
    3: "Nâng cao",
    4: "Tổng hợp",
    5: "Mô phỏng đề thi",
}


def normalize_choices(raw, source_schema: str) -> list[dict]:
    """Chuẩn hoá choices về LIST [{key, jp, vn}]."""
    if isinstance(raw, list):
        # Schema A — đã đúng. Đảm bảo có đủ key/jp/vn.
        out = []
        for item in raw:
            out.append({
                "key": item.get("key"),
                "jp": item.get("jp"),
                "vn": item.get("vn"),
            })
        return out
    if isinstance(raw, dict):
        # Schema B — DICT {A: jp_text}. vn không có → null.
        out = []
        for key in sorted(raw.keys()):
            out.append({
                "key": key,
                "jp": raw[key],
                "vn": None,
            })
        return out
    return []


def normalize_question(q: dict) -> dict:
    """Convert 1 question (Schema A hoặc B) về Schema A."""
    # Tên field câu hỏi: question_jp (A) hoặc question_ja (B).
    question_jp = q.get("question_jp") or q.get("question_ja") or ""
    question_vn = q.get("question_vn") or ""

    # Schema flag để normalize choices đúng cách.
    is_schema_b = "question_ja" in q
    choices = normalize_choices(q.get("choices"), "B" if is_schema_b else "A")

    # Explanation: Schema A có 'explanation', B có 'explanation_vn'.
    explanation = q.get("explanation") or q.get("explanation_vn") or ""

    # Category: A có 'category' (vn), B có 'category' (jp) + 'category_vn'.
    if is_schema_b:
        # Ưu tiên category_vn cho field 'category' chuẩn.
        category = q.get("category_vn") or q.get("category") or ""
    else:
        category = q.get("category", "")

    # level_name: A có sẵn, B không → fallback.
    level = q.get("level")
    level_name = q.get("level_name")
    if not level_name and isinstance(level, int):
        level_name = LEVEL_NAME_FALLBACK.get(level, "")

    out = {
        "id": q.get("id"),
        "level": level,
        "level_name": level_name,
        "category": category,
        "question_jp": question_jp,
        "question_vn": question_vn,
        "choices": choices,
        "answer": q.get("answer"),
        "explanation": explanation,
    }

    # Optional fields giữ nếu có.
    if "tip" in q and q["tip"]:
        out["tip"] = q["tip"]
    if "question_type" in q:  # chỉ Mogishiken 2.1.5 có
        out["question_type"] = q["question_type"]
    return out


def normalize_section(s: dict) -> dict:
    """Mogishiken section."""
    return {
        "section_id": s.get("section_id"),
        "level": s.get("level"),
        "level_name": s.get("level_name") or LEVEL_NAME_FALLBACK.get(s.get("level"), ""),
        "document_type": s.get("document_type", ""),
        "situation_vn": s.get("situation_vn", ""),
        "passage_ja": s.get("passage_ja", ""),
        "word_count": s.get("word_count"),
        "difficulty_note": s.get("difficulty_note"),
        "questions": [normalize_question(q) for q in s.get("questions") or []],
    }


def normalize_file(src_path: Path) -> dict:
    raw = json.loads(src_path.read_text(encoding="utf-8"))
    out = {"meta": raw.get("meta", {})}
    if "questions" in raw:
        out["questions"] = [normalize_question(q) for q in raw["questions"]]
    elif "sections" in raw:
        out["sections"] = [normalize_section(s) for s in raw["sections"]]
    return out


def main() -> None:
    if OUT_DIR.exists():
        shutil.rmtree(OUT_DIR)
    OUT_DIR.mkdir(parents=True)

    # Quét tất cả JSON, giữ cấu trúc thư mục module.
    json_files = list(SOURCE_DIR.rglob("*.json"))
    # Bỏ qua file đã trong _normalized.
    json_files = [p for p in json_files if "_normalized" not in p.parts]

    summary: list[tuple[str, int]] = []
    for src in sorted(json_files):
        rel = src.relative_to(SOURCE_DIR)
        dst = OUT_DIR / rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        normalized = normalize_file(src)
        dst.write_text(
            json.dumps(normalized, ensure_ascii=False, indent=2),
            encoding="utf-8",
        )
        # Đếm questions.
        if "questions" in normalized:
            count = len(normalized["questions"])
        elif "sections" in normalized:
            count = sum(len(s.get("questions", [])) for s in normalized["sections"])
        else:
            count = 0
        summary.append((str(rel), count))
        print(f"  ✓ {rel}  ({count} questions)")

    print(f"\nĐã chuẩn hoá {len(summary)} file vào {OUT_DIR}")
    print(f"Tổng questions: {sum(c for _, c in summary)}")


if __name__ == "__main__":
    main()
