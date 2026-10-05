# N2 — Rà soát phần_II (rule_10 → rule_17) — Mở đàm phán + Discovery

> Phạm vi: 8 file `nội_dung/phần_II/rule_*/rule.md`. CHỈ báo cáo, không sửa file nội dung.
> Đã strip ruby bằng python trước mọi kết luận (kể cả ruby chen sau chữ số: `¥15<ruby>-20M`).

---

## 0. Bảng tổng kết

| Rule | 🔴 A dạy sai | 🔴 B mâu thuẫn | 🔴 C tiếng Nhật | 🔴 D sai sự thật | 🟡 E tiếng Việt | 🟡 F meta | Kết luận |
|---|---|---|---|---|---|---|---|
| 10 商談冒頭 | — | — | — | — | — | — | **SẠCH** |
| 11 コンテキスト設定 | — | — | — | — | — | TOC-VN lệch* | Gần sạch |
| 12 ディスカバリー質問 | — | **B-1** ¥15-20M | **C-1** 二重敬語<br>**C-2** 部長様 | D-1 (nhẹ) | — | TOC-VN lệch* | **2 lỗi thật** |
| 13 隠れた制約 | — | **B-2** deadline 8月中旬 | — | — | E-1 (dịch lệch) | TOC-VN lệch* | 2 lỗi |
| 14 ミラーリング | — | — | — | — | — | TOC-VN lệch* | **SẠCH** |
| 15 価格感度 | — | **B-1** ¥17-20M | **C-3** 想定されておられ | D-2 (nhẹ) | — | TOC-VN lệch* | **2 lỗi thật** |
| 16 決裁者確認 | — | **B-3** ngưỡng HĐQT | **C-2** 部長様 | — | — | **F-1** nhân vật đọc số rule | **3 lỗi** |
| 17 時間管理 | — | — | — | — | — | TOC-VN lệch* | **SẠCH** |

\* TOC-VN lệch = lỗi **book-wide đã biết** (main Claude đo 37/45), không phải lỗi riêng phần II — xem mục F.

**Xác minh 3 ca main Claude giao:** ✅ CẢ 3 ĐÚNG, đều tồn tại thật, không phải grep giả.
**Tìm thêm được:** 1 ca keigo nữa (`rule_15` d38), 3 mâu thuẫn số, 1 lỗi meta nặng.
**Rule sạch hoàn toàn:** rule_10, rule_14, rule_17 (3/8). Không bịa lỗi cho đủ số.

---

## 1. 🔴 B — Bảng SỐ TIỀN phần II + mâu thuẫn

### Bảng tiền (đã strip ruby — có ruby chen sau chữ số ở r12 d40, r15 d39/d40)

| Rule | Dòng | Giá trị | Ai nói | Ý nghĩa |
|---|---|---|---|---|
| 10 | d23 | `¥19M` | ズン (khối XẤU) | Báo giá Phase 3 (bản neo giá) |
| 12 | d23, d27 | `¥19M` | ズン (khối XẤU) | Báo giá Phase 3 |
| 12 | d38 | `+¥80M` | 大垣 | Tác động GMV/năm |
| 12 | **d40** | **`¥15-20M`** | **中村CFO** | **Dải ngân sách Phase 3** |
| 12 | d44 | `¥18M` | 大垣 | Ngưỡng đưa lên HĐQT (付議) |
| 15 | d3 | `¥10M〜¥30M` | luận điểm | Ví dụ mẫu câu hỏi theo dải |
| 15 | d38, d44 | `¥14.5M` | ズン / ghi chú | Giá chốt Phase 2 |
| 15 | **d39, d40, d45** | **`¥17-20M`** | **中村CFO** | **Dải ngân sách Phase 3** |
| 16 | d24 | `¥10M` / `¥18M` | 大垣 (khối XẤU) | Trần quyền 部長 / giá vụ này |
| 16 | d36 | `¥18M` | ズン | Giá vụ này |
| 16 | **d37** | **`¥20M`** | **中村CFO** | **Ngưỡng cần HĐQT phê duyệt** |

Đối chiếu trục giá toàn sách (r01 d40-42, r02 d34-37, r05 d35): target `¥18M`, reservation `¥15M`,
trần ngân sách khách ước `¥17M`, Phase 2 = `¥14.5M`. Phần II **không phá trục này** — điểm tốt.

---

### 🔴 B-1 — CÙNG MỘT NGƯỜI nói HAI dải ngân sách khác nhau (nặng nhất phần II)

Cùng nhân vật 中村CFO, cùng câu hỏi (Phase 3 bao nhiêu), hai rule liền kề, hai đáp số:

**`rule_12` dòng 40** (nguyên văn còn ruby: `¥15-20M <ruby>帯<rt>たい</rt></ruby>`):
> JA: 「Phase 3 <ruby>単体</ruby>としては **¥15-20M** 帯で<ruby>考え</ruby>ています。それを<ruby>大きく超える</ruby>と<ruby>稟議</ruby>が<ruby>難航</ruby>します。」
> VN: *Riêng Phase 3 chúng tôi tính dải **¥15-20M**. Vượt nhiều là ringi sẽ khó.*

**`rule_15` dòng 39**:
> JA: 「Phase 2 <ruby>比</ruby> 1.2-1.4 <ruby>倍程度</ruby>、つまり **¥17-20M** の<ruby>帯域</ruby>で<ruby>考え</ruby>ています。」
> VN: *Khoảng 1.2-1.4 lần Phase 2, tức là dải **¥17-20M**.*

**Vì sao là lỗi thật, không phải hai mốc khác nhau** (đã tự kiểm theo bài học sách 03 rule_39):
- Cùng **một người nói** (中村CFO), cùng **một đối tượng** (Phase 3 単体), cùng **một loại số** (dải ngân sách khách sẵn sàng chi).
- Cả hai rule đều đặt trong **cùng một buổi họp** (r15 d13 ghi rõ: *"Trong bước khai thác thông tin (rule 12, phần Ngân sách)"*) → r15 là **phóng to chính cảnh r12 d39-40**, không phải buổi khác.
- Cận dưới lệch **¥2M** = đúng bằng biên độ ZOPA của cả sách (r02 d37: *"ZOPA rộng ¥15M〜¥17M, biên độ 2M"*) → sai số này đủ để đảo kết luận ZOPA.

