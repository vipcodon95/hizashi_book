#!/usr/bin/env python3
"""
Xáo lại vị trí đáp án BJT trong 51 conversation.json sách 08 sao cho phân bố A/B/C/D đều ~25%.

Bối cảnh: trước khi xáo, 72,5% câu có đáp án B, D chỉ 2 câu → đề lộ pattern, ai cũng đoán B.
Đã verify (Haiku + regex) KHÔNG có câu nào tham chiếu nhãn chéo ("cả A và B") hay đa đáp án,
nên xáo vị trí 4 option là an toàn cho toàn bộ 153 câu.

Thuật toán:
- Mỗi câu: strip tiền tố "X. " khỏi 4 option, giữ lại text thuần + biết text nào đúng.
- Phân bổ đáp án ĐÍCH (A/B/C/D) cho từng câu theo vòng quay cân bằng (mỗi nhãn ~38 câu),
  trên danh sách câu đã xáo thứ tự bằng seed cố định (tái lập được, tránh pattern máy móc).
- Hoán vị 4 option để text-đúng rơi đúng vị trí đích; các option còn lại điền theo thứ tự gốc.
- Gán lại nhãn "A. B. C. D." theo vị trí mới, cập nhật field đáp án (answer hoặc correct).

Giữ nguyên: cấu trúc field gốc mỗi file, mọi field khác của câu hỏi.
"""
import json
import glob
import random
import re
import os

SEED = 20260613  # cố định để tái lập
NOI_DUNG = os.path.join(os.path.dirname(__file__), "..", "nội_dung")

LABELS = ["A", "B", "C", "D"]
PREFIX_RE = re.compile(r"^([ABCD])\.\s*")


def strip_prefix(opt):
    return PREFIX_RE.sub("", opt)


def main():
    rng = random.Random(SEED)

    # Thu thập tất cả câu (tham chiếu tới file + index) để phân bổ đích cân bằng toàn cục
    files = sorted(glob.glob(os.path.join(NOI_DUNG, "**", "conversation.json"), recursive=True))
    records = []  # (filepath, q_index, ans_field, correct_text, other_texts[])
    data_cache = {}

    for f in files:
        d = json.load(open(f, encoding="utf-8"))
        data_cache[f] = d
        for qi, q in enumerate(d.get("bjt_practice", [])):
            ans_field = "answer" if "answer" in q else "correct"
            ans_label = q.get(ans_field, "")
            opts = q.get("options", [])
            if ans_label not in LABELS or len(opts) != 4:
                # bỏ qua câu bất thường (giữ nguyên)
                continue
            # map nhãn -> text thuần
            label_to_text = {}
            for o in opts:
                m = PREFIX_RE.match(o)
                if not m:
                    label_to_text = None
                    break
                label_to_text[m.group(1)] = strip_prefix(o)
            if not label_to_text or len(label_to_text) != 4:
                continue
            correct_text = label_to_text[ans_label]
            # thứ tự text gốc theo A,B,C,D (để điền các vị trí không phải đích, giữ tính ổn định)
            ordered_texts = [label_to_text[L] for L in LABELS]
            records.append({
                "file": f, "qi": qi, "ans_field": ans_field,
                "correct_text": correct_text, "ordered_texts": ordered_texts,
            })

    n = len(records)
    # Danh sách đích cân bằng: A,B,C,D lặp cho đủ n, rồi xáo bằng seed
    targets = [LABELS[i % 4] for i in range(n)]
    rng.shuffle(targets)
    # Xáo thứ tự records để gán đích (tránh đích bám theo thứ tự file)
    order = list(range(n))
    rng.shuffle(order)

    target_of = {}
    for slot, ri in enumerate(order):
        target_of[ri] = targets[slot]

    changed_files = {}
    dist = {L: 0 for L in LABELS}

    for ri, rec in enumerate(records):
        tgt = target_of[ri]
        tgt_pos = LABELS.index(tgt)
        correct = rec["correct_text"]
        others = [t for t in rec["ordered_texts"] if t != correct]
        # nếu có text trùng (hiếm), fallback: loại đúng 1 lần
        if len(others) != 3:
            tmp = list(rec["ordered_texts"])
            tmp.remove(correct)
            others = tmp
        # Xáo nhẹ các option nhiễu để không giữ nguyên thứ tự cũ ở các vị trí khác
        rng.shuffle(others)
        new_slots = [None, None, None, None]
        new_slots[tgt_pos] = correct
        it = iter(others)
        for p in range(4):
            if new_slots[p] is None:
                new_slots[p] = next(it)
        new_options = [f"{LABELS[p]}. {new_slots[p]}" for p in range(4)]

        d = data_cache[rec["file"]]
        q = d["bjt_practice"][rec["qi"]]
        q["options"] = new_options
        q[rec["ans_field"]] = tgt
        dist[tgt] += 1
        changed_files[rec["file"]] = d

    for f, d in changed_files.items():
        json.dump(d, open(f, "w", encoding="utf-8"), ensure_ascii=False, indent=2)
        # newline cuối file cho gọn diff
        with open(f, "a", encoding="utf-8") as fh:
            fh.write("\n")

    print(f"Đã xáo {n} câu trong {len(changed_files)} file.")
    print(f"Phân bố đáp án mới: {dist}  (tổng {sum(dist.values())})")
    pct = {L: round(dist[L] / n * 100, 1) for L in LABELS}
    print(f"Tỷ lệ %: {pct}")


if __name__ == "__main__":
    main()
