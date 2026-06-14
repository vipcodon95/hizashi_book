#!/usr/bin/env python3
"""Tạo ảnh bìa EPUB cho sách Hizashi — bố cục 'Logo trên - Tựa giữa'.

Nền kem, logo mặt trời Hizashi ở 1/3 trên, tên thương hiệu HIZASHI, tựa đề lớn
ở giữa, phụ đề + tác giả phía dưới. Tông màu lấy từ logo (đỏ son + vàng nghệ).

Dùng:
  python3 make_cover.py --title "Email Công Việc" \
      --subtitle "Cẩm nang viết email song ngữ Việt–Nhật" \
      --jp "メール業務" \
      --out /path/cover_email_vn.png

Render bằng rsvg-convert (sắc nét), ghép logo bằng Pillow.
"""
from __future__ import annotations
import argparse
import base64
import subprocess
import tempfile
import html
from pathlib import Path

SHARED = Path(__file__).resolve().parent.parent
LOGO = SHARED / "logo.png"

# Kích thước bìa EPUB chuẩn (tỉ lệ 1 : 1.6)
W, H = 1600, 2560

# Tông màu lấy từ logo
CREAM = "#FBF6EC"       # nền kem nhạt
RED = "#C83B27"         # đỏ son (chữ chính)
YELLOW = "#EBAF56"      # vàng nghệ (đường kẻ, nhấn)
INK = "#3A2E24"         # nâu đậm (chữ phụ, dễ đọc trên kem)
GRAY = "#7A6E60"        # xám nâu (phụ đề)


def esc(s: str) -> str:
    return html.escape(s, quote=True)


def _hex_to_rgb(h: str):
    h = h.lstrip("#")
    return tuple(int(h[i:i+2], 16) for i in (0, 2, 4))


def build_svg(title: str, subtitle: str, jp: str, author: str,
              logo_href: str) -> str:
    # Tựa đề có thể 2 dòng — tách theo '|' nếu người dùng truyền, hoặc auto 1 dòng
    title_lines = title.split("|")
    ty0 = 1340
    title_tspans = ""
    for i, line in enumerate(title_lines):
        title_tspans += (
            f'<tspan x="{W//2}" dy="{0 if i == 0 else 150}">{esc(line.strip())}</tspan>'
        )

    return f'''<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     width="{W}" height="{H}" viewBox="0 0 {W} {H}">
  <defs>
    <linearGradient id="bg" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0" stop-color="#FDFAF3"/>
      <stop offset="1" stop-color="{CREAM}"/>
    </linearGradient>
  </defs>
  <rect width="{W}" height="{H}" fill="url(#bg)"/>
  <rect x="60" y="60" width="{W-120}" height="{H-120}" fill="none"
        stroke="{RED}" stroke-width="4" opacity="0.55"/>
  <rect x="80" y="80" width="{W-160}" height="{H-160}" fill="none"
        stroke="{YELLOW}" stroke-width="2" opacity="0.7"/>
  <image x="{(W-620)//2}" y="300" width="620" height="620" xlink:href="{logo_href}"/>
  <text x="{W//2}" y="1050" text-anchor="middle"
        font-family="Georgia, 'Times New Roman', serif" font-size="118"
        font-weight="bold" letter-spacing="14" fill="{RED}">HIZASHI</text>
  <text x="{W//2}" y="1110" text-anchor="middle"
        font-family="Georgia, serif" font-size="40" letter-spacing="6"
        fill="{GRAY}">日差し — Tia n&#7855;ng</text>
  <line x1="{W//2-180}" y1="1190" x2="{W//2+180}" y2="1190" stroke="{YELLOW}" stroke-width="4"/>
  <circle cx="{W//2}" cy="1190" r="9" fill="{RED}"/>
  <text x="{W//2}" y="{ty0}" text-anchor="middle"
        font-family="Georgia, 'Times New Roman', serif" font-size="138"
        font-weight="bold" fill="{INK}">{title_tspans}</text>
  <text x="{W//2}" y="{ty0 + 150*len(title_lines) + 80}" text-anchor="middle"
        font-family="'Hiragino Mincho ProN', 'Yu Mincho', serif" font-size="76"
        fill="{RED}">{esc(jp)}</text>
  <text x="{W//2}" y="2160" text-anchor="middle"
        font-family="Georgia, serif" font-size="50" fill="{GRAY}">{esc(subtitle)}</text>
  <line x1="{W//2-120}" y1="2330" x2="{W//2+120}" y2="2330" stroke="{YELLOW}" stroke-width="3" opacity="0.8"/>
  <text x="{W//2}" y="2410" text-anchor="middle"
        font-family="Georgia, serif" font-size="54" letter-spacing="3"
        fill="{INK}">{esc(author)}</text>
</svg>'''


