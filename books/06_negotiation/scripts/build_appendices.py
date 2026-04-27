#!/usr/bin/env python3
"""
Build appendices for Hizashi Book 02 (Phone) from 60 rule JSON files.
- Phụ lục A: Script template tổng hợp (key_phrases tất cả rule)
- Phụ lục B: Vocab tổng hợp (parse từ rule.md vocab tables)
- Phụ lục C: BJT practice tổng hợp (gom theo level)

Usage: python3 build_appendices.py
Output: nội_dung/phụ_lục/phụ_lục_A.md, _B.md, _C.md
"""

import json
import re
from pathlib import Path

# Paths
BOOK_ROOT = Path(__file__).parent.parent
NOI_DUNG = BOOK_ROOT / "nội_dung"
PHU_LUC = NOI_DUNG / "phụ_lục"
PHU_LUC.mkdir(parents=True, exist_ok=True)

# Speaker key → Vietnamese display name
SPEAKER_DISPLAY = {
    "zun": "ズン (em Dũng)",
    "fuon": "フオン副部長 (chị Hương)",
    "tuan_leader": "トゥアンリーダー (anh Tuấn)",
    "loan_keiri": "ロアン経理部長 (chị Loan)",
    "linh": "リン (em Linh)",
    "hai": "ハイ (em Hải)",
    "ha_cto": "ハー (anh Hà)",
    "matsumoto": "松本PM (anh Matsumoto, khách Nhật)",
    "reception_hakuo": "白鷗 受付 (lễ tân)",
    "nakamura_cfo": "中村CFO",
    "unknown_caller": "Người gọi không rõ",
}

PHAN_NAME_VI = {
    "phần_I": "Phần I — Nền tảng trước nhấc máy",
    "phần_II": "Phần II — Nhận điện thoại",
    "phần_III": "Phần III — Gọi điện thoại đi",
    "phần_IV": "Phần IV — Tình huống khó",
    "phần_V": "Phần V — Voicemail, Online & Best Practice",
}


def find_all_rules():
    """Return list of (phần, rule_id, json_path, md_path) sorted by rule_id."""
    rules = []
    for phan_dir in sorted(NOI_DUNG.glob("phần_*")):
        if not phan_dir.is_dir():
            continue
        for rule_dir in sorted(phan_dir.glob("rule_*")):
            if not rule_dir.is_dir():
                continue
            json_path = rule_dir / "conversation.json"
            md_path = rule_dir / "rule.md"
            if not json_path.exists() or not md_path.exists():
                continue
            try:
                data = json.load(open(json_path, encoding="utf-8"))
                rule_id = data.get("rule_id", rule_dir.name)
            except Exception:
                continue
            rules.append((phan_dir.name, rule_id, json_path, md_path, data))
    # Sort by rule_id (rule_01, rule_02, ...)
    rules.sort(key=lambda r: int(re.search(r"rule_(\d+)", r[1]).group(1)) if re.search(r"rule_(\d+)", r[1]) else 999)
    return rules


def build_appendix_a(rules):
    """Phụ lục A — Script template tổng hợp từ key_phrases."""
    lines = [
        "# Phụ lục A — Script Template Tổng Hợp / 場面別フレーズ集",
        "",
        "*Tổng hợp `key_phrases` từ tất cả 60 rules. Sắp xếp theo phần để tiện tra cứu khi soạn / luyện.*",
        "",
        "*Mỗi cụm có thể audio TTS — cấu trúc trong `conversation.json` của từng rule.*",
        "",
        "---",
        "",
    ]

    current_phan = None
    for phan, rule_id, _, _, data in rules:
        if phan != current_phan:
            lines.append("")
            lines.append(f"## {PHAN_NAME_VI.get(phan, phan)}")
            lines.append("")
            current_phan = phan

        title_vi = data.get("title", {}).get("vi", "")
        title_ja = data.get("title", {}).get("ja", "")
        key_phrases = data.get("key_phrases", [])
        if not key_phrases:
            continue

        lines.append(f"### {rule_id.replace('_', ' ').title()} — {title_vi} / {title_ja}")
        lines.append("")
        for kp in key_phrases:
            speaker = SPEAKER_DISPLAY.get(kp.get("speaker", ""), kp.get("speaker", ""))
            ja = kp.get("sentence", "")
            vi = kp.get("sentence_translation", "")
            purpose = kp.get("purpose", "")
            lines.append(f"**{speaker}:**")
            lines.append("")
            lines.append(f"> 🇯🇵 「{ja}」")
            lines.append(f">")
            lines.append(f"> 🇻🇳 *{vi}*")
            if purpose:
                lines.append(f">")
                lines.append(f"> 📝 _{purpose}_")
            lines.append("")
        lines.append("")

    out = PHU_LUC / "phụ_lục_A_script_template.md"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"  Phụ lục A: {len(lines)} dòng → {out.name}")


