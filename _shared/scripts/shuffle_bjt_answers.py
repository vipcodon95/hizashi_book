#!/usr/bin/env python3
"""
Xáo lại vị trí đáp án BJT trong conversation.json của 1 sách Hizashi sao cho phân bố A/B/C/D đều ~25%.

⚠️ CHẠY ĐÚNG 1 LẦN cho mỗi sách. Seed cố định → chạy lại lần 2 sẽ xáo TIẾP (dời thêm), không idempotent.

Dùng:  python3 shuffle_bjt_answers.py <đường_dẫn_thư_mục_nội_dung> [skip_gids_file.json]
  - <nội_dung>: thư mục chứa các rule_*/conversation.json
  - skip_gids_file (optional): JSON list các gid (chỉ số toàn cục) KHÔNG được xáo (câu unsafe từ safety-scan).
    gid đánh số theo thứ tự duyệt sorted(glob) — phải khớp với cách safety-scan đánh số.

An toàn: chỉ xáo VỊ TRÍ 4 option + cập nhật field đáp án (answer hoặc correct). Nội dung đáp án đúng giữ nguyên.
Đã verify (Haiku + regex) không có câu tham chiếu nhãn chéo ("cả A và B") trước khi gọi.
"""
import json
import glob
import random
import re
import os
import sys

SEED = 20260613
LABELS = ["A", "B", "C", "D"]
PREFIX_RE = re.compile(r"^([ABCD])\.\s*")


def main():
    if len(sys.argv) < 2:
        print("Usage: shuffle_bjt_answers.py <nội_dung_dir> [skip_gids.json]")
        sys.exit(1)
    noi_dung = sys.argv[1]
    skip = set()
    if len(sys.argv) >= 3 and os.path.exists(sys.argv[2]):
        skip = set(json.load(open(sys.argv[2])))

    rng = random.Random(SEED)
    files = sorted(glob.glob(os.path.join(noi_dung, "**", "conversation.json"), recursive=True))
    data_cache = {}
    records = []
    gid = -1
    for f in files:
        d = json.load(open(f, encoding="utf-8"))
        data_cache[f] = d
        for qi, q in enumerate(d.get("bjt_practice", [])):
            gid += 1
            if gid in skip:
                continue
            ans_field = "answer" if "answer" in q else ("correct" if "correct" in q else None)
            if ans_field is None:
                continue
            ans_label = q.get(ans_field, "")
            opts = q.get("options", [])
            if ans_label not in LABELS or len(opts) != 4:
                continue
            # 2 dạng options: CÓ tiền tố "A. text" (sách 08), hoặc text thuần map theo vị trí (sách 02-07).
            has_prefix = all(PREFIX_RE.match(o) for o in opts)
            if has_prefix:
                label_to_text = {PREFIX_RE.match(o).group(1): PREFIX_RE.sub("", o) for o in opts}
                if len(label_to_text) != 4:
                    continue
                ordered = [label_to_text[L] for L in LABELS]
            else:
                # không tiền tố: vị trí 0..3 = A..D
                ordered = list(opts)
            correct_text = ordered[LABELS.index(ans_label)]
            records.append({
                "file": f, "qi": qi, "ans_field": ans_field, "has_prefix": has_prefix,
                "correct_text": correct_text,
                "ordered_texts": ordered,
            })

    n = len(records)
    if n == 0:
        print("Không có câu BJT hợp lệ để xáo.")
        return
    targets = [LABELS[i % 4] for i in range(n)]
    rng.shuffle(targets)
    order = list(range(n))
    rng.shuffle(order)
    target_of = {ri: targets[slot] for slot, ri in enumerate(order)}

    changed = {}
    dist = {L: 0 for L in LABELS}
    for ri, rec in enumerate(records):
        tgt = target_of[ri]
        tgt_pos = LABELS.index(tgt)
        correct = rec["correct_text"]
        others = [t for t in rec["ordered_texts"] if t != correct]
        if len(others) != 3:
            tmp = list(rec["ordered_texts"])
            tmp.remove(correct)
            others = tmp
        rng.shuffle(others)
        slots = [None, None, None, None]
        slots[tgt_pos] = correct
        it = iter(others)
        for p in range(4):
            if slots[p] is None:
                slots[p] = next(it)
        rec_q = data_cache[rec["file"]]["bjt_practice"][rec["qi"]]
        if rec["has_prefix"]:
            rec_q["options"] = [f"{LABELS[p]}. {slots[p]}" for p in range(4)]
        else:
            rec_q["options"] = [slots[p] for p in range(4)]  # giữ text thuần, không thêm tiền tố
        rec_q[rec["ans_field"]] = tgt
        dist[tgt] += 1
        changed[rec["file"]] = data_cache[rec["file"]]

    for f, d in changed.items():
        json.dump(d, open(f, "w", encoding="utf-8"), ensure_ascii=False, indent=2)
        with open(f, "a", encoding="utf-8") as fh:
            fh.write("\n")

    print(f"Đã xáo {n} câu trong {len(changed)} file (bỏ qua {len(skip)} gid unsafe).")
    print(f"Phân bố mới: {dist}  ({sum(dist.values())} câu)")
    print(f"Tỷ lệ %: {{{', '.join(f'{L}:{round(dist[L]/n*100,1)}' for L in LABELS)}}}")


if __name__ == "__main__":
    main()
