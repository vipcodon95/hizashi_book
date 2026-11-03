# Kế hoạch series sách đọc hiểu tiếng Anh A1 → C1 (bám khoá Hizashi, luyện VSTEP)

> Bản 3, 03/11/2026. Đã chốt các mục 1–2; mục 8 là việc còn mở.
>
> Chương đầu tiên đã viết: `books/56_english_a1/u01_hello/`.
>
> **Nguyên liệu chính:** `_shared/en_curriculum/` (danh sách phiếu của khoá tiếng Anh trên app).

## 1. Nguyên tắc gốc (chốt với chủ nhà 03/11/2026)

- **1 chương sách = 1 unit của khoá học.** Mỗi unit có 4 phiếu, mỗi phiếu khoảng 15 từ.
- **Vốn từ lấy từ khoá học, không tự nghĩ.** Từ vựng trước khi đọc và nghĩa tiếng Việt lấy nguyên từ `en_curriculum`.
- **Văn phải tự nhiên.** Thêm vài từ ngoài phạm vi cũng được nếu nó giúp câu văn tự nhiên, miễn các thành phần chính nằm trong vốn từ. Từ ngoài phạm vi phải có chú nghĩa tiếng Việt.
- **Mỗi bài đọc ghi mã unit và mã phiếu** nó luyện, để sau này nhập ngược vào app.
- **Không viết trùng bài đọc app đã có.** Mỗi unit trên app đã có một bài đọc ở phiếu cuối (`reading_title`). Sách phải chọn loại văn bản và tình huống khác.
- **Mỗi cấp 1 cuốn**, số chương = số unit, không giới hạn số chương.
- **Dùng đúng dàn nhân vật `_shared/en_curriculum/characters.md`** (nhà Carter và nhà Brooks ở Maple Street, San Diego), đúng tuổi, nghề, tính cách theo từng cấp. Địa danh lấy theo bảng trong `en_curriculum/README.md`. Người lạ xuất hiện một lần thì đặt tên Mỹ khác. Không dùng tên Việt (TTS đọc sai).
- **Không phải bài nào cũng là chuyện của dàn nhân vật.** Bài báo, báo cáo khoa học, kiến thức xã hội, thông báo, quảng cáo và đề thi thử theo format VSTEP vẫn phải có đủ.
- **Dữ liệu phải tách được tiếng Anh / bản dịch theo từng câu**, để app hiển thị bài tập, song ngữ và **shadowing từng dòng** (xem mục 5).

## 2. Phạm vi

Khoá học hiện có **A1–C1** (chưa có C2):

| Sách | Folder | Cấp | Unit nội dung | Unit kiểm tra cuối cấp | Khung đề |
|---|---|---|---|---|---|
| 56 | `56_english_a1` | A1 | 16 | không có | dạng bài ngắn theo CEFR A1 (VSTEP không có bậc 1) |
| 57 | `57_english_a2` | A2 | 20 | không có | VSTEP A2 có cấu trúc riêng; stage 1 phải tìm đề mẫu chính thức để chốt |
| 58 | `58_english_b1` | B1 | 40 | `b1.test` | VSTEP.3-5 |
| 59 | `59_english_b2` | B2 | 45 | `b2.test` | VSTEP.3-5 |
| 60 | `60_english_c1` | C1 | 12 | `c1.test` | VSTEP.3-5 |

**Phần Reading của VSTEP.3-5:**

- 60 phút, 4 bài đọc, 40 câu trắc nghiệm 4 lựa chọn (mỗi bài 10 câu).
- Tổng khoảng 2.000 từ, độ khó tăng dần từ bậc 3 lên bậc 5.
- Unit kiểm tra cuối cấp của B1, B2, C1 sẽ thành **chương đề thi thử** đúng format này.

## 3. Kiểm soát vốn từ

Script: `python3 _shared/scripts/check_cefr_level.py --sheet <mã phiếu cuối unit> --allow "<tên riêng>" <file.md> <file.json>`

