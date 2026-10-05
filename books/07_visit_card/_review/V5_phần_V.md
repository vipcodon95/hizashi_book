# V5 — Báo cáo rà soát: phần_V (rule_31→35) + NHẤT QUÁN TOÀN SÁCH

> Sách 07 "Tiếp khách·Thăm·Danh thiếp / 来客・訪問・名刺交換".
> Áp dụng `.claude/rules/book-review.md` (mục 1 bẫy kỹ thuật, mục 3 chống phóng đại, mục 4 trục A→F, mục 5 fix nửa vời, mục 6 điểm mù).
> Mọi kết luận "không có / có" đều đã **strip ruby bằng python** trước khi grep.
> **CHỈ BÁO CÁO — không sửa file nội dung nào.**

---

## Tóm tắt điều hành

| Hạng | Số phát hiện | Nội dung |
|---|---|---|
| 🔴 | 4 | (1) rule_32 dạy 90° là **loại お辞儀 thứ 4** — sai chuẩn ngành · (2) **rule_05 dạy NGƯỢC** thứ tự trao danh thiếp (junior trước) — sai chuẩn, vắt qua 3 rule · (3) fix đợt trước 「お通りすぎいたしましょう」 **chạy nửa vời**, còn sót 2 chỗ · (4) rule_34 sai tiền cọc Suica |
| 🟡 | 5 | ruby 初対面 lệch · mục lục lệch 11/35 · tên sách 2 phiên bản · rule_32 thiếu cross-ref rule_13 · tiếng Anh lọt văn Việt |
| 🔵 | 3 | 席次 11 người · thuật ngữ thiếu mục · nhãn "ceremony" trong H1 rule_35 |

**Xác nhận thước đo của main Claude:** mục lục VN lệch **11/35**, JP lệch **1/35** — tôi đo độc lập ra **đúng y con số này**. Keigo phần V: **0 ca** (17 pattern). Ruby vỡ phần V: **0**. Ký tự lạ: **0**.
**5 rule của phần V về cơ bản SẠCH** — chỉ rule_32 có lỗi nội dung thật, rule_34 có 1 số liệu sai, rule_35 có 2 lỗi nhỏ. rule_31 và rule_33 **hoàn toàn sạch, không có gì phải sửa**.

---

# PHẦN 1 — 5 rule của phần V

## rule_31_5名以上 — ✅ SẠCH

Rà đủ A→F: không có lời khuyên gây hại, không tự mâu thuẫn, keigo đúng, không sai sự thật, tiếng Việt ổn.
Đối chiếu 上座/下座 với rule_10 (rule gốc): **nhất quán 100%** — 上座 = xa cửa, khách cấp cao ở trung tâm 上座, cấp trên bên chủ nhà ngồi 下座 đối diện. Ghi chú 【1】 diễn giải đúng nguyên tắc của rule_10 【2】【3】.
Câu chốt 「席次表をご確認の上、お席にお着きください」 — keigo đúng, không có 二重敬語.

🔵 **Ghi nhận nhỏ (KHÔNG cần sửa):** d3 và 【1】 nói "khách cấp cao ngồi giữa 上座", trong khi chuẩn 席次 Nhật cho bàn dài thường tính **vị trí sâu nhất tính từ cửa** rồi mới toả trái/phải. Sách đã nêu đúng cả hai yếu tố (xa cửa + trung tâm) và rule_10 d56 đã giải thích quy tắc "nhìn từ kamiza, bên phải > bên trái". Không mâu thuẫn — chỉ là cách diễn đạt gọn.

---

## rule_32_お辞儀角度 — 🔴 LỖI CHÍNH CỦA PHẦN V

### 🔴 [V5-01] Sách dựng "90° = loại お辞儀 thứ 4" — sai phân loại chuẩn ngành

**File:** `nội_dung/phần_V/rule_32_お辞儀角度/rule.md`
**Dòng dính:** d3 (luận điểm), d5 (câu JP), d34, d41, d48 (ghi chú【4】), d54+d56 (câu chốt) — **6 chỗ**, cộng `meta/mục_lục.md` d97.

**Nguyên văn d3:**
> **Luận điểm.** Cúi chào Nhật KHÔNG phải "cúi nhẹ là được". Có **4 góc cố định**: **15° eshaku … · 30° keirei … · 45° saikeirei … · 90° xin lỗi nặng**.

**Nguyên văn d34:**
> 「リン、お<ruby>辞儀<rt>じぎ</rt></ruby>は4<ruby>種類<rt>しゅるい</rt></ruby>。<ruby>場面<rt>ばめん</rt></ruby>で<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>ける。」

**Nguyên văn d54 (câu chốt):**
> **「お辞儀は会釈15°・敬礼30°・最敬礼45°・謝罪90°の4種類。角度=温度+敬意+反省深さの signal。」**

**Nguyên văn d48 (ghi chú【4】):**
> 【4】**90° xin lỗi nặng** — sai nặng / vi phạm hợp đồng. Giữ 3+ giây. **Mức cúi sâu nhất trước khi xuống dogeza (quỳ).**

#### ⚠️ ĐÍNH CHÍNH giả thiết của main Claude

`00_TIEN_DO.md` d49 viết: *"Thân rule (d35-d47) cũng chỉ dạy 3 mức — câu chốt tự mâu thuẫn với chính rule"*.
**Điều này KHÔNG đúng.** Thân rule dạy **đủ 4 mức**: d41 chính là lượt thoại thứ tư của フオン副部長 làm mẫu 90°, và ghi chú【4】 d48 định nghĩa hẳn mức 90°. d3 luận điểm cũng khai "4 góc cố định".

→ Vậy **rule_32 KHÔNG tự mâu thuẫn**. Nó nhất quán nội bộ ở con số 4. Vấn đề là **cả rule nhất quán SAI so với chuẩn ngành**, và phạm vi sửa rộng hơn main Claude ước tính (6 chỗ + mục lục, không phải chỉ câu chốt).

#### WebSearch độc lập — kết quả

Tôi đã tra 3 nguồn ngành Nhật, tất cả **thống nhất phân 3 loại**:

| Nguồn | Phân loại | Nói gì về 90° |
|---|---|---|
| inthehotel.jp (đã WebFetch đọc trọn) | **3 loại**: 会釈15° / 敬礼30° / 最敬礼45° | "90度まで深く曲げるお辞儀は、**極めて重大な不祥事の謝罪会見などで見られます**が、日常の接客やビジネスでは**やや過剰に映る可能性**があります" — và chốt "一般的なシーンでは45度で十分" |
| co-medical.mynavi.jp | **3 loại**: 会釈15° / 敬礼30° / 最敬礼**45°〜90°** | 90° nằm **BÊN TRONG** 最敬礼, không phải loại riêng |
| rakuten.ne.jp (askashop knowledge) | **3 loại** | 最敬礼 dùng cho 謝罪・クレーム応対 |

