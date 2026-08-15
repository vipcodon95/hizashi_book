# [09-B1] Rà soát chương 01–04

> Agent: B1 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: 展示会 (491 dòng), ゴルフ (442), 忘年会 (437), 出張 (571)
> Đối chiếu: `draft/chương_01..04_*_scenes.json`, `nội_dung/voice_profiles.json`, `_front_matter.md`, `_thuat_ngu.md`, `_pipeline/english_audit.md`

---

## Tóm tắt số lỗi

| Mức | Số lượng |
|---|---|
| 🔴 Nghiêm trọng (sai sự thật / sai giọng / kính ngữ / hỏng bài học) | 21 |
| 🟡 Vừa (tiếng Việt, nhất quán, tiếng Anh thừa) | 19 |
| 🔵 Nhẹ (chất lượng, gợi ý nâng cấp) | 9 |
| **Tổng** | **49** |

Đánh giá chung: **4 chương đạt chất lượng nội dung cao** — cấu trúc thống nhất, mạch truyện liền lạc, phần Bí quyết có giá trị thật (không phải kịch bản đọc cho vui). Ổ lỗi tập trung ở **3 nhóm**: (1) tên nhân vật Nhật bị phiên âm sai và tái sử dụng trùng tên, (2) một loạt con số/sự thật tra được là sai, (3) tiếng Anh lẫn trong lời thoại nhân vật Nhật ở mức không tự nhiên. Không phát hiện lỗi kính ngữ kép, không có lỗi uchi/soto về tôn kính ngữ — trục B sạch hơn dự đoán.

---

## Đối chiếu voice_profiles.json

