#!/usr/bin/env python3
"""Build 1 chương sách đọc hiểu tiếng Anh từ file NGUỒN `*_BaiTap.json`.

Usage:
    python3 _shared/scripts/build_en_reading.py books/56_english_a1/u03_family_friends/u03_FamilyFriends_BaiTap.json

NGUỒN SỰ THẬT = file JSON. Người viết chỉ sửa:
  - reading_passages[].segments   ← từng câu: {n, para, kind, speaker, label, en, vi}
  - questions[]                    ← question_jp/question_vn, choices, explanation, evidence_segments
  - lesson                         ← mục tiêu, danh sách từ trọng tâm, mẹo

Script tự sinh lại (đừng sửa tay):
  - reading_passages[].content_ja / translation_vn / word_count   (giữ tương thích schema cũ)
  - file `*_DocHieu.md` cùng thư mục
và kiểm tra:
  - n liên tục 1..N, mỗi segment có en + vi
  - evidence_segments trỏ tới segment có thật, và đoạn tiếng Anh trích trong explanation
    ("...") phải nằm trong các segment đó
  - đúng 1 đáp án đúng / câu, 4 lựa chọn
Thoát mã 1 nếu có lỗi.

Segment:
  kind    : "title" | "sentence" | "signature"   (title/signature không cần đọc khi shadowing)
  speaker : tên người nói (hội thoại / tin nhắn) — tách riêng khỏi `en` để TTS không đọc tên
  label   : nhãn đầu đoạn, vd "1." (chỉ hiển thị, TTS bỏ qua)
  para    : số đoạn — các segment cùng para + cùng speaker ghép thành 1 đoạn hiển thị
"""
from __future__ import annotations
import json, re, sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CURR = ROOT / "_shared" / "en_curriculum"
POS_VI = {"noun": "danh từ", "verb": "động từ", "adj": "tính từ", "adv": "trạng từ",
          "interj": "thán từ", "phrase": "cụm từ", "prep": "giới từ", "conj": "liên từ",
          "pron": "đại từ", "det": "từ hạn định", "num": "số từ"}
errors: list[str] = []

def err(m: str) -> None:
    errors.append(m)

def curriculum_words(sheets: list[str]) -> dict[str, tuple[str, str, str]]:
    out: dict[str, tuple[str, str, str]] = {}
    for lvl in {s.split(".")[0] for s in sheets}:
        for u in json.load(open(CURR / f"{lvl}.json", encoding="utf-8"))["units"]:
            for s in u["sheets"]:
                if s["id"] in sheets:
                    for w in s["words"]:
                        out[w["word"]] = (w["vi"], w["pos"], s["id"])
    return out

def paragraphs(segs: list[dict]) -> list[tuple[str | None, str | None, str, list[dict]]]:
    """Gom segment → đoạn: (speaker, label, kind, [segments])."""
    out: list = []
    for s in segs:
        key = (s.get("para"), s.get("speaker"))
        if out and out[-1][0] == key:
            out[-1][1].append(s)
        else:
            out.append((key, [s]))
    return [(k[1], g[0].get("label"), g[0].get("kind", "sentence"), g) for k, g in out]

def para_text(speaker, label, segs, field="en") -> str:
    body = " ".join(s[field] for s in segs)
    if label:
        body = f"{label} {body}"
    return f"{speaker}: {body}" if speaker else body

def check_passage(p: dict) -> dict[int, dict]:
    segs = p.get("segments") or []
    if not segs:
        err(f"{p['id']}: thiếu segments")
    for i, s in enumerate(segs, 1):
        if s.get("n") != i:
            err(f"{p['id']}: segment thứ {i} có n={s.get('n')} (phải liên tục 1..N)")
        for k in ("en", "vi"):
            if not (s.get(k) or "").strip():
                err(f"{p['id']} câu {s.get('n')}: thiếu '{k}'")
        if s.get("kind", "sentence") not in ("title", "sentence", "signature"):
            err(f"{p['id']} câu {s.get('n')}: kind='{s.get('kind')}' không hợp lệ")
    # sinh trường tương thích schema cũ
    paras = paragraphs(segs)
    p["content_ja"] = "\n\n".join(para_text(sp, lb, g) for sp, lb, _, g in paras)
    p["translation_vn"] = "\n".join(
        f"({s['n']}) " + (f"{s['speaker']}: " if s.get("speaker") else "") + s["vi"] for s in segs)
    p["word_count"] = len(re.findall(r"[A-Za-z']+", " ".join(s["en"] for s in segs)))
    return {s["n"]: s for s in segs}

def ev_label(ev: list[int]) -> str:
    if not ev:
        return ""
    if len(ev) > 1 and ev == list(range(ev[0], ev[-1] + 1)):
        return f"Câu {ev[0]}–{ev[-1]}"
    return "Câu " + ", ".join(map(str, ev))

