# S4 — Rà soát phần_IV (rule_34 → rule_41) — Sách 08 Smalltalk

> Đợt 2, áp dụng `.claude/rules/book-review.md`.
> Phạm vi: **8 file** `nội_dung/phần_IV/rule_*/rule.md`. CHỈ BÁO CÁO, KHÔNG SỬA.
> Đã strip ruby bằng python trước mọi kết luận (mục 1.1). Đã đọc `voice_profiles.json` + `_front_matter.md` để đối chiếu nhân vật (chỉ đọc, không sửa).

---

## 0. Bảng tổng kết

| Rule | 🔴 | 🟡 | 🔵 | Ghi chú nhanh |
|---|---|---|---|---|
| rule_34 フォー | 1 | 1 | 1 | Bát Đàn ≡ Gia Truyền bị tách thành 2 quán |
| rule_35 テト | 0 | 0 | 1 | **Sạch** — 3 fix đợt trước đều ăn trọn |
| rule_36 コーヒー | 0 | 2 | 1 | **Fix "Buôn Ma Thuột" ĐÃ TRỌN cả thoại + vocab** |
| rule_37 気候 | 0 | 1 | 1 | Fix khí hậu ăn trọn; 1 chi tiết mùa đông |
| rule_38 都市 | 1 | 1 | 1 | Phở Quỳnh không có trong Michelin |
| rule_39 祭り | **2** | 0 | 1 | **Sai ngày Trung thu 2026** (7/9 → 25/9) |
| rule_40 和食 | **3** | 2 | 0 | **Sai tiền 10×**, "広島さん", HCM↔Hà Nội |
| rule_41 観光 | 1 | 2 | 1 | Chợ Bắc Hà cách Sapa ~100km |
| **Tổng** | **8** | **9** | **7** | |

**Nhận định chung:** rule_35 và rule_36 sạch — các fix đợt trước ở đây làm ĐÚNG và ĐỦ. Rủi ro tập trung ở **rule_40** (chưa từng được review đợt 1) và **rule_39** (sai ngày lịch).

⚠️ Tôi **không** báo các mục sau dù script bắt được, vì kiểm lại là báo động sai (mục 3):
- **Tiếng Anh thừa (33 dòng script bắt):** kiểm CẢ HAI VẾ theo mục 4-E → **32/33 có counterpart trong ô tiếng Nhật** (`local`↔ローカル, `dress code`↔ドレスコード, `Michelin`↔ミシュラン…). Không phải lỗi. Chỉ còn 1 ca đáng nói (🔵-7).
- **"Xưng hô sai" (9 dòng):** lọc theo đúng điều kiện mục 4-E (bản Nhật cho thấy người nói TỰ nói về mình) → phần lớn là **thiết kế nhất quán toàn sách** (khách Nhật xưng "anh" với Dũng junior). Chỉ giữ lại các ca "Em" (🟡-4).

---

## 1. 🔴 BẢNG KIỂM CHỨNG FIX ĐỢT TRƯỚC (nhiệm vụ số một — rule mục 5)

Với mỗi mục REVIEW_FINDINGS thuộc rule_34→41: mở đúng file, tìm chuỗi "Sai" và chuỗi "Đúng".

### 1.1 ⚠️ rule_36 — kiểm TRƯỚC TIÊN (ca "kiểu hụt số 3" bị nghi)

| Vị trí phải kiểm | Chuỗi "Sai" (`ダラット`/Đà Lạt đơn lẻ) | Chuỗi "Đúng" (`ブオンマトート`) | Phán định |
|---|---|---|---|
| **Thoại** L36 (JA) | không còn | `中部高原(ブオンマトート・ダクラク省周辺)` | ✅ |
| **Thoại** L37 (VN) | không còn | `quanh Buôn Ma Thuột, tỉnh Đắk Lắk` | ✅ |
| **Bảng từ vựng** L167 | không còn đứng một mình | `vùng robusta lớn nhất là Buôn Ma Thuột (Đắk Lắk)` | ✅ |
| **Câu vàng** L128 | — | không nhắc địa danh (trung tính) | ✅ |
| **Chú thích 【1】** L45 | — | không nhắc địa danh | ✅ |

> 🟢 **KẾT LUẬN: ĐÃ FIX TRỌN VẸN — KHÔNG PHẢI FIX NỬA VỜI.**
> Grep toàn phần_IV: chuỗi `ダラット` **0 kết quả**. Bảng vocab **đã** được sửa đồng bộ với thoại.
> Cảnh báo trong prompt ("bảng từ vựng vẫn để Đà Lạt") **đã không còn đúng với hiện trạng file** — v1.1 đã vá cả hai. Đây là fix mẫu mực, nên **ghi vào CẤM SỬA**.

### 1.2 Bảng kiểm chứng đầy đủ — mọi mục REVIEW_FINDINGS thuộc phạm vi