**Vốn từ được phép tới phiếu X** (theo `en_curriculum/README.md`):

- mọi từ, `grammar_words`, collocation, phrasal verb của các phiếu từ `a1.01` tới X (cộng dồn qua các cấp);
- cộng thêm từ thông dụng ở cấp dưới: từ B1 trở đi, script tính thêm từ CEFR-J của các cấp thấp hơn (nằm ở `_shared/english_cefr/`).

**Script báo hai thứ:**

1. **Từ ngoài phạm vi.** Thay bằng từ khác, hoặc giữ lại và chú nghĩa.
2. **Độ phủ từ của unit**, tức đã dùng bao nhiêu từ trong 4 phiếu. Bài mẫu Unit 3 dùng 35/61 từ. Mục tiêu đề xuất: ≥ 50%, và có câu hỏi kiểm tra trực tiếp vài từ trọng tâm.

## 4. Cấu trúc một chương

**File `u<NN>_<Ten>_DocHieu.md`**, theo thứ tự:

1. Luyện cho unit và phiếu nào; mục tiêu.
2. Từ vựng trước khi đọc, kèm mã phiếu của từng từ.
3. 2 bài đọc (A1–A2) hoặc 2–4 bài đọc (B1+), mỗi bài một loại văn bản khác nhau.
4. **Dịch từng câu** (bảng đánh số).
5. Câu hỏi **có dịch** (câu hỏi và từng phương án).
6. Mẹo làm bài.
7. Đáp án và **giải thích chỉ rõ câu số mấy trong bài**.

**File `u<NN>_<Ten>_BaiTap.json` là NGUỒN SỰ THẬT.** File md **sinh tự động** từ JSON:

```bash
python3 _shared/scripts/build_en_reading.py books/<sách>/<chương>/<...>_BaiTap.json
```

Script này sinh lại `content_ja`, `translation_vn`, `word_count` và file `_DocHieu.md`. Nó cũng kiểm tra:
- số câu liên tục, mỗi câu đủ `en` và `vi`;
- `evidence_segments` trỏ tới câu có thật;
- đoạn trích trong giải thích phải nằm đúng trong câu đó;
- mỗi câu hỏi có 4 lựa chọn và đúng 1 đáp án đúng.

**Không sửa tay file md.** Sau đó chạy thêm `validate_json.py` và `check_cefr_level.py --sheet`.

**Thông số theo cấp (đề xuất):**

| Cấp | Độ dài bài | Số câu hỏi/chương | Dạng câu hỏi chính |
|---|---|---|---|
| A1 | 40–120 từ | 10 | thông tin cụ thể, he/she/they chỉ ai, mục đích đơn giản |
| A2 | 100–200 từ | 10 | thêm: ý chính, từ thay thế |
| B1 | 250–350 từ | 20 | ý chính, chi tiết, từ trong ngữ cảnh, quy chiếu, NOT/EXCEPT |
| B2 | 350–450 từ | 20 | thêm: suy luận, mục đích đoạn, thái độ tác giả |
| C1 | 450–550 từ | 20 | thêm: hàm ý, cấu trúc lập luận |

## 5. JSON: giữ nguyên schema chung, thêm dữ liệu từng câu, đa ngôn ngữ

> **Chốt 03/11/2026:** sau này còn làm bản cho người Nhật, người Thái… Vì vậy **mọi đoạn chữ là một bản đồ ngôn ngữ**
> `i18n: {"en": …, "vi": …}`. Thêm ngôn ngữ mới thì chỉ thêm khoá (`"ja"`, `"th"`) vào cùng chỗ và khai báo trong
> `meta.languages`. Script build báo mọi chỗ còn thiếu bản dịch.
>
> Các nhãn mục ("Dịch từng câu", "Câu hỏi", "Đáp án & giải thích"…) **không viết trong nội dung**. Chúng nằm ở
> bảng `LABELS` trong `build_en_reading.py`. Mỗi ngôn ngữ sinh ra một file md: `_DocHieu.md` (vi), `_DocHieu.ja.md`…
>
> Nghĩa từ vựng lấy từ khoá học theo trường cùng tên ngôn ngữ (`words[].vi`, sau này `words[].ja`).