def parse_vocab_from_md(md_path):
    """Parse vocab table from rule.md. Returns list of (kanji, yomi, meaning)."""
    text = md_path.read_text(encoding="utf-8")
    vocabs = []
    # Look for Vocab section
    in_vocab = False
    for line in text.split("\n"):
        if re.search(r"^##.*[Vv]ocab|^##.*語彙", line):
            in_vocab = True
            continue
        if in_vocab and line.startswith("##"):
            in_vocab = False
            continue
        if in_vocab and "|" in line:
            parts = [p.strip() for p in line.split("|") if p.strip()]
            # Skip header and separator
            if len(parts) >= 3 and not parts[0].startswith("-") and parts[0] not in ("漢字", "Tiếng Nhật"):
                kanji, yomi, meaning = parts[0], parts[1], parts[2]
                # Skip if this is the markdown separator
                if "---" in kanji or kanji == "":
                    continue
                vocabs.append((kanji, yomi, meaning))
    return vocabs


def build_appendix_b(rules):
    """Phụ lục B — Vocab tổng hợp parse từ rule.md."""
    lines = [
        "# Phụ lục B — Từ vựng Tổng hợp / 語彙総合集",
        "",
        "*Tổng hợp tất cả từ vựng phone-related từ 60 rules. Sắp xếp theo Phần.*",
        "",
        "*Đọc romaji và nghĩa Việt giúp người Việt học JP business dễ tra cứu.*",
        "",
        "---",
        "",
    ]

    seen = {}  # kanji → first occurrence (rule, yomi, meaning)
    current_phan = None
    phan_vocabs = {}

    for phan, rule_id, _, md_path, data in rules:
        vocabs = parse_vocab_from_md(md_path)
        if phan not in phan_vocabs:
            phan_vocabs[phan] = []
        for kanji, yomi, meaning in vocabs:
            if kanji not in seen:
                seen[kanji] = (rule_id, yomi, meaning)
                phan_vocabs[phan].append((kanji, yomi, meaning, rule_id))

    for phan in ["phần_I", "phần_II", "phần_III", "phần_IV", "phần_V"]:
        if phan not in phan_vocabs or not phan_vocabs[phan]:
            continue
        lines.append("")
        lines.append(f"## {PHAN_NAME_VI.get(phan, phan)}")
        lines.append("")
        lines.append("| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |")
        lines.append("|------|------|------|------|")
        for kanji, yomi, meaning, rule_id in phan_vocabs[phan]:
            lines.append(f"| {kanji} | {yomi} | {meaning} | {rule_id} |")
        lines.append("")

    lines.append("")
    lines.append(f"**Tổng:** {len(seen)} từ unique đã liệt kê trong sách.")
    lines.append("")

    out = PHU_LUC / "phụ_lục_B_vocab.md"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"  Phụ lục B: {len(seen)} từ unique → {out.name}")


