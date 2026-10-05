# Sách 09 Real Dialogues — Bảng điều khiển rà soát

> File này là **nguồn sự thật** về tiến độ. Mọi agent phải cập nhật vào đây khi xong.
> Ngày khởi tạo: 2026-08-15

## Quy mô
- 8 chương × `chương.md` (~4.100 dòng), mỗi chương là hội thoại theo cảnh
- 8 × `draft/chương_XX_*_scenes.json` (10–14 scene/chương, tổng 94 scene)
- `nội_dung/voice_profiles.json` — hồ sơ giọng nhân vật (cast)
- Sách dialogue-only: KHÔNG có bài tập JSON, KHÔNG seed DB

## Quy trình (giống sách 10)
Giai đoạn 1 RÀ SOÁT (chỉ báo cáo, không sửa) → Giai đoạn 2 SỬA → Giai đoạn 3 kiểm tra build.
**Đang ở: Giai đoạn 2 (SỬA).** Giai đoạn 1 xong: B1 49 lỗi + B2 89 lỗi = 138.

## Phân công giai đoạn 1

| Agent | Phạm vi | File báo cáo | Trạng thái |
|---|---|---|---|
| B1 | chương 01–04 (`chương.md`) | `_review/B1_chuong_01_04.md` | ✅ xong — 49 lỗi (🔴21/🟡19/🔵9) |
| B2 | chương 05–08 (`chương.md`) | `_review/B2_chuong_05_08.md` | ✅ xong — 89 lỗi (🔴31/🟡44/🔵14) |

## Nhật ký

- 2026-08-15: tạo hạ tầng `_review/`, tung 2 agent giai đoạn 1.

## Giai đoạn 2 — SỬA (main Claude tự sửa, KHÔNG giao subagent)

