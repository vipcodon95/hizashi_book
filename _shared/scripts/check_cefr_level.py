#!/usr/bin/env python3
"""Soát vốn từ + ngữ pháp của bài đọc tiếng Anh theo khoá Hizashi (hoặc theo cấp CEFR).

Usage:
    python3 _shared/scripts/check_cefr_level.py <chương>_BaiTap.json        ← tự lấy phiếu cuối trong meta.curriculum_sheets
    python3 _shared/scripts/check_cefr_level.py --sheet a1.12 file.json [file.md ...]
    python3 _shared/scripts/check_cefr_level.py --level A1 --text "Some English text"

Soát gì:
- JSON: segments[].i18n.en, questions[].i18n.en, choices[].i18n.en (khoá cũ nếu chưa có i18n).
- MD: dòng '> ' ngay dưới heading '## Bài đọc …'.

Theo khoá (--sheet hoặc tự lấy từ JSON):
- VỐN TỪ tới phiếu X = mọi từ + grammar_words + collocations + phrasal của các phiếu từ a1.01 tới X
  (cộng dồn, _shared/en_curriculum/), + từ CEFR-J tới HẾT cấp hiện tại (sách ôn — KE_HOACH mục 7b).
- Từ đã chú nghĩa trong `lesson.extra_words` của JSON được chấp nhận (liệt kê riêng).
- NGOÀI PHẠM VI: từ không có trong vốn từ → thay, hoặc thêm vào lesson.extra_words kèm nghĩa.
- ⚠️ NGỮ PHÁP CHƯA HỌC: cấu trúc mà khoá dạy ở phiếu SAU X (quá khứ, will, tiếp diễn, so sánh…).
  Đây là cảnh báo theo mẫu câu, có thể bắt nhầm — đọc lại câu rồi mới quyết.
- Độ phủ: bao nhiêu từ của unit chứa X đã được dùng.

Tên riêng: tên trong dàn nhân vật + địa danh khoá học được cho phép sẵn; thêm --allow "Name1,Name2".
Thoát mã 1 nếu có từ ngoài phạm vi (chế độ khoá) hoặc từ vượt cấp (chế độ --level).
"""
from __future__ import annotations
import argparse, csv, json, re, sys
from pathlib import Path

BASE = Path(__file__).resolve().parent.parent
DATA = BASE / "english_cefr"
CURR = BASE / "en_curriculum"
ORDER = ["A1", "A2", "B1", "B2", "C1", "C2"]
LEVELS = ("a1", "a2", "b1", "b2", "c1")

