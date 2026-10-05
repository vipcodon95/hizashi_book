# [09-R2] Đợt 2 — Rà soát chương 04–06

> Agent: R2 (Opus) | Ngày: 2026-08-16 | Trạng thái: HOÀN THÀNH
> Phạm vi: `chương_04_出張/chương.md` (571 dòng), `chương_05_来訪/chương.md` (585), `chương_06_温泉/chương.md` (515)
> Áp dụng `.claude/rules/book-review.md` — nhiệm vụ số 1 là **kiểm chứng fix đợt 1**, không phải tìm lại lỗi cũ.
> Mọi kết luận "không có / có" đều đã **strip ruby** bằng python trước khi grep.

---

## 0. Bảng tổng kết

| Mức | Số lượng | Ghi chú |
|---|---|---|
| 🔴 Nghiêm trọng | **6** | 1 lỗi trục A (dạy làm sai việc thật), 2 lỗi trục D (sai sự thật về VN), 1 fix nửa vời, 2 trục B |
| 🟡 Vừa | **7** | tiếng Anh trong ô JA, dịch sai chức danh, tự mâu thuẫn nhỏ |
| 🔵 Nhẹ | **4** | gợi ý nâng chất, không bắt buộc |
| **Tổng phát hiện MỚI** | **17** | |

**Kết luận chung về đợt sửa 1:** chất lượng fix **cao hơn hẳn mức trung bình**. 5/6 nhóm fix trọng điểm ĐÃ FIX TRỌN VẸN (cả JA lẫn VN lẫn Bí quyết) — đặc biệt khối miễn thuế ch04 và khối kaiseki ch06 làm rất sạch. Chỉ có **1 ca fix nửa vời thật** (ch05 d407) và **2 mục B1/B2 nêu mà chưa đụng tới** (JAL hành lý, tỷ lệ tai nạn HCMC).

**Việc quan trọng nhất chưa ai bắt được:** ch06 dạy **uống rượu rồi vào onsen** như một điều tốt (dòng 381) — đây là lỗi trục A cùng hạng với lỗi ヒートショック sách 08, và **khối Bí quyết onsen mới thêm ở đợt 1 không hề cảnh báo**.

---

## 1. 🔴 BẢNG KIỂM CHỨNG FIX ĐỢT 1 (rule mục 5)

| # | Mục fix đợt 1 | JA | VN | Bí quyết / sổ | Kết luận |
|---|---|---|---|---|---|
| 1 | **ch04 miễn thuế** (fix nặng nhất) | ✅ d430 `免税手続きもできますが、在留カードをお持ちの方は対象外になります。` · d431 `あ、就労ビザなので大丈夫です。` | ✅ *"khách có thẻ cư trú thì không thuộc diện ạ"* / *"em visa làm việc nên thôi ạ"* | ✅ d433 sổ: *"visa làm việc KHÔNG được miễn thuế"* · d441 cảnh báo 非居住者 <6 tháng · d442 **10%** hàng thường / **8%** thực phẩm | **✅ ĐÃ FIX TRỌN VẸN** — mẫu mực. Cả 4 tầng (thoại JA, thoại VN, sổ nhân vật, Bí quyết) đều đồng bộ. Còn thêm được nhịp dẫn cảnh d426 *"Dũng định hỏi thủ tục miễn thuế thì khựng lại"* → biến lỗi cũ thành bài học |
| 2 | **ch04 "Itoki" → "Itō"** (16 chỗ) | — | ✅ | ✅ | **✅ ĐÃ FIX TRỌN VẸN** — quét toàn 3 chương + `_front_matter.md`: **"Itoki" = 0 lần**. 16 chỗ nay là "Itō"; `_front_matter.md` d25 = *"anh Itō (Nagoya)"*. Khớp `voice_profiles.json` (`ito_nagoya`) |
| 3 | **ch04 "công vụ" → "công tác"** (3 chỗ) | — | ✅ | ✅ | **✅ ĐÃ FIX TRỌN VẸN** — **"công vụ" = 0 lần** trong cả 3 chương |
| 4 | **ch06 kaiseki — 香箱蟹 → 松葉蟹** | ✅ d164 `前菜は松葉蟹` · d171 `これ、松葉蟹` | ✅ d164 *"cua matsuba"* · d171 *"cua matsuba"* | — | **✅ ĐÃ FIX** — nhưng đẻ ra lỗi mới ở phần vùng miền, xem **#R2-05** |
| 5 | **ch06 kaiseki — 冬瓜 → 蕪** | ✅ d164 `煮物は蕪と…` · d173 `蕪の煮物` | ✅ d164 *"củ cải tròn kabu"* · d173 *"kabu ninh"* | — | **✅ ĐÃ FIX TRỌN VẸN** — cả 2 dòng JA và cả 2 dòng VN. "bí đao"/"kobako" = **0 lần** |
| 6 | **ch06 蛤 "con hàu" → "con ngao trắng"** | ✅ d182 `蛤の出汁` | ✅ d182 *"Dashi từ con ngao trắng"* | — | **✅ ĐÃ FIX** — "con hàu" = 0 lần |
| 7 | **ch06 khối Bí quyết onsen mới** (かけ湯/khăn/浴衣右前) | — | — | ✅ d236–250 | **✅ ĐÃ THÊM** — khối "Quy tắc tắm onsen — 5 điều bắt buộc" + khối 浴衣 với cảnh báo ⚠️ khâm liệm. **NHƯNG thiếu 1 mục sinh tử**, xem **#R2-01**; và có 1 câu tự mâu thuẫn, xem **#R2-07** |
| 8 | **ch05 xưng hô d370** 田中 `私のも美味しい` | — | ✅ *"Của tôi cũng ngon lắm"* | — | **✅ ĐÃ FIX** |
| 9 | **ch05 xưng hô d393** 松本 `伺いたい` | — | ✅ *"tôi muốn nói thẳng 2 điểm"* | — | **✅ ĐÃ FIX** |
| 10 | **ch05 xưng hô d400** 松本 | — | ✅ *"lý lịch anh Lê Hoàng Anh tôi rất quan tâm"* | — | **✅ ĐÃ FIX** |
| 11 | **ch05 xưng hô d407** 松本 "chúng em" | — | ⚠️ *"về phía Hakuō **chúng tôi**…"* ✅ nhưng **cuối câu vẫn** *"Ý kiến hôm nay **em** đem về hội đồng Tokyo"* | — | **🔴 FIX NỬA VỜI** — xem **#R2-04**. Đúng kiểu hụt số 2 trong rule mục 5: sửa được 1 vế, bỏ sót vế thứ hai **trong cùng một dòng** |
| 12 | **ch05 xưng hô d445** 松本 | — | ✅ *"tôi nhớ về Tokyo dùng"* | — | **✅ ĐÃ FIX** |
| 13 | **ch05 xưng hô d510** 松本 | — | ✅ *"ngày đầu tôi đã nhận từ chị Hương rồi"* | — | **✅ ĐÃ FIX** |

**Điểm số fix đợt 1 trong phạm vi R2: 12/13 trọn vẹn, 1 nửa vời.**

### 1b. Mục B1/B2 đã nêu nhưng ĐỢT 1 CHƯA ĐỤNG TỚI (không phải fix hỏng — là chưa làm)

| Mục | Nội dung | Trạng thái hiện tại |
|---|---|---|
| B1 #C14 | ch04 d482 hành lý JAL "¥3.000-5.000/kg" | **CHƯA SỬA** — xem #R2-03 (đã WebSearch, sai thật) |
| B2 ch05 | d73 "事故率は東京より低い" | **CHƯA SỬA** — xem #R2-02 (đã WebSearch, sai thật, nguy hiểm nhất) |
| B2 ch06 | d137 「仲居」 dịch "lễ tân riêng" | **CHƯA SỬA** — xem #R2-08 |
| B2 ch06 | d399 mâu thuẫn số phòng | **CHƯA SỬA** — xem #R2-09 |
| B1 #C15 | ch04 d177 江戸東京博物館 đóng cửa | **KHÔNG CẦN SỬA** — WebSearch: đã mở lại **31/03/2026**, chương đặt 9/2026 → **hợp lệ**. Xem mục CẤM SỬA |