def build_svg_band(title, subtitle, jp, author, logo_href):
    """Mẫu 2 — Dải đỏ trên cùng chứa logo + HIZASHI trắng, nửa dưới kem chứa tựa."""
    title_lines = title.split("|")
    ty0 = 1480
    title_tspans = ""
    for i, line in enumerate(title_lines):
        title_tspans += f'<tspan x="{W//2}" dy="{0 if i == 0 else 155}">{esc(line.strip())}</tspan>'
    band_h = 1000
    return f'''<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     width="{W}" height="{H}" viewBox="0 0 {W} {H}">
  <rect width="{W}" height="{H}" fill="{CREAM}"/>
  <rect width="{W}" height="{band_h}" fill="{RED}"/>
  <rect y="{band_h}" width="{W}" height="14" fill="{YELLOW}"/>
  <image x="{(W-540)//2}" y="170" width="540" height="540" xlink:href="{logo_href}"/>
  <text x="{W//2}" y="880" text-anchor="middle"
        font-family="Georgia, serif" font-size="120" font-weight="bold"
        letter-spacing="16" fill="#FFFFFF">HIZASHI</text>
  <text x="{W//2}" y="940" text-anchor="middle" font-family="Georgia, serif"
        font-size="38" letter-spacing="6" fill="#FBE3D0">日差し — Tia n&#7855;ng</text>
  <text x="{W//2}" y="{ty0}" text-anchor="middle"
        font-family="Georgia, serif" font-size="142" font-weight="bold"
        fill="{INK}">{title_tspans}</text>
  <text x="{W//2}" y="{ty0 + 155*len(title_lines) + 90}" text-anchor="middle"
        font-family="'Hiragino Mincho ProN', serif" font-size="80" fill="{RED}">{esc(jp)}</text>
  <text x="{W//2}" y="2180" text-anchor="middle"
        font-family="Georgia, serif" font-size="50" fill="{GRAY}">{esc(subtitle)}</text>
  <line x1="{W//2-120}" y1="2340" x2="{W//2+120}" y2="2340" stroke="{YELLOW}" stroke-width="3"/>
  <text x="{W//2}" y="2420" text-anchor="middle"
        font-family="Georgia, serif" font-size="54" letter-spacing="3" fill="{INK}">{esc(author)}</text>
</svg>'''


