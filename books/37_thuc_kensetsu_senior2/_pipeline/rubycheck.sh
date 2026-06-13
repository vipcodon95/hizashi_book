#!/bin/bash
# Verify ruby balance + common errors for a HoiThoai file
F="$1"
o=$(grep -o '<ruby>' "$F"|wc -l|tr -d ' ')
c=$(grep -o '</ruby>' "$F"|wc -l|tr -d ' ')
rt=$(grep -o '<rt>' "$F"|wc -l|tr -d ' ')
ert=$(grep -o '</rt>' "$F"|wc -l|tr -d ' ')
th=$(grep -c '^## Tình huống' "$F")
echo "$(basename $F): ruby open=$o close=$c rt=$rt /rt=$ert, $th TH"
[ "$o" = "$c" ] && [ "$c" = "$rt" ] && [ "$rt" = "$ert" ] && [ "$th" = "20" ] && echo "  -> OK" || echo "  -> MISMATCH"
echo -n "  stray nested ruby: "; grep -c '<ruby>[^<]*<ruby>' "$F" 2>/dev/null || echo 0
echo -n "  empty rt: "; grep -c '<rt></rt>' "$F" 2>/dev/null || echo 0
echo -n "  bad close brace: "; grep -c '</ruby[^>]' "$F" 2>/dev/null || echo 0
echo -n "  box-draw/cyrillic/hangul: "; grep -nc '[─━═│├└┌┐┘А-Яа-яёЁ가-힣]' "$F" 2>/dev/null || echo 0