---

## 2. 🔴 BẢNG LỌC "TIẾNG ANH TRONG Ô NHẬT" — TỪNG CA, 3 CHƯƠNG

Phương pháp: chỉ quét **ô JA** (phần trước `<br/>` của dòng `| **speaker** |`), strip ruby trước.

**Số thô trong 3 chương: 476 lần chữ Latin.** Sau khi lọc → **11 lỗi thật**.

### 2.1 Các nhóm KHÔNG PHẢI LỖI (loại ra)

| Nhóm | Số lần | Ví dụ | Vì sao không phải lỗi |
|---|---|---|---|
| **N1. Tiếng Việt trong lời thoại tiếng Việt có nhãn** `(ベトナム語)` | ~180 | ch06 d101 `(ベトナム語、小声)Em nhớ nhe, mai trước về mua 3 cái…` · ch05 d119/120/330 · ch06 d134/135/403–411 | **Chủ ý thiết kế** — main Claude đã chốt ở đợt 1. Đây là đặc trưng "Real Dialogues". Sửa = phá sách |
| **N2. Hội thoại tiếng Anh CÓ CHỦ Ý, có nhãn** `(英語で)` | ~95 | ch05 **d316** `(英語で熱意)So for Phase 5, we're proposing an event-driven architecture using EventBridge with Step Functions…` · **d317** `(英語で)Why EventBridge over SQS…` · **d318** · **d324** `(英語で割り込む)Hai, can we pause for a sec?` · **d325** `Sure, sorry. Tanaka-san, want me to switch to Japanese?` · **d215** `(英語、感謝の目)Yes, of course. I'll pause every 2 mins.` | **Nhân vật đang NÓI TIẾNG ANH THẬT** trong buổi họp kỹ thuật. Cả cảnh d310–331 được xây quanh chính việc đó: Tanaka không theo kịp → Dũng ngắt → Hải chuyển sang tiếng Nhật ở d327. **Nếu dịch sang katakana thì bài học biến mất hoàn toàn.** Đây là một trong những cảnh hay nhất chương |
| **N3. Tên riêng (người, công ty, địa danh, sản phẩm)** | ~90 | `Tokyo`, `HCMC`, `Tran Van Dung`, `Tien Phat`, `Sapa`, `Kodama`, `Suica`, `Shinkansen`, `Uniqlo`, `Phạm Ngũ Lão`, `Lê Hoàng Anh`, `Cá basa`, `Nghêu hấp sả` | Người Nhật viết y hệt |
| **N4. Thuật ngữ IT/tài chính người Nhật viết chữ Latin nguyên bản** | ~65 | `AWS`, `Bedrock`, `EventBridge`, `Step Functions`, `OpenSearch`, `SQS`, `Slack`, `Phase 5`, `KPI`, `SLA`, `BCP`, `MoU`, `IP`, `R&D`, `AI`, `BD`, `CFO`, `PM`, `Wi-Fi`, `OK` | Chuẩn ngành. Người Nhật gõ Slack/JIRA đúng như vậy |
| **N5. Từ tiếng Nhật viết Latin trong bối cảnh giải thích cho người Việt** | 3 | ch06 d134 `genkan` · d411 `gohan` · ch06 d217 `spa` | Nằm trong lời thoại **tiếng Việt**, đang giải thích từ Nhật — đúng chức năng |
| **N6. Đơn vị / ký hiệu** | 5 | `kg` (ch04 d463, 470), `ms` (ch05 d318, 329) | Không phải "tiếng Anh lẫn" |

### 2.2 LỖI THẬT — 11 ca

| # | Chương/dòng | Người nói (tuổi/vai) | Nguyên văn JA | Vấn đề | Đề xuất |
|---|---|---|---|---|---|
| E-1 | ch04 **d277** | **中村CFO** (50–55t, executive) | `今日は frank に話したいんだけど` | Hồ sơ `nakamura_cfo` = *"senior executive, deliberate, slow + precise"*. `frank に` chữ Latin là cách nói người trẻ ngành IT. **Nặng nhất trong 11 ca** vì sai giọng nhân vật cấp cao nhất | `率直に` hoặc `ざっくばらんに` |
| E-2 | ch04 **d277** | 中村CFO | `Tokyo office のチーム` | `office` thừa — trong câu đã có `Tokyo` | `東京のチーム` |
| E-3 | ch04 **d287** | 中村CFO | `Slack チャンネルの提案 deck 出してもらえる?` | `deck` — người Nhật nói `資料` hoặc `スライド`. Cùng nhân vật, cùng cảnh với E-1 → giọng CFO bị bào mòn liên tục | `提案資料` |
| E-4 | ch04 **d349** | **大垣 営業部長** (45–50t) | `こっちで face-to-face で詰めたい` | 営業部長 Nhật nói `対面で` / `直接会って` | `直接会って詰めたい` |
| E-5 | ch04 **d283** | ズン (đang nói keigo với CFO) | `エンジニアチームの技術 depth が深いこと` | Chèn `depth` giữa câu 敬語 rồi ngay sau lại dùng `即答力` (từ Nhật chuẩn) → **giọng không nhất quán trong 1 câu**. Đã có `技術` rồi, `depth` là thừa nghĩa | `技術力の深さ` |
| E-6 | ch04 **d358** | ズン | `tech depth で会話できる準備` | Cùng lỗi E-5, lặp lại | `技術的な深さで会話できる準備` |
| E-7 | ch04 **d355** | ズン | `HCMC で Phase 5 prep の集中期間` | `prep` viết tắt tiếng Anh khẩu ngữ trong câu 敬語 với 部長 | `Phase 5 準備の集中期間` |
| E-8 | ch05 **d136** | **フオン副部長** (nói 敬語 với khách JP) | `ベジ料理優先で organize し直しますね` | `organize` chèn vào 敬語 với khách. Người Nhật business dùng `手配` | `手配し直します` |
| E-9 | ch05 **d291** | **松本PM** (45–50t, formal client) | `HCMC は短くて strong` | `strong` một từ tiếng Anh trơ trọi giữa câu Nhật — không phải thuật ngữ, không phải tên riêng | `激しい` hoặc `강烈` → `HCMC は短くて激しいね` |
| E-10 | ch05 **d285** | 大垣 営業部長 | `わあ、ベトナム scuba(笑)` | `scuba` dùng như tính từ — **không đúng tiếng Anh cũng không đúng tiếng Nhật**, cùng loại với lỗi `enjoy + matter improve` B1 đã bắt ở ch02. Bản VN dịch thẳng *"Việt Nam scuba"* người Việt không hiểu | JA `まるでスキューバダイビングだね(笑)` · VN *"Wow, mưa Việt Nam như đi lặn (cười)"* |
| E-11 | ch06 **d211** | 松本PM | `現代の reset ボタン` | Đã có katakana sẵn (`リセット`) — chính chương này d209 Ōgaki dùng đúng `これでリセット`. **Tự mâu thuẫn về quy ước trong cùng chương** | `現代のリセットボタン` |

### 2.3 Ca ranh giới — KHÔNG tính là lỗi (ghi lại để main Claude khỏi sửa nhầm)