def build_svg_watermark(title, subtitle, jp, author, logo_href):
    """Mẫu 3 — Logo phóng to mờ làm watermark nền, tựa đậm đè lên, logo nhỏ rõ dưới."""
    title_lines = title.split("|")
    ty0 = 1280
    title_tspans = ""
    for i, line in enumerate(title_lines):
        title_tspans += f'<tspan x="{W//2}" dy="{0 if i == 0 else 158}">{esc(line.strip())}</tspan>'
    return f'''<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     width="{W}" height="{H}" viewBox="0 0 {W} {H}">
  <rect width="{W}" height="{H}" fill="{CREAM}"/>
  <rect x="70" y="70" width="{W-140}" height="{H-140}" fill="none"
        stroke="{RED}" stroke-width="3" opacity="0.5"/>
  <!-- Watermark logo mờ, phóng to giữa -->
  <image x="{(W-1200)//2}" y="700" width="1200" height="1200" opacity="0.10"
         xlink:href="{logo_href}"/>
  <text x="{W//2}" y="520" text-anchor="middle"
        font-family="Georgia, serif" font-size="110" font-weight="bold"
        letter-spacing="14" fill="{RED}">HIZASHI</text>
  <text x="{W//2}" y="580" text-anchor="middle" font-family="Georgia, serif"
        font-size="38" letter-spacing="6" fill="{GRAY}">日差し — Tia n&#7855;ng</text>
  <line x1="{W//2-160}" y1="660" x2="{W//2+160}" y2="660" stroke="{YELLOW}" stroke-width="4"/>
  <text x="{W//2}" y="{ty0}" text-anchor="middle"
        font-family="Georgia, serif" font-size="150" font-weight="bold"
        fill="{INK}">{title_tspans}</text>
  <text x="{W//2}" y="{ty0 + 158*len(title_lines) + 90}" text-anchor="middle"
        font-family="'Hiragino Mincho ProN', serif" font-size="82" fill="{RED}">{esc(jp)}</text>
  <text x="{W//2}" y="2120" text-anchor="middle"
        font-family="Georgia, serif" font-size="50" fill="{GRAY}">{esc(subtitle)}</text>
  <!-- Logo nhỏ rõ phía dưới -->
  <image x="{(W-200)//2}" y="2220" width="200" height="200" xlink:href="{logo_href}"/>
  <text x="{W//2}" y="2490" text-anchor="middle"
        font-family="Georgia, serif" font-size="50" letter-spacing="3" fill="{INK}">{esc(author)}</text>
</svg>'''


# ── Bộ 3 layout "seal" theo mockup Bia Hizashi.dc.html (tỉ lệ 2:3) ──
# Mỗi mẫu: con dấu tròn chứa logo trên · "Hizashi" (Lora bold) + tựa italic +
# 電話応対 nhỏ ở giữa · "Hizashi Teams" (Be Vietnam Pro) dưới · khung viền kép.
# Khác nhau ở bảng màu (palette).