| Nơi | Trường nguồn |
|---|---|
| tiêu đề chương | `meta.title_i18n {en, vi}` |
| thời điểm truyện | `meta.story_time_i18n` |
| luyện cho / mục tiêu | `lesson.practice_for_i18n`, `lesson.objective_i18n` |
| từ ngoài bài học | `lesson.extra_words[] {word, i18n}` |
| cụm từ | `lesson.phrases[] {i18n: {en, vi}}` |
| mẹo | `lesson.tips[] {i18n}` |
| tiêu đề bài đọc | `reading_passages[].heading_i18n` |
| câu bài đọc | `segments[].i18n {en, vi}` |
| câu hỏi | `questions[].i18n {en, vi}` |
| phương án | `choices[].i18n {en, vi}` |
| giải thích / mẹo câu hỏi | `explanation_i18n`, `tip_i18n` |

Khoá cũ (`question_jp`, `question_vn`, `text`, `text_translation`, `explanation`, `content_ja`, `translation_vn`, `title_vn`) **do script sinh từ `en` / `vi`**, chỉ để app hiện tại chạy được. Không sửa tay.

**Bài đọc lưu thành `segments`.** Mỗi phần tử là **một dòng hiển thị / một dòng shadowing**:

```json
{"n": 4, "para": 3, "kind": "sentence", "speaker": null, "label": null,
 "i18n": {"en": "I live here on Maple Street, too.", "vi": "Tôi cũng sống ở đây, trên phố Maple."}}
```

| Trường | Ý nghĩa |
|---|---|
| `n` | số câu, liên tục 1..N. Giải thích và `evidence_segments` trỏ vào số này |
| `para` | số đoạn. Các câu cùng `para` + cùng `speaker` ghép thành 1 đoạn khi hiển thị liền |
| `kind` | `title` / `sentence` / `signature`. Khi shadowing, app có thể bỏ qua title và signature |
| `speaker` | người nói (hội thoại, tin nhắn). **Tách riêng khỏi `en`** để TTS không đọc tên người nói |
| `narrator` *(ở cấp bài đọc)* | giọng đọc các câu **không có** `speaker`: tên nhân vật viết bài (Tina viết nhật ký, Harriet viết lời nhắn…) hoặc `"announcer"` (thông báo, quảng cáo, bài kiến thức). Build bắt buộc phải có |
| `label` | nhãn đầu đoạn như `1.`, chỉ để hiển thị, TTS bỏ qua |
| `i18n` | `en` là câu gốc; `vi` (sau này `ja`, `th`…) là bản dịch |

**Quy tắc cắt câu:**
- 1 segment = 1 câu.
- Lượt thoại rất ngắn (≤ ~12 từ, ví dụ `Hi Emma! Is this…?`) được để chung một segment.
- Câu dài ở B2–C1 vẫn giữ nguyên 1 câu. Nếu app cần cắt nhỏ hơn cho shadowing thì sau này thêm trường `chunks`.

**Viết thân thiện với TTS:**
- không viết tắt lạ, không emoji trong `en`;
- số ở A1–A2 viết bằng chữ (`seven`, `eighty`);
- tên người và địa danh là tên tiếng Anh.

**Câu hỏi có `evidence_segments`** (ví dụ `[4, 5]`): đáp án nằm ở câu nào, để app tô sáng câu đó khi giải thích.

**Các khoá cũ vẫn giữ để tương thích:**

