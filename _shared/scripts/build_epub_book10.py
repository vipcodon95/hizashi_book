"""
Build EPUB v3 cho Sách 10 — Business Japanese (Kính ngữ BJT).

Khác với build_epub_combined.py (sách dialogue thuần .md), sách 10 gồm:
  - Lý thuyết (.md)         → đưa trực tiếp
  - Bài tập (.json)         → render câu hỏi + đáp án/giải thích gom cuối bài
  - Mogishiken đọc hiểu (.json sections) → passage JP + dịch VN + câu hỏi + đáp án cuối

Bố cục: theo bài (5 chương), mỗi chương: Lý thuyết → Bài tập → Đáp án → Đọc hiểu.
Bản dịch: câu Nhật trước, dịch Việt ngay dưới (in nghiêng). KHÔNG furigana.

Output: _shared/output/hizashi_book10_business.epub
"""

from __future__ import annotations

import json
import subprocess
import tempfile
import html
from pathlib import Path

SHARED_ROOT = Path(__file__).resolve().parent.parent
HIZASHI_BOOK_ROOT = SHARED_ROOT.parent
BOOK_DIR = HIZASHI_BOOK_ROOT / "books" / "10_business_japanese"
OUTPUT_DIR = SHARED_ROOT / "output"

BOOK_TITLE = "Sách Business Japanese — Kính ngữ (敬語)"
BOOK_SUBTITLE = "Lý thuyết · Bài tập · Đọc hiểu — song ngữ Nhật–Việt (BJT)"

# 5 chương: (folder, tên chương, file lý thuyết, [list BaiTap], file Mogishiken)
CHAPTERS = [
    {
        "folder": "2.1.0_keigo_phan_loai",
        "title": "Phân loại Kính ngữ (敬語の分類)",
        "lythuyet": "2.1.0_Phan_loai_Kinh_ngu.md",
        "baitap": [
            "2.1.1_Teineigo_BaiTap.json",
            "2.1.2_Sonkeigo_BaiTap.json",
            "2.1.3_Kenjougo_BaiTap.json",
        ],
        "mogishiken": "2.1.0_Keigo_Mogishiken.json",
    },
    {
        "folder": "2.1.4_juzu_doushi",
        "title": "Động từ Cho – Nhận (授受動詞)",
        "lythuyet": "2.1.4_JuzuDoushi_LyThuyet.md",
        "baitap": ["2.1.4_JuzuDoushi_BaiTap.json"],
        "mogishiken": "2.1.4_JuzuDoushi_Mogishiken.json",
    },
    {
        "folder": "2.1.5_uchi_soto",
        "title": "Trong – Ngoài (内・外 / Uchi–Soto)",
        "lythuyet": "2.1.5_UchiSoto_LyThuyet.md",
        "baitap": ["2.1.5_UchiSoto_BaiTap.json"],
        "mogishiken": "2.1.5_UchiSoto_Mogishiken.json",
    },
    {
        "folder": "2.1.6_ukemi_shieki",
        "title": "Bị động – Sai khiến (受身・使役)",
        "lythuyet": "2.1.6_UkemiShieki_LyThuyet.md",
        "baitap": ["2.1.6_UkemiShieki_BaiTap.json"],
        "mogishiken": "2.1.6_UkemiShieki_Mogishiken.json",
    },
    {
        "folder": "2.1.7_tong_hop_so_sanh",
        "title": "Tổng hợp & So sánh (総合・比較)",
        "lythuyet": "2.1.7_TongHop_SoSanh_LyThuyet.md",
        "baitap": ["2.1.7_TongHop_SoSanh_BaiTap.json"],
        "mogishiken": "2.1.7_TongHop_Mogishiken.json",
    },
]


def g(d: dict, *keys, default=""):
    """Lấy giá trị theo nhiều key fallback (schema không đồng nhất giữa file)."""
    for k in keys:
        if k in d and d[k] not in (None, ""):
            return d[k]
    return default


def esc(s: str) -> str:
    """Escape ký tự markdown nguy hiểm tối thiểu, giữ nội dung text."""
    return str(s).replace("|", "\\|")