**Hệ quả dạy học:** học viên tính ZOPA theo r12 sẽ ra sàn khách `¥15M` = đúng bằng reservation của mình → ZOPA rỗng, lẽ ra phải rút lui. Theo r15 ra `¥17M` → có ZOPA `¥15-17M` khớp r02. Một trong hai dạy sai cách tính.

**Đề xuất:** thống nhất **`¥17-20M`** (bản r15), vì:
1. r15 có **cơ sở tính toán hiện ra trong thoại** (Phase 2 ¥14.5M × 1.2-1.4), r12 chỉ nêu số trần trụi.
2. `¥17M` khớp trần ngân sách khách mà r02 d34-36 đã dựng (`14.5 × 1.15 ≒ ¥16.7M → ¥17M`).
3. Sửa 1 chỗ (`rule_12` d40) rẻ hơn sửa 3 chỗ (r15 d39, d40, d45).

⚠️ **Bẫy ruby khi sửa** — `sed -n '40p'` trước rồi copy, vì nguyên văn là `¥15-20M <ruby>帯<rt>たい</rt></ruby>` (ruby dính ngay sau số).

---

### 🔴 B-3 — `rule_16` tự mâu thuẫn về ngưỡng HĐQT (trong CÙNG 1 rule, cách nhau 1 dòng)

**`rule_16` d36** (ズン nói):
> JA: 「<ruby>本件</ruby>は **¥18M** <ruby>帯</ruby>ですので、<ruby>中村</ruby> CFO <ruby>様</ruby>のご<ruby>決裁</ruby>、<ruby>加えて</ruby><ruby>取締役会付議</ruby>という<ruby>理解</ruby>でよろしいでしょうか」
> VN: *vụ này ở dải ¥18M, em hiểu là anh Nakamura CFO duyệt **+ đưa lên HĐQT**, có đúng không ạ?*

**`rule_16` d37** (中村CFO đáp):
> JA: 「はい、<ruby>私</ruby>の<ruby>決裁</ruby> + <ruby>取締役会報告</ruby>です。**¥20M <ruby>超え</ruby>ると取締役会<ruby>承認</ruby>が<ruby>必要</ruby>**になります。」
> VN: *Đúng, tôi duyệt + **báo cáo** HĐQT. **Vượt ¥20M** là cần HĐQT **phê duyệt**.*

**Và `rule_12` d44** (大垣 nói, cùng buổi họp):
> JA: 「あと<ruby>取締役会</ruby> (**¥18M <ruby>超</ruby>は<ruby>付議</ruby>**)。」
> VN: *Thêm HĐQT (**vượt ¥18M phải đưa lên**).*

Ba dòng, ba ngưỡng: r12 d44 nói **>¥18M là 付議**; r16 d37 nói **>¥20M mới cần 承認**; r16 d36 lại áp 付議 cho chính deal ¥18M (mà ¥18M **không** > ¥18M).

**Điểm tinh vi phải phân biệt** (WebSearch đã kiểm — xem mục D): 決裁権限規程 Nhật thật sự phân **報告 / 付議(承認)** theo hai ngưỡng khác nhau, nên *về nguyên tắc* hai ngưỡng khác nhau là hợp lệ. **Nhưng ở đây vẫn sai** vì:
- r12 d44 dùng đúng chữ **付議** cho ngưỡng ¥18M, còn r16 d37 dùng **報告** cho cùng deal ¥18M — hai chữ này KHÁC nhau về pháp lý. Cùng một deal không thể vừa 付議 vừa chỉ 報告.
- r16 d36 ズン nói `取締役会付議` cho deal ¥18M rồi CFO "はい" đồng ý, nhưng câu sau CFO lại định nghĩa 付議 bắt đầu từ >¥20M → **CFO tự phủ định câu vừa gật**.

**Đề xuất (giữ được cả sắc thái 報告≠承認):** sửa `rule_12` d44 từ `¥18M 超は付議` → `¥18M 超は報告`, và `rule_16` d36 từ `取締役会付議` → `取締役会報告`. Giữ nguyên r16 d37. Khi đó trục nhất quán: **>¥18M = 報告 HĐQT · >¥20M = 承認 HĐQT** — vừa hết mâu thuẫn vừa dạy đúng phân tầng thật của Nhật (đây là điểm dạy học GIÁ TRỊ, nên giữ).

---

### 🔴 B-2 — `rule_13` dời deadline mà không ai xác nhận, mâu thuẫn r12

- `rule_12` d42, 大垣: 「**7 月末**までに<ruby>本番投入</ruby>できれば<ruby>理想</ruby>です。」
- `rule_13` d43, ズン đơn phương: 「Timeline は **7 月末→ 8 月中旬**に<ruby>余裕</ruby>を<ruby>持たせる</ruby><ruby>案</ruby>も<ruby>併せて</ruby>ご<ruby>提案</ruby>します。」
- `rule_16` d39, 大垣: quy trình duyệt còn **3 bước / 3 tuần**; d40 ズン: *"Em sẽ ghép lại thời hạn dựa trên đó"* — tức timeline **vẫn chưa chốt**.

Mức độ: **nhẹ hơn B-1/B-3**. Đọc kỹ thì r13 dùng chữ `案`(phương án) + `ご提案します` (sẽ đề xuất) nên không hẳn là chốt. Nhưng bản VN dịch *"em đề xuất nới thời hạn cuối tháng 7 → giữa tháng 8"* làm mất sắc thái "chỉ là một phương án song song" → học viên dễ hiểu là đã dời.

