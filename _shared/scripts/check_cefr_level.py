#!/usr/bin/env python3
"""Kiểm tra từ vựng trong văn bản tiếng Anh có vượt cấp CEFR mục tiêu không.

Usage:
    python3 _shared/scripts/check_cefr_level.py --sheet a1.12 file1.json [file2.md ...]   ← theo khoá Hizashi
    python3 _shared/scripts/check_cefr_level.py --level A1 file1.json [file2.md ...]
    python3 _shared/scripts/check_cefr_level.py --level A1 --text "Some English text"

- File .json (schema study-course-questions-builder): soát content_ja của reading_passages,
  question_jp và text của choices (tiếng Anh nằm ở các khoá này).
- File .md: chỉ soát dòng '> ' nằm ngay dưới heading '## Bài đọc …' (trước '### ').
- Báo: từ VƯỢT CẤP (có trong list nhưng cao hơn) và từ KHÔNG CÓ trong list (cần người xem).
- --sheet <mã phiếu>: vốn từ = mọi từ + grammar_words + collocations của các phiếu từ a1.01
  tới phiếu đó (cộng dồn, _shared/en_curriculum/), cộng từ CEFR-J của các cấp DƯỚI cấp hiện tại.
  Báo thêm: từ mới của unit chứa phiếu đó đã được dùng bao nhiêu.
- Tên riêng: từ viết hoa không đứng đầu câu bỏ qua; thêm --allow "Mai,Nam,Tom" để chắc.
"""
from __future__ import annotations
import argparse, csv, json, re, sys
from pathlib import Path

DATA = Path(__file__).resolve().parent.parent / "english_cefr"
ORDER = ["A1", "A2", "B1", "B2", "C1", "C2"]
IRREG = {
    "am": "be", "is": "be", "are": "be", "was": "be", "were": "be", "been": "be", "being": "be",
    "has": "have", "had": "have", "does": "do", "did": "do", "done": "do", "goes": "go", "went": "go",
    "gone": "go", "men": "man", "women": "woman", "children": "child", "people": "person",
    "feet": "foot", "teeth": "tooth", "mice": "mouse", "better": "good", "best": "good",
    "worse": "bad", "worst": "bad", "taught": "teach", "came": "come", "got": "get", "made": "make",
    "saw": "see", "seen": "see", "took": "take", "taken": "take", "gave": "give", "given": "give",
    "ate": "eat", "eaten": "eat", "wrote": "write", "written": "write", "bought": "buy",
    "thought": "think", "told": "tell", "said": "say", "left": "leave", "felt": "feel", "met": "meet",
    "ran": "run", "sat": "sit", "stood": "stand", "began": "begin", "knew": "know", "known": "know",
    "found": "find", "kept": "keep", "slept": "sleep", "spoke": "speak", "spoken": "speak",
    "lives": "live", "wives": "wife", "knives": "knife", "i'm": "i", "it's": "it", "don't": "do",
    "doesn't": "do", "can't": "can", "i've": "i", "you're": "you", "we're": "we", "they're": "they",
    "he's": "he", "she's": "she", "that's": "that", "let's": "let", "isn't": "be", "aren't": "be",
    "won't": "will", "o'clock": "o'clock",
}

def load() -> dict[str, str]:
    lv: dict[str, str] = {}
    for f in ("cefrj-vocabulary-profile-1.5.csv", "octanove-vocabulary-profile-c1c2-1.0.csv"):
        for r in csv.DictReader(open(DATA / f, encoding="utf-8")):
            for hw in r["headword"].split("/"):
                hw = hw.strip().lower()
                if not hw:
                    continue
                cur = lv.get(hw)
                if cur is None or ORDER.index(r["CEFR"]) < ORDER.index(cur):
                    lv[hw] = r["CEFR"]
    return lv

CURR = Path(__file__).resolve().parent.parent / "en_curriculum"

def load_curriculum(sheet: str):
    """Trả (known_words, unit_words, unit_title) cho mã phiếu, ví dụ 'a1.12'."""
    known: set[str] = set()
    for lvl in ("a1", "a2", "b1", "b2", "c1"):
        for u in json.load(open(CURR / f"{lvl}.json", encoding="utf-8"))["units"]:
            ids = [s["id"] for s in u["sheets"]]
            for s in u["sheets"]:
                for w in s["words"]:
                    known.update(x.lower() for x in re.findall(r"[A-Za-z']+", w["word"]))
                known.update(x.lower() for g in s["grammar_words"] + s.get("collocations", []) + s.get("phrasal", [])
                             for x in re.findall(r"[A-Za-z']+", g))
                if s["id"] == sheet:
                    unit_words = {w["word"].lower() for x in u["sheets"] if ids.index(x["id"]) <= ids.index(sheet)
                                  for w in x["words"]}
                    return known, unit_words, u["title"]["en"]
    sys.exit(f"Không tìm thấy phiếu {sheet}")

