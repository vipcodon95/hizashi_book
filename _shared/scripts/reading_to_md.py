#!/usr/bin/env python3
"""Convert Reading Collection JSON batches → 1 file .md per bài đọc.

Layout mỗi file:

1. Front matter / header (id, JLPT, level, title JP + VI, topic, tags)
2. Bài đọc (text JP) + 4 câu hỏi (chỉ JP + đáp án A-D, KHÔNG hiện đáp án đúng)
3. Phần tham khảo (sau bài làm):
   - Bản dịch tổng
   - Process từng câu (sentence / chunks / guide / dịch)
   - Từ vựng
   - Ngữ pháp
   - Đáp án + giải thích

Usage:
    python3 reading_to_md.py <input_json_or_dir> [<output_root>]

Ví dụ:
    # convert 1 batch
    python3 reading_to_md.py books/reading_collection/n2_basic_drafts/batch_0341_0350.json

    # convert tất cả batches trong folder
    python3 reading_to_md.py books/reading_collection/n2_basic_drafts

    # convert toàn bộ collection (đệ quy mọi *_drafts)
    python3 reading_to_md.py books/reading_collection

Output mặc định: cùng folder với JSON, tạo subfolder `<level>_md/` chứa từng `R_NNNN.md`.
"""

from __future__ import annotations

import json
import sys
from pathlib import Path
from typing import Any


LETTERS = ["A", "B", "C", "D", "E", "F"]


def _md_escape(text: str) -> str:
    """Light escape — chỉ gỡ trailing whitespace, không touch markdown chars."""
    return text.rstrip() if text else ""


def render_reading_md(item: dict[str, Any]) -> str:
    rid = item.get("id", "R_????")
    jlpt = item.get("jlpt", "")
    level = item.get("level", "")
    level_label = item.get("level_label", "")
    title = item.get("title", "")
    title_vi = item.get("title_vi", "")
    topic = item.get("topic", "")
    subtopic = item.get("subtopic", "")
    tags = item.get("tags") or []
    grammar_used = item.get("grammar_used") or []
    sentence_count = item.get("sentence_count", "")
    text = item.get("text", "")
    translation = item.get("translation", "")
    vocabulary = item.get("vocabulary") or []
    process = item.get("process") or []
    comprehension = item.get("comprehension") or []

    out: list[str] = []

    # ── Header (Bài N + tiêu đề, dùng h2 — lớn hơn các section ###) ──
    # Tách số từ id "R_0001" → 1
    bai_num = ""
    if rid and rid.startswith("R_"):
        try:
            bai_num = str(int(rid[2:]))
        except ValueError:
            bai_num = rid[2:]
    header_main = f"## Bài {bai_num} · {title}" if title else f"## Bài {bai_num}"
    if title_vi:
        header_main += f" — _{title_vi}_"
    out.append(header_main)
    out.append("")

    # ── Bài đọc ──
    out.append("### Bài đọc")
    out.append("")
    out.append(_md_escape(text))
    out.append("")

    # ── Câu hỏi (KHÔNG show đáp án đúng) ──
    if comprehension:
        out.append("### Câu hỏi")
        out.append("")
        for idx, q in enumerate(comprehension, start=1):
            qid = q.get("id", f"{rid}_Q{idx}")
            qtext = q.get("question", "")
            out.append(f"**Q{idx}. {_md_escape(qtext)}**")
            out.append("")
            for ans_idx, ans in enumerate(q.get("answers") or []):
                letter = LETTERS[ans_idx] if ans_idx < len(LETTERS) else str(ans_idx + 1)
                out.append(f"- {letter}. {_md_escape(ans.get('text', ''))}")
            out.append("")
        out.append("---")
        out.append("")

    # Bản dịch tổng
    if translation:
        out.append("### Bản dịch")
        out.append("")
        out.append(_md_escape(translation))
        out.append("")

    # Đáp án + giải thích (ngay sau Bản dịch)
    if comprehension:
        out.append("### Đáp án & giải thích")
        out.append("")
        for idx, q in enumerate(comprehension, start=1):
            qtext = q.get("question", "")
            qtext_vi = q.get("question_vi", "")
            answers = q.get("answers") or []
            correct_letter = "?"
            correct_text = ""
            for ans_idx, ans in enumerate(answers):
                if ans.get("is_correct"):
                    correct_letter = LETTERS[ans_idx] if ans_idx < len(LETTERS) else str(ans_idx + 1)
                    correct_text = ans.get("text", "")
                    break
            explanation = _md_escape(q.get("explanation", ""))
            out.append(f"**Q{idx}.** {_md_escape(qtext)}")
            if qtext_vi:
                out.append(f"  _{_md_escape(qtext_vi)}_")
            out.append("")
            out.append(f"- **Đáp án đúng**: **{correct_letter}**. {_md_escape(correct_text)}")
            # show all answers with VI translation; correct answer = bold cả dòng
            for ans_idx, ans in enumerate(answers):
                letter = LETTERS[ans_idx] if ans_idx < len(LETTERS) else str(ans_idx + 1)
                vi = ans.get("text_vi", "")
                ans_text = _md_escape(ans.get("text", ""))
                if ans.get("is_correct"):
                    line = f"  - **{letter}. {ans_text}"
                    if vi:
                        line += f" — {_md_escape(vi)}"
                    line += "**"
                else:
                    line = f"  - {letter}. {ans_text}"
                    if vi:
                        line += f" — *{_md_escape(vi)}*"
                out.append(line)
            if explanation:
                out.append("")
                out.append(f"- **Giải thích**: {explanation}")
            out.append("")

    # Process từng câu
    if process:
        out.append("### Phân tích từng câu")
        out.append("")
        for idx, p in enumerate(process, start=1):
            sentence = _md_escape(p.get("sentence", ""))
            chunks = _md_escape(p.get("chunks", ""))
            guide = _md_escape(p.get("guide", ""))
            ptrans = _md_escape(p.get("translation", ""))
            out.append(f"**Câu {idx}.** {sentence}")
            out.append("")
            if chunks:
                out.append(f"- **Văn**: {chunks}")
            if guide:
                out.append(f"- **Dẫn**: {guide}")
            if ptrans:
                out.append(f"- **Dịch**: {ptrans}")
            out.append("")

    # Từ vựng
    if vocabulary:
        out.append("### Từ vựng")
        out.append("")
        out.append("| # | Từ | Cách đọc | Nghĩa |")
        out.append("|---|----|----------|-------|")
        for idx, v in enumerate(vocabulary, start=1):
            word = _md_escape(v.get("word", ""))
            reading = _md_escape(v.get("reading", ""))
            meaning = _md_escape(v.get("meaning", ""))
            out.append(f"| {idx} | {word} | {reading} | {meaning} |")
        out.append("")

    # Ngữ pháp
    if grammar_used:
        out.append("### Ngữ pháp sử dụng")
        out.append("")
        for g in grammar_used:
            out.append(f"- {_md_escape(g)}")
        out.append("")

    # ── Thông tin bài (chuyển từ đầu xuống cuối) ──
    # Map level_label "N5_basic" → "Cơ bản", "N5_advanced" → "Nâng cao"
    tier = ""
    ll_lower = (level_label or "").lower()
    if "_basic" in ll_lower:
        tier = "Cơ bản"
    elif "_advanced" in ll_lower:
        tier = "Nâng cao"
    elif "native" in ll_lower:
        tier = "Native"

    meta_lines: list[str] = []
    if jlpt:
        line = f"- **JLPT**: {jlpt}"
        if tier:
            line += f" — {tier}"
        meta_lines.append(line)
    if topic or subtopic:
        meta_lines.append(f"- **Chủ đề**: {topic}" + (f" / {subtopic}" if subtopic else ""))
    if sentence_count:
        meta_lines.append(f"- **Số câu**: {sentence_count}")
    if tags:
        meta_lines.append(f"- **Tags**: {', '.join(tags)}")
    if meta_lines:
        out.append("### Thông tin bài")
        out.append("")
        out.extend(meta_lines)
        out.append("")

    # ── Footer ──
    out.append("---")
    out.append("")
    out.append("_Hizashi book_")
    out.append("")

    return "\n".join(out).rstrip() + "\n"