**Đề xuất:** không cần sửa JA. Chỉnh vế VN cho khớp `も…併せて`: *"em xin đề xuất **thêm một phương án** nới thời hạn cuối tháng 7 → giữa tháng 8 để có dư địa ạ"*. (Xem thêm E-1.)

---

## 2. 🔴 C — Tiếng Nhật sai

### ✅ C-1 — `rule_12` d35 二重敬語 `お伺いさせていただきます` — XÁC MINH ĐỘC LẬP: ĐÚNG CÓ LỖI

> Nguyên văn (strip ruby): 「**5 観点でお伺いさせていただきます**【1】。まず Pain — …」
> VN: *Em xin phép hỏi theo 5 trục ạ.*

Kiểm chứng: `伺う` **tự nó đã là 謙譲語 I** của 聞く/尋ねる/訪ねる. Chồng thêm `お〜する` + `させていただく` là ba tầng khiêm nhường cho một hành động. Nguồn tiếng Nhật xác nhận đây là 誤用 điển hình, và lưu ý cả `お伺いします`/`お伺いいたします` cũng đã bị coi là 二重敬語 (dù được dùng rộng rãi như 慣用).

**Đề xuất:** `5 観点で伺わせていただきます` (nếu muốn giữ sắc thái xin phép) hoặc gọn nhất **`5 観点でお伺いします`** → nhưng an toàn nhất về mặt giáo trình BJT là **`5 観点で伺います`**.
⚠️ Lưu ý: main Claude ghi đề xuất `お伺いします` — hợp lệ trên thực tế nhưng vẫn nằm trong danh sách 二重敬語 của nhiều tài liệu. **Sách dạy BJT J2-J1 nên dùng `伺います`** để không tự mâu thuẫn với chính mục "Tránh" của các rule khác.

### ✅ C-2 — `rule_12` d43 + `rule_16` d23 `大垣部長様` — XÁC MINH ĐỘC LẬP: ĐÚNG CÓ LỖI

> `rule_12` d43: 「<ruby>中村</ruby> CFO <ruby>様</ruby> + **<ruby>大垣</ruby><ruby>部長</ruby><ruby>様</ruby>**の<ruby>合議</ruby>でよろしいでしょうか？」
> `rule_16` d23 (khối XẤU): 「<ruby>決裁</ruby>は**<ruby>大垣</ruby><ruby>部長</ruby>様**ですよね？」 — *Người duyệt là anh Ōgaki phải không ạ?*

`部長` là 役職名 đã hàm kính ý; `〜部長様` là 二重敬語 kinh điển. Đúng: **`大垣部長`** hoặc **`大垣様`**.

**⚠️ Điểm quan trọng phân biệt hai ca:**
- `rule_12` d43 nằm trong **khối TỐT** → lỗi thật, học viên sẽ học thuộc → **PHẢI SỬA**.
- `rule_16` d23 nằm trong **khối XẤU** (Hội thoại XẤU — xác nhận sai người). Về lý thuyết một lỗi keigo trong khối XẤU có thể là chủ ý. **Nhưng ở đây KHÔNG phải chủ ý**: phần "Vì sao xấu" (d28) và mục "Tránh" (d59-62) chỉ phê phán *"đoán người quyết định"*, **không hề nhắc keigo**. Học viên đọc sẽ tưởng `部長様` là cách nói bình thường, chỉ có nội dung sai. → **VẪN PHẢI SỬA**, hoặc (tốt hơn về mặt dạy học) giữ nguyên và **bổ sung 1 gạch đầu dòng vào mục Tránh**: *"`大垣部長様` — 二重敬語, chức danh đã hàm kính ngữ. Đúng: `大垣部長`"*. Cách sau biến lỗi thành bài học.

Đối chiếu: `中村 CFO 様` (r11 d35, r12 d43, r16 d36) **KHÔNG phải lỗi** — `CFO` là chức danh tiếng Anh, không mang kính ý sẵn trong tiếng Nhật, `CFO様` là cách dùng phổ biến và chấp nhận được. → xem danh sách CẤM SỬA.

### 🆕 C-3 — `rule_15` d38 `想定されておられますか` — 二重敬語 (MAIN CLAUDE CHƯA BẮT)

> Nguyên văn (strip ruby): 「Phase 2 が ¥14.5M でしたが、Phase 3 は<ruby>機能拡張</ruby>として<ruby>規模感的</ruby>にどのあたりを**<ruby>想定</ruby>されておられますか**【2】？」
> VN: *Phase 2 là ¥14.5M, Phase 3 là mở rộng chức năng thì quý anh dự ở mức quy mô nào ạ?*

**Phân tích:** `想定される` = 尊敬語 (thể れる/られる). `おられる` = `おる` + `れる`, tự nó cũng đang mang chức năng tôn kính trong câu này. Ghép thành `されておられる` = **chồng hai tầng 尊敬語 lên cùng một hành động** — đúng dạng 二重敬語/過剰敬語 mà tài liệu tiếng Nhật liệt kê thẳng tên (`〜されておられます`).

Thêm một tầng vấn đề: `おる` gốc là **謙譲語** của `いる`; ở Kanto `おられる` bị nhiều người coi là không chuẩn khi nói về người trên (chỉ được chấp nhận rộng ở Kansai/văn viết trang trọng). Với đối tượng là **CFO khách hàng** trong sách dạy BJT J2-J1, đây là rủi ro không đáng có.

**Đề xuất:** `どのあたりを**ご想定でしょうか**` (gọn, an toàn nhất) hoặc `どのあたりを**想定されていますか**` / `**想定していらっしゃいますか**`.

**Đây là ca thứ 4, nâng tổng số 二重敬語 phần II từ 3 → 4.** Phép đo #2 của main Claude (3 ca toàn sách) **thiếu 1** vì pattern `されておられ` không nằm trong bộ dò `部長様`/`お伺いさせて`.
→ **Khuyến nghị main Claude quét lại TOÀN SÁCH** với các pattern bổ sung: `されておられ`, `れておられ`, `していらっしゃられ`, `お〜になられ`, `ご〜されて`.

