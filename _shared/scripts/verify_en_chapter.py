#!/usr/bin/env python3
"""Kiểm chứng ĐỘC LẬP một chương sách đọc hiểu tiếng Anh trước khi commit.

Usage:
    python3 _shared/scripts/verify_en_chapter.py books/56_english_a1/u04_people_and_looks

Chạy: build (phải sạch) + check vốn từ/ngữ pháp + validator, rồi soát thêm:
  - folder chỉ có đúng 1 *_BaiTap.json + 1 *_DocHieu.md
  - phân bố đáp án: không chữ nào quá 3/10 (tỉ lệ tương đương nếu số câu khác)
  - VÙNG CẤM (mục 7a kế hoạch): từ khoá chính trị / hệ tư tưởng / chiến tranh / tôn giáo
  - tên riêng viết hoa lạ (không thuộc dàn nhân vật / địa danh) → liệt kê để người xem
  - tuổi nhân vật trong bài ("Tina is seven") khớp tuổi ở cấp đó trong characters.md
Thoát mã 1 nếu có lỗi chặn (build/check/validator/vùng cấm/tuổi sai/folder sai).
"""
from __future__ import annotations
import json, re, subprocess, sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CAST = set(("Mitchell Megan Tracy Trevor Tina Biscuit Carter Carters Harriet Nathan Helena Amy Brooks Leah Ethan Hayes "
            "Chloe Bennett Lydia Park Maple Street San Diego Westview High Washington New York Philadelphia Miami "
            "Savannah Asheville Aspen Maui Monterey Mississippi Baltimore Orleans Mammoth Cave Georgetown "
            "Mr Mrs Ms Dr English I OK You Monday Tuesday Wednesday Thursday Friday Saturday Sunday January February "
            "March April May June July August September October November December").split())
FORBIDDEN = r"\b(communis\w*|fascis\w*|nazi\w*|dictator\w*|capitalis\w*|socialis\w*|marxis\w*|totalitarian\w*|" \
            r"election\w*|vote[sd]?|voting|president|politic\w*|parliament\w*|congress\w*|senat\w*|democrat\w*|" \
            r"republican\w*|war|wars|army|armies|soldier\w*|weapon\w*|bomb\w*|religio\w*|god|gods|bible|quran)\b"
# Nơi chốn tôn giáo (từ khoá học có dạy, vd a2.14 "mosque"): KHÔNG chặn, chỉ cảnh báo để đọc lại ngữ cảnh —
# vùng cấm là TRANH LUẬN tôn giáo, không phải nhắc tới một toà nhà như một địa điểm.
SOFT = r"\b(church\w*|mosque\w*|temple\w*|cathedral\w*|pray\w*)\b"
NUM = {w: i for i, w in enumerate("zero one two three four five six seven eight nine ten eleven twelve thirteen "
                                  "fourteen fifteen sixteen seventeen eighteen nineteen twenty".split())}
NUM.update({"thirty": 30, "forty": 40, "fifty": 50, "sixty": 60, "seventy": 70, "eighty": 80, "ninety": 90})

def num_of(s: str) -> int | None:
    s = s.lower()
    if s.isdigit():
        return int(s)
    parts = s.split("-")
    try:
        return sum(NUM[p] for p in parts)
    except KeyError:
        return None

def cast_ages(level: str) -> dict[str, int]:
    """Đọc tuổi ở cấp đầu (A1) từ characters.md: cột 'Tuổi ở A1 → C1' dạng '7 → 13'. Cấp sau cộng ~1,5 năm/cấp."""
    t = (ROOT / "_shared/en_curriculum/characters.md").read_text(encoding="utf-8")
    step = {"A1": 0, "A2": 1.5, "B1": 3, "B2": 4.5, "C1": 6}[level]
    ages = {}
    for m in re.finditer(r"^\|\s*\*\*([A-Z][a-z]+)[^|]*\|[^|]*\|\s*(\d+)\s*→\s*(\d+)", t, re.M):
        ages[m.group(1)] = int(m.group(2)) + step
    return ages

def run(cmd: list[str]) -> tuple[int, str]:
    r = subprocess.run(cmd, capture_output=True, text=True, cwd=ROOT)
    return r.returncode, (r.stdout + r.stderr).strip()