SEAL_PALETTES = {
    # nền (gradient 3 stop), viền-đậm, viền-mờ, seal-viền, seal-nền,
    # chữ-Hizashi, đường-kẻ, tựa-italic, chấm, team
    "giay-nga": {
        "bg": ["#FBF6EA", "#F3EAD4", "#EBE0C6"], "bg_at": "125% 85% at 50% 0%",
        "frame1": "rgba(192,68,42,.62)", "frame2": "rgba(192,68,42,.3)",
        "seal_stroke": "rgba(192,68,42,.45)", "seal_fill": "rgba(255,255,255,.25)",
        "brand": "#2A1A10", "rule": "#C98A2E", "title": "#C0442A",
        "jp": "#C0442A", "team": "#8A6A4A", "dark": False,
    },
    "do-son": {
        "bg": ["#CB4E30", "#BC4327", "#A4361E"], "bg_at": "125% 95% at 50% 12%",
        "frame1": "rgba(238,196,110,.8)", "frame2": "rgba(238,196,110,.4)",
        "seal_stroke": "#8E2E1A", "seal_fill": "#F6EFDD",
        "brand": "#F8F0DC", "rule": "#EEC46E", "title": "#F2D08A",
        "jp": "#F6EFDD", "team": "#F4E6CB",
    },
    "nen-toi": {
        "bg": ["#321B0F", "#20110A", "#160B05"], "bg_at": "115% 80% at 50% 32%",
        "frame1": "rgba(217,162,74,.58)", "frame2": "rgba(217,162,74,.28)",
        "seal_stroke": "rgba(224,163,60,.5)", "seal_fill": "rgba(224,163,60,.06)",
        "brand": "#F2E4C7", "rule": "#D9A24A", "title": "#E5B05A",
        "jp": "#E5B05A", "team": "#C99A5A",
    },
    # ── 6 màu mở rộng (sơn mài Việt, từ Bảng màu) — nền trầm, viền/chữ vàng then ──
    "xanh-reu": {
        "bg": ["#2E4C3E", "#1C3329", "#122019"],
        "frame1": "rgba(216,177,76,.5)", "frame2": "rgba(216,177,76,.24)",
        "seal_stroke": "rgba(216,177,76,.5)", "seal_fill": "rgba(216,177,76,.06)",
        "brand": "#EFE7CF", "rule": "#CCA246", "title": "#E0BE66",
        "jp": "#E0BE66", "team": "#C9BB94",
    },
    "cham": {
        "bg": ["#25405F", "#182B44", "#0F1C2E"],
        "frame1": "rgba(216,177,76,.5)", "frame2": "rgba(216,177,76,.24)",
        "seal_stroke": "rgba(216,177,76,.5)", "seal_fill": "rgba(216,177,76,.06)",
        "brand": "#ECE6D6", "rule": "#CCA246", "title": "#E0BE66",
        "jp": "#E0BE66", "team": "#C8BFA0",
    },
    "nau-canh-gian": {
        "bg": ["#4D3122", "#361F14", "#24140C"],
        "frame1": "rgba(215,162,73,.55)", "frame2": "rgba(215,162,73,.26)",
        "seal_stroke": "rgba(215,162,73,.5)", "seal_fill": "rgba(215,162,73,.07)",
        "brand": "#F2E6CC", "rule": "#D7A249", "title": "#E6B45C",
        "jp": "#E6B45C", "team": "#CBA877",
    },
    "hoang-tho": {
        "bg": ["#DCB259", "#CE9E3C", "#BC8A2A"],
        "frame1": "rgba(154,59,28,.5)", "frame2": "rgba(154,59,28,.28)",
        "seal_stroke": "#9A3B1C", "seal_fill": "#F6EFDD",
        "brand": "#2E1B0E", "rule": "#9A3B1C", "title": "#9A3B1C",
        "jp": "#9A3B1C", "team": "#6E4A22", "dark": False,
    },
    "man-chin": {
        "bg": ["#6A2A3A", "#4E1E2C", "#34141E"],
        "frame1": "rgba(224,176,85,.55)", "frame2": "rgba(224,176,85,.26)",
        "seal_stroke": "rgba(224,176,85,.5)", "seal_fill": "rgba(224,176,85,.07)",
        "brand": "#F3E4D0", "rule": "#E0B055", "title": "#ECC06A",
        "jp": "#ECC06A", "team": "#D8B69A",
    },
    "lam-ngoc": {
        "bg": ["#1F4A47", "#143431", "#0D2422"],
        "frame1": "rgba(204,162,70,.5)", "frame2": "rgba(204,162,70,.24)",
        "seal_stroke": "rgba(204,162,70,.5)", "seal_fill": "rgba(204,162,70,.06)",
        "brand": "#EAE6D4", "rule": "#CCA246", "title": "#DEBE64",
        "jp": "#DEBE64", "team": "#C7BD96",
    },
    # Tím sim / cà tím (~275°) — bù lỗ hổng tím giữa Chàm và Mận chín.
    "tim-sim": {
        "bg": ["#3C2A52", "#2A1C3C", "#1B1228"],
        "frame1": "rgba(216,177,76,.5)", "frame2": "rgba(216,177,76,.24)",
        "seal_stroke": "rgba(216,177,76,.5)", "seal_fill": "rgba(216,177,76,.06)",
        "brand": "#ECE4D8", "rule": "#CCA246", "title": "#DDBB6A",
        "jp": "#DDBB6A", "team": "#C6BA9E",
    },
}

# Thứ tự gán màu cho 10 sách (tuần tự theo bảng màu: 3 gốc + 6 mới, sách 10 lặp).
# Sách 01→giay-nga, 02→do-son, 03→nen-toi... NHƯNG sách 03 đang dùng giay-nga
# theo yêu cầu — bảng này để tham khảo, gọi --layout cd-<màu> tường minh khi build.
PALETTE_ORDER = [
    "giay-nga", "do-son", "nen-toi",
    "xanh-reu", "cham", "nau-canh-gian",
    "hoang-tho", "man-chin", "lam-ngoc",
    "giay-nga",  # sách 10 lặp lại màu đầu
]


