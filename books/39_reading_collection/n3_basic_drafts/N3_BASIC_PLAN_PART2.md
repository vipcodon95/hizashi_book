# N3_BASIC_PLAN_PART2 — 67 bài còn thiếu (R_0252→R_0318)

> **Lưu ý**: ID R_0252→R_0318 chỉ là tạm để khỏi đụng với drafts cũ. Sẽ rename lại sau khi gộp toàn bộ N3.

---

## 1. Spec rút gọn (áp dụng MỌI bài)

| Field | Giá trị |
|-------|---------|
| `level` | 5 |
| `level_label` | "N3_basic" |
| `jlpt` | "N3" |
| `sentence_count` | 12-15 (= len(process)) |
| `comprehension` | **3 câu hỏi** (1 sự thật + 1 nguyên nhân/kết quả + 1 suy luận) |
| `vocabulary` | **8-12 từ** khó hơn N3 (word/reading/meaning) |
| `process` | ARRAY: mỗi phần tử = 1 câu, có {sentence, chunks, guide, translation} |
| `guide` style | Cấp 5 — dùng `→` dự đoán + 🔒 đóng gói. **KHÔNG** dùng ⚠️/💡/🎯 (dành cho ≥cấp 7) |

**File output**: `n3_basic_drafts/batch_NNNN_NNNN.json` (3 bài/file)

**Schema chuẩn**: theo [READING_SPEC.md](../READING_SPEC.md). Bắt buộc:
- `text` viết liền không chia khối
- `translation` toàn đoạn — tiếng Việt CÓ DẤU
- `process[*].translation` — tiếng Việt CÓ DẤU
- `process[*].guide` — tiếng Việt CÓ DẤU, logic theo trình tự câu
- `vocabulary[*].meaning` — tiếng Việt CÓ DẤU
- `comprehension[*].question_vi` — tiếng Việt CÓ DẤU
- `comprehension[*].answers[*].text_vi` — tiếng Việt CÓ DẤU
- `comprehension[*].explanation` — tiếng Việt CÓ DẤU
- 4 đáp án/câu, **đúng 1 đáp án is_correct: true**
- `grammar_used` PHẢI thực sự xuất hiện trong text
- `sentence_count` = `len(process)`

---

## 2. Quy tắc viết `process` (CRITICAL — phải logic)

Mỗi phần tử `process[i]` ứng với **1 câu** trong `text`. 4 field phải khớp NHAU và khớp với câu gốc:

```json
{
  "sentence": "Câu tiếng Nhật GỐC, copy y chang từ text",
  "chunks": "Khối1 / Khối2 / Khối3",  // chia khối ngữ nghĩa, KHÔNG chia ngẫu nhiên
  "guide": "Trợ từ → dự đoán → 🔒 đóng gói → giải thích. Tiếng Việt CÓ DẤU.",
  "translation": "Dịch câu này sang tiếng Việt CÓ DẤU."
}
```

**Cách viết `guide` cấp 5 (chuẩn)**:
- Bắt đầu bằng phân tích **trợ từ chính** hoặc **mẫu ngữ pháp** trong câu
- Dùng `→` để biểu diễn các bước dự đoán/suy luận
- Sau khi câu khép ý, dùng `🔒 Đóng gói: [tóm gọn ý câu]` để giải phóng bộ nhớ
- Nếu câu nối ý câu trước, mở đầu bằng `[câu trước nói X] → câu này bổ sung/giải thích/đối lập...`

**Ví dụ guide đạt chuẩn cấp 5** (lấy từ [batch_0168_0170.json](batch_0168_0170.json) đã có):
```
"guide": "ことから → dự đoán: nguyên nhân/căn cứ → 'từ việc...' → に注目される: được chú ý → 🔒 Đóng gói: [vì khả năng phục hồi → môi trường nhận chú ý]"
```

**KHÔNG được**:
- Viết guide chung chung không bám trợ từ ("Câu này nói về môi trường...")
- Bỏ sót phần đóng gói cuối câu dài
- Trộn tiếng Anh / không dấu

---

## 3. Topic blacklist (111 chủ đề ĐÃ DÙNG — KHÔNG lặp lại)

Đã dùng ở 33 N3_basic + 78 N3_advanced. **Mọi bài mới phải chọn chủ đề/subtopic khác**.