def nl2br(s: str) -> str:
    """Đổi xuống dòng trong passage thành <br/> để giữ format email."""
    return str(s).replace("\n", "<br/>\n")


def demote(md: str, levels: int = 1) -> str:
    """Hạ cấp heading markdown đi `levels` cấp (cho lý thuyết nằm dưới chương)."""
    out = []
    for line in md.split("\n"):
        stripped = line.lstrip()
        if stripped.startswith("#"):
            hashes = len(stripped) - len(stripped.lstrip("#"))
            if stripped[hashes:hashes + 1] == " ":
                new = "#" * min(hashes + levels, 6) + stripped[hashes:]
                out.append(new)
                continue
        out.append(line)
    return "\n".join(out)


def render_question(q: dict, n: int | None = None) -> list[str]:
    """Render 1 câu hỏi (KHÔNG đáp án) — JP trước, VN dưới."""
    lines = []
    qid = q.get("id", n)
    qja = g(q, "question_ja", "question_jp")
    qvn = g(q, "question_vn")
    lines.append(f"**Câu {qid}.** {qja}")
    if qvn:
        lines.append(f"<br/>*({qvn})*")
    lines.append("")
    choices = q.get("choices", {})
    if isinstance(choices, dict):
        # Dạng {"A": "text", ...}
        for key in sorted(choices.keys()):
            lines.append(f"- **{key}.** {choices[key]}")
    elif isinstance(choices, list):
        for c in choices:
            # Dạng {"key","jp","vn"} hoặc {"id","text","text_translation"}
            cid = g(c, "key", "id")
            ctext = g(c, "jp", "text")
            cvn = g(c, "vn", "text_translation")
            line = f"- **{cid}.** {ctext}"
            if cvn:
                line += f" — *{cvn}*"
            lines.append(line)
    lines.append("")
    return lines


def render_answer(q: dict, n: int | None = None) -> list[str]:
    """Render đáp án + giải thích + tip cho 1 câu (mục cuối bài)."""
    lines = []
    qid = q.get("id", n)
    ans = g(q, "answer")
    expl = g(q, "explanation_vn", "explanation")
    tip = g(q, "tip")
    head = f"**Câu {qid}: {ans}**"
    lines.append(head)
    if expl:
        lines.append(f"<br/>{expl}")
    if tip:
        lines.append(f"<br/>*Mẹo: {tip}*")
    lines.append("")
    return lines


def build_baitap(folder: Path, files: list[str]) -> tuple[list[str], list[str]]:
    """Trả (phần câu hỏi, phần đáp án) cho tất cả bài tập của chương."""
    q_lines: list[str] = ["#### Bài tập trắc nghiệm", ""]
    a_lines: list[str] = ["#### Đáp án & giải thích", ""]
    for fname in files:
        data = json.load(open(folder / fname, encoding="utf-8"))
        meta = data.get("meta", {})
        sub = g(meta, "title_vn", "title", default=fname)
        q_lines.append(f"##### {sub}")
        q_lines.append("")
        a_lines.append(f"##### {sub}")
        a_lines.append("")
        for i, q in enumerate(data.get("questions", []), 1):
            q_lines += render_question(q, i)
            a_lines += render_answer(q, i)
    return q_lines, a_lines


def build_mogishiken(folder: Path, fname: str) -> list[str]:
    """Render đọc hiểu: passage JP + VN + câu hỏi, đáp án cuối mỗi section."""
    data = json.load(open(folder / fname, encoding="utf-8"))
    lines = ["#### Đọc hiểu (模擬試験)", ""]
    meta = data.get("meta", {})
    desc = g(meta, "description_vn")
    if desc:
        lines.append(f"*{desc}*")
        lines.append("")
    for s in data.get("sections", []):
        sid = s.get("section_id", "")
        lvl = g(s, "level_name", default="")
        dtype = g(s, "document_type", default="")
        sit = g(s, "situation_vn")
        head = f"##### Đoạn {sid}"
        extra = " · ".join(x for x in [str(lvl), str(dtype)] if x)
        if extra:
            head += f" ({extra})"
        lines.append(head)
        lines.append("")
        if sit:
            lines.append(f"> **Tình huống:** {sit}")
            lines.append("")
        # Passage JP
        pja = g(s, "passage_ja")
        pvn = g(s, "passage_vn")
        if pja:
            lines.append("> " + nl2br(pja).replace("\n", "\n> "))
            lines.append("")
        if pvn:
            lines.append("**Bản dịch:**")
            lines.append("")
            lines.append("> *" + nl2br(pvn).replace("\n", "\n> ") + "*")
            lines.append("")
        # Câu hỏi
        qs = s.get("questions", [])
        for i, q in enumerate(qs, 1):
            lines += render_question(q, q.get("id", i))
        # Đáp án ngay cuối section
        if qs:
            lines.append("**Đáp án đoạn {}:**".format(sid))
            lines.append("")
            for i, q in enumerate(qs, 1):
                lines += render_answer(q, q.get("id", i))
        lines.append("---")
        lines.append("")
    return lines


