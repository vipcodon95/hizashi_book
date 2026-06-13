# WRITE GUIDE — 3 ngành TTS mới (Nông nghiệp / Ô tô / Khách sạn)

> Pattern dựa 27_kaigo. Mỗi ngành 3 sách (Y1-Y3) × 12 chương = 36 chương/ngành.

## Triết lý

Sách **dạy hội thoại tiếng Nhật cho TTS Việt Nam** — focus 2 mảng:
1. **Cuộc sống mới sang** (homestay/ký túc, đi chợ, ngân hàng, 在留カード, văn hoá Nhật)
2. **Trong công việc** (mẫu câu xưởng/đồng/bếp, báo cáo sempai, 報連相)

## 3 ngành + book_seq

| book_seq | Folder | Nhân vật chính | Setting |
|---|---|---|---|
| 40 | `40_nong_year1` | Linh (22t, Đồng Tháp) | Nông trại rau Aichi/Ibaraki |
| 41 | `41_nong_year2` | | |
| 42 | `42_nong_year3` | | |
| 43 | `43_oto_year1` | Phong (21t, Hải Phòng) | Garage Toyota Aichi |
| 44 | `44_oto_year2` | | |
| 45 | `45_oto_year3` | | |
| 46 | `46_hotel_year1` | Trang (22t, Huế) | Ryokan Kyoto/Nikko |
| 47 | `47_hotel_year2` | | |
| 48 | `48_hotel_year3` | | |

## Đón sân bay đa dạng

- **Linh** (nông): Narita → bus đoàn 監理団体 đón → về Ibaraki
- **Phong** (ô tô): Chubu (Nagoya) → 工場長 garage Toyota đón trực tiếp
- **Trang** (khách sạn): Kansai → tàu shinkansen → Kyoto, 女将 ryokan đón ga

## Cấu trúc chương bắt buộc

```markdown
# Sách [tên] · T[N]. [Tiêu đề]

> **Mục tiêu nhân vật:** [tên, tuổi, quê, ngành]. Học các mẫu hội thoại tiếng Nhật của [vai trò]: [5-6 kỹ năng JP người đọc HỌC]

## Bối cảnh
[≤6 dòng. Năm, tháng, địa điểm, trình độ JP. Câu chốt "Chương này tập trung..."]

## Tình huống 1 — [Địa điểm + giờ + kỹ năng]
[bối cảnh ngắn ngoài bảng, in nghiêng, NẾU CẦN]

| Vai | Lời thoại |
|---|---|
| Tên | <ruby>kanji<rt>kana</rt></ruby>...<br>*(Dịch VN)* |

...

## Tình huống [12-18 cuối, scene VN] — ...

> Cảnh tiếng Việt — gọi điện về VN.

## Đọng lại chương
[In đậm mẫu câu JP + ≥15 từ vựng]

> Từ vựng & mẫu câu chương này: 〜・〜...

## Bí quyết chương
- [5-6 bullet văn hoá/keigo/ngành]

## Bảng từ vựng chương
| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| ... | ... | ... | ... |
```

## QUY TẮC TUYỆT ĐỐI

### 1. Bảng dialog CHỈ chứa lời thoại thực
- KHÔNG `(VN, internal)` độc thoại nội tâm
- KHÔNG mô tả không gian/cảm xúc tự thân
- Cột tên bảng: `Vai` (1 từ, KHÔNG dùng "Nhân vật")

### 2. Bối cảnh tách khỏi bảng
Mô tả tình huống nếu cần đặt sau heading, in nghiêng *...*, NGOÀI bảng.

### 3. Số tình huống lớn
**12-18 tình huống/chương** — tăng so với sách cũ. Mỗi tình huống 1 mẫu câu/kỹ năng JP cụ thể.

### 4. Trình độ JP tăng dần
- Y1: N5→N4 (câu đơn giản, các pattern cơ bản)
- Y2: N4→N3 (câu phức tạp hơn, keigo bắt đầu)
- Y3: N3 (keigo công sở, hỏi đáp chuyên ngành)