| Dòng | Từ | Vì sao giữ |
|---|---|---|
| ch05 d392/393 | `frank` (Hà CTO + Matsumoto) | **KHÁC ch04 d277.** Đây là buổi họp Việt–Nhật, Hà CTO người Việt mở đầu bằng `frank に話しましょう` rồi Matsumoto **lặp lại từ của đối phương** — hành vi hội thoại có thật (mirroring). Sửa sẽ mất nét |
| ch04 d143/145 | `onboarding`, `kickoff` | Từ chuẩn ngành IT Nhật, viết Latin bình thường trong Slack/họp |
| ch04 d139, ch05 d204/208 | `slide` | Người Nhật ngành IT nói `スライド`, nhưng viết Latin trong tài liệu là phổ biến. Đợt 1 đã chốt giữ `demo`/`slide` |
| ch05 d406/465 | `co-ownership`, `R&D project` | Thuật ngữ hợp đồng, không có bản dịch gọn |
| ch04 d111 | `visitor pass` | Chữ in trên chính cái thẻ — lễ tân đọc tên vật |
| ch06 d69 | `HCMC visit` | Trong lời Tuấn (người Việt) nói tiếng Nhật — code-switch tự nhiên của người nước ngoài, đúng đặc trưng nhân vật |

**→ CON SỐ CUỐI: 11 lỗi tiếng Anh trong ô JA cho cả 3 chương** (ch04: 7, ch05: 3, ch06: 1). Không phải 243.

---

## 3. 🔴 BẢNG DỮ KIỆN ĐÃ TRA WebSearch

| # | Chương/dòng | Sách viết | Thực tế tra được | Kết luận | Nguồn |
|---|---|---|---|---|---|
| W-1 | **ch05 d73** | `事故率は東京より低いんですよ` / *"tỷ lệ tai nạn thấp hơn Tokyo"* | Việt Nam **17,7 tử vong/100.000 dân** (Asian Transport Observatory 2025; WHO 2018 ước 26,4). Nhật ~2–3/100.000 — **thấp hơn VN 6–9 lần** | 🔴 **SAI — chưa sửa** | asiantransportobservatory.org · who.int GHO |
| W-2 | ch05 d73 | `約700万台のバイクが登録されてます` | TP.HCM ~7,4–8,5 triệu xe máy đăng ký (riêng 2025 đăng ký mới 290.570) | ✅ **ĐÚNG** — giữ nguyên | tienphong.vn |
| W-3 | **ch04 d482** | *"Vượt 2kg+ → tính phụ phí (≈¥3.000-5.000/kg)"* | JAL quốc tế **KHÔNG tính theo kg**. Phổ thông = **2 kiện × 23kg**; vượt 23–32kg = **¥6.000/kiện** (Nhật↔châu Á), ¥10.000 (Âu/Mỹ) | 🔴 **SAI — chưa sửa** | jal.co.jp/jp/ja/inter/baggage/checked |
| W-4 | **ch04 d452, 463** | Va-li 23,5kg → JAL chặn, bắt chuyển đồ sang xách tay | Với JAL quốc tế 2 kiện × 23kg, hành khách **có thể ký gửi kiện thứ hai miễn phí** → 0,5kg vượt trên 1 kiện là tình huống **có thật** (giới hạn là **per-piece**), nhân viên nhắc là đúng | 🟡 **Cảnh phim ĐÚNG, chỉ Bí quyết sai** — xem #R2-03 | như trên |
| W-5 | **ch06 d171** | `松葉蟹。山陰・北陸の冬の王様` | 松葉ガニ = tên thương hiệu **CHỈ dùng cho ズワイガニ đánh ở vùng 山陰** (Kyoto→Shimane). Hokuriku gọi khác: Fukui = **越前ガニ**, Ishikawa = **加能ガニ** | 🔴 **SAI (lỗi MỚI do fix đợt 1 đẻ ra)** | marutsu.jp · takaraya-himono.com |
| W-6 | ch06 d164, 171 | 松葉蟹 trong kaiseki tháng 1/2027 | Mùa 松葉ガニ: **06/11 → 20/03**, ngon nhất 12–2. Tháng 1 = đỉnh vụ | ✅ **ĐÚNG mùa** — fix đợt 1 giải quyết được lỗi mùa vụ | matsubishi.online |
| W-7 | ch06 d164, 173 | 蕪 (kabu) trong 煮物 tháng 1 | Kabu là rau **mùa đông** — đúng 旬 | ✅ **ĐÚNG** | — |
| W-8 | **ch06 d247–249** | `右前` = "Vạt TRÁI đè lên vạt PHẢI"; mẹo nhớ "luồn tay phải vào vạt bên trong dễ dàng" | 右前 = **vạt phải nằm DƯỚI, vạt trái ĐÈ LÊN** → mô tả ở d247 **ĐÚNG**. Mẹo nhớ chuẩn: **右手が懐に入れやすい** → d249 cũng ĐÚNG. 左前 = áo liệm → d248 ĐÚNG | ✅ **CẢ 3 DÒNG ĐÚNG** — xem mục CẤM SỬA (rất dễ bị sửa nhầm) | buysellonline.jp · gosougi.co.jp |
| W-9 | **ch06 d346 + d381** | Uống 燗酒 xong (d301–322) → 21:00 vào onsen; Bí quyết d381 khen *"chút rượu + nước ấm → thư giãn"* | Bộ Y tế Nhật + Cơ quan Tiêu dùng: **飲酒後の入浴は避ける** — rượu hạ huyết áp, cộng nước nóng gây ngất/đuối nước. ~15.000 người chết/năm khi tắm ở Nhật, gấp **hơn 2 lần** tai nạn giao thông ở người cao tuổi | 🔴 **LỖI TRỤC A — chưa ai bắt** | caa.go.jp caution_042 · gov-online.go.jp · mhlw.go.jp |
| W-10 | **ch04 d177** | Tanaka gợi ý đi 江戸東京博物館 (bối cảnh 9/2026) | Bảo tàng **mở lại 31/03/2026** sau ~4 năm đại tu | ✅ **ĐÚNG** — B1 #C15 nay không còn là lỗi | metro.tokyo.lg.jp · edo-tokyo-museum.or.jp |
| W-11 | **ch05 d292, 295** | d292 `今 PM 7時、晴れたら虹が出るかも` · d295 *"19:15 … mặt trời lặn rực rỡ ngang sông Sài Gòn"* | HCMC tháng 11: mặt trời lặn **~17:26–17:28**. Lúc 19:00–19:15 trời **đã tối hẳn ~1,5 tiếng** | 🔴 **SAI sự thật về Việt Nam** | timeanddate.com · sunrisesunset.io |
| W-12 | ch06 d149 | Bí quyết: *"Quay mũi giày ra ngoài (= nghi thức cho người dọn)"* | Ở ryokan **có 仲居**: khách đi thẳng vào, **để nakai xoay giày** — khách tự xoay là thừa. Nếu không có nhân viên: quay người **ngang/chéo**, quỳ gối xoay giày; **tuyệt đối không quay lưng/mông về phía trong nhà** | 🟡 **THIẾU vế quan trọng** — xem #R2-10 | hint-pot.jp · allabout.co.jp · kateigaho.com |
| W-13 | ch04 d441 | Miễn thuế: ngưỡng ¥5.000/cửa hàng/ngày, chỉ 非居住者 <6 tháng, 10%/8% | Khớp quy định 消費税免税制度 | ✅ **ĐÚNG** — fix đợt 1 chuẩn | (đã tra đợt 1, xác nhận lại) |

---

## 4. PHÁT HIỆN CHI TIẾT

### 🔴 #R2-01 — [TRỤC A: DẠY LÀM SAI VIỆC THẬT] ch06 d346 + d381 — uống rượu rồi vào onsen được dạy như điều TỐT

**Đây là phát hiện quan trọng nhất của R2.** Cùng hạng nguy hiểm với lỗi ヒートショック sách 08 rule_15 mà rule mục 4A nêu đích danh.

Chuỗi sự kiện trong chương:
- d297–322 — bữa tối kaiseki, **燗酒 (sake nóng)**, Ōgaki rót cho cả bàn, Dũng uống (d321 `燗酒、初めて飲みました`)
- d344 — `## Tình huống 9 — Sat 21:00 · Onsen indoor lần 2 (sau bữa tối)`
- d346 — *"Onsen indoor nhỏ 30 phút sau bữa tối"* — Ōgaki + Dũng ngâm onsen
- d371 — Ōgaki: `長く入りすぎた` (ngâm lâu quá)

