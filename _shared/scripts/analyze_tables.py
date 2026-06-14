#!/usr/bin/env python3
"""Phân tích các bảng Markdown trong file .md để hỗ trợ thiết kế tỉ lệ cột CSS.

Với mỗi bảng tìm thấy, báo cáo:
  - Tiêu đề từng cột (header)
  - Số cột
  - Với MỖI cột: độ rộng hiển thị DÀI NHẤT (1 dòng), TRUNG BÌNH, và tỉ lệ % gợi ý
  - Phân loại bảng (thoại / từ vựng / đối chiếu / nhân vật / khác)

Độ rộng hiển thị = đếm theo "display width": ký tự CJK (kanji/kana/fullwidth) = 2,
ký tự Latin/số/dấu = 1. Furigana <ruby>漢字<rt>かな</rt></ruby> chỉ tính phần 漢字
(bề rộng cột do mặt chữ quyết định, <rt> nhỏ nằm trên không tăng bề ngang).
Markdown **bold**, *italic*, `code`, [link] được lột bỏ trước khi đo.

Dùng:
  python3 analyze_tables.py <file.md hoặc thư mục>           # báo cáo từng bảng
  python3 analyze_tables.py <path> --summary                 # gom theo loại header
  python3 analyze_tables.py <path> --suggest-css             # in gợi ý % cột
"""
from __future__ import annotations
import sys
import re
import unicodedata
from pathlib import Path
from collections import defaultdict


# ── Đo độ rộng hiển thị ──
def display_width(s: str) -> int:
    w = 0
    for ch in s:
        if unicodedata.east_asian_width(ch) in ("W", "F"):
            w += 2
        elif unicodedata.combining(ch):
            w += 0
        else:
            w += 1
    return w


def strip_cell(cell: str) -> str:
    """Lột markdown + furigana để lấy text hiển thị thực tế của 1 ô."""
    s = cell.strip()
    # <ruby>漢字<rt>かな</rt></ruby> → 漢字 (bỏ phần rt)
    s = re.sub(r"<rt>.*?</rt>", "", s)
    s = re.sub(r"</?ruby>", "", s)
    # <br/> → khoảng ngắt: lấy đoạn DÀI NHẤT giữa các <br/> (vì xuống dòng)
    # nhưng để đo "1 dòng dài nhất" ta tách theo <br/>
    s = re.sub(r"<[^>]+>", "\x00", s)  # các tag khác → marker ngắt
    # markdown nhấn
    s = re.sub(r"\*\*(.+?)\*\*", r"\1", s)
    s = re.sub(r"\*(.+?)\*", r"\1", s)
    s = re.sub(r"`(.+?)`", r"\1", s)
    s = re.sub(r"\[([^\]]+)\]\([^)]+\)", r"\1", s)
    return s


def cell_max_line_width(cell: str) -> int:
    """Độ rộng của ĐOẠN DÀI NHẤT trong ô (sau khi tách theo <br/> / tag ngắt)."""
    text = strip_cell(cell)
    segments = text.split("\x00")
    return max((display_width(seg.strip()) for seg in segments), default=0)


# ── Tách bảng từ markdown ──
def find_tables(md: str):
    """Trả về list bảng: mỗi bảng là (header:list[str], rows:list[list[str]], lineno)."""
    lines = md.split("\n")
    tables = []
    i = 0
    while i < len(lines):
        ln = lines[i]
        if ln.lstrip().startswith("|") and i + 1 < len(lines):
            sep = lines[i + 1]
            # dòng phân cách |---|---|
            if re.match(r"^\s*\|[\s:|\-]+\|?\s*$", sep) and "-" in sep:
                header = split_row(ln)
                rows = []
                j = i + 2
                while j < len(lines) and lines[j].lstrip().startswith("|"):
                    rows.append(split_row(lines[j]))
                    j += 1
                tables.append((header, rows, i + 1))
                i = j
                continue
        i += 1
    return tables


def split_row(row: str):
    r = row.strip()
    if r.startswith("|"):
        r = r[1:]
    if r.endswith("|"):
        r = r[:-1]
    return [c.strip() for c in r.split("|")]