CAST = ("Mitchell Megan Tracy Trevor Tina Biscuit Carter Carters Harriet Nathan Helena Amy Brooks Leah Ethan Hayes "
        "Chloe Bennett Lydia Park Maple Street San Diego Westview High Mr Mrs Ms Dr "
        "Washington New York Philadelphia Miami Savannah Asheville Aspen Maui Monterey Mississippi Baltimore "
        "Orleans Mammoth Cave Georgetown California America American English")

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
    "drank": "drink", "drove": "drive", "flew": "fly", "swam": "swim", "sang": "sing", "won": "win",
    "lost": "lose", "paid": "pay", "sent": "send", "spent": "spend", "brought": "bring", "caught": "catch",
    "ate": "eat", "became": "become", "began": "begin", "begun": "begin", "bent": "bend", "bit": "bite", "bitten": "bite", "bought": "buy", "bound": "bind", "bred": "breed", "broke": "break", "broken": "break", "brought": "bring", "built": "build", "burnt": "burn", "came": "come", "caught": "catch", "chose": "choose", "chosen": "choose", "dealt": "deal", "drank": "drink", "drawn": "draw", "dreamt": "dream", "drew": "draw", "driven": "drive", "drove": "drive", "drunk": "drink", "dug": "dig", "eaten": "eat", "fallen": "fall", "fed": "feed", "fell": "fall", "felt": "feel", "fled": "flee", "flew": "fly", "flown": "fly", "flung": "fling", "forgave": "forgive", "forgiven": "forgive", "forgot": "forget", "forgotten": "forget", "fought": "fight", "found": "find", "froze": "freeze", "frozen": "freeze", "gave": "give", "given": "give", "gone": "go", "got": "get", "gotten": "get", "grew": "grow", "grown": "grow", "heard": "hear", "held": "hold", "hid": "hide", "hidden": "hide", "hit": "hit", "hung": "hang", "hurt": "hurt", "kept": "keep", "knelt": "kneel", "knew": "know", "known": "know", "laid": "lay", "lain": "lie", "lay": "lie", "leapt": "leap", "learnt": "learn", "led": "lead", "left": "leave", "lent": "lend", "lit": "light", "lost": "lose", "made": "make", "meant": "mean", "met": "meet", "mistook": "mistake", "overslept": "oversleep", "paid": "pay", "put": "put", "quit": "quit", "ran": "run", "rang": "ring", "read": "read", "ridden": "ride", "risen": "rise", "rode": "ride", "rose": "rise", "rung": "ring", "said": "say", "sang": "sing", "sank": "sink", "sat": "sit", "saw": "see", "seen": "see", "sent": "send", "set": "set", "shook": "shake", "shot": "shoot", "shown": "show", "shut": "shut", "slept": "sleep", "slid": "slide", "smelt": "smell", "sold": "sell", "sought": "seek", "sped": "speed", "spelt": "spell", "spent": "spend", "spilt": "spill", "split": "split", "spoilt": "spoil", "spoke": "speak", "spoken": "speak", "spread": "spread", "stole": "steal", "stolen": "steal", "stood": "stand", "struck": "strike", "stuck": "stick", "sung": "sing", "sunk": "sink", "swam": "swim", "swept": "sweep", "swum": "swim", "swung": "swing", "taken": "take", "taught": "teach", "thought": "think", "threw": "throw", "thrown": "throw", "told": "tell", "took": "take", "tore": "tear", "torn": "tear", "understood": "understand", "went": "go", "wept": "weep", "withdrew": "withdraw", "woke": "wake", "woken": "wake", "won": "win", "wore": "wear", "worn": "wear", "wound": "wind", "written": "write", "wrote": "write", 
    "cannot": "can", "mustn't": "must", "shouldn't": "should", "couldn't": "could", "wouldn't": "would", "didn't": "do",
    "wasn't": "be", "weren't": "be", "hadn't": "have", "needn't": "need", "mightn't": "might", "shan't": "shall",
    "lives": "live", "wives": "wife", "knives": "knife", "i'm": "i", "it's": "it", "don't": "do",
    "doesn't": "do", "can't": "can", "i've": "i", "you're": "you", "we're": "we", "they're": "they",
    "he's": "he", "she's": "she", "that's": "that", "let's": "let", "isn't": "be", "aren't": "be",
    "first": "one", "second": "two", "third": "three", "fifth": "five", "eighth": "eight", "ninth": "nine",
    "twelfth": "twelve", "twentieth": "twenty", "thirtieth": "thirty",
    "won't": "will", "what's": "what", "where's": "where", "who's": "who", "here's": "here",
    "there's": "there", "haven't": "have", "hasn't": "have", "you've": "you", "we've": "we",
    "they've": "they", "i'll": "i", "you'll": "you", "we'll": "we", "they'll": "they", "he'll": "he", "she'll": "she", "it'll": "it", "we'd": "we", "i'd": "i", "you'd": "you", "they'd": "they", "o'clock": "o'clock",
}
PAST_IRR = {k for k, v in IRREG.items() if k in (
    "went saw did had came got made took gave ate wrote bought thought told said left felt met ran sat stood "
    "began knew found kept slept spoke drank drove flew swam sang won lost paid sent spent taught brought caught").split()}

