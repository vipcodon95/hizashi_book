#!/usr/bin/env python3
"""Build chương.md files from draft/chương_NN_*_scenes.json.

For each scenes.json:
- Reads voice_profiles.json to map speaker key → display name (JP).
- Renders dialogue as 2-line format: JP first, then VN italic.
- Internal monologue (zun_inner) renders as italic block.
- Bí quyết blocks render as ### + body.
- Recap renders as code block.

Output goes to nội_dung/chương_NN_<slug>/chương.md.
"""

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DRAFT = ROOT / "draft"
NOI_DUNG = ROOT / "nội_dung"
PROFILES_PATH = NOI_DUNG / "voice_profiles.json"


def load_speaker_map():
    """Map speaker key → display name (JP, used in **bold** prefix)."""
    profiles = json.loads(PROFILES_PATH.read_text(encoding="utf-8"))
    speakers = profiles["speakers"]
    out = {}
    for key, prof in speakers.items():
        if key.startswith("_"):
            continue
        out[key] = prof.get("name_ja", key)
    # Generic NPC fallbacks (not in profile, used inline in scenes)
    npc_fallbacks = {
        "customs_officer": "税関職員",
        "reception_hotel": "ホテル受付",
        "konbini_staff": "コンビニ店員",
        "jal_staff": "JAL地上係員",
        "okami_ryokan": "女将",
        "nakai": "仲居",
        "stage_manager": "ステージMC",
        "mc_wedding": "司会者",
        "wedding_staff": "結婚式スタッフ",
        "priest": "司式者",
        "yumi_wife": "由美 (新婦)",
        "tanaka_father": "田中父",
        "friend_speech": "友人スピーチ",
        "table_guest_1": "同席ゲストA",
        "table_guest_2": "同席ゲストB",
        "table_guest_3": "同席ゲストC",
        "guest_1": "来場者A",
        "guest_2": "来場者B",
        "guest_3": "来場者C",
        "sasaki_dev": "佐々木 (開発)",
        "hayashi_bd": "林 (営業)",
        "reporter_jp": "田所記者",
        "analyst_jp": "アナリスト",
        "caddie_nu": "井上キャディ",
        "moderator": "モデレーター",
        "demo_engineer_aws": "山田 (AWS)",
        "all": "全員",
        "all_jp": "白鷗一同",
    }
    for k, v in npc_fallbacks.items():
        out.setdefault(k, v)
    return out


def escape_cell(text):
    """Escape pipe + newline cho markdown table cell."""
    return text.replace("|", "\\|").replace("\n", " ")


def render_dialogue_table(rows, speaker_map):
    """Render N dialogue rows thành 1 bảng 2 cột (Speaker | Câu)."""
    out = ["| Speaker | Câu |", "|---------|-----|"]
    for line in rows:
        speaker = line.get("speaker", "")
        ja = escape_cell(line.get("ja", "").strip())
        vi = escape_cell(line.get("vi", "").strip())
        display = speaker_map.get(speaker, speaker)
        if ja:
            cell = f"「{ja}」<br>*{vi}*"
        else:
            # Speaker but no JP (rare) — VN italic only
            cell = f"*{vi}*"
        out.append(f"| **{display}** | {cell} |")
    out.append("")  # blank line after table
    return "\n".join(out)


def render_scene(scene, speaker_map):
    out = []
    n = scene["n"]
    time = scene["time"]
    location = scene["location"]
    out.append(f"## Scene {n} — {time} · {location}\n")
    setting = scene.get("setting", "").strip()
    if setting:
        out.append(f"*{setting}*\n")

    # Group consecutive dialogue lines into tables; flush on
    # internal-monologue / action-only (zun_inner) which renders italic.
    buffer = []

    def flush():
        if buffer:
            out.append(render_dialogue_table(buffer, speaker_map))
            buffer.clear()

    for line in scene.get("lines", []):
        speaker = line.get("speaker", "")
        if speaker == "zun_inner":
            flush()
            vi = line.get("vi", "").strip()
            out.append(f"*{vi}*\n")
        else:
            buffer.append(line)
    flush()

    bq = scene.get("bi_quyet")
    if bq:
        out.append(f"\n### 💡 Bí quyết — {bq['title']}\n")
        out.append(f"{bq['body']}\n")

    out.append("\n---\n")
    return "\n".join(out)


def render_chapter(scenes_path, speaker_map):
    data = json.loads(scenes_path.read_text(encoding="utf-8"))

    chapter_id = data["chapter_id"]  # e.g. "09-01"
    chapter_num = chapter_id.split("-")[1]
    title = data["title"]
    boi_canh = data["boi_canh"]
    bi_quyet_tong = data.get("bi_quyet_tong", [])
    scenes = data["scenes"]
    recap = data.get("recap", {})

    out = []
    out.append(f"# Chương {chapter_num} — {title['vi']} / {title['ja']}\n")
    out.append(f"> **Bối cảnh.** {boi_canh['vi']}\n>")
    out.append(f"> **背景.** {boi_canh['ja']}\n")
    out.append("---\n")

    if bi_quyet_tong:
        out.append("## 💡 Bí quyết tổng\n")
        for item in bi_quyet_tong:
            out.append(f"- {item}")
        out.append("")
        out.append("---\n")

    for scene in scenes:
        out.append(render_scene(scene, speaker_map))

    if recap:
        out.append("## 🌅 Recap của Dũng — note vào memory bank\n")
        setting = recap.get("setting", "").strip()
        if setting:
            out.append(f"*{setting}*\n")
        content = recap.get("content", "")
        out.append("```")
        out.append(content)
        out.append("```\n")

    out.append("---\n")
    out.append(
        f"> **Hizashi Sách 09 — Chương {chapter_num} — {title['ja']}**  \n"
        f"> *{title['vi']}.*\n"
    )

    return "\n".join(out)


def main():
    speaker_map = load_speaker_map()

    drafts = sorted(DRAFT.glob("chương_*_scenes.json"))
    print(f"Tìm thấy {len(drafts)} draft chương:")
    for d in drafts:
        print(f"  - {d.name}")

    for draft_path in drafts:
        # Extract chương number + slug from filename
        m = re.match(r"chương_(\d{2})_(.+?)_scenes\.json", draft_path.name)
        if not m:
            print(f"  ⚠ Bỏ qua {draft_path.name} (filename không match)")
            continue
        chap_num, slug = m.group(1), m.group(2)

        out_dir = NOI_DUNG / f"chương_{chap_num}_{slug}"
        out_dir.mkdir(parents=True, exist_ok=True)
        out_path = out_dir / "chương.md"

        md = render_chapter(draft_path, speaker_map)
        out_path.write_text(md, encoding="utf-8")
        print(
            f"  ✓ {out_path.relative_to(ROOT)}  ({len(md)} chars, "
            f"{md.count(chr(10))} dòng)"
        )

    print("\nHoàn tất.")


if __name__ == "__main__":
    main()