| Khoá | Chứa gì |
|---|---|
| `reading_passages[].content_ja` | bài đọc tiếng Anh ghép liền (script sinh từ segments) |
| `reading_passages[].translation_vn` | dịch từng câu `(1) … (2) …` (script sinh từ segments) |
| `reading_passages[].curriculum_sheets` | **mới:** mã phiếu bài đọc luyện |
| `questions[].question_jp` / `question_vn` | câu hỏi tiếng Anh / dịch |
| `choices[].text` / `text_translation` | phương án tiếng Anh / dịch |
| `explanation`, `tip` | giải thích tiếng Việt |
| `level`, `jlpt_level` | `"A1"` … `"C1"` |
| `meta.language`, `meta.cefr_level` | `"en"`, `"A1"` |
| `meta.curriculum_unit`, `meta.curriculum_sheets` | `"a1.u03"`, `["a1.09", …]` |

## 6. Pipeline (lập skill riêng sau khi bài mẫu được duyệt)

| # | Stage | Ai làm |
|---|---|---|
| 1 | Research: format đề A2 và VSTEP, liệt kê `reading_title` của app để tránh trùng | subagent |
| 2 | Outline: mỗi unit chọn 2 loại văn bản và tình huống | main Claude |
| 3 | Draft: mỗi chương bài đọc gì, câu hỏi dạng gì, từ trọng tâm nào | main Claude |
| 4 | Viết md + JSON từng chương, chạy script vốn từ. **Commit + push sau mỗi chương** | main Claude |
| 5 | Review tiếng Anh tự nhiên + tiếng Việt | subagent |
| 6 | Nhất quán giữa các chương (nhân vật, độ khó tăng dần) | subagent |
| 7 | Hội đồng: ngôn ngữ học tiếng Anh, sư phạm, chuyên gia luyện thi VSTEP | 3 subagent song song |
| 8 | Hoàn thiện | main Claude |

## 7b. Đây là SÁCH ÔN (chủ nhà chốt 03/11/2026)

> *"sách này là sách ôn, đa phần mọi người học xong khá nhiều rồi nên cứ thoải mái đi. Càng về sau bài càng dài, câu hỏi cũng khó lên một chút."*

- **Vốn từ được nới:**
  - từ ngoài phạm vi có chú nghĩa: tới khoảng 8 từ mỗi chương;
  - độ phủ từ của unit chỉ để tham khảo, không bắt buộc ≥ 50%;
  - ưu tiên văn tự nhiên.
- **Vốn từ máy soát** = từ khoá học cộng dồn + từ thông dụng CEFR-J **tới hết cấp hiện tại**. Script chỉ báo từ vượt cấp.
- **Vẫn giữ:** không dùng ngữ pháp của cấp SAU (script cảnh báo); đúng dàn nhân vật; vùng cấm.
- **Độ dài và độ khó tăng liên tục qua các cuốn:**

  | Cuốn | Đầu cuốn | Cuối cuốn | Câu suy luận / chương |
  |---|---|---|---|
  | A1 (đã viết) | ~75 từ / bài | ~150 từ | 0 → 4 |
  | A2 | ~150 | ~250 | 2 → 4 |
  | B1 | ~250 | ~350 | 4 → 6 (trên 20 câu) |
  | B2 | ~350 | ~450 | 6 → 8 |
  | C1 | ~450 | ~550 | 8 → 10 |

  Chương đầu của cuốn sau không được ngắn hơn chương cuối của cuốn trước.

> **Chốt 03/11/2026 (ngân sách): series DỪNG Ở B2**; C1 (sách 60) để đợt sau. → **Cập nhật 03/11/2026:** chủ nhà cho làm tiếp C1 — sách 60 đã viết xong (6 chương gộp 2 unit + 2 đề thi thử, 200 câu; bài ~420–500 từ, đề ~320–370 từ/bài).
>
> **Chốt 03/11/2026 (ngân sách):** sách B1 từ u07 gộp **2 unit / chương** (mỗi unit 1 bài × 10 câu). B2–C1 cũng làm theo cách này.