# ── Phân loại bảng ──
def classify(header, rows):
    htext = " ".join(header)
    body = " ".join(c for r in rows for c in r)
    ncols = len(header)
    if "Tính cách" in htext and ncols == 4:
        return "nhân vật (cast)"
    if ("Vai" in htext or "Câu" in htext) or ("「" in body and ncols == 2):
        return "thoại (Vai|Câu)"
    if ncols == 2 and "「" not in body:
        return "đối chiếu 2 cột"
    if "漢字" in htext or ("よみ" in htext):
        return "từ vựng"
    if ncols >= 6:
        return "rộng (≥6 cột)"
    return f"khác ({ncols} cột)"


# ── Phân tích 1 file ──
def analyze_file(path: Path):
    md = path.read_text(encoding="utf-8")
    out = []
    for header, rows, lineno in find_tables(md):
        ncols = len(header)
        # độ rộng từng cột qua mọi hàng (gồm header)
        col_max = [cell_max_line_width(header[c]) for c in range(ncols)]
        col_sum = [col_max[c] for c in range(ncols)]
        col_cnt = [1] * ncols
        for r in rows:
            for c in range(min(ncols, len(r))):
                w = cell_max_line_width(r[c])
                col_max[c] = max(col_max[c], w)
                col_sum[c] += w
                col_cnt[c] += 1
        col_avg = [round(col_sum[c] / col_cnt[c], 1) for c in range(ncols)]
        # tỉ lệ gợi ý: dựa trên MAX (cột rộng nhất chiếm tỉ lệ lớn), trộn nhẹ với avg
        weights = [0.6 * col_max[c] + 0.4 * col_avg[c] for c in range(ncols)]
        tot = sum(weights) or 1
        pct = [round(100 * w / tot) for w in weights]
        out.append({
            "file": path,
            "lineno": lineno,
            "kind": classify(header, rows),
            "header": header,
            "ncols": ncols,
            "nrows": len(rows),
            "max": col_max,
            "avg": col_avg,
            "pct": pct,
        })
    return out


def gather(target: Path):
    files = ([target] if target.is_file()
             else sorted(target.rglob("*.md")))
    results = []
    for f in files:
        if "/output/" in str(f):
            continue
        results.extend(analyze_file(f))
    return results


def print_report(results):
    for t in results:
        rel = t["file"].name
        print(f"\n── {rel}:{t['lineno']}  [{t['kind']}]  {t['ncols']}cột × {t['nrows']}hàng")
        for c in range(t["ncols"]):
            h = strip_cell(t["header"][c])[:24]
            print(f"   cột{c+1} {h:<26} max={t['max'][c]:>4}  avg={t['avg'][c]:>5}  → {t['pct'][c]:>3}%")


def print_summary(results):
    """Gom theo (loại, bộ header) → gợi ý % trung bình."""
    groups = defaultdict(list)
    for t in results:
        key = (t["kind"], tuple(strip_cell(h)[:16] for h in t["header"]))
        groups[key].append(t)
    print("=== TỔNG HỢP THEO LOẠI BẢNG + HEADER ===\n")
    for (kind, header), ts in sorted(groups.items(), key=lambda x: -len(x[1])):
        n = len(ts)
        ncols = ts[0]["ncols"]
        # trung bình % qua các bảng cùng loại
        avg_pct = [round(sum(t["pct"][c] for t in ts) / n) for c in range(ncols)]
        max_of_max = [max(t["max"][c] for t in ts) for c in range(ncols)]
        print(f"[{kind}] × {n} bảng | header: {' | '.join(header)}")
        print(f"   % gợi ý (TB): {' / '.join(str(p) for p in avg_pct)}")
        print(f"   max-ký-tự mỗi cột: {' / '.join(str(m) for m in max_of_max)}\n")