def build_svg_seal(title, subtitle, jp, author, logo_href, pal, cover_h=None):
    """Layout 'con dấu' theo mockup, bố cục space-between 3 vùng (dấu/giữa/team).
    cover_h: chiều cao bìa (mặc định H toàn cục). title: tựa (| để xuống dòng)."""
    g = pal["bg"]
    cw = W
    ch = cover_h or H
    cx = cw // 2
    title_lines = title.split("|")

    # Padding trên/dưới theo tỉ lệ mockup (66/690 ≈ 0.096 của chiều cao).
    pad = int(ch * 0.096)
    content_top = pad
    content_bot = ch - pad

    # ── 3 VÙNG space-between ──
    # Vùng 1 (con dấu): tâm dấu cách content_top một khoảng = bán kính dấu.
    seal_r = 175
    logo_sz = 230
    seal_cy = content_top + seal_r + 30

    # Vùng 3 (team): "HIZASHI TEAMS" ở đáy vùng nội dung (cách mép = pad).
    # KHÔNG có phụ đề. Vạch dọc: giữ TOP cố định, ngắn (~45px) và cách team xa (~100px).
    team_y = content_bot
    team_rule_y1 = team_y - 145        # top vạch (giữ nguyên vị trí)
    team_rule_y2 = team_rule_y1 + 45   # đáy vạch → dài 45px, cách team ~100px

    # Vùng 2 (khối tựa): căn TÂM khoảng giữa đáy-con-dấu và đỉnh-cụm-team
    # → cân thị giác (không gần dấu, không xa team).
    seal_bottom = seal_cy + seal_r
    block_center = (seal_bottom + team_rule_y1) // 2
    brand_y = block_center - 110     # baseline "Hizashi"
    rule_y = block_center + 10       # đường kẻ ngăn cách
    title_y0 = block_center + 160    # baseline dòng tựa đầu
    t_tspans = ""
    for i, line in enumerate(title_lines):
        t_tspans += f'<tspan x="{cx}" dy="{0 if i == 0 else 150}">{esc(line.strip())}</tspan>'
    jp_y = title_y0 + 150 * len(title_lines) + 30

    return f'''<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     width="{cw}" height="{ch}" viewBox="0 0 {cw} {ch}">
  <defs>
    <radialGradient id="bg" cx="50%" cy="6%" r="95%">
      <stop offset="0" stop-color="{g[0]}"/>
      <stop offset="0.55" stop-color="{g[1]}"/>
      <stop offset="1" stop-color="{g[2]}"/>
    </radialGradient>
  </defs>
  <rect width="{cw}" height="{ch}" fill="url(#bg)"/>

  <!-- Khung viền kép -->
  <rect x="62" y="62" width="{cw-124}" height="{ch-124}" fill="none"
        stroke="{pal['frame1']}" stroke-width="3"/>
  <rect x="84" y="84" width="{cw-168}" height="{ch-168}" fill="none"
        stroke="{pal['frame2']}" stroke-width="2"/>

  <!-- Vùng 1 — Con dấu tròn chứa logo -->
  <circle cx="{cx}" cy="{seal_cy}" r="{seal_r}" fill="{pal['seal_fill']}"
          stroke="{pal['seal_stroke']}" stroke-width="3"/>
  <image x="{cx - logo_sz//2}" y="{seal_cy - logo_sz//2}" width="{logo_sz}" height="{logo_sz}"
         xlink:href="{logo_href}"/>

  <!-- Vùng 2 — Khối tựa (căn tâm vùng giữa) -->
  <text x="{cx}" y="{brand_y}" text-anchor="middle"
        font-family="Lora, Georgia, serif" font-weight="700" font-size="170"
        fill="{pal['brand']}">Hizashi</text>

  <line x1="{cx-130}" y1="{rule_y}" x2="{cx-30}" y2="{rule_y}" stroke="{pal['rule']}" stroke-width="3"/>
  <rect x="{cx-9}" y="{rule_y-9}" width="18" height="18" fill="{pal['rule']}" transform="rotate(45 {cx} {rule_y})"/>
  <line x1="{cx+30}" y1="{rule_y}" x2="{cx+130}" y2="{rule_y}" stroke="{pal['rule']}" stroke-width="3"/>

  <text x="{cx}" y="{title_y0}" text-anchor="middle"
        font-family="Lora, Georgia, serif" font-style="italic" font-weight="500"
        font-size="118" fill="{pal['title']}">{t_tspans}</text>

  <text x="{cx}" y="{jp_y}" text-anchor="middle"
        font-family="'Hiragino Mincho ProN', 'Yu Mincho', serif" font-size="72"
        fill="{pal['jp']}">{esc(jp)}</text>

  <!-- Vùng 3 — Hizashi Teams (đáy vùng nội dung) -->
  <line x1="{cx}" y1="{team_rule_y1}" x2="{cx}" y2="{team_rule_y2}" stroke="{pal['rule']}" stroke-width="2" opacity="0.6"/>
  <text x="{cx}" y="{team_y}" text-anchor="middle"
        font-family="'Be Vietnam Pro', sans-serif" font-weight="600" font-size="46"
        letter-spacing="10" fill="{pal['team']}">HIZASHI TEAMS</text>
</svg>'''