def main(path: Path) -> int:
    d = json.load(open(path, encoding="utf-8"))
    meta, lesson = d["meta"], d.get("lesson") or {}
    seg_maps = {p["id"]: check_passage(p) for p in d.get("reading_passages") or []}
    d["meta"]["total_questions"] = len(d["questions"])
    d["meta"]["total_passages"] = len(d.get("reading_passages") or [])

    for q in d["questions"]:
        ch = q["choices"]
        if len(ch) != 4 or sum(c["is_correct"] for c in ch) != 1:
            err(f"{q['id']}: phải 4 lựa chọn, đúng 1 đáp án đúng")
        segs = seg_maps.get(q.get("passage_ref"), {})
        ev = q.get("evidence_segments") or []
        for n in ev:
            if n not in segs:
                err(f"{q['id']}: evidence_segments có câu {n} không tồn tại trong {q.get('passage_ref')}")
        quoted = re.findall(r'"([^"]+)"', q.get("explanation", ""))
        if ev and quoted:
            src = " ".join(segs[n]["en"] for n in ev if n in segs)
            q1 = quoted[0].rstrip(".…!?, ")
            if q1 not in src:
                err(f"{q['id']}: trích \"{q1}\" không nằm trong câu {ev}")

    # ---------- render md ----------
    L: list[str] = []
    sheets = meta.get("curriculum_sheets") or []
    L += [f"# {meta['title']} ({meta['title_vn']})", ""]
    if lesson.get("practice_for"):
        L += [f"> **Luyện cho:** {lesson['practice_for']}", ">"]
    L += [f"> **Mục tiêu:** {lesson.get('objective', '')}", "", "---", ""]
    vocab = lesson.get("vocab") or []
    if vocab:
        cw = curriculum_words(sheets)
        L += ["## Từ vựng trước khi đọc", "", "| Từ | Loại từ | Nghĩa | Phiếu |", "|---|---|---|---|"]
        for w in vocab:
            if w not in cw:
                err(f"lesson.vocab: '{w}' không có trong các phiếu {sheets}")
                continue
            vi, pos, sid = cw[w]
            L.append(f"| {w} | {POS_VI.get(pos, pos)} | {vi} | `{sid}` |")
        L.append("")
        if lesson.get("phrases_note"):
            L += [f"> 📌 {lesson['phrases_note']}", ""]
        L += ["---", ""]

    qnum = 0
    for p in d.get("reading_passages") or []:
        L += [f"## {p['heading_vn']}", ""]
        for sp, lb, kind, g in paragraphs(p["segments"]):
            body = " ".join(s["en"] for s in g)
            if kind == "title":
                txt = f"**{body}**"
            elif sp:
                txt = f"**{sp}:** {body}"
            else:
                txt = f"{lb} {body}" if lb else body
            L += [f"> {txt}", ">"]
        L[-1] = ""
        L += ["### Dịch từng câu", "", "| # | Tiếng Anh | Tiếng Việt |", "|---|---|---|"]
        for s in p["segments"]:
            who = f"**{s['speaker']}:** " if s.get("speaker") else ""
            L.append(f"| {s['n']} | {who}{s['en']} | {s['vi']} |")
        L += ["", "### Câu hỏi", ""]
        for q in [q for q in d["questions"] if q["passage_ref"] == p["id"]]:
            qnum += 1
            q["_num"] = qnum
            L += [f"**{qnum}. {q['question_jp']}**", f"*({q['question_vn']})*", ""]
            L += [f"- {c['id']}. {c['text']} *({c['text_translation']})*" for c in q["choices"]]
            L.append("")
        L += ["---", ""]

    if lesson.get("tips"):
        L += ["## 💡 Mẹo làm bài", ""] + [f"- {t}" for t in lesson["tips"]] + ["", "---", ""]
    L += ["## Đáp án & giải thích", "", "| Câu | Đáp án | Giải thích |", "|---|---|---|"]
    for q in d["questions"]:
        ok = next(c["id"] for c in q["choices"] if c["is_correct"])
        evl = ev_label(q.get("evidence_segments") or [])
        L.append(f"| {q.pop('_num')} | **{ok}** | {(evl + ': ') if evl else ''}{q['explanation']} |")
    md = "\n".join(L) + "\n"
    if any(c in md for c in "━─═├└│"):
        err("md có box-drawing chars")

    if errors:
        print("❌ LỖI:\n  " + "\n  ".join(errors))
        return 1
    path.write_text(json.dumps(d, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    md_path = path.with_name(path.name.replace("_BaiTap.json", "_DocHieu.md"))
    md_path.write_text(md, encoding="utf-8")
    words = [p["word_count"] for p in d["reading_passages"]]
    avg = []
    for p in d["reading_passages"]:
        ss = [s for s in p["segments"] if s.get("kind", "sentence") == "sentence"]
        avg.append(round(sum(len(re.findall(r"[A-Za-z']+", s["en"])) for s in ss) / max(len(ss), 1), 1))
    answers = "".join(next(c["id"] for c in q["choices"] if c["is_correct"]) for q in d["questions"])
    print(f"✅ {path.name} → {md_path.name} | bài đọc {words} từ, TB {avg} từ/câu | {len(d['questions'])} câu | đáp án {answers}")
    return 0

if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    sys.exit(main(Path(sys.argv[1])))
