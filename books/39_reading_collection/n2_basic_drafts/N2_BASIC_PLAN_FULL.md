# N2_BASIC PLAN FULL — 110 bài còn lại (R_0351→R_0460)

> Tiếp nối 10 bài pilot R_0341→R_0350 đã hoàn thành. Mục đích: hoàn thiện 120/120 bài N2_basic.

---

## 1. Spec rút gọn (cấp 7)

| Field | Giá trị |
|-------|---------|
| level | 7 |
| level_label | "N2_basic" |
| jlpt | "N2" |
| sentence_count | **15-20** = len(process) |
| comprehension | **4 câu** (1 sự thật + 1 nguyên nhân + 1 phân tích + 1 ý chính) |
| vocabulary | **10-15** từ |
| 4 đáp án/câu, 1 is_correct | bắt buộc |
| guide style | → + 🔒 + ⚠️ + 💡 (KHÔNG dùng 🎯) |
| Văn phong | formal/luận văn (xã hội, kinh tế, văn hoá, khoa học) |

**File output**: `n2_basic_drafts/batch_NNNN_NNNN.json`

---

## 2. Chiến lược spawn agent

**LƯỢT QUA PHIÊN PILOT**: prompt dài + 3 bài/agent → 3/4 agent vượt 32k token output limit, phải retry. Lessons:

→ **Mỗi agent CHỈ XỬ LÝ 1 BÀI**. Spawn 4 agent song song mỗi lần.

→ Prompt phải gọn, yêu cầu báo cáo "<20 từ" sau khi ghi file.

→ 110 bài × 1 agent/bài = 110 agent → ~28 lần spawn 4 song song = ~7 giờ với throughput hiện tại. Hoặc batch **3 bài/agent với prompt gọn hơn** thử lại — risk vượt token nhưng nhanh gấp 3.

**Kế hoạch chia**:
- File output: `batch_03XX_03XX.json` (1 bài/file) cho an toàn schema
- Spawn 4 agent song song mỗi đợt → 28 đợt
- Verify schema bằng python sau mỗi 4 đợt (16 bài)

---

## 3. Topic blacklist (10 đã dùng pilot)

```
society/tỷ lệ sinh giảm
philosophy/ý nghĩa lao động
technology/ChatGPT và sáng tạo
education/giáo dục bắt buộc và bất bình đẳng
economy/kinh tế tuần hoàn
health/tâm thần học hiện đại
culture/wabi-sabi trong nghệ thuật
environment/đa dạng sinh học
sociology/thế hệ Z và giá trị mới
politics/vai trò truyền thông trong dân chủ
```

Plus 111 chủ đề N3 đã dùng (đã liệt trong N3_BASIC_PLAN_PART2.md). Tổng: 121 chủ đề blacklist.

---

## 4. Phân bổ 91 grammar chưa dùng cho 110 bài × 3 = 330 slot

**Nguyên tắc**:
- Mỗi grammar dùng 3-4 lần làm trọng tâm (330/91 ≈ 3.6)
- Pair grammar có ý nghĩa tương đồng vào CÙNG bài (vd ことだから + ことだ + ものだ)
- Grammar khó (にほかならない, ざるを得ない, 矢先に, からして, 踏まえて) chia đều khắp
- Grammar khẩu ngữ (っぱなし, っこない, げ, きり) phù hợp bài đời sống/tâm sự
- Grammar formal-cao (に先立って, を契機に, にあたって, に際して, にとどまらず) phù hợp bài luận văn/quy chế

---

## 5. KHUNG 110 BÀI — chia thành 28 ĐỢT × 4 bài (1 đợt cuối 2 bài)

> Mỗi bài có topic + subtopic mới + 3 grammar trọng tâm. ID R_0351→R_0460.

### ĐỢT 1 — R_0351-R_0354
- **R_0351** society / "khoảng cách thế hệ trong gia đình" — ことだから, ものだ, ばかりか
- **R_0352** technology / "metaverse và xã hội ảo" — ことなく, 上に, ものの
- **R_0353** economy / "thương mại điện tử xuyên biên giới" — 以上は, まで, を...として
- **R_0354** culture / "lễ hội tuyết Sapporo" — ものやら, だの…だの, にこたえて

