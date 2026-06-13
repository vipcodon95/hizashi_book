"""
Stamp DB IDs vào file JSON 39_reading_collection (in-place).

Schema chuẩn Hizashi_book (xem _shared/BOOK_REGISTRY.md):
  book_id (curricula)        = 800000000 + book_seq          → 9 digit
  bảng phụ thuộc             = "8" + ident + seq.zfill(...)  → 9 digit
      ident = reverse(book_seq) nếu tròn chục, ngược lại = str(book_seq)
  questions_answers          = int(str(question_id) + str(ans_seq))   → 10 digit, BIGINT

book_seq = 39 (39_reading_collection, sách thứ 39)

Vì 39 KHÔNG tròn chục → ident = "39", seq cuối 6 digit (cap 999,999/sách):
  reading_passages.id  = 8 + "39" + seq:06d  →  839000001..839000700
  question_sets.id     = 8 + "39" + seq:06d  →  839000001..839000700
  questions.id         = 8 + "39" + seq:06d  →  839000001..839002680
  examples.id          = 8 + "39" + seq:06d  →  839000001..839011742
  questions_answers.id = question_id + ans_seq:1d            →  8390000011..

Lưu ý: passages, sets, questions, examples DÙNG CHUNG dãy seq cho từng bảng → ID có thể
trùng số GIỮA các bảng (vd passage 839000001 = question 839000001) nhưng khác bảng nên OK.

Mapping seq (deterministic):
  - passage seq = R_xxxx_num (R_0641 → 839000641)
  - set seq     = R_xxxx_num (1 set / 1 passage)
  - question seq = global 1..N theo (R_xxxx ASC, q_idx ASC)
  - answer = question_id + ans_seq (1..4)
  - example seq = global 1..K theo (R_xxxx ASC, process_idx ASC)

Process mapping → examples:
  content_type = 'reading_passage'
  content_id   = str(reading_passage_id)
  chunks       → lưu khi build SQL vào examples.context.chunks

Ghi đè in-place, indent=2, ensure_ascii=False để giữ tiếng Nhật + tiếng Việt có dấu.
Idempotent: chạy nhiều lần ra cùng kết quả.
"""

from __future__ import annotations

import json
import sys
from pathlib import Path

# Import hàm chuẩn từ _shared
ROOT = Path(__file__).resolve().parent.parent
HIZASHI_BOOK_ROOT = ROOT.parent.parent
sys.path.insert(0, str(HIZASHI_BOOK_ROOT / "_shared" / "scripts"))

from book_id_utils import make_book_id, make_id, make_answer_id, seq_capacity  # noqa: E402

BOOK_SEQ = 39  # 39_reading_collection

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


def stamp() -> None:
    files = collect_files()
    print(f"Found {len(files)} batch files trong {ROOT.name}")
    print(f"book_seq = {BOOK_SEQ}  →  book_id = {make_book_id(BOOK_SEQ)}")
    print(f"seq capacity = {seq_capacity(BOOK_SEQ):,}/bảng/sách")

    all_records: list[tuple[int, Path, dict]] = []
    for fp in files:
        with fp.open(encoding="utf-8") as f:
            data = json.load(f)
        for rec in data:
            all_records.append((r_xxxx_num(rec["id"]), fp, rec))

    all_records.sort(key=lambda x: x[0])
    print(f"Total readings: {len(all_records)}  "
          f"(R_{all_records[0][0]:04d}..R_{all_records[-1][0]:04d})")

    seen_r = set()
    for n, _, _ in all_records:
        if n in seen_r:
            raise RuntimeError(f"Duplicate R_{n:04d} across files")
        seen_r.add(n)

    q_seq = 0
    a_seq = 0
    e_seq = 0
    for r_num, _fp, rec in all_records:
        rec["reading_passage_id"] = make_id(BOOK_SEQ, r_num)
        rec["question_set_id"] = make_id(BOOK_SEQ, r_num)

        for q in rec.get("comprehension", []) or []:
            q_seq += 1
            question_id = make_id(BOOK_SEQ, q_seq)
            q["question_id"] = question_id

            for ans_idx, ans in enumerate(q.get("answers", []) or [], 1):
                a_seq += 1
                ans["questions_answer_id"] = make_answer_id(question_id, ans_idx)

        for proc in rec.get("process", []) or []:
            e_seq += 1
            proc["example_id"] = make_id(BOOK_SEQ, e_seq)

    cap = seq_capacity(BOOK_SEQ)
    for name, n in (("questions", q_seq), ("examples", e_seq)):
        if n > cap:
            raise RuntimeError(f"{name} seq={n} vượt cap {cap}")

    print()
    print(f"Total questions stamped: {q_seq}")
    print(f"Total answers stamped:   {a_seq}")
    print(f"Total examples stamped:  {e_seq}")
    print()
    print(f"  book_id (curricula):   {make_book_id(BOOK_SEQ)}")
    print(f"  passage id range:      {make_id(BOOK_SEQ, 1)} .. {make_id(BOOK_SEQ, all_records[-1][0])}")
    print(f"  set id range:          {make_id(BOOK_SEQ, 1)} .. {make_id(BOOK_SEQ, all_records[-1][0])}")
    print(f"  question id range:     {make_id(BOOK_SEQ, 1)} .. {make_id(BOOK_SEQ, q_seq)}")
    print(f"  answer id sample:      {make_answer_id(make_id(BOOK_SEQ, 1), 1)} ..")
    print(f"  example id range:      {make_id(BOOK_SEQ, 1)} .. {make_id(BOOK_SEQ, e_seq)}")

    by_file: dict[Path, list[dict]] = {}
    for _r, fp, rec in all_records:
        by_file.setdefault(fp, []).append(rec)

    for fp, records in by_file.items():
        records.sort(key=lambda r: r_xxxx_num(r["id"]))
        with fp.open("w", encoding="utf-8") as f:
            json.dump(records, f, ensure_ascii=False, indent=2)
            f.write("\n")

    print(f"\nWrote {len(by_file)} files. Done.")


if __name__ == "__main__":
    stamp()