### Vòng 1 — máy móc, rủi ro thấp
| # | Việc | Phạm vi | Trạng thái |
|---|---|---|---|
| 1 | "Itoki" → "Itō" | ch04 (16) + _front_matter (1) | ✅ xong 17 chỗ |
| 2 | 佐藤先生 → 佐藤さん | ch03 (8) + voice_profiles.json (1) | ✅ xong 9 chỗ |
| 3 | "công vụ" → "công tác" | ch04 (3) + ch08 (1) | ✅ xong 4 chỗ |
| 4 | 5 typo tiếng Nhật | ヒアップ→ヘッドアップ (ch07); 結婚先→結婚はまだ先, 文化衝撃→カルチャーショック, chairs CTO→ハーCTO (ch08) | ✅ xong 4/5 — 呼の珍しい KHÔNG tìm thấy |
| 5 | Tiếng Việt trong ô JA (#S4) | ch08 dòng 26–37 | ✅ xong 11 chỗ — thêm nhãn `(ベトナム語)` |
| 6 | Tiếng Anh chữ Latin trong ô JA | ch01–08, 208 dòng | ⏳ chưa — CẦN LỌC LẠI, xem ghi chú dưới |

### ⚠️ ĐÍNH CHÍNH đánh giá của B1/B2 về lỗi #S4
Tôi (main) quét lại toàn bộ 8 chương: có **91 dòng** tiếng Việt trong ô JA, nhưng:
- **55 dòng CÓ nhãn `(ベトナム語)`** → **KHÔNG PHẢI LỖI**, đây là chủ ý thiết kế (nhân vật Việt nói tiếng Việt với nhau). Sửa là phá hỏng đặc trưng "Real Dialogues".
- **25 dòng là danh từ riêng tiếng Việt trong câu Nhật** (`Tết`, `phở`, `Cá basa`, `Ốc hương`, `Thanh Hà`, `Lê Hoàng Anh`, `Phạm Ngũ Lão`, `Nghêu hấp sả`) → **KHÔNG PHẢI LỖI**, hoàn toàn tự nhiên.
- **11 dòng ch08 (26–37) mới là lỗi thật**: cùng một cuộc trò chuyện tiếng Việt nhưng mất nhãn, trong khi dòng 25 mở đầu thì có. → ĐÃ SỬA.

**Bài học:** B1 gộp cả 3 nhóm vào #S4 và gọi chung là lỗi. Khi sửa các mục còn lại phải tự kiểm chứng phạm vi, đừng tin số liệu báo cáo.

### Vòng 2 — sự thật ✅ XONG (16 chỗ)
- **ch04 miễn thuế** — lỗi kép, nguy hiểm nhất: viết lại cả cảnh. Nhân viên nay nói rõ `在留カードをお持ちの方は対象外`, Dũng đáp `就労ビザなので大丈夫です`, và ghi vào sổ "visa làm việc KHÔNG được miễn thuế". Bí quyết bổ sung: miễn thuế chỉ cho 非居住者 <6 tháng; thuế **10%** hàng thường / **8%** thực phẩm (sách cũ ghi 8% cho tất cả)
- **ch01 ga tàu** — `ga Kokusai-Tenjijō, Yurikamome line` → `ga Tokyo Big Sight, tuyến Yurikamome` (国際展示場駅 thuộc Rinkai; đi từ Shinbashi là Yurikamome nên giữ tuyến, sửa tên ga)
- **ch01 quy mô IT Week** — `≈700 gian hàng, 90,000 lượt khách` → `≈950 công ty trưng bày, gần 58,000 lượt`
- **ch03 焼酎「中々」** — `地元福岡の麦焼酎` → `九州の麦焼酎…宮崎の蔵のやつばい` (中々 là của 黒木本店, Miyazaki — Sato không thể gọi là "quê Fukuoka tôi") (JA+VN)
- **ch03 Tết 2027** — `1月29日` → `2月6日` (29/01 là Tết 2025) (JA+VN)
- **ch06 kaiseki 4 lỗi** — bối cảnh tháng 1/2027: `香箱蟹` (hết mùa 31/12) → `松葉蟹`; `冬瓜` (rau mùa hè) → `蕪`; `蛤` dịch "con hàu" → "con ngao trắng". Đồng bộ cả 3 dòng bản Việt (cua kobako/bí đao)

### Vòng 4 — bổ sung nội dung ✅ XONG phần nghi thức (3 khối)
- **ch08 忌み言葉** — chương đám cưới trước đây **0 lần** nhắc trục văn hoá số 1 này. Thêm khối Bí quyết: bảng 4 nhóm từ kiêng + cách nói thay, giải thích vì sao MC xướng `入刀` (vì 切る là từ kiêng), lưu ý riêng cho người Việt, và quy tắc không chấm câu trong thiệp mừng.
  Đồng thời sửa 2 chỗ chương **tự chứa** từ kiêng: bài phát biểu kết bằng `悪い結果は来ない` → `その分ええ出会いがある`; cô dâu hỏi khách `ベトナム帰る?` ngay cửa tiễn → `ベトナムへ発つの?`
- **ch06 quy tắc onsen** — chương onsen trước đây **0 lần** nhắc かけ湯/khăn/浴衣. Thêm khối Bí quyết: 5 bước bắt buộc (かけ湯 trước, gội sạch, khăn không nhúng bồn, không bơi/nói to, lau khô trước khi ra) + cách mặc 浴衣 **右前** kèm cảnh báo ⚠️ mặc ngược là cách khâm liệm người chết
- **ch07 名刺交換** — sách đang dạy NGƯỢC: Dũng nhận danh thiếp trước rồi mới đưa. Sửa thành đưa trước (phía chào hàng đưa trước) + `頂戴いたします` khi nhận. Bí quyết bổ sung: đừng ghi chú/cất sổ trước mặt khách, đặt danh thiếp lên bàn theo vị trí chỗ ngồi

### Vòng 3 — xưng hô ✅ XONG (9 chỗ) + tiếng Anh thừa ✅ XONG (16 chỗ)

**⚠️ ĐÍNH CHÍNH B2:** báo "30 lượt", tôi quét đối chiếu từng dòng với bản Nhật → **chỉ 9 lượt sai thật**. Cách nhận diện: bản Nhật KHÔNG có `ズンさん` mà có `私の`/`僕の方から`/`伺いたい` → người nói đang tự nói về mình.
- ch05 d370 田中 `私のも美味しい` → "Của em" → **Của tôi**
- ch05 d393 松本 `伺いたい` → "em muốn nói thẳng" → **tôi muốn**
- ch05 d400 松本 → "lý lịch em Lê Hoàng Anh em quan tâm" → **anh Lê Hoàng Anh tôi rất quan tâm**
- ch05 d407 松本 → "chúng em" → **chúng tôi**
- ch05 d445 松本 → "em nhớ về Tokyo dùng" → **tôi nhớ**
- ch05 d510 松本 → "ngày đầu em đã nhận" → **tôi đã nhận**
- ch07 d218 中村CFO — ca B2 nêu đích danh: phát biểu trên sân khấu mà vừa "em Tran Van Dung" vừa "anh đứng lên giúp ạ" → viết lại thành **"anh Tran Van Dung… Anh Dũng, mời anh đứng lên"** (bỏ cả chữ "ạ" không hợp giọng CFO phát biểu)
- ch07 d445 松本 → "Anh Hà CTO bên em sẽ nói" → **Phía tôi sẽ nói với anh Hà CTO**
- ch08 d464 田中 `お父さんのスピーチ` = bố CỦA TANAKA → "Speech bố em" → **Bài phát biểu của bố tôi**

**Tiếng Anh thừa trong bản dịch VN — 16 chỗ:** badge→thẻ đeo, booth→gian hàng, speech→bài phát biểu, family→người nhà, deadline→hạn chót, panel→toạ đàm, onsite→đợt làm việc tại chỗ, frank→thẳng thắn. Giữ `demo`/`slide` vì đã là từ dùng thường trong ngành IT Việt.

### Vòng 4 — bổ sung nội dung (cần chủ nhà duyệt)
⏳ chưa. ch08 thiếu hoàn toàn 忌み言葉 + 袱紗; ch06 thiếu かけ湯/khăn/浴衣右前; ch03 thiếu 中締め + 名刺交換; ch07 dạy ngược nghi thức 名刺交換; toàn sách thiếu 相槌/ngắt lời (#S5).

## ⚠️ CẢNH BÁO BẤT DI BẤT DỊCH
- **KHÔNG chạy `scripts/build_chapters_from_json.py`** — draft .json đã trôi khác .md, draft ch04 còn nguyên tiếng Anh chưa dịch. Rebuild = XOÁ SẠCH công dịch. Nguồn sự thật = `.md`.
- `_pipeline/english_audit.md` chỉ soát tiếng Anh trong văn VIỆT, bỏ sót hoàn toàn tiếng Anh trong ô NHẬT.
- Sửa `voice_profiles.json` ảnh hưởng cả 8 chương.

## Quyết định cần chủ nhà chốt
1. **Dòng thời gian mâu thuẫn**: ch07/ch08/front matter ghi "3 năm" vs "12 tháng" vs "2 năm"; Tokyo onsite Q1 2027 khiến ch08 (5/2027, Dũng "bay từ HCMC sang") thành bất khả thi.
2. **voice_profiles mâu thuẫn nội dung**: `tanaka_pmo` khai "hay dùng tiếng Anh tech term" nhưng ch05/326 Tanaka lại là người KHÔNG theo kịp; `oogaki_sales` khai "sharp negotiator" nhưng mất sạch nét đó cả 4 chương.
3. **#S5 nâng độ thật** (chèn 相槌/ngắt lời) làm THAY ĐỔI SỐ LƯỢT THOẠI → phải làm sau cùng.

## Quyết định đã chốt

_(chưa có)_

---

# 🔄 ĐỢT 2 — áp dụng `.claude/rules/book-review.md` (2026-08-16)

> Rule này viết **SAU** đợt 1, đúc kết từ 7 sách. Đợt 2 dùng 3 subagent Opus.
> Main Claude tổng duyệt, **kiểm chứng từng báo cáo trước khi sửa**.

## 📏 Thước đo main Claude — sách 09 SẠCH nhất bộ

| # | Phép đo | Kết quả |
|---|---|---|
| 1 | 二重敬語/過剰敬語 (18 pattern) | **1 ca** — ch04 d95 `お伺いしてもよろしいでしょうか`. **KHÔNG phải lỗi**: dạng này đã 慣用化, khác hẳn `お伺いさせていただく`. Lễ tân nói với khách → hợp lệ |
| 2 | Ký tự lạ (Hangul/giản thể) | **0** — 16 ca `点` đều là kanji Nhật hợp lệ (`1点`, `3点`, `交差点`, `視点`, `拠点`) |
| 3 | Ruby vỡ | **0** |
| 4 | Cấu trúc | 8 chương, ~294.000 ký tự — **gấp đôi sách khác**; không có `meta/`, không có mục lục |

## 🎯 Việc CÒN DỞ từ đợt 1 — mục #6 "tiếng Anh trong ô JA"

Đợt 1 ghi "208 dòng — CẦN LỌC LẠI". Tôi lọc lại:

| Cách đếm | Kết quả |
|---|---|
| Mọi chữ Latin trong ô Nhật | **754** lần / 351 từ |
| Bỏ tên riêng + viết hoa + thuật ngữ IT chuẩn | **243** lần / 174 từ |

**754 → 243 vì phần lớn KHÔNG phải lỗi:**
- Tên riêng: `Tokyo` (24), `HCMC` (21), `Tran Van Dung`, `Tanaka`, `Hiroshi`
- Thuật ngữ IT người Nhật viết y hệt: `AWS` (10), `Slack` (10), `EventBridge`, `Bedrock`
- Tiếng Việt **có nhãn `(ベトナム語)`**: `anh` (21), `cho`, `nhe` — chủ ý thiết kế, đợt 1 đã kết luận

**Trong 243 còn lại vẫn phải lọc tiếp — 3 nhóm KHÔNG phải lỗi:**
1. **Hội thoại tiếng Anh có chủ ý** — ch05 d316-324 (`we're proposing an event-driven architecture`), ch02 d92 (`Nice, that's the feel!`), ch08 d264 (`this is my wife Yumi`). Nhân vật đang **nói tiếng Anh thật**, không phải lẫn từ.
2. **Từ tiếng Nhật viết Latin** — `soba`, `shimoza`, `san`
3. **Thuật ngữ ngành người Nhật dùng thẳng** — `compliance`, `panel`, `demo`, `slide`, `badge`

→ Giao agent: **lọc ra con số thật**, đừng báo cả 243.

## Phân công đợt 2

| Agent | Phạm vi | Trạng thái |
|---|---|---|
| R1 | chương 01–03 | ✅ xong — `_review/R1_chuong_01_03.md`. 19 lỗi (🔴6/🟡9/🔵4). Fix đợt 1: 5 ĐÃ FIX / 2 NỬA VỜI (số IT Week sai kỳ; tiếng Anh thừa bản VN còn 5 ca) / 1 CHƯA. Tiếng Anh ô JA ch01–03: 537 token → **13 lỗi thật**. Trục C **0 lỗi** (xác nhận main). Ổ lỗi thật = **ch02 golf**: giày clubhouse dạy NGƯỢC, mulligan "truyền thống" SAI, thiếu オナー. ch03: 上座 làm ngược vai chủ–khách + thiếu 中締め + "60t mời thì không từ chối" mâu thuẫn chính d99–105. **B1 báo sai 2 ca** (điểm golf 65/9 lỗ là ĐÚNG dải người mới; lịch vòng golf khớp chuẩn) → đã đưa vào CẤM SỬA |
| R2 | chương 04–06 | ✅ xong — `_review/R2_chuong_04_06.md`. **Fix đợt 1: 12/13 trọn vẹn, 1 nửa vời** (ch05 d407 Matsumoto còn "em" ở vế cuối cùng dòng). **17 phát hiện mới** (🔴6/🟡7/🔵4). Nặng nhất: **ch06 dạy uống rượu rồi vào onsen là điều tốt** (d381) — lỗi trục A, khối Bí quyết onsen mới thêm đợt 1 không cảnh báo. Tiếng Anh ô JA: **476 thô → 11 lỗi thật** (ch04:7, ch05:3, ch06:1) — ~95 lần ở ch05 d316-325 là hội thoại tiếng Anh CÓ NHÃN `(英語で)`, CẤM SỬA. Đồng ý ch04 d95 KHÔNG phải lỗi. 13 mục CẤM SỬA |
| R3 | chương 07–08 + nhất quán toàn sách | ✅ xong — `_review/R3_chuong_07_08.md` · 25 lỗi (🔴9/🟡11/🔵5) + ~63 chỗ sửa. **3 điểm chính:** (1) `呼の珍しい` ch08 d218 VẪN CÒN — đợt 1 kết luận "không tìm thấy" là SAI (dính bẫy ruby 1.1); (2) dòng thời gian có **phương án tối thiểu 4 chỗ** (chốt 12 tháng · quan hệ 2 năm · onsite **Q1 2028**), cả 4 nằm trong recap tiếng Việt nên sửa an toàn; (3) tiếng Anh trong ô JA **243 → 8 ca thật**, tất cả ở ch07 (6/8 dồn ở tình huống 11), ch08 = **0**. Fix vòng 4 chưa trọn: ch07 d346 JA sửa/VN hụt (mất `頂戴いたします`) + 袱紗 chưa làm. Khối 忌み言葉 ch08 d182–200 **đã WebSearch từng dòng — ĐÚNG, CẤM SỬA**. Xưng hô: B2 báo 20 → thực **11**, 10/11 là nhân vật phụ 1 lần xuất hiện |

## ✅ Main Claude thẩm định 3 báo cáo — 21 chỗ sửa

### 🔴 Lỗi trục A nghiêm trọng nhất — R2 tìm được, chưa ai bắt

**ch06 dạy uống rượu rồi vào onsen như điều TỐT.** Chuỗi: bữa tối 燗酒 → 21:00 vào onsen → Bí quyết d381 **khen** *"Vì chút rượu + nước ấm → thư giãn"*.

WebSearch xác minh: 消費者庁 khuyến cáo `飲酒後の入浴は避ける` — rượu làm **tụt huyết áp**, cộng nước nóng gây choáng và chết đuối. Nhật ~**19.000 ca tử vong/năm** liên quan tai nạn khi tắm.

Nghiêm trọng gấp đôi vì **khối "5 điều bắt buộc" thêm ở vòng 4 không có một chữ nào về rượu** — bổ sung được かけ湯/khăn/yukata nhưng bỏ sót đúng điều duy nhất có thể giết người. Cùng hạng lỗi ヒートショック của sách 08.

→ **Đã sửa:** nâng thành **6 điều**, thêm điều 6 với cảnh báo + số liệu + mẫu câu từ chối an toàn (`お酒が回っているので、少し休んでから伺います`); sửa d381 khỏi khen ngợi.

### Agent ĐÚNG (kiểm chứng độc lập xác nhận)

| Agent | Phát hiện | Kiểm chứng |
|---|---|---|
| **R1** | ch02 "cởi giày đi dép vào clubhouse" — dạy NGƯỢC | **Đúng.** Nguồn Nhật: đi giày thường vào clubhouse, **thay giày golf ở locker**; スリッパ/サンダル nằm trong danh sách NG ngay từ cổng. Sửa 5 chỗ |
| **R1** | ch02 mulligan "gần như truyền thống ở Nhật" | **Đúng** — mulligan không phải luật golf cũng không phải tập tục Nhật; luật riêng hay gặp là **前進4打** |
| **R1** | ch02 Matsumoto gọi sân nhà mình là `海外ゴルフ場` | **Đúng** — sai góc nhìn: người nói là Matsumoto (Nhật), sân ở Nhật |
| **R1** | ch01 số liệu IT Week fix đợt 1 thành **số sai khác** | **Đúng** — `950/58.000` là kỳ 2025; và "lớn nhất Đông Á" không nguồn (BTC tự xưng "lớn nhất Nhật Bản") |
| **R2** | ch05 d407 **fix nửa vời**: sửa "chúng em"→"chúng tôi" nhưng sót chữ "em" ở **vế cuối cùng dòng** | **Đúng** — bài học: 1 dòng có thể có >1 lỗi |
| **R2** | ch06 `松葉蟹 山陰・北陸` — **lỗi do chính fix vòng 2 đẻ ra** | **Đúng** — 松葉ガニ là brand San-in; Hokuriku là 越前ガニ/加能ガニ |
| **R3** | ch08 `呼の珍しい` — đợt 1 ghi "KHÔNG tìm thấy" | **Đúng, và là bài học rule 1.1**: chuỗi bị ruby cắt đôi (`<ruby>呼<rt>よ</rt></ruby>の<ruby>珍…`). Đợt 1 grep trên bản đã strip nên tưởng không có |
| **R3** | ch08 chiều tờ tiền goshugi thiếu vế quyết định + tờ ¥10.000 vẫn ghi Fukuzawa | **Đúng** — từ 7/2024 là **渋沢栄一**; chương diễn ra 5/2027 |
| **R3** | ch08 ファーストバイト **đảo chiều** | **Đúng** — "miếng to = nuôi no cả đời" là chiều **chú rể→cô dâu** |
| **R3** | ch08 RSVP dạy 2/4 bước | **Đúng** — thiếu gạch 「御」/「ご」 (để nguyên = tự dùng kính ngữ cho mình) và 「行」→「様」 |
| **R3** | ch07 d346 danh thiếp **fix nửa vời** | **Đúng** — JA sửa đúng nhưng vế Việt còn `(đưa danh thiếp mình)` → đọc ra Dũng đưa **hai lần**, và mất hẳn `頂戴いたします` |
| **R3** | Dòng thời gian: phương án tối thiểu 4 chỗ | **Đúng.** Mốc thật: ch01 = 5/2026, ch07 = 3/2027, ch08 = 5/2027 → sách kể **12 tháng** |

### Agent SAI / phóng đại (main bác)

| Agent | Báo cáo | Thực tế |
|---|---|---|
| **R1** | ch03 上座 "làm ngược vai chủ–khách" 🔴 | **Bác.** Đây là **合同忘年会** (tiệc chung hai bên), không phải một bên mời — phía Việt tự chọn shimoza là khiêm nhường hợp lý, không sai |
| **R1** | ch03 "người 60t mời thì không từ chối" | **Đúng một nửa.** Cảnh đó Dũng **uống được và thích**, không bị ép. Vấn đề chỉ ở **câu chỉ dẫn** trình bày như quy tắc bắt buộc → sửa câu chỉ dẫn, giữ nguyên cảnh |

### 21 chỗ sửa

| # | Chương | Sửa |
|---|---|---|
| 1-5 | ch02 | Giày clubhouse (4 chỗ, JA+VN) — thay giày golf ở locker, 土足OK; giày đi đường phải là giày da |
| 6-9 | ch02 | Mulligan không phải tập tục Nhật (thêm 前進4打); `海外ゴルフ場` → `日本のゴルフ場` (JA+VN) |
| 10 | ch01 | IT Week: `≈950 công ty / 58.000 lượt / lớn nhất Đông Á` → `hơn 1.100 / ~51.000 / lớn nhất Nhật Bản` |
| 11-12 | ch03 | Bỏ trình bày "người 60t mời = không từ chối" thành quy tắc; thêm lối thoát cho người không uống được |
| 13-15 | ch06 | **Thêm điều 6 về rượu-onsen** (cảnh báo + số liệu + mẫu câu từ chối); sửa d381; `山陰・北陸`→`山陰` (JA+VN) |
| 16 | ch05 | d407 fix nửa vời — "em đem về"→"tôi sẽ đem về" |
| 17 | ch07 | d346 vế Việt: bỏ lặp "đưa danh thiếp", thêm `Em xin phép nhận ạ` |
| 18-20 | ch08 | `呼の珍しい`→`呼ぶなんて珍しい`; Fukuzawa→**Shibusawa Eiichi** (2 chỗ) + chiều tờ tiền; ファーストバイト đảo lại đúng chiều; RSVP 2→4 bước (2 chỗ) |
| 21 | ch07+ch08 | Dòng thời gian 5 chỗ: `3 năm trước`→`chưa đầy một năm`; `4 tháng nữa`→`~10 tháng`; `Q1 2027`→`Q1 2028` (2 chỗ); làm rõ "sách kể 12 tháng, quan hệ sang năm thứ hai" |

**Kiểm cuối:** 15/15 nội dung mới có mặt · 13/13 nội dung cũ = 0.

## ⚠️ Ngoài phạm vi / chờ chủ nhà

1. **袱紗 vẫn thiếu** (grep toàn sách = 0) — B2 xếp 🔴 hạng 7, vòng 4 chưa làm.
2. **ch05 d73** "事故率は東京より低い" — VN 17,7/100k dân vs Nhật ~2-3 (R2, cần viết lại cả câu thoại).
3. **ch04 d482** JAL "¥3.000-5.000/kg" — thực tế tính theo **kiện** (¥6.000/kiện), cảnh 23,5kg thì đúng.
4. **ch05 d292/295** hoàng hôn HCMC 19:15 — tháng 11 lặn ~17:27.
5. **Tiếng Anh trong ô JA — con số thật rất nhỏ**: R1 13 ca, R2 11 ca, R3 8 ca = **32/243**. Phần lớn 243 là hội thoại tiếng Anh **có nhãn `(英語で)`** (ch05 d316-325, cả cảnh xây quanh việc Tanaka không theo kịp — dịch sang katakana là xoá bài học).
6. `voice_profiles.json` mâu thuẫn nội dung (tanaka_pmo, oogaki_sales) — ngoài phạm vi `.md`.

---

## ✅ ĐỢT 3 — xử 5 mục từng xếp "chờ chủ nhà" (+16 chỗ, tổng sách 09 = 37)

Chủ nhà hỏi *"còn sách số 9 thì sao?"* → kiểm: **cả 5 mục còn nguyên**. Xét lại thì chúng là **lỗi cần sửa**, không phải câu hỏi cần quyết định.

### 🔴 Sai sự thật về Việt Nam — nguy hiểm nhất

**ch05 d73** — Dũng nói với khách Nhật: 「事故率は東京より低いんですよ」 (tỷ lệ tai nạn thấp hơn Tokyo).
**Thực tế (WHO):** Việt Nam **17,7 người chết/100.000 dân** (2021), Nhật khoảng 2-3 → cao hơn nhiều lần.
Nguy hiểm kép: vừa sai, vừa là **lời nhân vật Việt nói với khách** — bị bắt lỗi là mất uy tín cả đoàn.

→ Viết lại giữ ý hay (nhịp ngầm của dòng xe) nhưng bỏ khẳng định sai, và **thêm hành động chăm sóc**:
「慣れると読めるようになります。ただ事故は日本より多いので、道路を渡るときは私が横につきます。」
Bản mới tốt hơn bản gốc: Dũng vừa nói đúng vừa thể hiện lo cho khách.

### 4 mục còn lại

| Mục | Vấn đề | Sửa |
|---|---|---|
| **ch08 袱紗** | Grep toàn sách = **0**. Chương đám cưới thiếu hẳn mảnh vải bọc phong bì — người Nhật để ý ngay khi thấy rút phong bì trần | Thêm vào khối Bí quyết goshugi: cách dùng + **màu ấm cho hỉ / màu lạnh cho tang** (dùng nhầm là điềm rất xấu) + mẹo mua màu tím dùng được cả hai + phương án chữa cháy bằng khăn tay |
| **ch04 d482** | JAL "phụ phí ≈¥3.000-5.000**/kg**" | Sai cơ chế: hãng tính **theo KIỆN** (từ ~¥6.000/kiện). Viết lại kèm cảnh báo "đừng nghĩ vượt 3kg thì trả 3 lần" |
| **ch05 hoàng hôn** | Cảnh 18:00, mưa 18:30, **19:15 "mặt trời lặn rực rỡ"** — HCMC tháng 11 lặn ~17:27 | Lùi **cả cảnh**: 16:30 bắt đầu · 17:00 mưa · 17:15 tạnh · hoàng hôn ~17:25 ✓ |
| **Tiếng Anh trong ô JA** | 9 ca `badge`/`booth`/`weather`/`caddie` viết chữ Latin trong lời thoại Nhật | → katakana `バッジ`/`ブース`/`天気`/`キャディ`. Chính ch01 d75 đã dùng `ランヤード`/`パス` katakana ở cùng dòng — **tự mâu thuẫn** |

### 🪤 Sửa lẻ tạo mâu thuẫn mới — tự bắt được

Ban đầu tôi chỉ sửa 2 dòng giờ (19:15→17:15) → thành **ngược thời gian** với mốc "18:00 bắt đầu / 18:30 mưa" ở đầu cảnh.
→ Phải lùi **toàn bộ chuỗi mốc giờ** của tình huống 7, không sửa lẻ.

Bài học: sửa mốc thời gian phải quét **cả cảnh**, vì các mốc ràng buộc nhau.

### 🪤 Script bỏ sót ca viết liền không khoảng trắng

Script thay `' badge '` → `' バッジ '` bỏ lọt 3 ca viết dính chữ Nhật (`私のbadge`, `中でbadge取ってる`, `白鷗のbooth寄ろうか`), trong đó 1 ca còn **ruby chen ngay sau** (`badge<ruby>取<rt>と</rt></ruby>`).
→ Phải kiểm lại sau khi chạy script, không tin con số "đã sửa N dòng".

### Kiểm cuối

| Chỉ số | Kết quả |
|---|---|
| Tiếng Anh Latin trong ô Nhật (badge/booth/caddie) | **0** |
| Katakana thay thế | バッジ 4 · ブース 10 · キャディ 5 |
| 5 mục treo | **0 còn lại** |

**7 ca `caddie`/`badge` ở vế Việt + chỉ dẫn sân khấu: GIỮ NGUYÊN** — đây là từ đã quen trong tiếng Việt, không phải lỗi.

---

## ✅ ĐỢT 4 — Main Claude TỰ ĐỌC, không dùng subagent (+7 chỗ, tổng sách 09 = 44)

Chủ nhà: *"mấy cái sự thật kiểu đó rất nguy hiểm... em tự review các file md lại giúp anh. lần này không tin subagent nữa."*

### Cách làm

Quét có hệ thống thay vì đọc tuần tự 294.000 ký tự:
1. **196 dòng** có số liệu / khẳng định "nhất"
2. Lọc còn **43 dòng** là khẳng định về **thế giới thực** (bỏ số liệu nội bộ truyện: giá dự án, giờ họp)
3. Quét riêng 4 nhóm rủi ro: tập tục Nhật (7 dòng) · địa danh-đặc sản (9 dòng) · lời khuyên tuyệt đối (20 dòng) · số liệu pháp lý-kỹ thuật (7 dòng)
4. Đọc từng dòng, WebSearch mọi khẳng định đáng ngờ

### 🔴 Lỗi nặng nhất — SAI VỀ CHÍNH VĂN HOÁ VIỆT NAM

**ch08 d225** — Dũng nói với khách Nhật: 「皆さん来てくれた人に **goshugi 概念ない**、逆に料理を奢る」 (khách Việt **không có khái niệm mừng tiền**, ngược lại được đãi ăn).

**Sai hẳn.** Đám cưới Việt Nam khách **có mừng phong bì** — đó là tập tục phổ biến nhất. Nguy hiểm kép:
- Nhân vật Việt nói sai về **chính nước mình** trước khách Nhật
- Khách Nhật tin theo → đi dự cưới Việt **tay không** → mất mặt cả hai bên

**ch08 d227** cùng lỗi: 「cake cutting とか細かい儀式はない」 — đám cưới Việt **có** cắt bánh, rót tháp ly.

→ Viết lại cả hai: nêu đúng là Việt Nam có mừng phong bì (bao lì xì đỏ, đưa ở bàn tiếp tân) nhưng **mức tiền nhẹ hơn, không quy định ngặt về tiền mới / số tờ** — đó mới là điểm khác biệt thật và đáng kể.

### 🔴 Dạy sai tập tục Nhật

**ch08 d69** — nhân viên tiệc cưới **mở phong bì kiểm tra trước mặt khách** rồi nhắc lỗi.
Ở Nhật điều này **không xảy ra**: phong bì mừng chỉ được mở kín đáo sau tiệc; mở trước mặt khách là thất lễ nặng với chính khách.

→ Đổi người phát hiện sang **chị Hương** (đi cùng, đã dạy Dũng ký tên) nhắc **trước khi** nộp. Giữ nguyên bài học về chiều tờ tiền, mạch cảnh còn tự nhiên hơn: chuẩn bị đưa → được giữ lại → sửa → đưa.

### 🔴 Lời khuyên đẩy người dị ứng cồn vào thế phải uống

**ch02 d232** và **ch03 d105** đều dạy: *"Đừng/Tránh dùng câu 私はお酒飲めません"*.

Nhưng đó chính là câu mà **sách 08 rule_12 dạy là câu an toàn nên dùng** — hai sách cùng bộ dạy ngược nhau, và bản dạy sai lại nguy hiểm về sức khoẻ.

Đọc kỹ thì hai chỗ đang dạy **kỹ thuật giao tiếp mềm** cho người *uống được nhưng muốn từ chối lần này* — hợp lý. Vấn đề là viết như quy tắc chung, **không tách trường hợp thật sự không uống được**.

→ Bổ sung vế đó vào cả hai, kèm câu mẫu 「お酒は飲めない体質でして」/「体質的に飲めないんです」 và lý do (≈40% người Nhật thiếu ALDH2 nên họ hiểu ngay).

### 🔴 Sai số liệu pháp lý — nói trước hội trường

**ch07 d314** — Dũng trả lời chuyên gia phân tích: 「audit trail…7年保存、**金融庁の要件 5 年**を超えています」.

**WebSearch:** chuẩn ngành tài chính Nhật là **7 năm** (本人確認法, 金商法, J-SOX), không phải 5. Tức 7 năm chỉ **vừa đủ đáp ứng**, không "vượt".

Nguy hiểm vì đây là câu đáp analyst **trước hội trường** — khoe vượt chuẩn mà thực ra chỉ vừa đủ là bị bắt lỗi công khai. → Sửa cả JA (`満たしています`) lẫn VN.

### ✅ Đã kiểm, KHÔNG phải lỗi

| Nội dung | Kết luận |
|---|---|
| ch08 d388 Tết "cuối tháng 1 hoặc tháng 2" | ĐÚNG |
| ch05 d287 mưa rào "5-10 phút tạnh" | ĐÚNG với Sài Gòn |
| 9 dòng địa danh/đặc sản | Sạch — sách 09 **không** liệt tên quán thật như sách 08, nên tránh được bẫy đó |
| 7 dòng tập tục Nhật (trừ d69) | ĐÚNG |
| Số liệu sản phẩm Smart Bank Assistant (200ms, gấp 3 lần) | Sản phẩm hư cấu, không kiểm chứng được → hợp lệ |

**Kiểm cuối:** 6/6 nội dung mới có mặt · 5/5 lỗi cũ = 0.

---

## ✅ ĐỢT 5 — Bỏ khái quát hoá dân tộc (+7 chỗ, tổng sách 09 = 51)

Chủ nhà: *"vấn đề văn hoá rất khó nói đấy. các tập tục nên phải nói theo kiểu tuỳ vùng... đừng nói gán chặt với Việt Nam và Nhật Bản."*

### Nguyên tắc phân biệt

| Vị trí | Xử lý |
|---|---|
| **Lời thoại nhân vật** | Chấp nhận được (người ta nói chủ quan là tự nhiên), nhưng **tốt hơn** nếu nhân vật tự giới hạn phạm vi |
| **Văn dạy học** (luận điểm, Bí quyết, ghi chú) | **Phải sửa** — đây là chỗ sách nói bằng giọng người dạy |

Quét 15 ca khái quát hoá → 11 là lời thoại (giữ), **4 là văn dạy học** (sửa).

### 7 chỗ đã sửa

| Chỗ | Trước | Sau |
|---|---|---|
| `ch08` d225 (thoại) | "Đám cưới Việt Nam khách **300-500, max 1000** thường" | "Bên em 300 khách trở lên không hiếm. **Ở quê có khi mời cả làng, người trẻ thành phố lại làm nhỏ gọn**" |
| `ch08` d225 (thoại) | "Khách **vẫn mừng phong bì như Nhật**" | "**Quê em thì** bỏ bao lì xì đỏ..., nhưng **mỗi vùng mỗi nhà một kiểu**" |
| `ch08` d226 | Khách kêu "1000 người?!" | → "Cả làng?!" (khớp lại mạch) |
| `ch08` d227 (thoại) | "Cắt bánh, tháp ly thì **Việt Nam cũng có**" | "**đám em từng dự** cũng có" |
| `ch08` d96 (dạy học) | "fukusa — **người Việt hay bỏ qua**" | "**chi tiết dễ bỏ sót nhất**... không phải khách nào cũng để ý" |
| `ch04` d183 (dạy học) | "**Người Việt + người Nhật đều** có thói quen né lời khen" | "Né lời khen là **phản xạ quen thuộc ở cả hai nơi, nhất là với người đi làm lâu năm**" |
| `ch05` d265 (dạy học) | "**người Nhật hay chưa quen** kéo bún" | "**khách chưa từng ăn bún nước kiểu này** thường lúng túng" |

### Quét chéo cả bộ → thêm 4 ca ở sách khác

| Sách | Trước | Sau |
|---|---|---|
| 04 `rule_14` | "**người Việt thường** mặc định ai cũng đọc hết" | "**người gửi hay** mặc định..." |
| 07 `rule_05` | "đây là chỗ **người Việt hay nhầm**" | "đây là chỗ **rất dễ nhầm**" |
| 07 `rule_05` | "**người Nhật rất tinh ý** với thứ tự" | "**ở những buổi trang trọng, thứ tự là thứ người ta để ý**" |
| 08 `rule_03` | "sắc thái mỏng, **người Việt hay nhầm**" | "**người học tiếng Nhật** hay nhầm" |

### ⚠️ Hai ca là do CHÍNH TÔI viết ra hôm nay

`07 rule_05` cả hai câu đều nằm trong đoạn tôi viết lại sáng nay khi sửa lỗi thứ tự trao danh thiếp. Tức **khi bổ sung nội dung mới rất dễ tự tạo lỗi khái quát hoá** — không phải lỗi kế thừa.

→ Đã ghi thành **mục 4-D2** trong `.claude/rules/book-review.md` kèm lệnh quét và bảng cách viết lại.

**Kiểm cuối:** 7/7 nội dung mới có mặt · 4/4 cách nói gán chặt = 0 · toàn bộ 10 sách: **0 câu văn dạy học gán chặt**.

---

# 🚀 ĐÃ SEED PRODUCTION — 2026-08-17

Trước đó hồ sơ này ghi *"Sách dialogue-only: KHÔNG có bài tập JSON, KHÔNG seed DB"*.
**Điều đó nay đã thay đổi** — chủ nhà chỉ ra nội dung sách 09 cũng là markdown như sách khác,
hoàn toàn đưa vào `curricula`/`curriculum_node` được.

## Thông số đã lên production

| | |
|---|---|
| `curricula.id` | **800000010** (`book_seq = 10`) |
| `curriculum_node` | **94 node**, `801000001` → `801000094` |
| Kích thước node | trung bình **3.5 KB** (nhẹ hơn mặt bằng 15 KB của sách 02-08) |
| Mở free | `is_free_override=TRUE` · `free_preview_count=9999` · **94/94** node `access_level='free'` |
| Script build | `_shared/scripts/build_sql_book09.py` |
| File SQL | `release/books_sql/09_real_dialogues.sql` (508 KB) |

## Cách cắt node — theo TÌNH HUỐNG, không theo chương

8 file `chương.md` (37-74 KB) cắt tại `## Tình huống N — …` thành **94 node**:

| Chương | Node | | Chương | Node |
|---|---|---|---|---|
| 01 展示会 | 10 | | 05 来訪 | 13 |
| 02 ゴルフ | 12 | | 06 温泉 | 11 |
| 03 忘年会 | 11 | | 07 新製品発表 | 12 |
| 04 出張 | 14 | | 08 結婚式 | 11 |

Lý do không để 1 chương = 1 node: node 58 KB gấp 4 lần mặt bằng, người học phải cuộn rất dài.
Đơn vị học tự nhiên của sách hội thoại là **một cảnh**.

Phần dẫn nhập đầu chương gộp vào node đầu, "Tổng kết của Dũng" gộp vào node cuối →
**không mất chữ nào**: nguồn 339.407 ký tự → SQL 339.244 (chênh 163 = 8 dòng H1 chuyển thành `node_title`).

## Về book_seq = 10 — không trùng ai

`BOOK_REGISTRY.md` ghi "seq 9 = sách 09" nhưng đó là **viết theo STT thư mục**.
Thực tế `01_email` đã tách 2 seq (vi=1, ja=2) nên cả dây dịch một bậc — `08_smalltalk` đang giữ seq 9.

`10_business_japanese` chiếm seq 10 trên giấy, nhưng nó **đi hệ `study_courses` id 8010**,
không dùng `make_id` → dải `801xxxxxx` thực sự trống. Đã verify trên production trước khi chạy.

seq 10 là số tròn chục → ident đảo `10`→`01` để không đụng dải sách 1 (`81xxxxxxx`).
→ Đã cập nhật `BOOK_REGISTRY.md` cho khớp thực tế.

## Diễn tập trước khi lên production

Chạy trên DB local với **bẫy kiểm chứng**: đổi 1 node thành `premium`, tắt `is_free_override`,
hạ `free_preview_count` về 3 → seed lại lần 2, **cả ba giữ nguyên**, vẫn đúng 94 node.
Sách 02-08 (458 node) không bị đụng.

`ON CONFLICT (id) DO UPDATE` chỉ ghi `node_title` + `node_content`, **không đụng** cột vận hành
(`access_level`, `order_index`, `is_active`, `is_deleted`, `curriculum_id`, `tenant_id`).

## Kiểm chứng sau khi chạy production

- 7 nội dung mới có mặt: tỷ lệ tai nạn nói đúng · cảnh báo rượu-onsen · 袱紗 · Shibusawa Eiichi · FSA 7 năm · thay giày ở locker · "tuỳ vùng tuỳ nhà"
- 4 lỗi cũ = **0**: "tai nạn thấp hơn Tokyo" · "chút rượu + nước ấm" · Fukuzawa · "đổi dép trong"
- Backend `healthy`, service `active`, sách 02-08 vẫn 458 node

⚠️ **Chưa có bìa sách.** Bảng `curricula` không có cột cover/image/thumbnail — bìa đến từ chỗ
khác (frontend hoặc bảng media riêng), chưa tra. Sách 09 hiện chưa được cấu hình bìa.

## Lần sau sửa nội dung sách 09

```bash
python3 _shared/scripts/build_sql_book09.py          # sinh lại SQL từ .md
# rồi đẩy release/books_sql/09_real_dialogues.sql lên production và chạy
```
Không cần dựng lại gì — id giữ nguyên, chỉ nội dung được ghi đè.
