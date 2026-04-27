#!/usr/bin/env python3
"""Build HIZASHI_STATS.md — overall stats across 7 books."""
import json
import re
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).parent.parent.parent
BOOKS = [
    ("01", "01_email", "Email Công Việc / メール業務", "v1.0"),
    ("02", "02_phone", "Điện thoại Công Việc / 電話応対", "v1.2"),
    ("03", "03_meeting", "Họp / 会議", "v1.1"),
    ("04", "04_horenso", "Báo·Liên·Tham vấn / 報・連・相", "v1.1"),
    ("05", "05_presentation", "Thuyết trình / プレゼンテーション", "v1.1"),
    ("06", "06_negotiation", "Đàm phán·Đề xuất / 商談・交渉", "v1.1"),
    ("07", "07_visit_card", "Tiếp khách·Thăm·Danh thiếp / 来客・訪問・名刺交換", "v1.1"),
    ("08", "08_smalltalk", "Trò chuyện thân thiết / 雑談・関係構築", "v1.1"),
]


def stats_book(folder):
    book_path = ROOT / "books" / folder
    rules = list(book_path.glob("nội_dung/phần_*/rule_*/conversation.json"))

    # Sách 01 fallback (different format)
    if not rules:
        md_count = len(list(book_path.glob("nội_dung/vi/phần_*/rule_*.md")))
        return {
            "rules": md_count,
            "conversation_lines": "—",
            "key_phrases": "—",
            "bjt": "—",
            "templates": "—",
            "speakers": "—",
        }

    convs_lines = 0
    key_phrases = 0
    bjt = 0
    templates_count = 0
    speakers_used = set()
    bjt_levels = Counter()
    bjt_skills = Counter()

    for f in rules:
        data = json.load(open(f, encoding='utf-8'))
        for conv in data.get('conversations', []):
            for line in conv.get('conversation_lines', []):
                convs_lines += 1
                if line.get('speaker'):
                    speakers_used.add(line['speaker'])
        key_phrases += len(data.get('key_phrases', []))
        for q in data.get('bjt_practice', []):
            bjt += 1
            bjt_levels[q.get('level', '?')] += 1
            bjt_skills[q.get('skill', '?')] += 1
        templates_count += len(data.get('templates', []))

    return {
        "rules": len(rules),
        "conversation_lines": convs_lines,
        "key_phrases": key_phrases,
        "bjt": bjt,
        "templates": templates_count,
        "speakers": len(speakers_used),
        "bjt_levels": dict(bjt_levels),
        "bjt_skills": dict(bjt_skills),
    }


