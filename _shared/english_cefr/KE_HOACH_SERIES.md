# Kế hoạch series sách đọc hiểu tiếng Anh A1 → C2 (luyện VSTEP)

> Bản nháp 03/11/2026, chờ chủ nhà duyệt. Bài mẫu thử: `books/56_english_a1/_mau_thu/t01_my_family/`.

## 1. Phạm vi

| Sách | Folder | course_id | Cấp | Khung đề |
|---|---|---|---|---|
| 56 | `56_english_a1` | 8056 | A1 (bậc 1) | VSTEP không có đề bậc 1, nên dùng dạng bài ngắn theo mô tả CEFR A1 |
| 57 | `57_english_a2` | 8057 | A2 (bậc 2) | Đề VSTEP A2 có cấu trúc riêng, khác B1–C1. Stage 1 phải tìm đề mẫu chính thức để chốt |
| 58 | `58_english_b1` | 8058 | B1 (bậc 3) | VSTEP.3-5 |
| 59 | `59_english_b2` | 8059 | B2 (bậc 4) | VSTEP.3-5 |
| 60 | `60_english_c1` | 8060 | C1 (bậc 5) | VSTEP.3-5 |
| 61 | `61_english_c2` | 8061 | C2 (bậc 6) | VSTEP.3-5 chỉ đánh giá tới bậc 5, nên C2 bám mô tả CEFR C2 |

**Phần Reading của VSTEP.3-5** (theo trang chính thức của ĐHQG HN): 60 phút, 4 bài đọc, 40 câu trắc nghiệm 4 lựa chọn (mỗi bài 10 câu). Tổng khoảng 2.000 từ, độ khó tăng dần từ bậc 3 lên bậc 5.

## 2. Thông số từng cấp (đề xuất)

| Cấp | Độ dài 1 bài đọc | Loại văn bản | Dạng câu hỏi chính |
|---|---|---|---|
| A1 | 40–120 từ | biển báo, lời nhắn, email ngắn, đoạn tả | tìm thông tin cụ thể, mục đích đơn giản |
| A2 | 100–200 từ | email, quảng cáo, thông báo, đoạn kể | thông tin cụ thể, ý chính, từ thay thế (it/they) |
| B1 | 250–350 từ | bài báo ngắn, thư, bài giới thiệu | ý chính, chi tiết, từ trong ngữ cảnh, quy chiếu, NOT/EXCEPT |
| B2 | 350–450 từ | bài báo, bài khoa học phổ thông | thêm: suy luận, mục đích đoạn, thái độ tác giả |
| C1 | 450–550 từ | bài học thuật, bình luận | thêm: hàm ý, cấu trúc lập luận, tóm tắt |
| C2 | 550–700 từ | học thuật, văn chính luận, văn chương | hàm ý tinh tế, giọng điệu, so sánh quan điểm |

## 3. Kiểm soát độ khó từ vựng

- Danh sách: **CEFR-J Wordlist 1.5** (A1–B2, 7.799 mục) và **Octanove C1/C2** (2.136 mục). Lưu ở `_shared/english_cefr/`, dùng thương mại được nhưng phải ghi nguồn (xem README).
- Script: `python3 _shared/scripts/check_cefr_level.py --level <cấp> --allow "<tên riêng>" <file.json|file.md>`. Script soát bài đọc, câu hỏi và các phương án.
- Quy tắc:
  - **A1–A2:** 0 từ vượt cấp.
  - **B1 trở lên:** tối đa ~3% từ vượt cấp. Từ vượt cấp phải nằm trong bảng từ vựng của bài, hoặc đoán được từ ngữ cảnh (đó chính là dạng câu hỏi "từ trong ngữ cảnh").
- Ngữ pháp: CEFR-J Grammar Profile (A1–B2), dùng làm tham chiếu khi viết bài.

## 4. Cấu trúc mỗi cuốn

**9 chương/cuốn.** Lý do: ID theo NEW format chỉ có **1 chữ số cho topic**, nên một cuốn tối đa 9 chương.

- Chương 1–8: theo chủ đề. Mỗi chương có 2–4 bài đọc với 10 câu (A1–A2) hoặc 20 câu (B1+).
- Chương 9: đề thi thử full format.

Gợi ý chủ đề A1:

