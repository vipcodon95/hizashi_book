# Hizashi Book ID Registry

> File này là **source of truth** quản lý book_code và schema ID cho mọi sách trong `Hizashi_book/books/`.
> Cập nhật mỗi khi cấp book_code mới hoặc khi hoàn thành stamp/seed một sách.

---

## 1. Convention book_code

- **Phạm vi**: 4 chữ số, `0001`-`9999`
- **Dải khuyến nghị**: `8001`-`8999` cho sách team Hizashi tự viết
- **Dải dự phòng tương lai**:
  - `1000`-`7999`: chưa sử dụng
  - `9000`-`9999`: dự kiến cho sách user upload (schema riêng, áp dụng sau)
- **Quy tắc**: 1 sách = 1 book_code duy nhất, không tái sử dụng dù sách bị xoá.

---

## 2. Schema ID 5 bảng (chung cho mọi sách)

Format: `{book_code:4d}{kind:1d}{seq:variable}`

| kind | Bảng DB | seq | Tổng digit | Cap/sách | Ví dụ (book_code=8027) |
|------|---|---|---|---|---|
| `0` | `reading_passages` | `:04d` | 9 | 9,999 | `802700001` |
| `1` | `study_question_sets` | `:04d` | 9 | 9,999 | `802710001` |
| `2` | `questions` | `:04d` | 9 | 9,999 | `802720001` |
| `3` | `questions_answers` | `:06d` | 11 | 999,999 | `80273000001` |
| `4` | `examples` | `:06d` | 11 | 999,999 | `80274000001` |

**Ưu điểm**: ID luôn bắt đầu bằng `book_code` → `WHERE id::text LIKE '{book_code}%'` lấy toàn bộ data sách trên cả 5 bảng.

**seq tăng dần theo deterministic order** (xem stamp script mỗi sách để biết chi tiết, vd: theo R_xxxx ASC).

---

## 3. Allocated book_codes

| book_code | Tên sách | Folder | Status | Stamp date | Ghi chú |
|---|---|---|---|---|---|
| 8001 | (chưa cấp) | `01_email` | TODO | — | BJT — Email |
| 8002 | (chưa cấp) | `02_phone` | TODO | — | BJT — Điện thoại |
| 8003 | (chưa cấp) | `03_meeting` | TODO | — | BJT — Họp |
| 8004 | (chưa cấp) | `04_horenso` | TODO | — | BJT — Hou-Ren-Sou |
| 8005 | (chưa cấp) | `05_presentation` | TODO | — | BJT — Thuyết trình |
| 8006 | (chưa cấp) | `06_negotiation` | TODO | — | BJT — Đàm phán |
| 8007 | (chưa cấp) | `07_visit_card` | TODO | — | BJT — Danh thiếp |
| 8008 | (chưa cấp) | `08_smalltalk` | TODO | — | BJT — Smalltalk |
| 8009 | (chưa cấp) | `09_real_dialogues` | TODO | — | Hội thoại thực tế |
| **8010** | **Business Japanese — Kính ngữ** | `10_business_japanese` | **LEGACY** | trước 2026 | ⚠️ 25 row format cũ `8010001..8010705` (7-digit), cần migrate sang `80100{seq:04d}` |
| **8011** | **Một Năm của Hoa Y1 (Jisshusei Shokuhin)** | `11_jisshusei_shokuhin` | LEGACY | trước 2026 | Cần verify schema cũ |
| 8012 | (chưa cấp) | `12_hoa_year2` | DRAFT | — | Một Năm của Hoa Y2 |
| 8013 | (chưa cấp) | `13_hoa_year3` | DRAFT | — | Một Năm của Hoa Y3 |
| 8014 | (chưa cấp) | `14_thai_year1` | DRAFT | — | Thái Y1 |
| 8015 | (chưa cấp) | `15_thai_year2` | DRAFT | — | Thái Y2 |
| 8016 | (chưa cấp) | `16_thai_year3` | DRAFT | — | Thái Y3 |
| 8017 | (chưa cấp) | `17_thai_year4` | DRAFT | — | Thái Y4 |
| 8018 | (chưa cấp) | `18_thai_year5` | DRAFT | — | Thái Y5 |
| 8019 | (chưa cấp) | `19_dai_year1` | DRAFT | — | Đại Y1 |
| 8020 | (chưa cấp) | `20_dai_year2` | DRAFT | — | Đại Y2 |
| 8021 | (chưa cấp) | `21_dai_daigaku_year1` | DRAFT | — | Đại học Y1 |
| 8022 | (chưa cấp) | `22_dai_daigaku_year2` | DRAFT | — | Đại học Y2 |
| 8023 | (chưa cấp) | `23_dai_daigaku_year3` | DRAFT | — | Đại học Y3 |
| 8024 | (chưa cấp) | `24_dai_daigaku_year4` | DRAFT | — | Đại học Y4 |
| 8025 | (chưa cấp) | `25_dai_brse_year1` | DRAFT | — | BrSE Y1 |
| 8026 | (chưa cấp) | `26_dai_brse_year2` | DRAFT | — | BrSE Y2 |
| **8027** | **Reading Collection (700 bài luyện đọc N5→Native)** | `reading_collection` | ✅ **STAMPED** | 2026-05-11 | 700 passages, 2680 questions, 10720 answers, 11742 examples. Stamp script: `books/reading_collection/_scripts/stamp_db_ids.py`. SQL build chưa làm. |

