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
