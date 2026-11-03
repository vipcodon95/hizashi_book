#!/usr/bin/env python3
"""Build 1 chương sách đọc hiểu tiếng Anh từ file NGUỒN `*_BaiTap.json`.

Usage:
    python3 _shared/scripts/build_en_reading.py <chương>_BaiTap.json

NGUỒN SỰ THẬT = file JSON. Mọi đoạn chữ là một BẢN ĐỒ NGÔN NGỮ `{"en": …, "vi": …, "ja": …}`:

  meta.languages                 ["vi"]  ← ngôn ngữ người học sách hỗ trợ (thêm "ja", "th"… sau)
  meta.title_i18n                {en, vi}
  meta.story_time_i18n           {vi}
  meta.characters                ["Harriet Brooks", …]  (tên riêng, không dịch)
  lesson.practice_for_i18n / objective_i18n             {vi}
  lesson.vocab                   (bỏ trống = TỰ CHỌN: từ của unit có xuất hiện trong bài, theo thứ tự gặp, tối đa VOCAB_MAX;
                                 hoặc ghi danh sách ["word", …] nếu muốn chọn tay). Nghĩa lấy từ khoá (_shared/en_curriculum)
  lesson.extra_words             [{word, i18n: {vi}}]   ← từ ngoài phạm vi, chú nghĩa
  lesson.phrases                 [{i18n: {en, vi}}]
  lesson.tips                    [{i18n: {vi}}]
  reading_passages[].heading_i18n  {vi}
  reading_passages[].segments[]  {n, para, kind, speaker, label, i18n: {en, vi}}
  questions[].i18n               {en, vi}          (câu hỏi)
  questions[].choices[].i18n     {en, vi}
  questions[].explanation_i18n   {vi}   questions[].tip_i18n {vi}
  questions[].evidence_segments  [n, …]

Script SINH (đừng sửa tay):
  - khoá cũ để tương thích schema/app hiện tại (lấy từ "vi"): content_ja, translation_vn, word_count,
    question_jp, question_vn, choices[].text / text_translation, explanation, tip, meta.title / title_vn …
  - file md cho từng ngôn ngữ: `_DocHieu.md` (vi), `_DocHieu.<lang>.md` (ngôn ngữ khác).
    Nhãn mục (Dịch từng câu, Câu hỏi…) lấy từ bảng LABELS bên dưới — thống nhất cho mọi chương.
Kiểm tra: đủ bản dịch cho mọi ngôn ngữ trong meta.languages; n liên tục; evidence_segments hợp lệ;
đoạn trích "…" trong giải thích nằm trong câu được trỏ; 4 lựa chọn, đúng 1 đáp án đúng.
"""
from __future__ import annotations
import json, re, sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CURR = ROOT / "_shared" / "en_curriculum"
LEGACY = "vi"  # ngôn ngữ dùng để sinh khoá cũ (question_vn, translation_vn…)
VOCAB_MAX = 10
NAMES = ("Mitchell Megan Tracy Trevor Tina Biscuit Carter Carters Harriet Nathan Helena Amy Brooks Leah Ethan Hayes "
         "Chloe Bennett Lydia Park Westview").split()

def _forms(w: str) -> set[str]:
    out = {w}
    for suf, rep in (("ies", "y"), ("ied", "y"), ("ing", ""), ("ing", "e"), ("ed", ""), ("ed", "e"),
                     ("es", ""), ("s", ""), ("'s", "")):
        if w.endswith(suf) and len(w) > len(suf) + 1:
            out.add(w[: -len(suf)] + rep)
    return out

def auto_vocab(d: dict, cw: dict) -> list[str]:
    """Từ của unit có trong bài đọc, theo thứ tự xuất hiện. Bỏ từ quá cơ bản (số đếm, chào hỏi 1 chữ)."""
    text = " ".join(s["i18n"]["en"] for p in d["reading_passages"] for s in p["segments"]
                    if s.get("kind", "sentence") != "signature")
    # bỏ tên riêng của dàn nhân vật (Biscuit = tên chó, Park = họ cô Lydia…) để không bị lấy nhầm thành từ thường
    text = re.sub(r"\b(" + "|".join(NAMES) + r")('s)?\b", " ", text)
    low = text.lower()
    toks = re.findall(r"[a-zà-ÿ']+", low)
    pos: dict[str, int] = {}
    for w in cw:
        wl = w.lower()
        if " " in wl:
            i = low.find(wl)
            if i >= 0:
                pos[w] = i
            continue
        for k, t in enumerate(toks):
            if wl in _forms(t):
                pos[w] = low.find(t) if k == 0 else len(" ".join(toks[:k]))
                break
    skip = {"num", "interj"}
    picked = sorted((w for w in pos if cw[w]["pos"] not in skip), key=pos.get)
    if len(picked) < VOCAB_MAX:  # thiếu thì bù số đếm/thán từ
        picked += sorted((w for w in pos if cw[w]["pos"] in skip), key=pos.get)
    return picked[:VOCAB_MAX]

