#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Xuất 1 file JSON bài tập → markdown dễ đọc để phân tích logic."""
import json, pathlib, sys

def choice_text(v):
    if isinstance(v, dict):
        jp = v.get("jp", ""); vn = v.get("vn", "")
        return f"{jp}" + (f"  /  {vn}" if vn else "")
    return str(v)

def dump(path):
    d = json.loads(pathlib.Path(path).read_text(encoding="utf-8"))
    out = []
    # gom câu (BaiTap thường, hoặc Mogishiken sections)
    sections = d.get("sections")
    name = pathlib.Path(path).name
    out.append(f"# Phân tích: {name}\n")
    if sections:
        for s in sections:
            out.append(f"\n--- ĐỀ ĐỌC HIỂU (section {s.get('section_id','')}) — {s.get('document_type','')} ---")
            out.append(f"Tình huống: {s.get('situation_vn','')}")
            out.append(f"PASSAGE (JP):\n{s.get('passage_ja','')}")
            out.append(f"PASSAGE (VN):\n{s.get('passage_vn','')}\n")
            for q in s.get("questions", []):
                out += render_q(q)
    else:
        qs = d.get("questions", [])
        out.append(f"Tổng {len(qs)} câu\n")
        for q in qs:
            out += render_q(q)
    return "\n".join(out)

def render_q(q):
    o = []
    qja = q.get("question_ja") or q.get("question_jp") or ""
    qvn = q.get("question_vn", "")
    ans = q.get("answer", "")
    expl = q.get("explanation") or q.get("explanation_vn") or ""
    tip = q.get("tip", "")
    cat = q.get("category") or q.get("category_vn") or ""
    o.append(f"### Câu {q.get('id','?')} [{q.get('level_name', q.get('level',''))}] — {cat}")
    if qja: o.append(f"- Hỏi (JP): {qja}")
    if qvn: o.append(f"- Hỏi (VN): {qvn}")
    ch = q.get("choices", {})
    pairs = sorted(ch.items()) if isinstance(ch, dict) else [(c.get("key"), choice_text(c)) for c in ch]
    for k, v in pairs:
        mark = "  ← ĐÁP ÁN" if k == ans else ""
        o.append(f"  - {k}. {choice_text(v)}{mark}")
    o.append(f"- Đáp án đúng: {ans}")
    if expl: o.append(f"- Giải thích: {expl}")
    if tip: o.append(f"- Mẹo: {tip}")
    o.append("")
    return o

if __name__ == "__main__":
    print(dump(sys.argv[1]))
