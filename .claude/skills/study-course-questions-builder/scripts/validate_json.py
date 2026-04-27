#!/usr/bin/env python3
"""
Validate JSON file theo schema của skill `study-course-questions-builder`.

Usage:
    python validate_json.py <path/to/file.json>

Trả về exit code 0 nếu pass, 1 nếu fail.
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path
from typing import Any

# Valid values verified từ DB Hizashi
VALID_QUESTION_TYPES = {
    "chon_dap_an", "dien_tu", "dau_sao", "dien_tu_ngu_phap",
    "chon_dap_an_ngu_phap", "reading", "bunmyaku", "iikae", "youhou",
    "khoang_trong", "kingi_chikan", "kanji_yomi", "kanji_kaki",
    "hoshi", "gokeisei", "reorder", "chunking", "sokuji_outou",
    "kadai_rikai", "point_rikai", "gaiyou_rikai", "hyouki",
    "hatsuwa_hyougen", "tougou_rikai",
}

VALID_SELECTION_TYPES = {"single", "multi", "order", "short"}

VALID_SET_TYPES = {
    "practice", "reading", "review", "quiz",
    "midterm_exam", "final_exam", "completion_test",
}

VALID_SKILL_CATEGORIES = {
    "mojigoi", "bunpou", "dokkai", "choukai", "grammar", "vocab", None,
}

VALID_AUDIO_TYPES = {
    "audio", "youtube", "conversation", "conversation_line",
    "situation_options",
}

# Box-drawing characters gây lỗi Flutter render
BOX_DRAWING_PATTERN = re.compile(r"[━─═│]{3,}|├──|└──|┌──|┐|┘|─{5,}")


class Validator:
    def __init__(self, file_path: Path):
        self.file_path = file_path
        self.errors: list[str] = []
        self.warnings: list[str] = []
        self.data: dict[str, Any] = {}

    def err(self, msg: str) -> None:
        self.errors.append(msg)

    def warn(self, msg: str) -> None:
        self.warnings.append(msg)

    def run(self) -> bool:
        if not self._load_file():
            return False

        self._check_top_level()
        self._check_meta()
        passages = self._check_reading_passages()
        questions = self._check_questions(passages)
        self._check_question_sets(questions, passages)
        self._check_no_box_drawing()

        return len(self.errors) == 0

    def _load_file(self) -> bool:
        if not self.file_path.is_file():
            self.err(f"File không tồn tại: {self.file_path}")
            return False
        try:
            self.data = json.loads(self.file_path.read_text(encoding="utf-8"))
        except json.JSONDecodeError as e:
            self.err(f"JSON invalid: {e}")
            return False
        if not isinstance(self.data, dict):
            self.err("Top-level phải là object {}")
            return False
        return True

    def _check_top_level(self) -> None:
        required = ["meta", "questions", "question_sets"]
        for key in required:
            if key not in self.data:
                self.err(f"Thiếu key bắt buộc: '{key}'")
        if "_schema_version" not in self.data:
            self.warn("Thiếu '_schema_version' (khuyến nghị thêm để track migration)")

    def _check_meta(self) -> None:
        meta = self.data.get("meta")
        if not isinstance(meta, dict):
            self.err("'meta' phải là object")
            return
        for key in ("title", "title_vn", "module_code"):
            if not meta.get(key):
                self.err(f"meta.{key} bắt buộc và không được rỗng")
        total = meta.get("total_questions")
        questions = self.data.get("questions") or []
        if isinstance(total, int) and total != len(questions):
            self.err(f"meta.total_questions ({total}) != len(questions) ({len(questions)})")

    def _check_reading_passages(self) -> set[str]:
        passages = self.data.get("reading_passages")
        passage_ids: set[str] = set()
        if passages is None:
            return passage_ids
        if not isinstance(passages, list):
            self.err("'reading_passages' phải là list")
            return passage_ids
        for i, p in enumerate(passages):
            ctx = f"reading_passages[{i}]"
            if not isinstance(p, dict):
                self.err(f"{ctx}: phải là object")
                continue
            pid = p.get("id")
            if not pid:
                self.err(f"{ctx}: thiếu 'id'")
            elif pid in passage_ids:
                self.err(f"{ctx}: id trùng '{pid}'")
            else:
                passage_ids.add(pid)
            for k in ("title", "content_ja"):
                if not p.get(k):
                    self.err(f"{ctx}: thiếu '{k}' (bắt buộc)")
            cat = p.get("category")
            if cat and cat not in {
                "email", "article", "letter", "notice",
                "advertisement", "essay", "story", "report", "memo",
            }:
                self.warn(f"{ctx}: category='{cat}' không thuộc list tiêu chuẩn")
        return passage_ids

    def _check_questions(self, passage_ids: set[str]) -> set[str]:
        questions = self.data.get("questions") or []
        question_ids: set[str] = set()
        if not isinstance(questions, list):
            self.err("'questions' phải là list")
            return question_ids

        for i, q in enumerate(questions):
            ctx = f"questions[{i}]"
            if not isinstance(q, dict):
                self.err(f"{ctx}: phải là object")
                continue

            # ID
            qid = q.get("id")
            if not qid:
                self.err(f"{ctx}: thiếu 'id'")
            elif qid in question_ids:
                self.err(f"{ctx}: id '{qid}' trùng")
            else:
                question_ids.add(qid)

            # question_type
            qt = q.get("question_type")
            if not qt:
                self.err(f"{ctx}: thiếu 'question_type'")
            elif qt not in VALID_QUESTION_TYPES:
                self.err(f"{ctx}: question_type='{qt}' không valid (xem question_types.md)")

            # selection_type
            st = q.get("selection_type", "single")
            if st not in VALID_SELECTION_TYPES:
                self.err(f"{ctx}: selection_type='{st}' không valid")

            # skill_category
            sc = q.get("skill_category")
            if sc not in VALID_SKILL_CATEGORIES:
                self.warn(f"{ctx}: skill_category='{sc}' không thuộc list tiêu chuẩn")

            # passage_ref nếu là reading
            if qt in {"reading", "gaiyou_rikai", "tougou_rikai"}:
                pref = q.get("passage_ref")
                if not pref:
                    self.err(f"{ctx}: question_type='{qt}' bắt buộc 'passage_ref'")
                elif pref not in passage_ids:
                    self.err(f"{ctx}: passage_ref='{pref}' không tồn tại trong reading_passages")

            # question text
            if not q.get("question_jp") and not q.get("question_vn"):
                self.warn(f"{ctx}: thiếu cả question_jp và question_vn")

            # choices
            choices = q.get("choices")
            if not isinstance(choices, list):
                self.err(f"{ctx}: 'choices' phải là list (KHÔNG phải dict)")
                continue
            if isinstance(choices, dict):
                self.err(f"{ctx}: 'choices' đang là dict — anti-pattern, đổi sang list of objects")
                continue

            self._check_choices(choices, st, qt, ctx)

            # audio_data
            ad = q.get("audio_data")
            if ad is not None:
                if not isinstance(ad, dict):
                    self.err(f"{ctx}: audio_data phải là object")
                elif "type" not in ad:
                    self.err(f"{ctx}: audio_data thiếu field 'type'")
                elif ad["type"] not in VALID_AUDIO_TYPES:
                    self.err(f"{ctx}: audio_data.type='{ad['type']}' không valid")

            # Anti-pattern: 'answer' field at question level
            if "answer" in q:
                self.err(f"{ctx}: KHÔNG dùng 'answer' ở question level — gắn 'is_correct: true' vào option")

            # Anti-pattern: 'question_ja' (sai chính tả)
            if "question_ja" in q:
                self.err(f"{ctx}: 'question_ja' sai — phải là 'question_jp'")
            if "explanation_vn" in q:
                self.err(f"{ctx}: 'explanation_vn' sai — phải là 'explanation'")

        return question_ids

    def _check_choices(
        self, choices: list, selection_type: str, question_type: str, ctx: str
    ) -> None:
        # Số lượng
        expected = 4
        if question_type == "sokuji_outou":
            expected = 3
        if len(choices) != expected:
            self.warn(
                f"{ctx}: số choices ({len(choices)}) != expected cho "
                f"{question_type} ({expected})"
            )

        # Mỗi choice
        ids_seen: set[str] = set()
        correct_count = 0
        for j, c in enumerate(choices):
            cctx = f"{ctx}.choices[{j}]"
            if not isinstance(c, dict):
                self.err(f"{cctx}: phải là object")
                continue
            cid = c.get("id")
            if not cid:
                self.err(f"{cctx}: thiếu 'id'")
            elif cid in ids_seen:
                self.err(f"{cctx}: id trùng '{cid}'")
            else:
                ids_seen.add(cid)

            if "text" not in c:
                self.err(f"{cctx}: thiếu 'text'")

            ic = c.get("is_correct")
            if not isinstance(ic, bool):
                self.err(f"{cctx}: 'is_correct' phải là bool, không phải {type(ic).__name__}")
            elif ic is True:
                correct_count += 1

            if "order" not in c:
                self.warn(f"{cctx}: thiếu 'order' (khuyến nghị 0-based)")

        # Selection type ↔ correct count
        if selection_type == "single" and correct_count != 1:
            self.err(
                f"{ctx}: selection_type='single' phải có ĐÚNG 1 option is_correct=true "
                f"(hiện có {correct_count})"
            )
        if selection_type == "multi" and correct_count < 1:
            self.err(f"{ctx}: selection_type='multi' phải có ≥1 option is_correct=true")
        if selection_type == "order" and correct_count != 1:
            self.err(
                f"{ctx}: selection_type='order' phải có ĐÚNG 1 option is_correct=true "
                f"(option ở vị trí ★)"
            )

    def _check_question_sets(self, question_ids: set[str], passage_ids: set[str]) -> None:
        sets = self.data.get("question_sets") or []
        if not isinstance(sets, list):
            self.err("'question_sets' phải là list")
            return

        set_ids: set[str] = set()
        for i, s in enumerate(sets):
            ctx = f"question_sets[{i}]"
            if not isinstance(s, dict):
                self.err(f"{ctx}: phải là object")
                continue

            sid = s.get("set_id")
            if not sid:
                self.err(f"{ctx}: thiếu 'set_id'")
            elif sid in set_ids:
                self.err(f"{ctx}: set_id trùng '{sid}'")
            else:
                set_ids.add(sid)

            if not s.get("name"):
                self.err(f"{ctx}: thiếu 'name'")

            stype = s.get("set_type")
            if not stype:
                self.err(f"{ctx}: thiếu 'set_type'")
            elif stype not in VALID_SET_TYPES:
                self.err(f"{ctx}: set_type='{stype}' không valid (xem database_schema.md)")

            if "module_position" not in s:
                self.warn(f"{ctx}: thiếu 'module_position' (khuyến nghị explicit)")

            qids = s.get("question_ids")
            if not isinstance(qids, list) or len(qids) == 0:
                self.err(f"{ctx}: 'question_ids' phải là list không rỗng")
            else:
                for qid in qids:
                    if qid not in question_ids:
                        self.err(f"{ctx}: question_id='{qid}' không tồn tại trong questions[]")
                cc = s.get("card_count")
                if isinstance(cc, int) and cc != len(qids):
                    self.warn(f"{ctx}: card_count ({cc}) != len(question_ids) ({len(qids)})")

            pref = s.get("reading_passage_ref")
            if pref and pref not in passage_ids:
                self.err(f"{ctx}: reading_passage_ref='{pref}' không tồn tại")

    def _check_no_box_drawing(self) -> None:
        """Scan toàn bộ string fields tìm box-drawing chars."""
        def walk(node: Any, path: str) -> None:
            if isinstance(node, str):
                if BOX_DRAWING_PATTERN.search(node):
                    self.err(
                        f"{path}: chứa box-drawing chars (━/─/═/│/├──/└──) — "
                        "gây lỗi Flutter render. Dùng markdown list/table."
                    )
            elif isinstance(node, dict):
                for k, v in node.items():
                    walk(v, f"{path}.{k}")
            elif isinstance(node, list):
                for i, v in enumerate(node):
                    walk(v, f"{path}[{i}]")

        walk(self.data, "<root>")


def main() -> int:
    if len(sys.argv) < 2:
        print("Usage: python validate_json.py <path/to/file.json>")
        return 1

    file_path = Path(sys.argv[1]).resolve()
    print(f"Validating: {file_path}\n")

    v = Validator(file_path)
    ok = v.run()

    if v.errors:
        print(f"❌ {len(v.errors)} ERROR(S):")
        for e in v.errors:
            print(f"  - {e}")
    if v.warnings:
        print(f"\n⚠️  {len(v.warnings)} WARNING(S):")
        for w in v.warnings:
            print(f"  - {w}")

    if ok:
        print(f"\n✅ PASS — {file_path.name} hợp lệ.")
        if v.warnings:
            print("   (vẫn còn warnings — review để tối ưu)")
        return 0
    else:
        print(f"\n❌ FAIL — sửa các lỗi trên rồi chạy lại.")
        return 1


if __name__ == "__main__":
    sys.exit(main())