def _seal(pal_key):
    return lambda t, s, j, a, l, ch=None: build_svg_seal(
        t, s, j, a, l, SEAL_PALETTES[pal_key], cover_h=ch)


def build_svg_chuyende(title, subtitle, book_name, author, logo_href,
                       pal, cover_h=None, topic_no=""):
    """Layout 'chuyên đề' theo mockup Bia Hizashi - Chuyen de.
    Con dấu NHỎ + HIZASHI trên · CHUYÊN ĐỀ NN + tên chủ đề to + mô tả giữa ·
    tên sách italic + Teams dưới. title=tên chủ đề; subtitle=mô tả; book_name=tên sách."""
    g = pal["bg"]
    cw = W
    ch = cover_h or H
    cx = cw // 2
    title_lines = title.split("|")

    pad = int(ch * 0.085)
    content_top = pad
    content_bot = ch - pad

    # Vùng 1: con dấu nhỏ + HIZASHI.
    # Khoảng thở trên = từ mép trong (content_top) tới ĐỈNH con dấu.
    seal_r = 110
    logo_sz = 150
    top_gap = 30                        # khoảng đỉnh con dấu cách mép trong
    seal_cy = content_top + top_gap + seal_r
    brand_y = seal_cy + seal_r + 75

    # GAP chung: dùng cho 2 khoảng phải BẰNG NHAU theo yêu cầu:
    #   (CHUYÊN ĐỀ NN → đỉnh tên chủ đề)  ==  (đường kẻ hr dưới → 会議)
    GAP = 70

    # Vùng 3 (dưới): tên sách italic + Teams.
    # CÂN ĐỐI: baseline HIZASHI TEAMS cách mép trong đáy ĐÚNG top_gap (= padding trên).
    team_y = content_bot - top_gap
    book_y = team_y - 105               # tên bộ (dịch xuống 10px so với trước)
    book_rule_y = book_y - 125           # hr giữ vị trí cũ (khoảng hr→tên bộ ~125px)

    # Vùng 2 (giữa): CHUYÊN ĐỀ NN + tên chủ đề + đường kẻ + mô tả
    t_size = 150 if max(len(l) for l in title_lines) <= 7 else 130
    t_tspans = ""
    for i, line in enumerate(title_lines):
        t_tspans += f'<tspan x="{cx}" dy="{0 if i == 0 else int(t_size*1.05)}">{esc(line.strip())}</tspan>'
    # tâm khối giữa = giữa brand và đường kẻ dưới
    mid = (brand_y + book_rule_y) // 2
    title_y0 = mid - 20
    # nhãn CHUYÊN ĐỀ cách ĐỈNH chữ tên chủ đề đúng GAP (đỉnh chữ ≈ title_y0 - t_size*0.72)
    # lên cao thêm (giảm y = lên).
    topic_label_y = int(title_y0 - t_size * 0.72) - GAP - 25
    rule_y = title_y0 + int(t_size * (len(title_lines) - 1) * 1.05) + 75
    sub_y = rule_y + 85 + 25            # mô tả dịch xuống thêm

    # Lớp glow ấm tỏa sau con dấu (như mockup): radial vàng then mờ, tâm ở vùng dấu.
    # Chỉ rõ trên nền TỐI; nền sáng (giay-nga/hoang-tho) dùng opacity thấp → gần vô hình.
    glow_rgb = _hex_to_rgb(pal.get("glow_color", pal["rule"]))
    glow_op = pal.get("glow_op", 0.16 if pal.get("dark", True) else 0.0)
    glow_cy_pct = round(100 * (seal_cy / ch))

    return f'''<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     width="{cw}" height="{ch}" viewBox="0 0 {cw} {ch}">
  <defs>
    <radialGradient id="bg" cx="50%" cy="6%" r="95%">
      <stop offset="0" stop-color="{g[0]}"/>
      <stop offset="0.55" stop-color="{g[1]}"/>
      <stop offset="1" stop-color="{g[2]}"/>
    </radialGradient>
    <radialGradient id="glow" cx="50%" cy="{glow_cy_pct}%" r="62%">
      <stop offset="0" stop-color="rgba({glow_rgb[0]},{glow_rgb[1]},{glow_rgb[2]},{glow_op})"/>
      <stop offset="0.7" stop-color="rgba({glow_rgb[0]},{glow_rgb[1]},{glow_rgb[2]},0)"/>
    </radialGradient>
  </defs>
  <rect width="{cw}" height="{ch}" fill="url(#bg)"/>
  <rect width="{cw}" height="{ch}" fill="url(#glow)"/>
  <rect x="62" y="62" width="{cw-124}" height="{ch-124}" fill="none"
        stroke="{pal['frame1']}" stroke-width="3"/>
  <rect x="84" y="84" width="{cw-168}" height="{ch-168}" fill="none"
        stroke="{pal['frame2']}" stroke-width="2"/>

  <!-- Vùng 1: con dấu nhỏ + HIZASHI -->
  <circle cx="{cx}" cy="{seal_cy}" r="{seal_r}" fill="{pal['seal_fill']}"
          stroke="{pal['seal_stroke']}" stroke-width="3"/>
  <image x="{cx - logo_sz//2}" y="{seal_cy - logo_sz//2}" width="{logo_sz}" height="{logo_sz}"
         xlink:href="{logo_href}"/>
  <text x="{cx}" y="{brand_y}" text-anchor="middle"
        font-family="'Be Vietnam Pro', sans-serif" font-weight="600" font-size="44"
        letter-spacing="18" fill="{pal['team']}">HIZASHI</text>

  <!-- Vùng 2: CHUYÊN ĐỀ NN + tên chủ đề + mô tả -->
  <text x="{cx}" y="{topic_label_y}" text-anchor="middle"
        font-family="'Be Vietnam Pro', sans-serif" font-weight="600" font-size="42"
        letter-spacing="12" fill="{pal['title']}">CHUYÊN ĐỀ {esc(topic_no)}</text>
  <text x="{cx}" y="{title_y0}" text-anchor="middle"
        font-family="Lora, Georgia, serif" font-weight="700" font-size="{t_size}"
        fill="{pal['brand']}">{t_tspans}</text>
  <line x1="{cx-110}" y1="{rule_y}" x2="{cx-30}" y2="{rule_y}" stroke="{pal['rule']}" stroke-width="3"/>
  <rect x="{cx-9}" y="{rule_y-9}" width="18" height="18" fill="{pal['rule']}" transform="rotate(45 {cx} {rule_y})"/>
  <line x1="{cx+30}" y1="{rule_y}" x2="{cx+110}" y2="{rule_y}" stroke="{pal['rule']}" stroke-width="3"/>
  <text x="{cx}" y="{sub_y}" text-anchor="middle"
        font-family="'Be Vietnam Pro', sans-serif" font-size="46"
        fill="{pal['team']}">{esc(subtitle)}</text>

  <!-- Vùng 3: tên sách italic + Teams -->
  <line x1="{cx-90}" y1="{book_rule_y}" x2="{cx+90}" y2="{book_rule_y}" stroke="{pal['rule']}" stroke-width="2" opacity="0.6"/>
  <text x="{cx}" y="{book_y}" text-anchor="middle"
        font-family="Lora, Georgia, serif" font-style="italic" font-weight="500"
        font-size="62" fill="{pal['title']}">{esc(book_name)}</text>
  <text x="{cx}" y="{team_y}" text-anchor="middle"
        font-family="'Be Vietnam Pro', sans-serif" font-weight="600" font-size="40"
        letter-spacing="8" fill="{pal['team']}">HIZASHI TEAMS</text>
</svg>'''