Rồi Bí quyết chốt lại bằng cách **khen chính hành vi đó**:
> d379–383:
> **Onsen khuya 2 người** (sau bữa tối, bồn nhỏ, 2 người) = môi trường đàn anh JP hay mở lòng nhất:
> - Vì tắm trần → cởi bỏ vật chất.
> - **Vì chút rượu + nước ấm → thư giãn.**
> - Vì ánh sáng nhỏ + hơi nước → thật sự riêng tư.

**Vấn đề:**
1. Sách **nêu rượu như một thành phần tích cực** của công thức tạo thân mật. Người học sẽ hiểu: uống xong đi onsen là cách làm đúng.
2. Thực tế: 消費者庁 và 厚生労働省 khuyến cáo rõ `飲酒後、医薬品服用後の入浴は避けましょう` — rượu làm hạ huyết áp, cộng với nước nóng 41°C gây tụt huyết áp sâu → ngất trong bồn → **đuối nước**. Nhật có ~15.000 ca tử vong/năm khi tắm; ở người cao tuổi con số này **gấp hơn 2 lần tử vong giao thông**.
3. Nghiêm trọng gấp đôi vì **khối Bí quyết onsen MỚI THÊM ở đợt 1** (d236–244, "5 điều bắt buộc") **không có một chữ nào về rượu**. Đợt 1 bổ sung かけ湯/khăn/浴衣 nhưng bỏ sót đúng điều duy nhất có thể giết người.
4. Nhân vật Dũng là **người nước ngoài mới sang**, đang bị đàn anh rót rượu — đúng nhóm rủi ro cao nhất (không biết quy tắc, ngại từ chối).

**Đề xuất sửa (3 tầng, phải làm cả 3):**
- **Bí quyết d236–244** — thêm điều thứ 6: *"⚠️ **Uống rượu rồi KHÔNG vào bồn ngay.** Rượu làm hạ huyết áp, cộng nước nóng dễ gây choáng/ngất — Nhật mỗi năm có hàng nghìn ca tai nạn khi tắm vì lý do này. Chờ ít nhất 1 tiếng sau khi uống, hoặc đi onsen TRƯỚC bữa tối. Uống nước lọc trước và sau khi ngâm."*
- **Bí quyết d381** — bỏ hẳn vế *"Vì chút rượu + nước ấm → thư giãn"*, thay bằng *"Vì đã qua bữa tối, nhịp đã chậm lại"*.
- **Thoại d346 hoặc d348** — cài 1 câu cho Ōgaki (người có kinh nghiệm) tự nói ra quy tắc, biến rủi ro thành bài học: `大垣: 「食後すぐは入らないようにしてるんだ。お酒の後は特にね。1時間置いてから」` → đây sẽ là một trong những chi tiết "thật" nhất chương.

---

### 🔴 #R2-02 — [TRỤC D: SAI SỰ THẬT VỀ VIỆT NAM] ch05 d73 — "tỷ lệ tai nạn thấp hơn Tokyo"

> JA: `(笑って)はい、HCMC は約700万台のバイクが登録されてます。一見カオスですが、実は皆さんが暗黙のリズムで動いてて、**事故率は東京より低いんですよ**。`
> VN: *"(cười) Vâng, HCMC có khoảng 7 triệu xe máy đăng ký. Nhìn chaos nhưng thật ra mọi người chạy theo nhịp ngầm, **tỷ lệ tai nạn thấp hơn Tokyo**."*

**Vấn đề:** rule mục 4D ghi rõ *"lỗi về Việt Nam nguy hiểm nhất vì độc giả là người Việt"*. Đây đúng ca đó, và còn tệ hơn: sách đang **dạy người học nói câu này với khách Nhật**.
- Việt Nam: **17,7 tử vong/100.000 dân** (Asian Transport Observatory 2025), WHO 2018 ước **26,4**.
- Nhật Bản: ~2–3/100.000 — thuộc nhóm an toàn nhất thế giới.
- Chênh **6–9 lần**. Bất kỳ khách Nhật nào tra Google 10 giây cũng bắt bẻ được → nhân vật Dũng mất uy tín ngay trong xe từ sân bay về, tức **lượt thoại thứ 5 của cả chương**.
- Con số 7 triệu xe máy thì **ĐÚNG** (~7,4–8,5 triệu) — chỉ vế so sánh là sai.

**Đề xuất:** giữ trọn ý "nhịp ngầm" (rất hay), bỏ vế số liệu:
> JA: `…一見カオスですが、実は暗黙のリズムがあって、**流れに乗れば意外と動けるんです**。ただ、慣れない方は絶対に一人で横断しないでください。`
> VN: *"…Nhìn thì hỗn loạn nhưng thật ra có một nhịp ngầm, bắt được nhịp là đi được. Chỉ có điều các anh chị chưa quen thì tuyệt đối đừng tự qua đường một mình ạ."*

Vế thêm còn **cứu được trục A**: hiện chương dạy khách Nhật tự băng qua dòng xe máy HCMC (d76 Dũng còn hứa *"sáng mai em demo ở Phạm Ngũ Lão"*) mà không một lời cảnh báo.

---

### 🔴 #R2-03 — [TRỤC D: SAI SỰ THẬT] ch04 d482 — phụ phí hành lý JAL tính theo kg (B1 #C14 chưa sửa)

> d482 (Bí quyết): *"Nếu vượt 0.5-1kg → nhân viên quầy thường linh hoạt nếu bạn di chuyển đồ nhanh ngay tại chỗ. **Vượt 2kg+ → tính phụ phí (≈¥3,000-5,000/kg)**."*

**Vấn đề:** JAL quốc tế **không có biểu phí theo kg**. Biểu thật:
- Phổ thông quốc tế: **2 kiện × 23kg** miễn phí (áp dụng cả tuyến Đông Nam Á).
- Kiện nặng 23–32kg: **¥6.000/kiện** (Nhật ↔ châu Á), ¥10.000 (Âu/Mỹ).
- Vượt số kiện, quá khổ: tính riêng, cộng dồn.

Người học đọc Bí quyết này rồi tự tính "vượt 3kg = ¥15.000" → sai gấp 2,5 lần thực tế, và bỏ lỡ thông tin đắt giá nhất là **họ được ký gửi kiện thứ hai miễn phí**.

**Lưu ý quan trọng cho main Claude:** **cảnh phim d452–470 KHÔNG SAI.** Giới hạn 23kg là **per-piece**, nên 1 va-li 23,5kg bị nhắc là hoàn toàn có thật. Chỉ **Bí quyết d479–483** sai.

**Đề xuất — chỉ sửa d479 + d482:**
- d479: *"Giới hạn JAL/ANA hạng phổ thông quốc tế: **2 kiện, mỗi kiện tối đa 23kg** (không phải tổng 23kg). Vietnam Airlines hạng phổ thông tiêu chuẩn thường chỉ 1 kiện 23kg — kiểm tra vé trước."*
- d482: *"Vượt 0,5–1kg trên một kiện → nhân viên thường linh hoạt nếu bạn chuyển đồ nhanh tại chỗ. Vượt hẳn → JAL tính **theo kiện, mức cố định** (kiện 23–32kg tuyến Nhật–châu Á ≈ **¥6.000/kiện**), **không tính theo kg**. Nếu đồ nhiều, chia sang kiện thứ hai còn rẻ hơn — hoặc miễn phí."*

---

### 🔴 #R2-04 — [FIX NỬA VỜI] ch05 d407 — Matsumoto vẫn xưng "em" ở nửa sau câu

> JA: `現実的で良いです。ハーさん、白鷗としても、ベトナムを単なる outsourcing 拠点ではなく、戦略パートナーとして見たい。今日のコメント、東京 board に**持ち帰ります**。`
> VN: *"Thực tế là tốt. Anh Hà, về phía Hakuō **chúng tôi** cũng muốn nhìn Việt Nam không chỉ là điểm gia công mà là đối tác chiến lược. Ý kiến hôm nay **em** đem về hội đồng Tokyo."*

