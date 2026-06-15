#!/usr/bin/env bash
# Build Hizashi Sách 09 (Hội thoại thực tế / 実践会話シーン集) → EPUB
# Dialogue-only. Có bìa logo, CSS riêng, front/back matter, furigana.
set -e

BOOK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NOI_DUNG="$BOOK_ROOT/nội_dung"
OUTPUT="$BOOK_ROOT/output"
SCRIPT_DIR="$(dirname "$0")"
mkdir -p "$OUTPUT"

VERSION="1.1"
# TITLE không kèm version (version quản lý ở trang cuối/colophon).
TITLE="Hizashi — Hội thoại thực tế / 実践会話シーン集"
CSS="$SCRIPT_DIR/epub_real_dialogues.css"
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
cat "$NOI_DUNG/_front_matter.md" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "" >> "$COMBINED"

# Các chương (mỗi chương.md đã có heading "# Chương XX" riêng → KHÔNG chèn thêm, KHÔNG '---').
for chapter_dir in $(ls -1 "$NOI_DUNG/" | grep "^chương_" | sort); do
    chapter_md="$NOI_DUNG/$chapter_dir/chương.md"
    if [ -f "$chapter_md" ]; then
        echo "" >> "$COMBINED"
        cat "$chapter_md" >> "$COMBINED"
        echo "" >> "$COMBINED"
        echo "" >> "$COMBINED"
    fi
done

# Trang cuối (liên hệ + thông tin sách + version)
if [ -f "$NOI_DUNG/_back_matter.md" ]; then
    echo "" >> "$COMBINED"
    cat "$NOI_DUNG/_back_matter.md" >> "$COMBINED"
    echo "" >> "$COMBINED"
fi

echo "✓ Combined markdown: $COMBINED ($(wc -l < "$COMBINED") dòng)"

# ─── Phân tích bảng → sinh CSS tỉ lệ cột + lua matcher (TỰ ĐỘNG) ───
ANALYZE="$BOOK_ROOT/../../_shared/scripts/analyze_tables.py"
GEN_CSS="$SCRIPT_DIR/_tables_gen.css"
GEN_LUA="$SCRIPT_DIR/_tables_gen.lua"
if [ -f "$ANALYZE" ]; then
    python3 "$ANALYZE" "$NOI_DUNG" --gen-css real_dialogues \
        --out-css "$GEN_CSS" --out-lua "$GEN_LUA" || echo "  warn: analyze_tables"
    # Escape '\' trong header bảng (nếu có) tránh hỏng cú pháp Lua.
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
    print("  ✓ escaped backslash trong _tables_gen.lua (sách 09)")
PYESC
    fi
fi

# ─── Pandoc → EPUB ───
if command -v pandoc &> /dev/null; then
    COVER_ARG=""
    [ -f "$COVER" ] && COVER_ARG="--epub-cover-image=$COVER"
    GEN_CSS_ARG=""
    [ -f "$GEN_CSS" ] && GEN_CSS_ARG="--css=$GEN_CSS"
    EPUB_OUT="$OUTPUT/Hizashi_real_dialogues_v${VERSION}.epub"
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