# Layout seal/chuyên đề nhận cover_h; layout cũ thì bỏ qua tham số thừa.
# Mỗi màu trong SEAL_PALETTES → 1 layout seal + 1 layout chuyên đề (cd-<màu>).
SEAL_LAYOUTS = {"giay-nga", "do-son", "nen-toi"}
CHUYENDE_LAYOUTS = {f"cd-{k}": k for k in SEAL_PALETTES}  # cd-xanh-reu → xanh-reu

LAYOUTS = {
    "logo-tren": build_svg,
    "dai-do": build_svg_band,
    "watermark": build_svg_watermark,
    "giay-nga": _seal("giay-nga"),
    "do-son": _seal("do-son"),
    "nen-toi": _seal("nen-toi"),
    **{f"cd-{k}": k for k in SEAL_PALETTES},  # cd-<màu> marker, xử lý riêng trong main
}


def main() -> None:
    p = argparse.ArgumentParser()
    p.add_argument("--title", required=True, help="Tựa đề (dùng | để xuống dòng)")
    p.add_argument("--subtitle", default="")
    p.add_argument("--jp", default="", help="Tựa đề tiếng Nhật")
    p.add_argument("--author", default="Hizashi Teams")
    p.add_argument("--layout", default="logo-tren", choices=list(LAYOUTS.keys()))
    p.add_argument("--ratio", type=float, default=1.6,
                   help="Tỉ lệ cao/rộng: 1.6 (chuẩn EPUB) hoặc 1.5 (2:3 như mockup)")
    p.add_argument("--topic-no", default="", help="Số chuyên đề (layout cd-*)")
    p.add_argument("--book-name", default="", help="Tên sách italic dưới (layout cd-*)")
    p.add_argument("--out", required=True)
    args = p.parse_args()

    cover_h = int(round(W * args.ratio))

    # Nhúng logo dạng base64 data-URI (chắc ăn, không phụ thuộc đường dẫn/rsvg resolve).
    logo_b64 = base64.b64encode(LOGO.read_bytes()).decode("ascii")
    logo_href = f"data:image/png;base64,{logo_b64}"
    if args.layout in CHUYENDE_LAYOUTS:
        pal_key = LAYOUTS[args.layout]   # 'giay-nga'/'do-son'/'nen-toi'
        svg = build_svg_chuyende(args.title, args.subtitle, args.book_name,
                                 args.author, logo_href, SEAL_PALETTES[pal_key],
                                 cover_h, args.topic_no)
    elif args.layout in SEAL_LAYOUTS:
        svg = LAYOUTS[args.layout](args.title, args.subtitle, args.jp,
                                   args.author, logo_href, cover_h)
    else:
        svg = LAYOUTS[args.layout](args.title, args.subtitle, args.jp,
                                   args.author, logo_href)
        cover_h = H  # layout cũ dùng H cố định

    with tempfile.NamedTemporaryFile("w", suffix=".svg", delete=False) as f:
        f.write(svg)
        svg_path = f.name

    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    subprocess.run(
        ["rsvg-convert", "-w", str(W), "-h", str(cover_h), svg_path, "-o", str(out)],
        check=True,
    )
    Path(svg_path).unlink(missing_ok=True)
    print(f"✓ Bìa: {out} ({W}x{cover_h})")


if __name__ == "__main__":
    main()
