#!/usr/bin/env bash
# Build Hizashi Sách 12 (Hoa Năm 2 — Trở thành Sempai / 技能実習・食品 2年目) → EPUB
# LITE dialogue-only. Ghép 12 _HoiThoai.md (t01..t12) → 1 EPUB. CSS riêng, bìa, front/back matter, furigana.
set -e

BOOK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUTPUT="$BOOK_ROOT/output"
SCRIPT_DIR="$(dirname "$0")"
mkdir -p "$OUTPUT"

VERSION="1.1"
TITLE="Hizashi — Hoa Năm 2: Trở thành Sempai / 技能実習・食品 2年目"
CSS="$SCRIPT_DIR/epub_hoa_year2.css"
LUA="$SCRIPT_DIR/reset_colwidth.lua"
COVER="$OUTPUT/cover.png"

COMBINED="$OUTPUT/_combined.md"

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

# 12 chương _HoiThoai.md theo thứ tự t01..t12 (mỗi file có h1 riêng → KHÔNG chèn heading, KHÔNG '---').
for chapter_dir in $(ls -1 "$BOOK_ROOT/" | grep "^t[0-9]" | sort); do
    f=$(ls "$BOOK_ROOT/$chapter_dir/"*HoiThoai*.md 2>/dev/null | head -1)
    if [ -f "$f" ]; then
        echo "" >> "$COMBINED"
        cat "$f" >> "$COMBINED"
        echo "" >> "$COMBINED"
        echo "" >> "$COMBINED"
    fi
done

# Trang cuối
if [ -f "$BOOK_ROOT/_back_matter.md" ]; then
    echo "" >> "$COMBINED"
    cat "$BOOK_ROOT/_back_matter.md" >> "$COMBINED"
    echo "" >> "$COMBINED"
fi

echo "✓ Combined markdown: $COMBINED ($(wc -l < "$COMBINED") dòng)"

# ─── Phân tích bảng → CSS tỉ lệ + lua matcher ───
ANALYZE="$BOOK_ROOT/../../_shared/scripts/analyze_tables.py"
GEN_CSS="$SCRIPT_DIR/_tables_gen.css"
GEN_LUA="$SCRIPT_DIR/_tables_gen.lua"
if [ -f "$ANALYZE" ]; then
    # Scan bản sao _combined.md đặt NGOÀI thư mục output/ — vì analyze_tables.py
    # (tool chung, không sửa) bỏ qua mọi path chứa "/output/". Đặt ở /tmp để
    # chỉ đo bảng nội dung sách, KHÔNG quét nhầm bảng trong _pipeline/.
    ANALYZE_SRC="$(mktemp -d)/_combined_for_analyze.md"
    cp "$COMBINED" "$ANALYZE_SRC"
    python3 "$ANALYZE" "$ANALYZE_SRC" --gen-css hoa_year2 \
        --out-css "$GEN_CSS" --out-lua "$GEN_LUA" || echo "  warn: analyze_tables"
    rm -f "$ANALYZE_SRC"
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
    print("  ✓ escaped backslash trong _tables_gen.lua (sách 12)")
PYESC
    fi
fi

# ─── Pandoc → EPUB ───
if command -v pandoc &> /dev/null; then
    COVER_ARG=""
    [ -f "$COVER" ] && COVER_ARG="--epub-cover-image=$COVER"
    GEN_CSS_ARG=""
    [ -f "$GEN_CSS" ] && GEN_CSS_ARG="--css=$GEN_CSS"
    EPUB_OUT="$OUTPUT/Hizashi_hoa_year2_v${VERSION}.epub"
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