LABELS = {
    "vi": {
        "practice_for": "Luyện cho", "characters": "Nhân vật", "objective": "Mục tiêu",
        "vocab": "Từ vựng trước khi đọc", "vocab_cols": "| Từ | Loại từ | Nghĩa | Phiếu |",
        "extra": "**Từ ngoài bài học** (chưa có trong khoá tới unit này, xem nghĩa để đọc trôi):",
        "extra_cols": "| Từ | Nghĩa |", "phrases": "Cụm hay gặp trong bài:",
        "translation": "Dịch từng câu", "translation_cols": "| # | Tiếng Anh | Tiếng Việt |",
        "questions": "Câu hỏi", "tips": "💡 Mẹo làm bài", "answers": "Đáp án & giải thích",
        "answers_cols": "| Câu | Đáp án | Giải thích |", "sentence": "Câu",
        "pos": {"noun": "danh từ", "verb": "động từ", "adj": "tính từ", "adv": "trạng từ", "interj": "thán từ",
                "phrase": "cụm từ", "prep": "giới từ", "conj": "liên từ", "pron": "đại từ", "det": "từ hạn định",
                "num": "số từ"},
    },
    # "ja": {...}, "th": {...}  ← thêm khi làm bản dịch mới; giữ nguyên các khoá như bản "vi"
}
errors: list[str] = []

def err(m: str) -> None:
    errors.append(m)

def need(node: dict | None, langs: list[str], where: str, with_en: bool = False) -> None:
    for lg in (["en"] if with_en else []) + langs:
        if not (node or {}).get(lg, "").strip():
            err(f"{where}: thiếu bản '{lg}'")

def curriculum_words(sheets: list[str]) -> dict[str, dict]:
    out: dict[str, dict] = {}
    for lvl in sorted({s.split(".")[0] for s in sheets}):
        for u in json.load(open(CURR / f"{lvl}.json", encoding="utf-8"))["units"]:
            for s in u["sheets"]:
                if s["id"] in sheets:
                    for w in s["words"]:
                        out[w["word"]] = {**w, "sheet": s["id"]}
    return out

def _is_line(s: dict) -> bool:
    """Dòng kiểu nhãn / bảng (không kết thúc bằng dấu câu) → hiển thị trên dòng riêng."""
    en = s["i18n"].get("en", "").strip()
    m = re.match(r"^([A-Z][^.!?:]{0,30}):\s", en)
    if m and not s.get("speaker") and len(m.group(1).split()) <= 3 and len(en) <= 60:  # "Adult: $6", "Sunday: 7 a.m. to 11 p.m."
        return True
    return not re.search(r"[.!?…\"”')]$", en)

def paragraphs(segs: list[dict]):
    out: list = []
    for s in segs:
        key = (s.get("para"), s.get("speaker"))
        if out and out[-1][0] == key and not _is_line(out[-1][1][-1]) and not _is_line(s):
            out[-1][1].append(s)
        else:
            out.append((key, [s]))
    return [(k[1], g[0].get("label"), g[0].get("kind", "sentence"), g) for k, g in out]

def ev_label(ev: list[int], word: str) -> str:
    if not ev:
        return ""
    if len(ev) > 1 and ev == list(range(ev[0], ev[-1] + 1)):
        return f"{word} {ev[0]}–{ev[-1]}"
    return f"{word} " + ", ".join(map(str, ev))

