# P4 — Báo cáo rà soát phần_IV (rule 22-28)

> Sách 05 "Thuyết trình / プレゼンテーション" · Phần IV — Q&A + Closing · 7 rule
> Áp dụng `.claude/rules/book-review.md` trục A→F.
> **CHỈ BÁO CÁO — không sửa file nội dung.**

---

## Bảng tổng kết

| Rule | 🔴 nặng | 🟡 vừa | 🔵 nhẹ | Ghi chú |
|---|---|---|---|---|
| 22 — Q&A導入 | 0 | 0 | 1 | **Sạch.** Chỉ 1 mục từ vựng thừa |
| 23 — LASR | 0 | 0 | 1 | **Sạch.** Keigo chuẩn, LASR nhất quán |
| 24 — 持ち帰り | 1 | 1 | 0 | Mâu thuẫn 3営業日 vs thứ Sáu |
| 25 — 敵対的質問 | 3 | 1 | 0 | **Nặng nhất phần** — số học sai, dạy lập luận tự vỡ |
| 26 — クロージングCTA | 0 | 1 | 0 | Lịch 5/8 sai thứ |
| 27 — 謝辞スライド | 0 | 0 | 2 | Gần sạch |
| 28 — 事後フォロー | 1 | 2 | 0 | Fix v1.1 chạy nửa vời + lịch Golden Week |
| **Tổng** | **5** | **6** | **4** | |

**Đánh giá chung:** phần IV viết tốt về mặt sư phạm — LASR (r23) và 持ち帰り (r24) là hai rule chắc tay,
keigo sạch hơn mặt bằng. **Toàn bộ rủi ro tập trung ở rule 25** và ở **tầng số liệu/lịch xuyên rule**,
không phải ở tầng tiếng Nhật.

---

## 🔴 NẶNG

### [1] rule_25 L41 — Con số "-8%" SAI so với chính dữ liệu của sách (🔴 A + 🔴 B)

**Nguyên văn JA (L41):**
> 「①Phase 3 はスコープが Phase 2 の 1.6倍 (機能数 12→19)、②セキュリティ要件 ISO27001 対応で 工数+15%、③24/7 サポート初年度込み。**スコープ単価で見ますと Phase 2 比 -8%** でございます。」

**Nguyên văn VN (L41):**
> *① Phase 3 phạm vi gấp 1.6 lần Phase 2 (12 chức năng → 19), ② yêu cầu bảo mật ISO27001 = effort +15%, ③ bao gồm support 24/7 năm đầu. **Tính theo đơn giá phạm vi thì giảm 8% so với Phase 2** ạ.*

**Vấn đề — tự kiểm bằng chính số liệu trong câu:**

| Phép tính | Kết quả |
|---|---|
| Đơn giá Phase 2 = 800万 ÷ 12 chức năng | 66,67万/chức năng |
| Đơn giá Phase 3 = 1200万 ÷ 19 chức năng | 63,16万/chức năng |
| Chênh lệch thật | **−5,26%** |
| Nếu lấy "1.6倍" như sách làm tròn: 1.5 ÷ 1.6 − 1 | **−6,25%** |

**Không cách nào ra −8%.** Đây không phải lỗi làm tròn — lệch 2,7 điểm phần trăm.

Nghiêm trọng vì **−8% chính là con số Dũng dùng để thắng lập luận**, và 大垣 gật đầu ngay
sau khi nghe nó (L43 「なるほど、スコープ単価で -8% か」). Sách đang dạy học viên chốt một
cuộc chất vấn giá bằng **con số không dựng lại được từ dữ liệu mình vừa đưa**. Khách Nhật
kỹ tính (đúng kiểu 大垣 vừa thể hiện ở rule_24) sẽ bấm máy tính tại chỗ → người trình bày
mất uy tín nặng hơn cả việc bị chê đắt ban đầu.

**Đề xuất sửa (chọn 1, phải đồng bộ 4 chỗ):**
- **Cách A (ít đụng nhất):** đổi `-8%` → `-5%` ở cả 4 nơi: rule_25 L41, L43; rule_26 L40; rule_27 L65; rule_28 L74.
- **Cách B:** giữ `-8%`, đổi số chức năng 19 → **20** (800/12 = 66,67 → 1200/20 = 60,0 = −10%; vẫn không khớp)
  hoặc đổi giá Phase 3 → **1.150万** (1150/19 = 60,5 = −9,2%). Cách B kéo theo sửa rule_26/27/28/31 → **không khuyến nghị**.