```
environment/{ý kiến cá nhân, năng lượng tái tạo, rác thải nhựa}
work/{kinh nghiệm làm thêm, làm việc từ xa, quản lý thời gian, làm việc hybrid, văn hóa công ty}
culture/{đời sống Nhật Bản, lễ tết truyền thống, truyền thống và hiện đại, giao thoa văn hóa, lễ hội mùa đông, ẩm thực Nhật ra thế giới}
technology/{tác động công nghệ, AI trong cuộc sống, bảo mật thông tin, robot và xã hội, xe điện}
health/{thói quen sức khỏe, sức khỏe tinh thần, lối sống lành mạnh, dinh dưỡng và não bộ, giấc ngủ, thiền định}
self_improvement/{thói quen học tập}
community/{hoạt động tình nguyện}
daily_life/{sở thích cá nhân}
education/{thi đại học, cải cách giáo dục, học trực tuyến, giáo dục đặc biệt, học qua trải nghiệm, trí tuệ cảm xúc}
nature/{thiên tai, bảo tồn động vật, rừng và con người, thảm họa hạn hán}
shopping/{tiêu dùng thông minh}
travel/{du lịch nước ngoài, du lịch bền vững, du lịch nông thôn}
family/{chăm sóc người thân, nuôi dạy con cái, cân bằng cuộc sống, chăm sóc từ xa, thế hệ sandwich}
school/{câu lạc bộ học đường}
food/{ẩm thực địa phương, ẩm thực và văn hóa, thực phẩm chức năng, văn hóa trà đạo, lên men và vi sinh vật}
social/{mạng xã hội và thông tin}
career/{chọn nghề nghiệp, thăng tiến nghề nghiệp, chuyển nghề, mentorship, làm việc toàn cầu, nhảy việc}
tradition/{lễ hội mùa hè}
housing/{chuyển nhà, thiết kế nhà thân thiện}
animal/{nuôi thú cưng}
language/{học ngoại ngữ, đa ngôn ngữ}
event/{festival địa phương}
disaster/{phòng chống thảm họa, tái thiết sau động đất, phục hồi tâm lý}
friendship/{tình bạn xa}
economy/{tiêu dùng & tiết kiệm, kinh tế chia sẻ, khởi nghiệp}
media/{báo chí & tin tức, mạng xã hội và sự thật}
hobby/{nhiếp ảnh, đọc sách và trưởng thành, viết nhật ký}
urban_life/{sống ở thành phố lớn}
urban/{quy hoạch đô thị, giao thông công cộng, không gian xanh}
volunteer/{hỗ trợ sau thiên tai, hỗ trợ người cao tuổi}
future/{AI và tương lai}
society/{biến đổi xã hội, già hóa dân số, bình đẳng giới, tình nguyện quốc tế, cô đơn đô thị, phân hóa giàu nghèo}
psychology/{tâm lý căng thẳng, thói quen tốt, sự kiên nhẫn}
science/{khám phá vũ trụ, y học hiện đại, vật liệu mới, vaccine, nghiên cứu hạnh phúc}
art/{nghệ thuật đương đại, âm nhạc trị liệu, thiết kế và chức năng}
sport/{tinh thần thể thao, Paralympic}
child/{trẻ em và sáng tạo}
communication/{lắng nghe chủ động, giao tiếp phi ngôn ngữ}
fashion/{thời trang bền vững}
history/{bảo tồn di tích}
mental_health/{burnout}
```

---

## 4. Grammar pool — 103 grammar N3 master CHƯA dùng

Lấy từ DB `hizashi_db.grammar` level=N3. Trong plan dưới mỗi bài đã chọn 3 trọng tâm, **kèm pattern + meaning ngắn để agent KHÔNG cần truy DB**.

---

## 5. KHUNG 67 BÀI — chia thành 23 BATCH

> Mỗi BATCH 3 bài (batch cuối: 1 bài). Mỗi agent xử lý 1 BATCH = 3 bài độc lập.

---

### BATCH 1 — R_0252 → R_0254

#### R_0252
- **Topic**: `lifestyle` / `subtopic`: "thói quen buổi sáng"
- **Title gợi ý**: 朝の習慣
- **Grammar trọng tâm**:
  1. `～ことにしています` — thói quen tự đặt ra cho bản thân
  2. `～てくる` — bắt đầu/dần dần xảy ra (lịch sử thay đổi)
  3. `～について` — về, liên quan đến

#### R_0253
- **Topic**: `food` / `subtopic`: "bữa sáng kiểu Nhật"
- **Title gợi ý**: 日本の朝ごはん
- **Grammar trọng tâm**:
  1. `～ような／ように` — giống như, theo cách (so sánh/ví dụ)
  2. `～らしい` — nghe nói, đúng kiểu
  3. `～から～にかけて` — từ ~ đến ~ (phạm vi thời gian/không gian)

#### R_0254
- **Topic**: `transport` / `subtopic`: "đi tàu điện đông đúc"
- **Title gợi ý**: 通勤電車の混雑
- **Grammar trọng tâm**:
  1. `～だらけ` — đầy, toàn là (tiêu cực)
  2. `～ぎみ` — hơi, có vẻ (xu hướng tiêu cực nhẹ)
  3. `～ものだから／もので` — bởi vì ~ (biện hộ)

---

### BATCH 2 — R_0255 → R_0257

#### R_0255
- **Topic**: `weather` / `subtopic`: "mùa mưa Nhật Bản"
- **Title gợi ý**: 梅雨の季節
- **Grammar trọng tâm**:
  1. `～から～にかけて` — từ ~ đến ~ (lần 2)
  2. `～がち` — hay, thường (tiêu cực)
  3. `～みたいだ` — có vẻ, giống như

#### R_0256
- **Topic**: `entertainment` / `subtopic`: "rạp chiếu phim"
- **Title gợi ý**: 映画館の楽しみ
- **Grammar trọng tâm**:
  1. `～について` — về, liên quan (lần 2)
  2. `～ほど` — đến mức ~
  3. `～てくる` — bắt đầu, dần dần (lần 2)

#### R_0257
- **Topic**: `daily_routine` / `subtopic`: "sắp xếp tủ quần áo"
- **Title gợi ý**: 季節の衣替え
- **Grammar trọng tâm**:
  1. `～ことになっています` — theo quy định/sắp xếp
  2. `～たびに` (kết hợp lại) → đổi thành: `～ように` — để mà, sao cho
  3. `～とおり／どおり` — đúng như, theo như