**Kết luận nghiệp vụ:**
1. Chuẩn ngành Nhật phân **3 loại** お辞儀 (会釈・敬礼・最敬礼). Không có nguồn nào coi 90° là **loại thứ 4** có tên riêng.
2. 90° **có tồn tại trong thực tế** nhưng là **đầu sâu nhất của thang 最敬礼** (một số nguồn ghi 最敬礼 = 45〜90°), dành cho **謝罪会見 / 極めて重大な不祥事** — tức sự kiện cấp công ty có báo chí, **không phải nghi thức cá nhân đi công tác**.
3. Với đối tượng sách (BD/PM/Account đi onsite), **45° là mức sâu nhất thực dụng**. Nguồn nói thẳng 90° "ở tình huống kinh doanh thường ngày trông quá lố".

#### 🎯 Đề xuất — **BỎ 90° khỏi hệ phân loại, GIỮ 90° như một chú thích cảnh báo**

Không nên "bổ sung vào thân rule" (thân rule đã có rồi — vấn đề là nó bị nâng thành **loại**). Cũng không nên xoá sạch 90° (vì Hội thoại XẤU và rule_35 đều tham chiếu tình huống Linh bow 90°).

Hướng sửa gọn nhất, đúng chuẩn và giữ nguyên mạch truyện:

| Dòng | Hiện tại | Đề xuất |
|---|---|---|
| d3 | "Có **4 góc cố định**: … 90° xin lỗi nặng" | "Có **3 loại chuẩn**: 15° 会釈 · 30° 敬礼 · 45° 最敬礼 (mức sâu nhất dùng trong kinh doanh). Mức ~90° chỉ xuất hiện ở 謝罪会見 cấp công ty — **không dùng trong nghi thức cá nhân**." |
| d5 | 「場面ごとに4種類使い分け」 | 「場面ごとに**3種類**使い分け。90°は謝罪会見レベルで、通常の商談では使わない。」 |
| d34 | 「お辞儀は4種類」 | 「お辞儀は**3種類**」 |
| d41 | フオン demo 90° như loại thứ 4 | Đổi thành lời **cảnh báo**: 「90°は**謝罪会見レベル**。私達の場面では使わない。重大ミスでも45°+言葉で伝える。」 — vẫn giữ được lượt thoại, đổi vai trò từ "dạy dùng" sang "dạy KHÔNG dùng" |
| d48【4】 | "90° xin lỗi nặng — … Mức cúi sâu nhất trước khi xuống dogeza" | "90° = **không thuộc 3 loại chuẩn**. Chỉ thấy ở họp báo xin lỗi của công ty (謝罪会見). Người đi công tác **không bao giờ** dùng — 45° + lời xin lỗi đúng là đủ." **Bỏ hẳn cụm "trước khi xuống dogeza"** (xem V5-01b) |
| d54/d56 | 「…謝罪90°の4種類」 | 「お辞儀は会釈15°・敬礼30°・最敬礼45°の**3種類**。角度=温度+敬意の signal。」 |
| `meta/mục_lục.md` d97 | "15° / 30° / 45° / 90° tùy context" | "15° / 30° / 45° tùy context" |

**Lợi ích phụ:** sửa xong thì rule_32 **khớp luôn** với rule_35 d36 — nơi sách đã tự dạy rằng Linh bow 90° với CFO là **LỖI** và "45°が正解". Hiện tại rule_32 nâng 90° thành 1 trong 4 loại chính thức là **đá nhau ngầm** với bài học của rule_35.

#### 🔴 [V5-01b] Cụm "trước khi xuống dogeza (quỳ)" — nên bỏ

**Dòng:** rule_32 d48.
> Mức cúi sâu nhất **trước khi xuống dogeza (quỳ)**.

**Vấn đề:** đặt 土下座 vào cùng thang đo với お辞儀 nghiệp vụ là sai trục. 土下座 ở Nhật hiện đại **không phải nghi thức doanh nghiệp** — nó mang sắc thái kịch tính / cưỡng ép, và ép người khác 土下座 có thể cấu thành 強要罪. Sách nghi thức cho người Việt đi làm **không nên gợi ý** đó là "mức tiếp theo" trong thang cúi chào.
**Đề xuất:** bỏ hẳn mệnh đề này.

### ✅ Phần ĐÚNG của rule_32 — CẤM SỬA

- **15° 会釈 / 30° 敬礼 / 45° 最敬礼** cùng mô tả tình huống (hành lang / vào-ra phòng họp / CFO-GĐ-khách lớn) — **khớp 100%** cả 3 nguồn. Đừng đụng.
- Thời lượng giữ (1 giây / 2-3 giây / 3-4 giây) — hợp lý, không nguồn nào mâu thuẫn.
- d65 "Cúi nửa người (gập eo nhưng đầu vẫn ngẩng) — không phải kiểu cúi chào Nhật" — **đúng**, đây là lỗi phổ biến thật.
- Bảng từ vựng d74-76 — Hán Việt HỘI THÍCH / KÍNH LỄ / TỐI KÍNH LỄ đều đúng.

---

## rule_33_文化衝突 — ✅ SẠCH

Rà đủ A→F. 3 trục dạy (相互ケア khi rót · nhường người mời trả · đáp lễ cách thời gian) đều đúng nghi thức Nhật.
Keigo: 「お言葉に甘えさせていただきます」 — đúng, không phải 二重敬語 (甘える là động từ thường, không phải 謙譲語). 「ご馳走になりました」 — đúng cụm cố định.
d67 "Từ chối mạnh 'không không em không nhận đâu' — phá thiện chí" — bắt đúng phản xạ người Việt.

🔵 **Ghi nhận (KHÔNG phải lỗi):** khối "Hội thoại XẤU" d24 để トゥアンリーダー tự xưng kèm chức danh — nhưng đây là **hội thoại nội bộ VN-JP thân mật ở izakaya** và là khối XẤU cố ý. Theo mục 3 của rule, **không báo là lỗi của sách**.

---

## rule_34_初訪問キット — 🔴 1 số liệu sai

### 🔴 [V5-02] Tiền cọc Suica sai — 2.000 yên (thực tế **500 yên**)

**File:** `nội_dung/phần_V/rule_34_初訪問キット/rule.md` **dòng 40** (ghi chú【2】).
**Nguyên văn:**
> 【2】**Suica mua tại quầy xanh JR Narita** (tiền cọc **2,000 yên** + 3,000 yên dư). iPhone hỗ trợ thì cài eSIM Suica trước càng tốt.