# ── Sinh CSS + Lua matcher tự động từ số đo ──
def slugify_header(header):
    """Tạo slug class ổn định từ bộ header (vd 'Phần|Tên|内容|Số rule' → 'phan-ten-...')."""
    import hashlib
    raw = "|".join(strip_cell(h) for h in header)
    h = hashlib.md5(raw.encode("utf-8")).hexdigest()[:6]
    # phần đọc được từ header đầu
    readable = re.sub(r"[^a-zA-Z0-9]+", "-", strip_cell(header[0]).lower()).strip("-")[:12]
    return f"t-{readable or 'tbl'}-{h}"


# Bảng "chuẩn" đã có CSS cố định riêng (KHÔNG tự sinh — giữ tỉ lệ thủ công).
def _is_standard(header, ncols):
    h = tuple(strip_cell(x) for x in header)
    if h == ("Vai", "Câu"):            # thoại 20/80 (cố định theo yêu cầu)
        return True
    if h == ("漢字", "よみ", "Nghĩa"):  # từ vựng cũ 30/30/40
        return True
    # Từ vựng 4 cột (Từ|Cách đọc|Hán Việt|Nghĩa Việt) → 22/22/22/34 cố định
    if h == ("Từ", "Cách đọc", "Hán Việt", "Nghĩa Việt"):
        return True
    # Từ vựng 5 cột (+ Lần đầu xuất hiện) → chia đều 20/20/20/20/20
    if h == ("Từ", "Cách đọc", "Hán Việt", "Nghĩa Việt", "Lần đầu xuất hiện"):
        return True
    # Bảng nhân vật 4 cột: "Tính cách" (sách 02) hoặc "Tên VN"+"Ghi chú" (sách 03)
    if ncols == 4 and "Tính cách" in " ".join(h):  # cast 18/16/24/42
        return True
    if ncols == 4 and "Tên VN" in " ".join(h) and "Ghi chú" in " ".join(h):
        return True
    if ncols == 2 and h[0] == "Tình huống" and "OK" in " ".join(h):  # compare 50/50
        return True
    # Bảng "lúc nào|việc" 2 cột (rule_14, rule_17 sách 03) → custom 30/70
    if h == ("Lúc nào", "Việc gì") or h == ("Khi nào", "Việc cần làm"):
        return True
    # Bảng checklist 3 cột (# | nhãn | nội dung dài) → custom 10/20/70 (cố định)
    if h == ("#", "Mục", "Câu hỏi tự kiểm"):
        return True
    if h == ("#", "Tình huống", "Câu chuẩn"):
        return True
    # Bảng hội thoại 5 bước (# | Vai | Câu | Bước) → custom 10/15/60/15
    if h == ("#", "Vai", "Câu", "Bước"):
        return True
    # Bảng tự chấm (# | Câu hỏi tự chấm | / | Rule liên quan) → custom 10/61/13/16
    if h == ("#", "Câu hỏi tự chấm", "/", "Rule liên quan"):
        return True
    return False


