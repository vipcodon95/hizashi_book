#!/usr/bin/env bash
# Build Hizashi Sách 03 (Meeting) thành docx/html/epub
# Usage: bash scripts/build_book.sh
set -e

BOOK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NOI_DUNG="$BOOK_ROOT/nội_dung"
OUTPUT="$BOOK_ROOT/output"
mkdir -p "$OUTPUT"

VERSION="1.1"
TITLE="Hizashi — Tiếp khách·Thăm·Danh thiếp / 来客・訪問・名刺交換 v${VERSION}"

# Step 1: Concat all rule.md theo đúng thứ tự
COMBINED="$OUTPUT/_combined.md"

cat > "$COMBINED" <<EOF
---
title: "$TITLE"
author: "Hizashi Teams"
date: "2026"
lang: vi
---

EOF

# Front matter
cat "$NOI_DUNG/_front_matter.md" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "---" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "# Phần I — Nền tảng trước nhấc máy / 受電前の基本姿勢" >> "$COMBINED"
echo "" >> "$COMBINED"

# Phần I → V
declare -a PHANS=("phần_I" "phần_II" "phần_III" "phần_IV" "phần_V")
declare -a PHAN_TITLES=(
    "Phần I — Trao danh thiếp / 名刺交換"
    "Phần II — Tiếp khách tại VN / 来客対応"
    "Phần III — Thăm văn phòng khách JP / 訪問"
    "Phần IV — Tiếp đãi · Bữa ăn · Omiyage"
    "Phần V — Tình huống đặc biệt + Self-improve"
)

for i in "${!PHANS[@]}"; do
    phan="${PHANS[$i]}"
    title="${PHAN_TITLES[$i]}"
    if [ "$i" -gt 0 ]; then
        echo "" >> "$COMBINED"
        echo "---" >> "$COMBINED"
        echo "" >> "$COMBINED"
        echo "# $title" >> "$COMBINED"
        echo "" >> "$COMBINED"
    fi
    # Sort rule folders by number
    for rule_dir in $(ls -1 "$NOI_DUNG/$phan/" | grep "^rule_" | sort -t_ -k2 -n); do
        rule_md="$NOI_DUNG/$phan/$rule_dir/rule.md"
        if [ -f "$rule_md" ]; then
            cat "$rule_md" >> "$COMBINED"
            echo "" >> "$COMBINED"
            echo "" >> "$COMBINED"
        fi
    done
done

# Phụ lục
echo "" >> "$COMBINED"
echo "---" >> "$COMBINED"
echo "" >> "$COMBINED"
cat "$NOI_DUNG/phụ_lục/phụ_lục_A_script_template.md" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "---" >> "$COMBINED"
echo "" >> "$COMBINED"
cat "$NOI_DUNG/phụ_lục/phụ_lục_B_vocab.md" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "---" >> "$COMBINED"
echo "" >> "$COMBINED"
cat "$NOI_DUNG/phụ_lục/phụ_lục_C_bjt_practice.md" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "---" >> "$COMBINED"
echo "" >> "$COMBINED"
cat "$NOI_DUNG/phụ_lục/phụ_lục_D_templates.md" >> "$COMBINED"

echo "✓ Combined markdown: $COMBINED ($(wc -l < "$COMBINED") dòng)"

# Step 2: Pandoc → docx/html/epub
if command -v pandoc &> /dev/null; then
    echo "Building docx..."
    pandoc "$COMBINED" -o "$OUTPUT/Hizashi_visit_v${VERSION}.docx" \
        --toc --toc-depth=2 \
        --metadata title="$TITLE" \
        --metadata author="Hizashi Teams" \
        2>/dev/null || echo "  (warn) docx có warning"

    echo "Building html..."
    pandoc "$COMBINED" -o "$OUTPUT/Hizashi_visit_v${VERSION}.html" \
        --toc --toc-depth=2 --standalone \
        --metadata title="$TITLE" \
        2>/dev/null || echo "  (warn) html có warning"

    echo "Building epub..."
    pandoc "$COMBINED" -o "$OUTPUT/Hizashi_visit_v${VERSION}.epub" \
        --toc --toc-depth=2 \
        --metadata title="$TITLE" \
        --metadata author="Hizashi Teams" \
        --metadata lang=vi \
        2>/dev/null || echo "  (warn) epub có warning"

    echo ""
    echo "✓ Done. Output:"
    ls -lh "$OUTPUT"/Hizashi_visit_v${VERSION}.* 2>/dev/null || true
else
    echo ""
    echo "⚠ pandoc chưa cài — chỉ tạo combined markdown."
    echo "  Cài pandoc: brew install pandoc (macOS) hoặc apt install pandoc (Linux)"
fi
