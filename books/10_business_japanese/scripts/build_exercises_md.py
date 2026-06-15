#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Chuyển 13 file JSON bài tập sách 10 → markdown sách bài tập.
Xử lý 3 schema: nhóm-jp (question_jp/explanation), nhóm-ja (question_ja/explanation_vn/tip),
và Mogishiken (sections → passage + questions lồng).
Sinh 2 kiểu: 'inline' (đáp án dưới mỗi câu) và 'separated' (đề riêng, đáp án cuối chương).
"""
import json, pathlib, sys

BOOK = pathlib.Path(__file__).resolve().parent.parent

# Thứ tự 5 module + nhãn chương
MODULES = [
    ("2.1.0_keigo_phan_loai", "Phân loại Kính ngữ", [
        "2.1.1_Teineigo_BaiTap.json", "2.1.2_Sonkeigo_BaiTap.json",
        "2.1.3_Kenjougo_BaiTap.json", "2.1.0_Keigo_Mogishiken.json"]),
    ("2.1.4_juzu_doushi", "Động từ 授受 (cho/nhận)", [
        "2.1.4_JuzuDoushi_BaiTap.json", "2.1.4_JuzuDoushi_Mogishiken.json"]),
    ("2.1.5_uchi_soto", "Quy tắc 内・外 (Uchi/Soto)", [
        "2.1.5_UchiSoto_BaiTap.json", "2.1.5_UchiSoto_Mogishiken.json"]),
    ("2.1.6_ukemi_shieki", "Bị động · Sai khiến", [
        "2.1.6_UkemiShieki_BaiTap.json", "2.1.6_UkemiShieki_Mogishiken.json"]),
    ("2.1.7_tong_hop_so_sanh", "Tổng hợp & So sánh", [
        "2.1.7_TongHop_SoSanh_BaiTap.json", "2.1.7_TongHop_LuyenTap.json",
        "2.1.7_TongHop_Mogishiken.json"]),
]

def g(q, *keys):
    for k in keys:
        if q.get(k): return q[k]
    return ""

def choices_lines(q):
    """Trả về list dòng đáp án A/B/C/D (jp + vn)."""
    ch = q.get("choices")
    out = []
    if isinstance(ch, dict):
        for k in sorted(ch.keys()):
            v = ch[k]
            if isinstance(v, dict):
                jp = v.get("jp",""); vn = v.get("vn","")
                out.append(f"- **{k}.** {jp}" + (f" — *{vn}*" if vn else ""))
            else:
                out.append(f"- **{k}.** {v}")
    elif isinstance(ch, list):
        for v in ch:
            k = v.get("key","?")
            jp = v.get("jp",""); vn = v.get("vn","")
            out.append(f"- **{k}.** {jp}" + (f" — *{vn}*" if vn else ""))
    return out

def render_question(q, idx, mode, kind):
    """idx = số thứ tự hiển thị. mode='inline'|'separated'. Trả (block_de, block_dapan)."""
    qja = g(q, "question_ja", "question_jp")
    qvn = g(q, "question_vn")
    ans = g(q, "answer")
    expl = g(q, "explanation_vn", "explanation")
    tip = g(q, "tip")

    de = [f"**Câu {idx}.** {qja}"]
    if qvn: de.append(f"*{qvn}*")
    de.append("")
    de += choices_lines(q)
    de.append("")

    dapan = [f"**Câu {idx}.** Đáp án: **{ans}**"]
    if expl: dapan.append(f"- {expl}")
    if tip: dapan.append(f"- *Mẹo: {tip}*")
    dapan.append("")

    if mode == "inline":
        block = de + [f"> **Đáp án: {ans}**"]
        if expl: block.append(f"> {expl}")
        if tip: block.append(f"> *Mẹo: {tip}*")
        block.append("")
        return "\n".join(block), None
    else:
        return "\n".join(de), "\n".join(dapan)

def load_questions(path):
    """Trả về list (kind, header_extra, [questions])."""
    d = json.loads(path.read_text(encoding="utf-8"))
    name = path.name
    kind = "Mogishiken" if "Mogishiken" in name else "LuyenTap" if "LuyenTap" in name else "BaiTap"
    groups = []
    if "sections" in d:  # Mogishiken: đề đọc hiểu
        for s in d["sections"]:
            passage = s.get("passage_ja",""); pvn = s.get("passage_vn","")
            sit = s.get("situation_vn","")
            qs = s.get("questions", [])
            groups.append((kind, {"passage": passage, "pvn": pvn, "sit": sit}, qs))
    else:
        qs = d.get("questions", [])
        groups.append((kind, None, qs))
    return groups

def build(mode):
    """mode = 'inline' | 'separated'."""
    out = []
    for mod_dir, mod_label, files in MODULES:
        out.append(f"# {mod_label}\n")
        all_dapan = []  # cho mode separated
        qnum = 0
        for fn in files:
            p = BOOK / mod_dir / fn
            if not p.exists(): continue
            for kind, extra, qs in load_questions(p):
                if not qs: continue
                label = {"BaiTap":"Bài tập","LuyenTap":"Luyện tập","Mogishiken":"Đề thi thử (đọc hiểu)"}[kind]
                out.append(f"## {label}\n")
                if extra:  # Mogishiken passage
                    if extra["sit"]: out.append(f"*Tình huống: {extra['sit']}*\n")
                    out.append("> " + extra["passage"].replace("\n", "\n> ") + "\n")
                    if extra["pvn"]: out.append(f"*Dịch: {extra['pvn']}*\n")
                for q in qs:
                    qnum += 1
                    de, dapan = render_question(q, qnum, mode, kind)
                    out.append(de)
                    if dapan: all_dapan.append(dapan)
        if mode == "separated" and all_dapan:
            out.append(f"## Đáp án & Giải thích — {mod_label}\n")
            out += all_dapan
        out.append("")
    return "\n".join(out)

if __name__ == "__main__":
    mode = sys.argv[1] if len(sys.argv) > 1 else "inline"
    print(build(mode))
