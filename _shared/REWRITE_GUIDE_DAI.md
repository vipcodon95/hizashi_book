# REWRITE GUIDE — Sách 19-26 (Đại: Du học + Đại học CS + BrSE)

> Pattern dựa trên 27_kaigo (sách dạy hội thoại tiếng Nhật) — ADAPT cho ngữ cảnh du học sinh + sinh viên CS + kỹ sư cầu nối Việt-Nhật.

## Triết lý

Đây là sách **dạy hội thoại tiếng Nhật cho người Việt** sống/học/làm ở Nhật trong môi trường:
- 19-20: Trường tiếng Nhật, homestay, baito (Lawson, du lịch)
- 21-22: Đại học CS (Osaka/Kobe), seminar, lab CS năm 1-2
- 23-24: Lab CS năm 3-4 (Inoue lab, sotsuken), intern Cybozu, startup Hizashi
- 25-26: BrSE tại Thanh A / kỹ sư cầu nối, startup Hizashi grow, Series A

Mục tiêu MỖI chương: người đọc HỌC được **5-6 mẫu câu JP cụ thể** ứng dụng trong tình huống cụ thể của Đại.

## Cấu trúc chương bắt buộc

```markdown
# Sách [tên] · T[N]. [Tiêu đề chương]

> **Mục tiêu nhân vật:** [tên + tuổi + bối cảnh năm/tháng]. Học các mẫu hội thoại tiếng Nhật của [vai trò]: [liệt kê 5-6 KỸ NĂNG/MẪU CÂU người đọc HỌC, không phải plot]

---

## Bối cảnh

[≤6 dòng. Năm, tháng, địa điểm, tình trạng ngôn ngữ JP của Đại, các nhân vật xuất hiện. Câu chốt: "Chương này tập trung các mẫu câu...".]

---

## Tình huống 1 — [Địa điểm + giờ + kỹ năng cụ thể]

[Mô tả ngắn 1-2 câu bối cảnh tình huống NẾU CẦN, đặt NGOÀI bảng, in nghiêng. KHÔNG bắt buộc.]

| Nhân vật | Lời thoại |
|---|---|
| [Tên] | [Câu JP với ruby furigana đầy đủ]<br>*([Dịch VN ngắn gọn])* |
| [Tên] | ... |

---

## Tình huống 2 — ...
...

## Tình huống [12-18 cuối, cuối là cảnh tiếng Việt] — ...

> Cảnh tiếng Việt — gọi điện về VN cho Mai/bố mẹ, ôn lại từ vựng JP đã học qua hội thoại Việt-Việt.

| Nhân vật | Lời thoại |
|---|---|
| Đại | (tiếng Việt) [câu Việt — kể chuyện trong ngày, có chêm từ JP đã học] |
| Mai | (tiếng Việt) [câu Việt phản hồi] |

---

## Đọng lại chương [N]

[1 đoạn 5-10 câu. In đậm các MẪU CÂU JP đã học. Cuối đoạn liệt kê 15+ từ vựng/mẫu câu.]

> Từ vựng & mẫu câu chương này: 〜・〜・〜...

## Bí quyết chương

- [Bullet 1: insight văn hoá/keigo/kỹ thuật]
- [Bullet 2]
- ...
```

## RULES BẮT BUỘC

### 1. Bảng hội thoại CHỈ chứa LỜI THOẠI

❌ KHÔNG cho vào bảng:
- `(VN, internal) Tàu Hankyu chạy qua sông Yodogawa. Sương sớm.` ← độc thoại nội tâm vô nghĩa
- `(VN, internal) 24 tháng trước mình ngồi tàu...` ← hồi tưởng không phải đối thoại
- Mô tả không gian/thời tiết/cảm xúc tự thân
- Câu Việt không có ý nghĩa giao tiếp

✅ ĐƯỢC cho vào bảng:
- Câu nói thật ra miệng giữa các nhân vật
- Tin nhắn LINE/Zalo có 2 người (Đại nhắn Mai, Mai trả lời)
- Câu nội tâm CÓ ý nghĩa giao tiếp (vd `(自分に)頑張ろう` — tự cổ vũ mình, có context)
- Stage direction NGẮN có giá trị: `(gõ cửa)`, `(cầm bảng)`, `(cúi chào)`

### 2. Bối cảnh tình huống TÁCH KHỎI bảng

Nếu cần mô tả bối cảnh tình huống, đặt **NGOÀI** bảng, sau heading, dạng:

```
## Tình huống 5 — Lab Inoue · 14:00, presentation kết quả PyTorch tuần đầu

*Đại đứng trước Inoue-sensei và 6 senpai. Slide đầu tiên là kiến trúc baseline ResNet-18 trên CIFAR-10.*

| Nhân vật | Lời thoại |
```

KHÔNG nhồi câu bối cảnh vào bảng dialog.

### 3. Số lượng tình huống TĂNG

Mục tiêu **12-18 tình huống/chương** (sách 12-18 trước đây nhiều chương chỉ có 8-10).
- Mỗi tình huống tập trung **1 mẫu câu/kỹ năng cụ thể**
- Cảnh ngắn (4-8 lượt thoại) tốt hơn cảnh dài lê thê
- Phủ đa dạng: trường, baito, homestay, bạn cùng phòng, sempai, sensei, khách Nhật, đồng hương VN, gọi điện về VN

