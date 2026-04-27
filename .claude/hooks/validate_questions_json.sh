#!/usr/bin/env bash
# PostToolUse hook cho Edit/Write/MultiEdit:
# Auto-validate JSON câu hỏi khi save vào books/<book>/<topic>_<module>/*.json
#
# Chỉ trigger khi:
#   - file_path khớp pattern books/*/[0-9]*/*_BaiTap.json | *_Mogishiken.json | *_LuyenTap.json
#   - File parse được JSON
#
# Output:
#   - Pass: silent
#   - Fail: print warning ra stderr (Claude thấy + user thấy)
#
# Input: JSON qua stdin theo spec PostToolUse của Claude Code.

set -euo pipefail

payload="$(cat)"

tool_name="$(printf '%s' "$payload" | /usr/bin/python3 -c \
  'import json,sys; print(json.load(sys.stdin).get("tool_name",""))' 2>/dev/null || echo '')"

# Chỉ care Edit / Write / MultiEdit
case "$tool_name" in
  Edit|Write|MultiEdit) ;;
  *) exit 0 ;;
esac

file_path="$(printf '%s' "$payload" | /usr/bin/python3 -c \
  'import json,sys; t=json.load(sys.stdin).get("tool_input",{}); print(t.get("file_path",""))' 2>/dev/null || echo '')"

if [ -z "$file_path" ]; then
  exit 0
fi

# Match pattern: .../books/<book>/<topic>_<module>/<file>_(BaiTap|Mogishiken|LuyenTap).json
case "$file_path" in
  */books/*/[0-9]*/*_BaiTap.json|*/books/*/[0-9]*/*_Mogishiken.json|*/books/*/[0-9]*/*_LuyenTap.json) ;;
  *) exit 0 ;;
esac

# Tìm root của Hizashi_book (có .claude dir)
hizashi_book_root=""
dir="$(dirname "$file_path")"
while [ "$dir" != "/" ] && [ "$dir" != "" ]; do
  if [ -d "$dir/.claude/skills/study-course-questions-builder" ]; then
    hizashi_book_root="$dir"
    break
  fi
  dir="$(dirname "$dir")"
done

if [ -z "$hizashi_book_root" ]; then
  exit 0
fi

validator="$hizashi_book_root/.claude/skills/study-course-questions-builder/scripts/validate_json.py"

if [ ! -f "$validator" ]; then
  exit 0
fi

# Run validator
output="$(/usr/bin/python3 "$validator" "$file_path" 2>&1 || true)"
exit_code=$?

# Kiểm tra ký tự ❌ trong output (validator báo FAIL)
if echo "$output" | grep -q "❌ FAIL"; then
  echo "" >&2
  echo "⚠️  [validate_questions_json hook] File JSON câu hỏi vừa save có lỗi schema:" >&2
  echo "$output" | grep -E "^  - |^❌|^✅" >&2
  echo "" >&2
  echo "→ Sửa lỗi rồi save lại. Xem chi tiết:" >&2
  echo "   .claude/skills/study-course-questions-builder/SKILL.md (mục 6 Anti-patterns)" >&2
  echo "" >&2
fi

# Luôn exit 0 — không chặn save (chỉ cảnh báo)
exit 0