def main(folder: Path) -> int:
    bad: list[str] = []
    files = sorted(p.name for p in folder.iterdir() if p.is_file())
    js = [f for f in files if f.endswith(("_BaiTap.json", "_Mogishiken.json"))]  # đề thi thử dùng _Mogishiken
    md = [f for f in files if f.endswith(".md")]
    if len(js) != 1 or len(md) != 1 or len(files) != 2:
        bad.append(f"folder phải có đúng 1 JSON + 1 md, đang có: {files}")
    if not js:
        print("❌", bad); return 1
    path = folder / js[0]
    for cmd in (["python3", "_shared/scripts/build_en_reading.py", str(path)],
                ["python3", "_shared/scripts/check_cefr_level.py", str(path)],
                ["python3", ".claude/skills/study-course-questions-builder/scripts/validate_json.py", str(path)]):
        code, out = run(cmd)
        last = out.splitlines()[-1] if out else ""
        print(f"[{Path(cmd[1]).name}] " + (last if "validate" in cmd[1] else out.replace("\n", " | ")))
        if code != 0:
            bad.append(f"{Path(cmd[1]).name} thoát mã {code}")
    d = json.load(open(path, encoding="utf-8"))
    # git diff: build phải không đổi file nguồn ngoài trường sinh (kiểm idempotent bằng chạy lại lần 2)
    code, out = run(["python3", "_shared/scripts/build_en_reading.py", str(path)])
    d2 = json.load(open(path, encoding="utf-8"))
    if d != d2:
        bad.append("build không idempotent (chạy 2 lần ra 2 kết quả khác nhau)")

    ans = Counter(next(c["id"] for c in q["choices"] if c["is_correct"]) for q in d["questions"])
    lim = max(3, round(len(d["questions"]) * 0.3 + 0.49))
    print(f"[đáp án] {dict(sorted(ans.items()))} (tối đa {lim}/chữ)")
    if not ans:
        bad.append("chương chưa có câu hỏi")
    elif max(ans.values()) > lim:
        bad.append(f"đáp án lệch: {dict(ans)}")

    texts = [s["i18n"]["en"] for p in d["reading_passages"] for s in p["segments"]]
    texts += [q["i18n"]["en"] for q in d["questions"]] + [c["i18n"]["en"] for q in d["questions"] for c in q["choices"]]
    alltxt = "\n".join(texts)
    hits = sorted(set(m.group(0).lower() for m in re.finditer(FORBIDDEN, alltxt, re.I)))
    print(f"[vùng cấm] {hits or '—'}")
    soft = sorted(set(m.group(0).lower() for m in re.finditer(SOFT, alltxt, re.I)))
    if soft:
        print(f"[⚠️ nơi chốn tôn giáo — đọc lại ngữ cảnh, chỉ được là địa điểm] {soft}")
    if hits:
        bad.append(f"từ khoá vùng cấm: {hits}")

    import csv
    common = set()
    for fn in ("cefrj-vocabulary-profile-1.5.csv", "octanove-vocabulary-profile-c1c2-1.0.csv"):
        for r in csv.DictReader(open(ROOT / "_shared/english_cefr" / fn, encoding="utf-8")):
            common.update(x.strip().lower() for x in r["headword"].split("/"))
    speakers = {s.get("speaker") for p in d["reading_passages"] for s in p["segments"] if s.get("speaker")}
    names = set()
    for t in texts:
        for i, m in enumerate(re.finditer(r"\b[A-Z][a-z]+(?:'s)?\b", t)):
            w = m.group(0).removesuffix("'s")
            start = m.start()
            sentence_start = start == 0 or t[:start].rstrip()[-1:] in ".!?:\"“"
            base = w.lower()
            is_common = base in common or base.rstrip("s") in common or base[:-3] + "y" in common
            if w not in CAST and w not in speakers and not sentence_start and not is_common:
                names.add(w)
    print(f"[tên riêng lạ] {sorted(names) or '—'}  ← người lạ thì được, nhưng KHÔNG được trùng vai trong dàn nhân vật")

    # soát chéo các chương khác trong cùng sách: người lạ trùng tên, số điện thoại trùng
    names |= {sp for sp in speakers if sp and sp not in CAST}
    phones = set(re.findall(r"\d{3}-\d{3}-\d{4}", alltxt))
    cast_phones = {"619-555-0142", "619-555-0187"}  # Megan, Leah (characters.md)
    for other in sorted(folder.parent.parent.glob("5[6-9]_english_*/*/*.json")) + sorted(folder.parent.parent.glob("6[0-9]_english_*/*/*.json")):
        if other.parent == folder or other.parent.name.startswith("_"):
            continue
        od = json.load(open(other, encoding="utf-8"))
        otxt = "\n".join(s["i18n"]["en"] for p in od.get("reading_passages", []) for s in p.get("segments", []))
        same_names = sorted(n for n in names if re.search(rf"\b{n}\b", otxt) and n not in
                            ("Day", "School", "Club", "Room", "Group", "Street", "Shop", "Ticket", "Hours", "Week"))
        same_phone = sorted((phones & set(re.findall(r"\d{3}-\d{3}-\d{4}", otxt))) - cast_phones)
        if same_names:
            print(f"[trùng tên với {other.parent.name}] {same_names} ← cùng người thì được; KHÁC người thì phải đổi tên")
        if same_phone:
            bad.append(f"số điện thoại {same_phone} đã dùng ở {other.parent.name}")

    lvl = d["meta"].get("cefr_level", "A1")
    ages = cast_ages(lvl)
    for t in texts:
        for m in re.finditer(r"\b([A-Z][a-z]+)\s+is\s+(?:only\s+|now\s+)?([a-z]+(?:-[a-z]+)?|\d+)(?:\s+years?\s+old)?\b", t):
            who, n = m.group(1), num_of(m.group(2))
            if who in ages and n is not None and abs(n - ages[who]) > 1:
                bad.append(f"tuổi sai: \"{m.group(0)}\" — characters.md ghi {who} ~{ages[who]} ở {lvl}")
    print(f"[tuổi] {'khớp' if not any('tuổi sai' in b for b in bad) else 'SAI'}")

    if bad:
        print("❌ CHƯA ĐẠT:\n  - " + "\n  - ".join(bad))
        return 1
    print("✅ ĐẠT — có thể commit")
    return 0

if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    sys.exit(main(Path(sys.argv[1])))