# (regex trên câu đã lowercase, mã ngữ pháp trong grammar.json, mô tả)
GATES = [
    (r"\b(was|were|wasn't|weren't)\b", "64", "quá khứ của be (was/were)"),
    (r"PAST", "65", "quá khứ đơn (V-ed / bất quy tắc)"),
    (r"\b(am|is|are|'m|'s|'re)\s+(not\s+)?ING", "61", "hiện tại tiếp diễn (be + V-ing)"),
    (r"\bgoing to\b", "122", "be going to"),
    (r"\b(will|won't)\b|\w'll\b", "69", "tương lai với will"),
    (r"\bthan\b", "38", "so sánh hơn (… than)"),
    (r"\bwould\b|\w'd like\b", "142", "would / would like"),
    (r"\bthere (is|are|isn't|aren't)\b|\bthere's\b", "146", "there is / there are"),
    (r"\blet's\b", "120", "Let's"),
    (r"\b(has|have|'ve|'s)\s+(not\s+)?got\b", "s5", "have got"),
    (r"\bcould\b", "124", "could"),
    (r"\b(has|have|had) to\b", "127", "have to"),
    (r"\bmust\b|\bmustn't\b", "135", "must"),
    (r"\bshould\b", "139", "should"),
    (r"\b(has|have|'ve|hasn't|haven't)\s+(not\s+)?(been|PP)\b", "62", "hiện tại hoàn thành"),
    (r"MAY", "132", "may / might"),
    (r"\bif\b", "156", "câu điều kiện if"),
    (r"\bused to\b", "140", "used to"),
]

def load_cefr() -> tuple[dict[str, str], set[str], set[str]]:
    lv: dict[str, str] = {}
    verbs: set[str] = set()
    adjs: set[str] = set()
    for f in ("cefrj-vocabulary-profile-1.5.csv", "octanove-vocabulary-profile-c1c2-1.0.csv"):
        for r in csv.DictReader(open(DATA / f, encoding="utf-8")):
            for hw in r["headword"].split("/"):
                hw = hw.strip().lower()
                if not hw:
                    continue
                if lv.get(hw) is None or ORDER.index(r["CEFR"]) < ORDER.index(lv[hw]):
                    lv[hw] = r["CEFR"]
                if r["pos"] == "verb":
                    verbs.add(hw)
                elif r["pos"] in ("adjective", "noun"):
                    adjs.add(hw)
    return lv, verbs, adjs

def sheet_order() -> list[dict]:
    out = []
    for lvl in LEVELS:
        for ui, u in enumerate(json.load(open(CURR / f"{lvl}.json", encoding="utf-8"))["units"], 1):
            for s in u["sheets"]:
                out.append({**s, "_unit": ui, "_unit_title": u["title"]["en"], "_unit_ids": [x["id"] for x in u["sheets"]]})
    return out

def tokens_of(text: str) -> list[str]:
    return [x.lower() for x in re.findall(r"[A-Za-zÀ-ÿ']+", text)]

def candidates(w: str):
    yield w
    if w in IRREG:
        yield IRREG[w]
    for suf, rep in (("iest", "y"), ("ier", "y"), ("th", ""), ("ves", "f"), ("ves", "fe"), ("ies", "y"), ("ied", "y"), ("ing", ""), ("ing", "e"), ("ed", ""), ("ed", "e"),
                     ("es", ""), ("s", ""), ("er", ""), ("est", ""), ("ly", ""), ("'s", "")):
        if w.endswith(suf) and len(w) > len(suf) + 1:
            base = w[: -len(suf)] + rep
            yield base
            if len(base) > 2 and base[-1] == base[-2]:
                yield base[:-1]