→ **Khuyến nghị cách A.** Chỉ đổi 1 con số, giữ nguyên toàn bộ kịch bản.

---

### [2] rule_25 L42 — Phương án lùi 950万 PHÁ HỎNG chính lập luận vừa đưa (🔴 A + 🔴 B)

**Nguyên văn JA (L42):**
> 「**もしスコープを Phase 2 と同等に絞れば** 950万まで圧縮可能です。**いずれの方向性をご希望でしょうか**【3】？」

**Nguyên văn VN (L42):**
> *Nếu cắt phạm vi về tương đương Phase 2, có thể nén xuống 9,5 triệu yên ạ. Quý vị muốn theo hướng nào ạ?*

**Vấn đề:** Dũng vừa lập luận "đơn giá của tôi RẺ hơn Phase 2". Rồi ngay câu sau lại chào
**cùng phạm vi Phase 2 với giá 950万**, trong khi Phase 2 chỉ có **800万**.

→ Cùng phạm vi, **+18,75%**. Đơn giá 950/12 = 79,17万 so với 800/12 = 66,67万 → **đắt hơn 18,75%/chức năng**.

Nghĩa là: nếu 大垣 chọn phương án lùi, ông ta trả **đắt hơn** cho **đúng thứ đã mua năm ngoái** —
điều này chứng minh ngược lại luận điểm "-8%" mà Dũng vừa dùng. Một 営業部長 sẽ bắt ngay:
「同じスコープなのに 800万 が 950万 になるんですか？」 và toàn bộ phần bắc cầu tinh tế phía trước
đổ sập.

Đây là lỗi **hạng A**: sách dạy học viên tự đặt bẫy cho chính mình trong tình huống đàm phán thật.

