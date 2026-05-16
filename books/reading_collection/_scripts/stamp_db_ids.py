"""
Stamp DB IDs vào file JSON reading_collection (in-place).

Schema chuẩn Hizashi_book (xem _shared/BOOK_REGISTRY.md):
  {book_code:4d}{kind:1d}{seq:variable}

  kind 0 = reading_passages    seq:04d  → 9 digit  (cap 9999/sách)
  kind 1 = study_question_sets seq:04d  → 9 digit  (cap 9999/sách)
  kind 2 = questions           seq:04d  → 9 digit  (cap 9999/sách)
  kind 3 = questions_answers   seq:06d  → 11 digit (cap 999999/sách)
  kind 4 = examples            seq:06d  → 11 digit (cap 999999/sách)

book_code = 8027 (reading_collection — sách thứ 27)

Ví dụ ID:
  reading_passages.id  = 80270 0001   = 802700001    (R_0001)
  question_sets.id     = 80271 0001   = 802710001
  questions.id         = 80272 0001   = 802720001    (Q1 toàn cục)
  questions_answers.id = 80273 000001 = 80273000001  (A1 toàn cục)
  examples.id          = 80274 000001 = 80274000001  (process[0] toàn cục)

→ SELECT WHERE id::text LIKE '8027%' lấy toàn bộ data của RC trên 5 bảng.

Mapping seq:
  - passage seq  = R_xxxx_num (1..700)        → deterministic theo R_xxxx
  - set seq      = R_xxxx_num (1..700)        → 1 set / 1 passage
  - question seq = global 1..N theo (R_xxxx ASC, q_idx ASC)
  - answer seq   = global 1..M theo (question ASC, answer_idx ASC)
  - example seq  = global 1..K theo (R_xxxx ASC, process_idx ASC)

Ghi đè in-place, indent=2, ensure_ascii=False để giữ tiếng Nhật + tiếng Việt có dấu.
Idempotent: chạy nhiều lần ra cùng kết quả.
"""

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
BOOK_CODE = 8027

# Schema: book_code đứng đầu, kind 1 chữ số ở giữa, seq cuối
KIND_PASSAGE  = 0  # seq:04d
KIND_SET      = 1  # seq:04d
KIND_QUESTION = 2  # seq:04d
KIND_ANSWER   = 3  # seq:06d
KIND_EXAMPLE  = 4  # seq:06d

PASSAGE_PREFIX  = BOOK_CODE * 100_000     + KIND_PASSAGE  * 10_000        # 802700000
SET_PREFIX      = BOOK_CODE * 100_000     + KIND_SET      * 10_000        # 802710000
QUESTION_PREFIX = BOOK_CODE * 100_000     + KIND_QUESTION * 10_000        # 802720000
ANSWER_PREFIX   = BOOK_CODE * 10_000_000  + KIND_ANSWER   * 1_000_000     # 80273000000
EXAMPLE_PREFIX  = BOOK_CODE * 10_000_000  + KIND_EXAMPLE  * 1_000_000     # 80274000000

DRAFT_DIRS = [
    "n5_basic_drafts", "n5_advanced_drafts",
    "n4_basic_drafts", "n4_advanced_drafts",
    "n3_basic_drafts", "n3_advanced_drafts",
    "n2_basic_drafts", "n2_advanced_drafts",
    "n1_basic_drafts", "n1_advanced_drafts",
    "native_basic_drafts", "native_advanced_drafts",
]


def collect_files() -> list[Path]:
    files = []
    for d in DRAFT_DIRS:
        folder = ROOT / d
        if not folder.exists():
            continue
        files.extend(sorted(folder.glob("batch_*.json")))
    return files


def r_xxxx_num(rid: str) -> int:
    return int(rid.split("_")[1])


def stamp():
    files = collect_files()
    print(f"Found {len(files)} batch files")

    all_records: list[tuple[int, Path, dict]] = []
    for fp in files:
        with fp.open(encoding="utf-8") as f:
            data = json.load(f)
        for rec in data:
            all_records.append((r_xxxx_num(rec["id"]), fp, rec))

    all_records.sort(key=lambda x: x[0])
    print(f"Total readings: {len(all_records)}")
    print(f"R_xxxx range: R_{all_records[0][0]:04d} .. R_{all_records[-1][0]:04d}")

    seen_r = set()
    for n, _, _ in all_records:
        if n in seen_r:
            raise RuntimeError(f"Duplicate R_{n:04d} across files")
        seen_r.add(n)

    q_seq = 0
    a_seq = 0
    e_seq = 0
    for r_num, _fp, rec in all_records:
        rec["reading_passage_id"] = PASSAGE_PREFIX + r_num
        rec["question_set_id"] = SET_PREFIX + r_num

        for q in rec.get("comprehension", []) or []:
            q_seq += 1
            q["question_id"] = QUESTION_PREFIX + q_seq

            for ans in q.get("answers", []) or []:
                a_seq += 1
                ans["questions_answer_id"] = ANSWER_PREFIX + a_seq

        for proc in rec.get("process", []) or []:
            e_seq += 1
            proc["example_id"] = EXAMPLE_PREFIX + e_seq

    if q_seq > 9999:
        raise RuntimeError(f"questions seq={q_seq} exceeded cap 9999")
    if a_seq > 999999:
        raise RuntimeError(f"answers seq={a_seq} exceeded cap 999999")
    if e_seq > 999999:
        raise RuntimeError(f"examples seq={e_seq} exceeded cap 999999")

    print(f"Total questions stamped: {q_seq}")
    print(f"Total answers stamped:   {a_seq}")
    print(f"Total examples stamped:  {e_seq}")
    print(f"  passage id range:  {PASSAGE_PREFIX + all_records[0][0]} .. {PASSAGE_PREFIX + all_records[-1][0]}")
    print(f"  set id range:      {SET_PREFIX + all_records[0][0]} .. {SET_PREFIX + all_records[-1][0]}")
    print(f"  question id range: {QUESTION_PREFIX + 1} .. {QUESTION_PREFIX + q_seq}")
    print(f"  answer id range:   {ANSWER_PREFIX + 1} .. {ANSWER_PREFIX + a_seq}")
    print(f"  example id range:  {EXAMPLE_PREFIX + 1} .. {EXAMPLE_PREFIX + e_seq}")

    by_file: dict[Path, list[dict]] = {}
    for _r, fp, rec in all_records:
        by_file.setdefault(fp, []).append(rec)

    for fp, records in by_file.items():
        records.sort(key=lambda r: r_xxxx_num(r["id"]))
        with fp.open("w", encoding="utf-8") as f:
            json.dump(records, f, ensure_ascii=False, indent=2)
            f.write("\n")

    print(f"Wrote {len(by_file)} files. Done.")


if __name__ == "__main__":
    stamp()