### Đã kiểm và KHÔNG có lỗi (chống phóng đại)

| Chuỗi | Rule/dòng | Phán định |
|---|---|---|
| `させていただきます` | r10 d36, r11 d35, r15 d40, r17 d38 | ✅ ĐÚNG — đều là hành động của MÌNH có xin phép (`ご協力させていただいた`, `振り返りをさせていただきます`, `参考にさせていただきます`, `ご説明させていただきます`). Không chồng với 謙譲語 sẵn có. **CẤM SỬA**. |
| `拝見しました` | r10 d36 | ✅ ĐÚNG — 謙譲語 của 見る, dùng cho hành động của mình. |
| `賜り` | r11 d36 | ✅ ĐÚNG — 謙譲語 trang trọng, hợp bối cảnh CFO. |
| `いらっしゃいますか` | r12 d43, r16 d38 | ✅ ĐÚNG — 尊敬語 đơn tầng. |
| `ございますでしょうか` | r11 d36 | 🔵 Về lý thuyết là 丁寧語 chồng nhẹ, nhưng đây là **慣用表現 đã được chấp nhận rộng rãi trong 商談**. **CẤM SỬA**. |
| `お忙しい中`, `忌憚ないご意見` | r10 | ✅ ĐÚNG, rất chuẩn văn thương mại. |
| `IT 部門長様` | r13 d41, d43 | ✅ ĐÚNG — `部門長` là 職名 nhưng KHÔNG kèm họ; `〜長様` dạng này được dùng phổ biến khi không nêu tên. Khác hẳn `大垣部長様`. **CẤM SỬA**. |

---

## 3. 🔴 A — Dạy làm sai việc thật: **KHÔNG PHÁT HIỆN**

Đã soi đúng 3 trục mà prompt yêu cầu, kết luận **phần II an toàn**:

**(a) Câu hỏi khai thác có vượt ranh giới lịch sự / moi thông tin không được phép?** → **KHÔNG.**
Ngược lại, sách dạy rất đúng chuẩn mực: r15 dạy **không** hỏi thẳng `予算いくらですか`, dùng khung/dải/so sánh. r12 【3】 nhắc lại nguyên tắc đó. r13 dạy dùng câu hỏi mở `もう少し詳しくお聞かせいただけますでしょうか` thay vì `なんでですか` (mục Tránh d63). Không có chỗ nào dạy khai thác thông tin nội bộ khách qua đường không chính đáng.

⚠️ **Một điểm cần chủ nhà lưu ý (không phải lỗi phần II)**: `rule_02` d36 và `rule_04` d36 (**phần I — ngoài phạm vi tôi**) dạy dùng thông tin *"anh Tanaka có **lộ** trên Slack"* và *"**tin đồn** báo giá Y社 ¥22M"* làm cơ sở định giá. Phần II **kế thừa sạch** trục giá đó mà không kế thừa cách lấy tin. Ghi lại để N1/N5 xét — **tôi không sửa**.

**(b) Mirroring có bị dạy thành thao túng?** → **KHÔNG.** `rule_14` dạy mirroring đúng bản chất *kiểm tra hiểu đúng*, không phải kỹ thuật tạo thiện cảm giả:
- d36 mẫu câu là **xác nhận nội dung** (`とのご認識でよろしいでしょうか`), có mời khách đính chính.
- d42 【2】 và mục Tránh d57-58 **cấm thẳng** việc bóp méo: *"Phản chiếu chỉ những gì mình thích, bỏ qua sắc thái khó"*, *"Diễn đạt lại quá xa nguyên văn"*.
- Đây là ranh giới đúng: mirroring theo kiểu "lặp 3 chữ cuối để tạo cảm giác đồng điệu" (kiểu Chris Voss) mới là chỗ dễ trượt sang thao túng — **sách KHÔNG dạy kiểu đó**, mà dạy 要約確認. ✅ Điểm mạnh nên giữ.

**(c) Xác định 決裁者 có đúng quy trình 稟議?** → **ĐÚNG VỀ QUY TRÌNH**, chỉ sai con số (đã nêu ở B-3). Cụ thể đúng:
- Hỏi cả **người duyệt** lẫn **các bước còn lại** (r16 d38) — đúng thực tế Nhật, nơi 決裁 chỉ là mắt cuối của chuỗi 根回し→稟議→決裁.
- Chuỗi 技術review → 予算審議(経理部) → 法務contract review → 決裁 → 取締役会 (r16 d39) là **hợp lý và khớp thực tế** doanh nghiệp Nhật tầm trung.
- r12 【4】 dạy hỏi *"còn ai cần tham vấn"* — đúng tinh thần 稟議 (nhiều 押印, có 決裁者 ẩn).
- r13 dạy **chuẩn bị tài liệu để đối tác dễ trình 稟議 nội bộ** (white paper/PoC) — đây là cách làm đúng và rất thực dụng ở Nhật.

---

## 4. 🔴 D — Sai sự thật (đã WebSearch)

### D-1 (nhẹ) — `rule_12` d3: *"Tỉ lệ thương vụ chốt được tăng 2-3x khi khai thác thông tin đầy đủ"*

> VN: *Bỏ qua 1 nhóm = đoán mò → khả năng cao báo giá sai. **Tỉ lệ thương vụ chốt được tăng 2-3x** khi khai thác thông tin đầy đủ.*

Kiểm chứng: con số này **có tồn tại trong tài liệu ngành sales** (khung BANT/discovery được nhiều nguồn ghi nhận cải thiện conversion tới ~3x; dữ liệu HubSpot: deal có ≥4 stakeholder chốt gấp ~3x deal single-threaded). Tuy nhiên toàn bộ là **nguồn blog nhà cung cấp CRM, không phải nghiên cứu học thuật**, và con số dao động rất rộng (15-25% / 20-30% / 2x / 3x tùy nguồn và tùy định nghĩa).