---

### BATCH 3 — R_0258 → R_0260

#### R_0258
- **Topic**: `personal_growth` / `subtopic`: "vượt qua thất bại"
- **Title gợi ý**: 失敗から学ぶこと
- **Grammar trọng tâm**:
  1. `～おかげ（で／だ）` — nhờ có ~
  2. `～せい（で／だ）` — tại vì ~ (tiêu cực)
  3. `～たところ` — khi thử ~ thì (kết quả bất ngờ)

#### R_0259
- **Topic**: `pets` / `subtopic`: "nuôi mèo trong căn hộ"
- **Title gợi ý**: マンションで猫を飼う
- **Grammar trọng tâm**:
  1. `～向き` — phù hợp với
  2. `～向け` — dành cho, hướng đến
  3. `～っぽい` — đầy, hay, mang tính chất

#### R_0260
- **Topic**: `study_method` / `subtopic`: "phương pháp ghi nhớ từ vựng"
- **Title gợi ý**: 単語を覚える工夫
- **Grammar trọng tâm**:
  1. `～ば～ほど` — càng ~ càng ~
  2. `～ほど～ない` — không ~ bằng ~
  3. `～ように` — để mà, sao cho (lần 2)

---

### BATCH 4 — R_0261 → R_0263

#### R_0261
- **Topic**: `relationship` / `subtopic`: "giữ liên lạc với bạn cũ"
- **Title gợi ý**: 古い友人との連絡
- **Grammar trọng tâm**:
  1. `～て以来` — kể từ khi ~
  2. `～ついでに` — nhân tiện, tiện thể
  3. `～など／なんか／なんて` — những thứ như, cái gì đó như

#### R_0262
- **Topic**: `seasonal_event` / `subtopic`: "ngắm hoa anh đào"
- **Title gợi ý**: お花見の季節
- **Grammar trọng tâm**:
  1. `～たとたん(に)` — ngay khi
  2. `～最中(に/だ)` — đang giữa lúc
  3. `～につれ(て)` — cùng với việc, càng ~ thì càng

#### R_0263
- **Topic**: `convenience` / `subtopic`: "máy bán hàng tự động"
- **Title gợi ý**: 自動販売機の便利さ
- **Grammar trọng tâm**:
  1. `～において／における` — tại, ở (formal)
  2. `～にとって` — đối với (quan điểm)
  3. `～による／により／によって` — do, bởi (nguyên nhân/phương tiện)

---

### BATCH 5 — R_0264 → R_0266

#### R_0264
- **Topic**: `book` / `subtopic`: "thư viện công cộng"
- **Title gợi ý**: 公共図書館の役割
- **Grammar trọng tâm**:
  1. `～にとって` — đối với (lần 2)
  2. `～として` — với tư cách là
  3. `～はもちろん／もとより` — đương nhiên là

#### R_0265
- **Topic**: `music` / `subtopic`: "học chơi đàn piano"
- **Title gợi ý**: ピアノを習うこと
- **Grammar trọng tâm**:
  1. `～てほしい／もらいたい` — muốn ai làm gì cho mình
  2. `～ば～ほど` — càng ~ càng ~ (lần 2)
  3. `～さえ` — ngay cả, chỉ cần

#### R_0266
- **Topic**: `gardening` / `subtopic`: "trồng rau ban công"
- **Title gợi ý**: ベランダ菜園の楽しみ
- **Grammar trọng tâm**:
  1. `～ことができる` lặp lại — đổi: `～ことにしています` (lần 2)
  2. `～につれ(て)` — cùng với việc (lần 2)
  3. `～かわりに` — thay vì, đổi lại

---

### BATCH 6 — R_0267 → R_0269

#### R_0267
- **Topic**: `traditional_craft` / `subtopic`: "đồ gốm sứ Nhật"
- **Title gợi ý**: 日本の陶器
- **Grammar trọng tâm**:
  1. `～にわたって／にわたり／にわたる` — trải dài suốt
  2. `～を中心に／を中心として` — lấy ~ làm trung tâm
  3. `～をはじめ` — bắt đầu từ, đứng đầu là

#### R_0268
- **Topic**: `health` / `subtopic`: "tập yoga buổi sáng" (chưa dùng — `health/thiền định` đã có nhưng `yoga buổi sáng` khác)
- **Title gợi ý**: 朝ヨガの効果
- **Grammar trọng tâm**:
  1. `～ようになっている` — được thiết kế sao cho
  2. `～み (Hậu tố danh từ hóa)` — hậu tố biến tính từ thành danh từ
  3. `～てくる` — dần dần (lần 3)

#### R_0269
- **Topic**: `internet` / `subtopic`: "tìm kiếm thông tin online"
- **Title gợi ý**: ネットでの情報検索
- **Grammar trọng tâm**:
  1. `～によって` — tùy theo, do (lần 2)
  2. `～にすぎない` — chỉ là, chỉ ~ thôi → đổi: `～など／なんか／なんて` (lần 2)
  3. `～について` (lần 3)

---

### BATCH 7 — R_0270 → R_0272

