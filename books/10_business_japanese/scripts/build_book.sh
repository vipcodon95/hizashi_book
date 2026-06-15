#!/usr/bin/env bash
# Build Hizashi Sách 10 (Tôn kính ngữ / 敬語) → EPUB
# Ghép 5 LyThuyet.md (lý thuyết keigo) → 1 EPUB. CSS riêng, bìa, front/back matter, furigana.
set -e

BOOK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUTPUT="$BOOK_ROOT/output"
SCRIPT_DIR="$(dirname "$0")"
mkdir -p "$OUTPUT"

VERSION="1.1"
# TITLE không kèm version (version quản lý ở trang cuối/colophon).
TITLE="Hizashi — Tôn kính ngữ / 敬語マスター"
CSS="$SCRIPT_DIR/epub_keigo.css"
LUA="$SCRIPT_DIR/reset_colwidth.lua"
COVER="$OUTPUT/cover.png"

COMBINED="$OUTPUT/_combined.md"

# YAML hợp lệ ở đầu file. KHÔNG dùng '---' separator trần giữa nội dung.
cat > "$COMBINED" <<EOF
---
title: "$TITLE"
author: "Hizashi Teams"
lang: vi
---

EOF

# Front matter
if [ -f "$BOOK_ROOT/_front_matter.md" ]; then
    cat "$BOOK_ROOT/_front_matter.md" >> "$COMBINED"
    echo "" >> "$COMBINED"
    echo "" >> "$COMBINED"
fi

# 5 module LyThuyet theo thứ tự (mỗi file có h1 riêng → KHÔNG chèn heading, KHÔNG '---').
declare -a LYTHUYET=(
    "2.1.0_keigo_phan_loai/2.1.0_Phan_loai_Kinh_ngu.md"
    "2.1.4_juzu_doushi/2.1.4_JuzuDoushi_LyThuyet.md"
    "2.1.5_uchi_soto/2.1.5_UchiSoto_LyThuyet.md"
    "2.1.6_ukemi_shieki/2.1.6_UkemiShieki_LyThuyet.md"
    "2.1.7_tong_hop_so_sanh/2.1.7_TongHop_SoSanh_LyThuyet.md"
)
for rel in "${LYTHUYET[@]}"; do
    f="$BOOK_ROOT/$rel"
    if [ -f "$f" ]; then
        echo "" >> "$COMBINED"
        cat "$f" >> "$COMBINED"
        echo "" >> "$COMBINED"
        echo "" >> "$COMBINED"
    fi
done

# Trang cuối (liên hệ + thông tin sách + version)
if [ -f "$BOOK_ROOT/_back_matter.md" ]; then
    echo "" >> "$COMBINED"
    cat "$BOOK_ROOT/_back_matter.md" >> "$COMBINED"
    echo "" >> "$COMBINED"
fi

echo "✓ Combined markdown: $COMBINED ($(wc -l < "$COMBINED") dòng)"

# ─── Phân tích bảng → sinh CSS tỉ lệ cột + lua matcher (TỰ ĐỘNG) ───
ANALYZE="$BOOK_ROOT/../../_shared/scripts/analyze_tables.py"
GEN_CSS="$SCRIPT_DIR/_tables_gen.css"
GEN_LUA="$SCRIPT_DIR/_tables_gen.lua"
if [ -f "$ANALYZE" ]; then
    python3 "$ANALYZE" "$BOOK_ROOT" --gen-css keigo \
        --out-css "$GEN_CSS" --out-lua "$GEN_LUA" || echo "  warn: analyze_tables"
    if [ -f "$GEN_LUA" ]; then
        python3 - "$GEN_LUA" <<'PYESC'
import sys, re
p = sys.argv[1]
t = open(p, encoding="utf-8").read()
def fix(m):
    return m.group(0).replace("\\", "\\\\").replace('\\\\"', '\\"')
t2 = re.sub(r'header="[^"]*"', fix, t)
if t2 != t:
    open(p, "w", encoding="utf-8").write(t2)
    print("  ✓ escaped backslash trong _tables_gen.lua (sách 10)")
PYESC
    fi
fi

# ─── Pandoc → EPUB ───
if command -v pandoc &> /dev/null; then
    COVER_ARG=""
    [ -f "$COVER" ] && COVER_ARG="--epub-cover-image=$COVER"
    GEN_CSS_ARG=""
    [ -f "$GEN_CSS" ] && GEN_CSS_ARG="--css=$GEN_CSS"
    EPUB_OUT="$OUTPUT/Hizashi_keigo_v${VERSION}.epub"
    pandoc "$COMBINED" -o "$EPUB_OUT" \
        --from markdown+raw_html \
        --to epub3 \
        --toc --toc-depth=2 \
        --css "$CSS" \
        $GEN_CSS_ARG \
        --lua-filter "$LUA" \
        $COVER_ARG \
        --epub-title-page=false \
        --metadata title="$TITLE" --metadata author="Hizashi Teams" \
        --metadata lang=vi 2>/dev/null || echo "  warn: epub"
    [ -f "$EPUB_OUT" ] && python3 "$SCRIPT_DIR/reorder_frontmatter.py" "$EPUB_OUT" 2>/dev/null
    echo ""
    echo "✓ Output:"
    ls -lh "$EPUB_OUT" 2>/dev/null || true
else
    echo "⚠ pandoc chưa cài."
fi