**Phán định:** 🔵 **KHÔNG phải sai sự thật**, nhưng là khẳng định định lượng chắc nịch dựa trên nguồn yếu — dạng câu dễ bị phản bác.
**Đề xuất (tuỳ chọn):** hạ giọng thành *"Theo các khảo sát ngành, quy trình khai thác thông tin có hệ thống giúp tăng đáng kể tỉ lệ chốt"* — bỏ con số, hoặc giữ nhưng thêm *"theo khảo sát ngành"*.

### D-2 (nhẹ) — `rule_15` d3: *"khách chia sẻ dải ngân sách 80% trường hợp"* + tiền đề "hỏi thẳng = thất bại"

> VN: *Chọn đúng câu hỏi → khách chia sẻ dải ngân sách **80% trường hợp**.*
> JA d3: 直接「予算は？」は日本顧客に答えにくい。

Kiểm chứng nguồn tiếng Nhật (tài liệu đào tạo 営業 Nhật): **hỏi ngân sách tự nó KHÔNG bị coi là 失礼**. Cái quyết định là **cách hỏi** — có クッション言葉 (`もし差し支えなければ`, `ご参考までに`) hoặc hỏi giả định (`仮に〜のような仕様でしたら、どのくらいの価格帯であればご検討いただけそうですか`) thì khách Nhật vẫn trả lời bình thường. Nhiều tài liệu còn khuyên **xác nhận ngân sách sớm**.

**Phán định:** 🔵 Hướng dạy của rule 15 **đúng và hữu ích** (gián tiếp an toàn hơn), nhưng **luận điểm bị tuyệt đối hoá**: nói `予算いくら?` khiến khách "cảm giác bị ép/đe dọa" là hơi quá; và `80%` không có nguồn.
**Đề xuất:**
1. Bỏ hoặc làm mềm con số `80%`.
2. Thêm 1 gạch vào 📝 Ghi chú: cách thứ 4 — **クッション言葉 + câu hỏi giả định** (`もし差し支えなければ、仮に〜の場合、どの価格帯でしたらご検討いただけますでしょうか`). Đây là **bổ sung giá trị thật**, đúng thực tế Nhật, và lấp chỗ mà sách đang dạy thiếu.

### Đã kiểm và ĐÚNG (không sửa)

| Nội dung | Rule | Phán định |
|---|---|---|
| 稟議 / 決裁 / 付議 phân tầng theo ngưỡng tiền | r12, r16 | ✅ ĐÚNG thực tế — 決裁権限規程 Nhật đúng là phân 報告/承認/決定 theo bậc tiền và bậc chức. Cấu trúc dạy học tốt. |
| `¥10M` là ngưỡng quyền 部長 ở DN tầm trung | r16 d24 (r04 d41 giải thích) | ✅ Hợp lý, khớp dải phổ biến (百万円〜千万円 tuỳ quy mô). |
| 取締役会 có phân biệt 報告事項 vs 決議事項 | r16 d37 | ✅ ĐÚNG — đây là phân biệt pháp lý có thật (会社法362条4項). Điểm dạy học GIÁ TRỊ. |
| Chu kỳ tài chính Nhật 4月-3月, 新年度 | r10 d36, r11, r12 d39 | ✅ ĐÚNG. |
| 「ちょっと」/「少し時間がかかる」 là tín hiệu từ chối gián tiếp | r13 | ✅ ĐÚNG — đặc trưng giao tiếp gián tiếp Nhật, dạy chuẩn. |
| Im lặng / ngập ngừng = 熟考 hoặc bất đồng, không phải đồng ý | r13 | ✅ ĐÚNG. |

---

## 5. 🟡 E — Tiếng Việt (kiểm CẢ vế Việt lẫn vế Nhật)

### E-1 — `rule_13` d43: dịch làm mất sắc thái "chỉ là phương án song song"
> JA: 「Timeline は 7 月末→ 8 月中旬に<ruby>余裕</ruby>を<ruby>持たせる</ruby>**<ruby>案</ruby>も<ruby>併せて</ruby>**ご<ruby>提案</ruby>します。」
> VN hiện tại: *Đồng thời **em đề xuất nới thời hạn** cuối tháng 7 → giữa tháng 8 cho có dư địa ạ.*

`案も併せて` = "**thêm cả một phương án** (bên cạnh phương án hiện có)". Bản VN bỏ mất `案` và `も`, biến đề xuất song song thành đề xuất dời hạn dứt khoát → chính là nguồn gốc cảm giác mâu thuẫn B-2.
**Đề xuất:** *"Đồng thời em xin đề xuất **thêm một phương án** nới thời hạn cuối tháng 7 → giữa tháng 8 để có dư địa ạ."*

### E-2 (chính tả) — `rule_12` d27: **"gấp gáo"** → **"gấp gáp"**
> *Không biết trần ngân sách, mức độ **gấp gáo** của thời hạn, quy trình ra quyết định.*

Lỗi gõ. Đúng: **"gấp gáp"** (hoặc viết lại *"mức độ gấp của thời hạn"*).

### E-3 (thuật ngữ, rất nhẹ) — `rule_13` d41 dịch `white paper` → *"báo cáo kỹ thuật"*, d43 dịch → *"tài liệu minh chứng bảo mật"*
Cùng một khái niệm trong hai dòng liền nhau được dịch hai kiểu khác nhau. 🔵 Không sai nghĩa, nhưng thiếu nhất quán. Cân nhắc thống nhất (vd: đều dùng *"tài liệu kỹ thuật (white paper)"*).

### Đã kiểm và KHÔNG có lỗi (chống phóng đại)