#### R_0270
- **Topic**: `family` / `subtopic`: "ăn cơm cùng gia đình"
- **Title gợi ý**: 家族で食べる夕食
- **Grammar trọng tâm**:
  1. `～ながら` (formal: `～と同時に`) → dùng: `～とともに` — cùng với
  2. `～ものだから／もので` — bởi vì (lần 2)
  3. `～ことになっています` — theo quy định (lần 2)

#### R_0271
- **Topic**: `city_life` / `subtopic`: "công viên trong thành phố"
- **Title gợi ý**: 都会の中の公園
- **Grammar trọng tâm**:
  1. `～における` — tại, ở (formal, lần 2)
  2. `～にとって` — đối với (lần 3)
  3. `～はもちろん` — đương nhiên là (lần 2)

#### R_0272
- **Topic**: `time_management` / `subtopic`: "lập kế hoạch tuần"
- **Title gợi ý**: 週の計画を立てる
- **Grammar trọng tâm**:
  1. `～ように` — để mà, sao cho (lần 3)
  2. `～ことにしています` — thói quen tự đặt (lần 3)
  3. `～ようがない／ようもない` — không có cách nào

---

### BATCH 8 — R_0273 → R_0275

#### R_0273
- **Topic**: `community` / `subtopic`: "lễ hội khu phố"
- **Title gợi ý**: 町内会のお祭り
- **Grammar trọng tâm**:
  1. `～にあたって` (formal advanced) → đổi: `～際に／際は` — khi, lúc, nhân dịp
  2. `～にともなって／ともない` — đi kèm với
  3. `～を通じて／通して` — thông qua, suốt

#### R_0274
- **Topic**: `personal_finance` / `subtopic`: "tiết kiệm tiền điện"
- **Title gợi ý**: 電気代の節約
- **Grammar trọng tâm**:
  1. `～わりに` — so với, mặc dù
  2. `～ばかりでなく` — không chỉ ~ mà còn
  3. `～ように` — để mà (lần 4)

#### R_0275
- **Topic**: `nature` / `subtopic`: "leo núi mùa thu" (chưa trùng — `thiên tai`/`hạn hán`/`bảo tồn` khác)
- **Title gợi ý**: 秋の登山
- **Grammar trọng tâm**:
  1. `～につれ(て)` — càng ~ thì (lần 3)
  2. `～ように` — sao cho → đổi: `～にしたがって／にしたがい` — theo, cùng với
  3. `～ほど` — đến mức (lần 2)

---

### BATCH 9 — R_0276 → R_0278

#### R_0276
- **Topic**: `cooking` / `subtopic`: "tự nấu cơm bento"
- **Title gợi ý**: お弁当作り
- **Grammar trọng tâm**:
  1. `～ことにしている` (lần 4) → đổi: `～たびに` lặp với plan cũ → dùng `～とともに` (lần 2)
  2. `～ようになっている` — được thiết kế (lần 2)
  3. `～さえ` — ngay cả (lần 2)

#### R_0277
- **Topic**: `seasonal_food` / `subtopic`: "hoa quả mùa hè"
- **Title gợi ý**: 夏の果物
- **Grammar trọng tâm**:
  1. `～から～にかけて` — từ ~ đến ~ (lần 3)
  2. `～らしい` — nghe nói, đúng kiểu (lần 2)
  3. `～という／とは／というのは` — nghĩa là → dùng `～とは／というのは`

#### R_0278
- **Topic**: `school_life` / `subtopic`: "lễ tốt nghiệp tiểu học"
- **Title gợi ý**: 小学校の卒業式
- **Grammar trọng tâm**:
  1. `～にあたって` — không có trong list → dùng `～際に` (lần 2)
  2. `～にとって` (lần 4) → giới hạn lặp 3 lần → đổi: `～として` — với tư cách (lần 2)
  3. `～をこめて` — với tất cả (tình cảm)

---

### BATCH 10 — R_0279 → R_0281

#### R_0279
- **Topic**: `home` / `subtopic`: "dọn dẹp cuối năm"
- **Title gợi ý**: 大掃除の習慣
- **Grammar trọng tâm**:
  1. `～ことになっている` — theo quy định (lần 3)
  2. `～うちに` lặp với plan cũ → dùng `～とおり／どおり` (lần 2)
  3. `～ついでに` — nhân tiện (lần 2)

#### R_0280
- **Topic**: `health` / `subtopic`: "tập thể dục buổi tối" (khác `yoga buổi sáng`)
- **Title gợi ý**: 夜のストレッチ
- **Grammar trọng tâm**:
  1. `～てたまらない` — không chịu nổi
  2. `～がち` — hay, thường (lần 2)
  3. `～ば～ほど` — càng ~ càng (lần 3)

#### R_0281
- **Topic**: `travel` / `subtopic`: "ga tàu shinkansen" (khác các travel đã có)
- **Title gợi ý**: 新幹線の旅
- **Grammar trọng tâm**:
  1. `～によって` — bằng phương tiện (lần 3)
  2. `～において` — tại, ở (lần 3)
  3. `～際に` — khi, lúc (lần 3)

---

### BATCH 11 — R_0282 → R_0284

#### R_0282
- **Topic**: `tradition` / `subtopic`: "kimono trong lễ thành nhân"
- **Title gợi ý**: 成人式と着物
- **Grammar trọng tâm**:
  1. `～として` — với tư cách (lần 3)
  2. `～をはじめ` — đứng đầu là (lần 2)
  3. `～にもとづいて／にもとづき` — dựa trên