def candidates(w: str):
    yield w
    if w in IRREG:
        yield IRREG[w]
    for suf, rep in (("ies", "y"), ("ied", "y"), ("ing", ""), ("ing", "e"), ("ed", ""), ("ed", "e"),
                     ("es", ""), ("s", ""), ("er", ""), ("est", ""), ("ly", ""), ("'s", "")):
        if w.endswith(suf) and len(w) > len(suf) + 1:
            base = w[: -len(suf)] + rep
            yield base
            if len(base) > 2 and base[-1] == base[-2]:  # running -> run
                yield base[:-1]

def word_level(w: str, lv: dict[str, str]):
    found = [lv[c] for c in candidates(w) if c in lv]
    return min(found, key=ORDER.index) if found else None

def texts_from(path: Path) -> list[str]:
    if path.suffix == ".json":
        d = json.load(open(path, encoding="utf-8"))
        out = [p.get("content_ja", "") for p in d.get("reading_passages") or []]
        for q in d.get("questions") or []:
            out.append(q.get("question_jp") or "")
            out += [c.get("text", "") for c in q.get("choices") or []]
        return out
    out, in_reading = [], False
    for l in path.read_text(encoding="utf-8").splitlines():
        if l.startswith("## "):
            in_reading = l.startswith("## Bài đọc")
        elif l.startswith("### "):
            in_reading = False
        if in_reading and l.startswith("> "):
            out.append(l[2:])
    return out

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--level", choices=ORDER)
    ap.add_argument("--sheet", help="mã phiếu khoá Hizashi, vd a1.12")
    ap.add_argument("--allow", default="", help="tên riêng/từ cho phép, cách nhau dấu phẩy")
    ap.add_argument("--text")
    ap.add_argument("files", nargs="*")
    a = ap.parse_args()
    if not (a.level or a.sheet):
        ap.error("cần --level hoặc --sheet")
    lv = load()
    known: set[str] | None = None
    if a.sheet:
        known, unit_words, unit_title = load_curriculum(a.sheet.lower())
        a.level = a.sheet[:2].upper()
        lower = ORDER[: ORDER.index(a.level)]
        known |= {w for w, l in lv.items() if l in lower}
    allow = {x.strip().lower() for x in a.allow.split(",") if x.strip()}
    texts = [a.text] if a.text else [t for f in a.files for t in texts_from(Path(f))]
    target = ORDER.index(a.level)
    over: dict[str, str] = {}
    outside: set[str] = set()
    used: set[str] = set()
    unknown: set[str] = set()
    total = 0
    for t in texts:
        for sent in re.split(r"(?<=[.!?:])\s+|\n+", t):
            toks = re.findall(r"[A-Za-z]+(?:'[A-Za-z]+)?", sent)
            for i, tok in enumerate(toks):
                total += 1
                w = tok.lower()
                if w.endswith("'s"):
                    w = w[:-2]
                if w in allow or (tok[0].isupper() and i > 0 and w != "i"):
                    continue
                if known is not None:
                    if not any(c in known for c in candidates(w)):
                        outside.add(w)
                    used.update(candidates(w))
                    continue
                l = word_level(w, lv)
                if l is None:
                    unknown.add(w)
                elif ORDER.index(l) > target:
                    over[w] = l
    if known is not None:
        print(f"Tổng {total} từ | vốn từ tới phiếu {a.sheet} (unit: {unit_title})")
        print(f"NGOÀI PHẠM VI ({len(outside)}) — cần chú nghĩa hoặc thay:", ", ".join(sorted(outside)) or "—")
        hit = sorted(w for w in unit_words if all(x in used for x in w.split()))
        miss = sorted(unit_words - set(hit))
        print(f"TỪ CỦA UNIT ĐÃ DÙNG {len(hit)}/{len(unit_words)}:", ", ".join(hit))
        print("  chưa dùng:", ", ".join(miss) or "—")
        return 0
    print(f"Tổng {total} từ | mục tiêu ≤ {a.level}")
    print(f"VƯỢT CẤP ({len(over)}):", ", ".join(f"{w}[{l}]" for w, l in sorted(over.items())) or "—")
    print(f"KHÔNG CÓ TRONG LIST ({len(unknown)}):", ", ".join(sorted(unknown)) or "—")
    return 1 if over else 0

if __name__ == "__main__":
    sys.exit(main())