| Mã | Rule | Nội dung fix | Chuỗi "Sai" còn? | Chuỗi "Đúng" có? | Phán định |
|---|---|---|---|---|---|
| VN P0-2 | 35 | Mâm ngũ quả mapping | `マンゴー(Cầu)`/`グァバ(Sung)`/`ジャックフルーツ(Xoài)` → **hết** | L95 `カスタードアップル/釈迦頭(Cầu)・イチジク(Sung)・パパイヤ(Vừa Đủ)・ココナッツ(Dừa)・マンゴー(Xoài)` | ✅ **ĐÃ FIX** (JA+VN khớp) |
| VN P0-4 | 36 | Cà phê Buôn Ma Thuột | `ダラット` → **0 kết quả** | thoại + vocab đều có | ✅ **ĐÃ FIX TRỌN** (xem 1.1) |
| VN P0-5 | 37 | HN mùa đông/hè phóng đại | `10度切ること多い` → hết; `6-8月は40度近く` → hết | L32 `1月の寒波で10度切ることもあります`; L44 `夏は35度を超える日が多く、稀に40度近くまで` | ✅ **ĐÃ FIX** (JA+VN+câu vàng L130 đồng bộ) |
| VN P0-6 | 35 | Con giáp 2 vs 4 | `2つだけ違います` → **0 kết quả** | L57 `4つ違いがあります、特に大きく違うのは2つで` | ✅ **ĐÃ FIX** (đồng bộ cả 【2】L71 + luận điểm L3) |
| VN P1-1 | 39 | カラスミ → 塩漬け卵黄 | thoại L42 đã là `塩漬け卵黄` | vocab L179 giữ `カラスミ` **có chủ ý** làm cảnh báo ngược | ✅ **ĐÃ FIX** — *đừng xoá dòng vocab, xem CẤM SỬA* |
| VN P1-11 | 35 | Vạn Giã → Nhật Tân | `バンザン`/`Vạn Giã` → **0 kết quả** | L91 `ニャッタン花の村(Làng đào Nhật Tân)` | ✅ **ĐÃ FIX** |
| VN P1-8 | 37 | 菊酒の冬 → 水仙 | `菊酒` → **0 kết quả** | L107 `桃の花の春、ロータスの夏、菊の秋、スイセンの冬` | ✅ **ĐÃ FIX** |
| VN P1-2 | 39 | バインチュンチュー katakana | **VẪN CÒN** L42 `バインチュンチュー` | `バインチュントゥー` không có | ❌ **CHƯA FIX** (xem 🔵-3) |
| VN P1-5 | 40 | `東京の3分の1` | **VẪN CÒN** L63, L65, L147 | — | ❌ **CHƯA FIX** — STATUS.md khai "skipped" (nhất quán) |
| VN P1-6 | 34 | Phở Thìn 13 Lò Đúc | **VẪN CÒN** L76 `フォー・ティン(Phở Thìn)` chung chung | — | ❌ **CHƯA FIX** (defer, chấp nhận được) |
| VN P1-9 | 38 | 統一会堂 diễn dịch | **VẪN CÒN** L106 `旧大統領官邸` | `旧南ベトナム大統領官邸` không có | ❌ **CHƯA FIX** (P1, low risk) |
| VN P1-15 | 36 | Café Giảng 2 chi nhánh | **VẪN CÒN** L111 không nêu địa chỉ | — | ❌ **CHƯA FIX** (xem 🟡-3) |
| VN P2-17 | 36 | `戦後ハノイ` → `1940年代後半` | **VẪN CÒN** L107 `1940年代、戦後ハノイで` + VN L108 "hậu chiến" | — | ❌ **CHƯA FIX** (xem 🟡-2) |
| VN P2-18 | 34 | Phở Pasteur → Phở Hòa Pasteur | **VẪN CÒN** L84 `フォー・パスツール(Phở Pasteur)` + câu vàng L122 | — | ❌ **CHƯA FIX** (xem 🟡-1) |
| VN P2-3 | 36 | Trung Nguyên Legend katakana | **VẪN CÒN** L86 không có katakana | — | ❌ **CHƯA FIX** (P2, bỏ qua được) |
| VN P2-10 | 39 | 獅子舞(Múa Lân)・龍舞(Múa Rồng) | **VẪN CÒN** L38 `獅子舞・龍舞(Múa Lân)` gộp 1 ngoặc | — | ❌ **CHƯA FIX** (P2) |

**Tổng kết kiểm chứng:** 7 mục **ĐÃ FIX trọn vẹn (JA + VN + vocab + câu vàng đồng bộ)**, 9 mục **CHƯA FIX** (đều thuộc P1/P2 mà STATUS.md v1.1 tự khai là "deferred" — khai báo TRUNG THỰC, không có kiểu "khai nhiều hơn thực tế").
**KHÔNG phát hiện ca FIX NỬA VỜI nào** trong phạm vi 8 rule này. Bốn kiểu hụt (JSON-only / quên VN / quên vocab / thiếu pattern) **đều không tái diễn ở phần_IV**.

---

## 2. 🔴 BẢNG DỮ KIỆN WEBSEARCH