**Bằng chứng đây là lỗi (theo rule mục 4E):** bản Nhật `持ち帰ります` là **hành động của chính người nói**, câu **không có `〜さん`** trỏ người khác. Người nói là **Matsumoto, 45–50 tuổi, phía KHÁCH HÀNG**, đang nói với **Hà CTO 30–35 tuổi, phía nhà cung cấp**. Xưng "em" sai kép: sai tuổi + sai vị thế thương mại.

**Chẩn đoán:** đợt 1 sửa được `chúng em → chúng tôi` ở vế giữa nhưng **bỏ sót chữ "em" ở vế cuối cùng một dòng**. Đúng kiểu hụt số 2 và số 4 trong rule mục 5 (vá một chỗ, script không bắt hết pattern). Bảng đợt 1 ghi *"ch05 d407 松本 → 'chúng em' → **chúng tôi**"* nên nhìn qua tưởng đã xong.

**Đề xuất:** *"Ý kiến hôm nay **tôi** sẽ đem về hội đồng Tokyo."*

**Cảnh báo cho main Claude:** nên quét lại **cả 9 chỗ trong danh sách đợt 1** theo cách "mỗi dòng có thể có nhiều hơn 1 lỗi", không chỉ kiểm chuỗi đã liệt kê.

---

### 🔴 #R2-05 — [TRỤC D: LỖI MỚI DO FIX ĐỢT 1 ĐẺ RA] ch06 d171 — 松葉蟹 gán cho cả 北陸

> JA: `(指差す)これ、松葉蟹。**山陰・北陸**の冬の王様。甘みが全然違うよ。`
> VN: *"(chỉ tay) Cái này là cua matsuba, **vua của mùa đông vùng San-in và Hokuriku**. Vị ngọt khác hẳn đó."*

**Vấn đề:** 松葉ガニ là **tên thương hiệu vùng 山陰** (Kyoto → Shimane) — chỉ dùng cho ズワイガニ đực đánh ở vùng biển đó. Hokuriku dùng tên khác:
- Fukui → **越前ガニ**
- Ishikawa → **加能ガニ**
- Niigata/Toyama → tên riêng khác

Gọi 松葉蟹 là "vua của San-in **và Hokuriku**" là lỗi mà người Nhật nào có quan tâm ẩm thực đều nhận ra ngay — đúng loại lỗi rule mục 4D nêu (đặc sản gán sai tỉnh).

**Nguồn gốc lỗi:** đợt 1 thay `香箱蟹` (đúng là của Hokuriku) → `松葉蟹` (San-in) nhưng **giữ nguyên cụm địa danh `北陸` của câu cũ**. Đây chính là kiểu hụt số 3 trong rule mục 5: vá thoại nhưng quên phần chú thích đi kèm.

**Đề xuất:** bỏ `北陸`:
> JA: `これ、松葉蟹。**山陰の冬の王様**。甘みが全然違うよ。`
> VN: *"Cái này là cua matsuba, vua của mùa đông vùng San-in. Vị ngọt khác hẳn đó."*

*(Ghi chú phụ: Ōgaki gốc Osaka giới thiệu đặc sản San-in ở ryokan Atami vẫn hơi xa, nhưng 松葉ガニ được vận chuyển đi khắp Nhật nên chấp nhận được — không cần sửa thêm.)*

---

### 🔴 #R2-06 — [TRỤC B: TỰ MÂU THUẪN] ch06 d96 — Matsumoto có khăn dự phòng "trong xe" khi xe chưa tới

> d94 (Matsumoto): `あれ、ズンさん、コート持ってない?海風で寒いよ。`
> d96 | JA: `(マフラー外す)はい、これ貸してあげる。**僕は car に予備持ってきてるから**。`
> VN: *"(tháo khăn quàng) Đây, cậu quàng vào đi. Tôi có khăn dự phòng **trong túi** rồi."*
> d102 (Matsumoto, 6 dòng sau): `**車来た**、乗ろう。15分で旅館。` = "Xe đến rồi, lên đi."

**Ba lỗi chồng nhau trong một dòng:**
1. **Mâu thuẫn trong 6 dòng.** Cả đoàn vừa xuống Shinkansen ở ga Atami (d86–88), đang **đứng chờ xe ryokan đến đón**. Matsumoto không thể có đồ "trong xe" — xe của ryokan, và mãi d102 mới tới.
2. **JA ≠ VN.** JA nói `car に` (trong xe), VN nói *"trong túi"* — hai bản dịch lệch nhau, người dịch có lẽ đã thấy vô lý và tự sửa một bên.
3. **`car` là tiếng Anh thừa** — người Nhật nói `車に`. (Không tính vào bảng 11 ca ở mục 2 vì đây được xử lý như lỗi B, sửa trọn câu.)

**Đề xuất:** sửa JA cho khớp bản VN và khớp bối cảnh:
> JA: `(マフラー外す)はい、これ貸してあげる。**僕はカバンにもう一枚持ってるから**。`
> VN giữ nguyên *"Tôi có khăn dự phòng trong túi rồi."*

---

### 🟡 #R2-07 — [TRỤC B: KHỐI BÍ QUYẾT MỚI TỰ MÂU THUẪN] ch06 d203 vs d240–241

Khối Bí quyết onsen mới thêm (d236–244) rất tốt, nhưng **phần dẫn cảnh cũ ở d203 không được cập nhật theo** — và hai chỗ nói khác nhau:

> d203 (dẫn cảnh, chưa sửa): *"[Ngồi ghế nhựa thấp. Rửa người 7 phút — kỹ. **Theo quy tắc sách 07**. Vào bồn…]"*
> d240 (Bí quyết mới): *"**かけ湯 (kakeyu) trước khi vào bồn** — múc nước dội rửa người ở khu vòi sen, bắt đầu từ chân lên."*
> d241: *"**Gội rửa sạch tại ghế tắm** — ngồi ghế thấp, rửa xà phòng kỹ, xả hết bọt rồi mới vào bồn."*

**Vấn đề:**
1. Chương nay **dạy** かけ湯 ở Bí quyết nhưng **nhân vật vẫn không làm** ở phần thoại/dẫn cảnh. Người học đọc cảnh thấy Dũng chỉ "rửa người 7 phút" — không có bước かけ湯 nào. Bí quyết và cảnh phim **lệch nhau**.
2. d203 vẫn trỏ *"Theo quy tắc sách 07"* — trong khi mục đích của việc thêm khối mới ở đợt 1 chính là **để chương tự chứa**, không phải trỏ sang sách khác. Toàn chương còn **4 chỗ** trỏ sách 07/08 (d12, d203, d263, d303) mà đợt 1 chưa đụng.

**Đề xuất:**
- d203 → *"[Ngồi ghế nhựa thấp. Múc nước dội từ chân lên (かけ湯). Rồi gội rửa kỹ 7 phút, xả sạch bọt. Vào bồn — nước 41°C, hơi nóng. Khăn nhỏ gấp đặt lên đầu, không nhúng xuống nước.]"* — vừa vá mâu thuẫn, vừa bỏ tham chiếu sách 07, vừa **cho người học thấy hành vi đúng chứ không chỉ đọc quy tắc**.
- d12 → bỏ *"Sách 07 đã dạy"*, đổi thành *"— chương này tóm lại đủ những gì cần nhớ."*

---

### 🟡 #R2-08 — [TRỤC E: DỊCH SAI CHỨC DANH] ch06 d137 — 仲居 = "lễ tân riêng"

> JA: `お部屋は2階の『松の間』です。**仲居**が荷物お運びします。`
> VN: *"Phòng quý vị là 'Matsu no ma' tầng 2. **Nakai (lễ tân riêng)** sẽ đem đồ lên."*

