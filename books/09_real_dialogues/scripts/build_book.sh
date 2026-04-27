#!/usr/bin/env bash
# Build Hizashi Sách 09 — Hội thoại thực tế / 実践会話シーン集 — docx/html/epub
set -e

BOOK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NOI_DUNG="$BOOK_ROOT/nội_dung"
OUTPUT="$BOOK_ROOT/output"
mkdir -p "$OUTPUT"

VERSION="0.2"
TITLE="Hizashi — Hội thoại thực tế / 実践会話シーン集 v${VERSION}"

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

# Concat all chương_*/chương.md
for chapter_dir in $(ls -1 "$NOI_DUNG/" | grep "^chương_" | sort); do
    chapter_md="$NOI_DUNG/$chapter_dir/chương.md"
    if [ -f "$chapter_md" ]; then
        echo "" >> "$COMBINED"
        echo "---" >> "$COMBINED"
        echo "" >> "$COMBINED"
        cat "$chapter_md" >> "$COMBINED"
        echo "" >> "$COMBINED"
        echo "" >> "$COMBINED"
    fi
done

echo "✓ Combined markdown: $COMBINED ($(wc -l < "$COMBINED") dòng)"

if command -v pandoc &> /dev/null; then
    pandoc "$COMBINED" -o "$OUTPUT/Hizashi_real_dialogues_v${VERSION}.docx" \
        --toc --toc-depth=2 \
        --metadata title="$TITLE" --metadata author="Hizashi Teams" \
        2>/dev/null || echo "  warn docx"
    pandoc "$COMBINED" -o "$OUTPUT/Hizashi_real_dialogues_v${VERSION}.html" \
        --toc --toc-depth=2 --standalone \
        --metadata title="$TITLE" 2>/dev/null || echo "  warn html"
    pandoc "$COMBINED" -o "$OUTPUT/Hizashi_real_dialogues_v${VERSION}.epub" \
        --toc --toc-depth=2 \
        --metadata title="$TITLE" --metadata author="Hizashi Teams" --metadata lang=vi \
        2>/dev/null || echo "  warn epub"
    echo ""
    echo "✓ Done."
    ls -lh "$OUTPUT"/Hizashi_real_dialogues_v${VERSION}.* 2>/dev/null || true
else
    echo "pandoc chưa có"
fi