**WebSearch xác minh (JR-East, Rakuten Travel, MATCHA, Tokyo Cheapo — thống nhất):**
- Tiền cọc Suica (デポジット) = **500 yên**, hoàn lại khi trả thẻ tại quầy JR-East.
- Thẻ bán theo mệnh giá 1.000 / 2.000 / 3.000 / 4.000 / 5.000 / 10.000 yên — **trong đó 500 yên là cọc**, phần còn lại là số dư dùng được.
- Ví dụ: mua thẻ 2.000 yên → cọc 500 + dư **1.500** (không phải cọc 2.000 + dư 3.000).

**Đề xuất:** sửa thành *"(tiền cọc **500 yên** — mua thẻ mệnh giá 3.000 yên thì còn **2.500 yên** dư dùng được)"*.
**Đồng bộ:** d78 trong khối Mẫu ghi *"Số dư khuyên: 5,000 yên"* — con số này **không sai** (là khuyến nghị, khớp rule_35 d38 quy định tối thiểu 5.000 yên). Chỉ sửa d40.

### 🔵 [V5-03] "Welcome Suica" — có thể bổ sung (tuỳ chọn, KHÔNG bắt buộc)

Với khách công tác ngắn ngày, JR-East có **Welcome Suica** (không mất cọc, hạn 28 ngày) bán ngay tại JR-EAST Travel Service Center ở Narita. Nếu muốn rule_34 chuẩn hơn thì thêm 1 dòng; nhưng **không sửa cũng không sai** vì Suica thường vẫn dùng được.

### ✅ Đúng — CẤM SỬA
- "ATM Nhật hay từ chối thẻ VN" — đúng thực tế (nhiều ATM Nhật chỉ nhận thẻ quốc tế tại 7-Bank/JP Post).
- d105 "Phích chuyển A type (Nhật 100V)" — **KHÔNG phải lỗi**. Việt Nam dùng cả Type A **và Type C (chân tròn)**; thiết bị VN chân tròn cần phích chuyển sang Nhật. Điện áp cũng khác (VN 220V / Nhật 100V) nên ghi 100V là đúng và hữu ích. Đừng gỡ.
- d43【5】 "Tokyo tháng 4-5 sáng tối lạnh + mưa bất ngờ → ô gấp + áo len" — đúng, khớp bối cảnh truyện (2026-04, theo rule_35 d42).

---

## rule_35_振り返り — 🟡 2 lỗi nhỏ

### 🟡 [V5-04] Ruby 初対面 = はつたいめん (phải là しょたいめん) — lệch với chính rule_32

**File:** `nội_dung/phần_V/rule_35_振り返り/rule.md` **dòng 36**.
**Nguyên văn (còn ruby):**
> 「①リンがD1<ruby>朝<rt>あさ</rt></ruby>CFO<ruby>初対面<rt>はつたいめん</rt></ruby>で90°bow→…」

**Vấn đề:** `初対面` đọc chuẩn là **しょたいめん** (kotobank, weblio, jitenon — chỉ ghi nhận しょたいめん). はつたいめん chỉ là biến thể khẩu ngữ, không có trong từ điển lớn.
**Bằng chứng lệch nội bộ:** cùng sách, `rule_32` dùng **しょたいめん** ở **4 chỗ** (d22, d37, d39, d42). Đây là ca duy nhất toàn sách đọc khác.
**Đề xuất:** sửa `<rt>はつたいめん</rt>` → `<rt>しょたいめん</rt>`.
⚠️ **Bẫy ruby (mục 1.1):** phải sửa bằng cách `sed -n '36p'` lấy nguyên văn còn ruby rồi mới Edit.

### 🟡 [V5-05] Romaji tiếng Việt còn giữ keigo BỊA đã bị gỡ ở bản Nhật — **fix đợt trước chạy nửa vời**

**File:** `nội_dung/phần_V/rule_35_振り返り/rule.md` **dòng 40**.

`meta/STATUS.md` d34 khai:
> P0 「お通りすぎいたしましょう」 (fabricated keigo) → 「通り過ぎましょう」 (rule 22, 35)

**Thực tế kiểm chứng (đã strip ruby):**

| Chỗ | Bản Nhật | Bản Việt | Trạng thái |
|---|---|---|---|
| rule_35 d40 | 『**通り過ぎましょう**』 ✅ đã sửa | *Cụm mới: '**Otoorisugi itashimashou**' của Tanaka PMO* ❌ **vẫn là dạng cũ** | 🔴 **FIX NỬA VỜI (chỉ JA, quên VN)** |
| rule_22 d46 | 「こちらは別件のmeeting中で、**お通りすぎいたしましょう**。」 ❌ | *mình đi qua thôi nhé* | 🔴 **CHƯA FIX** — đúng lỗi mục 5.1/5.2 |

→ Đây là **ca sách giáo khoa của mục 5** trong `book-review.md`: STATUS khai nhiều hơn thực tế đã làm. Bản Việt của rule_35 đang **dạy học viên đọc thuộc một cụm keigo bịa** mà chính sách đã tuyên bố gỡ.

**Đề xuất:**
- rule_35 d40 (trong phạm vi tôi): `'Otoorisugi itashimashou'` → `'Toorisugimashou'` (hoặc bỏ romaji, ghi 「通り過ぎましょう」).
- rule_22 d46 (**ngoài phạm vi tôi — phần III, agent V3**): ghi nhận để main Claude giao lại. Nếu V3 không báo, đây chính là **điểm mù mục 6**.

### 🔵 [V5-06] H1 còn từ tiếng Anh "ceremony"

**Dòng 1:** `# Rule 35 — Tự đánh giá ceremony etiquette / 振り返り`
Theo `feedback_vietnamese_labels`, tiêu đề nên thuần Việt: *"Tự đánh giá nghi thức sau sự kiện"*. Xem thêm mục [V5-08] — mục lục cũng ghi bản này.

### ✅ Đúng — CẤM SỬA
- Khung 5 mục (良かった点・課題・改善action・新発見・記録) — nhất quán giữa d3, d5, d23, d54, và khối Mẫu d75-115. **Không lệch chỗ nào.**
- d36 dạy "Linh bow 90° → CFO ngại → 45°が正解" — **ĐÚNG chuẩn** (khớp WebSearch). Đây là chỗ sách dạy chuẩn nhất về độ cúi; **tuyệt đối đừng sửa 45° thành 90°** khi đồng bộ với rule_32.
- Cụm 「お言葉に甘えさせていただきます」 d40 — đúng, khớp rule_33 d40/d56.

---

# PHẦN 2 — NHẤT QUÁN TOÀN SÁCH

## 2.1 — Nhiệm vụ (1): KẾT LUẬN VỀ ĐỘ CÚI CHÀO

### Bảng độ cúi toàn sách (đã strip ruby, quét 35/35 rule)