### 5. Ruby furigana ĐẦY ĐỦ
- Mọi kanji trong dialog: `<ruby>kanji<rt>kana</rt></ruby>`
- Y1: ruby NHIỀU hơn (vì N5)
- KHÔNG lồng rt sai: `<ruby>X<rt>A<rt>B</rt></ruby>` ❌
- KHÔNG đóng rt mà chưa mở: `便<ruby>びん</rt>` ❌
- Compound jukujikun: `<ruby>2人<rt>ふたり</rt></ruby>` (không tách 2/人)

### 6. Cảnh tiếng Việt cuối chương
- Đối thoại thực với gia đình/đồng hương
- KHÔNG độc thoại
- Chêm từ JP đã học để ôn

### 7. Bảng từ vựng cuối chương BẮT BUỘC
- Schema: `Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt`
- Hán Việt IN HOA, kanji nối dấu cách
- Katakana → cột Hán Việt là `—`
- Sort theo thứ tự xuất hiện trong chương
- Y1: 25-35 từ/chương (vì N5, từ đơn giản)
- Y2: 35-50 từ/chương
- Y3: 40-60 từ/chương
- Loại trừ: tên nhân vật, địa danh quốc gia/thành phố lớn, số đếm trần

### 8. Đa dạng cuộc sống mới sang (Y1 đặc biệt)
T1: Đón sân bay, T2: Ngày đầu trung tâm/ký túc, T3: Ngày đầu việc làm, T4: Phân rác/đi chợ/ngân hàng, T5: 在留カード/My Number/医療保険, T6-T10: Công việc + sự cố nhỏ, T11: Bạn cùng phòng/đồng hương, T12: Tổng kết năm 1 + về VN/gọi điện

### 9. Y2-Y3 tăng dần độ phức tạp
- Y2: thi 検定 3級, sempai-of-sempai cho kohai mới
- Y3: chuyển SSW1, mensetsu, tổng kết hợp đồng

## Đặc thù từng ngành

### Nông nghiệp (40-42)
- Linh, 22t, Đồng Tháp, miền Tây
- Nông trại rau Ibaraki / Aichi: cà chua, dưa leo, salad, chăn nuôi bò sữa
- Thuật ngữ: ハウス, 収穫, 種まき, 害虫, 農薬, 出荷, JAS有機, トラクター
- Cấp trên: 親方 / 農場主
- Đồng nghiệp: Indonesia + Philippines

### Ô tô (43-45)
- Phong, 21t, Hải Phòng (quê có gia đình làm cơ khí)
- Garage 自動車整備工場 Toyota系 Aichi
- Thuật ngữ: 整備, エンジン, ブレーキ, タイヤ, オイル交換, 車検, リフト, ボルト, スパナ
- Cấp trên: 整備士長 / 工場長
- Đồng nghiệp: Nhật + Brazil (do Toyota có nhiều Brazil)

### Khách sạn (46-48)
- Trang, 22t, Huế (có kinh nghiệm phục vụ nhà hàng VN)
- Ryokan truyền thống Kyoto / Nikko
- Thuật ngữ: 客室, 仲居, おもてなし, 浴衣, 懐石料理, チェックイン, 布団, 朝食, 温泉
- Cấp trên: 女将 (おかみ) / 旅館長
- Đồng nghiệp: Trung Quốc + Hàn Quốc + Nepal

## Self-review checklist trước khi ghi file

1. [ ] 12-18 tình huống
2. [ ] Heading "Địa điểm + giờ + kỹ năng"
3. [ ] Bảng dialog KHÔNG có độc thoại nội tâm
4. [ ] Bối cảnh tình huống ngoài bảng nếu có
5. [ ] Mục tiêu nhân vật = 5-6 kỹ năng JP
6. [ ] Có tình huống "hỏi lại khi chưa hiểu"
7. [ ] Có cảnh tiếng Việt cuối chương là ĐỐI THOẠI thực
8. [ ] Ruby furigana đầy đủ, không lồng rt sai
9. [ ] Đọng lại chương in đậm mẫu câu + ≥15 từ vựng
10. [ ] Bảng từ vựng cuối chương đầy đủ (≥25 từ với Y1, ≥35 với Y2-Y3)

## Output

Ghi đè/tạo file `*_HoiThoai.md`. Trả JSON:
```json
{"written": true, "n_situations": <int>, "n_vocab_in_table": <int>, "notes": "..."}
```