def _build_css_lua(results, prefix="book"):
    """Sinh CSS rules + bảng tra Lua cho các loại bảng ĐẶC BIỆT (khác bảng chuẩn).
    Bảng chuẩn (Vai|Câu 20/80, 漢字|よみ|Nghĩa, cast, compare) GIỮ NGUYÊN, không sinh.
    Trả về (css_text, lua_text)."""
    groups = defaultdict(list)
    for t in results:
        if _is_standard(t["header"], t["ncols"]):
            continue
        hkey = tuple(strip_cell(h) for h in t["header"])
        groups[hkey].append(t)

    css_blocks = []
    lua_entries = []
    for hkey, ts in sorted(groups.items()):
        n = len(ts)
        ncols = ts[0]["ncols"]
        # % trung bình + làm tròn về tổng 100
        avg = [sum(t["pct"][c] for t in ts) / n for c in range(ncols)]
        s = sum(avg) or 1
        pct = [round(100 * a / s) for a in avg]
        # Sàn tối thiểu: mỗi cột phải đủ rộng chứa ~10 ký tự (nhãn ngắn không bị bóp).
        # 13% ≈ 208px trên bìa 1600px ≈ trọn 10 ký tự Latin + padding.
        # Nâng cột hẹp lên MIN_COL, trừ bù dần vào (các) cột rộng nhất, giữ tổng = 100.
        MIN_COL = 13
        for c in range(ncols):
            if pct[c] < MIN_COL:
                deficit = MIN_COL - pct[c]
                pct[c] = MIN_COL
                # trừ bù vào cột rộng nhất CÒN trừ được (không xuống dưới MIN_COL)
                while deficit > 0:
                    cand = [k for k in range(ncols) if pct[k] > MIN_COL]
                    if not cand:
                        break
                    widest = max(cand, key=lambda k: pct[k])
                    take = min(deficit, pct[widest] - MIN_COL)
                    pct[widest] -= take
                    deficit -= take
        diff = 100 - sum(pct)
        if pct:
            pct[pct.index(max(pct))] += diff  # bù sai số làm tròn vào cột rộng nhất
        slug = slugify_header(hkey)
        header_str = " | ".join(hkey)
        # CSS
        rules = [f"/* {header_str}  ({n} bảng, {' / '.join(map(str,pct))}) */",
                 f"table.{slug} {{ table-layout: fixed; }}"]
        for c in range(ncols):
            rules.append(
                f"table.{slug} td:nth-child({c+1}), "
                f"table.{slug} th:nth-child({c+1}) {{ width: {pct[c]}% !important; }}")
        css_blocks.append("\n".join(rules))
        # Lua: nhận diện bằng bộ header (so khớp text header sau khi strip)
        hcheck = "|".join(hkey).replace('"', '\\"')
        lua_entries.append(f'  {{ cols={ncols}, header="{hcheck}", cls="{slug}" }},')

    css_text = ("/* ===== CSS tỉ lệ cột bảng — TỰ SINH bởi analyze_tables.py ===== */\n"
                "/* KHÔNG sửa tay file này; chỉnh số đo qua nội dung .md rồi build lại. */\n\n"
                + "\n\n".join(css_blocks) + "\n")
    lua_text = ("-- Bảng tra class theo header — TỰ SINH bởi analyze_tables.py\n"
                "-- (reset_colwidth.lua require file này). KHÔNG sửa tay.\n"
                "return {\n" + "\n".join(lua_entries) + "\n}\n")
    return css_text, lua_text


def write_gen_files(results, css_path, lua_path, prefix="book"):
    css_text, lua_text = _build_css_lua(results, prefix)
    Path(css_path).write_text(css_text, encoding="utf-8")
    Path(lua_path).write_text(lua_text, encoding="utf-8")
    n_css = css_text.count("table.")
    print(f"✓ CSS  → {css_path} ({css_text.count('/* ')-1} loại bảng)")
    print(f"✓ Lua  → {lua_path}")


def _arg(name, default=None):
    if name in sys.argv:
        i = sys.argv.index(name)
        return sys.argv[i + 1] if i + 1 < len(sys.argv) else default
    return default


def main():
    if len(sys.argv) < 2:
        sys.exit("Dùng: analyze_tables.py <path> "
                 "[--summary | --gen-css <prefix> | --out-css F --out-lua F]")
    target = Path(sys.argv[1])
    results = gather(target)
    if not results:
        print("Không tìm thấy bảng nào.")
        return
    # Xuất file CSS + Lua (cho build_book.sh gọi tự động)
    out_css = _arg("--out-css")
    out_lua = _arg("--out-lua")
    if out_css and out_lua:
        prefix = _arg("--gen-css", "book")
        write_gen_files(results, out_css, out_lua, prefix)
        return
    if "--gen-css" in sys.argv:  # in ra màn hình
        css_text, lua_text = _build_css_lua(results, _arg("--gen-css", "book"))
        print(css_text)
        print("\n-- ===== Lua matcher =====")
        print(lua_text)
        return
    if "--summary" in sys.argv or "--suggest-css" in sys.argv:
        print_summary(results)
    else:
        print_report(results)
    print(f"\nTổng: {len(results)} bảng trong "
          f"{len({str(t['file']) for t in results})} file.")


if __name__ == "__main__":
    main()
