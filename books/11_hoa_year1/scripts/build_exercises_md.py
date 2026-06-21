#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Chuyển 24 JSON bài tập sách 11 (schema study-course chuẩn) → markdown sách bài tập (inline).
Schema: choices = list, mỗi choice có is_correct. Mogishiken có reading_passages + passage_ref.
"""
import json, pathlib

BOOK = pathlib.Path(__file__).resolve().parent.parent

# 12 chương theo thứ tự, nhãn VN
CHAPTERS = [
    ("t01_dat_chan_toi_nhat", "T1 · Đặt chân tới Nhật"),
    ("t02_tuan_dau_nha_may", "T2 · Tuần đầu trong nhà máy"),
    ("t03_eisei_kanri", "T3 · Quy tắc vệ sinh thực phẩm"),
    ("t04_line_operation", "T4 · Lần đầu đứng dây chuyền"),
    ("t05_furyou_hin", "T5 · Lần đầu mắc lỗi"),
    ("t06_chukan_mensetsu", "T6 · Đánh giá giữa kỳ"),
    ("t07_matsuri_seikatsu", "T7 · Lễ hội & Đời sống"),
    ("t08_iso_audit", "T8 · Khách kiểm tra audit"),
    ("t09_shihin_kaihatsu", "T9 · Triển khai sản phẩm mới"),
    ("t10_recall_kuringu", "T10 · Sự cố lớn — Recall"),
    ("t11_shourai_keikaku", "T11 · Định hướng tương lai"),
    ("t12_bonenkai_furikaeri", "T12 · Một năm nhìn lại"),
]

def correct_key(q):
    for c in q.get("choices", []):
        if c.get("is_correct"):
            return c.get("id", "?")
    return "?"

def render_q(q, idx):
    o = []
    qja = q.get("question_jp", "")
    qvn = q.get("question_vn", "")
    o.append(f"**Câu {idx}.** {qja}")
    if qvn:
        o.append(f"*{qvn}*")
    o.append("")
    for c in sorted(q.get("choices", []), key=lambda x: x.get("order", 0)):
        o.append(f"- **{c.get('id')}.** {c.get('text','')}")
    o.append("")
    o.append(f"> **Đáp án: {correct_key(q)}**")
    expl = q.get("explanation", "")
    if expl:
        o.append(f"> {expl}")
    o.append("")
    return "\n".join(o)

def build():
    out = []
    qnum = 0
    for cdir, clabel in CHAPTERS:
        d = BOOK / cdir
        if not d.exists():
            continue
        out.append(f"# {clabel}\n")
        # BaiTap
        bt = list(d.glob("*BaiTap*.json"))
        if bt:
            data = json.loads(bt[0].read_text(encoding="utf-8"))
            qs = data.get("questions", [])
            if qs:
                out.append("## Bài tập\n")
                for q in qs:
                    qnum += 1
                    out.append(render_q(q, qnum))
        # Mogishiken (đề đọc hiểu)
        mg = list(d.glob("*Mogishiken*.json"))
        if mg:
            data = json.loads(mg[0].read_text(encoding="utf-8"))
            passages = {p["id"]: p for p in data.get("reading_passages", [])}
            qs = data.get("questions", [])
            if qs:
                out.append("## Đề thi thử (đọc hiểu)\n")
                shown = set()
                for q in qs:
                    pid = q.get("passage_ref")
                    if pid and pid in passages and pid not in shown:
                        p = passages[pid]
                        shown.add(pid)
                        out.append(f"### {p.get('title','Đoạn văn')}\n")
                        out.append("> " + p.get("content_ja", "").replace("\n", "\n> ") + "\n")
                        if p.get("translation_vn"):
                            out.append(f"*Dịch: {p['translation_vn']}*\n")
                    qnum += 1
                    out.append(render_q(q, qnum))
        out.append("")
    return "\n".join(out)

if __name__ == "__main__":
    print(build())