### ĐỢT 2 — R_0355-R_0358
- **R_0355** education / "thi đại học và áp lực" — にしては, のもとで, はともかく
- **R_0356** sport / "marathon và sức khỏe tinh thần" — も…ば～も, っぱなし, っこない
- **R_0357** psychology / "burnout ở giáo viên" — きり, げ, なんて
- **R_0358** environment / "đảo nhiệt đô thị (heat island)" — にすぎない, あげく, べき

### ĐỢT 3 — R_0359-R_0362
- **R_0359** social / "phong trào MeToo Nhật Bản" — というより, にかかわらず, にもかかわらず
- **R_0360** disaster / "cảnh báo sóng thần" — あまりに, にあたって, に際して
- **R_0361** career / "career change tuổi 40" — 末に, を契機に, を問わず
- **R_0362** art / "nghệ thuật origami hiện đại" — かのようだ, からいうと, もかまわず

### ĐỢT 4 — R_0363-R_0366
- **R_0363** philosophy / "thiền và tỉnh thức" — ぬく, ばかりに, ところを
- **R_0364** technology / "robot chăm sóc người già" — たところで, ことから, ことにする
- **R_0365** family / "cha mẹ già và con cái" — ことか, ないことには, というものだ
- **R_0366** workplace / "văn hóa làm việc đêm" — ものなら, どころか, どころではない

### ĐỢT 5 — R_0367-R_0370
- **R_0367** society / "luật về giới tính tại Nhật" — だけに, だけあって, 上(じょう)
- **R_0368** economy / "đồng yên yếu và du lịch" — 上(で), まい, ないではいられない
- **R_0369** language / "phương ngữ Kansai và bản sắc" — に限る, に限らず, に限って
- **R_0370** travel / "ryokan và văn hóa hospitality" — か～ないかのうちに, と思ったら, に先立って

### ĐỢT 6 — R_0371-R_0374
- **R_0371** transportation / "shinkansen và phát triển vùng" — ずにすむ, にしたら, かねる
- **R_0372** psychology / "stress và sức khoẻ tim mạch" — かねない, 次第, 次第で
- **R_0373** sociology / "kekkon-katsudou (婚活)" — 次第だ, 限り, と見えて
- **R_0374** culture / "manga và xuất khẩu văn hoá" — というと, といっても, にかけては

### ĐỢT 7 — R_0375-R_0378
- **R_0375** food / "văn hoá kaiseki và mùa vụ" — か, にしろ, のみ
- **R_0376** education / "song ngữ trẻ em Nhật-Việt" — のみならず, にほかならない, ざるを得ない
- **R_0377** social / "single mom và xã hội" — ては…ては, 矢先に, にとどまらず
- **R_0378** science / "miễn dịch và lão hoá" — には...が, からして, というか…というか

### ĐỢT 8 — R_0379-R_0382
- **R_0379** environment / "carbon neutral 2050" — にこしたことはない, ようにも...ない, 踏まえて
- **R_0380** economy / "khủng hoảng nhân khẩu học" — は...にかかっている, ようとする, ようではないか
- **R_0381** technology / "tự động lái xe cấp 5" — ことだから, ものだ, ばかりか (lặp với R_0351 — chấp nhận)
- **R_0382** culture / "sumo và truyền thống" — ことなく, 上に, ものの (lặp với R_0352)

### ĐỢT 9 — R_0383-R_0386
- **R_0383** social / "tình nguyện vùng nông thôn" — 以上は, まで, を...として
- **R_0384** workplace / "remote work hậu COVID" — ものやら, だの…だの, にこたえて
- **R_0385** psychology / "rối loạn ăn uống" — にしては, のもとで, はともかく
- **R_0386** travel / "tàu vintage Nhật Bản" — も…ば～も, っぱなし, っこない

### ĐỢT 10 — R_0387-R_0390
- **R_0387** education / "homeschooling Nhật Bản" — きり, げ, なんて
- **R_0388** sport / "judo trong giáo dục" — にすぎない, あげく, べき
- **R_0389** family / "thừa kế và mâu thuẫn anh em" — というより, にかかわらず, にもかかわらず
- **R_0390** environment / "rừng nhân tạo Nhật Bản" — あまりに, にあたって, に際して

### ĐỢT 11 — R_0391-R_0394
- **R_0391** career / "nội trú bác sĩ trẻ" — 末に, を契機に, を問わず
- **R_0392** art / "ukiyoe trong văn hoá pop" — かのようだ, からいうと, もかまわず
- **R_0393** philosophy / "ikigai và ý nghĩa cuộc sống" — ぬく, ばかりに, ところを
- **R_0394** technology / "5G và cách mạng IoT" — たところで, ことから, ことにする

