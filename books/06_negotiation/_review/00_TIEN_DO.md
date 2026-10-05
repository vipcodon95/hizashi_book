# Sách 06 — Đàm phán / 交渉 — Tiến độ rà soát

> Áp dụng `.claude/rules/book-review.md`. Đợt này: **5 subagent Opus**, mỗi agent 1 phần.
> Main Claude giữ vai tổng duyệt — **kiểm chứng từng báo cáo trước khi sửa**.

## ⛔ PHẠM VI

CHỈ sửa file `.md`: `rule.md`, `meta/mục_lục.md`, `_front_matter.md`, `_back_matter.md`.
**KHÔNG đụng:** `conversation.json` · script build · `phụ_lục_*.md` (sinh tự động).
Lỗi ngoài phạm vi → **ghi báo cáo, không tự sửa**.

## Quy mô

**45 rule** (đếm bằng `find -name rule.md`), 5 phần. Chưa từng có `_review/`.

| Phần | Số rule | Chủ đề |
|---|---|---|
| I | 9 | Trước đàm phán (準備) |
| II | 8 | Mở đàm phán + Discovery |
| III | 12 | Đàm phán giá + scope |
| IV | 10 | Closing + Hợp đồng |
| V | 6 | Tình huống đặc biệt + Self-improve |

## 📏 Thước đo main Claude lập TRƯỚC khi tung agent

| # | Phép đo | Kết quả |
|---|---|---|
| 1 | Mục lục vs H1 | **VN lệch 37/45**, JP lệch 3/45 (đọc đúng cột `Tên VN`/`Tên JP`) |
| 2 | 二重敬語/過剰敬語 | **3 ca**: `部長様` ×2 (r12 d43, r16 d23), `お伺いさせていただ` ×1 (r12 d35) |
| 3 | Ký tự lạ (Hangul/giản thể) | **0** |
| 4 | Emoji strip dòng `**` | **0** (đã khôi phục đợt trước) |
| 5 | Giá trị tiền `¥` | **43 giá trị** khác nhau — sách nặng số học nhất từ trước tới nay |

→ Agent báo vượt xa các số này thì phải kiểm chứng lại.

### 🔴 Main Claude tự tìm trước (để đối chiếu báo cáo)

**3 ca keigo sai** (thuộc P2 và P2/P3):
- `rule_12` d35: `5 観点でお伺いさせていただきます` — **二重敬語**. `伺う` đã là khiêm nhường ngữ, thêm `させていただく` là chồng. Đúng: `お伺いします` hoặc `伺います`.
- `rule_12` d43: `大垣部長様` — chức danh `部長` đã hàm kính ngữ, thêm `様` là thừa.
- `rule_16` d23: `大垣部長様` — như trên.

### 🪤 Bẫy đặc thù sách này — cách viết tiền `¥18M`

Sách dùng ký hiệu kiểu **`¥18M`** (18 triệu yên). Trong văn cảnh kinh doanh Nhật thật,
người ta viết **`1,800万円`**, không viết `¥18M`. Đây là điểm cần agent thẩm định:
- Nếu là **quy ước có chủ ý** của sách (cho gọn bảng so sánh) → **CẤM SỬA**
- Nếu là văn phong lai → cần báo cáo

**Quan trọng hơn:** với 43 giá trị tiền rải 45 rule, trục ZOPA/BATNA
(giá mục tiêu / giá bảo lưu / điểm rút lui) **phải nhất quán xuyên sách**.
Đây là nơi dễ có lỗi kiểu sách 05 (`rule_19` lệch trục giá với 5 rule khác).

## Phân công