#### R_0283
- **Topic**: `pets` / `subtopic`: "đi dạo cùng chó"
- **Title gợi ý**: 犬との散歩
- **Grammar trọng tâm**:
  1. `～たびに` (lặp plan cũ) → dùng `～につれ(て)` (lần 4 — quá nhiều) → đổi: `～ようになる` (đã dùng ở plan cũ "ようになった") → dùng `～って` — khẩu ngữ trích dẫn
  2. `～みたいだ` — giống như (lần 2)
  3. `～ながら(も)` lặp plan cũ → dùng `～とともに` (lần 3 — giới hạn 2) → đổi: `～かわりに` (lần 2)

#### R_0284
- **Topic**: `work` / `subtopic`: "phỏng vấn xin việc" (khác work đã có)
- **Title gợi ý**: 就職面接の準備
- **Grammar trọng tâm**:
  1. `～について` (lần 4 — giới hạn 3) → đổi: `～に関して／に関する` — liên quan đến
  2. `～によって` (lần 4) → đổi: `～による` — do, bởi
  3. `～ことが大切だ` lặp plan cũ → đổi: `～べき` (đã dùng) → `～はずだ` — lẽ ra phải

---

### BATCH 12 — R_0285 → R_0287

#### R_0285
- **Topic**: `online_shopping` / `subtopic`: "mua sắm online"
- **Title gợi ý**: ネット通販の便利さ
- **Grammar trọng tâm**:
  1. `～わけだ` — thảo nào, có nghĩa là
  2. `～によって` (lần đếm — đổi sang) `～による` (lần 2)
  3. `～にすぎない` — chỉ là (đã dùng plan cũ → kiểm tra... nằm trong list cũ R_0168 đã dùng) → đổi: `～たところ` (lần 2)

#### R_0286
- **Topic**: `hobby` / `subtopic`: "vẽ tranh sơn dầu" (khác hobby đã có)
- **Title gợi ý**: 油絵を描く時間
- **Grammar trọng tâm**:
  1. `～かけ／かける` — dở dang, đang làm
  2. `～みたいだ` (lần 3 — giới hạn 2) → đổi: `～らしい` (lần 3 — quá) → đổi: `～って` (lần 2)
  3. `～ように` (lần 5 — quá) → đổi: `～ような／ように` (lần 2 — đã có) → đổi: `～ば～ほど` (lần 4 — quá) → đổi: `～ものか` — làm sao mà

#### R_0287
- **Topic**: `health` / `subtopic`: "khám sức khỏe định kỳ" (khác health đã có)
- **Title gợi ý**: 定期健診の大切さ
- **Grammar trọng tâm**:
  1. `～おそれがある` — có nguy cơ
  2. `～ないわけにはいかない` — không thể không
  3. `～によって` (lần đếm = đã đến giới hạn) → đổi: `～による／により` (lần 3)

---

### BATCH 13 — R_0288 → R_0290

#### R_0288
- **Topic**: `food_culture` / `subtopic`: "đi ăn ramen"
- **Title gợi ý**: ラーメン店巡り
- **Grammar trọng tâm**:
  1. `～と言われている` (chưa có trong list — bỏ) → đổi: `～ということだ` — nghe nói rằng
  2. `～など／なんか／なんて` (lần 3)
  3. `～から～にかけて` (lần 4 — giới hạn 3) → đổi: `～にしたがって／にしたがい` (lần 2)

#### R_0289
- **Topic**: `friendship` / `subtopic`: "kết bạn ở nơi làm việc" (khác `tình bạn xa`)
- **Title gợi ý**: 職場での友人作り
- **Grammar trọng tâm**:
  1. `～って` — khẩu ngữ (lần 3)
  2. `～みたいだ` (đã giới hạn) → đổi: `～らしい` (lần 3)
  3. `～たところ` — khi thử thì (lần 3 — giới hạn 2) → đổi: `～ところに／へ／を／で` — đúng lúc

#### R_0290
- **Topic**: `learning` / `subtopic`: "học qua YouTube"
- **Title gợi ý**: YouTubeで学ぶ
- **Grammar trọng tâm**:
  1. `～を通じて／通して` — thông qua (lần 2)
  2. `～ように` (đã giới hạn) → đổi: `～ように` (vẫn dùng — coi như reset; chấp nhận lặp 5 lần với grammar phổ thông)
  3. `～ぎみ` — hơi (lần 2)

---

### BATCH 14 — R_0291 → R_0293

#### R_0291
- **Topic**: `lifestyle` / `subtopic`: "lối sống tối giản"
- **Title gợi ý**: ミニマリストの生活
- **Grammar trọng tâm**:
  1. `～ようになっている` (lần 3 — giới hạn 2) → đổi: `～ように` — sao cho
  2. `～さえ` (lần 3 — giới hạn 2) → đổi: `～こそ` — chính là
  3. `～わけではない` — không hẳn là

#### R_0292
- **Topic**: `transportation` / `subtopic`: "đi xe đạp đi học"
- **Title gợi ý**: 自転車通学
- **Grammar trọng tâm**:
  1. `～ことにしている` (đã giới hạn) → đổi: `～ことになっている` (lần 4 — giới hạn 3) → chấp nhận lặp 4 cho grammar nhóm こと
  2. `～にとって` (đã giới hạn 3) → đổi: `～にかわって／にかわり` — thay cho
  3. `～たとたん(に)` — ngay khi (lần 2)