def main():
    book_stats = []
    totals = Counter()

    for bid, folder, label, version in BOOKS:
        s = stats_book(folder)
        book_stats.append((bid, folder, label, version, s))
        for k, v in s.items():
            if isinstance(v, int):
                totals[k] += v

    out = ROOT / "_shared" / "HIZASHI_STATS.md"
    lines = [
        "# Hizashi 8-Book Series — Statistics",
        "",
        "*Số liệu tổng hợp 8 sách bộ Hizashi. Generated từ scripts/build_stats.py.*",
        "",
        "## 📊 Per-book breakdown",
        "",
        "| # | Sách | Phiên bản | Rules | Conv lines | Key phrases | BJT | Templates | Speakers active |",
        "|---|------|-----------|-------|-----------|-------------|-----|-----------|-----------------|",
    ]
    for bid, folder, label, version, s in book_stats:
        lines.append(
            f"| {bid} | {label} | {version} | {s['rules']} | {s['conversation_lines']} | "
            f"{s['key_phrases']} | {s['bjt']} | {s['templates']} | {s['speakers']} |"
        )
    lines.append(
        f"| | **TOTAL** | | **{totals['rules']}** | **{totals['conversation_lines']}** | "
        f"**{totals['key_phrases']}** | **{totals['bjt']}** | **{totals['templates']}** | |"
    )
    lines.append("")

    # BJT levels aggregate
    all_levels = Counter()
    all_skills = Counter()
    for _, _, _, _, s in book_stats:
        if isinstance(s.get('bjt_levels'), dict):
            for k, v in s['bjt_levels'].items():
                all_levels[k] += v
            for k, v in s['bjt_skills'].items():
                all_skills[k] += v

    lines.append("## 🎯 BJT Level distribution (sách 02-08)")
    lines.append("")
    lines.append("| Level | Count | % |")
    lines.append("|-------|-------|---|")
    total_bjt = sum(all_levels.values())
    for lvl in ['J5', 'J4', 'J3', 'J2', 'J1', 'J1+']:
        n = all_levels.get(lvl, 0)
        pct = f"{n/total_bjt*100:.1f}%" if total_bjt else "—"
        lines.append(f"| {lvl} | {n} | {pct} |")
    lines.append(f"| **Total** | **{total_bjt}** | 100% |")
    lines.append("")

    lines.append("## 🎯 BJT Skill distribution")
    lines.append("")
    lines.append("| Skill | Count |")
    lines.append("|-------|-------|")
    for skill, n in all_skills.most_common():
        lines.append(f"| {skill} | {n} |")
    lines.append("")

    # Cast roles aggregate (top speakers)
    speaker_total = Counter()
    for bid, folder, _, _, _ in book_stats:
        for f in (ROOT / "books" / folder).glob("nội_dung/phần_*/rule_*/conversation.json"):
            try:
                data = json.load(open(f, encoding='utf-8'))
                for conv in data.get('conversations', []):
                    for line in conv.get('conversation_lines', []):
                        sp = line.get('speaker')
                        if sp:
                            speaker_total[sp] += 1
            except Exception:
                pass

    lines.append("## 🎬 Cast usage (sách 02-08)")
    lines.append("")
    lines.append("| Speaker | Total lines | Role |")
    lines.append("|---------|-------------|------|")
    cast_role = {
        "zun": "em Dũng — BD junior chủ đạo",
        "fuon": "chị Hương — 副部長 mentor",
        "tuan_leader": "anh Tuấn — Tech lead",
        "loan_keiri": "chị Loan — 経理部長",
        "linh": "em Linh — Junior intern",
        "hai": "em Hải — FE/DevOps peer",
        "ha_cto": "anh Hà — CTO",
        "matsumoto": "anh Matsumoto — 白鷗 PM",
        "oogaki_sales": "anh Ōgaki — 白鷗 営業部長",
        "nakamura_cfo": "anh Nakamura — 白鷗 CFO",
        "tanaka_pmo": "anh Tanaka — 白鷗 PMO",
        "reception_hakuo": "Lễ tân 白鷗",
        "unknown_caller": "Người gọi không rõ",
    }
    for sp, n in speaker_total.most_common():
        role = cast_role.get(sp, sp)
        lines.append(f"| {sp} | {n} | {role} |")
    lines.append("")

    lines.append("## 📦 Output files")
    lines.append("")
    lines.append("Mỗi sách có 3 format: `.docx` (Word), `.html` (web), `.epub` (e-reader).")
    lines.append("")
    for bid, folder, label, version, _ in book_stats:
        out_dir = ROOT / "books" / folder / "output"
        files = sorted(out_dir.glob(f"Hizashi_*_{version}.*")) if out_dir.exists() else []
        if files:
            sizes = ", ".join(f"{f.suffix[1:]} ({f.stat().st_size//1024}K)" for f in files[:3])
            lines.append(f"- **Sách {bid}** ({version}): {sizes}")

    lines.append("")
    lines.append("---")
    lines.append("")
    lines.append("*Generated 2026-04 by `_shared/scripts/build_stats.py`.*")

    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"✓ Stats: {out}")
    print(f"  Total rules across 7 books: {totals['rules']}")
    print(f"  Total BJT questions: {total_bjt}")
    print(f"  Total templates: {totals['templates']}")


if __name__ == "__main__":
    main()