def texts_from(path: Path) -> tuple[list[str], dict]:
    if path.suffix == ".json":
        d = json.load(open(path, encoding="utf-8"))
        out = []
        for p in d.get("reading_passages") or []:
            segs = p.get("segments")
            out += [(s.get("i18n") or {}).get("en") or s.get("en", "") for s in segs] if segs else [p.get("content_ja", "")]
        for q in d.get("questions") or []:
            out.append((q.get("i18n") or {}).get("en") or q.get("question_jp") or "")
            out += [(c.get("i18n") or {}).get("en") or c.get("text", "") for c in q.get("choices") or []]
        return out, d
    out, in_reading = [], False
    for l in path.read_text(encoding="utf-8").splitlines():
        if l.startswith("## "):
            in_reading = l.startswith("## Bài đọc")
        elif l.startswith("### "):
            in_reading = False
        if in_reading and l.startswith("> "):
            out.append(re.sub(r"\*\*[^*]+:\*\*\s*", "", l[2:]))
    return out, {}

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--level", choices=ORDER)
    ap.add_argument("--sheet", help="mã phiếu, vd a1.12 (mặc định: phiếu cuối trong meta.curriculum_sheets)")
    ap.add_argument("--allow", default="", help="tên riêng/từ cho phép, cách nhau dấu phẩy")
    ap.add_argument("--text")
    ap.add_argument("-v", "--verbose", action="store_true", help="in cả danh sách từ của unit đã dùng / chưa dùng")
    ap.add_argument("files", nargs="*")
    a = ap.parse_args()

    texts: list[str] = []
    extra: dict[str, str] = {}
    sheet = a.sheet
    if a.text:
        texts = [a.text]
    for f in a.files:
        t, d = texts_from(Path(f))
        texts += t
        for p in d.get("reading_passages") or []:  # tên người nói trong hội thoại luôn là tên riêng
            for s in p.get("segments") or []:
                if s.get("speaker"):
                    a.allow += "," + s["speaker"]
        for e in (d.get("lesson") or {}).get("extra_words") or []:
            extra[e["word"].lower()] = (e.get("i18n") or {}).get("vi") or e.get("vi", "")
        if not sheet and (d.get("meta") or {}).get("curriculum_sheets"):
            sheet = d["meta"]["curriculum_sheets"][-1]
    if not (a.level or sheet):
        ap.error("cần --level, --sheet, hoặc file JSON có meta.curriculum_sheets")

    lv, verbs, nouns_adjs = load_cefr()
    cast = {x.lower() for x in CAST.split()}
    allow = {x.strip().lower() for x in a.allow.split(",") if x.strip()}
    allow |= {x for w in extra for x in tokens_of(w)}

    known: set[str] | None = None
    if sheet:
        sheet = sheet.lower()
        order = sheet_order()
        gtitles = {g["id"]: re.sub(r"\(.*?\)", "", g["title"]) for g in json.load(open(CURR / "grammar.json", encoding="utf-8"))}
        idx = next((i for i, s in enumerate(order) if s["id"] == sheet), None)
        if idx is None:
            sys.exit(f"Không tìm thấy phiếu {sheet}")
        known = set()
        for s in order[: idx + 1]:
            for w in s["words"]:
                known.update(tokens_of(w["word"]))
            for g in s["grammar_words"] + s.get("collocations", []) + s.get("phrasal", []):
                known.update(tokens_of(g))
            for gid in s["grammar"]:  # từ trong tên điểm ngữ pháp: "For, since, during, while and ago"
                if gid in gtitles:
                    known.update(tokens_of(gtitles[gid]))
        lvl = sheet.split(".")[0].upper()
        # SÁCH ÔN (KE_HOACH mục 7b): học viên đã học khá nhiều → tính cả từ thông dụng CEFR-J của CHÍNH cấp này.
        # Script chỉ còn báo từ VƯỢT cấp. Ngữ pháp chưa học vẫn cảnh báo theo phiếu.
        known |= {w for w, l in lv.items() if ORDER.index(l) <= ORDER.index(lvl)}
        cur = order[idx]
        unit_words = {w["word"].lower() for s in order if s["id"] in cur["_unit_ids"]
                      and cur["_unit_ids"].index(s["id"]) <= cur["_unit_ids"].index(sheet) for w in s["words"]}
        first_sheet: dict[str, int] = {}
        for i, s in enumerate(order):
            for gid in s["grammar"]:
                first_sheet.setdefault(gid, i)
        a.level = lvl

    total, over, outside, used, glossed = 0, {}, set(), set(), set()
    proper = set()
    for t in texts:
        for sent in re.split(r"(?<=[.!?])\s+|\n+", t):
            toks = re.findall(r"[A-Za-zÀ-ÿ]+", sent)
            proper.update(x.lower() for x in toks[1:] if x[0].isupper() and x.lower() != "i")
    gate_hits: dict[str, list[str]] = {}
    for t in texts:
        t = re.sub(r"\S+@\S+|https?://\S+|www\.\S+", " ", t)  # bỏ email / URL
        for sent in re.split(r"(?<!\bMr\.)(?<!\bMs\.)(?<!\bDr\.)(?<!\bMrs\.)(?<=[.!?])\s+|\n+", t):
            toks = re.findall(r"[A-Za-zÀ-ÿ]+(?:'[A-Za-zÀ-ÿ]+)?", sent)
            for i, tok in enumerate(toks):
                total += 1
                w = tok.lower()
                if w.endswith("'s") and w not in IRREG:
                    w = w[:-2]
                if w in extra or any(c in extra for c in candidates(w)):
                    glossed.add(w)
                used.update(candidates(w))
                starts = sent.lstrip(" \"'“(*-").startswith(tok)
                if w in allow or any(c in allow for c in candidates(w)) or (tok[0].isupper() and (i > 0 or w in cast or w in proper or not starts) and w != "i"):
                    continue
                if known is not None:
                    if not any(c in known for c in candidates(w)):
                        outside.add(w)
                    continue
                found = [lv[c] for c in candidates(w) if c in lv]
                if found:
                    l = min(found, key=ORDER.index)
                    if ORDER.index(l) > ORDER.index(a.level):
                        over[w] = l
            if known is None:
                continue
            low = sent.lower()
            for rx, gid, desc in GATES:
                if gid not in first_sheet or first_sheet[gid] <= idx:
                    continue
                hit = False
                if rx == "MAY":  # bỏ qua tháng May (viết hoa giữa câu / trước số)
                    hit = re.search(r"\bmight\b|\bmay\b|^May\s+(I|we|you)\b", sent.strip()) is not None
                elif rx == "PAST":
                    for w in re.findall(r"[a-z']+", low):
                        if w in extra:
                            continue
                        if w == "left" and re.search(r"(^|\b(turn|turns|on (your|the|my|her|his)|to (the|your)|the|and|or)\s+)left\b", low.strip()):
                            continue
                        if w in PAST_IRR and not re.search(rf"\b(has|have|'ve|'s)\s+([a-z]+\s+)?{w}\b", low):
                            hit = True
                        elif w.endswith("ed") and w not in nouns_adjs and any(c in verbs for c in list(candidates(w))[1:]):
                            hit = True
                else:
                    r2 = rx.replace("ING", r"[a-z]+ing\b").replace("PP", r"[a-z]+(ed|en)\b")
                    hit = re.search(r2, low) is not None
                    if hit and "ING" in rx:
                        m = re.search(r2, low)
                        ingw = re.findall(r"[a-z]+ing\b", m.group(0))[-1]
                        hit = any(c in verbs for c in list(candidates(ingw))[1:]) and ingw not in nouns_adjs
                if hit:
                    gate_hits.setdefault(f"{desc} [dạy ở {order[first_sheet[gid]]['id']}]", []).append(sent.strip()[:90])

    if known is not None:
        print(f"Tổng {total} từ | vốn từ tới phiếu {sheet} (unit {cur['_unit']}: {cur['_unit_title']})")
        if outside:
            print(f"❌ NGOÀI PHẠM VI ({len(outside)}) — thay, hoặc thêm vào lesson.extra_words:", ", ".join(sorted(outside)))
        hit = sorted(w for w in unit_words if all(x in used for x in w.split()))
        print(f"Chú nghĩa {len(glossed)} từ | độ phủ từ unit {len(hit)}/{len(unit_words)}")
        if a.verbose:
            print("  đã dùng:", ", ".join(hit))
            print("  chưa dùng:", ", ".join(sorted(unit_words - set(hit))) or "—")
        if gate_hits:
            print(f"⚠️  NGỮ PHÁP CHƯA HỌC ({len(gate_hits)} loại) — đọc lại từng câu:")
            for k, v in gate_hits.items():
                print(f"   - {k}: {len(v)} câu, vd: {v[0]!r}")
        if not outside and not gate_hits:
            print("✅ vốn từ + ngữ pháp sạch")
        return 1 if outside else 0
    print(f"Tổng {total} từ | mục tiêu ≤ {a.level}")
    print(f"VƯỢT CẤP ({len(over)}):", ", ".join(f"{w}[{l}]" for w, l in sorted(over.items())) or "—")
    return 1 if over else 0

if __name__ == "__main__":
    sys.exit(main())