def convert_batch(json_path: Path, out_root: Path | None = None) -> tuple[int, Path]:
    """Convert 1 batch JSON → multiple .md files. Trả về (số file, output dir)."""
    with json_path.open(encoding="utf-8") as f:
        data = json.load(f)
    if not isinstance(data, list):
        raise ValueError(f"{json_path} không phải list bài đọc")

    parent = json_path.parent
    level_folder = parent.name  # vd n2_basic_drafts
    if out_root is None:
        out_dir = parent.parent / "md" / level_folder.replace("_drafts", "_md")
    else:
        out_dir = out_root / level_folder.replace("_drafts", "_md")
    out_dir.mkdir(parents=True, exist_ok=True)

    n_written = 0
    for item in data:
        rid = item.get("id")
        if not rid:
            continue
        md_text = render_reading_md(item)
        (out_dir / f"{rid}.md").write_text(md_text, encoding="utf-8")
        n_written += 1
    return n_written, out_dir


def main(argv: list[str]) -> int:
    if len(argv) < 2:
        print(__doc__)
        return 1
    target = Path(argv[1])
    out_root = Path(argv[2]) if len(argv) >= 3 else None

    if not target.exists():
        print(f"❌ Không tìm thấy: {target}", file=sys.stderr)
        return 2

    json_paths: list[Path]
    if target.is_file():
        json_paths = [target]
    else:
        json_paths = sorted(target.rglob("batch_*.json"))

    if not json_paths:
        print(f"⚠️  Không có batch_*.json trong {target}", file=sys.stderr)
        return 3

    total = 0
    by_dir: dict[Path, int] = {}
    for jp in json_paths:
        try:
            n, out_dir = convert_batch(jp, out_root)
        except Exception as e:
            print(f"❌ {jp}: {e}", file=sys.stderr)
            continue
        total += n
        by_dir[out_dir] = by_dir.get(out_dir, 0) + n
        print(f"  ✓ {jp.name} → {n} files")

    print()
    print(f"✅ Done. {total} bài đọc → md")
    for d, n in by_dir.items():
        print(f"   - {d} ({n} files)")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