| # | Khẳng định trong sách | Rule/dòng | Kết quả kiểm chứng | Phán định |
|---|---|---|---|---|
| D1 | Trung thu 2026 = **7/9** | 39 L18, L28, L132 | Rằm tháng 8 ÂL 2026 = **thứ Sáu 25/9/2026** (2 nguồn độc lập: longdenviet + travelchinaguide/chinatravel) | 🔴 **SAI** |
| D2 | `フォー・バッダン` và `フォー・ザートゥエン(Phở Gia Truyền)` là **2 quán khác nhau** | 34 L76 | **Cùng MỘT quán**: "Phở Gia Truyền Bát Đàn", 49 Bát Đàn, Hoàn Kiếm | 🔴 **SAI** |
| D3 | `Sushi Tei` — "**ぐるなびソウル系**…(**マレーシア発**)" | 40 L84 | Sushi Tei **thành lập tại Singapore 1994** (Holland Village). Không liên quan Malaysia, càng không liên quan "Seoul/ぐるなび" | 🔴 **SAI** (2 lỗi 1 câu) |
| D4 | `カイカヤ・ハノイ` — "**銀座の本店**から来たシェフ" | 40 L32, L134 | Kaikaya (開花屋) là quán **Shibuya/円山町**, không có bản điếm Ginza | 🟡 **NGỜ** |
| D5 | `Phở Quỳnh` (Q1) vào Michelin | 38 L64-65 | Michelin HCM Bib Gourmand có **Phở Lệ, Phở Hòa Pasteur, Phở Minh, Phở Miến Gà Kỳ Đồng, Cơm Tấm Ba Ghiền, Bánh Xèo 46A** — **không có Phở Quỳnh** | 🔴 **SAI** |
| D6 | Michelin Guide HCM "từ 2023" | 38 L64 | Michelin ra mắt VN **2023** ✔ (Bánh Xèo 46A vào 2024, nhưng câu nói chung là đúng) | ✅ ĐÚNG |
| D7 | Bánh Mì Phượng — Anthony Bourdain khen | 38 L89 | ✔ Bourdain quay *No Reservations*, gọi là "symphony in a sandwich" | ✅ ĐÚNG |
| D8 | Hạ Long = `海の桂林` (Quế Lâm trên biển) | 41 L30 | ✔ Biệt danh phổ biến, dùng rộng rãi trong tài liệu tiếng Nhật | ✅ ĐÚNG |
| D9 | Chợ **Bắc Hà** là điểm của chuyến Sapa 1 đêm | 41 L42 | Bắc Hà **cách Lào Cai ~70km, cách Sapa ~100km, >2,5h xe một chiều**, chỉ họp Chủ nhật | 🔴 **SAI TRỌNG TÂM** |
| D10 | `サパ駅前のホテル (Hotel de la Coupole)` | 41 L42 | **Sapa KHÔNG có ga tàu** — tàu đêm dừng ở **ga Lào Cai, cách 35km**. Hotel de la Coupole ở **1 Hoàng Liên, trung tâm thị xã Sapa** (khai trương 12/2018) | 🔴 **SAI** |
| D11 | Mai Châu: người **Thái trắng**, bản **Pom Coong**, nhà sàn, xe **3,5h** từ HN | 41 L111-120 | ✔ Bản Lác/Pom Coọng là làng Thái trắng ~700 năm, nhà sàn, cách HN ~140km | ✅ ĐÚNG |
| D12 | Cà phê VN: robusta >90%, tổng #2 thế giới, robusta #1 | 36 L32 | ✔ 2025/26: ~95-96% sản lượng là robusta; #2 sau Brazil; #1 robusta | ✅ ĐÚNG |
| D13 | Chú thích 【1】"robusta VN = **~60%** robusta toàn cầu" | 36 L45 | Số liệu hiện hành: **~40%** thị phần robusta thế giới | 🟡 **LỆCH** |
| D14 | Cà phê trứng: Café Giảng, ông Giảng, 1940s thiếu sữa | 36 L107-111 | ✔ Nguyễn Văn Giảng, bartender Metropole, mở quán **1946** phố Cầu Gỗ; nguyên do thiếu sữa tươi | ✅ ĐÚNG (trừ chữ `戦後`, xem 🟡-2) |
| D15 | Tết 2026 = **17/2**, năm **Ngọ (午年)**; Tết 2027 = **6/2** | 35 L18, L30 | ✔ Mùng 1 Tết Bính Ngọ = thứ Ba **17/02/2026**; Tết 2027 = 6/2 | ✅ ĐÚNG |
| D16 | Giỗ Tổ Hùng Vương 10/3 ÂL, `4月頃`, Đền Hùng Phú Thọ | 39 L57-65 | ✔ 2026 rơi vào **26/4/2026**; Đền Hùng, Việt Trì, Phú Thọ | ✅ ĐÚNG |
| D17 | "4000 năm" Hùng Vương | 39 L57 | Cách nói phổ thông chuẩn mực trong văn hoá VN (Văn Lang 2879 TCN) | ✅ CHẤP NHẬN — **đừng "sửa" thành 2700** |
| D18 | Cầu Vàng Bà Nà + Sun World | 38 L85 | ✔ Cầu Vàng khánh thành 6/2018, trong Sun World Ba Na Hills | ✅ ĐÚNG |
| D19 | HN tháng 1 "có khi xuống dưới 10°C" (bản đã fix) | 37 L32 | ✔ TB tháng 1 ~15-16°C, đợt rét đậm xuống <10°C | ✅ ĐÚNG |
| D20 | Phú Quốc = `ベトナム最南端のリゾート島` | 41 L55 | Cực Nam VN là **Mũi Cà Mau / Hòn Đá Lẻ (Hòn Khoai)**, nằm nam hơn Phú Quốc | 🟡 **NÓI QUÁ** |

---

## 3. 🔴 PHÁT HIỆN NGHIÊM TRỌNG

### 🔴-1 · rule_39 dòng 18 + 28 + 132 — SAI NGÀY TRUNG THU 2026 (trục D)

**Nguyên văn — Bối cảnh L18:**
> Tháng 9/2026, lịch trùng Trung thu VN (**15/8 âm = 7/9 dương**).

**Nguyên văn — thoại L28 (JA):**
> 「ズンさん、**9月7日**は祝日?」

**Câu vàng L132:** 「**9月7日**は中秋節、ベトナムの子供のお祭りです。」

**Vấn đề:** Rằm tháng 8 âm lịch 2026 = **thứ Sáu 25/9/2026** (xác nhận 2 nguồn độc lập). Ngày 7/9/2026 là **26/7 âm lịch** — không phải Trung thu.
Đây là lỗi trục **A** chứ không chỉ D: học viên bê nguyên câu 「9月7日は中秋節」 đi nói với khách Nhật sẽ **sai lịch ngay trước mặt khách** — đúng thứ mà cả rule này dạy để tránh.