### 4. Ruby furigana đầy đủ

Mọi kanji JP trong dialog đều phải có `<ruby>kanji<rt>kana</rt></ruby>`. Không bỏ sót. Ruby chỉ wrap đúng KANJI, không wrap kana xen kẽ.

❌ Sai: `<ruby>問題<rt>30番<rt>もんだいさんじゅうばん</rt></ruby>` (rt lồng nhau)
❌ Sai: `便<ruby>びん</rt>` (đóng rt mà không mở ruby)
✅ Đúng: `<ruby>問題30番<rt>もんだいさんじゅうばん</rt></ruby>`

### 5. Cảnh tiếng Việt cuối chương CÓ Ý NGHĨA

Bắt buộc 1 tình huống cuối là cảnh tiếng Việt — nhưng PHẢI là **đối thoại có giá trị**:
- Đại gọi Mai (vợ chưa cưới ở VN) — kể lại chuyện trong ngày, ôn từ JP
- Đại nói chuyện đồng hương VN ở Osaka/Kobe
- Đại gọi bố mẹ tuần 1 lần
- Đại nhắn LINE với Tuấn/Aiko (cofounder)

KHÔNG được là độc thoại Đại nhẩm trong đầu.

### 6. Giữ NGUYÊN

- Tên nhân vật: Đại, Mai (vợ chưa cưới rồi vợ), Hana (con gái), Tuấn, Aiko, Tony (homestay), Yumi, Inoue-sensei, Cybozu cast, ...
- Setting thời gian (4/2024 nhập học → 2030 BrSE Y2)
- Setting địa điểm: Tennoji Osaka → Toyonaka → Kobe → Tokyo
- Visa: 留学 → 技術・人文知識・国際業務
- Câu JP có ruby furigana đầy đủ
- Stage direction có nghĩa

### 7. Reframe BẮT BUỘC

- Mục tiêu nhân vật → 5-6 kỹ năng JP người đọc HỌC (không phải plot)
- Bối cảnh → ≤6 dòng, có câu chốt "Chương này tập trung..."
- Tên tình huống → "Địa điểm + giờ + kỹ năng cụ thể"
- Thêm tình huống "hỏi lại khi chưa hiểu" (`〜というのは？・もう一度お願いします`)
- Thêm tình huống "quan sát sempai/sensei làm mẫu" trước khi tự làm
- Thêm tình huống keigo với khách/sensei (sách 23-26 đặc biệt nhiều)

### 8. Thuật ngữ kỹ thuật (sách 23-26 IT)

- GIỮ tên tiếng Anh: PyTorch, Transformer, BERT, API, Series A, DD, Flutter, React, Git, GitHub, Pull Request, CI/CD, AWS
- Nhưng BAO QUANH thuật ngữ là JP đầy đủ với ruby furigana:
  - `先生、Transformer の<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>ませていただきました。`
  - `<ruby>来週<rt>らいしゅう</rt></ruby>までに pull request を<ruby>送<rt>おく</rt></ruby>ります。`
- Học cách viết tiếng Nhật ngành IT thực tế

### 9. Tiếng Anh ngoài thuật ngữ chuyên ngành → DỊCH

- `feedback` → 「フィードバック」 trong JP, "phản hồi" trong VN
- `meeting` → 「ミーティング」 hoặc 「会議」, "cuộc họp" trong VN
- `checklist` → 「チェックリスト」 trong JP, "bảng kiểm" trong VN
- `cast/payoff/setup` (đạo diễn) → tiếng Việt tự nhiên trong bí quyết

## Pattern reference

Đọc bắt buộc trước khi rewrite:
1. `27_kaigo/t02_koekake_ijou/t02_KoekakeIjou_HoiThoai.md` — pattern gốc
2. `14_thai_year1/t01_rainichi/t01_Rainichi_HoiThoai.md` — pattern du học/làm thực tập
3. `13_hoa_year3/t12_bonenkai_ssw1/t12_BonenkaiSSW1_HoiThoai.md` — pattern speech/bonenkai trang trọng

## Self-review checklist 10 mục (chạy trước khi ghi file)

1. [ ] 12-18 tình huống
2. [ ] Mỗi tình huống có heading "Địa điểm + giờ + kỹ năng"
3. [ ] Bảng dialog KHÔNG chứa câu độc thoại nội tâm vô nghĩa
4. [ ] Mô tả bối cảnh tình huống (nếu có) NẰM NGOÀI bảng
5. [ ] Mục tiêu nhân vật là 5-6 kỹ năng JP người đọc HỌC
6. [ ] Bối cảnh ≤6 dòng, có câu chốt "Chương này tập trung..."
7. [ ] Có tình huống "hỏi lại khi chưa hiểu"
8. [ ] Có cảnh tiếng Việt CUỐI chương là ĐỐI THOẠI thực sự (gọi điện/nhắn tin)
9. [ ] Ruby furigana đầy đủ, không lồng rt sai cú pháp
10. [ ] Có "Đọng lại chương" in đậm các mẫu câu JP + liệt kê ≥15 từ vựng

## Output

Ghi đè in-place file `*_HoiThoai.md`. Trả JSON:
```json
{"written": true, "n_situations": <int>, "n_vocab_in_dongLai": <int>, "notes": "..."}
```