#### R_0293
- **Topic**: `season` / `subtopic`: "lá đỏ mùa thu (kouyou)"
- **Title gợi ý**: 紅葉狩り
- **Grammar trọng tâm**:
  1. `～から～にかけて` (giới hạn) → đổi: `～にわたって` (lần 2)
  2. `～にしたがって` (lần 3 — giới hạn 2) → chấp nhận
  3. `～ような／ように` (lần 3 — chấp nhận lặp grammar phổ thông)

---

### BATCH 15 — R_0294 → R_0296

#### R_0294
- **Topic**: `meeting` / `subtopic`: "họp nhóm tại công ty"
- **Title gợi ý**: 社内ミーティング
- **Grammar trọng tâm**:
  1. `～において／における` (lần 4 — giới hạn 3 → chấp nhận)
  2. `～に対し` — đối với, tương phản
  3. `～ことにしている` — thói quen (lần 4 — chấp nhận)

#### R_0295
- **Topic**: `announcement` / `subtopic`: "thông báo từ phường"
- **Title gợi ý**: 区役所からのお知らせ
- **Grammar trọng tâm**:
  1. `～ということだ` — nghe nói (lần 2)
  2. `～にもとづいて` — dựa trên (lần 2)
  3. `～際は` — khi, lúc (lần 4 — chấp nhận)

#### R_0296
- **Topic**: `volunteer_work` / `subtopic`: "dạy tiếng Nhật cho người nước ngoài" (khác volunteer đã có)
- **Title gợi ý**: 日本語ボランティア
- **Grammar trọng tâm**:
  1. `～として` — với tư cách (lần 4 — chấp nhận)
  2. `～にとって` (lần 4 — chấp nhận)
  3. `～ばかりでなく` — không chỉ (lần 2)

---

### BATCH 16 — R_0297 → R_0299

#### R_0297
- **Topic**: `health_care` / `subtopic`: "đi khám răng" (khác health đã có)
- **Title gợi ý**: 歯医者に行く
- **Grammar trọng tâm**:
  1. `～ないことはない／～ないこともない` — không phải là không
  2. `～しかない／ほかない／よりない` — không còn cách nào khác ngoài
  3. `～たとたん(に)` (lần 3 — chấp nhận)

#### R_0298
- **Topic**: `souvenir` / `subtopic`: "quà lưu niệm Nhật"
- **Title gợi ý**: お土産の文化
- **Grammar trọng tâm**:
  1. `～をはじめ` — đứng đầu là (lần 3 — chấp nhận)
  2. `～って` — khẩu ngữ (lần 4 — chấp nhận)
  3. `～など／なんか／なんて` (lần 4 — chấp nhận)

#### R_0299
- **Topic**: `seasonal_food` / `subtopic`: "đồ ngọt mùa hè (kakigori)" (khác food đã có)
- **Title gợi ý**: かき氷の魅力
- **Grammar trọng tâm**:
  1. `～って` (lần 5 — chấp nhận, grammar phổ thông)
  2. `～らしい` (lần 4 — chấp nhận)
  3. `～と言われる` (chưa trong list) → đổi: `～とか` — nghe nói là, hình như

---

### BATCH 17 — R_0300 → R_0302

#### R_0300
- **Topic**: `routine` / `subtopic`: "thói quen ngủ trưa"
- **Title gợi ý**: 昼寝の効果
- **Grammar trọng tâm**:
  1. `～に決まっている` — chắc chắn là
  2. `～ように` — để mà (lần 6 — chấp nhận)
  3. `～ぎみ` — hơi (lần 3 — chấp nhận)

#### R_0301
- **Topic**: `culture` / `subtopic`: "văn hóa cúi chào (ojigi)" (khác culture đã có)
- **Title gợi ý**: お辞儀の意味
- **Grammar trọng tâm**:
  1. `～によって` — tùy theo (lần 5 — chấp nhận grammar nhóm cốt lõi)
  2. `～において` — tại, ở (lần 5 — chấp nhận)
  3. `～とは／というのは` — nghĩa là (lần 2)

#### R_0302
- **Topic**: `event` / `subtopic`: "sinh nhật bạn bè" (khác event đã có)
- **Title gợi ý**: 友達の誕生日会
- **Grammar trọng tâm**:
  1. `～をこめて` — với tất cả (lần 2)
  2. `～てほしい／もらいたい` — muốn ai (lần 2)
  3. `～たびに` (đã dùng plan cũ) → đổi: `～につれ(て)` (lần 5 — chấp nhận)

---

### BATCH 18 — R_0303 → R_0305

#### R_0303
- **Topic**: `nature` / `subtopic`: "tuyết đầu mùa" (khác nature đã có)
- **Title gợi ý**: 初雪の朝
- **Grammar trọng tâm**:
  1. `～みたいだ` (lần 4 — chấp nhận)
  2. `～たとたん` (lần 4 — chấp nhận)
  3. `～ようがない／ようもない` — không có cách nào (lần 2)