**Vấn đề:** 仲居 = **người phục vụ phòng** ở ryokan — bưng cơm lên phòng, trải futon, hướng dẫn khách, xoay giày ở genkan. Lễ tân là **受付 / フロント** — vị trí hoàn toàn khác. Dịch "lễ tân riêng" khiến người học hình dung sai và dùng sai từ. Chương này có 仲居 xuất hiện lại ở d164 (bưng kaiseki) và d399 (trải futon) — đúng chức năng phục vụ phòng, càng cho thấy bản dịch d137 sai.

**Đề xuất:** *"Nakai (nhân viên phục vụ phòng) sẽ mang hành lý lên ạ."*

---

### 🟡 #R2-09 — [TRỤC B: TỰ MÂU THUẪN] ch06 — 1 phòng hay 2 phòng?

> d137 (女将): `お部屋は2階の**『松の間』**です。` (số ít, một phòng)
> d158 (tiêu đề TH5): *"Phòng tatami **chung** 'Matsu no ma' — bữa trưa trong phòng"*
> d160: *"Phòng 16 tatami… **4 chỗ ngồi zabuton**"*
> d399 (TH10): *"Phòng đã được nakai trải futon — **4 cái** cách nhau. Matsumoto + Ōgaki **phòng khác (tổng cộng 2 phòng)**. Dũng + Tuấn **1 phòng**."*

**Vấn đề:** d399 tự mâu thuẫn ngay trong chính nó — "trải futon 4 cái" (tức 4 người cùng phòng) rồi câu sau nói "2 phòng, Dũng + Tuấn 1 phòng". Và mâu thuẫn với d137 (女将 chỉ báo **một** phòng cho cả đoàn).

**Đề xuất:** chốt theo phương án hợp lý nhất về nghiệp vụ ryokan (松の間 = phòng ăn chung, ngủ tách):
- d137 → `お部屋は2階です。お食事は『松の間』にご用意いたします。仲居が荷物お運びします。`
- d399 → *"Phòng đã được nakai trải futon — 2 cái cách nhau. Matsumoto + Ōgaki ở phòng bên (đoàn đặt 2 phòng ngủ, 松の間 là phòng ăn chung). Dũng + Tuấn 1 phòng."*

---

### 🟡 #R2-10 — [TRỤC A NHẸ: THIẾU VẾ QUAN TRỌNG] ch06 d149 — quy tắc xoay giày ở genkan

> d149 (Bí quyết): *"**Quay mũi giày ra ngoài** (= nghi thức cho người dọn)."*

**Vấn đề:** đúng một nửa, và nửa thiếu mới là phần người nước ngoài hay phạm:
1. Ở ryokan **có 仲居/nhân viên đón** (đúng cảnh của chương này — 女将 đứng ngay đó), khách **đi thẳng vào, để nhân viên xoay giày**. Khách tự cúi xuống xoay giày trước mặt 女将 là thừa, đôi khi bị coi là không tin nhân viên.
2. Điều **bắt buộc** là: **không quay lưng/mông về phía trong nhà** khi cởi giày. Nếu phải tự xoay giày (không có nhân viên) thì quay người ngang/chéo, quỳ gối xuống xoay — chứ không quay lưng lại.

Sách hiện dạy hành vi 1 mà bỏ hoàn toàn nguyên tắc 2 — trong khi nguyên tắc 2 mới là thứ người Nhật thực sự để ý.

**Đề xuất:** thay d149 bằng 2 gạch đầu dòng:
- *"**Đừng quay lưng về phía trong nhà** khi cởi giày — cởi giày trong tư thế vẫn hướng vào trong."*
- *"**Ở ryokan có nhân viên đón: cứ để họ xoay giày cho bạn.** Nếu tự xoay (nhà riêng, không có ai), quay người ngang rồi quỳ một gối xuống chỉnh mũi giày hướng ra cửa — tuyệt đối không chổng lưng vào trong."*

---

### 🟡 #R2-11 — [TRỤC B: SAI GIỜ MẶT TRỜI LẶN] ch05 d292, d295 — hoàng hôn HCMC lúc 19:15

> d292 (Dũng): `後でリバービュー戻れますよ。**今 PM 7時、晴れたら虹が出るかも**。` / *"Lát nữa quay lại view sông được ạ. Giờ 19h, tạnh có khi có cầu vồng."*
> d295 (dẫn cảnh): *"[**19:15** mưa tạnh hẳn. Đoàn ra sân thượng lại — **mặt trời lặn rực rỡ ngang sông Sài Gòn**…]"*

**Vấn đề:** TP.HCM tháng 11 mặt trời lặn **~17:26–17:28**. Lúc 19:00 trời đã tối hẳn hơn 1,5 tiếng:
- **Cầu vồng lúc 19:00 là bất khả thi** — cầu vồng cần ánh mặt trời.
- **"Mặt trời lặn rực rỡ" lúc 19:15 là bất khả thi.**

Lỗi này thuộc nhóm rule mục 4D nêu là nguy hiểm nhất (**sai sự thật về Việt Nam, do chính nhân vật người Việt nói ra với khách Nhật** — Dũng đang làm hướng dẫn viên cho quê mình mà không biết mấy giờ trời tối).

**Đề xuất (đơn giản nhất — lùi cả cảnh về 17:30):** đổi tiêu đề TH7 d273 từ 18:00 → **17:00**, d281 *"18:30 mưa rào"* → **17:30**, d292 `今 PM 7時` → `**今5時半**`, d295 *"19:15"* → **"17:45"**. Giữ nguyên toàn bộ thoại còn lại.
**Hoặc (ít đụng chạm hơn):** giữ giờ, bỏ mặt trời — d292 `後でリバービュー戻れますよ。雨上がりの夜景、逆に綺麗かも。` và d295 *"[19:15 mưa tạnh hẳn. Đoàn ra sân thượng lại — đèn thành phố lấp lánh sau mưa, không khí mát hẳn. Đoàn JP đứng chụp ảnh 10 phút.]"*

---

### 🔵 #R2-12 — [TRỤC C: XÁC NHẬN ĐỒNG Ý VỚI MAIN CLAUDE] ch04 d95 `お伺いしてもよろしいでしょうか`

> JA: `ご予約のお名前と訪問先を、**お伺いしてもよろしいでしょうか**。`

**Tôi ĐỒNG Ý với kết luận của main Claude: KHÔNG PHẢI LỖI.** Lý do (đã kiểm lại độc lập):
1. `伺う` là 謙譲語 của `聞く/訪ねる`. Thêm `お〜する` lên `伺う` về lý thuyết là chồng khiêm nhường, nhưng `お伺いする` đã được **文化庁「敬語の指針」(2007)** xếp vào nhóm **慣用として認められている** (được chấp nhận theo thói quen) — cùng nhóm với `お目にかかる`.
2. Khác hẳn `お伺いさせていただく` (chồng 3 tầng — cái này mới là lỗi thật, và **không có trong 3 chương này**).
3. Người nói là **lễ tân 白鷗 nói với khách ngoài công ty** — đúng ngữ cảnh dùng.

**→ CẤM SỬA.** Nếu ai đó chạy script quét 二重敬語 sẽ bắt nhầm dòng này.

---

### 🔵 #R2-13 — [TRỤC F] ch06 — 4 chỗ vẫn trỏ "sách 07 / sách 08"