| Góc | Rule dùng | Tình huống | Khớp chuẩn? |
|---|---|---|---|
| **15°** | r03 (trao danh thiếp), r04, r11 (lui khỏi phòng trà), r18 (lễ tân, 2 lần), r19 (cửa phòng), r21 (ngưỡng cửa), r32 | Hành lang, lễ tân, ngưỡng cửa, trao danh thiếp | ✅ đúng 会釈 |
| **30°** | r08 (đón khách), r12 (mở họp), r20 (cấp trên vào), r21 (chào bàn), r23 (rời phòng ×3), r29 (nhận omiyage), r32 | Đón/tiễn tại chỗ, vào-ra phòng họp, nhận quà | ✅ đúng 敬礼 |
| **45°** | **r13 (tiễn khách cuối)**, r32 | Tiễn khách cấp cao; gặp CFO/GĐ lần đầu | ✅ đúng 最敬礼 |
| **90°** | **r32 (dạy là loại thứ 4)**, r35 (dạy là LỖI) | — | ❌ **r32 sai** · ✅ r35 đúng |

### Kiểm chéo rule_13 ↔ rule_32 (câu hỏi main Claude đặt ra)

**rule_13 d3 / d5 / d62:** tiễn khách = "cúi chào **45°** cuối", 「最後に45度お辞儀」.
**rule_32 d39/d47:** 45° 最敬礼 = "CFO / GĐ / khách lớn lần đầu gặp, **cảm ơn trong tình huống quan trọng**".

**→ KẾT LUẬN: NHẤT QUÁN, KHÔNG XUNG ĐỘT.** Tiễn đoàn CFO Nakamura ra taxi rơi đúng vào vế "cảm ơn trong tình huống quan trọng" của định nghĩa 最敬礼 trong rule_32. Nguồn ngành cũng xác nhận: inthehotel.jp ghi 最敬礼 45° dùng khi "ホテルや旅館でお客様の姿が見えなくなるまでお見送りする時" — **chính xác là cảnh của rule_13** (đứng đến khi xe khuất).

⚠️ Có **một chỗ nhìn qua tưởng lệch nhưng KHÔNG phải lỗi**: rule_13 d41 mô tả *đứng dậy cúi 30° (trong phòng)* → *xuống sảnh* → *cúi 45° (lúc xe đi)*. Hai góc trong cùng một mạch tiễn nhưng **hai thời điểm khác nhau** — giống bẫy "5月末 vs 7月末" ở mục 3. **Đừng gộp thành mâu thuẫn.** Một số nguồn (co-medical) ghi お見送り là 30°, nhưng đó là bối cảnh y tế/tiếp tân thường; với khách cấp CFO thì 45° là phù hợp và có nguồn đỡ.

### 🟡 [V5-07] rule_32 thiếu cross-ref tới rule_13 — rule "trục" mà bỏ sót người dùng chính của 45°

**rule_32 d7:** `**Liên quan:** rule 21 (入室), rule 23 (退室), rule 26 (乾杯).`
rule_32 là rule **định nghĩa** hệ độ cúi, nhưng danh sách liên quan bỏ sót:
- **rule 13 (お見送り)** — nơi duy nhất ngoài r32 dùng **45°**;
- **rule 08 (お出迎え)** và **rule 29 (お土産受取)** — dùng 30°;
- **rule 03 / 18 (受付)** — dùng 15°.

Ngược lại r23 và r26 **đã** trỏ về r32. Quan hệ đang một chiều.
**Đề xuất:** bổ sung ít nhất `rule 13 (お見送り — 45°)` và `rule 03 (名刺渡し — 15°)` vào d7. 🔵 mức thấp, không phải lỗi dạy sai.

### 🎯 CHỐT NHIỆM VỤ (1)

| Câu hỏi | Trả lời |
|---|---|
| 90° có tồn tại như một loại お辞儀 chuẩn không? | **KHÔNG.** 3 nguồn ngành đều phân 3 loại. 90° là **đầu sâu nhất của thang 最敬礼**, không có tên riêng. |
| Chỉ là hiện tượng 謝罪会見? | **Đúng.** Nguồn nói rõ 90° chỉ thấy ở "極めて重大な不祥事の謝罪会見", còn ở kinh doanh thường ngày thì "やや過剰に映る". |
| **Bỏ khỏi câu chốt hay bổ sung vào thân rule?** | **BỎ khỏi hệ phân loại (4→3), ở CẢ 6 chỗ + mục lục** — không phải chỉ câu chốt. Giữ 90° lại như **lời cảnh báo "không dùng"**, vì rule_35 đã tham chiếu tình huống Linh bow 90° là lỗi. |
| Thân rule có tự mâu thuẫn với câu chốt không? | **KHÔNG** (đính chính giả thiết trong `00_TIEN_DO.md` d49) — thân rule dạy đủ 4 mức ở d34/d41/d48. Rule nhất quán nội bộ nhưng **nhất quán SAI**. Phạm vi sửa rộng gấp 6 lần ước tính. |
| rule_13 (45°) có nhất quán với rule_32 không? | **CÓ, nhất quán.** Không cần sửa gì ở rule_13. |

---

## 2.2 — Nhiệm vụ (2): BẢNG QUY TẮC NGHI THỨC XUYÊN SÁCH

Quét toàn bộ 35 rule (strip ruby) cho từng trục quy tắc.

### Trục A — 上座 / 下座 (8 rule: r06, r09, r10, r11, r12, r20, r29, r31)

| Rule | Dạy gì | Nhất quán? |
|---|---|---|
| **r10** (rule gốc) | 上座 = xa cửa nhất, lưng dựa tường → khách/cấp trên. 下座 = gần cửa → chủ nhà. Cấp cao nhất bên khách ở **trung tâm 上座**. Nhìn từ kamiza, **phải > trái** | 🟢 chuẩn |
| r06 | "Ōgaki-Nakamura-Matsumoto ngồi 上座 (xa cửa)… CFO cấp cao nhất thường ngồi 上座 trung tâm" | ✅ khớp r10 |
| r09 | "上座 trong thang máy = góc xa cửa" (mở rộng sang thang máy) | ✅ khớp nguyên lý "xa lối ra vào" |
| r11 | Rót trà theo thứ tự 上座 → 下座 (Nakamura → Ōgaki → Matsumoto → Hương → Dũng → Tuấn) | ✅ khớp sơ đồ r10 |
| r12 | "Khách đã ngồi 上座" | ✅ |
| **r20** | Phía **đi thăm**: KHÔNG ngồi 上座, chủ động ngồi 下座, tuyên bố 「下座でお待ちいたします」 | ✅ **đúng mặt đối xứng** của r10 — r10 nói ở tư cách chủ nhà, r20 ở tư cách khách. Không mâu thuẫn |
| r29 | Đặt omiyage lên "phía 上座 của **bàn**" | ✅ dùng nghĩa mở rộng (phía trên của mặt bàn), r29 d44 giải thích rõ |
| **r31** (của tôi) | 11 người: CFO giữa 上座, cấp trên chủ nhà đối diện ở 下座 | ✅ khớp r10 d57 ("ghế đối xứng giữa hai bên") |