Status legend:
- `TODO`: chưa cấp book_code, chưa có nội dung
- `DRAFT`: có nội dung trong folder nhưng chưa cấp ID
- `STAMPED`: đã chạy stamp script, JSON có DB IDs, chưa seed DB
- `SEEDED`: đã import vào DB local
- `DEPLOYED`: đã deploy production
- `LEGACY`: data đã có trong DB từ trước theo schema cũ, cần migrate

---

## 4. Blacklist — vùng ID đã chiếm bởi data khác (KHÔNG cấp book_code mới)

| Range ID | Bảng | n | Mô tả | Hành động |
|---|---|---|---|---|
| `reading_passages.id` 1-107 | `reading_passages` | 102 | Test/EJU/JLPT 2011 nhập tay, `is_system=false` | Giữ nguyên, không cleanup |
| `reading_passages.id` 8010001-8010705 | `reading_passages` | 25 | BJT format cũ 7-digit | Migrate sau (book_code 8010 sẽ tái sử dụng với schema mới) |
| `reading_passages.id` 81100501-81109005 | `reading_passages` | 60 | Notice cũ | Giữ nguyên, blacklist book_code 8110 |
| `reading_passages.id` 30030001-30030366 | `reading_passages` | 366 | reading_practice cũ | Blacklist book_code 3003 |
| `reading_passages.id` 712M-753M | `reading_passages` | 367 | JLPT exam mondai (schema khác: `7{level}{section}{mondai}{seq:05d}`) | Không thuộc Hizashi_book, giữ riêng |
| `questions.id` 911M-954M | `questions` | 22,809 | JLPT exam questions (schema `9{level}{section}{mondai}{seq:05d}`) | Không thuộc Hizashi_book |

**Blacklisted book_codes** (KHÔNG cấp lại):
- `3003` — đụng range `30030xxx` của reading_practice cũ
- `8110` — đụng range `81100xxx` của notice cũ

---

## 5. Quy trình cấp book_code mới

1. **Pick book_code chưa được dùng** → xem bảng "Allocated" + "Blacklist" trong file này.
2. **Update bảng "Allocated"** → đổi row từ `TODO`/`DRAFT` sang assigned book_code, ghi tên sách + folder.
3. **Tạo stamp script** trong `books/<book_name>/_scripts/stamp_db_ids.py` (copy mẫu từ `books/reading_collection/_scripts/stamp_db_ids.py`).
4. **Chạy stamp** in-place trên file JSON nội dung → đổi status sang `STAMPED`, ghi `stamp date`.
5. **Verify**: ID unique, continuous, không gap, tất cả bắt đầu bằng `book_code`.
6. **Build SQL** từ JSON đã stamp → seed DB local → đổi status sang `SEEDED`.
7. **Deploy** → đổi status sang `DEPLOYED`.

Tất cả 7 bước phải được phản ánh lại trong file registry này.

---

## 6. Stamp script template

Xem `books/reading_collection/_scripts/stamp_db_ids.py` làm mẫu. Các thông số cần chỉnh:
- `BOOK_CODE` — book_code của sách (vd `8027`)
- `DRAFT_DIRS` — danh sách thư mục chứa JSON nội dung
- `r_xxxx_num()` — hàm extract seq từ ID logic của sách (vd `R_0641` → `641`)
- Deterministic order khi assign question/answer/example seq

---

## 7. Câu hỏi mở (chờ xử lý)

- [ ] Migrate 25 row BJT từ format cũ `8010001..8010705` (7-digit) sang `80100001..80100025` (8-digit) — verify FK ở `question_sets`, `question_set_questions`, `examples`. (Đã check: cả 3 bảng đều 0 ref → migrate dễ.)
- [ ] Quyết định có cleanup 102 row legacy test data `<1k` không. Hiện có 31 sets + 53 qsq ref → không xoá trực tiếp được.
- [ ] Cấp book_code chính thức cho 8001-8026 (hiện đa số mới TODO/DRAFT).
- [ ] Verify schema sách 8011 (Hoa Y1) hiện đang dùng convention nào — cần migrate hay không.

---

**Last updated**: 2026-05-11 — cập nhật sau khi stamp xong reading_collection (book 8027) với schema mới `{book_code}{kind}{seq}`.
