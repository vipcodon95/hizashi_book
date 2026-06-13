"""
Hizashi Book ID — tiện ích chung tính ID cho mọi sách trong Hizashi_book.

Source of truth: _shared/BOOK_REGISTRY.md (schema chốt 2026-05-16).

MỌI stamp script PHẢI import từ file này, KHÔNG tự định nghĩa lại công thức.

Schema:
  book_id (curricula)     = 800000000 + book_seq                 (9 digit, tuần tự)
  bảng phụ thuộc          = "8" + ident + seq.zfill(9-1-len(ident))   (9 digit)
      ident = reverse(book_seq) NẾU book_seq tròn chục/trăm/nghìn
              ngược lại = str(book_seq)
  questions_answers       = int(str(question_id) + str(ans_seq))  (10 digit, BIGINT)

Ví dụ (đã verify với bảng mẫu team cung cấp):
  Sách 1   node seq=1 → 810000001
  Sách 9   node seq=1 → 890000001
  Sách 10  node seq=1 → 801000001   (tròn chục → reverse "10"→"01")
  Sách 11  node seq=1 → 811000001
  Sách 27  node seq=1 → 827000001
  Sách 100 node seq=1 → 800100001   (tròn trăm → reverse "100"→"001")
"""

from __future__ import annotations

ID_TOTAL_DIGITS = 9
BOOK_ID_BASE = 800_000_000


def _is_round(book_seq: int) -> bool:
    """True nếu book_seq là số tròn chục/trăm/nghìn... (10, 100, 1000, 20, 300...).

    Định nghĩa: nhiều hơn 1 chữ số, chữ đầu khác '0', các chữ còn lại đều '0'.
    """
    bs = str(book_seq)
    return len(bs) > 1 and bs[0] != "0" and set(bs[1:]) <= {"0"}


def _ident(book_seq: int) -> str:
    """Phần định danh sách trong ID bảng phụ thuộc."""
    bs = str(book_seq)
    return bs[::-1] if _is_round(book_seq) else bs


def seq_capacity(book_seq: int) -> int:
    """Số entity tối đa / bảng / sách (do độ dài seq co lại khi book_seq dài)."""
    seq_len = ID_TOTAL_DIGITS - 1 - len(_ident(book_seq))
    return 10 ** seq_len - 1


def make_book_id(book_seq: int) -> int:
    """ID cho bảng curricula (1 row / sách)."""
    if book_seq < 1:
        raise ValueError(f"book_seq phải >= 1, nhận {book_seq}")
    return BOOK_ID_BASE + book_seq


def make_id(book_seq: int, seq: int) -> int:
    """ID cho bảng phụ thuộc: reading_passages, question_sets, questions,
    examples, curriculum_node, curriculum_node_content, study_courses, study_modules.

    seq bắt đầu từ 1.
    """
    if book_seq < 1:
        raise ValueError(f"book_seq phải >= 1, nhận {book_seq}")
    if seq < 1:
        raise ValueError(f"seq phải >= 1, nhận {seq}")
    ident = _ident(book_seq)
    seq_len = ID_TOTAL_DIGITS - 1 - len(ident)
    cap = 10 ** seq_len - 1
    if seq > cap:
        raise ValueError(
            f"seq={seq} vượt cap {cap} cho book_seq={book_seq} "
            f"(seq chỉ {seq_len} digit). Cân nhắc tách sách hoặc đổi book_seq."
        )
    return int("8" + ident + str(seq).zfill(seq_len))


def make_answer_id(question_id: int, ans_seq: int) -> int:
    """ID cho questions_answers — bám question_id + 1 digit thứ tự đáp án.

    ans_seq: 1..9 (RC luôn 4 đáp án).
    """
    if not (1 <= ans_seq <= 9):
        raise ValueError(f"ans_seq phải 1..9, nhận {ans_seq}")
    return int(str(question_id) + str(ans_seq))


def book_range(book_seq: int) -> tuple[int, int]:
    """Range ID [lo, hi] cho 1 bảng phụ thuộc của sách (seq 1..cap).

    Dùng để filter / DELETE WHERE id BETWEEN lo AND hi.
    """
    cap = seq_capacity(book_seq)
    return make_id(book_seq, 1), make_id(book_seq, cap)


if __name__ == "__main__":
    # Self-test với bảng mẫu team cung cấp
    cases = [
        (1, 1, 810000001),
        (9, 1, 890000001),
        (10, 1, 801000001),
        (11, 1, 811000001),
        (27, 1, 827000001),
        (100, 1, 800100001),
        (1, 2, 810000002),
        (10, 2, 801000002),
        (11, 2, 811000002),
        (100, 2, 800100002),
    ]
    ok = True
    for bs, sq, expect in cases:
        got = make_id(bs, sq)
        status = "OK" if got == expect else f"SAI (expect {expect})"
        if got != expect:
            ok = False
        print(f"  make_id({bs:>3}, {sq}) = {got}  {status}")

    print()
    for bs in (1, 27, 100):
        print(f"  make_book_id({bs}) = {make_book_id(bs)}")
    print()
    print(f"  make_answer_id(827000001, 4) = {make_answer_id(827000001, 4)}")
    print()
    print("ALL PASS" if ok else "FAILED")