| # | Chủ đề |
|---|---|
| 1 | Gia đình & bản thân |
| 2 | Nhà cửa & sinh hoạt hằng ngày |
| 3 | Trường học & công việc |
| 4 | Ăn uống |
| 5 | Mua sắm & giá cả |
| 6 | Thời gian & thời tiết |
| 7 | Sở thích & cuối tuần |
| 8 | Thành phố & đi lại |
| 9 | Đề thi thử |

**Mỗi chương gồm 2 file:**

- `t0N_<Ten>_DocHieu.md`, theo thứ tự:
  1. mục tiêu
  2. từ vựng trước khi đọc
  3. bài đọc
  4. **dịch từng câu**
  5. câu hỏi **có dịch** (câu hỏi + từng phương án)
  6. mẹo làm bài
  7. đáp án + **giải thích ngắn chỉ rõ câu nào trong bài**
- `t0N_<Ten>_BaiTap.json`: cùng nội dung, theo schema chung (pass `validate_json.py`). Chương thi thử thì đặt tên `_Mogishiken.json`.

## 5. JSON: giữ nguyên schema chung

| Khoá | Chứa gì (sách tiếng Anh) |
|---|---|
| `reading_passages[].content_ja` | bài đọc **tiếng Anh** |
| `reading_passages[].translation_vn` | dịch từng câu, đánh số `(1) … (2) …` khớp bảng trong md |
| `questions[].question_jp` / `question_vn` | câu hỏi tiếng Anh / dịch |
| `choices[].text` / `text_translation` | phương án tiếng Anh / dịch |
| `explanation`, `tip` | giải thích tiếng Việt |
| `level`, `jlpt_level` | `"A1"` … `"C2"` |
| `skill_category` | `"dokkai"` |
| `meta.language`, `meta.cefr_level` | `"en"`, `"A1"`: khoá mới, để app phân biệt ngôn ngữ |

ID theo NEW format, ví dụ câu 1 chương 1 sách A1 = `80561001`.

## 6. Pipeline (sẽ lập skill riêng sau khi bài mẫu được duyệt)

Gốc là pipeline LITE, thêm phần JSON, thay phần soát tiếng Nhật bằng soát tiếng Anh:

| # | Stage | Ai làm |
|---|---|---|
| 1 | Research: format đề từng cấp, chủ đề, dạng câu hỏi | subagent `book-researcher` |
| 2 | Outline 9 chương | main Claude |
| 3 | Draft: mỗi chương có bài đọc gì, câu hỏi dạng gì | main Claude |
| 4 | Viết md + JSON từng chương. **Commit + push sau mỗi chương** | main Claude |
| 5 | Soát cấp độ bằng script + review tiếng Anh / tiếng Việt | script + subagent |
| 6 | Nhất quán giữa các chương | `consistency-reviewer` |
| 7 | Hội đồng: ngôn ngữ học tiếng Anh, sư phạm, chuyên gia luyện thi VSTEP | 3 subagent song song |
| 8 | Hoàn thiện + build SQL | main Claude |

Các subagent hiện có được viết cho tiếng Nhật. Khi tạo skill sẽ viết lại prompt cho tiếng Anh.

## 7. Nguyên tắc nội dung

- **Bài đọc và câu hỏi tự viết mới**, đúng format và độ khó. Không chép đề thật (Cambridge, IELTS, đề VSTEP đã công bố) vì vướng bản quyền.
- **Phương án nhiễu** lấy từ chính bài đọc (số/tên/nơi chốn của người khác, giới từ gần nghĩa). Đáp án đúng rải đều A–D.
- **Luật số một của dự án** vẫn áp dụng: văn dạy học không viết "người Việt thường…" / "người Anh hay…".
- Không box-drawing, bảng markdown chuẩn, ô bảng ≤ 200 ký tự.

## 8. Cần chủ nhà chốt

1. Format bài mẫu A1 (md + JSON) đã ổn chưa?
2. Tên folder `5N_english_<cấp>` và số chương 9/cuốn?
3. `translation_vn` dịch từng câu có đánh số: app hiển thị như vậy được không?
4. Tiếng Anh nằm trong khoá `content_ja` / `question_jp` (giữ nguyên schema): có chấp nhận được không, hay app mới sẽ đổi tên khoá?