#### R_0304
- **Topic**: `internet_etiquette` / `subtopic`: "phép lịch sự khi nhắn tin"
- **Title gợi ý**: メッセージのマナー
- **Grammar trọng tâm**:
  1. `～わけがない` — không có lý nào
  2. `～わけではない` — không hẳn là (lần 2)
  3. `～って` (lần 6 — chấp nhận, khẩu ngữ phổ thông)

#### R_0305
- **Topic**: `study` / `subtopic`: "ôn thi học kỳ" (khác education/study đã có)
- **Title gợi ý**: 期末試験の勉強
- **Grammar trọng tâm**:
  1. `～からといって` — không phải vì ~ mà
  2. `～ば～ほど` (lần 5 — chấp nhận)
  3. `～さえ` (lần 4 — chấp nhận)

---

### BATCH 19 — R_0306 → R_0308

#### R_0306
- **Topic**: `tradition` / `subtopic`: "lễ Obon"
- **Title gợi ý**: お盆の過ごし方
- **Grammar trọng tâm**:
  1. `～にあたり` (chưa trong list) → đổi: `～際に` (lần 5 — chấp nhận)
  2. `～にわたって` — trải dài (lần 3 — chấp nhận)
  3. `～を中心に` — lấy ~ làm trung tâm (lần 2)

#### R_0307
- **Topic**: `parenting` / `subtopic`: "đọc sách cho con nghe" (khác family đã có)
- **Title gợi ý**: 子供への読み聞かせ
- **Grammar trọng tâm**:
  1. `～を通じて` (lần 3 — chấp nhận)
  2. `～につれて` — càng ~ thì (lần 6 — chấp nhận)
  3. `～ように` (lần 7 — chấp nhận, mục đích phổ thông)

#### R_0308
- **Topic**: `outdoor` / `subtopic`: "cắm trại cuối tuần"
- **Title gợi ý**: 週末のキャンプ
- **Grammar trọng tâm**:
  1. `～ものだから` — bởi vì (lần 3)
  2. `～たびに` (đã giới hạn plan cũ) → đổi: `～につけ` (chưa trong list) → `～たとたん` (lần 5 — chấp nhận)
  3. `～らしい` (lần 5 — chấp nhận)

---

### BATCH 20 — R_0309 → R_0311

#### R_0309
- **Topic**: `restaurant` / `subtopic`: "ăn ở quán izakaya"
- **Title gợi ý**: 居酒屋の雰囲気
- **Grammar trọng tâm**:
  1. `～みたいだ` (lần 5 — chấp nhận)
  2. `～など／なんか／なんて` (lần 5 — chấp nhận)
  3. `～によって` — tùy theo (lần 6 — chấp nhận)

#### R_0310
- **Topic**: `housing` / `subtopic`: "tìm phòng trọ" (khác housing đã có)
- **Title gợi ý**: アパート探し
- **Grammar trọng tâm**:
  1. `～向き` — phù hợp với (lần 2)
  2. `～向け` — dành cho (lần 2)
  3. `～わりに` — so với (lần 2)

#### R_0311
- **Topic**: `school` / `subtopic`: "ngày khai giảng"
- **Title gợi ý**: 入学式の思い出
- **Grammar trọng tâm**:
  1. `～際に／際は` (lần 6 — chấp nhận)
  2. `～にあたり` → `～について` (lần 5 — chấp nhận)
  3. `～をこめて` (lần 3 — chấp nhận)

---

### BATCH 21 — R_0312 → R_0314

#### R_0312
- **Topic**: `nature` / `subtopic`: "biển mùa hè" (khác nature đã có)
- **Title gợi ý**: 夏の海
- **Grammar trọng tâm**:
  1. `～から～にかけて` (lần 5 — chấp nhận)
  2. `～ば～ほど` (lần 6 — chấp nhận)
  3. `～らしい` (lần 6 — chấp nhận)

#### R_0313
- **Topic**: `health` / `subtopic`: "uống đủ nước" (khác health đã có)
- **Title gợi ý**: 水分補給の大切さ
- **Grammar trọng tâm**:
  1. `～おそれがある` — có nguy cơ (lần 2)
  2. `～がち` — hay (lần 4 — chấp nhận)
  3. `～ようにする` (đã dùng plan cũ) → đổi: `～ように` (lần 8 — chấp nhận)

#### R_0314
- **Topic**: `friendship` / `subtopic`: "lần đầu gặp lại bạn cấp 3"
- **Title gợi ý**: 高校時代の友達と再会
- **Grammar trọng tâm**:
  1. `～ぶり` (chưa trong list) → đổi: `～て以来` (lần 2)
  2. `～って` (lần 7 — chấp nhận khẩu ngữ)
  3. `～たところ` — khi thử thì (lần 4 — chấp nhận)

---

### BATCH 22 — R_0315 → R_0317

#### R_0315
- **Topic**: `daily` / `subtopic`: "đi siêu thị buổi tối"
- **Title gợi ý**: 夕方のスーパー
- **Grammar trọng tâm**:
  1. `～ところに／へ／を／で` — đúng lúc (lần 2)
  2. `～ことになっている` (lần 5 — chấp nhận)
  3. `～みたいだ` (lần 6 — chấp nhận)

#### R_0316
- **Topic**: `tradition` / `subtopic`: "tea ceremony lần đầu" (khác culture/食 đã có)
- **Title gợi ý**: 初めての茶会
- **Grammar trọng tâm**:
  1. `～にもとづいて` (lần 3 — chấp nhận)
  2. `～通り／どおり` — đúng như (lần 3 — chấp nhận)
  3. `～をもとに` — dựa vào, lấy làm cơ sở

