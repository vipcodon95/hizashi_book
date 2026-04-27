# Stage 6: Review tiếng Nhật / tiếng Việt

> **Mục tiêu**: Subagent kiểm tra:
> - Tiếng Nhật **tự nhiên**, đúng ngữ pháp, phù hợp ngữ cảnh
> - Tiếng Việt **dịch chuẩn**, không sai chính tả, không lỗi văn phong
> - Loại bỏ **tiếng Anh thừa** trong câu giải thích/dịch (vd "trigger", "case", "approach" — phải dịch sang tiếng Việt)

## Triển khai

**Subagent**: `japanese-vietnamese-reviewer`

**Tools**: Read, Edit, Grep, Glob

## Quy trình

### 1. Main Claude prepare context

Liệt kê **tất cả file** cần review:
```python
md_files = glob("books/<book>/*/*_LyThuyet.md")
json_files = glob("books/<book>/*/*_BaiTap.json") + glob("books/<book>/*/*_Mogishiken.json")
```

### 2. Spawn `japanese-vietnamese-reviewer`

Prompt cho agent:

```
Tôi đang review sách "<book_title_vn>" cho Hizashi.

Files cần review:
- Markdown lý thuyết: <list md_files>
- JSON câu hỏi: <list json_files>

Hãy kiểm tra **TỪNG FILE** và sửa trực tiếp các lỗi sau (dùng tool Edit):

## A. Tiếng Nhật

1. Ngữ pháp đúng — đặc biệt với keigo, particle, conjugation
2. Tự nhiên — câu Nhật phải nghe giống native, không phải "google translate"
3. Đúng ngữ cảnh — vd với business japanese phải đủ trang trọng (Sonkeigo/Kenjougo đúng chỗ)
4. Furigana đúng — không sai cách đọc Kanji
5. Punctuation — dùng `。、？！「」` (full-width Japanese), KHÔNG dùng `.,?!""` (half-width)

## B. Tiếng Việt

1. Chính tả — dùng tiếng Việt có dấu đầy đủ
2. Văn phong — phù hợp giáo trình (không quá cứng, không quá thoải mái)
3. Dịch sát nghĩa — không "thoát ý" quá xa câu Nhật gốc
4. Thuật ngữ — nhất quán giữa các chương (vd "kính ngữ" hoặc "敬語" — không trộn lẫn cách viết)

## C. Loại bỏ tiếng Anh thừa

Replace các từ tiếng Anh không cần thiết:
- "trigger" → "kích hoạt" / "gây ra"
- "case" → "trường hợp"
- "approach" → "cách tiếp cận"
- "format" → "định dạng"
- "context" → "ngữ cảnh"
- "default" → "mặc định"
- "feature" → "tính năng"
- "review" → "xem xét" / "đánh giá"
- "deploy" → "triển khai"
- "handle" → "xử lý"
- "user" → "người dùng" / "học viên"
- ...

NGOẠI TRỪ:
- Thuật ngữ chuyên ngành CNTT/y khoa khi không có tiếng Việt tương đương
- Tên riêng (Hizashi, JLPT, BJT, ...)
- Tiếng Anh trong câu hỏi tiếng Nhật (vd `この APIの使い方` — giữ nguyên)

## D. Output

Sau khi sửa từng file, ghi báo cáo vào `_pipeline/06_jp_vn_review.md`:

```markdown
# JP/VN Review Report — <book_title_vn>

## Summary
- Files reviewed: <N>
- Total fixes: <X>
  - JP grammar/naturalness: <a>
  - VN spelling/style: <b>
  - English removal: <c>

## Per-file changes

### books/<book>/2.1.0_keigo_phan_loai/2.1.0_Phan_loai_Kinh_ngu.md
- Line 23: 「いる」→「いらっしゃる」(Sonkeigo phù hợp ngữ cảnh nói với khách)
- Line 45: "trigger" → "kích hoạt"
- ... (list cụ thể)

### books/<book>/2.1.0_keigo_phan_loai/2.1.1_Teineigo_BaiTap.json
- ...

## Issues còn lại (nếu có)
- <vấn đề không tự fix được, cần user quyết định>
```

## Quy tắc

- **PHẢI dùng tool Edit** để fix trực tiếp file (KHÔNG chỉ note)
- KHÔNG đổi schema/structure JSON — chỉ sửa nội dung text
- KHÔNG sửa file `_pipeline/state.json` — Main Claude làm
- Dưới 1500 từ cho báo cáo, focus thay đổi quan trọng
```

### 3. Sau khi agent xong

Main Claude:
1. Verify file `_pipeline/06_jp_vn_review.md` đã được tạo
2. Verify các file có thay đổi (check git diff hoặc just trust agent report)
3. Re-run validate cho JSON files đã sửa:
   ```bash
   for f in books/<book>/*/*.json; do
     python3 .claude/skills/study-course-questions-builder/scripts/validate_json.py "$f"
   done
   ```
4. Update state:
   ```python
   state["stages"]["06_jp_vn_review"] = {
     "status": "done",
     "output": "_pipeline/06_jp_vn_review.md",
     "completed_at": "<now>"
   }
   state["current_stage"] = 7
   save_state(state)
   ```
5. Báo user:
   ```
   ✓ Stage 6 (Review JP/VN) hoàn tất.
   Output: _pipeline/06_jp_vn_review.md
   - <X> fixes JP grammar/naturalness
   - <Y> fixes VN spelling/style
   - <Z> English words replaced

   Issues còn lại cần user quyết:
   - <highlight nếu có>

   Chạy /book-next <book> để sang Stage 7 (Consistency).
   ```

## Constraints

- Agent có quyền Edit file → cần discipline KHÔNG over-edit (vd đổi cả structure draft)
- Re-validate JSON sau khi agent xong (đề phòng agent vô tình break schema)
- Issues critical (không tự fix được) → highlight trong báo cáo cho user

## Failure handling

- Agent timeout → save partial review, ghi note "incomplete" trong report, user có thể trigger lại stage 6 sau
- Agent break JSON schema → restore từ git (nếu đã commit) hoặc revert manual