### ĐỢT 12 — R_0395-R_0398
- **R_0395** social / "homeless ở Tokyo" — ことか, ないことには, というものだ
- **R_0396** workplace / "salaryman và overtime" — ものなら, どころか, どころではない
- **R_0397** society / "luật bảo vệ trẻ em" — だけに, だけあって, 上(じょう)
- **R_0398** economy / "lương tối thiểu Nhật Bản" — 上(で), まい, ないではいられない

### ĐỢT 13 — R_0399-R_0402
- **R_0399** language / "katakana và từ ngoại lai" — に限る, に限らず, に限って
- **R_0400** travel / "chợ cá Tsukiji huyền thoại" — か～ないかのうちに, と思ったら, に先立って
- **R_0401** transportation / "xe buýt cộng đồng vùng quê" — ずにすむ, にしたら, かねる
- **R_0402** psychology / "kodokushi (chết cô đơn)" — かねない, 次第, 次第で

### ĐỢT 14 — R_0403-R_0406
- **R_0403** sociology / "low birth rate và immigration" — 次第だ, 限り, と見えて
- **R_0404** culture / "trà đạo cho người trẻ" — というと, といっても, にかけては
- **R_0405** food / "obento và văn hoá" — か, にしろ, のみ
- **R_0406** education / "trường quốc tế Nhật Bản" — のみならず, にほかならない, ざるを得ない

### ĐỢT 15 — R_0407-R_0410
- **R_0407** social / "tình nguyện thiên tai 311" — ては…ては, 矢先に, にとどまらず
- **R_0408** science / "khám phá vũ trụ JAXA" — には...が, からして, というか…というか
- **R_0409** environment / "tái chế nhựa Nhật Bản" — にこしたことはない, ようにも...ない, 踏まえて
- **R_0410** economy / "kinh tế bạc (silver economy)" — は...にかかっている, ようとする, ようではないか

### ĐỢT 16 — R_0411-R_0414
- **R_0411** technology / "AI và y khoa chẩn đoán" — ことだから, ものだ, ばかりか
- **R_0412** culture / "rakugo và truyền thống kể chuyện" — ことなく, 上に, ものの
- **R_0413** social / "thế hệ thứ hai người nhập cư" — 以上は, まで, を...として
- **R_0414** workplace / "công ty gia đình Nhật" — ものやら, だの…だの, にこたえて

### ĐỢT 17 — R_0415-R_0418
- **R_0415** psychology / "self-help và phát triển bản thân" — にしては, のもとで, はともかく
- **R_0416** travel / "đảo Naoshima nghệ thuật" — も…ば～も, っぱなし, っこない
- **R_0417** education / "luyện thi cấp 1 dữ dội" — きり, げ, なんて
- **R_0418** sport / "esport và thanh niên Nhật" — にすぎない, あげく, べき

### ĐỢT 18 — R_0419-R_0422
- **R_0419** environment / "ô nhiễm tiếng ồn đô thị" — というより, にかかわらず, にもかかわらず
- **R_0420** disaster / "động đất Kanto 1923 ký ức" — あまりに, にあたって, に際して
- **R_0421** career / "phụ nữ trong khoa học STEM" — 末に, を契機に, を問わず
- **R_0422** art / "bonsai như nghệ thuật sống" — かのようだ, からいうと, もかまわず

### ĐỢT 19 — R_0423-R_0426
- **R_0423** philosophy / "shinto và bản sắc Nhật" — ぬく, ばかりに, ところを
- **R_0424** technology / "drone và nông nghiệp" — たところで, ことから, ことにする
- **R_0425** family / "thế hệ giúp đỡ ông bà" — ことか, ないことには, というものだ
- **R_0426** workplace / "harassment và văn hoá im lặng" — ものなら, どころか, どころではない

### ĐỢT 20 — R_0427-R_0430
- **R_0427** society / "LGBTQ và pháp luật" — だけに, だけあって, 上(じょう)
- **R_0428** economy / "fintech và ngân hàng truyền thống" — 上(で), まい, ないではいられない
- **R_0429** language / "kanji giảm dần ở giới trẻ" — に限る, に限らず, に限って
- **R_0430** travel / "homestay vùng nông thôn" — か～ないかのうちに, と思ったら, に先立って

