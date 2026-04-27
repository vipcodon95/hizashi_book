# Stage 7: Consistency Check (giữa các chương)

> **Mục tiêu**: Đảm bảo các chương trong sách nhất quán về:
> - Thuật ngữ (cùng 1 khái niệm phải dùng 1 từ duy nhất)
> - Style (cùng tone, cùng độ trang trọng)
> - Structure (các chương có cùng skeleton)
> - Cross-reference (chương N nhắc tới chương M phải có thật)

## Triển khai

**Subagent**: `consistency-reviewer`

**Tools**: Read, Grep, Glob

## Quy trình

### 1. Spawn agent

Prompt:

```
Review tính nhất quán giữa các chương của sách "<book_title_vn>".

Files: <list md_files + json_files>

Kiểm tra 5 nhóm:

## 1. Thuật ngữ
Build glossary trên-the-fly:
- Liệt kê các thuật ngữ chính xuất hiện ở nhiều chương
- Cho mỗi term, check xem các chương dùng đồng nhất 1 cách viết hay không

Vd:
- "Kính ngữ" vs "敬語" vs "Keigo" — chọn 1, dùng nhất quán (hoặc kèm song song theo pattern cố định)
- "Tôn kính ngữ" vs "Sonkeigo" vs "尊敬語"
- "công ty mình" vs "công ty của tôi" vs "弊社"

## 2. Style / Tone
- Có chương nào quá technical (toàn jargon) trong khi chương khác quá casual?
- Có chương nào dùng "bạn", chương khác dùng "học viên"?
- Có chương xưng "tôi" dạy, chương khác xưng "chúng ta"?
- Mức độ formality phải nhất quán (sách giáo trình thường formal-friendly)

## 3. Structure
Mỗi chương có cùng skeleton không?
- Heading "Mục tiêu" ở đầu? (yes/no)
- Section "Định nghĩa" trước "Cấu trúc"? (yes/no)
- Section "So sánh" / "Phân tích lỗi" có ở chương phù hợp?
- "Tổng kết" ở cuối? (yes/no)
- "Mẹo ghi nhớ" ở cuối? (yes/no)

Liệt kê chương nào lệch khỏi skeleton chung.

## 4. Cross-references
Tìm các câu kiểu:
- "Như đã học ở chương 1.2"
- "Xem thêm bài 2.1.5"
- "Section 3.4 sẽ giải thích chi tiết"

Verify các reference đó có tồn tại không. Báo dead link.

## 5. Difficulty progression
- Chương `basic` có quá khó không? (kiểm tra Kanji, ngữ pháp dùng)
- Chương `advanced` có quá dễ không? (chỉ lặp lại basic)
- Có jump quá lớn giữa chương 1 (basic) → chương 2 (intermediate)?

## Output

Ghi báo cáo vào `_pipeline/07_consistency.md`:

```markdown
# Consistency Report — <book_title_vn>

## 1. Glossary inconsistencies
| Term | Variants found | Recommended | Files affected |
|------|---------------|-------------|---------------|
| Kính ngữ | Kính ngữ (40 lần), Keigo (5 lần), 敬語 (15 lần) | Use "kính ngữ (敬語)" first time, "kính ngữ" subsequent | `2.1.0_*.md`, `2.1.4_*.md` |
| ... | ... | ... | ... |

## 2. Style issues
- File X: dùng "bạn" — không nhất quán với các file dùng "học viên"
- ...

## 3. Structure gaps
- Module 2.1.4 thiếu section "Mẹo ghi nhớ"
- Module 2.1.7 thiếu "Định nghĩa" ở đầu
- ...

## 4. Dead cross-references
- File `2.1.5_*.md` line 102: "xem chương 2.1.8" — chương 2.1.8 không tồn tại
- ...

## 5. Difficulty issues
- Module 2.1.0 (basic) dùng Kanji 紛らわしい (N1 level) → quá khó
- Module 2.1.7 (advanced) chỉ ôn lại N5 grammar → quá dễ
- ...

## Severity ranking

| Severity | Count | Action |
|----------|-------|--------|
| Critical (dead links, wrong difficulty) | <X> | MUST fix trước stage 9 |
| Major (style inconsistency) | <Y> | SHOULD fix |
| Minor (glossary preference) | <Z> | NICE to fix |
```

KHÔNG fix file (chỉ report). Stage 10 sẽ apply fixes.
```

### 2. Sau khi agent xong

Main Claude:
1. Đọc report
2. Update state với severity counts
3. Báo user breakdown + critical issues cần Main Claude attention ở stage 10

## Constraints

- Agent CHỈ report, KHÔNG fix (khác stage 6 — stage 6 fix trực tiếp text local; stage 7 là cross-cutting nên cần Main Claude với full context)
- Báo cáo dưới 1500 từ
- Severity rõ ràng — Main Claude stage 10 sẽ ưu tiên fix critical → major

## Failure handling

- Agent không tìm được pattern → fallback dùng grep manual với common terms
- Critical issues > 10 → flag warning cho user, có thể cần re-research/re-outline

## Tham khảo

- Glossary mẫu: `_shared/master_glossary.md`