## 7a. Độ khó tăng dần và chủ đề (chủ nhà chốt 03/11/2026)

### Độ khó phải tăng dần, cả trong một cuốn lẫn giữa các cuốn

Script build in số từ và độ dài câu trung bình của từng bài. Ghi lại vào `_pipeline/` sau mỗi chương để theo dõi đường tăng.

| Thước đo | Đầu cuốn → cuối cuốn |
|---|---|
| Độ dài bài | từ mức thấp lên mức cao của khung cấp ở mục 4 |
| Độ dài câu trung bình | A1 ~6–8 từ → C1 ~20–25 từ |
| Cấu trúc câu | câu đơn → câu ghép, mệnh đề quan hệ → câu phức nhiều tầng |
| Loại câu hỏi | tìm thông tin → ý chính → suy luận → thái độ, hàm ý |
| Tỉ lệ câu suy luận | A1 ~0–10% → C1 ~50% |

Chương sau không được dễ hơn chương trước, trừ chương ôn tập.

### Nội dung phải hiện đại và có chiều sâu

- **Chủ đề mới:** công nghệ (AI, ứng dụng điện thoại, mạng xã hội, xe điện, làm việc từ xa, mua sắm online), môi trường, sức khoẻ, đời sống đô thị, du lịch, nghề nghiệp mới.
- **Từ A2 trở lên phải có suy nghĩ, cảm xúc, đánh giá:** nhật ký, review sản phẩm, bài nêu ý kiến, thư góp ý, bài so sánh ưu nhược. Đây cũng chính là dạng văn bản để ra câu hỏi về thái độ và quan điểm tác giả ở B2–C1.
- **Số liệu và sự kiện thật thì phải kiểm chứng (WebSearch)**, và ưu tiên viết sao cho không nhanh lỗi thời. Ví dụ: tránh "năm 2026 có X triệu người dùng". Nhân vật và công ty trong bài là hư cấu.

### ⛔ TUYỆT ĐỐI KHÔNG viết về

- hệ tư tưởng, chế độ chính trị: phát xít, cộng sản, độc tài, tư bản, chủ nghĩa…;
- chính đảng, bầu cử, chính trị gia, chính sách của nhà nước cụ thể;
- chiến tranh, xung đột vũ trang, tranh chấp lãnh thổ;
- tôn giáo theo kiểu so sánh hay tranh luận.

Nếu một chủ đề hợp lệ dễ trượt sang vùng này (lịch sử, kinh tế, tin tức), thì viết ở góc **đời sống / khoa học / con người**, không viết ở góc chính trị. Review và hội đồng (stage 5, 7) phải quét mục này.

## 7. Nguyên tắc nội dung

- **Bài đọc và câu hỏi tự viết mới.** Không chép đề thật (Cambridge, IELTS, đề VSTEP đã công bố).
- **Phương án nhiễu lấy từ chính bài:** số, tên, tính từ nói về người khác. Đáp án đúng rải đều A–D.
- **Luật số một của dự án vẫn áp dụng:** văn dạy học không viết "người Việt thường…" / "người Anh hay…".
- **Ngữ pháp mẫu phải chuẩn:** bài mẫu đã bắt được `This is my grandpa and my grandma`, phải là `These are`.
- **Định dạng:** không box-drawing, bảng markdown chuẩn.

## 8. Cần chủ nhà chốt

- ✅ Số chương: không giới hạn, 1 cấp = 1 cuốn (chốt 03/11/2026).
- ✅ Format bài mẫu Unit 3: đạt (chốt 03/11/2026).
- **ID:** JSON dùng ID dạng chữ (`q_u03_001`) kèm mã unit và mã phiếu. Bước nhập vào app sẽ sinh ID số.
- **Còn mở:** khoá `content_ja` / `question_jp` đang chứa tiếng Anh (giữ schema chung). Nếu app mới đổi tên khoá thì chỉ cần sửa `build_en_reading.py`.