### ĐỢT 21 — R_0431-R_0434
- **R_0431** transportation / "xe điện EV ở Nhật" — ずにすむ, にしたら, かねる
- **R_0432** psychology / "trầm cảm sau sinh" — かねない, 次第, 次第で
- **R_0433** sociology / "sự cô đơn và tuổi trẻ" — 次第だ, 限り, と見えて
- **R_0434** culture / "kabuki cho khán giả mới" — というと, といっても, にかけては

### ĐỢT 22 — R_0435-R_0438
- **R_0435** food / "lên men và sức khoẻ Nhật" — か, にしろ, のみ
- **R_0436** education / "học suốt đời sau hưu" — のみならず, にほかならない, ざるを得ない
- **R_0437** social / "tự sát ở thanh niên" — ては…ては, 矢先に, にとどまらず
- **R_0438** science / "Nobel Vật lý Nhật" — には...が, からして, というか…というか

### ĐỢT 23 — R_0439-R_0442
- **R_0439** environment / "rạn san hô Okinawa nguy cấp" — にこしたことはない, ようにも...ない, 踏まえて
- **R_0440** economy / "Abenomics di sản" — は...にかかっている, ようとする, ようではないか
- **R_0441** technology / "blockchain trong y tế" — ことだから, ものだ, ばかりか
- **R_0442** culture / "kimono trong thời hiện đại" — ことなく, 上に, ものの

### ĐỢT 24 — R_0443-R_0446
- **R_0443** social / "ageing society 2050" — 以上は, まで, を...として
- **R_0444** workplace / "hiking công ty và quan hệ" — ものやら, だの…だの, にこたえて
- **R_0445** psychology / "mindfulness ở Nhật" — にしては, のもとで, はともかく
- **R_0446** travel / "đảo Yakushima rừng cổ" — も…ば～も, っぱなし, っこない

### ĐỢT 25 — R_0447-R_0450
- **R_0447** education / "STEAM và sáng tạo trẻ em" — きり, げ, なんて
- **R_0448** sport / "Olympic Tokyo 2020 di sản" — にすぎない, あげく, べき
- **R_0449** family / "ly hôn xám tuổi 60" — というより, にかかわらず, にもかかわらず
- **R_0450** environment / "biển nội Setouchi" — あまりに, にあたって, に際して

### ĐỢT 26 — R_0451-R_0454
- **R_0451** career / "phỏng vấn shukatsu khắc nghiệt" — 末に, を契機に, を問わず
- **R_0452** art / "graffiti và nghệ thuật đường phố Tokyo" — かのようだ, からいうと, もかまわず
- **R_0453** philosophy / "wabi và xã hội tiêu thụ" — ぬく, ばかりに, ところを
- **R_0454** technology / "VR trong giáo dục" — たところで, ことから, ことにする

### ĐỢT 27 — R_0455-R_0458
- **R_0455** social / "thiếu thuốc men ở vùng quê" — ことか, ないことには, というものだ
- **R_0456** workplace / "nenpou và cải cách lương" — ものなら, どころか, どころではない
- **R_0457** society / "giáo dục bắt buộc tiếng Anh" — だけに, だけあって, 上(じょう)
- **R_0458** economy / "thương mại tự do TPP" — 上(で), まい, ないではいられない

### ĐỢT 28 — R_0459-R_0460 (2 bài cuối)
- **R_0459** language / "kanji 2136 jouyou và áp lực" — に限る, に限らず, に限って
- **R_0460** future / "Society 5.0 và tương lai Nhật" — か～ないかのうちに, と思ったら, に先立って

---

## 6. Workflow execution

1. Em sẽ spawn 4 agent song song mỗi đợt
2. Sau mỗi 4 đợt (16 bài) sẽ verify schema bằng python (đếm "。", check forbidden 🎯, kiểm process[i].sentence in text)
3. Bài nào fail → fix nhanh (xoá process thừa hoặc chỉnh sentence_count)
4. **TRÁNH lỗi token 32k**: prompt yêu cầu báo cáo "<20 từ", chỉ 1 bài/agent

Total: **28 đợt** spawn. Em sẽ chạy đến khi đủ 110 bài.

---

## 7. Sau khi xong N2_basic 120/120

Phase tiếp theo:
- N2_advanced (cấp 8): 120 bài, sentence 18-22, comprehension 4 câu, vocab 10-15, guide có thêm phân tích nhân hoá/ẩn dụ
- Total dự án sau N2: **460/1000 (46%)**

Còn N1 (210 bài) + Native (210) là 2 phase cuối.