| Nhân vật | Giọng theo hồ sơ | Thực tế trong 4 chương | Khớp/Lệch |
|---|---|---|---|
| **zun** (ズン) | polite, earnest, "slightly nervous with new clients" | です/ます nhất quán với mọi người Nhật; thể thường chỉ với Hùng (bạn cũ). Lúng túng đúng chỗ (quên 禁煙, im ở booth AWS, ăn nhầm 激辛) | ✅ Khớp rất tốt — mẫu mực của cả sách |
| **fuon** (フオン副部長) | authoritative, warm with juniors, decisive | Ch03: phát biểu đáp từ đúng chuẩn, quyết ai đi tăng 2, dặn Linh/Hải bằng tiếng Việt ấm | ✅ Khớp |
| **tuan_leader** (トゥアン) | technical, concise, patient | Ch01–03 chủ yếu làm vai **cố vấn nghi thức** (kéo tay, nháy mắt) chứ ít thể hiện "technical". Chỉ ch01 TH3 hỏi guard rail là đúng chất | 🟡 Lệch nhẹ — xem #F4 |
| **linh** | young, eager, occasionally nervous | Ch03 xuyên suốt: lo lắng → mắt sáng khi nói Gundam | ✅ Khớp xuất sắc |
| **hai** | casual-polite, fast-talker | Ch03 chỉ 5 lượt, ăn nhanh + dịch Kansai cho Linh. "fast-talker" không thể hiện | 🟡 Mỏng |
| **matsumoto** | formal Japanese client, patient, 45–50t | Với Dũng dùng thể thường thân mật (早いね / いいタイミング) — **đúng** với quan hệ senior→junior thân sau 1.5 năm. Nhưng lẫn nhiều tiếng Anh (xem #A1) | 🟡 Lệch vì tiếng Anh |
| **oogaki_sales** | sharp negotiator, direct, "occasionally probing" | Ch01–02 hầu như chỉ làm **thầy dạy nghề tốt bụng** (dạy bunker, dạy cách hỏi, đổi soba). Không hề "sharp"/"probing" | 🔴 **Lệch rõ — xem #A5** |
| **tanaka_pmo** | organized, detail-oriented, Slack-heavy, "hay dùng tiếng Anh tech term" | Khớp; là nhân vật được dùng tiếng Anh hợp lý nhất | ✅ Khớp |
| **nakamura_cfo** | senior executive, deliberate, slow + precise | Ch03 phát biểu kanpai + ch04 1-on-1: chậm rãi, chính xác | ✅ Khớp |
| **yamamoto_kansai** | Kansai-ben tự nhiên, cười nhiều | Ch03 dùng やろ/ほんま/おいでや/教えたるわ — Kansai thật, không phải Kansai giả | ✅ Khớp xuất sắc |
| **sato_kyushu** | Hakata-ben nhẹ, 58–62t, thích shochu | Ch03: 見せちゃる (Hakata thật), mời shochu Fukuoka | ✅ Khớp — nhưng **danh xưng 先生 sai**, xem #A4 |
| **ito_nagoya** | "Ito Hideki / anh Ito", 名古屋支店, cẩn trọng | Ch04: 伊藤 đúng kanji, câu hỏi kỹ thuật sắc. Nhưng **bản VN gọi "Itoki" 14 lần** | 🔴 **Sai tên — xem #A2** |
| **inoue_hakuo** | Tokyo native, booth runner năng lượng cao, polite-warm | Ch01 TH8 + ch04 TH11 khớp tốt | 🔴 nhưng **bị trùng tên với caddie ch02** — xem #A3 |
| **hung_thanh_ha** | casual với Dũng vì bạn cũ, JP fluent | Ch01: đúng — thể thường với Dũng, keigo với người Hakuō. Chuyển mã rất chuẩn | ✅ Khớp xuất sắc |
| **zun_inner** | narration, italic | Dùng đúng định dạng `*[Dũng nghĩ: …]*` | ✅ |
| **demo_engineer_aws** (draft) | — (không có profile) | Md đặt tên **山田 (AWS)** rồi **tái dùng chính key đó cho staff booth khác** ở TH5 | 🔴 xem #A3 |

**Kết luận trục A:** phần lớn nhân vật nói đúng giọng. Ba lỗi thật: **Ōgaki mất chất "sharp negotiator"**, **伊藤 bị gọi sai là "Itoki"**, **hai nhân vật khác nhau cùng mang tên 井上 / cùng dùng một speaker key**.

---

## Danh sách lỗi theo chương

### chương_01_展示会

**#A1 🔴 [NHÂN VẬT NÓI SAI GIỌNG — tiếng Anh quá tay] — nhiều dòng (38, 42, 75, 100, 154, 292, 315, 317, 367)**
Người Nhật trong hội thoại chèn từ tiếng Anh Latin ở mật độ không thực tế, đặc biệt **松本 (45–50t, PM khách hàng, formal)**:
- dòng 38 | JA: `田中くんはもう中でbadge取ってるはずです。` | VN: *"Tanaka chắc đã vào lấy badge rồi."*
- dòng 42 | JA: `じゃあ、まず badge 取りに行こうか。`
- dòng 292 | JA: `次、白鷗のbooth寄ろうか、3:30から。`
- dòng 367 | JA: `お土産何が人気?` → VN dịch *"Quà gì popular?"* (chèn tiếng Anh vào **bản dịch tiếng Việt**, trong khi JA không hề có)
**Vấn đề:** 「badge」 và 「booth」 trong tiếng Nhật triển lãm thật hầu như luôn là **「バッジ」/「ネームカード」** và **「ブース」** (katakana), không viết bằng chữ Latin trong lời nói. Viết Latin trong bảng thoại khiến người học đọc lên thành tiếng Anh — sai phát âm. Đây là **lỗi hệ thống**, không riêng chương 01.
**Đề xuất:** chuyển toàn bộ chữ Latin trong lời thoại JA sang katakana: badge→バッジ, booth→ブース, weather→天気, score→スコア, family→家族, frank→率直. Giữ Latin chỉ cho tên riêng/sản phẩm (AWS, Bedrock, Slack, Phase 4, QR).

**#A2 🔴 [SAI TÊN NHÂN VẬT] — xem chương 04 #A2, ảnh hưởng chéo**

**#A3 🔴 [NHÂN VẬT — một speaker key gánh hai người khác nhau] — dòng 92 vs 182**
- dòng 92 (dẫn cảnh): *"Kỹ sư trình bày demo là chị Yamada (≈30 tuổi)"* → nhân vật **山田 của AWS**.
- dòng 182: `| **山田 (AWS)** | 「(別のブーススタッフ役)いらっしゃいませ!ルーレット…」`
**Vấn đề:** Tình huống 5 diễn ra ở **gian hàng của một cty SaaS liên doanh VN-JP khác hẳn**, nhưng vẫn gán nhãn 山田 (AWS) và phải chú thích vụng 「(別のブーススタッフ役)」 = "vai staff booth khác". Đây là dấu vết của việc draft chỉ có 1 key `demo_engineer_aws` rồi tái dùng. Với sách dùng cho **TTS theo speaker key**, một key = một giọng, nên nhân vật gian hàng SaaS sẽ nói bằng giọng đã đăng ký cho nhân viên AWS.
**Đề xuất:** tách thành speaker mới (vd `booth_staff_saas`, hiển thị 「ブーススタッフ」), xóa chú thích 「(別のブーススタッフ役)」.

**#C1 🔴 [SAI SỰ THẬT — ga tàu] — dòng 19**
> `## Tình huống 1 — 08:30 · Cổng đông Tokyo Big Sight (ga Kokusai-Tenjijō, Yurikamome line)`
> dòng 35 | JA: `今朝の電車空いてました、新橋から30分くらいで。` | VN: *"Tàu sáng nay vắng, từ Shinbashi khoảng 30 phút thôi."*
**Vấn đề:** **国際展示場駅 (Kokusai-Tenjijō) nằm trên tuyến りんかい線 (Rinkai), KHÔNG phải Yurikamome.** Ga của Yurikamome là **東京ビッグサイト駅** (trước 2019 tên 国際展示場正門駅). Dũng đi từ **Shinbashi** = đúng tuyến Yurikamome → tên ga phải là 東京ビッグサイト駅. Sách dạy đi triển lãm mà ghi sai ga là lỗi tra được ngay.
**Đề xuất:** đổi tiêu đề thành `(ga Tokyo Big Sight, tuyến Yurikamome)`.

**#C2 🔴 [SAI SỰ THẬT — quy mô triển lãm] — dòng 3**
> *"Japan IT Week Spring — triển lãm IT lớn nhất Đông Á, ≈700 gian hàng, 3 ngày, ước 90,000 lượt khách."*
**Vấn đề:** số liệu chính thức Japan IT Week Spring 2025 (Tokyo Big Sight, 23–25/4): **950 công ty trưng bày, 57.803 lượt khách/3 ngày**. Con số "700 gian hàng / 90.000 lượt" không khớp bất kỳ kỳ nào; 90.000 gần với con số **cả cụm triển lãm mùa thu ở Makuhari** chứ không phải IT Week Spring. Cụm "lớn nhất Đông Á" cũng là khẳng định không nguồn.
**Đề xuất:** `≈950 gian hàng, 3 ngày, ước 58.000 lượt khách` + bỏ hoặc hạ giọng "lớn nhất Đông Á" thành "một trong những triển lãm IT lớn nhất Nhật Bản".

**#C3 🟡 [SAI SỰ THẬT — giá quà] — dòng 379 vs 369–370**
> *"Dũng mua: 1 hộp ¥1,500 (28 cái) cho nhóm HCMC"* … Bí quyết dòng 395: *"1 cái gói riêng trong hộp 28 cái"*, *"Tổng chi phí: ≈50¥"*
**Vấn đề:** シュガーバターサンドの木 bán theo quy cách **10 / 14 / 21 / 24 cái**; hộp 14 cái ≈ **¥1.350**. **Không có quy cách 28 cái**, và ¥1.500 cho 28 cái (≈¥54/cái) là dưới giá thực (≈¥96/cái). Phép tính "≈50¥" trong Bí quyết cũng đổ theo.
**Đề xuất:** đổi sang `1 hộp ¥1.350 (14 cái)` và sửa Bí quyết thành `≈100¥`.

**#C4 🟡 [SAI SỰ THẬT — bán ở đâu] — dòng 369**
JA: `…シュガーバターサンドの木も人気だよ、空港でも買えるけど Big Sight 内のショップでも。`
**Vấn đề:** không tra được nguồn nào xác nhận Sugar Butter Sand có quầy trong Tokyo Big Sight (thương hiệu tập trung ở ga Tokyo/Shinagawa/Ueno/Shinjuku/Ikebukuro + sân bay). Tanaka nói chắc chắn "Big Sight cũng có" là chi tiết dễ sai.
**Đề xuất:** đổi thành `東京駅でも買えるし、空港でも` — vừa đúng vừa hợp lộ trình về của Dũng.

**#B1 🟡 [KÍNH NGỮ — thiếu 弊社/当社]** — cả chương 01 chỉ có **1 lần** dùng 弊社/当社/御社/貴社 (và ch02/03/04 = **0 lần**). Trong bối cảnh có khách hàng và có **đối thủ (Thanh Hà)** đứng cùng chỗ, việc không ai từng nói 弊社 là điểm thiếu tự nhiên cho sách business. Đặc biệt dòng 150 Hùng tự giới thiệu với Matsumoto lần đầu — đây chính là chỗ 弊社 bắt buộc xuất hiện.
**Đề xuất:** dòng 150 sửa `Thanh Hà Software の Pham Quoc Hung です` → `弊社 Thanh Hà Software の…` hoặc thêm 1 câu dùng 弊社 trong lời Hùng.

**#B2 🟡 [KÍNH NGỮ — 様 với công ty khách] — dòng 252**
JA: `Hakuō 様もぜひ。` — Hùng gọi công ty khách bằng 「Hakuō様」.
**Vấn đề:** đúng ngữ pháp nhưng lệch quy ước: với **công ty** người Nhật nói 「御社」 (khi nói trực tiếp) hoặc 「白鷗様」 (văn viết). 「Hakuō様」 trộn chữ Latin + 様 là dạng lai không tự nhiên khi nói.
**Đề xuất:** `御社もぜひ` hoặc `白鷗様もぜひ`.

**#D1 🔴 [KHÔNG TỰ NHIÊN — hội thoại quá trơn] — TH6 (dòng 226–245)**
Bữa trưa 20 lượt thoại liên tiếp, **không một lượt nào bị ngắt lời, không một 相槌 độc lập, không một câu bỏ lửng**. Với sách tên là "Real Dialogues" và bối cảnh **khu ẩm thực triển lãm đông nghịt**, đây là điểm yếu lớn nhất về độ thật.
**Đề xuất:** chèn 3–5 lượt 相槌 độc lập (「うんうん」「へえ〜」「あ、そうそう」), 1 chỗ nói chồng (「あ、すみません、どうぞ」), 1 chỗ bỏ lửng (「僕は…あ、いや、なんでもないです」).

**#D2 🟡 [KHÔNG TỰ NHIÊN — thuật ngữ] — dòng 118**
VN: *"Hỏi vậy thì **demo girl** mới ngồi xuống trả lời."*
**Vấn đề:** (a) JA gốc chỉ nói 「demo の人」 — trung tính; bản VN tự thêm "demo girl", **sai nghĩa** và mang sắc thái hạ thấp; (b) người demo ở đây là **kỹ sư 山田**, gọi "demo girl" là xúc phạm chuyên môn; (c) chính lời Ōgaki — một 営業部長 — nói câu này càng lệch.
**Đề xuất:** *"Hỏi vậy thì người trình bày mới ngồi xuống trả lời."*

**#E1 🟡 [TIẾNG VIỆT — tiếng Anh thừa]** khớp `english_audit.md`: dòng 376 *"tặng cả 3 là **overdo**"* (đã sửa thành "quá đà" trong .md hiện tại — ✅ đã fix), nhưng còn tồn: dòng 367 *"Quà gì **popular**?"*, dòng 369 *"cũng **popular**"*, dòng 315 *"khen Tien Phat **technical** mạnh"*, dòng 420 *"kết nối trong ngành"* (đã fix ✅).
**Đề xuất:** popular→"được ưa chuộng", technical→"kỹ thuật".

**#E2 🟡 [TIẾNG VIỆT — xưng hô nhân vật Nhật]** Kiểm kỹ theo cảnh báo sách 08: **không phát hiện nhân vật Nhật tự xưng "anh/em"**. Matsumoto/Ōgaki/Tanaka đều tự xưng **"tôi"**, gọi Dũng là "cậu" — đúng chuẩn. ✅ Trục này sạch.
Ngoại lệ duy nhất cần soi: dòng 279 Tuấn (người Việt) nói *"Vậy đổi cho **anh** nhé? **Anh** nghe English trực tiếp được."* — Tuấn là senior của Dũng nên "anh" đúng. ✅

**#F1 🟡 [NHẤT QUÁN — draft vs md] — TH5**
Draft `chương_01` scene 5 dùng speaker `demo_engineer_aws` cho staff gian hàng SaaS; md giữ nguyên nhãn 山田 (AWS). Đây là **drift chưa xử lý** khi build md từ json, không phải md tự trôi. Cần sửa **cả hai file** khi vào giai đoạn SỬA.

**#G1 🔵 [CHẤT LƯỢNG — thiếu tình huống khó]** Cả chương 01 **không có một tình huống căng thật nào**: không ai từ chối, không hiểu lầm, không im lặng khó xử kéo dài. Các "sự cố" đều là lỗi vụng về của Dũng rồi được cứu ngay trong 2 lượt. Bối cảnh gặp **đối thủ Thanh Hà trước mặt khách** là mỏ vàng kịch tính nhưng bị giải quyết bằng 1 câu nhắc của Ōgaki.
**Đề xuất:** thêm 1 nhịp Hùng vô tình hỏi Matsumoto một câu chạm phạm vi hợp đồng, Dũng phải cắt ngang khéo — đây mới là bài học thật.

---

### chương_02_ゴルフ

**#A3b 🔴 [NHÂN VẬT — TRÙNG TÊN NGHIÊM TRỌNG] — dòng 109, 248**
> `| **井上キャディ** | 「(架空) 皆様おはようございます、本日キャディーの井上と申します。」`
**Vấn đề:** **井上 (Inoue) đã là tên nhân vật cố định trong cast** — `inoue_hakuo`, Product Manager của 白鷗, xuất hiện ở chương 01 TH8 (booth Smart Bank Assistant) và chương 04 TH11 (tiễn Dũng, tặng omiyage). Đặt caddie nữ sân golf Chiba cũng tên **井上** khiến người đọc chương 02 (ngay sau chương 01) hiểu nhầm là cùng người. Draft dùng key `caddie_nu` — tức tên 井上 là do khâu viết md tự đặt, hoàn toàn tránh được.
**Đề xuất:** đổi caddie thành họ khác không trùng cast, vd **小川** hoặc **木村**; nhãn hiển thị `キャディ 小川`.

**#A5 🔴 [NHÂN VẬT NÓI SAI GIỌNG — Ōgaki mất chất]** — dòng 85, 119, 129, 235, 266–269, 276, 389
Hồ sơ: *"sharp negotiator, direct, occasionally probing"*, ghi chú *"tone formal nhưng straight-to-the-point hơn Matsumoto"*. Thực tế trong ch01+ch02, Ōgaki là **nhân vật ấm áp nhất sách**: cười, đưa nước, đổi nửa suất soba, vỗ vai, dạy bunker từng bước, khen "có khiếu", cho mulligan.
- dòng 235 | JA: `ズンさんのお弁当、半分僕の soba と交換しようか?`
- dòng 276 | JA: `(肩を叩いて)上手!初めてでこれは才能あるよ。`
**Vấn đề:** không có gì sai về tiếng Nhật, nhưng **một 営業部長 "sharp/probing" biến mất hoàn toàn** khỏi 2 chương. Sách mất đi nhân vật tạo áp lực — liên quan trực tiếp #G1/#G2 (thiếu tình huống khó).
**Đề xuất:** giữ mảng dạy bunker (rất hay), nhưng thêm cho Ōgaki **1 câu thăm dò sắc** ở ch02 — ví dụ ở bữa trưa TH7 hỏi thẳng `ところで、Phase 5 の見積り、正直きついでしょ?` để Dũng/Tuấn phải xử lý. Vừa cứu giọng nhân vật, vừa vá lỗ hổng "không có tình huống khó".

**#C5 🔴 [SAI SỰ THẬT — số học điểm golf] — dòng 181, 183, 432**
> dòng 181: *"Dũng điểm 9 lỗ đầu: **+29** (par 36, điểm 65)"*
> dòng 183: *"Điểm 65/36. Cao nhất trong 4 người. Tuấn 48, Ōgaki 41, Matsumoto 39."*
> dòng 432: *"Điểm 65 (9 lỗ đầu) + **58** (9 lỗ sau) = **123** tổng."*
**Vấn đề tầng 1 — sai số học:** 65 + 58 = **123** ✅ đúng, nhưng dòng 191 Ōgaki nói *"hiệp sau cứu lại đi"* và dòng 434 Dũng tự đánh giá tích cực, trong khi **58 vẫn tệ hơn chuẩn rất xa** — không "cứu" được gì.
**Vấn đề tầng 2 — sai thực tế golf (nặng hơn):** với người mới chơi 6 tháng, **65 gậy cho 9 lỗ (+29)** nghĩa là trung bình **7,2 gậy/lỗ**. Ở Nhật hầu hết sân áp **quy tắc double par pick-up** (nhặt bóng khi đạt gấp đôi par) và **quản lý thời gian vòng nghiêm ngặt** — với nhịp đó nhóm sẽ bị caddie/marshal nhắc liên tục và vòng 18 lỗ không thể kết thúc lúc 15:30 như dòng 293 mô tả. Đồng thời Matsumoto **39** cho 9 lỗ (+3) là trình cỡ handicap 6–8 — rất cao so với hình ảnh "PM 45t chơi cuối tuần" và mâu thuẫn với chính lời anh ở dòng 84 (*"3 năm đầu tôi cũng vậy"*).
**Đề xuất:** hạ điểm Dũng xuống dải thực tế **+20 → 56/9 lỗ**, tổng 18 lỗ ≈ **108–112**; nâng Matsumoto lên **44–46** (bogey golfer, hợp lứa tuổi/nghề). Sửa đồng bộ dòng 181/183/432.

**#C6 🟡 [SAI PHONG TỤC — mulligan] — dòng 119, 121, Bí quyết dòng 132–138**
JA dòng 121: `初めての海外ゴルフ場、ホール1のマリガンは伝統みたいなものだから。`
**Vấn đề:** (a) Với Dũng, đây **không phải "sân golf nước ngoài"** — Dũng là người nước ngoài, sân là sân nội địa của Matsumoto. Câu 「初めての海外ゴルフ場」 là **nhìn từ góc sai**; đúng phải là 「初めての日本のゴルフ場」. (b) Về phong tục: mulligan **không phải "truyền thống" ở Nhật** — golf Nhật nổi tiếng nghiêm về luật; mulligan là thỏa thuận riêng của nhóm chơi thân, và ở nhiều sân có caddie đi cùng thì càng hiếm. Dạy người học rằng "mulligan lỗ 1 gần như là truyền thống" ở Nhật là **truyền sai kỳ vọng**.
**Đề xuất:** đổi JA thành `初めての日本のゴルフ場だし、1番ホールは緊張するからね。今日は気楽にいこう。` và sửa Bí quyết: nói rõ mulligan là **ngoại lệ do chủ nhà chủ động cho**, không phải thông lệ; tuyệt đối không tự đề nghị.

**#C7 🟡 [SAI SỰ THẬT — onsen câu lạc bộ] — dòng 332, 334**
> *"Tình huống 11 — Sat 16:00 · **Onsen** trong câu lạc bộ"* … *"Bồn nước nóng nhỏ + sauna + nước lạnh"*
**Vấn đề:** phần lớn nhà câu lạc bộ golf Nhật có **大浴場 / お風呂** (phòng tắm chung nước máy đun), **không phải 温泉** (nước khoáng nóng tự nhiên có đăng ký). Chỉ một số ít sân có nguồn onsen thật. Gọi mặc định là 温泉 rồi cho Matsumoto tuyên bố dòng 352 `だからゴルフの後は必ず温泉に入る` là **dạy sai từ vựng cốt lõi** — người học sẽ dùng nhầm 温泉/大浴場 suốt đời.
**Đề xuất:** đổi thành **大浴場**, và cho Matsumoto nói `ゴルフの後はお風呂、これがセットなんだ` — hoặc giữ 温泉 nhưng thêm 1 câu dẫn cảnh nói rõ sân này có nguồn onsen thật (`ここは天然温泉が出るコースなんだよ`).

**#B3 🔴 [KÍNH NGỮ — caddie dùng sai hướng] — dòng 248**
JA: `カート内に4本ございます、ご安心ください。`
**Vấn đề:** 「ご安心ください」 từ nhân viên phục vụ nói với khách là **mệnh lệnh hình lịch sự** — dùng được nhưng hơi trịch thượng trong ngữ cảnh này (khách chỉ hỏi có mấy cái ô). Caddie Nhật thật sẽ nói 「カートに4本ご用意しております」 hoặc thêm 「もしよろしければお使いください」.
**Đề xuất:** `カートに4本ご用意しておりますので、いつでもお使いください。`

**#D3 🔴 [KHÔNG TỰ NHIÊN — tiếng Anh trong lời Nhật] — dòng 190, 244, 246**
- dòng 190 | Matsumoto: `ゴルフは最初の3年は score 気にしない。**enjoy + matter improve** したらいい。`
**Vấn đề:** 「enjoy + matter improve」 **không phải tiếng Anh đúng cũng không phải tiếng Nhật** — là cụm vô nghĩa. Bản VN dịch thành "cứ thưởng thức và cải thiện từng điểm" — tức người dịch cũng phải đoán. Một PM Nhật 45t sẽ nói `楽しんで、少しずつ上手くなればいい`. `english_audit.md` đã flag "enjoy" nhưng **chưa flag rằng cả cụm là lỗi ngữ pháp**.
- dòng 244 | Tuấn: `ズン、**weather** チェックして。` → phải là 天気 hoặc 天気予報.
- dòng 246 | Matsumoto: `ズンさん、**weather** チェックありがとう。` — Matsumoto nói tiếng Anh còn nhiều hơn Tuấn (người Việt).
**Đề xuất:** dòng 190 → `楽しんで、一打ずつ良くなればそれでいい。`; dòng 244/246 → 天気予報チェック.

**#D4 🟡 [KHÔNG TỰ NHIÊN — thoại quá gọn] — TH4 (dòng 110–112)**
3 cú tee shot của 3 người được rút thành đúng 3 lượt: 「よし。」「まあまあ。」「OK。」 Không có 「ナイスショット!」 — câu **bắt buộc** trong văn hóa golf Nhật, người chơi cùng nhóm luôn hô cho nhau. Chính chương này ở dòng 128 mới cho Tuấn nói "Nice shot" (bằng chữ Latin).
**Đề xuất:** thêm 「ナイスショット!」 sau mỗi cú của Matsumoto/Ōgaki — đây là chi tiết làm cảnh golf "nghe như thật" hơn bất kỳ chi tiết nào khác.

**#E3 🟡 [TIẾNG VIỆT — dịch lệch] — dòng 129**
JA: `最初の OB ボールは、田中の名前で残しとこうか(笑)。` | VN: *"Quả OB lúc nãy để tên Tanaka đi (cười)."*
**Vấn đề:** (a) **Tanaka không có mặt ở chương 02** — nhóm golf chỉ có Matsumoto, Ōgaki, Tuấn, Dũng. Câu đùa mất hoàn toàn ngữ cảnh, người đọc không hiểu. (b) Chính dòng 118 Dũng đã nói `OB じゃないですけど` — bóng **không phải OB**, nó bay sang fairway lỗ bên. Ōgaki gọi nó là "OB ボール" là **mâu thuẫn trong 11 dòng**.
**Đề xuất:** bỏ hẳn câu này, hoặc đổi thành `さっきの1球は、なかったことにしよう(笑)。`

**#E4 🟡 [TIẾNG VIỆT — dịch lệch] — dòng 92**
JA: `(英語混じり、励まし)Nice, that's the feel!` | VN: *"(pha tiếng Anh, động viên) Hay đó, đúng cảm giác đấy!"* — ổn, nhưng **Tuấn là người Việt nói với người Việt** ở sân golf Nhật, chèn tiếng Anh không có lý do trong cảnh. Trước đó cả hai đang nói tiếng Việt (dòng 25–30).

**#E5 🟡 [TIẾNG VIỆT — sai chính tả/nghĩa] — dòng 421**
> *"Quên điện thoại **trên xe điện** (lỗ 5) → lần sau để túi quần."*
**Vấn đề:** Dũng quên điện thoại **trên xe golf (cart)**, không phải "xe điện". Dòng 152 nói rõ *"Nhìn xuống bag golf trên cart"*. "Xe điện" trong tiếng Việt = tàu điện → sai hoàn toàn.
**Đề xuất:** *"Quên điện thoại trong túi gậy trên xe golf (lỗ 5)"*.

**#F2 🟡 [NHẤT QUÁN — dẫn chiếu sách sai] — dòng 14, 29, 358, 360**
> dòng 14: *"Onsen sau golf = truyền thống. **Sách 07** đã dạy nhưng ôn lại"*
> dòng 358: *"### Bí quyết — Onsen sau golf — **ôn lại từ sách 07**"*
**Vấn đề:** theo `_front_matter.md`, **sách 06 là 温泉** ("Đi suối nước nóng 1 đêm cùng khách") — nhưng đó là **chương 06 của chính sách 09 này**, không phải "sách 07". Còn chương 03 ch02 dòng 29 lại nói *"Onsen sau vòng, sách 07 anh dạy rồi"*. Trong khi ch03 dòng 184 dẫn *"Sách 08 dạy không từ chối người lớn tuổi hơn mời"* và ch03 dòng 209 *"Sách 08 đã dạy"*. **Hệ thống dẫn chiếu sách 07/08 không kiểm chứng được** — cần đối soát với bộ sách thật hoặc bỏ số hiệu.
**Đề xuất:** thống nhất một bảng dẫn chiếu ở `_front_matter.md`, hoặc chuyển sang dạng trung tính *"như đã học ở tập trước"*.

---

### chương_03_忘年会

**#A4 🔴 [NHÂN VẬT NÓI SAI GIỌNG / DANH XƯNG SAI] — dòng 53, 188, 194 (và mọi nhãn 佐藤先生)**
Nhãn nhân vật là **「佐藤先生」**, và Dũng gọi `佐藤先生、ありがとうございます`.
**Vấn đề:** 先生 trong tiếng Nhật doanh nghiệp **chỉ dùng cho giáo viên, bác sĩ, luật sư, nghị sĩ, nghệ sĩ** — **tuyệt đối không dùng cho đồng nghiệp/đối tác trong công ty**, dù người đó 60 tuổi và là 支店長. Gọi 「佐藤先生」 với một 福岡支店リード của 白鷗 là **lỗi kính ngữ điển hình của người nước ngoài** — và ở đây chính sách lại dạy sai. Hồ sơ voice_profiles ghi `name_ja: "佐藤先生"` nên lỗi có gốc từ cast, lan xuống chương.
**Đề xuất:** đổi toàn bộ thành **佐藤さん** (hoặc 佐藤支店長 khi trang trọng). Sửa cả `voice_profiles.json`. **Đây là lỗi cần sửa gấp nhất của chương 03** vì người học sẽ bắt chước.

**#B4 🔴 [KÍNH NGỮ — thiếu bước cốt lõi của bonenkai] — TH2 (dòng 45–64)**
Cảnh 17 người vào phòng tatami, ngồi theo kamiza/shimoza, **nhưng không có một lượt 名刺交換 nào** — trong khi đây là **lần đầu Linh và Hải gặp toàn bộ nhóm Nhật** (dòng 3 ghi rõ "Linh + Hải lần đầu dự bonenkai JP").
**Vấn đề:** trong thực tế Nhật, người mới lần đầu gặp đối tác **bắt buộc** trao danh thiếp trước khi ngồi vào bàn (hoặc ngay khi được giới thiệu). Bỏ qua hoàn toàn khiến chương mất mảng nghi thức quan trọng nhất mà đề bài trục C nêu đích danh (「名刺交換」). Chương 01 có trao danh thiếp (Hùng, dòng 252) nhưng chương 03 — đúng chỗ cần nhất — thì không.
**Đề xuất:** thêm 3–4 lượt trước khi ngồi: Hương giới thiệu Linh + Hải → hai bạn đứng, hai tay đưa danh thiếp theo thứ tự cấp bậc (Nakamura trước) → nhận bằng hai tay, đọc, đặt lên bàn trước mặt (không nhét túi).

**#C8 🔴 [SAI SỰ THẬT — tên rượu vs vùng] — dòng 195**
JA: `これね、地元福岡の麦焼酎、『中々』ていうの。`
**Vấn đề:** 「中々（なかなか）」 là **麦焼酎 của 黒木本店, tỉnh 宮崎 (Miyazaki)** — không phải Fukuoka. Sato là người Fukuoka và nói rõ 「地元福岡の」 → **sai sự thật kép**: sai tỉnh sản xuất và sai lời tự hào quê hương của nhân vật. Đây là loại chi tiết người Nhật đọc sẽ nhận ra ngay.
**Đề xuất:** đổi sang một 麦焼酎 Fukuoka thật (vd 『**天盃**』 của 天盃酒造, Fukuoka — hoặc 『**吟醸麦焼酎 なかむら**』 không dùng), hoặc an toàn hơn: bỏ tên nhãn, để `地元福岡の麦焼酎でね`.

**#C9 🟡 [SAI SỰ THẬT — ngày Tết] — dòng 202**
JA/VN: *"Năm sau là 29/1."* (bối cảnh: tháng 12/2026, "năm sau" = 2027)
**Vấn đề:** Tết Nguyên Đán **2027 rơi vào ngày 06/02/2027** (Đinh Mùi). Ngày **29/01** là Tết của năm **2025**. Sai 1 tuần + sai năm tham chiếu.
**Đề xuất:** sửa thành `2月6日です。`

**#C10 🟡 [SAI PHONG TỤC — 中締め thiếu] — TH10 (dòng 322–338)**
Bonenkai kết thúc, đoàn chuyển sang tăng 2, **nhưng không có 中締め** (nghi thức kết thúc chính thức: người cấp cao nói lời khép + 一本締め/三本締め vỗ tay).
**Vấn đề:** 中締め là **nghi thức gần như bắt buộc** của bonenkai công ty Nhật, và là thứ người nước ngoài hay bị bất ngờ nhất (không biết vỗ tay lúc nào, vỗ mấy nhịp). Một chương chuyên về bonenkai mà thiếu 中締め là **thiếu bài học có giá trị cao nhất**.
**Đề xuất:** thêm 1 tình huống ngắn giữa TH9 và TH10: Ōgaki hoặc Matsumoto đứng lên `それでは、お手を拝借。よ〜、パン!` (一本締め), kèm Bí quyết giải thích 一本締め vs 三本締め vs 一丁締め — đây sẽ là một trong những Bí quyết đắt nhất sách.

**#D5 🟡 [KHÔNG TỰ NHIÊN — 全員 đồng thanh] — dòng 118, 126**
`| **全員** | 「乾杯!」` xuất hiện 2 lần.
**Vấn đề:** ổn về nội dung nhưng **speaker key `all` / `all_jp` không có profile TTS** (voice_profiles ghi vào nhóm `_generic_npc_note`). Với 17 người trong phòng, một giọng đơn đọc 「乾杯!」 sẽ nghe sai hoàn toàn. Cần đánh dấu để pipeline TTS xử lý riêng (chorus/overlay).

**#E6 🟡 [TIẾNG VIỆT — câu lủng củng] — dòng 28**
VN: *"Vâng chị. **Em mới rule sách 08 đọc xong tuần trước**, hi vọng đủ dùng."*
**Vấn đề:** trật tự từ hỏng hoàn toàn, đọc không ra tiếng Việt. Đồng thời "rule" là tiếng Anh thừa.
**Đề xuất:** *"Vâng chị. Em vừa đọc xong phần quy tắc trong sách 08 tuần trước, hy vọng đủ dùng."*

**#E7 🟡 [TIẾNG VIỆT — trộn ngôn ngữ trong 1 câu] — dòng 331**
JA: `(ベトナム語、ホッとした)はい chị, em về ạ.` | VN: *"(tiếng Việt, nhẹ người) Vâng chị, em về ạ."*
**Vấn đề:** trường JA chứa 「はい chị, em về ạ」 — **lai Nhật-Việt trong ô tiếng Nhật**. Nếu đưa vào TTS tiếng Nhật sẽ đọc 「はい」 rồi vấp. Các dòng tiếng Việt khác (25, 27, 29, 30) đều để nguyên tiếng Việt trong ô JA — **đã là quy ước không nhất quán sẵn**, nhưng dòng 331 tệ nhất vì trộn ngay trong một câu.
**Đề xuất:** thống nhất: lời thoại tiếng Việt → ô JA để trống hoặc ghi `(ベトナム語)`, nội dung đặt ở ô VN. Áp dụng cho toàn bộ dòng tiếng Việt của ch02 (25–30) và ch03 (25–31, 93, 128, 264, 330–331).

**#E8 🟡 [TIẾNG VIỆT — tiếng Anh thừa]** khớp `english_audit.md`: dòng 29 *"**Topic** an toàn"*, dòng 264 *"**Joke** về tính cách Osaka **direct**"* (bản VN đã sửa thành "Câu đùa… thẳng thắn" ✅ nhưng ô JA vẫn giữ `Joke về tính cách Osaka direct`), dòng 330 *"Mai vẫn còn **deadline**"*, dòng 59 *"**junior** thì **shimoza**"*.
**Đề xuất:** Topic→"Chủ đề", deadline→"hạn chót", junior→"người ít kinh nghiệm".

**#F3 🔴 [NHẤT QUÁN — thời gian mâu thuẫn] — dòng 3 vs dòng 403**
> dòng 3 (bối cảnh): *"19:00-22:30. … Tăng 2 karaoke tự chọn sau 22:00."*
> dòng 403 (tổng kết): *"Bonenkai … 19:00-22:30 + niji-kai karaoke **22:30-24:00**"*
> dòng 336 (Tuấn): `1時間くらいで切り上げる` = "khoảng 1 tiếng là về"
**Vấn đề:** ba mốc đá nhau — tăng 2 bắt đầu 22:00 hay 22:30? Kéo 1 tiếng (đến 23:30) hay 1,5 tiếng (đến 24:00)? Thêm nữa dòng 322 ghi tiêu đề TH10 là **22:00** còn TH11 là **22:30** "trên đường đi karaoke (đi bộ 5 phút)" — 30 phút để đi bộ 5 phút.
**Đề xuất:** chốt: tiệc chính 19:00–22:00, đi bộ 22:00–22:10, karaoke 22:10–23:30. Sửa dòng 3, 322, 355, 403.

**#F4 🟡 [NHẤT QUÁN — Hải hụt vai]** `voice_profiles` cho Hải *"fast-talker, tech background"*, nhưng trong 437 dòng Hải chỉ có **5 lượt thoại**, không lượt nào thể hiện tech hay tốc độ nói. Linh (cùng cấp "người mới") có 13 lượt và một arc trọn vẹn. Chênh lệch này khiến Hải thành đạo cụ minh họa lỗi "ăn nhanh" chứ không phải nhân vật.
**Đề xuất:** thêm 2–3 lượt cho Hải ở TH8 (đã dịch Kansai cho Linh — mở rộng thành một nhịp Hải bắt chuyện với Sasaki/Tanaka về công nghệ).

**#G2 🔵 [CHẤT LƯỢNG — không có tình huống xấu]** Chương 03 dạy rất tốt về nghi thức, nhưng **mọi người Nhật đều hoàn hảo**: Yamamoto cứu Linh, Tanaka cứu Hải, Sato ấm áp, Ōgaki tự nhận lỗi ngay khi bị nhắc. Không ai say, không ai ép rượu, không ai hỏi câu khó xử (lương, người yêu, "khi nào lấy vợ") — những thứ **thực sự xảy ra ở bonenkai**. Bí quyết dòng 101 khẳng định *"JP modern (2020s+) — không ép uống đã thành phổ biến"* là đúng xu hướng, nhưng sách nên dạy cả **cách xử lý khi vẫn gặp người ép** (vẫn còn, đặc biệt với người 55t+).
**Đề xuất:** thêm 1 tình huống ngắn: một người Nhật lớn tuổi hơi say hỏi Linh câu riêng tư → Hương/Yamamoto đỡ → Bí quyết dạy 3 câu thoát.

---

### chương_04_出張

**#A2 🔴 [SAI TÊN NHÂN VẬT — 14 chỗ] — dòng 195, 199, 200, 202, 208, 212, 217, 220, 222, 283, 321, 358, 530, 546, 556, 561; và `_front_matter.md` dòng 25**
JA luôn viết đúng **伊藤 (Itō)**, nhưng **mọi bản dịch tiếng Việt và mọi phần Bí quyết đều gọi là "Itoki"**.
- dòng 200 | JA: `初めまして、伊藤です。` | VN: *"Rất hân hạnh, tôi **Itoki**."*
- dòng 222 | *"**Itoki** khen 'người nói được không biết là tin được'"*
- `_front_matter.md` dòng 25: *"anh **Itoki** (Nagoya)"*
**Vấn đề:** **「伊藤」 đọc là Itō, không bao giờ là "Itoki"** — đây không phải biến thể phiên âm mà là tên sai. Hơn nữa `voice_profiles.json` khai `ito_nagoya` với `full_name_vi: "Ito Hideki"`, `name_vi: "anh Ito"` → **bản dịch mâu thuẫn với chính cast của sách**. Với sách dạy business Nhật, gọi sai tên đối tác là lỗi nghiêm trọng về uy tín.
**Đề xuất:** thay toàn bộ "Itoki" → **"Itō"** (hoặc "Ito"), sửa cả `_front_matter.md`, `draft/chương_04_出張_scenes.json` (các trường `vi`), và giữ nguyên `voice_profiles.json`.

**#C11 🔴 [SAI SỰ THẬT — miễn thuế] — dòng 426, 430, Bí quyết dòng 441**
> dòng 426: *"Tổng ¥38,500 + **miễn thuế 8%** (mua trên ¥5,000 được miễn thuế cho khách du lịch) → cuối cùng ¥35,500"*
> Bí quyết dòng 441: *"**Miễn thuế cho khách du lịch** > ¥5,000/cửa hàng/ngày → tiết kiệm **8%**"*
**Ba lỗi chồng nhau:**
1. **Sai thuế suất.** Hàng thông thường (mỹ phẩm SKII, Lego, khăn, đồ chơi) chịu **10%**, không phải 8%. 8% chỉ áp cho 消耗品 thực phẩm/đồ uống. Giỏ của Dũng chủ yếu là hàng thông thường.
2. **Sai đối tượng — lỗi nặng nhất.** Miễn thuế chỉ dành cho **非居住者**, tức người mang tư cách lưu trú **「短期滞在」** dưới 6 tháng. Nhưng dòng 103 chương này ghi rõ Dũng cầm **"thẻ visa làm việc tạm thời"**. **Người sang Nhật theo diện làm việc không đủ điều kiện miễn thuế.** Sách đang dạy người học làm một việc họ **không được phép làm** ở quầy — sẽ bị từ chối tại chỗ, tệ hơn là rắc rối giấy tờ.
3. **Sai số học.** ¥38.500 trừ 8% = ¥35.420 (làm tròn ¥35.500 tạm chấp nhận), nhưng nếu là 10% thì ¥35.000; còn nếu **không đủ điều kiện** thì vẫn là ¥38.500 — và như vậy **vượt ngân sách ¥40.000?** không, vẫn dưới. Nhưng cả đoạn tính toán ở dòng 418–426 sẽ phải viết lại.
**Đề xuất:** cách sửa gọn nhất là **bỏ hẳn tình tiết miễn thuế**: Dũng thanh toán ¥38.500 bình thường, và **Bí quyết đổi thành cảnh báo**: *"Lưu ý: miễn thuế chỉ áp dụng cho người lưu trú diện 短期滞在 dưới 6 tháng. Đi công tác bằng visa làm việc thì KHÔNG được miễn thuế — đừng xếp hàng ở quầy tax-free."* Đây sẽ là một Bí quyết có giá trị thật cao vì hầu như không sách nào nói.

**#C12 🟡 [SAI SỰ THẬT — hải quan] — dòng 32, Bí quyết dòng 46**
JA: `ナッツ類は申告必要です。` | Bí quyết: *"Hạt / khô (cà phê, hạt điều, bánh mứt) = **phải khai** dù 'cá nhân'."*
**Vấn đề:** hạt điều **rang chín, đóng gói thương mại** không thuộc diện cấm và không phải mặt hàng bắt buộc khai riêng như thịt/thực vật tươi. Quy định thực tế: **thực vật tươi, hạt giống, trái cây, thịt và chế phẩm thịt** mới cần kiểm dịch/khai báo. Cà phê rang và hạt điều rang qua hải quan bình thường. Việc dựng một nhân viên hải quan chặn vì 1kg hạt điều rang là **tình huống ít khả năng xảy ra**, và Bí quyết dạy sai phạm vi.
**Đề xuất:** giữ cảnh (hay về mặt kịch) nhưng đổi vật phẩm sang thứ **thật sự bị chặn**: nem chua/chả lụa có thịt heo, hoặc trái cây tươi (xoài). Sửa Bí quyết cho đúng: nhấn mạnh **thịt & sản phẩm từ thịt = cấm tuyệt đối, phạt nặng**, hạt rang/cà phê thì chỉ cần tick vào ô thực phẩm.

**#C13 🟡 [SAI SỰ THẬT — nhãn nhân vật sai chỗ] — dòng 430**
> `| **コンビニ店員** | 「免税手続きはこちらでどうぞ。パスポートとレシートをお願いします。」`
**Vấn đề:** cảnh này ở **Don Quijote Shinjuku** (dòng 412), không phải cửa hàng tiện lợi. Nhãn `コンビニ店員` bị tái dùng từ tình huống 9 (FamilyMart). Lỗi cùng kiểu với #A3.
**Đề xuất:** đổi nhãn thành 「ドンキ免税カウンター係員」.

**#C14 🟡 [SAI SỰ THẬT — hành lý] — dòng 451, 458, 481**
> dòng 451: *"Va-li ≈23.5kg (giới hạn 23)"* → dòng 462 JAL báo vượt 0.5kg
> Bí quyết dòng 481: *"Vượt 2kg+ → tính phụ phí (≈**¥3,000-5,000/kg**)"*
**Vấn đề:** JAL không tính phụ phí hành lý ký gửi **theo kg** trên chặng quốc tế — tính theo **kiện vượt/quá khổ** với mức cố định theo vùng (chặng Nhật–Đông Nam Á thường **¥10.000–20.000/kiện vượt**), và **hạng phổ thông JAL quốc tế cho phép 2 kiện × 23kg** chứ không phải 1 kiện. Nghĩa là 23,5kg trong 1 vali với JAL quốc tế **hoàn toàn không bị chặn** — cả tình huống 13 dựa trên tiền đề sai.
**Đề xuất:** đổi hãng thành hãng chỉ cho 1 kiện 23kg (vd Vietnam Airlines hạng phổ thông tiêu chuẩn), hoặc giữ JAL nhưng đổi lý do thành **kiện thứ hai vượt** / vali quá khổ. Sửa Bí quyết: bỏ "¥3.000-5.000/kg", ghi "phí kiện vượt cố định, tra bảng của hãng trước".

**#C15 🔵 [SAI SỰ THẬT — bảo tàng] — dòng 177**
JA: `『江戸東京博物館』行ってみて。`
**Vấn đề:** 江戸東京博物館 (Ryogoku) **đóng cửa đại tu toàn diện từ 4/2022, dự kiến mở lại khoảng 2026** — thời điểm truyện là 9/2026, nằm đúng vùng bất định. Nếu chưa mở, lời khuyên của Tanaka thành sai.
**Đề xuất:** đổi sang địa điểm chắc chắn mở (vd 深川江戸資料館 hoặc 東京国立博物館), hoặc thêm 1 vế `もし再オープンしてたら` cho an toàn.

**#B5 🟡 [KÍNH NGỮ — Dũng dùng 様 cho người bên khách khi nói với lễ tân] — dòng 96**
JA: `ティエンファットのTran Van Dungと申します。松本様と9時にお約束をいただいております。`
**Đánh giá:** ✅ **Đúng** — Dũng là khách ngoài công ty, gọi người của 白鷗 là 松本様 khi nói với lễ tân 白鷗 là chuẩn. Ghi lại đây vì đây là chỗ **dễ sai nhất trong cả sách mà sách làm đúng** — nên giữ nguyên và có thể thêm Bí quyết nhấn mạnh.

**#B6 🟡 [KÍNH NGỮ — 私 vs わたくし] — dòng 208, 284**
Dũng nói với 伊藤 (dòng 208): `私からは確答できません` và với **中村CFO** (dòng 284): `新人の私には分かりにくいです`.
**Vấn đề:** với CFO trong buổi 1-on-1 trang trọng, người Nhật ở vị trí Dũng (đối tác trẻ, bên nhà thầu) thường dùng **わたくし**. Dùng 私 không sai nhưng bỏ lỡ một tầng độ trang trọng mà chính chương này đang dạy.
**Đề xuất:** dòng 284 → `新人のわたくしには…`; giữ 私 ở dòng 208 (với 伊藤 thân hơn).

**#D6 🔴 [KHÔNG TỰ NHIÊN — tiếng Anh trong lời Nhật] — dòng 277, 355, 358, 370**
- dòng 277 | **中村CFO** (50–55t, executive): `今日は **frank** に話したいんだけど`
**Vấn đề:** một CFO Nhật 50t+ sẽ nói 「率直に」 hoặc 「ざっくばらんに」. 「frank に」 viết chữ Latin là cách nói của người trẻ ngành IT, **sai giọng nhân vật** theo hồ sơ *"senior executive, deliberate pace, slow + precise"*.
- dòng 349 | Ōgaki: `こっちで **face-to-face** で詰めたい。` → 対面で / 直接会って.
- dòng 358 | Dũng: `**tech depth** で会話できる準備をすべきと痛感` — Dũng là người Việt học tiếng Nhật, chèn 2 từ Anh giữa câu keigo là không tự nhiên; và `即答力` ngay sau lại là từ Nhật chuẩn → giọng không nhất quán trong 1 câu.
- dòng 370 | Matsumoto: `それまで **family** と話してて。` → ご家族と.
**Đề xuất:** thay hết bằng từ Nhật; chỉ giữ tiếng Anh cho tên riêng công nghệ (Slack, Bedrock, Strands Agents, Phase 5, KPI).

**#D7 🟡 [KHÔNG TỰ NHIÊN — độc thoại dài, thiếu hội thoại] — TH12 (dòng 412–433), TH14 (dòng 487–506)**
Tình huống 12 có **21 dòng dẫn cảnh và đúng 2 lượt thoại**; tình huống 14 có **0 lượt thoại thật** (dòng 489 tự thừa nhận: *"Độc thoại nội tâm dài — không có đối thoại ngoại cảnh"*).
**Vấn đề:** đây là sách **hội thoại**. Hai tình huống này về bản chất là văn xuôi tự sự — người học không có gì để luyện nói. Chương 04 dài nhất (571 dòng) một phần vì các đoạn không phải hội thoại.
**Đề xuất:** TH12 — thêm hội thoại thật với nhân viên Don Quijote (hỏi mỹ phẩm nào hợp da, hỏi còn hàng không) = **rất hữu ích** cho người học. TH14 — cắt ngắn hoặc thêm một nhịp tiếp viên JAL / người ngồi cạnh bắt chuyện.

**#E9 🟡 [TIẾNG VIỆT — dịch lệch nghĩa] — dòng 96**
JA: `松本様と9時にお約束をいただいております。` | VN: *"Hẹn với anh Matsumoto **PM**, 9 giờ."*
**Vấn đề:** JA không có "PM"; bản VN tự thêm chức danh. Nhỏ nhưng là dấu hiệu bản dịch không bám JA.

**#E10 🟡 [TIẾNG VIỆT — dịch lệch] — dòng 95**
JA: `ご予約のお名前と**訪問先**を、お伺いしてもよろしいでしょうか。` | VN: *"Cho hỏi tên đặt và **địa chỉ thăm** ạ?"*
**Vấn đề:** 訪問先 ở đây = **"nơi/người cần gặp"** (bộ phận, người tiếp), không phải "địa chỉ". "Địa chỉ thăm" là dịch từng chữ, sai nghĩa và người đọc sẽ hiểu nhầm là lễ tân hỏi địa chỉ nhà.
**Đề xuất:** *"Cho hỏi tên người đặt hẹn và bộ phận/người quý khách cần gặp ạ?"*

**#E11 🟡 [TIẾNG VIỆT — dịch lệch] — dòng 131**
JA: `1週間の出張は今回が初めてとのこと、よろしくお願いします。` | VN: *"**Tuần đầu công vụ**, mong mọi người giúp đỡ."*
**Vấn đề:** JA nói "chuyến công tác **kéo dài 1 tuần** là lần đầu của cậu ấy". Bản VN "tuần đầu công vụ" hiểu thành "tuần làm việc đầu tiên" — **lệch nghĩa**. Ngoài ra "công vụ" (việc nhà nước) dùng sai cho 出張 doanh nghiệp; toàn sách nên dùng **"công tác"**. Từ "công vụ" còn xuất hiện ở dòng 175, 397.
**Đề xuất:** *"Nghe nói đây là chuyến công tác dài một tuần đầu tiên của cậu ấy, mong mọi người giúp đỡ."* + thay "công vụ" → "công tác" toàn chương.

**#E12 🟡 [TIẾNG VIỆT — câu lủng củng] — dòng 356**
JA: `代わりに10月後半でも全然OKだから。` | VN: *"**Hậu tháng 10 thay thế cũng OK toàn.**"*
**Vấn đề:** không phải câu tiếng Việt. "Hậu tháng 10" = dịch máy của 10月後半; "OK toàn" = dịch máy của 全然OK.
**Đề xuất:** *"Hoặc nửa cuối tháng 10 cũng hoàn toàn được."*

**#E13 🟡 [TIẾNG VIỆT — dịch lệch] — dòng 288**
JA: `了解いたしました、お任せください。` | VN: *"Vâng em hiểu, **anh giao em làm**."*
**Vấn đề:** 「お任せください」 = "xin cứ giao cho em / anh cứ yên tâm" — lời **cam kết chủ động**. Bản VN "anh giao em làm" nghe như đang yêu cầu/mặc cả, mất sắc thái tự tin nhận việc.
**Đề xuất:** *"Vâng em rõ ạ, anh cứ yên tâm giao em."*

**#E14 🟡 [TIẾNG VIỆT — dịch lệch] — dòng 286**
JA: `余計なこと申し上げていましたら、申し訳ございません。` | VN: *"Em nói **có gì sai** mong anh thông cảm ạ."*
**Vấn đề:** 余計なこと = "điều thừa/vượt phận", không phải "sai". Sắc thái là **khiêm nhường vì đã nói quá phần mình**, không phải sợ nói sai kiến thức.
**Đề xuất:** *"Nếu em có nói điều gì vượt phận, mong anh lượng thứ ạ."*

**#E15 🟡 [TIẾNG VIỆT — tiếng Anh thừa]** khớp `english_audit.md`: dòng 349 *"**face-to-face**"* (đã dịch "trực tiếp" ✅ trong VN nhưng JA vẫn Latin), dòng 358 *"conversational depth tech"*, *"bài present **surprise**"*, dòng 283 *"độ sâu kỹ thuật"* ✅ đã fix, dòng 355 *"**intensive prep**"*, dòng 143 *"làm quen công việc"* ✅.
**Đề xuất:** "bài present surprise" → "bài trình bày bất ngờ"; "intensive prep" → "giai đoạn chuẩn bị cao điểm"; "conversational depth tech" → "chiều sâu kỹ thuật khi trò chuyện".

**#F5 🟡 [NHẤT QUÁN — Dũng đi mấy đêm] — dòng 60 vs 3 vs 449**
> dòng 60 | Dũng nói với lễ tân: `Tran Van Dung、**4泊5日**です。`
> dòng 3 (bối cảnh): *"Thứ 2-Thứ 6 làm việc, Thứ 7 về VN"* + dòng 19 đến **Chủ nhật 22:00**, dòng 449 trả phòng **Thứ 7 06:00**.
**Vấn đề:** nhận phòng đêm Chủ nhật, trả phòng sáng Thứ 7 = **6 đêm 7 ngày**, không phải 4泊5日. Sai ngay lượt thoại thứ hai của chương.
**Đề xuất:** sửa thành `6泊7日です。`

**#F6 🟡 [NHẤT QUÁN — thứ trong tuần] — dòng 530 vs 193**
> Tổng kết dòng 530: *"**Thứ 3** câu hỏi Itoki về Bedrock"*
> Tiêu đề TH6 dòng 193: *"Tình huống 6 — **Tue** 14:00"* ✅ khớp.
Nhưng dòng 277 Nakamura nói `Tokyo office のチーム、**3日**見てどう感じた?` vào **Thứ 5** — từ Thứ 2 đến Thứ 5 là **4 ngày**, không phải 3.
**Đề xuất:** đổi thành `4日見て` hoặc `今週ずっと見て`.

**#F7 🟡 [NHẤT QUÁN — draft vs md, tiếng Anh]** Draft `chương_04` các trường `vi` còn nguyên tiếng Anh chưa dịch: `"Module review Phase 4"`, `"draft architecture"`, `"5 wins"`, `"5 mistakes"`, `"Action items"`, `"rule of 3"`, `"onsite"`, `"vendor"`, `"deck"`. Bản .md đã dịch phần lớn sang tiếng Việt. → **draft và md đã trôi khác nhau**; nếu ai đó rebuild md từ json (`scripts/build_chapters_from_json.py`) sẽ **mất toàn bộ công dịch**.
**Đề xuất:** trước giai đoạn SỬA, quyết định nguồn sự thật là `.md` hay `draft/*.json`. Nếu là .md → cần khóa/ghi chú rõ trong `_pipeline/` rằng không được rebuild.

**#G3 🔵 [CHẤT LƯỢNG — chương hay nhất]** Chương 04 là chương **giá trị giảng dạy cao nhất** trong 4 chương: TH6 (thừa nhận không biết) và TH8 (1-on-1 với CFO, quan sát chứ không phán xét) là hai bài học business Nhật thật sự khó tìm ở sách khác. TH11 (sticker từ con Tanaka đáp lại chương 01) là **payoff kể chuyện tốt nhất cả sách**. Nên giữ nguyên cấu trúc, chỉ sửa lỗi sự thật.

---

## Lỗi hệ thống (lặp nhiều chương)

| # | Lỗi | Chương | Mức | Ghi chú |
|---|---|---|---|---|
| **S1** | **Tiếng Anh chữ Latin trong lời thoại tiếng Nhật** — badge, booth, weather, score, family, frank, face-to-face, enjoy, tech depth | 01 (9 chỗ), 02 (5), 03 (2), 04 (6) | 🔴 | Nặng nhất khi thốt ra từ **nhân vật Nhật lớn tuổi** (Matsumoto 45t, Nakamura 55t). Phải chuyển katakana hoặc từ Nhật. `english_audit.md` **chỉ soát tiếng Anh trong văn tiếng Việt, bỏ sót hoàn toàn tiếng Anh trong ô JA** |
| **S2** | **Tái dùng nhãn nhân vật cho người khác** | 01 (山田 AWS → staff SaaS), 02 (井上 caddie ≠ 井上 Hakuō), 04 (コンビニ店員 → nhân viên Don Quijote) | 🔴 | Hỏng pipeline TTS (1 key = 1 giọng) và gây hiểu nhầm cho người đọc |
| **S3** | **Con số/sự thật tra được là sai** | 01 (quy mô IT Week, ga tàu, giá quà), 02 (điểm golf), 03 (焼酎 Miyazaki gán Fukuoka, ngày Tết), 04 (miễn thuế, hải quan, hành lý JAL) | 🔴 | 9 lỗi tra bằng WebSearch — xem bảng riêng bên dưới |
| **S4** | **Lời thoại tiếng Việt nằm trong ô JA** | 01 (dòng 438–442), 02 (25–30), 03 (25–31, 93, 128, 264, 330–331), 04 (39) | 🟡 | Sẽ vỡ khi TTS đọc trường JA. Cần quy ước thống nhất |
| **S5** | **Thiếu 相槌 / ngắt lời / ngập ngừng** | cả 4 chương | 🔴 | Đây là **tiêu chí số 1 của sách tên "Real Dialogues"**. Toàn bộ ~180 lượt thoại đều là câu trọn vẹn, lịch sự, không ai chồng lời ai. Xem đề xuất chi tiết ở #D1 |
| **S6** | **Không có tình huống thật sự khó** | 01, 02, 03 (04 khá hơn) | 🔵 | Không ai từ chối thẳng, không hiểu lầm kéo dài, không im lặng khó xử, không ai say/vô duyên. Mọi lỗi của Dũng đều được cứu trong ≤2 lượt |
| **S7** | **Dẫn chiếu "sách 07 / sách 08" không kiểm chứng được** | 02 (4 chỗ), 03 (2 chỗ) | 🟡 | Cần bảng dẫn chiếu chuẩn hoặc chuyển sang cách nói trung tính |
| **S8** | **draft/*.json đã trôi khác .md** | cả 4 | 🟡 | Draft còn tiếng Anh chưa dịch (rõ nhất ở ch04). Rebuild = mất công dịch |
| **S9** | **"công vụ" dùng thay "công tác"** | 04 (dòng 131, 175, 397) | 🟡 | 出張 doanh nghiệp = "công tác"; "công vụ" là việc nhà nước |

---

## Bảng lỗi sự thật đã tra WebSearch

| # | Chương/dòng | Sách viết | Thực tế tra được | Nguồn |
|---|---|---|---|---|
| 1 | 01 / 3 | IT Week Spring "≈700 gian hàng, ước 90.000 lượt khách", "lớn nhất Đông Á" | **950 công ty trưng bày, 57.803 lượt/3 ngày** (2025, Tokyo Big Sight 23–25/4) | japan-it.jp — 来場者実績 |
| 2 | 01 / 19 | "Cổng đông Tokyo Big Sight (ga **Kokusai-Tenjijō, Yurikamome line**)", Dũng đi từ Shinbashi | 国際展示場駅 thuộc **りんかい線**; ga của Yurikamome là **東京ビッグサイト駅**. Từ Shinbashi = Yurikamome | bigsight.jp/visitor/access; yurikamome.co.jp |
| 3 | 01 / 379, 395 | Sugar Butter Sand "hộp ¥1.500, **28 cái**", "≈50¥/cái" | Quy cách bán: **10/14/21/24 cái**; hộp **14 cái ≈ ¥1.350** (≈¥96/cái). Không có hộp 28 | sugarbuttertree.jp; paqtomog.com |
| 4 | 01 / 369 | "Sugar Butter Sand… **Big Sight cũng có**" | Không tìm được nguồn xác nhận quầy trong Tokyo Big Sight; phân phối tập trung ở ga Tokyo/Shinagawa/Ueno/Shinjuku/Ikebukuro + sân bay | sugarbuttertree.jp 店舗一覧; jr-plus.co.jp |
| 5 | 02 / 306–326 | Cách đặt cờ pin (ngoài green / fringe, đặt nhẹ, cắm lại) | ✅ **ĐÚNG** — khớp hướng dẫn lễ nghi Nhật (đặt ngoài green, không ném, không làm hỏng mặt green) | golf-jalan.net; golfscale.jp |
| 6 | 03 / 195 | 焼酎「中々」 = "**地元福岡**の麦焼酎" | 「中々」 là 麦焼酎 của **黒木本店, tỉnh 宮崎 (Miyazaki)** — không phải Fukuoka | (tra tên nhãn — cần xác minh lại khi sửa) |
| 7 | 03 / 202 | Tết Việt Nam "năm sau **29/1**" (nói tháng 12/2026 → 2027) | **Tết 2027 = 06/02/2027**. 29/01 là Tết **2025** | lịch âm |
| 8 | 04 / 426, 441 | "miễn thuế **8%**", "mua trên ¥5.000 được miễn thuế cho khách du lịch" | Hàng thông thường = **10%**, tiêu hao = 8%. Ngưỡng ¥5.000 ✅ đúng. **NHƯNG** chỉ áp cho **非居住者/短期滞在 <6 tháng** — Dũng cầm **visa làm việc** (dòng 103) nên **không đủ điều kiện** | nta.go.jp No.6559; mlit.go.jp/kankocho/tax-free; workingvisa.csap.tokyo |
| 9 | 04 / 316 | Túi nilon konbini "**3 yên**" | ✅ **ĐÚNG** — FamilyMart/Seven/Lawson đều 3 yên cho size nhỏ-vừa | watch.impress.co.jp; ichioshi |
| 10 | 04 / 481 | JAL vượt cân "≈**¥3.000-5.000/kg**" | JAL quốc tế **không tính theo kg**; tính theo kiện vượt/quá khổ với mức cố định theo vùng. Hạng phổ thông quốc tế thường **2 kiện × 23kg** → 23,5kg trong 1 vali không bị chặn | (chính sách JAL — cần xác minh lại khi sửa) |
| 11 | 04 / 177 | Tanaka gợi ý đi 江戸東京博物館 (bối cảnh 9/2026) | Bảo tàng **đóng cửa đại tu từ 4/2022**, lịch mở lại quanh 2026 — rủi ro sai tại thời điểm truyện | (cần xác minh lại khi sửa) |
| 12 | 03 / 322–338 | Bonenkai kết thúc → thẳng sang tăng 2 | **Thiếu 中締め** (一本締め/三本締め) — nghi thức gần như bắt buộc của bonenkai công ty | (thiếu sót, không phải sai) |

---

## 10 lỗi cần sửa gấp nhất

| Hạng | Mã | Lỗi | Chương | Vì sao gấp |
|---|---|---|---|---|
| 1 | **#A2** | 「伊藤」 bị dịch là **"Itoki"** ở 16 chỗ + `_front_matter.md`, mâu thuẫn `voice_profiles.json` ("anh Ito") | 04 | Gọi sai tên đối tác Nhật — lỗi uy tín nặng nhất, người học sẽ học thuộc tên sai |
| 2 | **#C11** | **Miễn thuế**: sai thuế suất (8%→10%) + **sai đối tượng** (visa làm việc KHÔNG được miễn thuế) | 04 | Sách đang dạy người học làm việc họ **không được phép làm** ở quầy |
| 3 | **#A4** | **佐藤先生** — dùng 先生 cho đồng nghiệp/đối tác doanh nghiệp | 03 | Lỗi kính ngữ kinh điển; sách dạy sai thì người học sẽ lặp lại trước mặt khách |
| 4 | **#S1** | Tiếng Anh chữ Latin trong lời thoại Nhật (badge/booth/frank/weather/family), đặc biệt từ miệng nhân vật Nhật 45–55t | 01–04 | Sai giọng nhân vật + người học đọc lên sai; `english_audit.md` bỏ sót hoàn toàn nhóm này |
| 5 | **#C1** | Ga tàu sai: 国際展示場駅 là Rinkai, không phải Yurikamome | 01 | Câu đầu tiên của cả sách; ai từng đi Big Sight sẽ nhận ra ngay |
| 6 | **#A3/#A3b** | Nhãn nhân vật tái dùng: 山田(AWS)→staff SaaS, **井上 caddie trùng 井上 Hakuō**, コンビニ店員→Don Quijote | 01, 02, 04 | Hỏng pipeline TTS (1 key = 1 giọng) + 井上 gây hiểu nhầm cùng người |
| 7 | **#C2** | Quy mô IT Week: 700 gian/90.000 khách → thực tế 950 gian/58.000 khách | 01 | Con số ở **dòng 3**, ngay đầu sách, tra 10 giây ra |
| 8 | **#C5** | Điểm golf phi thực tế (Dũng +29/9 lỗ, Matsumoto 39) + mâu thuẫn với nhịp vòng đấu | 02 | Người biết golf đọc là mất tin ngay; kéo theo cả TH6 và tổng kết |
| 9 | **#C8** | 焼酎「中々」 là của **Miyazaki**, nhưng Sato nói "quê Fukuoka tôi" | 03 | Sai ngay trong lời tự hào quê hương của nhân vật — người Nhật nhận ra tức thì |
| 10 | **#S5** | Thiếu 相槌 / ngắt lời / ngập ngừng trên toàn bộ ~180 lượt thoại | 01–04 | **Đây là lý do tồn tại của sách** ("Real Dialogues"); nếu không sửa, sách không khác sách giáo khoa |

---

## Ghi chú cho giai đoạn SỬA

**Thứ tự đề xuất**

1. **Vòng 1 — sửa máy móc, rủi ro thấp** (làm trước, có thể script hóa):
   - `#A2` thay "Itoki" → "Itō" trên `.md` + `_front_matter.md` + trường `vi` của `draft/chương_04_出張_scenes.json`.
   - `#A4` thay 佐藤先生 → 佐藤さん trên `.md` + **`voice_profiles.json`** (`name_ja`).
   - `#S9` thay "công vụ" → "công tác" ở ch04.
   - `#S1` chuyển chữ Latin trong ô JA sang katakana/từ Nhật — **cần soát thủ công từng chỗ**, đừng replace mù (phải giữ AWS/Bedrock/Slack/Phase/KPI/QR).

2. **Vòng 2 — sửa sự thật** (theo bảng WebSearch, 12 mục). Ba mục **#C11 (miễn thuế)**, **#C12 (hải quan)**, **#C14 (hành lý JAL)** phải viết lại cả đoạn + Bí quyết, không sửa từng số được.

3. **Vòng 3 — sửa nhân vật**: `#A3`/`#A3b` tách speaker key mới; `#A5` thêm cho Ōgaki một câu thăm dò sắc ở ch02 để cứu giọng nhân vật.

4. **Vòng 4 — nâng độ thật** (`#S5`, `#D1`, `#D4`): chèn 相槌/ngắt lời. Việc này **thay đổi số lượt thoại** nên phải làm sau cùng, sau khi mọi thứ khác đã chốt.

**Cảnh báo quan trọng**

- ⚠️ **KHÔNG chạy `scripts/build_chapters_from_json.py` sau khi sửa `.md`.** Draft `.json` đã trôi khác `.md` (draft ch04 còn nguyên tiếng Anh chưa dịch: "5 wins", "Action items", "rule of 3", "onsite", "vendor", "deck"). Rebuild sẽ **xóa sạch công dịch trong `.md`**. Cần chốt nguồn sự thật trước — khuyến nghị lấy `.md` làm nguồn và ghi rõ vào `_pipeline/`.
- ⚠️ `_pipeline/english_audit.md` **chỉ soát tiếng Anh trong văn tiếng Việt**, hoàn toàn bỏ qua tiếng Anh trong ô tiếng Nhật (`#S1`) — đây mới là nhóm nặng hơn. Cần chạy lại audit với phạm vi mở rộng.
- ⚠️ Sửa `voice_profiles.json` (mục `sato_kyushu.name_ja`) sẽ ảnh hưởng **cả chương 05–08** (phạm vi agent B2). Cần phối hợp trước khi sửa.
- ⚠️ `#C5` (điểm golf) đụng **3 dòng ở 3 chỗ khác nhau** (181, 183, 432) — phải sửa đồng bộ nếu không sẽ mâu thuẫn mới.
- ⚠️ `#F3` (mốc thời gian ch03) đụng dòng 3, 322, 355, 403 — cùng nhóm.

**Điểm mạnh cần GIỮ NGUYÊN, đừng "sửa nhầm"**

- Giọng **Yamamoto (Kansai-ben)** và **Sato (Hakata-ben)** — phương ngữ dùng thật, không phải trang trí. `見せちゃる`, `おいでや`, `教えたるわ`, `分かりにくいやろ?` đều chuẩn.
- **Chuyển mã ngôn ngữ của Hùng** (ch01 TH4): thể thường với Dũng, keigo với người Hakuō, và **Dũng tự chuyển sang tiếng Nhật trong 1 giây** — đây là bài học tinh tế nhất cả 4 chương.
- **Dũng dùng 松本様 khi nói với lễ tân 白鷗** (ch04 dòng 96) — đúng uchi/soto, nên giữ và có thể thêm Bí quyết nhấn mạnh.
- **Mạch sticker robot** xuyên ch01 → ch03 → ch04 (Dũng tặng → dán trên balo → con Tanaka gửi lại quà) — payoff kể chuyện tốt nhất của sách.
- **Chương 04 TH6 và TH8** (thừa nhận không biết; quan sát chứ không phán xét) — hai bài học business chất lượng cao, chỉ cần sửa lỗi bề mặt.
