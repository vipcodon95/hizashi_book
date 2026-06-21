#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Xáo vị trí đáp án để cân bằng A/B/C/D (schema study-course: choices có id + is_correct + order).
- GIỮ id A/B/C/D cố định; HOÁN nội dung (text, text_translation, is_correct) giữa các vị trí.
- An toàn vì giải thích sách 11 KHÔNG trỏ chữ cái (đã kiểm 0/720).
- GIỮ NGUYÊN câu META (đáp án 'cả A và B', 'tất cả'...).
- Cân bằng: đặt đáp án đúng vào id đang ít dùng nhất. Deterministic (LCG seed).
"""
import json, pathlib, re
from collections import Counter

ROOT = pathlib.Path(__file__).resolve().parent.parent
META = re.compile(r'cả .* và|cả hai|tất cả|đều đúng|đều sai|両方|すべて|どちらも|cả A|cả B', re.I)

class LCG:
    def __init__(s, seed): s.s = seed & 0xFFFFFFFF
    def n(s):
        s.s = (1103515245 * s.s + 12345) & 0x7FFFFFFF
        return s.s
    def perm(s, k):
        idx = list(range(k))
        for i in range(k-1, 0, -1):
            j = s.n() % (i+1)
            idx[i], idx[j] = idx[j], idx[i]
        return idx

def is_meta(q):
    return any(META.search(c.get('text','')) for c in q.get('choices', []))

def shuffle_file(path, rng, tc):
    d = json.loads(pathlib.Path(path).read_text(encoding='utf-8'))
    ns = nm = 0
    for q in d.get('questions', []):
        ch = q.get('choices', [])
        ids = [c.get('id') for c in ch]
        if sorted(ids) != ['A','B','C','D']:
            continue
        if is_meta(q):
            nm += 1
            continue
        # nội dung hiện tại theo thứ tự id A,B,C,D
        by_id = {c['id']: c for c in ch}
        ordered = [by_id[x] for x in ['A','B','C','D']]
        old_correct = next(i for i,c in enumerate(ordered) if c.get('is_correct'))
        # chọn hoán vị đưa đáp án đúng về id ít dùng nhất
        best = None; bs = None
        for _ in range(8):
            p = rng.perm(4)                  # p[new_idx] = old_idx
            ncorr = p.index(old_correct)
            letter = 'ABCD'[ncorr]
            score = tc[letter]
            if bs is None or score < bs:
                bs = score; best = (p, letter)
        p, letter = best
        # gán: id 'ABCD'[i] nhận nội dung của ordered[p[i]]
        new_ch = []
        for i in range(4):
            src = ordered[p[i]]
            new_ch.append({
                'id': 'ABCD'[i],
                'text': src.get('text',''),
                'text_translation': src.get('text_translation', src.get('text','')),
                'is_correct': src.get('is_correct', False),
                'order': i,
            })
        q['choices'] = new_ch
        tc[letter] += 1
        ns += 1
    pathlib.Path(path).write_text(json.dumps(d, ensure_ascii=False, indent=2) + "\n", encoding='utf-8')
    return ns, nm

if __name__ == "__main__":
    files = [f for f in ROOT.rglob('*.json') if '_pipeline' not in str(f)]
    rng = LCG(20260430)
    tc = Counter(); ts = tm = 0
    for f in sorted(files):
        s, m = shuffle_file(f, rng, tc)
        ts += s; tm += m
        print(f"  {f.name:<48} xáo:{s:3} meta:{m}")
    print(f"\n  Tổng xáo {ts}, giữ meta {tm}")
    print(f"  Phân bố mới (câu xáo): " + ' '.join(f"{k}:{tc[k]}" for k in 'ABCD'))