d12, d203, d263, d303. Đợt 1 đã thêm khối Bí quyết onsen để chương **tự chứa** nhưng không gỡ các tham chiếu cũ. d203 là ca nặng nhất (đã tính trong #R2-07). Ba chỗ còn lại (rót sake, cầm chén) là tham chiếu vô hại nhưng nếu người đọc chỉ mua sách 09 thì hụt.
**Đề xuất:** chuyển sang dạng trung tính *"như đã quen"* / *"theo quy tắc đã học"*, hoặc bổ sung 1 dòng tóm tắt tại chỗ.

---

### 🔵 #R2-14 — [TRỤC E] ch05 d285 — "Việt Nam scuba" giữ nguyên trong bản dịch

Đã tính là E-10 ở bảng tiếng Anh, nhưng ghi lại ở đây vì **bản VN cũng cần sửa**: *"Wow, Việt Nam scuba (cười)"* — người Việt đọc không hiểu đây là câu đùa gì. B2 đã nêu, đợt 1 chưa sửa.

---

### 🔵 #R2-15 — [TRỤC A: GỢI Ý, KHÔNG BẮT BUỘC] ch06 — thiếu cảnh báo cho người không tắm chung được

Khối Bí quyết onsen mới (d236–250) xử lý rất tốt hình xăm (d224–230, thật sự xuất sắc), かけ湯, khăn, yukata. Nhưng chưa có một dòng nào cho các trường hợp **không thể tắm chung** mà người học rất hay gặp:
- Người có bệnh tim mạch / cao huyết áp / đang mang thai.
- Người theo tôn giáo không được khỏa thân trước người khác.
- Cách **từ chối lời mời onsen** mà không làm mất lòng đàn anh Nhật.

Điểm cuối quan trọng nhất về mặt bài học: cả chương xây trên tiền đề "được mời onsen = tín hiệu tin tưởng, phải nhận". Người học không tắm chung được sẽ không biết thoát thế nào.
**Đề xuất (nếu chủ nhà duyệt hướng bổ sung):** thêm 2 gạch đầu dòng vào khối d236 — cách xin 家族風呂/貸切風呂 (`貸切風呂はありますか`) và câu từ chối lịch sự giữ được quan hệ (`私は湯あたりしやすいので、部屋のお風呂で失礼します。皆さんはごゆっくり`).

---

### 🔵 #R2-16 — [TRỤC B: KHÔNG PHẢI LỖI, chỉ ghi nhận] ch04 d60 `4泊5日` vs lịch trình

B1 #F5 nêu Dũng khai `4泊5日` nhưng thực tế ở từ Chủ nhật đến sáng Thứ 7 = 6 đêm. **Vẫn chưa sửa.** Tuy nhiên đây là lỗi 🔵 vì:
- Chỉ xuất hiện 1 lần, trong câu nói với lễ tân khách sạn.
- Không dạy sai kiến thức gì.
**Đề xuất nếu tiện tay:** `6泊7日です。` / *"6 đêm 7 ngày."*

---

### 🔵 #R2-17 — [TRỤC F] ch04 d277 — "3 ngày" vào thứ Năm

> `中村CFO: Tokyo office のチーム、**3日**見てどう感じた?`

Cảnh diễn ra **Thứ Năm**, Dũng bắt đầu làm việc **Thứ Hai** → đã 4 ngày. B1 #F6 nêu, chưa sửa. 🔵 nhẹ.
**Đề xuất:** `今週ずっと見てどう感じた?` (vừa tránh đếm ngày, vừa tự nhiên hơn).

---

## 5. Trục A→F — chương nào SẠCH

Để chủ nhà khỏi tưởng chỗ nào cũng có lỗi:

| Trục | ch04 | ch05 | ch06 |
|---|---|---|---|
| **A** dạy làm sai việc thật | ✅ **SẠCH** — khối miễn thuế nay là một trong những Bí quyết đắt nhất sách; hải quan, nhập cảnh đều ổn | 🟡 thiếu cảnh báo băng qua đường (gộp vào #R2-02) | 🔴 **#R2-01 rượu+onsen** · 🟡 #R2-10 · 🔵 #R2-15. Bù lại: **hình xăm xử lý xuất sắc** |
| **B** tự mâu thuẫn | 🔵 #R2-16, #R2-17 (nhẹ) | 🔴 #R2-11 | 🔴 #R2-06 · 🟡 #R2-07, #R2-09 |
| **C** tiếng Nhật sai | ✅ **SẠCH** — d95 không phải lỗi (#R2-12). Không có 二重敬語, không có 過剰敬語, uchi/soto đúng (d96 `松本様` với lễ tân 白鷗 là chuẩn) | ✅ **SẠCH** về kính ngữ | ✅ **SẠCH** — 女将/仲居 dùng 尊敬語+謙譲語 phân biệt rõ (d124, 131, 133, 137, 164) |
| **D** sai sự thật | 🔴 #R2-03 (JAL). Bảo tàng nay ĐÚNG | 🔴 #R2-02 (tai nạn), 🔴 #R2-11 (hoàng hôn) | 🔴 #R2-05 (北陸). Kaiseki mùa vụ nay ĐÚNG |
| **E** tiếng Việt | 🟡 7 ca tiếng Anh ô JA | 🔴 #R2-04 (fix nửa vời) · 🟡 3 ca tiếng Anh | 🟡 #R2-08 · 🟡 1 ca tiếng Anh |
| **F** nhất quán | 🔵 nhẹ | ✅ khá sạch | 🔵 #R2-13 |

**Xưng hô (trục E) — số thật:** tôi quét toàn bộ lượt thoại của nhân vật Nhật trong 3 chương theo đúng tiêu chí rule (bản JA có `私`/`僕`, **không** có `〜さん` trỏ người khác) → **1 lỗi duy nhất còn sót: ch05 d407**. Các ca B2 nêu ở d206/207/249/256/326/361 là **nhân vật Nhật cấp dưới (佐々木, 林, 田中) nói với người vai trên hoặc với chủ nhà** — "em" ở đây đọc tự nhiên trong tiếng Việt, **không phải lỗi**. Ca d437 (`3日間お世話になります` → *"3 ngày làm phiền các em"*) là **ngôi 2**, Ōgaki gọi nhóm chủ nhà — hợp lệ. Ca ch06 d124/133 (女将 xưng "em") là văn phong dịch vụ Việt Nam, **ranh giới** — tôi không tính là lỗi vì bản JA không có 私.

---

## 6. ⛔ DANH SÁCH CẤM SỬA — chỗ ĐÚNG rất dễ bị sửa nhầm

| # | Vị trí | Nội dung | Vì sao dễ bị sửa nhầm | Vì sao PHẢI GIỮ |
|---|---|---|---|---|
| 1 | **ch06 d247–249** | `右前` = "Vạt TRÁI đè lên vạt PHẢI" + mẹo "tay phải luồn vào dễ dàng" | Tên gọi `右前` **nghe như** "vạt phải ở trên" → người rà soát rất dễ tưởng sách viết ngược và "sửa lại cho đúng tên" | **CẢ 3 DÒNG ĐỀU ĐÚNG.** 右前 nghĩa là "vạt phải vào TRƯỚC (sát người)", tức vạt trái nằm trên. Mẹo `右手が懐に入れやすい` cũng là mẹo chuẩn của ngành kimono. Sửa = tạo ra lỗi khâm liệm thật |
| 2 | **ch04 d95** | `お伺いしてもよろしいでしょうか` | Script quét 二重敬語 sẽ bắt `お+伺う` | Đã 慣用化 (文化庁「敬語の指針」). Lễ tân nói với khách → hợp lệ. Khác hẳn `お伺いさせていただく` |
| 3 | **ch04 d96** | `松本様と9時にお約束をいただいております` | Có thể bị tưởng dùng 様 sai hướng | **ĐÚNG uchi/soto** — Dũng là khách ngoài, gọi người 白鷗 là 松本様 khi nói với lễ tân 白鷗. Đây là chỗ khó nhất mà sách làm đúng |
| 4 | **ch05 d316–318, 324–325, 215** | Hội thoại tiếng Anh dài | Bất kỳ script quét "chữ Latin trong ô JA" nào cũng bắt ~95 lần ở đây | **CHỦ Ý THIẾT KẾ.** Có nhãn `(英語で)`. Cả cảnh d310–331 xây quanh việc Tanaka không theo kịp tiếng Anh → Hải chuyển sang tiếng Nhật ở d327. Dịch sang katakana = **xóa sạch bài học** |
| 5 | **Mọi dòng có nhãn** `(ベトナム語)` | ~180 lần chữ Latin trong ô JA | Cùng lý do trên | Chủ ý, main Claude đã chốt ở đợt 1 |
| 6 | **ch04 d177** | `江戸東京博物館` | B1 #C15 ghi "bảo tàng đóng cửa, rủi ro sai" | **NAY ĐÃ ĐÚNG** — mở lại 31/03/2026, chương đặt 9/2026. Không cần đổi địa điểm |
| 7 | **ch04 d452–470** | Cảnh va-li 23,5kg bị JAL nhắc | #R2-03 nói Bí quyết JAL sai → dễ xóa luôn cả cảnh | **CẢNH ĐÚNG.** Giới hạn 23kg là per-piece. Chỉ sửa Bí quyết d479+d482, **giữ nguyên thoại** |
| 8 | **ch05 d73** phần `約700万台のバイク` | Con số 7 triệu xe máy | #R2-02 yêu cầu sửa dòng này → dễ xóa cả câu | Con số **ĐÚNG** (~7,4–8,5 triệu). Chỉ bỏ vế `事故率は東京より低い` |
| 9 | **ch05 d392–393** | `frank` (Hà CTO + Matsumoto) | Trông giống lỗi E-1 ở ch04 d277 | **KHÁC NHAU.** Ở đây Hà mở đầu bằng `frank`, Matsumoto lặp lại từ của đối phương — hành vi mirroring có thật trong họp song ngữ |
| 10 | **ch06 d224–230** | Khối Bí quyết hình xăm | — | **Điểm sáng nhất chương.** `シール対応` đúng thuật ngữ ryokan, quy trình hỏi trước → band-aid → 家族風呂 chuẩn thực tế |
| 11 | **ch06 d140–153** | Khối genkan/agarikamachi | #R2-10 đề nghị sửa d149 | **Chỉ sửa d149.** Phần còn lại (定義 genkan / agarikamachi / cấm giẫm giày lên tatami) đúng và dạy rất tốt |
| 12 | **ch04 d426–443** | Toàn khối miễn thuế | Đã sửa ở đợt 1, người rà đợt sau có thể "sửa tiếp cho chắc" | **HOÀN CHỈNH RỒI.** 10%/8%, 非居住者 <6 tháng, ¥5.000/cửa hàng/ngày — tất cả khớp quy định. Đừng đụng |
| 13 | **ch06 d164, 173** | `松葉蟹` / `蕪` (kaiseki) | #R2-05 nói 松葉蟹 có lỗi → dễ đổi lại tên món | **TÊN MÓN ĐÚNG.** Chỉ sai cụm địa danh `北陸` ở **d171**. d164 và d173 giữ nguyên hoàn toàn |

---

## 7. Thứ tự sửa đề xuất cho main Claude

| Ưu tiên | Mục | Vì sao |
|---|---|---|
| **1** | **#R2-01** rượu + onsen (ch06) | Lỗi trục A duy nhất. Sức khỏe/tính mạng. Phải sửa cả 3 tầng (Bí quyết d236, d381, + 1 dòng thoại) |
| **2** | **#R2-02** tỷ lệ tai nạn HCMC (ch05 d73) | Sai sự thật về Việt Nam + dạy người học nói câu bị bắt bẻ. Sửa 1 dòng, JA + VN |
| **3** | **#R2-04** fix nửa vời d407 (ch05) | 1 chữ. Nhưng nên **quét lại cả 9 chỗ xưng hô đợt 1** theo nguyên tắc "1 dòng có thể có >1 lỗi" |
| **4** | **#R2-05** 北陸 (ch06 d171) | 2 ký tự. Lỗi do chính đợt 1 đẻ ra |
| **5** | **#R2-03** Bí quyết JAL (ch04 d479, d482) | Chỉ sửa Bí quyết, **giữ nguyên thoại** |
| **6** | **#R2-06** `car` (ch06 d96) · **#R2-11** hoàng hôn (ch05) | Mâu thuẫn nội bộ, sửa gọn |
| **7** | **#R2-07** かけ湯 vào dẫn cảnh d203 · **#R2-09** số phòng · **#R2-08** 仲居 | Dọn nốt phần đợt 1 làm dở |
| **8** | **11 ca tiếng Anh ô JA** (mục 2.2) | Sửa thủ công từng ca, **đừng replace mù** — bảng CẤM SỬA có 6 mục liên quan trực tiếp |
| **9** | 🔵 #R2-13, 15, 16, 17 | Tuỳ chủ nhà |

---

## 8. Ngoài phạm vi — GHI NHẬN, KHÔNG TỰ SỬA (rule mục 0)

| Vấn đề | Vị trí | Ghi chú |
|---|---|---|
| `voice_profiles.json` mâu thuẫn nội dung | `tanaka_pmo` khai *"hay dùng tiếng Anh tech term"* nhưng ch05 d326 Tanaka là người **KHÔNG theo kịp** tiếng Anh kỹ thuật | Đã có trong "Quyết định cần chủ nhà chốt" mục 2 của `00_TIEN_DO.md`. **Tôi không đụng file này.** Lưu ý: sửa profile ảnh hưởng cả 8 chương |
| `oogaki_sales` khai *"sharp negotiator, occasionally probing"* | ch05–06: Ōgaki chia bento, rót sake, tâm sự chuyện bố — mềm nhất sách | Cùng mục 2 nói trên. Với ch06 tôi nghiêng về **cập nhật hồ sơ** thay vì sửa nội dung: cảnh d344–371 là cảnh hay nhất chương, sửa đi thì phí |
| `draft/*.json` đã trôi khác `.md` | `draft/chương_04_出張_scenes.json` còn tiếng Anh chưa dịch | Không đụng theo yêu cầu. Cảnh báo "KHÔNG chạy build_chapters_from_json.py" trong `00_TIEN_DO.md` vẫn còn hiệu lực |
| Dòng thời gian toàn sách | ch06 đặt tháng 1/2027, ch05 tháng 11/2026, ch04 tháng 9/2026 — **nội bộ 3 chương của tôi nhất quán**, không mâu thuẫn | Vấn đề "3 năm vs 12 tháng vs 2 năm" nằm ở ch07/ch08/front matter — **ngoài phạm vi R2**, để R3 |

---

## 9. Ghi nhận điểm mạnh (để không bị sửa mất)

- **ch04 khối miễn thuế (d426–443)** — sau fix đợt 1, đây là Bí quyết **giá trị nhất trong 3 chương**: cảnh báo một điều gần như không sách nào nói (visa làm việc không được miễn thuế), lại được dựng thành nhịp kịch (Dũng suýt hỏi rồi khựng lại). Mẫu mực cho cách sửa lỗi trục A.
- **ch04 TH6 (thừa nhận không biết với 伊藤) và TH8 (1-on-1 với CFO)** — hai bài học business khó tìm ở sách khác.
- **ch05 TH8 (d310–331)** — cảnh song ngữ Anh/Nhật/Việt ba tầng, dạy đúng thứ mà đề bài sách hứa. Tuyệt đối đừng "dọn tiếng Anh" ở đây.
- **ch06 khối hình xăm (d224–230)** và **khối genkan (d140–153)** — chính xác, thực tế, sinh động.
- **ch06 cảnh Ōgaki tâm sự chuyện bố (d344–371)** — đoạn viết tốt nhất trong 3 chương.
- **女将/仲居 dùng kính ngữ chuẩn** xuyên ch06 — không có một lỗi 敬語 nào.

---

> **Kết:** 3 chương này ở tình trạng tốt. Đợt 1 làm sạch phần lớn, và làm **đúng cách** (đồng bộ JA + VN + Bí quyết + sổ nhân vật). Việc còn lại của đợt 2 là **1 lỗi an toàn (rượu + onsen)**, **2 lỗi sự thật chưa ai đụng (tai nạn HCMC, hành lý JAL)**, **1 lỗi do chính fix đợt 1 đẻ ra (北陸)**, **1 fix nửa vời (d407)**, còn lại là dọn dẹp.