- **Xưng hô:** kiểm toàn bộ 8 rule theo đúng quy tắc mục 4E (chỉ báo khi bản Nhật cho thấy người nói TỰ nói về mình). ズン tự xưng **"em"** khi vế Nhật có `私ども`/`〜させていただきます`/`申します` — **hợp lệ 100%**. 大垣/中村 gọi ズン là "em" là **ngôi 2** — hợp lệ (đúng bài học sách 08/09). フオン gọi ズン "em" — hợp lệ. **0 lỗi xưng hô.**
- **Tiếng Anh trong ô tiếng Nhật:** phần II có `Phase / CFO / GMV / ROI / KPI / Pain / Goal / Timeline / Decision / agenda / cost / price / deck / discovery / framework / white paper / PoC / brief / security / explainability / technical review / contract review / trade-off`. **KHÔNG báo là lỗi** — đã quét toàn sách: **42/45 rule** có tiếng Anh chữ thường trong lời thoại Nhật → đây là **quy ước văn phong xuyên sách** (bối cảnh IT B2B, đúng thực tế 商談 ngành IT Nhật). Phần II thậm chí còn **nhẹ hơn trung bình** (r12/r15 chỉ 1 dòng; trong khi r42 có 10, r37 có 9). → **CẤM SỬA theo phạm vi phần II.** Nếu chủ nhà muốn đổi thì phải làm **toàn sách**, không làm lẻ.
- **Ký tự lạ** (Hán giản thể / Hangul): **0** — khớp phép đo #3 của main Claude.
- **Emoji ✅/❌ bị strip:** **0** trong phần II.
- **Furigana:** nhất quán, không có ca thiếu ruby do lặp câu (bug 1.3 sách 03). Đã kiểm các câu lặp giữa khối XẤU và khối TỐT — r13 d23↔d38, r14 d21↔d35, r17 d23↔d37: **cả 3 cặp đều mất ruby ở bản thứ hai**, nhưng xem kỹ thì bản thứ hai **cố ý bỏ ruby cho từ đã ruby ở khối trên** (r13 d38 vẫn giữ nguyên văn không ruby, r14 d35 tương tự). 🔵 **Cần main Claude quyết**: nếu sách theo quy ước "ruby chỉ lần xuất hiện đầu trong rule" thì đúng; nếu không thì đây là bug ruby-loss dạng 1.3 và phải chạy script đắp ruby **toàn sách** (tôi KHÔNG sửa vì vượt phạm vi và cần quyết định xuyên sách).

---

## 6. 🟡 F — Nhất quán & meta

### F-1 (nặng, riêng phần II) — `rule_16` d39: NHÂN VẬT KHÁCH HÀNG đọc số hiệu rule trong sách

> JA: 「IT <ruby>部門長</ruby> technical review **(rule 13 で<ruby>出た</ruby><ruby>件</ruby>)**、<ruby>経理部</ruby>の<ruby>予算</ruby> cycle <ruby>審議</ruby>…」
> VN: *Trưởng phòng IT xem xét kỹ thuật **(vấn đề nêu ở rule 13)**, phòng kế toán thẩm định chu kỳ ngân sách…*

Đây là **lời thoại của 大垣 — nhân vật khách hàng Nhật**. Một trưởng phòng kinh doanh Hakuō không thể trong buổi đàm phán mà dẫn chiếu "vấn đề nêu ở rule 13" của sách giáo trình. Đây là **chú thích biên tập lọt vào ô thoại**, phá vỡ hoàn toàn tính hiện thực của hội thoại — và học viên luyện nói theo sẽ đọc luôn cả cụm này.

Đã quét toàn sách: chỉ có **3 dòng thoại** chứa tham chiếu rule (`r02 d37`, `r16 d39`, `r37 d46`). Nhưng r02 d37 và r37 d46 là lời **nhân vật nội bộ** (フオン, ズン) — vẫn không lý tưởng nhưng còn đỡ. **`rule_16` d39 là ca duy nhất mà KHÁCH HÀNG đọc số rule** → nặng nhất.

**Đề xuất:** bỏ cụm khỏi lời thoại JA, chuyển thành nội dung tự nhiên: `(<ruby>先ほど</ruby>お<ruby>話し</ruby>した<ruby>件</ruby>)` — *"(vấn đề vừa trao đổi lúc nãy)"*. Vế VN sửa tương ứng. Nếu muốn giữ cross-ref cho học viên thì đưa xuống **📝 Ghi chú 【2】**, không để trong ô thoại.

### F-2 — Mục lục vs H1: 7/8 rule phần II lệch cột **Tên VN**

| # | H1 trong rule.md | mục_lục.md cột "Tên VN" | Cột "Tên JP" |
|---|---|---|---|
| 10 | Câu mở chào lịch sự | Câu mở chào lịch sự | ✅ khớp |
| 11 | Thiết lập bối cảnh + chương trình | ❌ *Set context + agenda* | ✅ khớp |
| 12 | Câu hỏi tìm hiểu nhu cầu: 5 nhóm | ❌ *Đặt câu hỏi discovery* | ✅ khớp |
| 13 | Lắng nghe ràng buộc ẩn | ❌ *Listen for hidden constraints* | ✅ khớp |
| 14 | Phản chiếu + tóm tắt | ❌ *Mirror + summarize* | ✅ khớp |
| 15 | Thăm dò mức độ nhạy cảm giá | ❌ *Probe price sensitivity* | ✅ khớp |
| 16 | Xác nhận người có quyền quyết định | ❌ *Confirm decision authority* | ✅ khớp |
| 17 | Phân bổ thời gian thảo luận | ❌ *Time-box discussion* | ✅ khớp |

**Nguyên nhân (đúng như dự đoán mục 4F của rule):** mục lục là **bản chưa Việt hoá** — cột "Tên VN" vẫn còn tiếng Anh dàn ý gốc, trong khi rule.md đã Việt hoá. Cột Tên JP khớp 8/8.
**Con số này khớp phép đo #1 của main Claude** (VN lệch 37/45 toàn sách) → **KHÔNG phải lỗi riêng phần II**, phải sửa mục lục **một lượt cho cả 45 rule**, không sửa lẻ.
**Đề xuất:** đồng bộ cột "Tên VN" của mục_lục.md theo H1 của rule.md (H1 là bản đúng, đã Việt hoá).