def validate_and_legacy(d: dict) -> list[str]:
    meta, lesson = d["meta"], d.setdefault("lesson", {})
    langs = meta.get("languages") or ["vi"]
    for lg in langs:
        if lg not in LABELS:
            err(f"meta.languages có '{lg}' nhưng LABELS chưa có bảng nhãn cho ngôn ngữ này")
    need(meta.get("title_i18n"), langs, "meta.title_i18n", with_en=True)
    for k in ("practice_for_i18n", "objective_i18n"):
        need(lesson.get(k), langs, f"lesson.{k}")
    for e in lesson.get("extra_words") or []:
        need(e.get("i18n"), langs, f"lesson.extra_words '{e.get('word')}'")
    for i, p in enumerate(lesson.get("phrases") or []):
        need(p.get("i18n"), langs, f"lesson.phrases[{i}]", with_en=True)
    for i, t in enumerate(lesson.get("tips") or []):
        need(t.get("i18n"), langs, f"lesson.tips[{i}]")

    meta["title"] = meta["title_i18n"]["en"]
    meta["title_vn"] = meta["title_i18n"].get(LEGACY, "")
    seg_maps = {}
    for p in d.get("reading_passages") or []:
        need(p.get("heading_i18n"), langs, f"{p['id']}.heading_i18n")
        segs = p.get("segments") or []
        if not segs:
            err(f"{p['id']}: thiếu segments")
        for i, s in enumerate(segs, 1):
            if s.get("n") != i:
                err(f"{p['id']}: segment thứ {i} có n={s.get('n')} (phải liên tục 1..N)")
            need(s.get("i18n"), langs, f"{p['id']} câu {s.get('n')}", with_en=True)
            if s.get("kind", "sentence") not in ("title", "sentence", "signature"):
                err(f"{p['id']} câu {s.get('n')}: kind='{s.get('kind')}' không hợp lệ")

        def ptxt(sp, lb, g, lg):
            body = " ".join(s["i18n"].get(lg, "") for s in g)
            body = f"{lb} {body}" if lb else body
            return f"{sp}: {body}" if sp else body
        p["content_ja"] = "\n\n".join(ptxt(sp, lb, g, "en") for sp, lb, _, g in paragraphs(segs))
        p["translation_vn"] = "\n".join(
            f"({s['n']}) " + (f"{s['speaker']}: " if s.get("speaker") else "") + s["i18n"].get(LEGACY, "") for s in segs)
        p["word_count"] = len(re.findall(r"[A-Za-zÀ-ÿ']+", " ".join(s["i18n"].get("en", "") for s in segs)))
        seg_maps[p["id"]] = {s["n"]: s for s in segs}

    for q in d["questions"]:
        need(q.get("i18n"), langs, f"{q['id']}.i18n", with_en=True)
        need(q.get("explanation_i18n"), langs, f"{q['id']}.explanation_i18n")
        if q.get("tip_i18n"):
            need(q["tip_i18n"], langs, f"{q['id']}.tip_i18n")
        ch = q["choices"]
        if len(ch) != 4 or sum(bool(c.get("is_correct")) for c in ch) != 1:
            err(f"{q['id']}: phải 4 lựa chọn, đúng 1 đáp án đúng")
        for c in ch:
            need(c.get("i18n"), langs, f"{q['id']} lựa chọn {c.get('id')}", with_en=True)
            c["text"] = c["i18n"].get("en", "")
            c["text_translation"] = c["i18n"].get(LEGACY, "")
        q["question_jp"] = q["i18n"].get("en", "")
        q["question_vn"] = q["i18n"].get(LEGACY, "")
        q["explanation"] = q["explanation_i18n"].get(LEGACY, "")
        if q.get("tip_i18n"):
            q["tip"] = q["tip_i18n"].get(LEGACY, "")
        segs = seg_maps.get(q.get("passage_ref"), {})
        ev = q.get("evidence_segments") or []
        for n in ev:
            if n not in segs:
                err(f"{q['id']}: evidence_segments có câu {n} không tồn tại trong {q.get('passage_ref')}")
        src = " ".join(segs[n]["i18n"].get("en", "") for n in ev if n in segs)
        for lg in langs:
            quoted = re.findall(r'"([^"]+)"', (q.get("explanation_i18n") or {}).get(lg, ""))
            if ev and quoted:
                q1 = quoted[0].rstrip(".…!?, ")
                if q1 not in src:
                    err(f"{q['id']} ({lg}): trích \"{q1}\" không nằm trong câu {ev}")
    meta["total_questions"] = len(d["questions"])
    meta["total_passages"] = len(d.get("reading_passages") or [])
    for qs in d.get("question_sets") or []:
        p = next((p for p in d["reading_passages"] if p["id"] == qs.get("reading_passage_ref")), None)
        if p:
            qs["name"] = p["heading_i18n"].get(LEGACY, qs.get("name", ""))
    return langs

