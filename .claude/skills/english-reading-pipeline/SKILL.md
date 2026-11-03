---
name: english-reading-pipeline
description: Pipeline viết sách bài tập ĐỌC HIỂU TIẾNG ANH A1–C1 của Hizashi (sách 56–60), bám khoá tiếng Anh trên app (_shared/en_curriculum) và dàn nhân vật Maple Street (characters.md). 1 cấp = 1 cuốn, 1 chương = 1 unit. JSON là nguồn sự thật (segments từng câu cho shadowing), md sinh tự động. Kích hoạt khi user nói "viết sách tiếng Anh", "sách đọc hiểu A1/A2/B1/B2/C1", "tiếp tục sách 56..60".
---

# English Reading Pipeline — sách đọc hiểu tiếng Anh A1–C1

Đọc trước, theo thứ tự:
1. `_shared/english_cefr/KE_HOACH_SERIES.md`: kế hoạch đã chốt với chủ nhà (luật nội dung, mục 7a vùng cấm).
2. `_shared/en_curriculum/README.md`: nguyên tắc vốn từ, bộ tên và địa danh Mỹ.
3. `_shared/en_curriculum/characters.md`: dàn nhân vật, tuổi và nghề theo cấp, **nhật ký sự kiện**.
4. Chương mẫu đã duyệt gần nhất trong sách đang viết.

## Sách

| Sách | Folder | Cấp | Chương |
|---|---|---|---|
| 56 | `books/56_english_a1` | A1 | 16 unit + 1 đề thi thử |
| 57 | `books/57_english_a2` | A2 | 20 unit + 1 đề thi thử |
| 58 | `books/58_english_b1` | B1 | 40 unit + đề giữa sách + `b1.test` |
| 59 | `books/59_english_b2` | B2 | 45 unit + đề giữa sách + `b2.test` |
| 60 | `books/60_english_c1` | C1 | 12 unit + `c1.test` |

Folder chương: `u<NN>_<slug>/` chứa đúng 2 file: `u<NN>_<Name>_BaiTap.json` (NGUỒN) và `u<NN>_<Name>_DocHieu.md` (SINH).
Đề thi thử: `mock<N>_<slug>/` với `_Mogishiken.json`.

## State

`books/<book>/_pipeline/state.json` (được commit), `pipeline_type: "english_reading"`. Stage:

| # | Stage | Ai làm | Output |
|---|---|---|---|
| 1 | Research: dạng bài theo cấp, format đề, liệt kê `reading_title` của app để tránh trùng | main Claude (hoặc `book-researcher`) | `_pipeline/01_research.md` |
| 2 | Outline: mỗi chương gồm unit, thời điểm truyện, nhân vật chính, 2+ loại văn bản, trọng tâm câu hỏi | main Claude | `_pipeline/02_outline.md` + `state.chapters` |
| 3 | Draft: gộp vào outline (ý chính từng bài đọc) | main Claude | trong `02_outline.md` |
| 4 | Viết từng chương, **commit + push sau mỗi chương** | main Claude | `u<NN>_*/` |
| 5 | Review tiếng Anh tự nhiên + tiếng Việt + vùng cấm | subagent (prompt ở dưới) | `_pipeline/05_review.md` |
| 6 | Nhất quán: nhân vật, timeline, độ khó tăng dần | `consistency-reviewer` | `_pipeline/06_consistency.md` |
| 7 | Hội đồng: ngôn ngữ học tiếng Anh, sư phạm, chuyên gia luyện thi VSTEP | 3 subagent song song | `_pipeline/07_council/*.md` |
| 8 | Hoàn thiện: áp dụng fix, build lại toàn bộ | main Claude | `_pipeline/08_revision_log.md` |

## Stage 4: quy trình MỘT chương

1. **Lấy dữ liệu unit:** từ, collocation, ngữ pháp của 4 phiếu; `reading_title` của app (không viết trùng).
2. **Viết JSON nguồn.** Cách nhanh: viết một script Python sinh JSON trong scratchpad, theo mẫu chương đã duyệt.
   - `meta`: `curriculum_unit`, `curriculum_sheets`, `characters`, `story_time`.
   - `lesson`: `practice_for`, `objective`, `vocab` (từ của unit, nghĩa lấy tự động từ khoá), `extra_words` (từ ngoài phạm vi, có nghĩa), `phrases_note`, `tips`.
   - **Mọi đoạn chữ là bản đồ ngôn ngữ `i18n {en, vi}`** (sau này thêm `ja`, `th`). Bảng trường ở mục 5 của kế hoạch. Nhãn mục không viết trong nội dung, vì script lấy từ `LABELS`.
   - `reading_passages[].segments`: mỗi phần tử `{n, para, kind, speaker, label, i18n}`. 1 segment = 1 câu; lượt thoại rất ngắn được để chung. `speaker` tách khỏi câu.
   - `questions[]`: `i18n`, 4 `choices[].i18n`, đúng 1 đáp án; `evidence_segments`; `explanation_i18n` có trích câu tiếng Anh trong ngoặc kép; đáp án rải đều A–D.