| Agent | Phần | Số rule | Trạng thái |
|---|---|---|---|
| N1 | phần_I | 9 | ✅ xong → `N1_phần_I.md` — 6🔴 / 8🟡 / 3🔵. Keigo SẠCH 9/9. Nặng nhất: `未満`↔`以下` tại ¥15M (r08 vs r01/07/09), Good ¥14M dưới reservation ¥15M (r06), sai định nghĩa ZOPA (r02). `¥18M` xác nhận là quy ước CÓ CHỦ Ý → CẤM SỬA |
| N2 | phần_II | 8 | ✅ XONG → `_review/N2_phần_II.md`. **3 ca keigo main Claude giao: XÁC MINH ĐÚNG CẢ 3.** Tìm THÊM: 1 ca keigo (`rule_15` d38 `想定されておられますか` — phép đo #2 bỏ sót vì pattern hẹp) · 3 mâu thuẫn số (B-1 `¥15-20M`↔`¥17-20M` cùng 1 CFO r12 d40 vs r15 d39; B-3 ngưỡng HĐQT `付議¥18M`↔`承認¥20M` r12 d44/r16 d36-37; B-2 deadline r13 d43) · 1 lỗi meta nặng (`rule_16` d39 — KHÁCH HÀNG 大垣 đọc "rule 13" trong lời thoại) · 2 lỗi VN nhỏ. **Rule SẠCH: 10, 14, 17.** 🔴A = 0 (mirroring dạy đúng = 要約確認, không thao túng; 稟議/決裁 đúng quy trình). `¥18M` → phán định **QUY ƯỚC CÓ CHỦ Ý, CẤM SỬA**. |
| N3 | phần_III | 12 | ✅ xong — `N3_phần_III.md`. 6 🔴 + 5 🟡. Nặng nhất: **r23 d37 công thức Payback viết ngược** (`17.5÷92.1` ra 0.19 NĂM, không ra 2.3 tháng — đúng kiểu sách 05); **"ROI 4.4倍" tính trên GMV** (r18/r25/r27, mâu thuẫn biên 9% của r23, ROI thật ÂM); **r28 d13 ngưỡng rút lui ¥15.5M** lệch ¥15M (r01/02/05/09/35); **r28↔r29 kết cục ngược nhau**; **r28 trùng nguyên cảnh r35**; **r21 biên 14%** không khớp giá vốn ¥13M (ra 18.75%). Tiếng Nhật **12/12 SẠCH**. ⚠️ 2 thẻ ruby vỡ r29 d36/d37 (duy nhất toàn sách). ⛔ CẤM SỬA: `¥18M` là quy ước có chủ ý; r26 `¥15.5M` KHÔNG mâu thuẫn (có điều kiện scope kèm); NPV ¥234M/5.3倍/¥730K/¥470K đều tính đúng. |
| N4 | phần_IV | 10 | ✅ xong — `N4_phần_IV.md` · 7 🔴 / 16 🟡 / 5 🔵. Nặng nhất: **r32 LOI không nêu tính ràng buộc**; **r35 walk-away ¥15M lệch r26/r28 ¥15.5M**; **r37 ¥17M ≠ +24% Phase 2** (đúng: +17%); **r38 `数千万円規模` sai bậc số với ¥17M**. Keigo phần IV **sạch** (0 二重敬語). `¥18M` là quy ước sách → không báo |
| N5 | phần_V + nhất quán toàn sách | 6 | ✅ xong → `N5_phần_V.md` — 2 lỗi 🔴 (r40 payback 18 tháng vs 2.3; r43 `決裁 down ません`), 0 lỗi keigo. Trục giá xuyên sách **KHÔNG có lỗi kiểu sách 05**. JP mục lục thật ra khớp **45/45** (lệch 3 là ảo do tách `/`). `¥18M` = quy ước CÓ CHỦ Ý → CẤM SỬA |

## Danh sách rule theo phần

### phần_I — 9 rule

- rule_01_BATNA
- rule_02_ZOPA
- rule_03_稟議理解
- rule_04_顧客リサーチ
- rule_05_価格戦略
- rule_06_3段階提案
- rule_07_事前すり合わせ
- rule_08_撤退ライン
- rule_09_譲歩計画

### phần_II — 8 rule

- rule_10_商談冒頭
- rule_11_コンテキスト設定
- rule_12_ディスカバリー質問
- rule_13_隠れた制約
- rule_14_ミラーリング
- rule_15_価格感度
- rule_16_決裁者確認
- rule_17_時間管理

### phần_III — 12 rule

- rule_18_アンカリング判断
- rule_19_価格提示
- rule_20_高い対応
- rule_21_スコープ削減
- rule_22_バンドリング
- rule_23_ROI換算
- rule_24_譲歩交換
- rule_25_沈黙活用
- rule_26_脅し対応
- rule_27_再アンカリング
- rule_28_撤退作法
- rule_29_ニブル対応

### phần_IV — 10 rule

- rule_30_合意確認
- rule_31_要約メール
- rule_32_LOI契約
- rule_33_条項調整
- rule_34_調印依頼
- rule_35_商談打切
- rule_36_成立後挨拶
- rule_37_社内キックオフ
- rule_38_対外発表
- rule_39_関係者感謝

### phần_V — 6 rule

- rule_40_多者間交渉
- rule_41_オンライン交渉
- rule_42_通訳介在
- rule_43_エスカレーション
- rule_44_VN_JP_ギャップ
- rule_45_振り返り

---

## Nhật ký

- Lập 5 phép đo + tự tìm 3 ca keigo, tạo `_review/`, tung 5 agent.

---

## 🔴 Main Claude tự tìm — MÂU THUẪN TRỤC GIÁ XUYÊN SÁCH

Làm đúng bài học sách 05 (mục 6 — điểm mù của agent): quét **điểm rút lui** trên cả 45 rule.

### Điểm rút lui (walk-away / reservation) có HAI giá trị

| Mốc | Rule dùng | Số rule |
|---|---|---|
| **¥15M** | 01 (d40), 02 (d21,d34), 05 (d35), 07 (d32), 08 (d36), 09 (d35), **26 (d28)**, 35 (d13), 43 (d3) | **9** ✅ |
| **¥15.5M** | **26 (d43)**, 28 (d13) | 2 ❌ |

### Nặng nhất: `rule_26` TỰ MÂU THUẪN với chính nó

- **d28** (giải thích khối XẤU): *"Điểm rút lui **¥15M** là ranh giới"*
- **d43** (khối TỐT, Hà CTO nói thẳng với khách):
  「Phase 2 同等のスコープであれば、弊社 **walk-away ライン ¥15.5M**、これは**承認済みの最終条件**でございます」

Hai dòng cách nhau 15 dòng trong CÙNG một rule. Tệ hơn: d43 là **lời nhân vật cấp cao
nói với khách**, còn khẳng định "đã được duyệt" — học viên sẽ học thuộc con số này.

`rule_28` d13 kế thừa luôn ¥15.5M: *"push xuống ¥14M (dưới điểm rút lui ¥15.5M)"*.

→ ⚠️ **KẾT LUẬN NÀY CỦA TÔI SAI** — xem phần thẩm định cuối file.
→ ~~Hướng sửa: thống nhất về ¥15M~~ (9 rule dùng, gồm cả rule chuyên đề `rule_08_撤退ライン`
và `rule_43` định nghĩa ngưỡng leo thang). Sửa 2 chỗ: `rule_26` d43, `rule_28` d13.

⚠️ **CHỜ ĐỐI CHIẾU** với N3 (phụ trách r18-29, gồm r26) và N4 (r30-39, gồm r28) và N5
(nhất quán toàn sách) — xem có agent nào tự bắt được không.

### 3 ca keigo đã xác minh (chờ N2 xác nhận độc lập)

- `rule_12` d35 `お伺いさせていただきます` · d43 `大垣部長様` · `rule_16` d23 `大垣部長様`

---

## ✅ Main Claude thẩm định 5 báo cáo

### ⚖️ N3 và N4 KẾT LUẬN NGƯỢC NHAU — main phân xử

Cùng vụ `¥15.5M`, hai agent đề xuất ngược chiều:
- **N3**: sửa `rule_28` về ¥15M
- **N4**: sửa `rule_35` về ¥15.5M ("bằng chứng: r35 d44 khách nâng lên đúng ¥15.5M")

**Bác bằng chứng của N4:** khách nâng ngân sách lên ¥15.5M chỉ có nghĩa "đủ để quay lại bàn".
Với ngưỡng ¥15M thì ¥15.5M **vẫn vượt** — câu chuyện vẫn chạy trơn. Chi tiết đó tương thích
với CẢ HAI giả thuyết nên không phân xử được gì.

**Phân xử bằng dữ liệu:** quét mọi mốc rút lui, tách theo có/không kèm điều kiện scope:

| Ngưỡng | Điều kiện scope | Rule |
|---|---|---|
| **¥15M** | không kèm (mức mặc định) | r02 d21, r05, r07, **r08 d36** (rule chuyên đề), r26 d28, r35, **r43** (định nghĩa leo thang) |
| ¥15M | kèm `scope -30%` | r01 d40, r02 d34, r09 Step 5 |
| ¥15.5M | kèm `Phase 2 同等スコープ` | r26 d43 |
| **¥15.5M** | **không kèm** ← lệch | **r28 d13** |

→ **N3 đúng, N4 sai.** N4 muốn sửa `rule_35` (đang ĐÚNG) theo `rule_28` (đang SAI).
Chỉ sửa 1 chỗ: `rule_28` d13.

### 🙋 Main Claude tự sai — và bị agent sửa

Trước khi agent về, tôi ghi vào tiến độ rằng `¥15.5M` ở `rule_26` là mâu thuẫn, đề xuất sửa.
**N3 và N5 độc lập cùng bác:** ¥15.5M gắn điều kiện `Phase 2 同等のスコープであれば`,
còn ¥15M là mức đã cắt scope −30%. Giữ nhiều scope hơn → giá sàn cao hơn: **hoàn toàn hợp lý.**

Tôi đã kết luận vội vì chỉ so con số mà bỏ điều kiện đi kèm — đúng lỗi mục 3
(cùng dạng ca `5月末/7月末` sách 03 từng bị báo nhầm).

### Agent làm ĐÚNG (main kiểm chứng độc lập xác nhận)

| Agent | Phát hiện | Kiểm chứng |
|---|---|---|
| **N1** | `未満` vs `以下` tại ¥15M | **Đúng, và rộng hơn báo cáo.** `rule_08` — chính rule chuyên đề — tự mâu thuẫn TRONG CÙNG FILE (d22 `以下`, d36 `未満`). Nặng nhất: `rule_09` d35 cùng một dòng vừa chốt **Step 5 = ¥15M** vừa khai **¥15M 以下 = 撤退** → bậc nhượng bộ cuối của chính mình nằm trong vùng phải rút lui. **Mâu thuẫn ẩn 100% ở vế Nhật** (vế Việt dịch cả hai thành "dưới ¥15M") |
| **N2** | Xác minh 3 ca keigo + tìm ca thứ 4 | Đúng. `rule_15` d38 `されておられますか` — 尊敬 chồng 尊敬, phép đo #2 của tôi sót vì pattern chỉ dò `部長様`/`お伺いさせて` |
| **N2** | `rule_16` nằm khối XẤU nhưng mục Tránh không nhắc keigo | Đúng — học viên sẽ tưởng `部長様` bình thường. Đã theo đề xuất: giữ nguyên + thêm 1 gạch vào mục Tránh |
| **N3** | `rule_29` có 2 thẻ ruby VỠ | Đúng — `</ruByの</ruby>`, `</ruById</ruby>`. Hỏng cả thẻ lẫn chèn ký tự rác vào văn bản |
| **N4** | `rule_37` +24% cho ¥17M | Đúng. Phase 2 = ¥14.5M → 17/14.5 = **+17%**; +24% là con số của ¥18M (dùng đúng ở r18, r41) |
| **N5** | `rule_43` `決裁 down ません` | Đúng — `ません` không gắn được vào từ tiếng Anh. Gốc là `決裁が下りません`. Lặp ở cả khối XẤU lẫn TỐT |
| **N5** | "JP lệch 3/45" của main là ẢO | Đúng — do tách `/` mà r06/r22/r26 có `/` trong tên Việt. **Cột JP khớp 45/45** |

### Agent SAI (main bác)

| Agent | Báo cáo | Thực tế |
|---|---|---|
| **N4** | sửa `rule_35` về ¥15.5M | Xem phân xử trên — r35 đang đúng |
| **N5** | `rule_40` payback 18 tháng là lỗi (phải 2.5) | **Bác.** 18 tháng HỢP LÝ hơn: `¥80M` là **GMV**, không phải lợi ích ròng. Quy qua biên lợi nhuận 9% (r23) ra 28 tháng. 18 nằm giữa, gần thực tế nhất. Vấn đề thật là sách **trộn hai cách quy đổi** (r23 dùng lợi ích ròng ¥92.1M, r40 dùng GMV ¥80M) — ghi nhận, không sửa liều |

### Ba agent CÙNG kết luận: `¥18M` là quy ước CÓ CHỦ Ý → CẤM SỬA

N1, N2, N5 độc lập cùng phán. Bằng chứng mạnh nhất của N5: sách **biết** cách viết Nhật chuẩn
và dùng đúng chỗ — `rule_38` dùng `数千万円規模` cho thông cáo báo chí. Tức phân vai có ý thức:
`¥M` cho bảng/Slack nội bộ, `万円` cho văn bản đối ngoại. Nhất quán 522/522 lần.

## 📋 Bảng sửa — 16 chỗ

| # | File | Sửa |
|---|---|---|
| 1-6 | `r01` d40,d42 · `r07` d44,d46 · `r08` d22 · `r09` d35 | `¥15M 以下` → `¥15M 未満` (chốt theo `未満` vì Step 5 = ¥15M là bậc hợp lệ) |
| 7 | `r28` d13 | Ngưỡng rút lui `¥15.5M` → `¥15M` (chỗ duy nhất lệch mà không có điều kiện scope) |
| 8-9 | `r37` d44, d45 | `+24%` → `+17%` (JA **+ VN**) |
| 10-11 | `r43` d23, d38 | `決裁 down ません` → `決裁が下りません` |
| 12 | `r12` d35 | `お伺いさせていただきます` → `伺います` (二重敬語) |
| 13 | `r12` d43 | `大垣部長様` → `大垣部長` |
| 14 | `r15` d38 | `されておられますか` → `でいらっしゃいますか` (尊敬 chồng 尊敬) |
| 15 | `r16` mục Tránh | Thêm gạch cảnh báo `部長様` — giữ nguyên ca ở khối XẤU làm bài học |
| 16 | `r29` × 2 | Ruby vỡ `</ruByの</ruby>`, `</ruById</ruby>` |
| — | `meta/mục_lục.md` | Đồng bộ **36 dòng** cột Tên VN theo H1 (cột JP KHÔNG đụng) |

**Kết quả:** mục lục VN khớp **45/45**, JP giữ nguyên 45/45.

### 🪤 Bẫy dính trong đợt này

**Tôi tự tạo lỗi khi sửa keigo:** chuỗi thay thế viết nhầm `</ruby**います` (thừa dấu sao)
→ tạo ra thẻ ruby vỡ MỚI ngay khi đang sửa ruby vỡ CŨ. Bắt được nhờ đọc lại file sau khi sửa.
→ Bài học: script thay chuỗi có ruby phải **in lại dòng sau khi sửa**, không chỉ in "OK".

## ⚠️ Ngoài phạm vi / chờ chủ nhà quyết

1. **`rule_32` — LOI không nêu tính ràng buộc** (N4, 🔴 rủi ro pháp lý cao nhất).
   Grep 0 lượt `法的拘束力`/`binding`. Câu chốt d54 lại dạy 「LOI = 商務合意の**ロック**」.
   Thực tế LOI/基本合意書 **nguyên tắc non-binding**, chỉ 独占交渉権 + 秘密保持 có hiệu lực.
   Sửa việc này = viết lại nội dung dạy học, cần chủ nhà duyệt hướng.
   Liên đới: `_thuat_ngu.md` d24 gọi LOI là "văn bản **ràng buộc nhẹ**" — khái niệm không tồn tại.

2. **ROI "4.4 倍" tính trên GMV** (N3): `80÷18` đúng số học nhưng GMV ≠ lợi nhuận.
   Theo biên 9% của r23 thì ¥80M GMV chỉ ra ¥7.2M — **ít hơn** ¥18M đầu tư.
   Xuất hiện ở r18, r25, r27, r40. Sửa = đổi cách lập luận 4 rule, cần chủ nhà chốt.

3. **`rule_23` d37 công thức payback thiếu `×12`** (N3): in `¥17.5M ÷ ¥92.1M ≒ 2.3 ヶ月`
   nhưng phép đó ra **0.19 năm**. Kết quả đúng, công thức in sai.

4. **`ladder` nhượng bộ r09 không nhỏ dần** (N3): 1.0/0.5/0.5/1.0/1.0 — bước nở lại
   phát tín hiệu "còn dư địa", trái nguyên tắc đàm phán.

5. **Mục `## Mẫu` rỗng** ở r19, r20, r31, r32, r38, r45 — mục lục hứa `[TEMPLATE: ...]`,
   front matter hứa Phụ lục D. **Chưa kết luận thiếu** (N4 nêu đúng) — cần tra Phụ lục D.

6. **Tiếng Việt lọt ô tiếng Nhật** ~24 dòng (N5). N5 tách: trong Câu chốt/Slack nội bộ
   là văn phong chủ ý, nhưng trong lời **nói với khách Nhật** thì không hợp lý. Cần chốt một lần.

7. **`meta/STATUS.md` khai "Auto-review: 0 issues / Sẵn sàng ship"** — cả 5 agent cùng bác.

---

## ✅ Đợt 2 — Sửa 2 việc chuyên môn (chủ nhà: "với kiến thức chuyên môn thì sửa lại luôn")

### A. `rule_32` — LOI: sửa hiểu sai về tính ràng buộc pháp lý

**Vấn đề (N4 phát hiện):** rule dạy 「LOI = 商務合意の**ロック**」, grep 0 lượt chữ "ràng buộc".
Học viên tin LOI đã đóng dấu là khoá được giá → không phòng bị cho vòng soạn hợp đồng.

**Chuẩn ngành đã WebSearch xác minh:** LOI/基本合意書 **原則 non-binding**.
Chỉ điều khoản được ghi rõ mới ràng buộc — thông lệ Nhật là **独占交渉権** (1-3 tháng)
và **秘密保持義務**. Nguồn: nihon-ma.co.jp, tranbi.com, mabp.co.jp.

| Chỗ | Sửa |
|---|---|
| d3 luận điểm | Thêm khối cảnh báo: LOI không ràng buộc pháp lý; giá trị thật là **ràng buộc bằng uy tín + quy trình 稟議 nội bộ khách**, không phải bằng luật |
| d5 (JA) | Thêm 「LOI は原則 法的拘束力なし。拘束力を持たせるのは通常 独占交渉権と秘密保持義務のみ」 |
| 【1】 | Thêm **mục thứ 7 bắt buộc** — điều khoản về hiệu lực, kèm mẫu câu 「第○条…を除き、法的拘束力を有しない」 |
| 【3】 | Làm rõ "chốt" là chốt **trên thực tế**, không phải pháp lý → vẫn phải chuẩn bị lý lẽ giữ giá |
| Câu chốt d54/56 | 「商務合意の**ロック**」 → 「**着地点確認**。原則 法的拘束力なし…」 |
| Mục Tránh | Thêm 2 gạch: LOI thiếu điều khoản hiệu lực · tưởng LOI đã đóng dấu là hợp đồng |
| `_thuat_ngu.md` d24 | "văn bản **ràng buộc nhẹ**" (khái niệm không tồn tại về pháp lý) → định nghĩa đúng |

### B. ROI "4.4 倍" — sửa cách quy đổi ở 5 rule

**Vấn đề (N3 phát hiện):** `80 ÷ 18 = 4.44` đúng số học nhưng **GMV ≠ lợi nhuận**.
Theo biên 9% mà chính `rule_23` đặt ra, ¥80M GMV chỉ ra ¥7.2M — **ít hơn** ¥18M đầu tư.

**`rule_23` (rule chuyên đề) vốn đã làm ĐÚNG bài bản:**
```
GMV tăng +¥864M/năm × biên 9%      = ¥77.7M lợi nhuận ròng
+ tiết kiệm nhân công               = ¥14.4M
                          tổng lợi ích = ¥92.1M/năm
ROI năm đầu = 92.1 / 17.5 = 5.3 lần ✓   payback = 17.5 ÷ (92.1÷12) = 2.3 tháng ✓
```
→ Chỉ cần 5 rule kia dùng **cùng chuẩn đó**. Với đầu tư ¥18M: **ROI 5.1 lần**, payback 2.3 tháng.

| Rule | Sửa |
|---|---|
| r18 d39 | `ROI 4.4 倍` → `5.1 倍`; sửa vế nhân quả: `+¥80M GMV に対し` → `GMV を利益換算した年間便益に対し` (JA+VN) |
| r25 d23, d39, d45 | `ROI 4.4 倍` → `5.1 倍` (JA+VN, 6 chỗ) |
| r27 d36 | `ROI 4.4 倍` → `5.1 倍` — giờ khớp bộ số r23 (ROI + payback 2.3 + NPV ¥234M) |
| r40 d23, d26, d40, d46 | `ROI 4.4` → `5.1`; **payback 18 tháng → 2.3 tháng**; d46 viết lại cách quy đổi: nêu rõ `GMV × 9% + tiết kiệm = ¥92.1M` (JA+VN) |
| r40 【3】 | Thêm cảnh báo dạy học: **trước CFO tuyệt đối không lấy thẳng GMV chia đầu tư** — bị bắt lỗi trong 5 giây, mất tin cậy mọi con số khác |
| r41 d44, d45 | `ROI 4.4` → `5.1` (JA+VN) |
| r23 d37 | Công thức payback thiếu `×12`: `¥17.5M ÷ ¥92.1M` → `¥17.5M ÷ (¥92.1M ÷ 12ヶ月)` (JA+VN) |

**Tổng đợt 2: 27 chỗ.**

### 🪤 Bẫy dính trong đợt 2

1. **Suýt phá bài học của khối XẤU.** Tôi thêm lời CFO phản bác con số sai vào `rule_40` d27
   — nhưng d26 nằm trong khối XẤU mà bài học là *"chỉ trả lời 1 người, bỏ qua 2 người"*,
   không phải lỗi số học. Câu thêm vào làm loãng bài học gốc. **Đã hoàn nguyên** rồi sửa
   đúng chỗ cần (con số 18 tháng ở cả d26 lẫn d46).

2. **Fix nửa vời suýt lọt.** Sửa vế Nhật d46 (`payback 2.3 ヶ月`) nhưng vế Việt vẫn
   "payback khoảng 18 tháng, ROI tích lũy 5 năm 4.4 lần". Bắt được nhờ đọc lại vế Việt
   của đúng dòng vừa sửa — đúng cảnh báo mục 5 kiểu hụt số 2.

**Kiểm cuối trên release:** 12/12 nội dung mới có mặt · 8/8 nội dung cũ = 0 · ruby vỡ = 0.