def render_md(d: dict, lg: str) -> str:
    meta, lesson, T = d["meta"], d["lesson"], LABELS[lg]
    tr = lambda node: (node or {}).get(lg, "")
    L = [f"# {meta['title_i18n']['en']} ({tr(meta['title_i18n'])})", ""]
    L += [f"> **{T['practice_for']}:** {tr(lesson.get('practice_for_i18n'))}", ">"]
    if meta.get("characters"):
        st = tr(meta.get("story_time_i18n"))
        L += [f"> **{T['characters']}:** {', '.join(meta['characters'])}" + (f" · {st}" if st else ""), ">"]
    L += [f"> **{T['objective']}:** {tr(lesson.get('objective_i18n'))}", "", "---", ""]

    cw = curriculum_words(meta.get("curriculum_sheets") or [])
    vocab = lesson.get("vocab") or auto_vocab(d, cw)
    if vocab:
        L += [f"## {T['vocab']}", "", T["vocab_cols"], "|---|---|---|---|"]
        for w in vocab:
            if w not in cw:
                err(f"lesson.vocab: '{w}' không có trong các phiếu {meta.get('curriculum_sheets')}")
                continue
            if not cw[w].get(lg):
                err(f"lesson.vocab: '{w}' chưa có nghĩa '{lg}' trong khoá học")
            L.append(f"| {w} | {T['pos'].get(cw[w]['pos'], cw[w]['pos'])} | {cw[w].get(lg, '')} | `{cw[w]['sheet']}` |")
        L.append("")
        if lesson.get("extra_words"):
            L += [T["extra"], "", T["extra_cols"], "|---|---|"]
            L += [f"| {e['word']} | {tr(e['i18n'])} |" for e in lesson["extra_words"]]
            L.append("")
        if lesson.get("phrases"):
            ph = ", ".join(f"*{p['i18n']['en']}* ({tr(p['i18n'])})" for p in lesson["phrases"])
            L += [f"> 📌 {T['phrases']} {ph}.", ""]
        L += ["---", ""]

    qnum, nums = 0, {}
    for p in d["reading_passages"]:
        L += [f"## {tr(p['heading_i18n'])}", ""]
        for sp, lb, kind, g in paragraphs(p["segments"]):
            body = " ".join(s["i18n"]["en"] for s in g)
            txt = f"**{body}**" if kind == "title" else (f"**{sp}:** {body}" if sp else (f"{lb} {body}" if lb else body))
            L += [f"> {txt}", ">"]
        L[-1] = ""
        L += [f"### {T['translation']}", "", T["translation_cols"], "|---|---|---|"]
        for s in p["segments"]:
            who = f"**{s['speaker']}:** " if s.get("speaker") else ""
            L.append(f"| {s['n']} | {who}{s['i18n']['en']} | {tr(s['i18n'])} |")
        L += ["", f"### {T['questions']}", ""]
        for q in [q for q in d["questions"] if q["passage_ref"] == p["id"]]:
            qnum += 1
            nums[q["id"]] = qnum
            L += [f"**{qnum}. {q['i18n']['en']}**", f"*({tr(q['i18n'])})*", ""]
            L += [f"- {c['id']}. {c['i18n']['en']} *({tr(c['i18n'])})*" for c in q["choices"]]
            L.append("")
        L += ["---", ""]
    if lesson.get("tips"):
        L += [f"## {T['tips']}", ""] + [f"- {tr(t['i18n'])}" for t in lesson["tips"]] + ["", "---", ""]
    L += [f"## {T['answers']}", "", T["answers_cols"], "|---|---|---|"]
    for q in d["questions"]:
        ok = next(c["id"] for c in q["choices"] if c["is_correct"])
        evl = ev_label(q.get("evidence_segments") or [], T["sentence"])
        L.append(f"| {nums.get(q['id'], '?')} | **{ok}** | {(evl + ': ') if evl else ''}{tr(q['explanation_i18n'])} |")
    md = "\n".join(L) + "\n"
    if any(c in md for c in "━─═├└│"):
        err(f"md ({lg}) có box-drawing chars")
    return md

def main(path: Path) -> int:
    d = json.load(open(path, encoding="utf-8"))
    langs = validate_and_legacy(d)
    mds = {lg: render_md(d, lg) for lg in langs if lg in LABELS} if not errors else {}
    if errors:
        print("❌ LỖI:\n  " + "\n  ".join(errors))
        return 1
    path.write_text(json.dumps(d, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    stem = re.sub(r"_(BaiTap|Mogishiken)\.json$", "_DocHieu", path.name)
    for lg, md in mds.items():
        path.with_name(f"{stem}.md" if lg == "vi" else f"{stem}.{lg}.md").write_text(md, encoding="utf-8")
    words = [p["word_count"] for p in d["reading_passages"]]
    avg = []
    for p in d["reading_passages"]:
        ss = [s for s in p["segments"] if s.get("kind", "sentence") == "sentence"]
        avg.append(round(sum(len(re.findall(r"[A-Za-zÀ-ÿ']+", s["i18n"]["en"])) for s in ss) / max(len(ss), 1), 1))
    answers = "".join(next(c["id"] for c in q["choices"] if c["is_correct"]) for q in d["questions"])
    print(f"✅ {path.name} → md {langs} | bài đọc {words} từ, TB {avg} từ/câu | {len(d['questions'])} câu | đáp án {answers}")
    return 0

if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    sys.exit(main(Path(sys.argv[1])))
