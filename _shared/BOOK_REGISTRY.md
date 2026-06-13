# Hizashi Book ID Registry

> File này là **source of truth** quản lý book_seq và schema ID cho mọi sách trong `Hizashi_book/books/`.
> Cập nhật mỗi khi cấp book_seq mới hoặc khi hoàn thành stamp/seed một sách.
>
> **Schema chốt ngày 2026-05-16** — thay thế toàn bộ convention cũ.

---

## 1. Convention book_seq

- **book_seq**: số thứ tự sách, bắt đầu từ `1`. Không zero-pad khi nói tới (sách 1, sách 27, sách 100).
- **1 sách = 1 book_seq duy nhất**, không tái sử dụng dù sách bị xoá.
- Sách team Hizashi tự viết dùng book_seq tuần tự. Sách user upload (tương lai) dùng cơ chế ID riêng — KHÔNG thuộc registry này.

---

## 2. Schema ID

### 2.1 book_id (bảng `curricula`) — 9 digit tuần tự

```
book_id = 800000000 + book_seq
```

| Sách | book_id |
|---|---|
| 1 | `800000001` |
| 27 (RC) | `800000027` |
| 100 | `800000100` |

### 2.2 Bảng phụ thuộc — `8` + định danh + seq, tổng 9 digit

Áp dụng cho: `reading_passages`, `question_sets` / `study_question_sets`, `questions`,
`examples`, `curriculum_node`, `curriculum_node_content`, `study_courses`, `study_modules`.

Công thức:
```python
def make_id(book_seq: int, seq: int) -> int:
    bs = str(book_seq)
    # Reverse CHỈ khi book_seq là số tròn chục/trăm/nghìn (10, 100, 1000...)
    is_round = len(bs) > 1 and bs[0] != '0' and set(bs[1:]) <= {'0'}
    ident = bs[::-1] if is_round else bs
    seq_len = 9 - 1 - len(ident)            # độ dài seq, pad zero
    return int("8" + ident + str(seq).zfill(seq_len))
```

| Sách | book_seq | Tròn? | ident | seq digits | Entity seq=1 | Cap/bảng/sách |
|---|---|---|---|---|---|---|
| 1 | `1` | không | `1` | 7 | `810000001` | 9,999,999 |
| 9 | `9` | không | `9` | 7 | `890000001` | 9,999,999 |
| 10 | `10` | **CÓ** | `01` | 6 | `801000001` | 999,999 |
| 11 | `11` | không | `11` | 6 | `811000001` | 999,999 |
| 27 (RC) | `27` | không | `27` | 6 | `827000001` | 999,999 |
| 100 | `100` | **CÓ** | `001` | 5 | `800100001` | 99,999 |

**Lý do reverse số tròn chục**: để sách `1` (prefix `81`) và sách `10` (prefix `801`) không
tạo prefix lồng nhau gây nhầm. Số không tròn (11, 27, 99) giữ nguyên.

### 2.3 questions_answers — bám question_id

```
answer_id = int(str(question_id) + str(ans_seq))   # ans_seq 1 digit (1..9)
```

VD: question `827000001` → 4 đáp án: `8270000011`, `8270000012`, `8270000013`, `8270000014`.
→ 10 digit > INT32 → bảng `questions_answers` dùng **BIGINT** (đã migrate).

### 2.4 Lưu ý kỹ thuật

- ID bảng phụ thuộc ≤ 9 digit = max `899,999,999` < INT32 `2,147,483,647` → fit INT32.
- `questions_answers` 10 digit → cần BIGINT. Đã migrate cùng `examples`, `curriculum_node_content`
  (migration `d48db8c8d2bf`). Giữ BIGINT cho 3 bảng này (harmless dù schema mới ≤ 9 digit ở 2 bảng kia).
- **Collision lý thuyết**: sách ≥100 có >100k entity có thể chồng range sách nhỏ. Thực tế
  1 sách max ~12k entity (RC: 11,742 examples) → vùng an toàn tuyệt đối. Chấp nhận theo
  quyết định team (2026-05-16): không sách nào lớn tới mức đó.
- ID các bảng khác nhau CÓ THỂ trùng số (vd node `827000001` và passage `827000001`) —
  không sao vì PK chỉ unique trong từng bảng. Liên kết sách ↔ entity qua FK, không qua ID.
- Filter toàn bộ entity 1 sách: range `make_id(book_seq, 1) .. make_id(book_seq, CAP)` per bảng.

### 2.5 Cột `context` JSONB

Migration `d48db8c8d2bf` đã thêm cột `context jsonb` (nullable) cho:
`questions`, `questions_answers`, `question_sets`, `examples`, `curricula`, `curriculum_node`.
`reading_passages` đã có sẵn `context`. Dùng để lưu metadata mở rộng (vd: process chunks,
title_vi, vocabulary, tags...). KHÔNG dùng tên `metadata` (đụng SQLAlchemy reserved).

---

## 3. Allocated book_seq

> Trạng thái phản ánh DB local. Production đồng bộ sau.

