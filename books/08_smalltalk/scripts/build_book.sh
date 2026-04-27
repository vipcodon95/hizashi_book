#!/usr/bin/env bash
# Build Hizashi Sách 08 — 雑談・関係構築 — docx/html/epub
set -e

BOOK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NOI_DUNG="$BOOK_ROOT/nội_dung"
OUTPUT="$BOOK_ROOT/output"
mkdir -p "$OUTPUT"

VERSION="1.1"
TITLE="Hizashi — Trò chuyện thân thiết / 雑談・関係構築 v${VERSION}"

COMBINED="$OUTPUT/_combined.md"

cat > "$COMBINED" <<EOF
---
title: "$TITLE"
author: "Hizashi Teams"
date: "2026"
lang: vi
---

EOF

cat "$NOI_DUNG/_front_matter.md" >> "$COMBINED"
echo "" >> "$COMBINED"
echo "" >> "$COMBINED"

declare -a PHANS=("phần_I" "phần_II" "phần_III" "phần_IV" "phần_V")
declare -a PHAN_TITLES=(
    "Phần I — Khung tư duy 雑談 / 雑談の基本姿勢"
    "Phần II — Topics core đào sâu / 雑談トピック"
    "Phần III — Regional deep dive 47 prefectures / 地域別雑談"
    "Phần IV — Việt Nam topics / ベトナムの話題"
    "Phần V — Drinking culture + Self-improve / 飲みの文化と自己練習"
)

for i in "${!PHANS[@]}"; do
    phan="${PHANS[$i]}"
    title="${PHAN_TITLES[$i]}"
    echo "" >> "$COMBINED"
    echo "---" >> "$COMBINED"
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

# Phụ lục A-E
for app in A B C D E; do
    f=$(ls "$NOI_DUNG/phụ_lục/phụ_lục_${app}"*.md 2>/dev/null | head -1)
    if [ -f "$f" ]; then
        echo "" >> "$COMBINED"
        echo "---" >> "$COMBINED"
        echo "" >> "$COMBINED"
        cat "$f" >> "$COMBINED"
        echo "" >> "$COMBINED"
        echo "" >> "$COMBINED"
    fi
done

echo "✓ Combined markdown: $COMBINED ($(wc -l < "$COMBINED") dòng)"

if command -v pandoc &> /dev/null; then
    echo "Building docx..."
    pandoc "$COMBINED" -o "$OUTPUT/Hizashi_smalltalk_v${VERSION}.docx" \
        --toc --toc-depth=2 \
        --metadata title="$TITLE" --metadata author="Hizashi Teams" \
        2>/dev/null || echo "  warn docx"
    echo "Building html..."
    pandoc "$COMBINED" -o "$OUTPUT/Hizashi_smalltalk_v${VERSION}.html" \
        --toc --toc-depth=2 --standalone \
        --metadata title="$TITLE" 2>/dev/null || echo "  warn html"
    echo "Building epub..."
    pandoc "$COMBINED" -o "$OUTPUT/Hizashi_smalltalk_v${VERSION}.epub" \
        --toc --toc-depth=2 \
        --metadata title="$TITLE" --metadata author="Hizashi Teams" --metadata lang=vi \
        2>/dev/null || echo "  warn epub"
    echo ""
    echo "✓ Done."
    ls -lh "$OUTPUT"/Hizashi_smalltalk_v${VERSION}.* 2>/dev/null || true
else
    echo "pandoc chưa có — chỉ combined .md"
fi
