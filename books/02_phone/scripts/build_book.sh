#!/usr/bin/env bash
# Build Hizashi Sách 02 (Điện thoại / 電話応対) → EPUB
# Song ngữ trong 1 file → 1 epub. Có bìa logo, CSS riêng, front/back matter.
set -e

BOOK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NOI_DUNG="$BOOK_ROOT/nội_dung"
OUTPUT="$BOOK_ROOT/output"
SCRIPT_DIR="$(dirname "$0")"
mkdir -p "$OUTPUT"

VERSION="1.2"
# TITLE không kèm version (version quản lý ở trang cuối/colophon).
TITLE="Hizashi — Điện thoại Công Việc / 電話応対"
CSS="$SCRIPT_DIR/epub_phone.css"
LUA="$SCRIPT_DIR/reset_colwidth.lua"
COVER="$OUTPUT/cover.png"

COMBINED="$OUTPUT/_combined.md"

# YAML hợp lệ ở đầu file (metadata). KHÔNG dùng '---' separator trần giữa nội dung
# (pandoc markdown+raw_html sẽ nhầm thành YAML block / bảng).
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

# Phần I → V. rule.md KHÔNG có heading phần riêng → chèn heading Phần ở đây
# (KHÔNG dùng '---' separator; heading '#' đủ tách phần + tách trang trong EPUB).
declare -a PHANS=("phần_I" "phần_II" "phần_III" "phần_IV" "phần_V")
declare -a PHAN_TITLES=(
    "Phần I — Nền tảng trước nhấc máy / 受電前の基本姿勢"
    "Phần II — Nhận điện thoại / 受電の流れ"
    "Phần III — Gọi điện thoại đi / 発信の流れ"
    "Phần IV — Tình huống khó / 困難な場面"
    "Phần V — Hộp thư thoại, Trực tuyến & Thực hành tốt nhất / 留守電・オンライン・ベストプラクティス"
)

for i in "${!PHANS[@]}"; do
    phan="${PHANS[$i]}"
    title="${PHAN_TITLES[$i]}"
    echo "" >> "$COMBINED"
    echo "# $title" >> "$COMBINED"
    echo "" >> "$COMBINED"
    for rule_dir in $(ls -1 "$NOI_DUNG/$phan/" | grep "^rule_" | sort -t_ -k2 -n); do
        rule_md="$NOI_DUNG/$phan/$rule_dir/rule.md"
        if [ -f "$rule_md" ]; then
            cat "$rule_md" >> "$COMBINED"
            echo "" >> "$COMBINED"
            echo "" >> "$COMBINED"
        fi
    done
done

# Phụ lục A/B/C (KHÔNG '---' separator)
for apx in phụ_lục_A_script_template phụ_lục_B_vocab phụ_lục_C_bjt_practice; do
    f="$NOI_DUNG/phụ_lục/$apx.md"
    if [ -f "$f" ]; then
        echo "" >> "$COMBINED"
        cat "$f" >> "$COMBINED"
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

# ─── Phân tích bảng → sinh CSS tỉ lệ cột + lua matcher (TỰ ĐỘNG, đo nội dung thực) ───
ANALYZE="$BOOK_ROOT/../../_shared/scripts/analyze_tables.py"
GEN_CSS="$SCRIPT_DIR/_tables_gen.css"
GEN_LUA="$SCRIPT_DIR/_tables_gen.lua"
if [ -f "$ANALYZE" ]; then
    python3 "$ANALYZE" "$NOI_DUNG" --gen-css phone \
        --out-css "$GEN_CSS" --out-lua "$GEN_LUA" || echo "  warn: analyze_tables"
fi

# ─── Pandoc → EPUB (CSS riêng + CSS tỉ lệ tự sinh + lua + bìa + ruby furigana) ───
if command -v pandoc &> /dev/null; then
    COVER_ARG=""
    [ -f "$COVER" ] && COVER_ARG="--epub-cover-image=$COVER"
    # _tables_gen.css đặt SAU epub_phone.css để override tỉ lệ cột bảng đặc biệt.
    GEN_CSS_ARG=""
    [ -f "$GEN_CSS" ] && GEN_CSS_ARG="--css=$GEN_CSS"
    EPUB_OUT="$OUTPUT/Hizashi_phone_v${VERSION}.epub"
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
    # Đưa front matter (ch001) lên TRƯỚC mục lục: cover → front matter → mục lục.
    [ -f "$EPUB_OUT" ] && python3 "$SCRIPT_DIR/reorder_frontmatter.py" "$EPUB_OUT" 2>/dev/null
    echo ""
    echo "✓ Output:"
    ls -lh "$EPUB_OUT" 2>/dev/null || true
else
    echo "⚠ pandoc chưa cài."
fi