### F-3 — Front matter khớp phần II ✅
`_front_matter.md` d16 ghi *"II | Mở đàm phán & Tìm hiểu nhu cầu | 8"*, mục lục ghi *"II | Mở đàm phán + Discovery | 8"*. Số rule **8 = đúng thực tế** (8 file rule.md). 🔵 Tên phần khác nhau chút giữa hai file (`& Tìm hiểu nhu cầu` vs `+ Discovery`) — rất nhẹ, thuộc việc đồng bộ meta toàn sách của N5.

### F-4 — Cross-reference trong phần II: kiểm 8/8, **KHÔNG có lỗi**
Đã phân biệt cẩn thận cross-ref cùng sách vs LIÊN SÁCH (bẫy mục 1.6):

| Rule | Dòng Liên quan | Phán định |
|---|---|---|
| 10 | rule 11 · **sách 03 rule 09** (第一声) · **sách 05 rule 06** | ✅ giữ đủ tiền tố "sách", nội dung khớp chủ đề |
| 11 | rule 10, rule 17 · **sách 03 rule 13** (chương trình nghị sự) | ✅ |
| 12 | rule 13, 15, 16 | ✅ cùng sách, mô tả khớp |
| 13 | rule 03 (稟議), rule 12, rule 14 | ✅ |
| 14 | rule 12, 13 · **sách 03 rule 24** (tóm tắt) | ✅ |
| 15 | rule 12, rule 02 (ZOPA), rule 18 (neo giá) | ✅ |
| 16 | rule 04, rule 12, rule 03 | ✅ |
| 17 | **sách 05 rule_13** · rule 11, rule 18 | ✅ khớp mục lục d61 |

Đối chiếu mục lục d61 ghi rule 17 *"Cross-ref sách 05 rule_13"* — rule.md d7 ghi đúng y hệt. ✅

### F-5 — Bảng từ vựng: kiểm 8/8, **KHÔNG có lỗi nội dung**
Mọi từ trong bảng đều **thực sự xuất hiện** trong thoại của chính rule đó; Hán Việt và cách đọc đều đúng. Riêng 2 mục nhỏ:
- `rule_11` d73 `アジェンダ` và d76 `共通認識`: hai từ này **không xuất hiện dạng đó trong thoại** (thoại dùng `agenda` chữ Latin ở d38, và `共通コンテキスト` ở d5). 🔵 Rất nhẹ — vẫn là từ đúng chủ đề, chấp nhận được như từ vựng mở rộng.
- `rule_12` d83 `取締役会` Hán Việt ghi **"THỦ ĐẾ DỊCH HỘI"** — 締 đúng là "ĐẾ"; nhưng `取締役` theo cách đọc Hán Việt phổ biến là **"THỦ ĐẾ DỊCH"**. ✅ Không sai. (r16 d72 ghi giống hệt → nhất quán.)

---

## 7. Đối chiếu với thước đo của main Claude

| Phép đo | Main Claude | N2 xác minh | Ghi chú |
|---|---|---|---|
| #1 Mục lục vs H1 | VN lệch 37/45 | **7/8 trong phần II lệch cột VN, JP khớp 8/8** | ✅ Khớp. Lỗi book-wide, đừng sửa lẻ. |
| #2 二重敬語 | 3 ca | **4 ca** (thêm r15 d38 `されておられ`) | ⚠️ Phép đo thiếu 1 vì bộ pattern hẹp. Đề nghị quét lại toàn sách. |
| #3 Ký tự lạ | 0 | **0** trong phần II | ✅ Khớp |
| #4 Emoji strip | 0 | **0** trong phần II | ✅ Khớp |
| #5 Tiền `¥` | 43 giá trị | Phần II dùng 11 mốc, **không phá trục sách**, nhưng có **3 mâu thuẫn** (B-1, B-2, B-3) | ⚠️ Đúng dự đoán "trục ZOPA phải nhất quán" |

### Về "bẫy `¥18M`" mà main Claude đặt ra
**Phán định của tôi: đây là QUY ƯỚC CÓ CHỦ Ý → CẤM SỬA.**
Lý do: ký hiệu `¥XXM` xuất hiện **thống nhất tuyệt đối ở cả 45 rule** (0 chỗ dùng `万円`), trong **cả vế Nhật lẫn vế Việt**, cả trong bảng lẫn trong thoại. Sách nhắm học viên Việt làm B2B IT — dải `M` dễ đọc hơn `1,800万円` cho người Việt và khớp với văn phong Anh-Nhật lẫn lộn mà chính sách đã chọn (42/45 rule). Đổi sang `万円` là **đại phẫu 45 rule** với lợi ích dạy học không rõ ràng.
🔵 **Nếu chủ nhà vẫn muốn tăng độ thật**: cách rẻ và an toàn là **thêm 1 dòng chú thích ở `_front_matter.md`** — *"Sách dùng ký hiệu ¥18M = 1,800万円; trong văn bản Nhật thật thường viết 万円"*. Vừa giữ nguyên 45 rule, vừa dạy học viên biết cách viết thật.

---

## 8. ⛔ CẤM SỬA — danh sách chỗ ĐÚNG dễ bị sửa nhầm