3. **Chạy 3 lệnh, lặp tới khi sạch:**
   ```bash
   python3 _shared/scripts/build_en_reading.py <json>          # sinh md + kiểm cấu trúc
   python3 _shared/scripts/check_cefr_level.py <json>          # vốn từ + ngữ pháp chưa học
   python3 .claude/skills/study-course-questions-builder/scripts/validate_json.py <json>
   ```
   - NGOÀI PHẠM VI phải = 0: thay từ, hoặc đưa vào `extra_words`. A1–A2 tối đa ~5 từ chú nghĩa mỗi chương.
   - ⚠️ NGỮ PHÁP CHƯA HỌC: đọc lại từng câu. Chỉ giữ khi là cụm cố định học viên đã gặp; còn lại thì viết lại.
   - Độ phủ từ của unit ≥ 50%.
4. **Tự soát nội dung:**
   - nhân vật đúng tuổi, nghề, tính cách ở cấp này (`characters.md`);
   - không mâu thuẫn timeline;
   - không vùng cấm (mục 7a kế hoạch);
   - không tên Việt;
   - độ khó không thấp hơn chương trước (so số từ và TB từ/câu với chương trước, ghi vào `_pipeline/difficulty.md`).
5. **Sự kiện mới** (nhân vật mới, đổi việc, chuyển nhà…) thì ghi vào mục "Nhật ký sự kiện" trong `characters.md`.
6. **Cập nhật state:** `chapters_done += [code]`.
7. **Commit + push ngay:** `Sách 56 english_a1: viết chương u01 Hello!`. Chỉ add folder chương, `_pipeline/`, và `characters.md` nếu có sửa.

## Tỉ lệ loại văn bản theo cấp

| Cấp | Văn bản về dàn nhân vật | Văn bản kiến thức / chức năng |
|---|---|---|
| A1–A2 | ~70%: tin nhắn, lời nhắn, email, nhật ký, thiệp, bài kể | ~30%: biển báo, thông báo, thực đơn, quảng cáo, form, thời khoá biểu, bài giới thiệu ngắn |
| B1 | ~50% | ~50%: bài báo, bài giới thiệu, review, bài blog |
| B2–C1 | ~30% | ~70%: báo cáo khoa học phổ thông, kiến thức xã hội, công nghệ, bài nêu quan điểm, đề VSTEP |

Người học là "you" (hàng xóm mới ở Maple Street). Văn bản có thể viết gửi thẳng cho "you".

## Prompt mẫu cho subagent review (stage 5)

```
Bạn là biên tập viên tiếng Anh (native-level) kiêm giáo viên luyện thi VSTEP, rà sách <NN> "<tên>" cấp <cấp>.
CHỈ BÁO CÁO, KHÔNG SỬA. Ghi báo cáo ra books/<book>/_pipeline/05_review.md.
Đối tượng: các file u*/*_BaiTap.json (segments[].i18n, questions[].i18n, choices[].i18n, explanation_i18n). File md là bản sinh, không cần đọc.
Trục rà:
 (1) tiếng Anh tự nhiên, đúng ngữ pháp, đúng giọng Mỹ;
 (2) đáp án đúng duy nhất, phương án nhiễu hợp lý, giải thích khớp đáp án;
 (3) bản dịch tiếng Việt sát nghĩa, tự nhiên;
 (4) nhân vật khớp _shared/en_curriculum/characters.md (tuổi/nghề/tính cách theo cấp);
 (5) VÙNG CẤM: hệ tư tưởng, chế độ chính trị, chính đảng, bầu cử, chiến tranh, tranh luận tôn giáo;
 (6) không khái quát hoá dân tộc ("người Mỹ thường…").
Mỗi phát hiện: file + id segment/câu hỏi + trích nguyên văn + vấn đề + đề xuất.
Chương sạch thì nói sạch, không bịa lỗi. Cuối báo cáo: danh sách CẤM SỬA.
```

## Anti-patterns

- ❌ Sửa tay file `_DocHieu.md`. Nó bị ghi đè ở lần build sau.
- ❌ Dùng tên ngoài dàn nhân vật cho vai đã có (ví dụ đặt tên khác cho bố nhà Carter). Người lạ thì được đặt tên Mỹ mới.
- ❌ Bài kiến thức dạng liệt kê khô. Phải có cấu trúc văn bản thật (tiêu đề, đoạn, ý chính).
- ❌ Gom nhiều chương vào một commit.