| book_seq | Tên sách | Folder | Status | Ghi chú |
|---|---|---|---|---|
**Quy tắc**: 1 folder = 1 book_seq theo STT folder. Sách song ngữ (vd 01_email VN+JP)
gộp về 1 row, dùng `curriculum_node.*_jp` cho nội dung JP và `curricula.context.title_jp`
cho tên JP. KHÔNG tách thành 2 book_seq.

| book_seq | Folder | Tên sách | Status | Ghi chú |
|---|---|---|---|---|
| 1 | `01_email` | Email Công Việc (song ngữ VN+JP) | READY TO SEED | Data cũ đã xoá (2026-05-21). Reseed gộp 1 row dùng `_jp` field + `context.title_jp` |
| 2 | `02_phone` | Điện thoại Công Việc | READY TO SEED | Data cũ đã xoá |
| 3 | `03_meeting` | Họp | READY TO SEED | Data cũ đã xoá |
| 4 | `04_horenso` | Báo · Liên · Tham vấn | READY TO SEED | Data cũ đã xoá |
| 5 | `05_presentation` | Thuyết trình | READY TO SEED | Data cũ đã xoá |
| 6 | `06_negotiation` | Đàm phán · Đề xuất | READY TO SEED | Data cũ đã xoá |
| 7 | `07_visit_card` | Tiếp khách · Thăm · Danh thiếp | READY TO SEED | Data cũ đã xoá |
| 8 | `08_smalltalk` | Trò chuyện thân thiết | READY TO SEED | Data cũ đã xoá |
| 9 | `09_real_dialogues` | Hội thoại thực tế | DRAFT | Chưa seed DB |
| 10 | `10_business_japanese` | Business Japanese — Kính ngữ (course + lý thuyết) | READY TO SEED | Data cũ đã xoá. Reseed gộp course/curriculum/modules vào book_seq=10 dùng chung make_id(10, ...) |
| 11 | `11_jisshusei_shokuhin` | Một Năm của Hoa Y1 (Jisshusei Shokuhin) | READY TO SEED | Data cũ đã xoá |
| 12 | `12_hoa_year2` | Một Năm của Hoa Y2 | DRAFT | Chưa seed |
| 13 | `13_hoa_year3` | Một Năm của Hoa Y3 | DRAFT | Chưa seed |
| 14 | `14_thai_year1` | Thái Y1 | DRAFT | Chưa seed |
| 15 | `15_thai_year2` | Thái Y2 | DRAFT | Chưa seed |
| 16 | `16_thai_year3` | Thái Y3 | DRAFT | Chưa seed |
| 17 | `17_thai_year4` | Thái Y4 | DRAFT | Chưa seed |
| 18 | `18_thai_year5` | Thái Y5 | DRAFT | Chưa seed |
| 19 | `19_dai_year1` | Đại Y1 | DRAFT | Chưa seed |
| 20 | `20_dai_year2` | Đại Y2 | DRAFT | Chưa seed |
| 21 | `21_dai_daigaku_year1` | Đại học Y1 | DRAFT | Chưa seed |
| 22 | `22_dai_daigaku_year2` | Đại học Y2 | DRAFT | Chưa seed |
| 23 | `23_dai_daigaku_year3` | Đại học Y3 | DRAFT | Chưa seed |
| 24 | `24_dai_daigaku_year4` | Đại học Y4 | DRAFT | Chưa seed |
| 25 | `25_dai_brse_year1` | BrSE Y1 | DRAFT | Chưa seed |
| 26 | `26_dai_brse_year2` | BrSE Y2 | DRAFT | Chưa seed |
| 27 | `27_kaigo` | Kaigo (Điều dưỡng) Y1 | DRAFT | Chưa seed |
| 28 | `28_kaigo_year2` | Kaigo Y2 | DRAFT | Chưa seed |
| 29 | `29_kaigo_year3` | Kaigo Y3 | DRAFT | Chưa seed |
| 30 | `30_kaigo_senior1` | Kaigo Senior 1 | DRAFT | Chưa seed |
| 31 | `31_kaigo_senior2` | Kaigo Senior 2 | DRAFT | Chưa seed |
| 32 | `32_kaigo_senior3` | Kaigo Senior 3 | DRAFT | Chưa seed |
| 33 | `33_thuc_kensetsu1` | Thực Kensetsu 1 | DRAFT | Chưa seed |
| 34 | `34_thuc_kensetsu2` | Thực Kensetsu 2 | DRAFT | Chưa seed |
| 35 | `35_thuc_kensetsu3` | Thực Kensetsu 3 | DRAFT | Chưa seed |
| 36 | `36_thuc_kensetsu_senior1` | Thực Kensetsu Senior 1 | DRAFT | Chưa seed |
| 37 | `37_thuc_kensetsu_senior2` | Thực Kensetsu Senior 2 | DRAFT | Chưa seed |
| 38 | `38_thuc_kensetsu_senior3` | Thực Kensetsu Senior 3 | DRAFT | Chưa seed |
| 39 | `39_reading_collection` | **Reading Collection (700 bài luyện đọc N5→Native)** | **STAMP PENDING** | 700 passages, 2680 Q, 10720 A, 11742 examples. JSON đã stamp schema cũ — cần RE-STAMP theo schema mới (book_seq=39) |
| 40 | `40_nong_year1` | Linh Y1 — TTS Nông nghiệp năm 1 (Ibaraki) | DRAFT | 12 chương, ~46 vocab/chương |
| 41 | `41_nong_year2` | Linh Y2 — Nông nghiệp năm 2 (sempai-of-sempai + JAS) | DRAFT | 12 chương |
| 42 | `42_nong_year3` | Linh Y3 — Nông nghiệp năm 3 (SSW1 + xuất khẩu) | DRAFT | 12 chương |
| 43 | `43_oto_year1` | Phong Y1 — TTS Ô tô năm 1 (Toyota Anjo Aichi) | DRAFT | 12 chương |
| 44 | `44_oto_year2` | Phong Y2 — Ô tô năm 2 (車検 + chẩn đoán) | DRAFT | 12 chương |
| 45 | `45_oto_year3` | Phong Y3 — Ô tô năm 3 (SSW1 + 整備士 2級) | DRAFT | 12 chương |
| 46 | `46_hotel_year1` | Trang Y1 — TTS Khách sạn năm 1 (ryokan Kyoto) | DRAFT | 12 chương |
| 47 | `47_hotel_year2` | Trang Y2 — Khách sạn năm 2 (高級宿 + inbound) | DRAFT | 12 chương |
| 48 | `48_hotel_year3` | Trang Y3 — Khách sạn năm 3 (SSW1 + 副仲居頭) | DRAFT | 12 chương |

