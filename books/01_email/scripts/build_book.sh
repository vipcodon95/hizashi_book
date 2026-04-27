#!/usr/bin/env bash
# Build Hizashi Sách 01 Email — VN + JP split formats
set -e

BOOK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NOI_DUNG="$BOOK_ROOT/nội_dung"
OUTPUT="$BOOK_ROOT/output"
mkdir -p "$OUTPUT"

VERSION="1.1"

# ─── VN build ───
TITLE_VN="Hizashi — Email Công Việc v${VERSION}"
COMBINED_VN="$OUTPUT/_combined_vn.md"

cat > "$COMBINED_VN" <<EOF
---
title: "$TITLE_VN"
author: "Hizashi Teams"
date: "2026"
lang: vi
---

EOF

cat "$NOI_DUNG/_front_matter_vi.md" >> "$COMBINED_VN" 2>/dev/null || true
echo "" >> "$COMBINED_VN"
echo "" >> "$COMBINED_VN"

for phan_dir in "$NOI_DUNG"/vi/phần_*; do
    [ -d "$phan_dir" ] || continue
    echo "" >> "$COMBINED_VN"
    echo "---" >> "$COMBINED_VN"
    phan_name=$(basename "$phan_dir")
    echo "# $phan_name" >> "$COMBINED_VN"
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
    echo "---" >> "$COMBINED_VN"
    cat "$f" >> "$COMBINED_VN"
    echo "" >> "$COMBINED_VN"
done

echo "✓ VN combined: $(wc -l < "$COMBINED_VN") dòng"

# ─── JP build ───
TITLE_JP="Hizashi — メール業務 v${VERSION}"
COMBINED_JP="$OUTPUT/_combined_jp.md"

cat > "$COMBINED_JP" <<EOF
---
title: "$TITLE_JP"
author: "Hizashi Teams"
date: "2026"
lang: ja
---

EOF

cat "$NOI_DUNG/_front_matter_ja.md" >> "$COMBINED_JP" 2>/dev/null || true
echo "" >> "$COMBINED_JP"

for phan_dir in "$NOI_DUNG"/ja/第*; do
    [ -d "$phan_dir" ] || continue
    echo "" >> "$COMBINED_JP"
    echo "---" >> "$COMBINED_JP"
    phan_name=$(basename "$phan_dir")
    echo "# $phan_name" >> "$COMBINED_JP"
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
    echo "---" >> "$COMBINED_JP"
    cat "$f" >> "$COMBINED_JP"
    echo "" >> "$COMBINED_JP"
done

echo "✓ JP combined: $(wc -l < "$COMBINED_JP") dòng"

# ─── Pandoc build ───
if command -v pandoc &> /dev/null; then
    for lang in VN JP; do
        if [ "$lang" = "VN" ]; then
            COMB="$COMBINED_VN"; TITLE="$TITLE_VN"; LANG="vi"
        else
            COMB="$COMBINED_JP"; TITLE="$TITLE_JP"; LANG="ja"
        fi
        for fmt in docx html epub; do
            ARGS=""
            [ "$fmt" = "html" ] && ARGS="--standalone"
            pandoc "$COMB" -o "$OUTPUT/Hizashi_email_v${VERSION}_${lang}.${fmt}" \
                --toc --toc-depth=2 \
                --metadata title="$TITLE" --metadata author="Hizashi Teams" \
                --metadata lang="$LANG" $ARGS 2>/dev/null || echo "  warn: $fmt $lang"
        done
    done
    echo ""
    echo "✓ Output:"
    ls -lh "$OUTPUT"/Hizashi_email_v${VERSION}_*.* 2>/dev/null
fi