| # | Chỗ | Vì sao CẤM SỬA |
|---|---|---|
| 1 | **`中村 CFO 様`** (r11 d35, r12 d43, r16 d36) | KHÔNG phải 二重敬語. `CFO` là chức danh tiếng Anh, không mang kính ý sẵn trong tiếng Nhật → `CFO様` hợp lệ và phổ biến. **Chỉ `大垣部長様` mới sai.** Sửa nhầm cả cụm `CFO様` là sai. |
| 2 | **`IT 部門長様`** (r13 d41, d43) | Hợp lệ — `部門長` không kèm họ, dạng `〜長様` khi không nêu tên là cách dùng bình thường. Khác hẳn `大垣部長様`. |
| 3 | **`させていただきます`** ở r10 d36, r11 d35, r15 d40, r17 d38 | Đều ĐÚNG — hành động của mình + xin phép, không chồng lên 謙譲語 sẵn có. **Chỉ r12 d35 sai vì chồng với `伺う`.** Đừng quét-thay hàng loạt `させていただ`. |
| 4 | **`ございますでしょうか`** (r11 d36) | 慣用表現 đã được chấp nhận rộng rãi trong 商談. Không phải lỗi. |
| 5 | **Tiếng Anh trong lời thoại Nhật** (`Phase`, `cost`, `agenda`, `PoC`, `white paper`, `trade-off`…) | **Quy ước xuyên sách: 42/45 rule.** Phần II còn nhẹ hơn trung bình. Sửa lẻ phần II sẽ làm sách MẤT nhất quán. |
| 6 | **Ký hiệu `¥18M`** | Quy ước có chủ ý, thống nhất 45/45 rule, 0 chỗ dùng `万円`. Xem mục 7. |
| 7 | **`BATNA`, `ZOPA`, `slide`, `demo`, `PoC`, `ROI`, `GMV`, `KPI`, `SLA`** | Thuật ngữ chuyên ngành, đã có trong `_thuat_ngu.md`. KHÔNG Việt hoá. |
| 8 | **`rule_16` d37 `¥20M 超えると取締役会承認`** | Đây là vế ĐÚNG của mâu thuẫn B-3, và dạy đúng phân biệt 報告 vs 承認 (会社法). **Sửa r12 d44 + r16 d36, KHÔNG sửa dòng này.** |
| 9 | **`rule_15` d39/d40/d45 `¥17-20M`** | Đây là vế ĐÚNG của mâu thuẫn B-1 (có cơ sở tính 14.5×1.2-1.4, khớp trần ¥17M của r02). **Sửa `rule_12` d40, KHÔNG sửa 3 dòng này.** |
| 10 | **`rule_14` toàn bộ** | Rule sạch. Cách dạy mirroring = 要約確認 (không phải kỹ thuật tạo thiện cảm) là ĐÚNG và là điểm mạnh đạo đức của sách. Đừng "nâng cấp" thành mirroring kiểu lặp-3-chữ-cuối. |
| 11 | **`rule_15` hướng dạy hỏi ngân sách gián tiếp** | Hướng đúng, giữ. Chỉ nên làm mềm con số `80%` và bổ sung cách クッション言葉 — **không lật ngược luận điểm**. |
| 12 | **`rule_10` d23 `¥19M` + `rule_12` d23 `¥19M`** | Nằm trong khối **XẤU**, là số cố ý sai bối cảnh (báo giá khi chưa discovery). Khớp anchor `¥19M` của r05 d35 / r09 d21. KHÔNG phải mâu thuẫn. |
| 13 | **`rule_16` d23 `大垣部長様` — cách xử lý** | Là lỗi thật NHƯNG nằm trong khối XẤU. **Đừng lặng lẽ sửa mất**: ưu tiên giữ + bổ sung 1 dòng vào mục "Tránh" để biến thành bài học (xem C-2). |

---

## 9. Việc ngoài phạm vi — GHI LẠI, KHÔNG TỰ SỬA

1. **`rule_02` d36 / `rule_04` d36 (phần I)** — dạy dùng thông tin *"anh Tanaka **lộ** trên Slack"* và *"**tin đồn** báo giá đối thủ ¥22M"* làm cơ sở định giá. Cần N1/N5 xét trục đạo đức thu thập thông tin. Phần II không kế thừa cách làm này.
2. **Bug ruby-loss dạng 1.3** — r13 d23↔d38, r14 d21↔d35, r17 d23↔d37 đều mất ruby ở bản lặp thứ hai. Cần main Claude **quyết định quy ước xuyên sách** (ruby chỉ ở lần đầu trong rule?) rồi mới chạy script toàn sách. Tôi không sửa.
3. **Quét lại 二重敬語 toàn sách** với pattern mở rộng `されておられ` / `れておられ` / `していらっしゃられ` / `お〜になられ` — phép đo #2 hiện bỏ sót (đã chứng minh bằng C-3).
4. **`meta/mục_lục.md` cột "Tên VN"** — 37/45 chưa Việt hoá. Phải sửa một lượt toàn sách, không sửa lẻ 7 dòng của phần II.

---

## 10. Thứ tự sửa đề nghị cho phần II

| Ưu tiên | Việc | File / dòng |
|---|---|---|
| 1 | 🔴 B-1 dải ngân sách `¥15-20M` → `¥17-20M` | `rule_12` d40 (⚠️ ruby sau số — `sed -n '40p'` trước) |
| 2 | 🔴 B-3 ngưỡng HĐQT: `付議` → `報告` | `rule_12` d44 + `rule_16` d36 (giữ nguyên r16 d37) |
| 3 | 🔴 C-1 二重敬語 `お伺いさせていただきます` → `伺います` | `rule_12` d35 (sửa cả vế VN nếu đổi sắc thái) |
| 4 | 🔴 C-3 二重敬語 `想定されておられますか` → `ご想定でしょうか` | `rule_15` d38 |
| 5 | 🔴 C-2 `大垣部長様` → `大垣部長` | `rule_12` d43 (khối TỐT — sửa thẳng) · `rule_16` d23 (khối XẤU — ưu tiên bổ sung mục Tránh) |
| 6 | 🟡 F-1 bỏ `(rule 13 で出た件)` khỏi lời thoại khách | `rule_16` d39 (JA + VN) |
| 7 | 🟡 E-2 `gấp gáo` → `gấp gáp` | `rule_12` d27 |
| 8 | 🟡 E-1 dịch lại `案も併せて` | `rule_13` d43 (vế VN) |
| 9 | 🔵 D-1/D-2 làm mềm `2-3x` và `80%` | `rule_12` d3 · `rule_15` d3 |
| 10 | 🔵 D-2b bổ sung クッション言葉 làm cách hỏi thứ 4 | `rule_15` 📝 Ghi chú |

**Nhắc:** mọi sửa số tiền phải `sed -n '<dòng>p'` xem nguyên văn CÒN RUBY rồi mới copy — r12 d40, r15 d39/d40 đều có ruby chen ngay sau chữ số.