**Đề xuất sửa:** hạ 950万 → **800万** (giữ nguyên giá cũ, thông điệp: "cùng phạm vi thì cùng giá — phần tăng
đúng bằng phần thêm"), hoặc nói rõ lý do chênh nếu muốn giữ 950万, ví dụ:
> 「Phase 2 と同等スコープであれば 950万でございます。**差額の150万は ISO27001 対応分**で、
> こちらはスコープに関わらず必須となります。」

Cách sau còn dạy thêm được kỹ năng "tách chi phí sàn khỏi chi phí theo phạm vi" — tốt hơn về sư phạm.

---

### [3] rule_25 L3 + L5 — Câu bắc cầu 「ご懸念の点を共有していただきありがとうございます」 sai sắc thái (🔴 C)

**Nguyên văn JA (L5):**
> 敵対的質問は defensive 禁止。Bridge phrase で中和 → 懸念点に reframe → 回答。「ご指摘もっとも」「**ご懸念共有ありがとうございます**」が王道。

**Nguyên văn VN (L3):**
> Câu bắc cầu "ご指摘の点はもっともでございます" hay "**ご懸念の点を共有していただきありがとうございます**" — trung hoà cảm xúc trước khi trả lời nội dung.

**Vấn đề:** 「共有していただき」 là **dịch ngược từ tiếng Anh "thank you for sharing your concern"**.
Trong tiếng Nhật thương mại, 共有 dùng cho **thông tin/tài liệu** được chia sẻ tới nhiều người
(資料をご共有いただき), **không dùng cho cảm xúc hay mối quan ngại của người đối diện**. Nghe rất
gợn — kiểu người Nhật gọi là 翻訳調 (giọng dịch).

Ngoài ra câu này **không hề xuất hiện trong hội thoại** (L39 chỉ dùng 「ご指摘の点、もっともでございます」).
Sách quảng cáo 2 câu bắc cầu ở luận điểm + câu chốt nhưng chỉ minh hoạ 1 → học viên học câu thứ hai
mà không thấy nó vận hành ở đâu.

**Đề xuất sửa** — thay bằng câu bắc cầu bản địa thật sự:
- 「**ご懸念はごもっともでございます**」
- 「**貴重なご指摘をいただき、ありがとうございます**」
- 「**率直なご意見をいただき、ありがとうございます**」 ← hợp nhất với ngữ cảnh chất vấn thẳng của 大垣

Sửa đồng bộ **cả L3 (VN), L5 (JA) và L54 (câu chốt)**.

---

### [4] rule_24 L39-L40 — Hứa "thứ Sáu" nhưng xin "3 ngày làm việc" (🔴 B)

**Nguyên văn JA (L39):** 「…**今週金曜 17時までに** メールで詳細回答させていただきます。」
**Nguyên văn JA (L40):** 「**お時間 3営業日いただいて** よろしいでしょうか？」【3】
**Nguyên văn VN (L39):** *…phản hồi chi tiết qua email **trước 17h thứ Sáu tuần này** ạ.*
**Nguyên văn VN (L40):** *Cho em xin **3 ngày làm việc** được không ạ?*

**Vấn đề:** Theo rule_28 L13, buổi thuyết trình kết thúc **16:00 thứ Năm**. Từ thứ Năm đến
**thứ Sáu = 1 ngày làm việc**, không phải 3. Hai câu liền nhau trong cùng một lượt thoại tự
mâu thuẫn — đúng dạng lỗi B "trong cùng 3 dòng" mà rule mục 4B cảnh báo.

Với học viên đang học chính xác cái kỹ năng "cam kết hạn chót cụ thể", để hai mốc đá nhau
là phản tác dụng trực tiếp.

**Đề xuất sửa:** bỏ 「3営業日」 → 「**明日中**」/「**1営業日**」, hoặc giữ 3営業日 và dời hạn thành
「**来週火曜 17時までに**」. Nếu dời thì phải sửa dây chuyền rule_26 L42 (①今週金曜まで),
rule_28 L40, L78, L88 — **xem mục [8]**.

---

### [5] rule_28 L80 — Fix v1.1 「サインインオフ → サインオフ」 CHƯA ăn vào file (🔴 F / fix nửa vời)

**STATUS.md L38 khai:** `rule_26: サインインオフ → サインオフ`

**Thực tế kiểm bằng script strip ruby:**

| File | Dòng | Chuỗi | Trạng thái |
|---|---|---|---|
| rule_26 | L42 | `契約書サインオフ` | ✅ ĐÃ FIX |
| rule_26 | L81 (vocab) | `サインオフ` | ✅ ĐÃ FIX |
| **rule_28** | **L80** | **`契約書サインインオフ`** | ❌ **CHƯA FIX** |

**Nguyên văn rule_28 L80:**
> ③ 5/15 まで: 契約書**サインインオフ** (両社法務経由)

`サインインオフ` không tồn tại trong tiếng Nhật — là lỗi ghép `サインイン` (sign in) + `サインオフ` (sign off).
Đúng dạng "fix nửa vời" rule mục 5: sửa rule_26 nhưng bỏ sót bản sao trong mẫu email rule_28.

**Đề xuất sửa:** rule_28 L80 `サインインオフ` → `サインオフ`.

⚠️ Lưu ý cho main Claude: đây là bằng chứng STATUS.md khai vượt thực tế → nên rà lại **toàn bộ 7 mục
changelog v1.1**, không chỉ mục này.

---

## 🟡 VỪA

### [6] rule_26 L42 + rule_28 L79 — 5/8 KHÔNG phải thứ Tư (🟡 F)

**Nguyên văn rule_26 L42:** 「②**5/8 (来週水曜)** にスコープ最終確認会議 (60分・対面)」
**Nguyên văn rule_28 L79:** `② 5/8 (来週水) 14時: スコープ最終確認会議 (60分・御社会議室)`

**Vấn đề:** rule_28 L78 chốt `5/2 (今週金)` → **5/2 = thứ Sáu** → **5/1 = thứ Năm** (khớp rule_28 L13
"kết thúc 16:00 thứ Năm" ✅). Nhưng nếu 5/1 là thứ Năm thì:

| Ngày | Thứ |
|---|---|
| 5/1 | Thứ Năm (ngày pitch) ✅ |
| 5/2 | Thứ Sáu ✅ |
| 5/7 | **Thứ Tư** |
| 5/8 | **Thứ Năm** ❌ (sách ghi 水曜/水) |
| 5/15 | Thứ Năm ✅ (khớp 「5/15 まで」) |

**Đề xuất sửa:** đổi `5/8 (来週水曜)` → `5/8 (来週木曜)` ở **cả 3 nơi**: rule_26 L42, L43 (「5月8日 14時から」
không ghi thứ, không cần sửa), rule_28 L79. Hoặc đổi ngày `5/8` → `5/7` nếu muốn giữ thứ Tư —
nhưng khi đó phải sửa cả rule_26 L44 (大垣 「5/8 で進めましょう」).

→ **Khuyến nghị đổi 水 → 木**, ít dây chuyền hơn.

---

### [7] rule_28 L78-L79 — Lịch rơi trúng Golden Week (🟡 D)

**Nguyên văn:**
> ① **5/2 (今週金) 17時まで**: SOAP→REST 統合詳細回答メール
> ② **5/8 (来週水) 14時**: スコープ最終確認会議

**Vấn đề (đã WebSearch xác minh):** Ngày lễ quốc gia Nhật đầu tháng 5 cố định:
**4/29 昭和の日 · 5/3 憲法記念日 · 5/4 みどりの日 · 5/5 こどもの日**, cộng 振替休日 khi trùng Chủ nhật —
tức **Golden Week**.

Trong kịch bản (5/1 = thứ Năm), 5/3-5/5 rơi vào Bảy/CN/thứ Hai → tuần lễ 5/4-5/6 gần như
đóng cửa hoàn toàn ở Nhật. Một cuốn sách dạy đàm phán với khách Nhật mà **đặt hạn chót 17h
ngày 5/2** — đúng ngày các công ty Nhật vắng người nhất (rất nhiều người xin nghỉ nối GW —
nguồn: Rakuten Travel / MATCHA, GW 2026 = 4/29→5/6) — là chi tiết nghiệp vụ thiếu thực tế.

Không sai *sự thật* (sách không khẳng định gì về GW), nhưng **phản cảm về nghiệp vụ**: học viên
người Việt vốn hay quên lịch lễ Nhật, sách nên là chỗ dạy họ nhớ chứ không phải chỗ làm mẫu ngược.

**Đề xuất sửa:** dời toàn bộ kịch bản sang tháng khác (vd tháng 6: 6/4 thứ Năm pitch, 6/5 thứ Sáu,
6/11 thứ Năm họp, 6/18 sign-off) → tránh GW và **giải luôn lỗi [6]**. Hoặc giữ nguyên và
**thêm 1 dòng ghi chú** dạy học viên: 「GW前後は先方が不在がちなので、期限設定時は必ず祝日カレンダーを確認」
— cách này biến lỗi thành điểm dạy, khuyến nghị hơn.

---

### [8] Xuyên rule 24/26/28 — Ba mốc hạn chót SOAP không đồng nhất cách ghi (🟡 F)

| Nơi | Cách ghi |
|---|---|
| rule_24 L39 | 「今週金曜 17時までに」 (không ngày) |
| rule_26 L42 | 「今週金曜まで」 (không giờ, không ngày) |
| rule_28 L40 | 「期限金曜17時」 |
| rule_28 L78 | 「5/2 (今週金) 17時まで」 (đủ nhất) |
| rule_28 L88 | 「5/2 17時 までに」 |

Cùng một cam kết nhưng 5 cách viết. rule_26 L42 **rụng mất giờ** — trong khi chính rule_26 dạy
"CTA = hành động + người phụ trách + **hạn chót**". Rule tự vi phạm tiêu chuẩn nó vừa đặt ra.

**Đề xuất sửa:** thống nhất `5/2 (金) 17時まで` ở cả 5 chỗ; tối thiểu bổ sung giờ cho rule_26 L42.

---

### [9] rule_25 L13 — Bối cảnh mô tả 大垣 "nghi ngờ năng lực" nhưng thoại chỉ chất vấn giá (🟡 B nhẹ)

**Nguyên văn L3:** "Câu công kích (**chất vấn giá / nghi ngờ năng lực**)"

Luận điểm hứa xử lý 2 loại câu công kích, nhưng cả hội thoại XẤU lẫn TỐT **chỉ minh hoạ loại giá**.
Loại "nghi ngờ năng lực" (vd 「ベトナムの会社で本当に大丈夫ですか？」) — vốn là câu học viên người Việt
hay gặp nhất và đau nhất — **không có mẫu câu nào**.

Đáng chú ý: câu của 大垣 「ベトナム会社で東京開発の値段ですか？」 **thực chất CÓ chứa** hàm ý coi nhẹ
năng lực/xuất xứ, nhưng Dũng chỉ reframe sang giá và **bỏ qua hoàn toàn vế đó**. Về mặt dạy học,
đây là chỗ đáng để chỉ rõ: "phần công kích xuất xứ — cố ý không đối đáp, chỉ trả lời bằng số liệu"
là một lựa chọn chiến thuật, không phải sơ suất.

**Đề xuất sửa:** thêm 1 gạch đầu dòng vào 📝 Ghi chú:
> 【4】 Câu của 大垣 có 2 tầng: giá + hàm ý coi nhẹ năng lực công ty Việt. **Cố ý chỉ đáp tầng giá bằng số liệu**,
> không đối đáp tầng cảm xúc → tầng kia tự tan khi số liệu đứng vững. Đáp lại trực diện ("ベトナムでも品質は…")
> = rơi vào thế phòng thủ.

Đây là bổ sung nội dung → cần chủ nhà duyệt (rule mục 8, vòng 5).

---

## 🔵 NHẸ

### [10] rule_22 L75 — Từ vựng 承る không xuất hiện trong rule
Bảng từ vựng liệt kê `承る / うけたまわる / (Khiêm) tiếp nhận, lắng nghe` nhưng **không có trong
hội thoại, câu chốt hay phần Tránh** (đã kiểm bằng strip ruby). Học viên tra ngược không thấy ngữ cảnh.
→ Bỏ, hoặc thêm vào mẫu câu (vd 「ご意見、承りました」 làm câu đáp sau khi nghe câu hỏi).

### [11] rule_23 L79 — Từ vựng 傾聴 chỉ có trong khối JA của luận điểm
`傾聴` xuất hiện ở L5 (「L=傾聴」) nhưng không có trong hội thoại. Nhẹ hơn [10] vì có ít nhất 1 chỗ dùng.
→ Chấp nhận được, ghi để main Claude biết.

### [12] rule_27 L25 — "mottainai" viết romaji giữa câu thoại Nhật
**Nguyên văn:** 「**情報密度ゼロ**で5分は **mottainai**。」
Nhân vật Nhật (Tuấn — thực ra là người Việt, trưởng nhóm kỹ thuật) nói tiếng Nhật mà chèn romaji
`mottainai` thay vì 「もったいない」. Trong vế JA nên dùng kana. Vế VN đã gloss đúng ("mottainai (lãng phí)").
→ Sửa `mottainai` → `もったいない` ở vế JA; giữ nguyên gloss ở vế VN.

### [13] rule_27 L74 — Trộn Nhật-Việt trong cùng cụm
**Nguyên văn:** `- [QR コード] — kích thước 4cm², dẫn về 本日のbộ slide PDF`
Cụm `本日のbộ slide PDF` dính liền JA + VN không có khoảng trắng, đọc rất gợn.
→ Sửa thành `dẫn về bộ slide PDF hôm nay`.

---

## 📋 Kiểm chứng fix đợt trước (rule mục 5) — phạm vi phần IV

STATUS.md changelog v1.1 có 3 mục chạm phần IV:

| Mục changelog | File | Trạng thái | Bằng chứng |
|---|---|---|---|
| `rule_28: ティエンファット社 → 弊社 (signature + body)` | rule_28 | ✅ **ĐÃ FIX** | L68 `弊社営業部のズンでございます` ✅ · L65/78/88 dùng `弊社` ✅. Signature L95 giữ `ティエンファット 営業部` — **đúng**, vì trong chữ ký thì tên công ty là hợp lệ |
| `rule_28: お時間を頂戴し → お時間を頂き` | rule_28 | ⚠️ **NỬA VỜI** | rule_28 L70 `お時間を頂き` ✅ ĐÃ SỬA. Nhưng **rule_26 L45 vẫn là `お時間頂戴し`** — cùng cụm, cùng phần, không được sửa. Xem ghi chú dưới |
| `rule_26: サインインオフ → サインオフ` | rule_26 / rule_28 | ❌ **NỬA VỜI** | Xem mục [5] — rule_26 fix rồi, rule_28 L80 sót |
| `rule_23: お答えになっておりますでしょうか → お答えできておりますでしょうか` | rule_23 | ✅ **ĐÃ FIX** | L42 + L49 + L55 đều là `お答えできておりますでしょうか` ✅ đồng bộ cả 3 nơi |

**Ghi chú về `お時間頂戴し` (rule_26 L45):** đây **KHÔNG phải lỗi** — 「お時間を頂戴し」 là kính ngữ
hợp lệ, thậm chí trang trọng hơn 「頂き」. Changelog sửa ở rule_28 là lựa chọn văn phong (tránh lặp
khiêm nhường ngữ trong email), không phải sửa lỗi sai. **Không cần đồng bộ hoá rule_26 theo.**
→ Đưa vào danh sách CẤM SỬA.

---

## ⚠️ NGOÀI PHẠM VI — ghi để chủ nhà quyết, KHÔNG tự sửa

### [X1] 🔴 rule_19 (phần III) mâu thuẫn giá với TOÀN BỘ phần IV

Phát hiện khi truy nguồn con số ở mục [1]. **Không thuộc phạm vi P4** (rule_19 là của agent P3),
nhưng ảnh hưởng trực tiếp tới phần IV nên phải báo:

| Rule | Phase 2 | Phase 3 |
|---|---|---|
| **rule_19** (phần III) | **1,800万** | **3,200万** (tier: 2,400/3,200/4,800) |
| rule_25 | 800万 | 1200万 |
| rule_26 L40 | — | 1200万円 |
| rule_27 L65 | — | 1,200万円 |
| rule_28 L74 | — | 1,200万円 |
| rule_31 (phần V) | — | 1200万円 (720+280+200万) |

**rule_19 là ngoại lệ duy nhất trong cả sách** — 5 rule khác (25/26/27/28/31) đều dùng 800万/1200万
và cộng khớp nhau. Học viên đọc tuần tự sẽ thấy giá Phase 3 nhảy 3,200万 → 1200万 giữa phần III và IV.

→ **Khuyến nghị:** sửa rule_19 theo hệ 800/1200 (vì nó là thiểu số 1/6), không sửa ngược lại.
Quyết định thuộc main Claude vì đụng phạm vi P3.

### [X2] 🟡 Cross-ref liên sách rule_24 L7 trỏ SAI rule

**Nguyên văn L7:**
> **Liên quan:** … **Sách 03 rule 35 (gijiroku — biên bản theo dõi)**, Sách 04 rule 30 (持ち帰り基本).

**Đã kiểm tận nơi:**
- `03_meeting/nội_dung/phần_IV/rule_35_接続不良/rule.md` → **"Rule 35 — Khi mất kết nối / 接続不良への対応"** ❌ không liên quan biên bản
- `04_horenso/nội_dung/phần_III/rule_30_持ち帰り相談/rule.md` → **"Rule 30 — Mang về tham vấn (持ち帰り)"** ✅ ĐÚNG

Rule đúng về biên bản trong sách 03 là **rule 45** (`rule_45_議事録作成` — "Gửi biên bản trong 24h /
議事録の作成と配布") — khớp chính xác mô tả "gijiroku — biên bản theo dõi", và còn khớp cả chủ đề 24h
của rule_28.

→ **Đề xuất:** `Sách 03 rule 35` → `Sách 03 rule 45`. (Sửa nằm trong file phần IV nên thuộc phạm vi P4,
nhưng cần đối chiếu sách 03 → ghi ở đây cho minh bạch.)

⚠️ Lưu ý bẫy rule mục 1.6: đây **đúng là cross-ref LIÊN SÁCH**, tôi đã giữ đủ tiền tố `Sách 03`
khi kiểm, và đã mở tận file sách 03 để xác nhận — không phải báo động sai kiểu regex cắt tiền tố.

### [X3] 🔵 Mục lục mô tả rule 24/25 lệch nhẹ so với H1
- `meta/mục_lục.md` L82: rule 24 = "**持ち帰り cho câu chưa biết**" · H1 = "Mang về xem xét cho câu chưa biết"
- `meta/mục_lục.md` L83: rule 25 = "Đối phó câu **hostile**" · H1 = "Đối phó câu hỏi **gay gắt**"

Thuộc dạng "mục lục là bản chưa Việt hoá" mà `00_TIEN_DO.md` đã ghi nhận (33/35 lệch) — **không phải
phát hiện mới**, chỉ xác nhận phần IV nằm trong số đó. Hướng sửa đã chốt: đồng bộ mục lục theo H1.

---

## 🚫 DANH SÁCH CẤM SỬA — đúng nhưng dễ bị sửa nhầm

| # | Chỗ | Vì sao ĐÚNG — đừng đụng |
|---|---|---|
| 1 | rule_26 L45 `お時間頂戴し` | Kính ngữ **hợp lệ**, trang trọng hơn `頂き`. Changelog v1.1 sửa ở rule_28 là chọn văn phong cho email, KHÔNG phải sửa lỗi. Đừng "đồng bộ hoá" rule_26 theo rule_28 |
| 2 | rule_23 L42/49/55 `お答えできておりますでしょうか` | Có nguồn bắt bẻ 「〜ますでしょうか」 là 二重敬語, nhưng đây là cách dùng **phổ biến và được chấp nhận rộng rãi** trong business Nhật thực tế. Đã là kết quả fix v1.1 (từ `お答えになっておりますでしょうか` — bản CŨ mới thật sự sai vì 尊敬語 cho hành vi của mình). **Đừng sửa ngược lại** |
| 3 | rule_24 L38/45 `即答できかねます` | Có nguồn cho rằng `お答えできかねます` mâu thuẫn logic ("できる+できない"). Nhưng ở đây là `即答` + `できかねます` — **không có tiền tố お/ご vào việc của mình**, hoàn toàn chuẩn. Ghi chú 【1】 giải thích 「〜かねます」 cũng chính xác |
| 4 | rule_25 L39 `ご指摘の点、もっともでございます` | Đã WebSearch xác minh: đúng chuẩn business. Ghi chú 【1】 phân biệt "công nhận việc NÊU vấn đề là hợp lý ≠ đồng ý nội dung" là **tinh tế và chính xác** — đây là điểm dạy tốt nhất của rule 25, giữ nguyên |
| 5 | rule_24 toàn bộ hướng "持ち帰り thay vì đoán" | Đúng hoàn toàn về nghiệp vụ + pháp lý. Không nhận trách nhiệm sớm, không hứa quá. Đây là mẫu 部分謝罪 chuẩn — **không được "làm mạnh lên"** thành cam kết chắc chắn |
| 6 | rule_25 L46 「KHÔNG đồng ý với nội dung (không công nhận đắt)」 | Ranh giới pháp lý/đàm phán rất quan trọng: bắc cầu ≠ nhượng bộ. Đừng đơn giản hoá thành "đồng ý với khách" |
| 7 | rule_22 quy tắc 7 giây im lặng | Đúng đặc thù văn hoá Nhật, nhất quán giữa luận điểm (L3, L5), hội thoại (L34, L39), câu chốt (L51) và Tránh (L60). **Đừng hạ xuống 3-5 giây** cho "tự nhiên hơn" |
| 8 | rule_28 L95 `ティエンファット 営業部` trong signature | Changelog v1.1 đổi `ティエンファット社 → 弊社` áp dụng cho **thân mail**, không phải chữ ký. Trong chữ ký, ghi tên công ty là **bắt buộc** — đừng đổi thành `弊社` |
| 9 | rule_27 L44 `Drive 閲覧専用` + cảnh báo QR công khai | Lời khuyên bảo mật đúng và cần thiết. Giữ |
| 10 | rule_28 L24-26 `フオン` ép gửi trong ngày | Đúng nghiệp vụ (khách Nhật share nội bộ trong 24h). Giọng sếp hơi cộc nhưng là **Slack nội bộ giữa người Việt** — không phải lỗi keigo |

---

## Kết luận

**Rule sạch:** 22, 23 (chỉ lỗi 🔵 từ vựng thừa). Hai rule này keigo chuẩn, cấu trúc dạy tốt, nhất quán nội bộ.

**Rule cần sửa gấp:** **25** — 3 lỗi 🔴, trong đó [1] và [2] là lỗi **số học phá vỡ chính lập luận
sách đang dạy**. Đây là rule dạy "đối phó câu hỏi gay gắt" mà bản thân lập luận mẫu lại không chịu
được một câu hỏi gay gắt về số học. Ưu tiên số 1.

**Việc dây chuyền:** thống nhất mốc lịch (5/2, 5/8, 5/15) + hạn 3営業日 + con số -8% phải sửa **đồng
bộ qua 5 file** (r24, r25, r26, r27, r28) — sửa lẻ 1 chỗ sẽ tạo mâu thuẫn mới. Khuyến nghị làm 1 lượt.

**Cảnh báo cho main Claude:** STATUS.md khai 「Auto-review: 0 issues」 và v1.1 "Sẵn sàng ship", nhưng
riêng phần IV đã có **2/4 mục changelog chạy nửa vời** ([5] và mục お時間). Đúng dự đoán rule mục 5
— đừng tin STATUS.md.

---

*P4 — rà soát phần_IV (rule 22-28), 7/7 file đã đọc trọn vẹn. Mọi kết luận "không có" đều đã strip ruby trước khi kết luận.*
