#!/usr/bin/env bash
# Build Hizashi Sách 11 — SÁCH BÀI TẬP → EPUB
# Nguồn: build_exercises_md.py (chỉ quét 12 thư mục chương theo CHAPTERS cố định).
# → Chỉ lấy BaiTap t01-t03 (thật) + Mogishiken t01-t12 (thật) = 360 câu.
# → KHÔNG đụng _skeleton_tach_rieng/ (BaiTap t04-t12 skeleton đã tách).
set -e

BOOK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUTPUT="$BOOK_ROOT/output"
SCRIPT_DIR="$(dirname "$0")"
mkdir -p "$OUTPUT"

VERSION="1.1"
TITLE="Hizashi — Thực tập sinh ngành thực phẩm · Sách bài tập"
CSS="$SCRIPT_DIR/epub_jisshusei.css"
LUA="$SCRIPT_DIR/reset_colwidth.lua"
COVER="$OUTPUT/cover_baitap.png"
COMBINED="$OUTPUT/_combined_baitap.md"

# YAML front matter
cat > "$COMBINED" <<EOF
---
title: "$TITLE"
author: "Hizashi Teams"
lang: vi
---

EOF

# Trang bìa trong + giới thiệu sách bài tập
cat >> "$COMBINED" <<'EOF'
# Sách bài tập — Thực tập sinh ngành thực phẩm

*Hizashi Teams.*

Phần bài tập đi kèm giáo trình 12 tháng. Mỗi câu có đáp án và giải thích ngay bên dưới
để bạn tự học, tự kiểm tra sau mỗi chương.

- **Bài tập** (chương 1–3): trắc nghiệm từ vựng, mẫu câu, tình huống.
- **Đề thi thử — đọc hiểu** (chương 1–12): đoạn văn song ngữ kèm câu hỏi đọc hiểu.

EOF

# Nội dung bài tập (sinh từ JSON)
python3 "$SCRIPT_DIR/build_exercises_md.py" >> "$COMBINED"

# Trang cuối
if [ -f "$BOOK_ROOT/_back_matter.md" ]; then
    echo "" >> "$COMBINED"
    cat "$BOOK_ROOT/_back_matter.md" >> "$COMBINED"
    echo "" >> "$COMBINED"
fi

echo "✓ Combined markdown: $COMBINED ($(wc -l < "$COMBINED") dòng)"
echo "  Số câu: $(grep -cE '^\*\*Câu [0-9]+\.' "$COMBINED")"

# ─── Pandoc → EPUB ───
if command -v pandoc &> /dev/null; then
    COVER_ARG=""
    [ -f "$COVER" ] && COVER_ARG="--epub-cover-image=$COVER"
    EPUB_OUT="$OUTPUT/Hizashi_jisshusei_baitap_v${VERSION}.epub"
    pandoc "$COMBINED" -o "$EPUB_OUT" \
        --from markdown+raw_html \
        --to epub3 \
        --toc --toc-depth=2 \
        --css "$CSS" \
        --lua-filter "$LUA" \
        $COVER_ARG \
        --epub-title-page=false \
        --metadata title="$TITLE" --metadata author="Hizashi Teams" \
        --metadata lang=vi 2>/dev/null || echo "  warn: epub"
    [ -f "$EPUB_OUT" ] && python3 "$SCRIPT_DIR/reorder_frontmatter.py" "$EPUB_OUT" 2>/dev/null || true
    echo ""
    echo "✓ Output:"
    ls -lh "$EPUB_OUT" 2>/dev/null || true
else
    echo "⚠ pandoc chưa cài."
fi