**Kết luận trục A: NHẤT QUÁN 8/8. Không có rule nào lệch trục.** Đây là điểm mạnh nhất của sách — khác hẳn ca sách 05/06.
Bổ sung: r10 d75 còn dạy đúng quy tắc **上座 trong taxi** (ghế sau bên phải tài = cao nhất, ghế phụ tài = 下座) và d76 (phòng có cửa sổ đẹp). Cả hai đều chuẩn.

### Trục B — Độ cúi chào (12 rule)

Xem bảng ở §2.1. **11/12 rule nhất quán**, chỉ **r32 lệch** ở chỗ nâng 90° thành loại chính thức.

### Trục C — Thứ tự trao danh thiếp — 🔴 **VẤN ĐỀ VẮT QUA NHIỀU RULE**

### 🔴 [V5-08] rule_05 dạy NGƯỢC chuẩn: "cấp dưới bên mình trao trước"

**File:** `nội_dung/phần_I/rule_05_順序/rule.md` — **ngoài phạm vi tôi (agent V1)**, nhưng vắt qua r03 / r05 / r31 / mục lục nên tôi báo theo mục 6.

**Nguyên văn d3:**
> Khi bên mình có nhiều người: **người cấp dưới trao trước, người cấp trên trao sau**.

**Nguyên văn d5:**
> 名刺交換は『**下位者から上位者へ**』の順番。**自社内では junior が先**、相手より格下なら自社全員が先に出す。

**Nguyên văn d30 (Hội thoại TỐT — tức sách coi đây là ĐÚNG):**
> 「リンさん、**本来は junior から先よ**。トゥアンさんの後でいいの。」

**Nguyên văn d42:**
> 「順番は **リン → ズン → トゥアン → 私（フオン）**」  (intern → BD → Lead → 副部長)

**Nguyên văn d57 (câu chốt):**
> 「名刺は『**自社junior先**・相手senior優先』のマトリクス順。」

**WebSearch xác minh — 3 nguồn, thống nhất NGƯỢC LẠI:**

| Nguồn | Nói gì |
|---|---|
| skypce.net (đã WebFetch đọc trọn) | 「自分たちが訪問者側で複数名いる場合は、**役職が高い順に差し出します**」・「複数名対複数名では、まず**上司同士**が名刺交換を完了してから…」 |
| rakuten-card みんなのマネ活 | 「複数人数で訪問した場合は、**役職が上の人から**名刺交換を行います。上司と部下が一緒に訪問する場合、**上司が先に**名刺交換する」 |
| printbahn / dipross | 「**役職の高い人から順に交換するのが大原則**。部長→課長→担当者の順」 |

→ Chuẩn Nhật là **上位者から** (cấp trên trước). Sách dạy **下位者から** — **ngược 180°**.

**Vế nào của rule_05 ĐÚNG:**
- "cấp thấp trao trước cấp cao" theo nghĩa **giữa hai công ty** (bên đi thăm / bên cần việc chìa trước) — **ĐÚNG**, khớp "訪問者側から名刺を差し出すのがマナー".
- "**mọi người trao với người cấp cao nhất bên kia trước**" (d43【2】: cả nhóm chào Nakamura trước) — **ĐÚNG**, khớp "相手方の役職が高い人から順番に".

→ Vậy rule_05 **đúng 2/3 trục, sai 1 trục**: trục "thứ tự trong nội bộ bên mình" bị đảo. Câu chốt d57 gói cả cái đúng lẫn cái sai vào một dòng.

**Mức nghiêm trọng: 🔴 A (dạy người học làm SAI VIỆC THẬT).** Học viên làm theo sẽ để intern chìa danh thiếp trước 副部長 trước mặt CFO Nhật — đúng thứ sách cảnh báo là "lộ không hiểu tôn ti trật tự", nhưng theo chiều ngược.

**Ảnh hưởng lan (vắt qua rule):**
- `meta/mục_lục.md` d42: brief rule 05 ghi "**Junior trao trước senior**" → cùng lỗi, phải sửa đồng bộ.
- `rule_03` d7 và `rule_04` d7 đều trỏ "rule 05 (thứ tự)" — nội dung r03/r04 tự nó không nêu thứ tự nên **không phải sửa**, nhưng phải kiểm lại sau khi r05 đổi.
- `rule_31` (của tôi) d39 xếp **thứ tự phát biểu** CFO → 部長 → CTO → 副部長 = **cấp cao trước** ✅ đúng chuẩn. `rule_35` d34 xếp **thứ tự trao omiyage** CFO → 部長 → PM → PMO = **cấp cao trước** ✅ đúng chuẩn. `rule_11` rót trà cũng cấp cao trước ✅.
- → **rule_05 là rule DUY NHẤT trong sách chạy ngược trục "cấp cao trước"**. 4 rule khác (r11, r31, r35, và r05 vế "khách senior ưu tiên") đều theo chiều đúng. **Đây chính xác là ca "một rule lệch trục với 5 rule khác" của bài học sách 05/06.**

**Đề xuất:** giao lại agent V1 / main Claude thẩm định. Hướng sửa: d3/d5/d30/d42/d57 đổi sang "cấp trên bên mình trao trước" (Hương → Tuấn → Dũng → Linh), giữ nguyên vế "bên đi thăm chìa trước" và "chào người cấp cao bên kia trước". Sửa cả `mục_lục.md` d42.

### Trục D — Xưng hô với khách / uchi-soto

Quét toàn sách: **0 ca** dùng chức danh đồng nghiệp khi nói với khách (đã sửa từ v1.1 — `ティエンファット社` self-ref: quét ra **0 kết quả**, fix này **ĐÃ ăn vào .md**). Nhân vật bên mình luôn xưng 弊社/当方/私. **Nhất quán.**
Lưu ý: nhãn vai `トゥアンリーダー` xuất hiện trong cột **Vai** của bảng (không phải trong lời thoại) — đó là nhãn kịch bản, **không phải lỗi uchi/soto**. Đừng sửa.

### Trục E — Đáp lễ / omiyage

r28 (trao) ↔ r29 (nhận) ↔ r33 (đáp lễ ngày khác) ↔ r35 (thứ tự trao): **nhất quán 4/4**. r29 "KHÔNG mở tại chỗ" và r33 "đáp lễ cách thời gian" bổ trợ nhau, không đá nhau.

---

