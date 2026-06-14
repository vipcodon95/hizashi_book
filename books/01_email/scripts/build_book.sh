#!/usr/bin/env bash
# Build Hizashi Sách 01 Email — VN + JP split formats
set -e

BOOK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NOI_DUNG="$BOOK_ROOT/nội_dung"
OUTPUT="$BOOK_ROOT/output"
mkdir -p "$OUTPUT"

VERSION="1.1"

# ─── VN build ───
# TITLE không kèm version (version quản lý ở trang cuối/colophon).
TITLE_VN="Hizashi — Email Công Việc"
COMBINED_VN="$OUTPUT/_combined_vn.md"

cat > "$COMBINED_VN" <<EOF
---
title: "$TITLE_VN"
author: "Hizashi Teams"
lang: vi
---

EOF

cat "$NOI_DUNG/_front_matter_vi.md" >> "$COMBINED_VN" 2>/dev/null || true
echo "" >> "$COMBINED_VN"
echo "" >> "$COMBINED_VN"

for phan_dir in "$NOI_DUNG"/vi/phần_*; do
    [ -d "$phan_dir" ] || continue
    # KHÔNG chèn heading tên thư mục (phần_I...) — README.md mỗi phần đã có heading
    # thật ('# Phần I — Nền tảng...'). Chèn nữa sẽ tạo TRANG RÁC 'phần_I' thừa.
    echo "" >> "$COMBINED_VN"
    for md in $(ls -1 "$phan_dir"/*.md 2>/dev/null | sort); do
        cat "$md" >> "$COMBINED_VN"
        echo "" >> "$COMBINED_VN"
        echo "" >> "$COMBINED_VN"
    done
done

# Phụ lục VN
for f in "$NOI_DUNG"/vi/phụ_lục/*.md; do
    [ -f "$f" ] || continue
    echo "" >> "$COMBINED_VN"
    cat "$f" >> "$COMBINED_VN"
    echo "" >> "$COMBINED_VN"
done

# Trang cuối VN (liên hệ + thông tin sách + version)
if [ -f "$NOI_DUNG/_back_matter_vi.md" ]; then
    echo "" >> "$COMBINED_VN"
    cat "$NOI_DUNG/_back_matter_vi.md" >> "$COMBINED_VN"
    echo "" >> "$COMBINED_VN"
fi

echo "✓ VN combined: $(wc -l < "$COMBINED_VN") dòng"

# ─── JP build ───
TITLE_JP="Hizashi — メール業務"
COMBINED_JP="$OUTPUT/_combined_jp.md"

cat > "$COMBINED_JP" <<EOF
---
title: "$TITLE_JP"
author: "Hizashi Teams"
lang: ja
---

EOF

cat "$NOI_DUNG/_front_matter_ja.md" >> "$COMBINED_JP" 2>/dev/null || true
echo "" >> "$COMBINED_JP"

for phan_dir in "$NOI_DUNG"/ja/第*; do
    [ -d "$phan_dir" ] || continue
    # KHÔNG chèn heading tên thư mục (第N章) — README.md mỗi chương đã có heading thật.
    echo "" >> "$COMBINED_JP"
    for md in $(ls -1 "$phan_dir"/*.md 2>/dev/null | sort); do
        cat "$md" >> "$COMBINED_JP"
        echo "" >> "$COMBINED_JP"
        echo "" >> "$COMBINED_JP"
    done
done

for f in "$NOI_DUNG"/ja/付録/*.md; do
    [ -f "$f" ] || continue
    echo "" >> "$COMBINED_JP"
    cat "$f" >> "$COMBINED_JP"
    echo "" >> "$COMBINED_JP"
done

# Trang cuối JP (liên hệ + thông tin sách + version)
if [ -f "$NOI_DUNG/_back_matter_ja.md" ]; then
    echo "" >> "$COMBINED_JP"
    cat "$NOI_DUNG/_back_matter_ja.md" >> "$COMBINED_JP"
    echo "" >> "$COMBINED_JP"
fi

echo "✓ JP combined: $(wc -l < "$COMBINED_JP") dòng"

# ─── Pandoc build (chỉ EPUB, có CSS riêng + lua reset width + ruby furigana) ───
SCRIPT_DIR="$(dirname "$0")"
CSS="$SCRIPT_DIR/epub_email.css"
LUA="$SCRIPT_DIR/reset_colwidth.lua"

if command -v pandoc &> /dev/null; then
    for lang in VN JP; do
        if [ "$lang" = "VN" ]; then
            COMB="$COMBINED_VN"; TITLE="$TITLE_VN"; LANG="vi"; COVER="$OUTPUT/cover_vn.png"
        else
            COMB="$COMBINED_JP"; TITLE="$TITLE_JP"; LANG="ja"; COVER="$OUTPUT/cover_jp.png"
        fi
        # --epub-cover-image: trang bìa custom (logo Hizashi). Bỏ qua nếu thiếu file.
        COVER_ARG=""
        [ -f "$COVER" ] && COVER_ARG="--epub-cover-image=$COVER"
        EPUB_OUT="$OUTPUT/Hizashi_email_v${VERSION}_${lang}.epub"
        # --epub-title-page=false: bỏ trang title tự sinh (thừa, đã có bìa).
        # markdown+raw_html (cho ruby furigana). YAML hợp lệ ở đầu file, không còn
        # '---' separator trần giữa nội dung → không bị nhầm YAML/bảng.
        pandoc "$COMB" -o "$EPUB_OUT" \
            --from markdown+raw_html \
            --to epub3 \
            --toc --toc-depth=2 \
            --css "$CSS" \
            --lua-filter "$LUA" \
            $COVER_ARG \
            --epub-title-page=false \
            --metadata title="$TITLE" --metadata author="Hizashi Teams" \
            --metadata lang="$LANG" 2>/dev/null || echo "  warn: epub $lang"
        # Đưa front matter (ch001) lên TRƯỚC mục lục: cover → front matter → mục lục.
        [ -f "$EPUB_OUT" ] && python3 "$SCRIPT_DIR/reorder_frontmatter.py" "$EPUB_OUT" 2>/dev/null
    done
    echo ""
    echo "✓ Output:"
    ls -lh "$OUTPUT"/Hizashi_email_v${VERSION}_*.epub 2>/dev/null
fi