def build_md() -> str:
    lines: list[str] = []
    # YAML metadata
    lines += [
        "---",
        f'title: "{BOOK_TITLE}"',
        f'subtitle: "{BOOK_SUBTITLE}"',
        'author: "Hizashi Teams"',
        "lang: vi",
        'rights: "© 2026 Hizashi"',
        "---",
        "",
    ]
    # Bảng thuật ngữ (nếu có)
    glo = BOOK_DIR / "_thuat_ngu.md"
    if glo.exists():
        # File đã có h1 riêng → dùng trực tiếp làm chương (không thêm heading ngoài, tránh trùng TOC)
        lines.append(glo.read_text(encoding="utf-8"))
        lines.append("")

    for ch in CHAPTERS:
        folder = BOOK_DIR / ch["folder"]
        lines.append(f"# {ch['title']}")
        lines.append("")
        # 1. Lý thuyết
        lt = folder / ch["lythuyet"]
        if lt.exists():
            lines.append("## Lý thuyết")
            lines.append("")
            # lý thuyết .md có h1/h2 riêng → hạ 2 cấp để nằm dưới "## Lý thuyết"
            lines.append(demote(lt.read_text(encoding="utf-8"), 2))
            lines.append("")
        # 2. Bài tập + 3. Đáp án
        q_lines, a_lines = build_baitap(folder, ch["baitap"])
        lines.append("## Bài tập")
        lines.append("")
        lines += q_lines
        lines.append("## Đáp án & giải thích bài tập")
        lines.append("")
        lines += a_lines
        # 4. Đọc hiểu
        if ch.get("mogishiken"):
            mg = folder / ch["mogishiken"]
            if mg.exists():
                lines.append("## Đọc hiểu")
                lines.append("")
                lines += build_mogishiken(folder, ch["mogishiken"])
        lines.append("")
    return "\n".join(lines)


def build_epub() -> Path:
    print("=== Build EPUB: Sách 10 Business Japanese ===")
    md = build_md()
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    out = OUTPUT_DIR / "hizashi_book10_business.epub"
    with tempfile.NamedTemporaryFile(
        mode="w", suffix=".md", encoding="utf-8", delete=False
    ) as tmp:
        tmp.write(md)
        tmp_path = Path(tmp.name)
    try:
        css = SHARED_ROOT / "scripts" / "epub_styles_book10.css"
        lua = SHARED_ROOT / "scripts" / "strip_colgroup.lua"
        cmd = [
            "pandoc", str(tmp_path),
            "-o", str(out),
            "--from", "markdown+raw_html",
            "--to", "epub3",
            "--toc", "--toc-depth=2",
            "--split-level=1",
            "--css", str(css),
            "--metadata", f"title={BOOK_TITLE}",
            "--metadata", "author=Hizashi Teams",
            "--metadata", "lang=vi",
        ]
        if lua.exists():
            cmd += ["--lua-filter", str(lua)]
        print("  Running pandoc...")
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode != 0:
            print("  ERROR:", r.stderr)
            raise RuntimeError("pandoc failed")
        kb = out.stat().st_size / 1024
        print(f"  ✓ {out.relative_to(HIZASHI_BOOK_ROOT)} ({kb:.0f} KB)")
        return out
    finally:
        tmp_path.unlink(missing_ok=True)


if __name__ == "__main__":
    build_epub()