**Lan toả — phải sửa ĐỦ 3 CHỖ (chống kiểu hụt #3):**
| Chỗ | Dòng | Nội dung |
|---|---|---|
| Bối cảnh | 18 | `15/8 âm = 7/9 dương` |
| Thoại JA | 28 | `9月7日は祝日?` |
| Câu vàng | 132 | `9月7日は中秋節…` |

**Đề xuất:** đổi cả 3 thành **9月25日** / `15/8 âm = 25/9 dương`.
*(Dòng VN L29 "7/9 có phải ngày lễ không?" cũng đi theo — tổng 4 điểm chạm.)*

---

### 🔴-2 · rule_40 dòng 40 + 134 — SAI TIỀN GẤP 10 LẦN, và JA ≠ VN (trục B + C)

**Nguyên văn L40 (JA):**
> 「…19時押さえてあります。**おまかせ4500万ドン(約23,000円)**で…」

**Nguyên văn L41 (VN):**
> *…Omakase **4.5 triệu** (~23k yen)…*

**Vấn đề — hai tầng:**
1. **Tự mâu thuẫn trong chính ô tiếng Nhật:** `4500万ドン` = **45.000.000 VND ≈ 260.000 yen**, không phải 23.000 yen. Con số đúng để ra ~23.000 yen là **450万ドン** (4,5 triệu VND).
2. **JA lệch VN:** bản Việt ghi "**4.5 triệu**" — **ĐÚNG**. Chỉ ô tiếng Nhật sai. Đây là **kiểu hụt #2 đảo chiều** (vá VN quên JA).

**Đối chiếu nội bộ chứng minh:** cùng file, L111 ghi `250万ドン(約13,000円)` và `500万ドン(約27,000円)` — cả hai **đúng tỉ giá**. Riêng L40 thừa một bậc "万".

**Lan toả — phải sửa 2 CHỖ:**
| Chỗ | Dòng | Nội dung hiện tại |
|---|---|---|
| Thoại JA | 40 | `おまかせ4500万ドン(約23,000円)` |
| Câu vàng | 134 | `おまかせ4500万ドン。` |

**Đề xuất:** `450万ドン(約23,000円)` ở cả hai. ⚠️ **Sửa bằng `sed -n '40p'` lấy nguyên văn CÒN RUBY rồi mới Edit** — dòng này có `<ruby>押<rt>お</rt></ruby>さえて` chen ngay trước con số (đúng bẫy mục 1.1).

---

### 🔴-3 · rule_40 dòng 82-94 — GỌI KHÁCH BẰNG TÊN TỈNH 「広島さん」 (trục C + F)

**Nguyên văn L84:** 「**広島さん**、シニアの方でしたら…」
**Nguyên văn L92:** 「…**広島さん**でしたら是非。」
**Nhãn vai (4 lượt):** `| **広島** |`

**Vấn đề:** 広島 = **tên tỉnh Hiroshima**, không phải họ người. Nhân vật này trong `voice_profiles.json` là `hiroshi_chugoku` → `name_ja: "広島部長"`, `name_vi: "anh Hiroshi (広島さん)"`. Gọi 「広島さん」 giữa hội thoại thương mại đọc ra như *"anh Hiroshima"* — với người Nhật đây là lỗi xưng hô rõ rệt (tương đương gọi khách là "anh Hà Nội").
Chú thích VN ngay dưới (L99) lại viết đúng: *"**Hiroshi** = người gốc Hiroshima"* → **sách tự mâu thuẫn trong cùng 1 scenario**.

**Đối chiếu chuẩn của sách:** rule_28 (phần_III) dùng nhãn `hiroshi_chugoku` cho đúng nhân vật này.

**Đề xuất:** thống nhất nhãn vai + cách gọi. ⚠️ **Đây là quyết định toàn sách** (nhãn vai phần_IV dùng kanji `松本/山本/田中…` còn phần_III dùng snake_case) → **báo cáo để chủ nhà chốt, không tự sửa lẻ**.

---

### 🔴-4 · rule_40 dòng 90 — HCM ↔ HÀ NỘI LẪN LỘN (trục B)

**Nguyên văn L90 (JA):** 「広島の人としてはお好み焼きが恋しいんやけど、**ハノイあたり**にあるんかな?」
**Nguyên văn L91 (VN):** *"…có ở khu **HCM** không nhỉ?"*

**Vấn đề:** Toàn bộ Scenario 3 là **HCM** — tiêu đề L76 "HCM: chuỗi nhập khẩu", chỉ dẫn L78 "chuyến HCM 2 ngày", bối cảnh L18 "Hiroshi bay vào **HCM**", và câu trả lời L92 「**ホーチミンに**『お好み焼き きじ』」. Chỉ riêng ô tiếng Nhật L90 ghi ハノイ.
Lại là **JA sai / VN đúng** — cùng kiểu với 🔴-2.

**Đề xuất:** `ハノイあたり` → `ホーチミンあたり`.

---

### 🔴-5 · rule_34 dòng 76 — TÁCH MỘT QUÁN THÀNH HAI (trục D, lỗi về Việt Nam)

**Nguyên văn L76 (JA):**
> 「3つ候補あります。**①フォー・バッダン(Phở Bát Đàn)** — 行列必至…**③フォー・ザートゥエン(Phở Gia Truyền)** — 観光客少なめ、地元ファン多い。」

**Vấn đề:** ① và ③ là **CÙNG MỘT QUÁN**. Tên đầy đủ chính thức: **"Phở Gia Truyền Bát Đàn"**, 49 Bát Đàn, Hoàn Kiếm — "Gia Truyền" là phần tên thương hiệu, "Bát Đàn" là tên phố. Sách còn mô tả chúng **ngược nhau**: ① "chắc chắn xếp hàng" vs ③ "ít khách du lịch" — trong khi thực tế cùng một hàng người xếp.

**Vì sao nặng:** độc giả là **người Việt** đang được dạy để "làm chuyên gia ẩm thực VN" trước mặt khách Nhật. Đưa 1 quán thành 2 rồi mô tả trái ngược là đúng loại lỗi phá uy tín mà rule mục 4-D cảnh báo.

**Đề xuất:** thay ③ bằng một quán thật sự khác — ví dụ **Phở Lý Quốc Sư** hoặc **Phở Khôi Hói** (Bib Gourmand Hà Nội).
*Lan toả:* câu vàng L121 chỉ nhắc バッダン → không phải sửa theo.

---

### 🔴-6 · rule_38 dòng 64-65 — PHỞ QUỲNH KHÔNG CÓ TRONG MICHELIN (trục D)

**Nguyên văn L64 (JA):**
> 「ホーチミンはミシュランガイド出てます(2023〜)。**3区の路地裏Phở Le**、**1区のフォークインギン**、**Banh Xeo 46A**もミシュラン入りです。」
**VN L65:** *"…**Phở Quỳnh** Q1, Bánh Xèo 46A đều vào sao."*

**Hai vấn đề:**
1. **Phở Quỳnh không nằm trong danh sách Michelin HCM.** Bib Gourmand HCM gồm Phở Lệ, **Phở Hòa Pasteur**, Phở Minh, Phở Miến Gà Kỳ Đồng, Cơm Tấm Ba Ghiền, Bánh Xèo 46A…
2. **"đều vào sao" (VN) dịch lệch** — Michelin **Bib Gourmand ≠ sao Michelin**. Nói "vào sao" là nâng cấp sai hạng, khách Nhật sành ăn (Yamamoto là **blogger ẩm thực**!) sẽ bắt lỗi ngay.

**Đề xuất:** đổi `フォークインギン/Phở Quỳnh` → **Phở Hòa Pasteur** (vừa đúng Michelin, vừa vá được P2-18 của rule_34); đổi "đều vào sao" → **"đều được Michelin (Bib Gourmand) xướng tên"**.

---

### 🔴-7 · rule_41 dòng 42 — CHỢ BẮC HÀ + "GA SAPA" (trục A + D)

**Nguyên văn L42 (JA):**
> 「サパは**Bac Ha Marketの日曜マーケット**でモン族の伝統衣装が見られます。…**フランス植民地時代のサパ駅前のホテル(Hotel de la Coupole)**が雰囲気抜群です。」

**Ba lỗi trong một dòng:**
1. **Chợ Bắc Hà không phải điểm của Sapa.** Bắc Hà cách Lào Cai ~70km, **cách Sapa ~100km, hơn 2,5h xe một chiều**. Sách vừa dặn L34 "Sapa **1 đêm 2 ngày** đi tàu đêm" — nhét thêm Bắc Hà là **bất khả thi về lịch trình**. Khách Nhật lên kế hoạch theo lời này sẽ hỏng chuyến → đúng loại lỗi trục A ("dạy làm sai việc thật").
2. **"サパ駅" không tồn tại.** Tuyến tàu đêm dừng ở **ga Lào Cai**, còn cách Sapa 35km đường đèo. Chính sách này ở L34 đã nói đi "夜行寝台列車" — nên câu "khách sạn trước ga Sapa" tự mâu thuẫn với chính nó.
3. **Hotel de la Coupole không phải kiến trúc thời Pháp thuộc.** Khách sạn **khai trương 12/2018**, do Bill Bensley thiết kế theo *phong cách* Đông Dương, lấy cảm hứng từ Grand Hotel de Chapa (1932). Gọi thẳng là 「フランス植民地時代の」 là sai sự thật.

**Đề xuất:** (a) bỏ chợ Bắc Hà hoặc tách thành gợi ý riêng có nêu quãng đường; (b) `サパ駅前` → `サパ中心部`; (c) `フランス植民地時代のホテル` → `フレンチ・インドシナ様式のホテル(2018年開業)`.

---

### 🔴-8 · rule_40 dòng 84 — SUSHI TEI: SAI XUẤT XỨ + CỤM VÔ NGHĨA (trục C + D)

**Nguyên văn L84 (JA):**
> 「①**ぐるなびソウル系**の『Sushi Tei』(**マレーシア発**、品質安定)…」

**Hai lỗi:**
1. **`マレーシア発` sai** — Sushi Tei thành lập tại **Singapore, 1994** (cửa hàng đầu ở Holland Village). Chuỗi này thậm chí đã **ngừng hoạt động phần lớn tại Malaysia**.
2. **`ぐるなびソウル系` là cụm vô nghĩa** — ぐるなび (Gurunavi) là trang đặt bàn Nhật, "ソウル" (Seoul) không liên quan gì tới một chuỗi Singapore. Câu này đọc ra như **văn dàn ý còn sót** hoặc lỗi ghép nhầm.

**Đề xuất:** 「①シンガポール発の『Sushi Tei』(品質安定)」.
*Lưu ý:* bản VN L85 chỉ ghi "① Sushi Tei" trống trơn → **không mâu thuẫn**, nên chỉ cần sửa vế Nhật.

---

## 4. 🟡 PHÁT HIỆN TRUNG BÌNH

### 🟡-1 · rule_34 L84 + L122 — "Phở Pasteur" không phải tên quán có thật
`フォー・パスツール(Phở Pasteur)` — HCM có **Phở Hòa Pasteur** (260C Pasteur, Bib Gourmand) chứ không có quán tên "Phở Pasteur". Đã ghi trong VN P2-18, **chưa fix**. Có ở **2 chỗ**: thoại L84 + câu vàng L122 → sửa phải đủ cả hai.

### 🟡-2 · rule_36 L107/L108/L118 — `戦後` sai bối cảnh 1946
「1940年代、**戦後**ハノイで牛乳が手に入らなくて」 / VN: *"nguồn gốc 1940, **hậu chiến** Hà Nội"*. Café Giảng mở **1946**, thời điểm đó là **cuối thời Pháp thuộc / trước Toàn quốc kháng chiến (12/1946)** — với người Nhật `戦後` mặc định nghĩa "sau 1945 (Thế chiến II)", dễ gây hiểu lệch sang bối cảnh Nhật Bản.
Đã ghi VN P2-17, **chưa fix**. Có ở **3 chỗ**: L107 (JA), L108 (VN), L118 (chú thích VN) — đúng loại dễ vá hụt.
**Đề xuất:** `1940年代後半のハノイで牛乳が高価で` + VN bỏ chữ "hậu chiến".

### 🟡-3 · rule_36 L111 + L142 — Café Giảng thiếu địa chỉ
`ハノイ旧市街のCafé Giảng` — có 2 cơ sở ở phố cổ (39 Nguyễn Hữu Huân và Yên Phụ). Bản gốc do gia đình ông Giảng: **39 Nguyễn Hữu Huân**. Câu ngay sau nói "con trai người sáng lập vẫn trông quán" → càng cần địa chỉ. Có ở thoại L111 + câu vàng L142.

### 🟡-4 · Khách Nhật tự xưng "Em" — 3 dòng (trục E)
Lọc đúng theo mục 4-E (bản Nhật cho thấy người nói TỰ nói về mình, không có 〜さん):

| Rule | Dòng | JA | VN | Vấn đề |
|---|---|---|---|---|
| 36 | 66 | 山本:「メモった!週末行ってみる。」 | *"**Em** ghi rồi!"* | Yamamoto là **khách Nhật**, `voice_profiles` ghi **nữ 35-40t, Manager BD Osaka** — không thể xưng "em" với Dũng (BD 25-30t) |
| 36 | 89 | 山本:「その表現メモる(笑)」 | *"**em** ghi cụm đó"* | như trên |
| 41 | 93 | 田中:「全部メモ。」 | *"**Em** ghi hết."* | Tanaka **nam 30-35t, PMO khách hàng** — cùng lỗi |

**Đây chính xác là kiểu hụt #4** (script xưng hô đợt trước thiếu pattern) — REVIEW_FINDINGS VN P0-1 đã bắt đúng ca `rule_34/conversation.json L29` của Yamamoto, nhưng **script chỉ chạy trên `conversation.json`, không đụng `.md`** (kiểu hụt #1). 3 dòng này còn nguyên trong `.md`.
**Đề xuất:** đổi thành "**Tôi** ghi rồi" / "**tôi** ghi cụm đó" / "**Tôi** ghi hết".
⚠️ **KHÔNG** động tới các dòng "anh/chị" khác — đó là thiết kế nhất quán toàn sách (xem CẤM SỬA).

### 🟡-5 · rule_38 L36 + rule_40 L37 — xưng hô lệch giới với nhân vật nữ
- rule_38 L36: Dũng nói với Matsumoto *"**Chị nhà** chắc chắn thích"* — JA 「奥様も絶対喜びます」 ✅ đúng.
- **rule_40 L36-37:** JA `Daejin通り` / VN `Phố Đặng Tiến` — **"Daejin" là chữ La-tinh hoá kiểu Hàn Quốc**, không phải cách phiên âm tiếng Nhật của "Đặng Tiến". Trong ô tiếng Nhật nên là `ダンティエン通り`. (Ghép với 🔴-8 「ソウル系」 cùng file → nghi cùng một nguồn dữ liệu bị lẫn.)

### 🟡-6 · rule_37 L115-116 — lời khuyên hơi tuyệt đối hoá vùng miền
「北の人と話す時は『四季の話』、南の人と話す時は『マンゴーの旬』」 — khuôn mẫu hoá theo vùng miền hơi cứng. Không sai sự thật, nhưng là dạng lời khuyên dễ dẫn tới **định kiến** khi học viên áp máy móc. Đề nghị thêm chữ "傾向" (khuynh hướng). **Ưu tiên thấp.**

### 🟡-7 · rule_36 L45 — chú thích 【1】 số liệu robusta lệch
「ベトナム = ~**60%** robusta toàn cầu」 — số liệu hiện hành ~**40%**. Thoại chính (L32) chỉ nói "ロブスタ単独で世界1位" → **đúng và an toàn**; chỉ chú thích thừa con số. Đề xuất: bỏ số hoặc đổi thành "khoảng 40%".

### 🟡-8 · rule_41 L55 — Phú Quốc "cực Nam"
`ベトナム最南端のリゾート島` — cực Nam VN là **Mũi Cà Mau / Hòn Khoai**. Phú Quốc nằm ở vịnh Thái Lan, phía **Tây Nam**. Đề xuất: `ベトナム南西部最大のリゾート島`. Mức độ nhẹ (có thể đọc là "đảo nghỉ dưỡng ở cực nam"), nhưng độc giả **người Việt** sẽ để ý.

### 🟡-9 · rule_40 L32 + L134 — Kaikaya "銀座の本店"
開花屋 (Kaikaya) là quán nổi tiếng ở **Shibuya / 円山町**, không tìm thấy bản điếm Ginza. Nếu là quán hư cấu thì không sao; nếu mượn tên thật thì nên đổi `銀座` → `渋谷`. **Cần chủ nhà xác nhận đây là tên thật hay hư cấu** trước khi sửa.

---

## 5. 🔵 PHÁT HIỆN NHẸ

1. **rule_34 L139** — 「"phở Tokyo cũng**好評ですが**、地元はちょっと違うんですよ"」: câu tiếng Việt bị chèn nguyên cụm Nhật `好評ですが` giữa dòng hướng dẫn tiếng Việt. Trộn 2 ngôn ngữ trong một câu khuyên.
2. **rule_35 L96** — VN dịch mâm ngũ quả: *"xoài (**Xài**)"*. Chơi chữ đúng ("Cầu Sung Vừa Đủ Xài") nhưng đặt "(Xài)" ngay sau "xoài" dễ đọc thành lỗi chính tả. Đề nghị: *"xoài (đọc chệch thành 'xài')"*.
3. **rule_39 L42** — `バインチュンチュー(Bánh Trung Thu)`: "Thu" → katakana đúng là `トゥー`, không phải `チュー`. (VN P1-2, chưa fix.)
4. **rule_39 L111** — 「**朝5時に**酒漬けのもち米」: giờ cụ thể "5h sáng" không phải chuẩn mực; tục lệ là "sáng sớm khi vừa ngủ dậy". Nhẹ.
5. **rule_41 L83** — `ロカルバー` là lỗi chính tả katakana, đúng phải là **`ローカルバー`** (thiếu trường âm). Đây là ca tiếng Nhật sai duy nhất kiểu "chính tả" tôi tìm được trong 8 file.
6. **rule_38 L106** — `朝統一会堂` đọc gượng (「朝」 dính liền 「統一会堂」). Nên tách: `午前は統一会堂`.
7. **rule_38 L69** — VN *"view nhà thờ + **UBND**"*: viết tắt hành chính VN trong lời thoại tư vấn du lịch cho khách Nhật, không khớp văn cảnh. JA ghi 「教会と市役所」 → nên dịch "Nhà thờ và Trụ sở UBND Thành phố".

---

## 6. Trục C — tiếng Nhật sai: kết quả rà

Main Claude quét 16 pattern 二重敬語/過剰敬語 ra **0**. Tôi rà thủ công 8 file và **xác nhận 0 lỗi kính ngữ**: không có `部長様`, không có お/ご gắn vào việc của mình, uchi/soto đúng, `おります` dùng đúng khiêm nhường ngữ. Rule_40 L44 「おっしゃってた」 (tôn kính cho khách) và L119 「お伝えしておきます」 (khiêm nhường cho mình) đều **chuẩn**.

Lỗi tiếng Nhật tìm được **không phải kính ngữ** mà là: sai số liệu (🔴-2), sai địa danh (🔴-4), cụm vô nghĩa (🔴-8), chính tả katakana (🔵-5), La-tinh hoá kiểu Hàn (🟡-5).

---

## 7. Trục A — dạy làm sai việc thật: đánh giá

Phần_IV **làm tốt** mảng chủ đề cấm kỵ và từ chối lịch sự:
- rule_34 L99+【2】: né nguồn gốc Pháp/Trung bằng 「諸説あって、私は専門家じゃないので」 — mẫu từ chối khéo **đúng chuẩn**.
- rule_35 L129 + NG list: chặn Tết Mậu Thân, Bắc-Nam, "Pháp/Mỹ ép bỏ Tết".
- rule_39 L97 + NG list: chặn 「アメリカに勝った」/「戦勝記念日」 cho 2/9; L84 xử lý câu 「戦後の話やね」 của senior bằng cách kéo về hiện tại — **rất khéo**.
- rule_41 L78-91: cảnh báo chặt chém/móc túi/Grab giả **TRƯỚC** khi gợi ý Tạ Hiện; NG list chặn đưa khách 60t đi khu phố đêm.
- rule_36 L154-156: cảnh báo caffeine cao + **nói rõ cà phê trứng là trứng SỐNG** cho người dị ứng — đúng tinh thần sửa lỗi ヒートショック/アルハラ của đợt trước.

**Rủi ro trục A duy nhất:** 🔴-7 (lịch trình Sapa bất khả thi) và 🔴-1 (sai ngày Trung thu) — cả hai làm học viên **nói/làm sai trước mặt khách**.

---

## 8. ⛔ NGOÀI PHẠM VI — CHỈ BÁO CÁO, KHÔNG SỬA

| Vấn đề | Vị trí | Ghi chú |
|---|---|---|
| Nhãn vai không thống nhất toàn sách | phần_IV dùng kanji (`松本`, `山本`); phần_III dùng snake_case (`hiroshi_chugoku`) | Ảnh hưởng pipeline TTS. **Quyết định toàn sách**, không sửa lẻ trong phạm vi S4 |
| `conversation.json` của 8 rule | — | Không mở, không đụng theo phạm vi |
| Yamamoto nữ nhưng phần_IV không có nhãn giới tính VN | `_front_matter.md` L52 ghi "**chị** Yamamoto"; rule_17 gọi "Chị Yamamoto" | Trong phần_IV chỉ hiện `**山本**` nên không lộ lỗi; nhưng khi build/TTS cần map đúng |
| `_front_matter.md` L52 ghi "anh Sato (**Fukuoka**)" | `voice_profiles.json` key là `sato_kyushu`, role "Trưởng chi nhánh Fukuoka" | Khớp. Không phải lỗi — ghi lại để đợt sau khỏi báo nhầm |

---

## 9. ⛔ CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| # | Chỗ | Vì sao ĐỪNG đụng |
|---|---|---|
| 1 | **rule_36 — toàn bộ cụm Buôn Ma Thuột / Đắk Lắk** (thoại L36-37 + vocab L167) | **ĐÃ FIX TRỌN VẸN.** Prompt đợt này còn cảnh báo "vocab vẫn để Đà Lạt" — **không còn đúng**. Đừng "sửa lại" theo cảnh báo cũ, sẽ phá fix tốt |
| 2 | **rule_39 L179 — dòng vocab `塩漬け卵黄 … ⚠️ KHÔNG dùng カラスミ`** | Chuỗi `カラスミ` ở đây là **cảnh báo có chủ ý**, không phải lỗi sót. Grep máy móc `カラスミ` sẽ báo nhầm → **đừng xoá** |
| 3 | **rule_35 L57 「4つ違いがあります、特に大きく違うのは2つで」** | Nhìn qua tưởng mâu thuẫn "4 vs 2". Thực chất là **fix đúng** của VN P0-6: 4 con khác, trong đó 2 con nổi bật. Chú thích 【2】 L71 + luận điểm L3 đều đã đồng bộ |
| 4 | **rule_39 L57 「4000年前」** | Cách nói phổ thông chuẩn mực về Hùng Vương. **Đừng "sửa" thành 2700/2879 TCN** theo khảo cứu — sẽ lệch văn hoá đại chúng VN |
| 5 | **rule_37 L32 「1月の寒波で10度切ることもあります」** | Đã được làm mềm đúng ở v1.1 (P0-5). Bản đã kiểm chứng khớp số liệu. **Đừng đổi lại "10度切ること多い"** |
| 6 | **rule_41 L30 「海の桂林」** | Biệt danh thật, dùng rộng rãi trong tài liệu tiếng Nhật về Hạ Long. Không phải lỗi dịch |
| 7 | **Toàn bộ khách Nhật xưng "anh" với Dũng** (rule_37 L58, rule_38 L80/L92/L117, rule_40 L91…) | **Thiết kế nhất quán toàn sách**, không phải lỗi. Chỉ 3 dòng dùng "**Em**" mới sai (🟡-4). Script quét "anh" sẽ ra ~9 ca → **báo động sai**, đúng ca "43 dòng → thực tế 7" của sách này |
| 8 | **33 từ tiếng Anh trong ô tiếng Việt** (`local`, `dress code`, `Michelin`, `rooftop`, `homestay`…) | Đã kiểm CẢ HAI VẾ: **32/33 có counterpart trong ô tiếng Nhật** (ローカル/ドレスコード/ミシュラン…). Xoá đi sẽ làm VN **lệch** JA. Không phải "tiếng Anh thừa" |
| 9 | **rule_34 L87 chú thích 「ぶっきらぼう」** | Chủ ý sư phạm: dạy phân biệt "thô mộc (mô tả)" vs "thất lễ". BJT J2 L166 dựa vào đúng chỗ này |
| 10 | **rule_40 L111 `250万ドン(約13,000円)` và `500万ドン(約27,000円)`** | **Đúng tỉ giá.** Chỉ L40 (`4500万`) sai. Đừng sửa lan sang 2 dòng đúng này |
| 11 | **Các khối NG / "Vùng cấm" ở cả 8 rule** | Cố ý liệt kê điều SAI để dạy tránh. Không phải lỗi của sách |
| 12 | **rule_38 L106 「戦争証跡博物館」 + L110 「重い」** | Xử lý đúng: cảnh báo trước cho khách rồi vẫn gợi ý. Đừng gỡ vì "nhạy cảm" |

---

## 10. Đề xuất thứ tự sửa (theo mục 8 của rule)

| Vòng | Việc | Mục |
|---|---|---|
| 1 | Chính tả/máy móc: `ロカルバー`→`ローカルバー`, `Daejin通り`→`ダンティエン通り` | 🔵-5, 🟡-5 |
| 2 | **Sai sự thật (nặng nhất, làm trước):** ngày Trung thu 3+1 chỗ · Bát Đàn/Gia Truyền · Phở Quỳnh+"vào sao" · Sushi Tei · Bắc Hà/ga Sapa/de la Coupole · Phú Quốc | 🔴-1,5,6,7,8 · 🟡-8 |
| 3 | **Số liệu + mâu thuẫn nội bộ:** `4500万ドン`→`450万ドン` (2 chỗ, nhớ sed lấy nguyên văn có ruby) · `ハノイあたり`→`ホーチミンあたり` · chú thích 60%→40% | 🔴-2,4 · 🟡-7 |
| 4 | Xưng hô 3 dòng "Em" → "Tôi" | 🟡-4 |
| 5 | Vá nốt các mục P1/P2 chưa fix: Phở Hòa Pasteur · `戦後`(3 chỗ) · Café Giảng địa chỉ · バインチュントゥー | 🟡-1,2,3 · 🔵-3 |
| 6 | **Chờ chủ nhà chốt:** nhãn vai `広島さん` (toàn sách) · Kaikaya 銀座 hay 渋谷 (thật/hư cấu) | 🔴-3 · 🟡-9 |

---

*S4 — phần_IV (rule_34→41) — 8 file rule.md — 8 🔴 / 9 🟡 / 7 🔵 — 20 dữ kiện WebSearch, 16 mục kiểm chứng fix.*
*CHỈ BÁO CÁO — KHÔNG SỬA FILE NỘI DUNG.*