Status: `DRAFT` (có source, chưa seed) · `STAMP PENDING` (cần stamp JSON) · `STAMPED` (JSON có DB IDs) ·
`READY TO SEED` (data legacy đã xoá, chờ seed schema mới) · `SEEDED` (đã vào DB local) ·
`DEPLOYED` (production) · `LEGACY → reseed` (DB cũ schema cũ, sẽ xoá + seed lại)

---

## 4. Blacklist — vùng ID đã chiếm bởi data KHÔNG thuộc Hizashi_book (KHÔNG động)

| Range | Bảng | n | Mô tả |
|---|---|---|---|
| `reading_passages.id` 1-107 | reading_passages | 102 | Test/EJU/JLPT 2011 nhập tay. GIỮ NGUYÊN, không liên quan reading_book |
| `reading_passages.id` 30030xxx | reading_passages | 366 | reading_practice cũ |
| `reading_passages.id` 81100xxx | reading_passages | 60 | notice cũ (8 digit — không đụng schema mới 9 digit) |
| `reading_passages.id` 712M-753M | reading_passages | 367 | JLPT exam mondai (schema `7{level}{section}{mondai}{seq:05d}`) |
| `questions.id` 911M-954M | questions | 22,809 | JLPT exam questions |
| `questions_answers.id` 211M-245M | questions_answers | 23,263 | JLPT exam answers |

→ Schema mới dùng 9-digit prefix `8` (`810000001..899999999`). Đã verify 0 collision với mọi
range trên (data cũ đều ≤ 8 digit hoặc khác prefix).

---

## 5. Quy trình cấp book_seq mới

1. Pick book_seq tiếp theo chưa dùng (xem bảng mục 3).
2. Update bảng "Allocated" → thêm/đổi row, status `DRAFT`.
3. Tạo/copy stamp script `books/<folder>/_scripts/stamp_db_ids.py`, set `BOOK_SEQ`.
4. Chạy stamp in-place trên JSON nội dung → status `STAMPED`.
5. Verify ID unique, đúng công thức, không gap.
6. Build SQL → seed DB local → status `SEEDED`.
7. Deploy production → status `DEPLOYED`.

Mọi bước cập nhật lại file này.

---

## 6. Tiện ích chung

- Hàm chuẩn: `_shared/scripts/book_id_utils.py` — `make_book_id()`, `make_id()`, `make_answer_id()`.
  Mọi stamp script PHẢI import từ đây, không tự định nghĩa lại công thức.

---

## 7. Việc đang chờ (TODO)

- [x] **Xoá data cũ schema cũ** (2026-05-21): local 10 curricula + 463 node + 2 course + 4 module +
      37 sets + 1080 Q + 4320 A + 25 passage + junction; production 9 curricula + 458 node + 4 bookshelf + 1 note.
      Backup: `/tmp/hizashi_backup/local_20260521_171809.sql` + `~/db_backup/prod_20260521_081831.sql`.
- [ ] Re-stamp `39_reading_collection` (book_seq=**39**) theo công thức mới.
- [ ] Build SQL seed cho RC + verify trên DB local.
- [ ] Seed lại 8001-8016 theo schema mới (sách song ngữ 01_email gộp 1 row với title_jp trong context).
- [ ] Đồng bộ production sau khi local ổn.

---

**Last updated**: 2026-05-21 — đã xoá data legacy 8001-8016 trên local + production. Sẵn sàng reseed
theo schema mới `8{ident}{seq}` 9-digit. Mapping book_seq theo STT folder (01_email=1, 39_reading_collection=39).