#### R_0317
- **Topic**: `social_life` / `subtopic`: "tham gia câu lạc bộ trong cộng đồng"
- **Title gợi ý**: 地域サークルへの参加
- **Grammar trọng tâm**:
  1. `～をきっかけに／にして／として` — nhân dịp
  2. `～を通じて／通して` (lần 4 — chấp nhận)
  3. `～において` (lần 6 — chấp nhận)

---

### BATCH 23 — R_0318 (1 bài cuối)

#### R_0318
- **Topic**: `personal` / `subtopic`: "viết thư cảm ơn"
- **Title gợi ý**: 感謝の手紙を書く
- **Grammar trọng tâm**:
  1. `～をこめて` — với tất cả tình cảm (lần 4 — chấp nhận)
  2. `～てみせる` — sẽ ~ cho xem, quyết tâm
  3. `～に対し` — đối với (lần 2)

---

## 6. Master grammar cheat-sheet (cho agent — 30 grammar dùng nhiều nhất)

> Agent KHÔNG cần truy DB. Pattern + meaning rút gọn để dùng khi viết bài + viết guide.

| Title | Pattern | Nghĩa ngắn |
|-------|---------|-----------|
| ～ことにしています | Vる/Vない + ことにしている | tự đặt thói quen |
| ～ことになっています | Vる/Vない + ことになっている | quy định khách quan |
| ～ような／ように | Nのような／ように | giống như, theo cách |
| ～みたいだ | N/普通形 + みたいだ | có vẻ, giống như (khẩu ngữ) |
| ～らしい | N/普通形 + らしい | nghe nói / đúng kiểu |
| ～てくる | Vて + くる | bắt đầu / dần dần |
| ～について | Nについて | về, liên quan |
| ～から～にかけて | Nから〜Nにかけて | từ ~ đến ~ |
| ～だらけ | N + だらけ | đầy, toàn là (tiêu cực) |
| ～ぎみ | Nぎみ／Vますぎみ | hơi, có vẻ |
| ～ものだから／もので | 普通形 + ものだから | bởi vì (biện hộ) |
| ～がち | Nがち／Vますがち | hay, thường (tiêu cực) |
| ～ほど | 普通形 + ほど | đến mức |
| ～ば～ほど | Vば〜Vるほど | càng ~ càng ~ |
| ～ほど～ない | NほどNない | không ~ bằng ~ |
| ～たとたん(に) | Vた + とたん | ngay khi |
| ～最中(に) | N の/Vている + 最中 | đang giữa lúc |
| ～につれ(て) | N／Vる + につれて | càng ~ thì càng |
| ～にしたがって | N／Vる + にしたがって | theo, cùng với |
| ～において／における | Nにおいて | tại, ở (formal) |
| ～にとって | Nにとって | đối với (quan điểm) |
| ～による／により／によって | N + によって | do, bởi, tùy theo |
| ～として | Nとして | với tư cách là |
| ～はもちろん | Nはもちろん | đương nhiên là |
| ～にわたって | Nにわたって | trải dài, kéo dài |
| ～際に／際は | N の/Vる + 際に | khi, lúc |
| ～を通じて／通して | Nを通じて | thông qua |
| ～って | 普通形 + って | khẩu ngữ trích dẫn |
| ～ように | Vる/Vない + ように | để mà, sao cho |
| ～って (chủ đề) | Nって | "thì" khẩu ngữ |

---

## 7. Hướng dẫn agent thực thi

Mỗi agent xử lý **1 BATCH = 3 bài**. Prompt agent phải gồm:

1. Đọc `READING_SPEC.md` để nắm schema chuẩn
2. Đọc 1 bài mẫu trong [batch_0168_0170.json](batch_0168_0170.json) để học style guide cấp 5
3. Viết 3 bài theo block plan của BATCH
4. Output JSON array vào `n3_basic_drafts/batch_NNNN_NNNN.json`
5. **Self-check trước khi output**:
   - sentence_count = len(process)
   - len(comprehension) = 3
   - len(vocabulary) ∈ [8, 12]
   - sentence_count ∈ [12, 15]
   - Mọi field tiếng Việt **CÓ DẤU**
   - 4 đáp án/câu, đúng 1 cái is_correct: true
   - 3 grammar trọng tâm thực sự xuất hiện trong text
   - Mọi sentence trong process khớp y chang câu trong text
   - Guide dùng → và 🔒, KHÔNG dùng ⚠️/💡/🎯

---

## 8. Tổng kết phân bổ

- **67 bài × 3 grammar = 201 slot**
- **103 grammar master**: trung bình mỗi grammar xuất hiện ~2 lần (một số phổ thông như ～ように/～によって/～って lặp 5-8 lần là chấp nhận được vì là grammar nền)
- **20 grammar khó** (にもとづいて, をきっかけに, おそれがある, ないわけにはいかない, わけがない, からといって, ものか, ようがない, ...) sẽ tập trung cho 22 bài N3_advanced sau

**Sau khi xong 67 bài này:**
- N3_basic: 33 (cũ) + 67 (mới) = **100/100** ✅
- N3_advanced: 78 (cũ) + 22 (sẽ làm Phase 2) = **100/100** ✅