## 2.3 — Nhiệm vụ (3): PHÂN LOẠI 11 CA LỆCH MỤC LỤC ↔ H1

Tôi đo độc lập (strip ruby, tách JP theo dấu ` / ` cuối cùng): **VN lệch 11/35, JP lệch 1/35** — **khớp chính xác** thước đo của main Claude.

⚠️ **Bẫy tôi suýt dính:** tách chuỗi bằng `split('/')` thô làm rule 10 / 11 / 15 / 22 báo lệch giả (vì tên VN của chúng **có sẵn dấu "/"**: "Vị trí ngồi (kamiza/shimoza)", "Pha trà / mời nước", "Khách đến sớm / muộn", "Đi quanh văn phòng / nhà máy"). Phải tách theo ` / ` **cuối cùng**. Ai kiểm lại xin lưu ý — nếu ra 15 ca là đã dính bẫy này.

### Bảng phân loại 11 ca

| # | Mục lục | H1 rule.md | Phân loại |
|---|---|---|---|
| 08 | Đón khách tại **lobby** | Đón khách tại **tiền sảnh** | 🟡 **LỖI THẬT** — mục lục chưa Việt hoá |
| 12 | Mở đầu **hội nghị offline** | Mở đầu **cuộc họp trực tiếp** | 🟡 **LỖI THẬT** — chưa Việt hoá |
| 14 | **After-care** (theo dõi) | **Chăm sóc sau khi tiếp** (theo dõi) | 🟡 **LỖI THẬT** — chưa Việt hoá |
| 16 | Chuẩn bị trước khi đi **onsite** | Chuẩn bị trước khi đi **công tác** | 🟡 **LỖI THẬT** — chưa Việt hoá |
| 17 | Đến **lobby** 5-10 phút trước | Đến **sảnh** 5-10 phút trước | 🟡 **LỖI THẬT** — chưa Việt hoá |
| 18 | **Check-in** tại lễ tân | **Đăng ký vào** tại lễ tân | 🟡 **LỖI THẬT** — chưa Việt hoá |
| 25 | Vai trò **host vs guest** | Vai trò **bên tiếp đón và khách** | 🟡 **LỖI THẬT** — chưa Việt hoá |
| 30 | **After-dinner thank-you mail** | **Thư cảm ơn sau bữa tối** | 🟡 **LỖI THẬT** — chưa Việt hoá |
| 32 | **Bow angle** theo cấp bậc | **Góc độ cúi chào** theo cấp bậc | 🟡 **LỖI THẬT** — chưa Việt hoá |
| 33 | Tránh **culture clash** VN-JP | Tránh **xung đột văn hoá** VN-JP | 🟡 **LỖI THẬT** — chưa Việt hoá |
| 34 | **Onsite Nhật lần đầu** — bộ đồ thiết yếu | **Chuyến công tác Nhật lần đầu** — bộ đồ thiết yếu | 🟡 **LỖI THẬT** — chưa Việt hoá |
| 34 (JP) | 初訪問 **Survival** | 初訪問 **Survival Kit** | 🔵 **RÚT GỌN** — mục lục cắt "Kit" cho vừa cột |

### 🟡 [V5-09] Kết luận phân loại

**11/11 ca VN đều là LỖI THẬT cùng một loại: mục lục là bản CHƯA VIỆT HOÁ, H1 là bản đã Việt hoá.**
**Không ca nào là "rút gọn có chủ ý"** ở phía VN — bằng chứng: mọi cặp đều **cùng độ dài, cùng cấu trúc**, chỉ khác ở chỗ mục lục giữ nguyên từ tiếng Anh (lobby, offline, after-care, onsite, check-in, host/guest, bow angle, culture clash, after-dinner thank-you mail). Đây là dấu vân tay của một đợt Việt hoá **chỉ chạy trên rule.md, quên mục_lục.md** — đúng mẫu mục 5.1.
Ca JP duy nhất (34) **là rút gọn**, mức 🔵, có thể bỏ qua.

**Đề xuất:** đồng bộ `meta/mục_lục.md` cột "Tên VN" theo H1 của 11 rule trên (mục lục theo H1, không phải ngược lại — H1 mới là bản đã qua Việt hoá).
**Đồng bộ kèm:** cùng lúc sửa d97 (bỏ 90° — xem V5-01) và d42 (thứ tự danh thiếp — xem V5-08).

---

## 2.4 — Nhiệm vụ (4): NHẤT QUÁN KHÁC

### 🟡 [V5-10] Tên sách tồn tại **2 phiên bản**

| File | Tên dùng |
|---|---|
| `meta/mục_lục.md` d1 | Hizashi Sách 07 — **Tiếp khách·Thăm·Danh thiếp / 来客・訪問・名刺交換** |
| `nội_dung/_front_matter.md` d1 | Hizashi — **Tiếp khách·Thăm·Danh thiếp / 来客・訪問・名刺交換** |
| `nội_dung/_back_matter.md` d16 | Hizashi — **Tiếp khách·Thăm·Danh thiếp / 来客・訪問・名刺交換** |
| `meta/STATUS.md` d1 | Hizashi Sách 07 — **Tiếp khách·Thăm·Danh thiếp / 来客・訪問・名刺交換** |
| `_review/00_TIEN_DO.md` d1 | Sách 07 — **Danh thiếp & Nghi thức tiếp khách / 名刺・訪問** |

**Kết luận:** **4 file sản phẩm (front/back/mục lục/STATUS) KHỚP 100% với nhau** — đây là tin tốt, không phải lỗi nội dung.
Bản khác duy nhất nằm ở `_review/00_TIEN_DO.md` (file nội bộ do main Claude tạo) và tên thư mục `07_visit_card`. **Không ảnh hưởng học viên.**
🔵 **Đề xuất:** chỉ cần thống nhất tiêu đề trong `00_TIEN_DO.md` cho khỏi nhầm khi tra cứu về sau. **Không sửa file sản phẩm.**

### ✅ Front matter — KHÔNG hứa thứ sách không có

Rà từng lời hứa ở `_front_matter.md`:

| Lời hứa (dòng) | Sách có không? |
|---|---|
| d6 "35 quy tắc" | ✅ `find -name rule.md` = **35** |
| d7 "góc độ cúi chào" | ✅ r32 + 12 rule dùng |
| d7 "thứ tự chỗ ngồi (上座/下座)" | ✅ r10 + 8 rule |
| d7 "quà biếu (omiyage)" | ✅ r28, r29 |
| d7 "**bốn điều kiện của tấm danh thiếp**" | 🔵 **diễn đạt mơ hồ** — xem dưới |
| d13-19 bảng 5 phần 7/8/8/7/5 | ✅ khớp thực tế 7/8/8/7/5 |
| d21 "Phụ lục A/B/C/D" | ✅ có `nội_dung/phụ_lục/` (ngoài phạm vi, không kiểm nội dung) |
| d25-27 cast (Ōgaki, Matsumoto, Nakamura CFO, Tanaka PMO, Dũng, Tuấn, Linh) | ✅ đủ mặt trong 35 rule |