def build_appendix_c(rules):
    """Phụ lục C — BJT practice gộp theo level."""
    lines = [
        "# Phụ lục C — BJT Practice Tổng Hợp / BJT練習問題集",
        "",
        "*Tổng hợp tất cả BJT practice questions từ 60 rules, sắp xếp theo level và skill.*",
        "",
        "*Dùng để luyện thi BJT business Japanese — câu hỏi có audio prompt được link đến rule gốc.*",
        "",
        "---",
        "",
    ]

    by_level = {"J5": [], "J4": [], "J3": [], "J2": [], "J1": [], "J1+": []}
    total = 0
    for phan, rule_id, _, _, data in rules:
        questions = data.get("bjt_practice", [])
        for q in questions:
            level = q.get("level", "J3")
            by_level.setdefault(level, []).append((rule_id, data.get("title", {}).get("vi", ""), q))
            total += 1

    for level in ["J5", "J4", "J3", "J2", "J1", "J1+"]:
        questions = by_level.get(level, [])
        if not questions:
            continue
        lines.append("")
        lines.append(f"## Level {level} ({len(questions)} câu)")
        lines.append("")
        for i, (rule_id, title_vi, q) in enumerate(questions, 1):
            skill = q.get("skill", "—")
            qja = q.get("question_ja", "")
            options = q.get("options", [])
            correct = q.get("correct", "")
            explanation = q.get("explanation", {})

            lines.append(f"### {level}.{i} (từ {rule_id} — {title_vi})")
            lines.append("")
            lines.append(f"**Skill:** {skill}")
            lines.append("")
            lines.append(f"**Q:** {qja}")
            lines.append("")
            for j, opt in enumerate(options):
                marker = "**" if "ABCD"[j] == correct else ""
                lines.append(f"- {marker}{chr(65+j)}) {opt}{marker}")
            lines.append("")
            lines.append(f"**Đáp án:** {correct}")
            lines.append("")
            if explanation:
                lines.append(f"**Giải thích / 解説:**")
                lines.append(f"- 🇯🇵 {explanation.get('ja', '')}")
                lines.append(f"- 🇻🇳 {explanation.get('vi', '')}")
                lines.append("")

    lines.append("")
    lines.append(f"**Tổng số câu hỏi:** {total}")
    lines.append("")
    lines.append("---")
    lines.append("")
    lines.append("*Tài liệu này có thể export thành quiz interactive — đọc data trực tiếp từ `bjt_practice` array trong mỗi `conversation.json`.*")
    lines.append("")

    out = PHU_LUC / "phụ_lục_C_bjt_practice.md"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"  Phụ lục C: {total} câu hỏi → {out.name}")


def build_appendix_d(rules):
    """Phụ lục D — Template tổng hợp (sách 03+: agenda, biên bản, mail)."""
    lines = [
        "# Phụ lục D — Template Tổng Hợp / テンプレート集",
        "",
        "*Tổng hợp các template (agenda, biên bản, mail) đính kèm trong các rules. Copy-paste để dùng.*",
        "",
        "---",
        "",
    ]

    format_label = {
        "agenda": "Agenda họp",
        "minutes": "Biên bản (議事録)",
        "email_invite": "Email mời họp",
        "email_followup": "Email follow-up",
        "checklist": "Checklist",
        "report": "Báo cáo",
        "other": "Template khác",
    }

    by_format = {}
    total = 0
    for phan, rule_id, _, _, data in rules:
        templates = data.get("templates", []) or []
        for tpl in templates:
            fmt = tpl.get("format", "other")
            by_format.setdefault(fmt, []).append((rule_id, data.get("title", {}).get("vi", ""), tpl))
            total += 1

    for fmt in ["agenda", "minutes", "email_invite", "email_followup", "checklist", "report", "other"]:
        items = by_format.get(fmt, [])
        if not items:
            continue
        lines.append("")
        lines.append(f"## {format_label[fmt]} ({len(items)} mẫu)")
        lines.append("")
        for rule_id, title_vi, tpl in items:
            lines.append(f"### {rule_id.replace('_',' ').title()} — {tpl.get('title_vi', title_vi)}")
            lines.append("")
            if tpl.get("title_ja"):
                lines.append(f"*JP: {tpl['title_ja']}*")
                lines.append("")
            lines.append("```")
            lines.append(tpl.get("content_ja", ""))
            lines.append("```")
            lines.append("")
            if tpl.get("content_vi"):
                lines.append("**Bản Việt placeholder:**")
                lines.append("")
                lines.append("```")
                lines.append(tpl["content_vi"])
                lines.append("```")
                lines.append("")
            if tpl.get("notes_vi") or tpl.get("notes_ja"):
                if tpl.get("notes_vi"):
                    lines.append(f"📝 **Ghi chú VN:** {tpl['notes_vi']}")
                if tpl.get("notes_ja"):
                    lines.append(f"📝 **Ghi chú JP:** {tpl['notes_ja']}")
                lines.append("")

    lines.append("")
    lines.append(f"**Tổng template:** {total}")
    lines.append("")

    out = PHU_LUC / "phụ_lục_D_templates.md"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"  Phụ lục D: {total} template → {out.name}")


def main():
    print("Building appendices for Sách 06 — Đàm phán / 商談・交渉...")
    rules = find_all_rules()
    print(f"Found {len(rules)} rules.\n")

    build_appendix_a(rules)
    build_appendix_b(rules)
    build_appendix_c(rules)
    build_appendix_d(rules)
    print(f"\n✓ Done. Output: {PHU_LUC}")


if __name__ == "__main__":
    main()