### 🔵 [V5-11] "bốn điều kiện của tấm danh thiếp" — không có mục nào tên vậy

**File:** `nội_dung/_front_matter.md` **dòng 7**.
> …quà biếu (omiyage), **bốn điều kiện của tấm danh thiếp**.

Trong sách **không có** khái niệm "4 điều kiện của danh thiếp". Thứ gần nhất là **rule_03** dạy 4 yếu tố khi trao (2 tay · mặt JP hướng khách · xưng đủ 会社名・部署・役職・氏名 · cúi 15°) và **rule_18** dạy "4 yếu tố tự xưng ở lễ tân". Người đọc mục lục sẽ đi tìm một mục tên "4 điều kiện" và không thấy.
**Đề xuất:** đổi thành *"bốn yếu tố khi trao danh thiếp (rule 03)"* hoặc *"quy trình trao danh thiếp 3 bước"* cho khớp `mục_lục.md` d5 (đang ghi "danh thiếp 3-bước"). ⚠️ Lưu ý **mục_lục.md d5 nói "3-bước" còn front matter nói "4 điều kiện"** — hai file đang mô tả cùng một thứ bằng hai con số. Mức 🔵 vì không dạy sai, chỉ mô tả lệch.

### ✅ Cross-reference — 35/35 mô tả ĐÚNG rule đích

Tôi dựng bảng H1 của cả 35 rule rồi đối chiếu từng dòng `**Liên quan:**`. **Không có ca nào mô tả sai rule đích.**

⚠️ **Đã tránh bẫy mục 1.6 (cross-ref LIÊN SÁCH):** 4 dòng dưới đây trỏ **sang sách khác**, không phải rule cùng sách — **đừng báo là sai**:

| Rule | Nguyên văn | Ghi chú |
|---|---|---|
| r12 d7 | `sách 03 rule_09 (mở đầu trực tuyến)` | ✅ LIÊN SÁCH — đúng, r12 là bản offline của cùng chủ đề |
| r14 d7 | `sách 04 rule HouRenSou` | ✅ LIÊN SÁCH |
| r15 d7 | `sách 03 rule_06 (5分前到着)` | ✅ LIÊN SÁCH |
| r17 d7 | `sách 03 rule_06 (5分前到着 cross-ref)` | ✅ LIÊN SÁCH — khớp `mục_lục.md` d120 |

`mục_lục.md` d119-121 khai 3 cross-ref liên sách (sách 03 r11↔r03, sách 03 r06↔r17, sách 06 r36↔r24). Ca thứ 2 khớp r17 d7 ✅. Ca 1 và 3: r03 d7 và r24 d7 **không nhắc lại** liên kết liên sách. 🔵 mức thấp, chỉ là mục lục hứa nhiều hơn thân rule — không dạy sai.

### `_thuat_ngu.md` — ✅ 22 mục, KHÔNG có định nghĩa nào SAI

Kiểm từng mục: API, ATM, BCC, BD, BJT, CC, CFO, CRM, CTO, DB, IC, IP, JR, NDA, PDF, PM, PMO, PR, RFP, SNS, TEL, VND — **tất cả đúng**.
Mục hay được mở rộng đúng bối cảnh: BCC ghi "đại kỵ trong email cảm ơn kinh doanh Nhật" ✅ (khớp r30), NDA ghi "kể cả dạng ngầm hiểu khi tham quan nhà máy" ✅ (khớp r22), SNS ghi "cách gọi phổ biến ở Nhật" ✅ (đúng — SNS là wasei phổ biến).

### 🔵 [V5-12] `_thuat_ngu.md` thiếu vài viết tắt sách có dùng

Các từ xuất hiện trong nội dung nhưng **chưa có** trong bảng: **eSIM** (r34 d34/d40/d103), **Suica / Pasmo** (r34 — có mục "IC" nhưng không có mục riêng), **JLPT** (không dùng — bỏ qua), **NG** (r34 d23 — viết tắt Nhật 「ノーグッド」, người Việt mới học dễ không hiểu).
**Đề xuất:** thêm **eSIM** và **NG**. Mức 🔵, tuỳ chọn.

### 🟡 [V5-13] Tiếng Anh lọt vào văn tiếng Việt (không phải trong ô Nhật)

Theo `feedback_vietnamese_labels` (label/text UI tiếng Việt có dấu). Trong **phần V**, phần lớn tiếng Anh nằm **trong lời thoại tiếng Nhật** — đây là **CHỦ Ý** (mô phỏng tiếng Nhật IT thật: flow table, zone, pour, seat layout). **Không báo là lỗi** (mục 3, bài học sách 09).

Chỉ **4 chỗ** tiếng Anh nằm trong **văn tiếng Việt / tiêu đề**:

| File:dòng | Nguyên văn | Đề xuất |
|---|---|---|
| r35 d1 | `Tự đánh giá **ceremony** etiquette` (H1) | "Tự đánh giá nghi thức sau sự kiện" |
| r34 d92 | `[ ] 6 phần **brand** VN cao cấp (gói riêng)` | "6 phần **thương hiệu** VN cao cấp" |
| r35 d58 | `**Update** cả Notion + CRM` (dịch câu chốt) | "**Cập nhật** cả Notion + CRM" |
| r31 d13 | `Trong **onsite** Tokyo, buổi lễ tổng kết…` | "Trong **chuyến công tác** Tokyo" (r34/r35 đã dịch là "công tác") |

Mức 🟡 thấp. Notion/CRM/Slack là tên sản phẩm — **giữ nguyên**, không dịch.

---

## 2.5 — KIỂM CHỨNG FIX ĐỢT TRƯỚC (mục 5) — bảng bắt buộc

`meta/STATUS.md` changelog v1.0→v1.1 khai 8 fix. Tôi kiểm từng cái trên `.md` (đã strip ruby):

| # | STATUS khai | Kiểm chứng thực tế | Trạng thái |
|---|---|---|---|
| 1 | `ティエンファット社` → `ティエンファット` (8 rules) | grep `ティエンファット社` = **0 kết quả** toàn sách | ✅ **ĐÃ FIX** |
| 2 | `お通りすぎいたしましょう` → `通り過ぎましょう` (rule 22, 35) | r35 d40 JA ✅ đã sửa **nhưng VN vẫn "Otoorisugi itashimashou"**; **r22 d46 CHƯA SỬA GÌ** | 🔴 **FIX NỬA VỜI** (xem V5-05) |
| 3 | r09 `ご到着でございます` → `3階に到着いたしました` | ngoài phạm vi tôi (V2 lo) — không kiểm | — |
| 4 | r18 `お会社名` → `御社名` | ngoài phạm vi (V3) | — |
| 5 | r17 `ごじゅっぷんまえ` → `5〜10ぷんまえ` | ngoài phạm vi (V3) | — |
| 6 | r15 typo `NghĮa` → `Nghĩa` | ngoài phạm vi (V2) | — |
| 7 | r08 `Câu chốト` → `Câu chốt` | grep `Câu chốト` = **0 kết quả** toàn sách | ✅ **ĐÃ FIX** |
| 8 | r22 `自意ドア` → `勝手にドア` | grep `自意ドア` = **0**; `勝手にドア` có ở r22 d5, d62 | ✅ **ĐÃ FIX** |

**Kết luận:** 3/3 fix tôi kiểm được toàn sách đã ăn vào `.md`. **Duy nhất fix #2 chạy nửa vời** — và nửa vời theo **cả hai kiểu** của mục 5 cùng lúc (kiểu 2: vá JA quên VN ở r35; kiểu bỏ sót file: r22 không đụng tới). Sách 07 nhìn chung **sạch hơn hẳn** các sách trước, đúng như main Claude đo.

---

# ⛔ DANH SÁCH CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| # | Chỗ | Vì sao CẤM SỬA |
|---|---|---|
| 1 | **rule_32 d35/d37/d39 + 【1】【2】【3】** — 15° 会釈 / 30° 敬礼 / 45° 最敬礼 và mô tả tình huống | **Đúng chuẩn 100%**, xác minh 3 nguồn. Khi sửa vụ 90° tuyệt đối đừng đụng 3 mức này |
| 2 | **rule_13 — 45° tiễn khách** | **Đúng**, khớp định nghĩa 最敬礼. Có nguồn (inthehotel) nói thẳng お見送り đến khi khuất bóng dùng 45°. Đừng "đồng bộ" xuống 30° |
| 3 | **rule_13 d41 — 30° trong phòng rồi 45° lúc xe đi** | **Hai thời điểm khác nhau**, không phải mâu thuẫn (bẫy giống 5月末/7月末 mục 3) |
| 4 | **rule_35 d36 — "Linh bow 90° là LỖI, 45°が正解"** | **Đây là chỗ sách dạy chuẩn nhất về độ cúi.** Khi sửa rule_32 đừng lấy r32 làm gốc mà "sửa ngược" r35 |
| 5 | **rule_05 vế "bên đi thăm chìa danh thiếp trước"** và **vế "chào người cấp cao bên kia trước" (d43【2】)** | **ĐÚNG chuẩn.** Chỉ vế "junior bên mình trước" mới sai — đừng sửa nhầm cả cụm |
| 6 | **rule_31, rule_35 — thứ tự CFO → 部長 → PM → PMO** (phát biểu, omiyage) | **Đúng chuẩn "cấp cao trước".** Đừng "đồng bộ" theo rule_05 hiện hành (rule_05 mới là cái sai) |
| 7 | **rule_34 d105 "Phích chuyển A type (Nhật 100V)"** | VN dùng cả Type A **và Type C chân tròn**; điện áp VN 220V ≠ Nhật 100V. Ghi vậy là **đúng và hữu ích** |
| 8 | **rule_34 d78 "Số dư khuyên: 5,000 yên"** | **Không sai** — là khuyến nghị, khớp quy định ở rule_35 d38. Chỉ d40 (cọc 2.000) mới sai |
| 9 | **Tiếng Anh trong ô tiếng Nhật phần V** (flow table, zone, pour, seat layout, ceremony, bow, glass) | **CHỦ Ý** — mô phỏng tiếng Nhật công ty IT thật. Bài học sách 09 (agent báo 91, thực tế 11) |
| 10 | **Nhãn vai `トゥアンリーダー` trong cột "Vai"** | Là **nhãn kịch bản**, không phải lời thoại → **không phải lỗi uchi/soto** |
| 11 | **Khối "Hội thoại XẤU" của cả 5 rule** | Cố tình chứa lỗi (Linh bow 15° với CFO, Dũng tự rót, Hải định mua omiyage ở Narita). **Không phải lỗi của sách** |
| 12 | **rule_33 toàn bộ** và **rule_31 toàn bộ** | Rà đủ A→F: **SẠCH**. Không có gì cần sửa |
| 13 | **`_thuat_ngu.md` 22 mục hiện có** | Tất cả định nghĩa **đúng**. Chỉ thiếu (eSIM, NG), không sai |
| 14 | **Tên sách trong front/back/mục lục/STATUS** | **Khớp 100% với nhau.** Bản lệch duy nhất nằm ở `00_TIEN_DO.md` (file nội bộ) |
| 15 | **`会社` đọc `がいしゃ` ở rule_04 d39** | Trong `株式会社` = かぶしきがいしゃ — **rendaku đúng**, không phải lỗi ruby |
| 16 | **`御礼` おんれい (r14) vs おれい (r29)** | **Cả hai đều đúng**; おんれい trang trọng hơn, hợp ngữ cảnh tiêu đề mail |
| 17 | **rule_05 d79 `下位者` = かいしゃ** | 下位(かい)+者(しゃ) — **đọc đúng**, đừng sửa |

---

## Phụ lục — Bẫy kỹ thuật tôi đã gặp trong đợt này (ghi lại cho đợt sau)

1. **Tách tên rule bằng `split('/')` thô** → báo lệch giả 4 ca (rule 10/11/15/22 có dấu `/` trong chính tên VN). Phải tách theo ` / ` **cuối cùng**. Nếu ai đo ra 15 ca lệch mục lục thay vì 11 → đã dính bẫy này.
2. **Quét ruby đa cách đọc ra 25 "bất thường"**, nhưng **23 là hợp lệ** (cùng kanji trong compound khác nhau: 上=あ/うえ, 後=あと/ご/のち/うし, 中=じゅう/ちゅう/なか…). Chỉ **1 ca thật** (初対面) + 1 ca rendaku hợp lệ (会社→がいしゃ). Đừng báo cả 25.
3. **Giả thiết trong `00_TIEN_DO.md` d49 sai** ("thân rule chỉ dạy 3 mức"). Thân rule dạy đủ 4. Bài học: **đọc trọn rule trước khi tin ghi chú tóm tắt**, kể cả ghi chú của main Claude.

---

*V5 — phần_V (rule_31→35) + nhất quán toàn sách. Rà theo `.claude/rules/book-review.md` mục 4 A→F. WebSearch: 6 truy vấn + 2 WebFetch cho mọi khẳng định nghi thức/số liệu. **Không sửa bất kỳ file nội dung nào.***
