# [09-R3] Rà soát chương 07–08 + NHẤT QUÁN TOÀN SÁCH — đợt 2

> Ngày: 2026-08-16 · Agent R3 (Opus)
> Phạm vi: `nội_dung/chương_07_新製品発表/chương.md` (544 dòng), `nội_dung/chương_08_結婚式/chương.md` (543 dòng),
> `_front_matter.md`, `_back_matter.md`, đối chiếu nhất quán 8 chương.
> `voice_profiles.json` — CHỈ ĐỌC đối chiếu, không sửa.
> Đã đọc trọn `.claude/rules/book-review.md`, `_review/00_TIEN_DO.md`, `_review/B2_chuong_05_08.md`.

---

## 0. BẢNG TỔNG KẾT

| Mức | Số lỗi | Nội dung chính |
|---|---|---|
| 🔴 | **9** | 1 typo JA đợt 1 báo nhầm "không tìm thấy" (vẫn còn) · 1 fix nửa vời JA-only · 袱紗 vẫn thiếu hoàn toàn · ファーストバイト đảo chiều · chiều tờ tiền goshugi mô tả THIẾU vế quyết định · dòng thời gian 4 mốc chọi nhau · nội dung 友人スピーチ vẫn hạ thấp cô dâu · tờ ¥10,000 lỗi thời · RSVP dạy thiếu bước 「御」 |
| 🟡 | **11** | 70% キリスト教式 sai số · catalog giao VN · 主賓祝辞+乾杯 gộp một người · 忘れません trong 二次会 · 3 nhân vật họ 佐藤 · 田中専務 trùng họ 田中PMO · mục lục lệch H1 4/8 · ch08 recap "3 lỗi" nhưng nhân vật chỉ mắc 2 · Bí quyết tổng ch08 dùng ồ ạt tiếng Anh · ch07 d116 "mày/tao" lệch giọng · 放鳥 |
| 🔵 | **5** | Pacifico Hotel · zun_inner không được dùng · nội tâm không tách speaker · thiếu 相槌 · ch08 quy tắc số tờ lẻ diễn giải hơi lệch |

**Số ca "tiếng Anh trong ô JA" là LỖI THẬT ở ch07–08: 8 ca** (không phải 243 — xem mục 3).

**Ba chương/khối SẠCH — nói rõ để không bị sửa nhầm:** khối 忌み言葉 mới thêm (ch08 d182–200) **đúng gần như hoàn toàn**, đã WebSearch kiểm từng dòng; ch07 tình huống 5 (chuyển hướng phóng viên) và tình huống 10 (demo treo) là nội dung dạy đúng nghiệp vụ, không có lỗi.

---

## 1. BẢNG KIỂM CHỨNG FIX ĐỢT 1 (rule mục 5)

Phương pháp: strip ruby bằng python rồi đếm cả chuỗi SAI lẫn chuỗi ĐÚNG. Không kết luận từ grep thô.

| # | Mục đợt 1 khai | Chuỗi SAI còn? | Chuỗi ĐÚNG có? | Phán định |
|---|---|---|---|---|
| 1 | ch07 `ヒアップ`→`ヘッドアップ` | 0 | 1 (d194) | ✅ **ĐÃ FIX** |
| 2 | ch08 `結婚先`→`結婚はまだ先` | 0 | 1 (d450) | ✅ **ĐÃ FIX** |
| 3 | ch08 `文化衝撃`→`カルチャーショック` | 0 | 1 (d448) | ✅ **ĐÃ FIX** |
| 4 | ch08 `chairs CTO`→`ハーCTO` | 0 | 1 (d455) | ✅ **ĐÃ FIX** |
| 5 | ch08 `呼の珍しい` — đợt 1 ghi **"KHÔNG tìm thấy"** | **1 (d218)** | 0 | 🔴 **BÁO CÁO ĐỢT 1 SAI — LỖI VẪN CÒN NGUYÊN** |
| 6 | ch08 `悪い結果は来ない`→`その分ええ出会いがある` | 0 | 1 (d309) | ✅ **ĐÃ FIX** (JA). ⚠️ xem F-2: bản VN không khớp |
| 7 | ch08 `ベトナム帰る?`→`ベトナムへ発つの?` | 0 | 1 (d411) | ✅ **ĐÃ FIX** |
| 8 | ch08 11 dòng thêm nhãn `(ベトナム語)` (d26–37) | — | 12/12 dòng VN d25–37 đều có nhãn | ✅ **ĐÃ FIX ĐỦ** |
| 9 | ch07 名刺交換 — Dũng đưa trước + `頂戴いたします` | — | JA d346 có `先に両手で自分の名刺を差し出す` + `頂戴いたします`; Bí quyết d370–372 viết lại đúng | 🔴 **FIX NỬA VỜI — chỉ JA** (xem A-2) |
| 10 | ch07 d218 xưng hô 中村CFO | `em Tran Van Dung` = 0 | `anh Tran Van Dung` + `mời anh đứng lên` | ✅ **ĐÃ FIX** |
| 11 | ch07 d445 松本 xưng hô | — | `Phía tôi sẽ nói với anh Hà CTO` | ✅ **ĐÃ FIX** |
| 12 | ch08 d464 田中 `お父さんのスピーチ` | `Speech bố em` = 0 | `Bài phát biểu của bố tôi` | ✅ **ĐÃ FIX** |
| 13 | ch08 khối 忌み言葉 mới (vòng 4) | — | d182–200, đủ 4 nhóm + giải thích 入刀 + quy tắc không chấm câu | ✅ **ĐÃ THÊM — nội dung đúng**, xem mục 5 chi tiết |
| 14 | ch08 袱紗 (B2 xếp hạng 🔴 số 7) | — | `袱紗`/`ふくさ`/`フクサ` = **0 lần toàn sách** | 🔴 **CHƯA LÀM** |

**Kết luận mục này:** 10/14 đã fix trọn, 1 fix nửa vời (JA-only), 2 chưa làm, **1 báo cáo đợt 1 kết luận sai**.

### 🔴 R3-01 · `呼の珍しい` — đợt 1 báo "KHÔNG tìm thấy" nhưng LỖI VẪN CÒN
`ch08 dòng 218` · 同席ゲストB
> JA: 「(架空、<ruby>驚<rt>おどろ</rt></ruby>き)ベトナムから?Tanaka が<ruby>外国<rt>がいこく</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>**の**<ruby>珍<rt>めずら</rt></ruby>しい!2<ruby>人<rt>にん</rt></ruby>どうやって<ruby>出会<rt>であ</rt></ruby>ったの?」
> VN: *(khách bàn 2, ngạc nhiên) Từ Việt Nam? Tanaka mời người nước ngoài hiếm lắm! 2 người gặp thế nào?*

**Vấn đề:** `呼の珍しい` không phải tiếng Nhật. Đây là câu cụt — thiếu nominalizer. Lý do đợt 1 tìm không ra: chuỗi bị ruby cắt đôi (`<ruby>呼<rt>よ</rt></ruby>の<ruby>珍<rt>めずら</rt></ruby>しい`), đúng y bẫy rule mục 1.1. Bản Việt dịch đúng ý nên lỗi không lộ ra ở phía Việt.
**Đề xuất:** `<ruby>呼<rt>よ</rt></ruby>**ぶのは**<ruby>珍<rt>めずら</rt></ruby>しい` (giữ nguyên bản Việt).
**⚠️ Khi sửa phải `sed -n '218p'` copy nguyên văn CÒN ruby rồi mới Edit** — đây chính là ca rule 1.1 cảnh báo.

### 🔴 R3-02 · ch07 d346 名刺交換 — FIX NỬA VỜI, bản Việt tụt lại
`ch07 dòng 346` · ズン
> JA (đã sửa đúng): 「(<ruby>先<rt>さき</rt></ruby>に<ruby>両手<rt>りょうて</rt></ruby>で<ruby>自分<rt>じぶん</rt></ruby>の<ruby>名刺<rt>めいし</rt></ruby>を<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す)Tien Phat の Tran Van Dung、ズンとお<ruby>呼<rt>よ</rt></ruby>びください。(<ruby>両手<rt>りょうて</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る)<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<ruby>佐藤<rt>さとう</rt></ruby>さん、ありがとうございます。」
> VN (CHƯA sửa): *(đưa danh thiếp của mình trước bằng 2 tay) Em là Tran Van Dung của Tien Phat, gọi Dũng được ạ. **(đưa danh thiếp mình)*** |

**Vấn đề:** đúng kiểu hụt #2 của rule mục 5 ("vá bản Nhật, quên bản Việt"). Bản Việt:
1. Chỉ thị sân khấu thứ hai vẫn là *(đưa danh thiếp mình)* — trong khi JA đã đổi thành `(両手で受け取る)` = **nhận** bằng 2 tay. Đọc bản Việt thấy Dũng đưa danh thiếp **hai lần**, vô nghĩa.
2. **Mất hẳn** câu `頂戴いたします` — đúng cái điểm dạy học mà vòng 4 thêm vào.
3. Mất luôn `佐藤さん、ありがとうございます`.

**Đề xuất bản Việt:** *(đưa danh thiếp của mình trước bằng 2 tay) Em là Tran Van Dung của Tien Phat, gọi Dũng được ạ. **(nhận bằng 2 tay) Em xin phép nhận ạ. Cảm ơn anh Sato.***

**Đã kiểm chứng nghi thức (WebSearch):** "訪問先での名刺交換では、訪問者が先に名刺を差し出すのがマナー。立場が下の人から名刺を先に渡し… 受け取る際は「頂戴します」と一言添える" — bản JA sửa **đúng**, chỉ bản Việt hụt.

### 🔴 R3-03 · 袱紗 (fukusa) vẫn thiếu hoàn toàn
`ch08 tình huống 2 (d54–96)` — cả cảnh quầy 受付 chi tiết + khối "Bí quyết — Quy tắc goshugi".
Grep toàn sách: `袱紗` = 0, `ふくさ` = 0, `フクサ` = 0.

**WebSearch xác nhận đây là bắt buộc, không phải tuỳ chọn:** 「ご祝儀を持ち運ぶ際は、袱紗（ふくさ）に包むのがマナー」; tại quầy: 「受付の番が来たら、あいさつをしながら袱紗からご祝儀袋を取り出します。さっと畳んだ袱紗をお盆代わりにして上にご祝儀袋をのせ、両手で差し出します」. Màu: 慶事 dùng đỏ/cam/tím; **xanh/xám/lục là 弔事** — dùng nhầm màu là lỗi thấy được ngay.

**Vấn đề nội dung:** ch08 d68 Dũng `(shugi-bukuro 出す)` = rút thẳng từ túi ra. Đây chính là hành vi sách đang dạy học viên bắt chước. Bộ sách chọn dạy cả chi tiết nhỏ như chiều tờ tiền mà bỏ qua fukusa là **lệch trọng số**: người nhận goshugi nhìn thấy fukusa ngay lập tức, còn chiều tiền thì chỉ lộ khi mở ra.
**Đề xuất:** thêm 3 gạch đầu dòng vào khối Bí quyết d86–95 (bọc trong fukusa; tại quầy mở ra, gấp làm khay, xoay mặt tên về phía người nhận rồi đưa 2 tay; **màu đỏ/hồng/tím cho cưới — tuyệt đối không xanh/xám**). Không cần viết lại cảnh thoại.

---

## 2. 🔴 BẢNG DÒNG THỜI GIAN TOÀN SÁCH + PHƯƠNG ÁN SỬA TỐI THIỂU

### 2.1 Trục thời gian thật (trích nguyên văn)

| Ch | Mốc | Trích dẫn nguồn | Dũng ở đâu |
|---|---|---|---|
| 01 | **5/2026** | d5 `2026年5月、東京ビッグサイト…Japan IT Week Spring` · d460 `2026-05-XX` | Bay sang Tokyo |
| 02 | **6/2026** | d5 `2026年6月の土曜、千葉のゴルフ場` · d410 `2026-06-XX` | Tokyo/Chiba |
| 03 | **19/12/2026** | d5 `2026年12月19日(金)、新橋の居酒屋` · d403 `2026-12-19` | Tokyo |
| 04 | **9/2026** | d5 `2026年9月、ズン初めての1週間東京出張` · d527 `2026-09-XX` | Tokyo 1 tuần |
| 05 | **11/2026** | d5 `2026年11月、白鷗5名がHCMC 3日間訪問` · d543 `2026-11-XX` | **HCMC** (chủ nhà) |
| 06 | **1/2027** | d5 `2027年1月、日本の正月明け…熱海温泉` · d474 `2027-01-XX` | Atami |
| 07 | **3/2027** | d5 `2027年3月、横浜パシフィコ` · d502 `2027-03-XX` | Yokohama |
| 08 | **5/2027** | d5 `2027年5月、東京…HCMC から1泊週末` · d493 `2027-05-XX` | **Bay từ HCMC sang, ở 1 đêm** |

→ Trục sự kiện **hoàn toàn nhất quán**: 5/2026 → 5/2027 = **12 tháng**, khớp `_front_matter.md` d42 (*"mạch truyện kéo dài khoảng 12 tháng (5/2026 → 5/2027)"*). ⚠️ Lưu ý thứ tự chương KHÔNG theo thời gian (ch04 tháng 9 nằm sau ch03 tháng 12) — nhưng đó là chủ ý sắp theo **loại tình huống**, không phải lỗi. **CẤM SỬA điểm này.**

### 2.2 Bốn mâu thuẫn — mốc nào chọi mốc nào

| # | Nguồn A | Nguồn B | Mâu thuẫn |
|---|---|---|---|
| **T-1** 🔴 | `ch08 d526` (recap): *"Khoảng **3 năm** câu chuyện trong sách"* | `_front_matter d42`: *"khoảng **12 tháng** (5/2026 → 5/2027)"* | 3 năm ≠ 12 tháng. **Front matter đúng** (khớp 8/8 mốc chương ở 2.1) |
| **T-2** 🔴 | `ch07 d534`: *"**3 năm trước** Phase 1 hồi hộp khi gửi mail cho Matsumoto"* | `ch07 d218` 中村CFO: `2年間共に走ってきた` · `ch07 d224`: `2年前、まだ junior BD` · `ch07 d255`: `2年かけて作った` · `ch08 d219` Dũng: `2年前、Phase 4 プロジェクト` | **4 chỗ nói "2 năm", 1 chỗ nói "3 năm"**. Đa số thắng → d534 sai |
| **T-3** 🔴 | `ch07 d438` 松本 (3/2027): `Tokyo office に半年呼ぶ件、**年明けから**動かしたい` + `d440`: *"Đầu năm = **4 tháng nữa**"* | `ch08 d519-520, d530` (5/2027): *"6 tháng làm việc tại Tokyo **từ Q1 2027**"* | **Bất khả thi kép.** (a) Ở ch07 (3/2027) `年明け` = đầu năm **2028**, và "4 tháng nữa" = 7/2027 — hai vế này đã chọi nhau ngay trong 1 tình huống. (b) Nếu onsite bắt đầu Q1 2027 (1–3/2027) thì tại ch07 (3/2027) Matsumoto không thể còn đang *đề xuất*, và tại ch08 (5/2027) Dũng đã ở Tokyo rồi, không thể "bay từ HCMC sang 1 đêm" (`ch08 d3`, `d5`: `HCMC から1泊週末`) |
| **T-4** 🟡 | `ch03 d363` (12/2026) 松本: `Phase 5 で、Tokyo office に半年くらい来てもらう案があってね` | `ch04 d563` (9/2026): *"Đề xuất công tác Tokyo 6 tháng (**từ tiệc cuối năm tháng 12**) giờ thấy thực"* | ch04 diễn ra **9/2026** nhưng recap tham chiếu sự kiện **12/2026** (ch03) như đã xảy ra. Do thứ tự chương ≠ thứ tự thời gian → recap ch04 viết theo vị trí chương |

### 2.3 ✅ PHƯƠNG ÁN SỬA TỐI THIỂU — **4 chỗ, chốt 1 mốc duy nhất**

**Mốc được chốt:** sách 09 = **12 tháng (5/2026 → 5/2027)** · quan hệ Dũng–Hakuō = **2 năm** · Tokyo onsite **bắt đầu Q1 2028**.
Lý do chọn: front matter d42 và 8/8 `背景` chương đều đã đúng; "2 năm" thắng 4-1; `年明け` trong ch07 (3/2027) chỉ có thể là đầu 2028.

| # | File · dòng | Sửa TỪ | Sửa THÀNH |
|---|---|---|---|
| **S-1** | `ch07 d534` | `3 năm trước Phase 1 hồi hộp khi gửi mail cho Matsumoto` | `**2 năm trước** Phase 1 hồi hộp khi gửi mail cho Matsumoto` |
| **S-2** | `ch07 d440` (chỉ thị cảnh, tiếng Việt) | `Đầu năm = 4 tháng nữa.` | `Đầu năm sau = **10 tháng nữa**.` |
| **S-3** | `ch08 d519-520` | `6 tháng làm việc tại Tokyo\n  từ Q1 2027 — đã thống nhất với Matsumoto chương 7` | `6 tháng làm việc tại Tokyo\n  từ **Q1 2028** — đã thống nhất với Matsumoto chương 7` |
| **S-4** | `ch08 d526` + `d530` | d526 `Khoảng 3 năm câu chuyện trong sách.` · d530 `6 tháng làm việc tại Tokyo bắt đầu Q1 2027` | d526 `Khoảng **1 năm** câu chuyện trong sách.` · d530 `6 tháng làm việc tại Tokyo bắt đầu **Q1 2028**` |

**4 chỗ này gỡ trọn T-1, T-2, T-3.** Không phải đụng vào bất kỳ dòng thoại JA nào — cả 4 đều nằm trong khối recap tiếng Việt / chỉ thị cảnh, nên **không cần strip ruby, không có rủi ro làm vỡ thẻ ruby**.

**T-4 (🟡) KHÔNG cần sửa** — recap ch04 tham chiếu ch03 là hệ quả của việc sắp chương theo loại tình huống, người đọc đọc tuần tự sẽ không vấp. Nếu muốn sạch tuyệt đối thì đổi `ch04 d563` thành *"Đề xuất công tác Tokyo 6 tháng (sẽ được nêu ở tiệc cuối năm tháng 12)"* — nhưng đây là **tuỳ chọn, không bắt buộc**.

**⚠️ Cảnh báo cho main Claude:** đừng sửa `ch07 d438` (`年明けから動かしたい`). Đây là bản Nhật ĐÚNG và tự nhiên — `年明け` nói vào tháng 3 thì nghĩa là đầu năm sau, người Nhật hiểu ngay. Chỉ bản Việt "4 tháng nữa" là sai số học.

---

## 3. 🔴 BẢNG LỌC "TIẾNG ANH TRONG Ô NHẬT" — ch07–08

Phương pháp: strip ruby → tách ô JA (phần trước `<br/>`) → trích mọi cụm Latin → phân loại thủ công từng ca.

### 3.1 Con số

| Bước | ch07 | ch08 | Tổng |
|---|---|---|---|
| Mọi cụm Latin trong ô JA (thô) | 61 dòng | 48 dòng | 109 dòng |
| Trừ nhiễu kỹ thuật (header `\| Vai \| Câu \|`, nhãn vai `来場者A/B/C`, `PM`/`CFO`/`PMO`/`CTO` trong tên vai) | 38 | 27 | 65 |
| Trừ **hội thoại tiếng Anh có chủ ý** | 36 | 22 | 58 |
| Trừ **tên riêng** (Tran Van Dung, Tokyo, HCMC, Tanaka, Hiroshi, Tết, Smart Bank Assistant, Aoki/Konaka, Don Quijote…) | 24 | 8 | 32 |
| Trừ **tiếng Việt có nhãn `(ベトナム語)`** | 15 | 0 | 15 |
| Trừ **thuật ngữ ngành người Nhật viết y hệt** (AWS, Slack, ISO, SOC 2, API, OpenSearch, USB, AI, IT, FE, email, demo, slide, panel, compliance, goshugi/shugi-bukuro romaji…) | 8 | 0 | 8 |
| **= LỖI THẬT** | **8** | **0** | **8** |

**243 → 8 trong phạm vi ch07–08.** Con số 243 của toàn sách gồm gần hết là 5 nhóm hợp lệ trên.

### 3.2 Ba nhóm KHÔNG PHẢI LỖI — xác nhận lại (CẤM SỬA)

| Nhóm | Ví dụ trong ch07–08 | Vì sao hợp lệ |
|---|---|---|
| **Hội thoại tiếng Anh có chủ ý** | ch07 d261 `sorry, the technical term in Japanese just escaped me…` (Dũng quên từ, chuyển sang tiếng Anh — **là chính điểm dạy của tình huống 7**) · ch08 d112 `Today, we gather here to celebrate the union of…` (linh mục, có nhãn `英語+日本語混じり`) · ch08 d264-266 `this is my wife Yumi` / `Hi Dung-san, nice to meet you` (có nhãn `英語で小声`, `English練習` — **và là điểm cốt truyện**: Yumi đang luyện tiếng Anh) | Nhân vật đang nói tiếng Anh THẬT, có nhãn chỉ thị rõ |
| **Từ Nhật/Việt viết Latin** | `goshugi`, `shugi-bukuro`, `niji-kai`, `hikidemono`, `kekkonshiki`, `Tết` | Sách cố ý romaji hoá thuật ngữ nghi lễ cho người Việt tra được |
| **Thuật ngữ ngành người Nhật dùng thẳng** | `compliance` (d308, d314), `panel` (d184, d273, d435), `signal` (d433-435), `audit trail`, `API call`, `ISO 27001`, `SOC 2 Type 2`, `OpenSearch`, `stage`, `junior BD` | Người Nhật ngành IT/tài chính viết katakana hoặc Latin đều được; trong ngữ cảnh phát biểu sự kiện quốc tế là **tự nhiên** |

### 3.3 8 ca lỗi thật — bảng chi tiết (tất cả ở ch07)

| # | Dòng | Người nói | Nguyên văn JA | Vấn đề | Đề xuất |
|---|---|---|---|---|---|
| E-1 🟡 | ch07 d195 | 松本PM | `ありがとう、ズンさん、ナイス heads up。` | Trùng lặp — Dũng vừa nói `ヘッドアップ` (d194, katakana). Cùng 1 từ, 2 cách viết, 2 dòng liền nhau | `ナイス**ヘッドアップ**` (thống nhất katakana) |
| E-2 🟡 | ch07 d279 | 松本PM | `audience も和んだ。` | `audience` viết Latin giữa câu Nhật thuần. Từ này có katakana chuẩn dùng rộng rãi | `**観客**も和んだ` hoặc `**オーディエンス**も` |
| E-3 🟡 | ch07 d408 | 井上 | `ナイス recovery。デモ crash、こっちのミス。後で chocolate おごる。` | **3 từ Latin trong 1 lượt thoại ngắn.** `chocolate` đặc biệt vô lý — từ này ai cũng viết `チョコ`, và chính d436 sau đó viết `缶チョコ` | `ナイス**リカバリー**。デモ**が落ちた**の、こっちのミス。後で**チョコ**おごる。` |
| E-4 🟡 | ch07 d433 | 大垣 | `analyst の technical question、僕も Tuan さんに任せようとしたんだけど、目で signal 出してたら…` | 3 từ Latin. `analyst` mâu thuẫn nội bộ: nhãn vai ở d308 là `アナリスト` (katakana) | `**アナリスト**の**技術的な質問**、僕も**トゥアン**さんに…目で**合図**出してたら` |
| E-5 🟡 | ch07 d435 | 大垣 | `次回 panel で、もう signal なしでも自分で take ね。` | `take` dùng sai — `take` nghĩa "cầm mic/nhận câu hỏi" không phải cách người Nhật dùng. Bản Việt đã phải dịch thoát thành "tự cầm mic" | `次回**のパネル**で、もう**合図**なしでも自分で**答えて**ね。` |
| E-6 🟡 | ch07 d434 | ズン | `トゥアン先輩の signal 受けて、勇気出ました。` | Dũng lặp lại `signal` của Ōgaki. Nếu sửa E-4/E-5 thì phải sửa đồng bộ chỗ này | `トゥアン先輩の**合図**を受けて` |
| E-7 🔵 | ch07 d438 | 松本PM | `(別の guest と話してから来る)` | Nằm trong **chỉ thị sân khấu**, không phải lời thoại. `guest` → `ゲスト`/`来賓` | `(別の**来賓**と話してから来る)` |
| E-8 🔵 | ch07 d361 | トゥアン | `後で全員に follow up メール送ろう` | Nửa Latin nửa katakana trong cùng cụm danh từ ghép | `**フォローアップ**メール` |

**Nhận xét:** 6/8 ca tập trung ở **tình huống 11 (tiệc tiếp tân, d431–438)** — đoạn này viết ẩu hơn hẳn phần còn lại. **ch08 = 0 lỗi thật** ở trục này.

---

## 4. TRỤC A — DẠY LÀM SAI VIỆC THẬT (nặng nhất) · WebSearch từng quy tắc

### 4.1 Bảng dữ kiện WebSearch — nghi thức đám cưới ch08

| # | Sách viết (dòng) | Nguồn kiểm chứng nói gì | Phán định |
|---|---|---|---|
| W-1 | d90: *"mặt 'omote' (mặt có Fukuzawa Yukichi cho ¥10,000) hướng **LÊN**, đầu hướng **VÀO TRONG** shugi-bukuro"* | 「中袋の**表（金額を書いた面）**にお札の表をあわせ、お札の**人物が上になる**ように入れる。袋を開けたときに肖像画が最初に見える状態」 ([mynavi](https://wedding.mynavi.jp/contents/press/detail/post-26/), [anniversaire](https://www.anniversaire.co.jp/brand/omotte/magazine/manner/9725/)) | 🔴 **THIẾU VẾ QUYẾT ĐỊNH** — xem A-1 |
| W-2 | d78 + d90: *"Fukuzawa Yukichi"* trên tờ ¥10,000, bối cảnh **2027** | Từ **3/7/2024** tờ ¥10,000 in **渋沢栄一** ([政府広報](https://www.gov-online.go.jp/article/202406/entry-6075.html), [日経](https://www.nikkei.com/article/DGXZQOUB021KX0S4A700C2000000/)) | 🔴 **LỖI THỜI** — xem A-3 |
| W-3 | d252: *"Yumi đút lại Tanaka miếng to (truyền thống — 'to' = ngầm hiểu 'tao sẽ nuôi mày no cả đời')"* | 「**新郎から新婦へ**は『一生食べるものに困らせません』、**新婦から新郎へ**は『一生おいしい料理を作ります』」 ([T&G](https://www.tgn.co.jp/wedding/connection/column/162/), [zexy](https://zexy.net/article/app002307038/)) | 🔴 **ĐẢO CHIỀU** — xem A-4 |
| W-4 | d34 + d46: *"Gạch chữ '欠席' (vắng), khoanh '出席' (dự)"* | Đúng nhưng **thiếu bước bắt buộc**: phải gạch cả chữ kính ngữ 「御」「ご」 (御出席→出席, 御芳名→芳名) và đổi 「行」→「様」 ([niwaka](https://www.niwaka.com/ksm/radio/wedding/guest-manners/reply/01/), [zexy](https://zexy.net/mar/manual/guest_hagaki/)) | 🔴 **DẠY THIẾU** — xem A-5 |
| W-5 | d200: *"Viết thiệp thì cũng không chấm câu bằng dấu 「、」「。」 — vì dấu chấm mang nghĩa 'kết thúc'"* | 「『、』や『。』の句読点は"区切り"や"終わり"を意味するため、招待状の返信には使用しないのがマナー」 | ✅ **ĐÚNG** |
| W-6 | d188 + d193: `ケーキ入刀` tồn tại vì `切る` là 忌み言葉 | 「『切る』がダメだから『入刀』という言葉が使われる」 ([zexy 用語集](https://zexy.net/contents/yogo/details.php?name=%E3%82%B1%E3%83%BC%E3%82%AD%E5%85%A5%E5%88%80)) | ✅ **ĐÚNG** — điểm dạy hay nhất chương |
| W-7 | d190: 重ね言葉 = `重ね重ね・くれぐれも・再び・返す` | 「相次いで、いろいろ、重ねて、**重ね重ね**、返す返す、**くれぐれも**、しばしば、重々、次々、たびたび、ぜひぜひ、また、皆々様、もう一度、わざわざ」 | ✅ **ĐÚNG**, danh sách chuẩn |
| W-8 | d191: Xui rủi = `死ぬ・苦しい・忙しい` | 「亡くなる、死、逝く、滅びる、絶える、**悪い**、病む」+「**忘れる**、**忙しい**、**苦しい**、悲しい、無くす、欠ける、痛い、散る、枯れる、負ける、**戻る**、**返す**」 ([zexy](https://zexy.net/article/app002004019/), [mynavi](https://wedding.mynavi.jp/contents/press/detail/post-165/)) | ✅ **ĐÚNG** — kể cả `忙しい` (dễ bị tưởng sai) |
| W-9 | d92: *"Tránh số 4 (死) và 9 (苦) — 40K, 90K cấm"* | 「『4』は『死』、『9』は『苦』と音が重なることから忌み数」 | ✅ **ĐÚNG** |
| W-10 | d91: *"Số tờ **LẺ** (1,3,5) — không 2, 4"* | 「偶数は『2で割れる＝縁が切れる』…お札の枚数を奇数にする配慮」 | ✅ **ĐÚNG về nguyên tắc**, xem 🔵 D-3 về cách diễn giải |
| W-11 | d12 + d43: 30,000円 đồng nghiệp / 50,000円 cấp trên | 「3万円は『友人・知人』として最も標準的な相場」 | ✅ **ĐÚNG** |
| W-12 | d13 + d31 + d44: dark suit + white shirt + cravat trắng-bạc; cấm cravat đen, cấm suit toàn đen | 「スーツはダークネイビー（またはブラック）、シャツは白無地、ネクタイはシルバー系…全身黒・黒ネクタイは葬儀を連想させNG」 | ✅ **ĐÚNG** |
| W-13 | d125: *"Đám cưới Nhật hiện đại **70%** theo phong cách Thiên Chúa giáo"* | 結婚マーケット調査2025: キリスト教式(教会式) **36.2%**, 神前式 33.1% ([リクルート](https://souken.zexy.net/data/market2025/market2025_summary.pdf)) | 🟡 **SAI SỐ ~2 lần** — xem D-1 |
| W-14 | d148–157: Nakamura CFO đọc 祝辞 **rồi tự hô 乾杯 luôn** | 「主賓の祝辞が最初、**その後に乾杯の発声**が続く。乾杯の発声は**主賓に次ぐ立場の人**」 ([zexy](https://zexy.net/mar/manual/speech/cheers.html), [niwaka](https://www.niwaka.com/ksm/radio/wedding/speach/request-thanks/12/)) | 🟡 **GỘP SAI VAI** — xem D-2 |
| W-15 | d434: *"Một số catalog giao hàng miễn phí về VN"* | Catalog gift Nhật hầu như chỉ giao **nội địa Nhật**; giao quốc tế là ngoại lệ hiếm và có phí | 🟡 **SAI THỰC TẾ** |
| W-16 | d370 (ch07): người đề nghị / vai dưới đưa danh thiếp trước | 「訪問先での名刺交換では、**訪問者が先に**名刺を差し出す。立場が下の人から先に渡す」 | ✅ **ĐÚNG** (JA) — nhưng VN hụt, xem R3-02 |
| W-17 | d371 (ch07): nhận 2 tay + `頂戴いたします` + đọc tên rồi mới cất | 「受け取る際は『頂戴します』と一言添える…すぐにしまわず、テーブルの上に置いておく」 | ✅ **ĐÚNG** |
| W-18 | d370 (ch08): *"thả chim hót"* (放鳥) | 放鳥 rất hiếm ở Nhật hiện đại (lý do môi trường/phúc lợi động vật); phổ biến là バルーンリリース / バブルシャワー / フラワーシャワー | 🔵 **HIẾM GẶP** |

### 4.2 Chi tiết các phát hiện trục A

#### 🔴 A-1 · Quy tắc chiều tờ tiền goshugi — thiếu vế QUYẾT ĐỊNH, học viên vẫn làm sai
`ch08 d90` (Bí quyết) + `d78` (cảnh) + `d69` (lời staff)
> Sách d90: *"**Chiều tiền**: mặt 'omote' (mặt có Fukuzawa Yukichi cho ¥10,000) hướng LÊN, đầu hướng VÀO TRONG shugi-bukuro. Tất cả tờ cùng chiều."*
> Nguồn: 「**中袋の表（金額を書いた面）**にお札の表をあわせ、お札の人物が上になるように入れる。**袋を開けたときに肖像画が最初に見える状態**にするのがマナー」

**Vấn đề:** quy tắc thật có **hai** trục toạ độ, sách chỉ nói một:
1. Mặt chân dung úp/ngửa về phía nào → sách gọi là "hướng LÊN" nhưng **không nói lên so với cái gì**. Chuẩn là: **so với mặt TRƯỚC của 中袋 (mặt ghi số tiền)**.
2. Đầu (phần có chân dung) hướng lên trên hay xuống dưới → **chuẩn là chân dung ở phía TRÊN**, để mở bao ra là thấy mặt người trước tiên.

Sách viết *"đầu hướng VÀO TRONG shugi-bukuro"* — vế này **mơ hồ tới mức phản tác dụng**: "vào trong" là hướng đáy bao, tức chân dung nằm ở **dưới**, ngược hẳn quy tắc 「肖像画が最初に見える」. Học viên đọc câu này và làm theo sẽ đặt tiền **sai chiều** — đúng cái lỗi mà nhân vật Dũng vừa bị staff sửa ở d69.

**Nghiêm trọng vì:** đây là khối Bí quyết được viết ra để dạy đúng cái lỗi vừa xảy ra trong cảnh. Cảnh dạy "có lỗi này tồn tại", Bí quyết dạy sai cách khắc phục.

**Đề xuất d90:** *"**Chiều tiền**: đặt tiền vào 中袋 sao cho **mặt có chân dung áp về mặt TRƯỚC của 中袋** (mặt ghi số tiền), và **chân dung nằm ở phía TRÊN** — mở bao ra là nhìn thấy mặt người trước tiên. Tất cả tờ cùng chiều."*
Đồng thời sửa d78 (chỉ thị cảnh) cho khớp: hiện ghi *"mặt có Fukuzawa Yukichi (mặt 'omote') hướng lên + đầu hướng vào trong shugi-bukuro"* → *"mặt chân dung áp mặt trước của 中袋, chân dung ở phía trên"*.

#### 🔴 A-2 · ch07 名刺交換 — fix nửa vời (đã trình bày ở R3-02)

#### 🔴 A-3 · Tờ ¥10,000 in Fukuzawa Yukichi — lỗi thời so với bối cảnh 2027
`ch08 dòng 78` (chỉ thị cảnh) và `dòng 90` (Bí quyết)
> d78: *"Xếp lại — mặt có **Fukuzawa Yukichi** (mặt 'omote') hướng lên…"*
> d90: *"mặt 'omote' (mặt có **Fukuzawa Yukichi** cho ¥10,000)…"*

**Vấn đề:** tờ ¥10,000 đổi sang **渋沢栄一 (Shibusawa Eiichi)** từ **3/7/2024**. Chương diễn ra **5/2027** — gần 3 năm sau. Học viên rút tờ tiền mới ra tìm Fukuzawa sẽ không thấy.
Đây là lỗi **kép nguy hiểm**: vừa sai sự thật, vừa làm hỏng chính quy tắc A-1 (học viên định vị "mặt omote" bằng cách tìm Fukuzawa).
**Đề xuất:** cả 2 chỗ đổi thành **Shibusawa Eiichi (渋沢栄一)**. Có thể thêm 1 câu ở d90: *"(tờ ¥10,000 phát hành từ 7/2024 in Shibusawa Eiichi; tờ cũ in Fukuzawa Yukichi vẫn dùng được nhưng goshugi nên dùng tờ mới)"* — vừa sửa lỗi vừa thành điểm dạy hay, vì quy tắc 新札 và đợt đổi tiền ăn khớp nhau.

#### 🔴 A-4 · ファーストバイト — sách dạy ĐẢO CHIỀU ý nghĩa
`ch08 dòng 252` (chỉ thị cảnh)
> *"[Dũng giơ iPhone, quay 30 giây. Tanaka đút Yumi 1 miếng bánh — **Yumi đút lại Tanaka miếng to (truyền thống — 'to' = ngầm hiểu 'tao sẽ nuôi mày no cả đời')**. Tanaka cười rộng.]"*

**Nguồn:** 「**新郎から新婦へ**は『一生食べるものに困らせません』という誓いを、**新婦から新郎へ**は『一生おいしい料理を作ります』という想いを表す」
**Vấn đề:** sách gán ý nghĩa "nuôi no cả đời" cho **chiều cô dâu → chú rể**, tức ngược. Chiều đó mang ý "em sẽ nấu ngon cho anh". Miếng to (ビッグスプーン) là do **chú rể** đút cô dâu — chính vì lời thề "không để em đói".
**Đề xuất:** *"…**Tanaka đút Yumi một miếng thật to** (truyền thống ファーストバイト — miếng to mang lời thề 'anh sẽ không để em thiếu ăn cả đời'), rồi **Yumi đút lại Tanaka một miếng nhỏ** ('em sẽ nấu ngon cho anh'). Tanaka cười rộng."*
**Đây là lỗi trục A thật:** học viên VN đọc xong đi dự cưới, thấy nghi thức này sẽ hiểu ngược ý nghĩa và có thể bình luận sai trước mặt chủ nhà.

#### 🔴 A-5 · RSVP — dạy thiếu bước 「御」, học viên gửi thiệp thất lễ
`ch08 dòng 34` (thoại Hương) + `dòng 46` (Bí quyết)
> d34: 「RSVP: trong vòng 1 tuần, gửi reply card đính kèm thiệp. **Gạch chữ '欠席' (vắng), khoanh '出席' (dự)**. Viết câu chúc mừng ngắn 1-2 câu chân thành.」
> d46: *"**RSVP** trong 1 tuần, reply card có định dạng đặc biệt (gạch 欠席, khoanh 出席, viết câu chúc)."*

**Nguồn:** 「返信はがきの宛名にある『行』や『宛』を斜め二重線で消し、『様』と書き直す」 + quy tắc gạch bỏ kính ngữ 「御」/「ご」 mà chủ nhà đã viết sẵn về mình (御出席→出席, 御住所→住所, 御芳名→芳名).
**Vấn đề:** sách dạy 2/4 bước. Thiếu:
- Gạch 「御」/「ご」 trước 出席/住所/芳名 — nếu để nguyên là **tự dùng kính ngữ cho chính mình** (lỗi 過剰敬語, đúng trục C của rule).
- Đổi 「行」/「宛」 ở mặt địa chỉ thành 「様」.
Người Nhật gửi thiệp còn nguyên 「御出席」 bị coi là không biết lễ. Học viên làm theo sách hiện tại sẽ mắc đúng lỗi này.
**Đề xuất bổ sung vào d46 (Bí quyết):** *"...(gạch **御/ご** trước 出席・住所・芳名 vì đó là kính ngữ chủ nhà dành cho mình — để nguyên là tự tôn kính mình; khoanh 出席, gạch 欠席; mặt ngoài gạch **「行」** đổi thành **「様」**; viết câu chúc **không dùng dấu 、và 。**)"*. Riêng lời thoại d34 có thể giữ ngắn — Hương đang tóm tắt nhanh — nhưng khối Bí quyết thì phải đủ.

#### 🟡 A-6 · Bí quyết tổng ch08 — quy tắc goshugi mâu thuẫn nhẹ về "gói"
`ch08 dòng 12` (Bí quyết tổng): *"Goshugi (lì xì cưới): 30,000円 cho đồng nghiệp đồng cấp… Tiền MỚI tinh, gói shugi-bukuro chuyên dụng."*
Đối chiếu d93 (Bí quyết tình huống 2): *"Shugi-bukuro chuyên dụng (nơ **trắng-bạc 結びきり**)"*.
Bí quyết tổng không nêu 結びきり. Đây là chi tiết **phân biệt sống còn**: nơ 蝶結び (nơ bướm, cởi ra buộc lại được) dùng cho việc **lặp lại được** (sinh con, khai trương) — dùng cho đám cưới là sai nghiêm trọng vì hàm ý "cưới lại". d93 đã nói đúng, chỉ là Bí quyết tổng (thứ người đọc lướt trước) bỏ mất.
**Đề xuất d12:** *"…gói shugi-bukuro chuyên dụng **nơ 結びきり trắng-bạc (KHÔNG dùng nơ bướm 蝶結び — nơ bướm hàm ý 'lặp lại được')**."*

### 4.3 Trục A — ch07 (lễ ra mắt): nghi thức sự kiện

| Mục | Đánh giá |
|---|---|
| 名刺交換 (d346, d365–375) | ✅ Nghi thức **đúng** sau fix vòng 4 (thứ tự đưa, 2 tay, 頂戴いたします, đặt lên bàn, không ghi chú trước mặt). Chỉ bản Việt hụt — R3-02 |
| Ứng xử khi bị phóng viên chặn hỏi (d198–207) | ✅ Rất tốt: ghi nhận → chuyển đúng phiên → nêu ranh giới thẩm quyền → báo trước đàn anh. Không dạy gì sai |
| Xử lý demo treo (d412–420) | ✅ Tốt: nhận lỗi + mốc thời gian cụ thể + thành thật về nguyên nhân |
| Được gọi tên trên sân khấu (d235–243) | ✅ Đúng: đứng dậy ngay, cúi đầu, không phát biểu từ chỗ ngồi khi chưa được chuyển mic |
| Q&A phân công trả lời (d324–332) | ✅ Đúng nghiệp vụ |
| **d306 松本 công bố số tiền cụ thể trước báo chí** | 🔵 Đáng lưu ý: `2年で総額 約3.5億円` + `初期5,000万円、月額300万円から` nói thẳng trước phóng viên Nikkei. Tình huống 5 vừa dạy Dũng *"Đừng đưa số liệu tùy tiện — rủi ro pháp lý + PR"*, rồi tình huống 8 Matsumoto đưa số chi tiết. **Không phải lỗi** (Matsumoto là PM có thẩm quyền, và d306 kết bằng `詳細は資料配布します` = có tài liệu chính thức) nhưng nếu muốn chặt hơn thì thêm 1 gạch đầu dòng vào Bí quyết d326–332: *"Số liệu chỉ được công bố bởi người có thẩm quyền và phải có tài liệu chính thức kèm theo"* |

---

## 5. ĐÁNH GIÁ KHỐI 忌み言葉 MỚI THÊM (ch08 d182–200) — chi tiết

**Kết luận: khối này ĐÚNG và ĐỦ. Đây là phần tốt nhất được thêm ở vòng 4. CẤM SỬA nội dung chính.**

| Thành phần yêu cầu | Có? | Kiểm chứng |
|---|---|---|
| Bảng 4 nhóm từ kiêng | ✅ d186–191 | Chia lìa/kết thúc · Về-rời đi · Lặp lại · Xui rủi — khớp phân loại của zexy/mynavi |
| Cách nói thay | ✅ cột 3 | `お開きにする`, `ケーキ入刀`, `発つ`, `失礼する` — đều là cách nói thay chuẩn |
| Vì sao MC xướng `入刀` | ✅ d193 | Khớp nguồn: 「『切る』がダメだから『入刀』が使われる」. **Dạy hay** — nối được với cảnh d248 nơi MC thật sự xướng `入刀` |
| Quy tắc không chấm câu trong thiệp mừng | ✅ d200 | Khớp nguồn: 「句読点は"区切り"や"終わり"を意味するため使用しない」 |
| Lưu ý riêng cho người Việt | ✅ d195–198 | 3 điểm: đừng hỏi `何時に帰りますか` → `失礼されますか`; đừng thêm `重ね重ね`; lỡ miệng thì `失礼しました` rồi đi tiếp. **Rất thực dụng** |

**Điểm cộng đáng ghi:** khối này **khép vòng** với chính chương — d189 dạy `帰る`→`発つ`, và d411 Yumi thật sự nói `ベトナムへ発つの?` (chỗ đã sửa vòng 4). Học viên đọc Bí quyết rồi gặp lại trong thoại = ghi nhớ tốt.

**3 điểm nhỏ có thể tinh chỉnh (KHÔNG bắt buộc):**

| # | Dòng | Nhận xét | Mức |
|---|---|---|---|
| K-1 | d190 | Ô "Từ kiêng" nhóm Lặp lại ghi `重ね重ね・くれぐれも・**again** 何度も・再び・返す` — chữ **`again`** là tiếng Anh lọt vào giữa danh sách từ Nhật. Nhiều khả năng là dấu vết soạn thảo sót lại | 🟡 Đề xuất: bỏ `again `, còn `重ね重ね・くれぐれも・何度も・再び・返す` |
| K-2 | d191 | Nhóm Xui rủi liệt `死ぬ・苦しい・忙しい (chữ 亡/苦)` — thiếu **`忘れる`**, **`戻る`**, **`負ける`**, **`終わる`** vốn có trong danh sách chuẩn. Đặc biệt `忘れる` cần vì chính d465 chương này dùng `忘れません` | 🔵 Đề xuất thêm `忘れる・戻る` vào ô này |
| K-3 | d184 | *"Người Nhật kiêng những từ gợi **chia lìa, kết thúc, lặp lại**"* — bảng có 4 nhóm nhưng câu dẫn chỉ kể 3, bỏ sót nhóm "xui rủi" | 🔵 Thêm ", xui rủi" vào câu dẫn |

---

## 6. TRỤC B — TỰ MÂU THUẪN

### 🟡 B-1 · ch08 recap khai "3 lỗi không lặp" nhưng nhân vật chỉ mắc 2
`ch08 dòng 505–509`
> ```
> 3 lỗi không lặp:
> 1. Goshugi sai chiều tiền → ôn lại quy tắc cho đám cưới sau (còn 4-5 năm?).
> 2. Hikidemono nặng mà quên tính hành lý → đám cưới sau để chỗ trong hành lý xách tay.
> 3. Cravat trắng-bạc — phải mua lúc đến Tokyo thứ Sáu, ở VN không có.
> ```
**Vấn đề:** mục 3 **không phải lỗi** — Hương dặn từ d33 (*"OK em mua thêm 1 cravat trắng-bạc Aoki / Konaka khi qua Tokyo"*), Dũng xác nhận d36 (*"Em sẽ mua goshugi + cravat ở Tokyo thứ Sáu tới"*). Đó là **kế hoạch đã thực hiện đúng**, không phải sai sót. So sánh: khối tương ứng ở ch07 d512 ghi "**2** sai sót" và cả 2 đều là lỗi thật → ch08 bị ép cho đủ 3.
**Đề xuất:** đổi tiêu đề thành `2 lỗi không lặp:` và chuyển mục 3 xuống mục "Việc cần làm" (nơi đã có sẵn dòng *"Mua 2 cravat trắng-bạc Aoki khi qua Tokyo lần tới"* — d518, **trùng ý luôn**).

### 🟡 B-2 · ch08 d309 — bản Việt KHÔNG khớp bản Nhật sau khi sửa vòng 4
`ch08 dòng 309` · 友人スピーチ
> JA (đã sửa): 「…<ruby>人生<rt>じんせい</rt></ruby>は<ruby>計画通<rt>けいかくどお</rt></ruby>りいかへんけど、**その<ruby>分<rt>ぶん</rt></ruby>ええ<ruby>出会<rt>であ</rt></ruby>いがある**、ということを<ruby>学<rt>まな</rt></ruby>んだわ。」
> VN (CHƯA sửa): *"…tao học được rằng đời không theo kế hoạch, **nhưng kết cục không tệ**."*

**Vấn đề:** JA nói "bù lại thì có những cuộc gặp gỡ đẹp" (câu chúc hướng lên, đúng tinh thần đám cưới). VN vẫn giữ *"kết cục không tệ"* — bản dịch của câu CŨ `悪い結果は来ない`. Đây là **tàn dư của fix vòng 4**: sửa JA (để gỡ từ kiêng 悪い) nhưng quên bản VN, và bản VN đang chứa đúng cái sắc thái phủ định mà việc sửa nhắm gỡ bỏ.
**Đề xuất VN:** *"…tao học được rằng đời không theo kế hoạch, **nhưng bù lại luôn có những cuộc gặp gỡ đẹp**."*

### 🟡 B-3 · ch08 d465 — dùng `忘れません` ngay trong chương dạy 忌み言葉
`ch08 dòng 465` · ズン (tại 二次会, pub Ginza)
> JA: 「(<ruby>深<rt>ふか</rt></ruby>く)<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>私<rt>わたし</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>こそ、<ruby>招待<rt>しょうたい</rt></ruby>していただいて<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>光栄<rt>こうえい</rt></ruby>です。<ruby>生涯<rt>しょうがい</rt></ruby>**<ruby>忘<rt>わす</rt></ruby>れません**。」

**Vấn đề:** `忘れる` nằm trong nhóm マイナス của 忌み言葉 (nguồn zexy/mynavi liệt kê rõ). Chương này vừa dạy quy tắc ở d182–200. Học viên tinh ý sẽ bắt được và mất lòng tin vào sách.
**Nhưng đây là ca ranh giới, KHÔNG phải lỗi nặng:**
- Bối cảnh là **二次会** (pub Ginza, không khí thư giãn), không phải 披露宴. WebSearch không cho kết luận dứt khoát về phạm vi áp dụng ở 二次会 — nguồn khuyến nghị vẫn nên tránh, nhưng độ nghiêm ngặt thấp hơn hẳn.
- `生涯忘れません` là câu cảm ơn rất tự nhiên và đẹp trong tiếng Nhật.
**Đề xuất (ưu tiên thấp):** đổi thành `<ruby>生涯<rt>しょうがい</rt></ruby>の<ruby>宝物<rt>たからもの</rt></ruby>です` (nhất quán với chính d410 nơi Dũng đã nói `一生の宝物の一日になりました`) — vừa gỡ từ kiêng, vừa tạo motif lặp đẹp. **Hoặc giữ nguyên và chấp nhận** — nếu giữ thì đừng ai "sửa tiện tay" ở đợt sau.

### 🟡 B-4 · ch07 d116 — Tuấn đột ngột đổi sang "mày/tao"
`ch07 dòng 116` · トゥアンリーダー
> JA: 「(ベトナム語、<ruby>肩<rt>かた</rt></ruby>を<ruby>叩<rt>たた</rt></ruby>く)**Mày** OK. 5 phút đó **mày** sẽ nhớ cả đời, dù tốt hay không. Cứ là chính **mày**.」
> VN: *(tiếng Việt, vỗ vai) **Mày** OK. 5 phút đó **mày** sẽ nhớ cả đời…*

**Vấn đề:** Tuấn xưng "anh/em" với Dũng ở **mọi chỗ khác**, kể cả 4 lượt ngay trước đó trong cùng tình huống (d104 *"Em ngủ ngon không?"*, d106 *"em uống 1 ly trà ấm"*, d112 *"Em nhớ — slide 3 cuối"*, d114 *"em ngắt, im 1 giây"*) và ngay sau đó (d145 *"Em hít thở 4-7-8 đi"*, d155 *"Em sẵn sàng"*). Đổi sang mày/tao trong đúng 1 lượt rồi lập tức quay lại "em" = **đổi giọng giữa chừng**, không phải chủ ý.
Hồ sơ `tuan_leader` = `['technical','concise','patient when explaining']` — không có nét suồng sã.
**B2 đã nêu ca này (dòng 217 báo cáo B2) — R3 xác nhận đúng, chưa được sửa.**
**Đề xuất:** *"Em ổn mà. 5 phút đó em sẽ nhớ cả đời, dù tốt hay không. Cứ là chính em."* (sửa cả JA lẫn VN — dòng này JA cũng là tiếng Việt).

---

## 7. TRỤC C — TIẾNG NHẬT SAI

Main Claude đã quét 18 pattern 二重敬語/過剰敬語 ra **0 trong phạm vi ch07–08**. R3 quét lại độc lập (strip ruby) và **xác nhận: 0 ca 二重敬語, 0 ca 過剰敬語, 0 ca さ入れ言葉, 0 ca uchi/soto sai, 0 ruby vỡ, 0 ký tự lạ (Hangul/giản thể)**.

Chi tiết một số chỗ **ĐÚNG mà dễ bị sửa nhầm** (đưa xuống mục CẤM SỬA):
- `頂戴いたします` (ch07 d346) và `お名前を頂戴できますでしょうか` (ch08 d60): **không phải** 二重敬語. `頂戴する` là khiêm nhường ngữ độc lập, thêm `いたす` là dạng đã 慣用化 chuẩn trong tiếp khách.
- `ご祝辞を頂戴します` (ch08 d148): MC nói với khách — `ご祝辞` là của **người khác** nên `ご` hoàn toàn đúng, không phải 過剰敬語.
- `お待ちくださいませ` (ch07 d392): `ませ` sau `ください` là dạng trang trọng của ngành dịch vụ, đúng.
- `申し上げます` (ch08 d156) trong 祝辞: đúng cấp độ 主賓挨拶.

**Duy nhất 1 ca 🔴 tiếng Nhật sai trong phạm vi: `呼の珍しい` (R3-01)** — và nó lọt lưới 18 pattern vì không thuộc nhóm keigo, chỉ là câu cụt.

---

## 8. TRỤC D — SAI SỰ THẬT (đã WebSearch)

### 🟡 D-1 · "70% đám cưới Nhật theo phong cách Thiên Chúa giáo"
`ch08 dòng 125` (Bí quyết)
> *"Đám cưới Nhật hiện đại **70%** theo phong cách Thiên Chúa giáo (không phải vì theo đạo, mà vì thẩm mỹ)."*

**Nguồn:** リクルートブライダル総研「結婚マーケット調査2025」: キリスト教式(教会式) **36.2%**, 神前式 **33.1%**, còn lại 人前式 ([souken.zexy.net](https://souken.zexy.net/data/market2025/market2025_summary.pdf)).
**Vấn đề:** sai gần **gấp đôi**. Con số 70% có thể là số của thập niên 2000 (thời キリスト教式 đỉnh cao) — nhưng chương diễn ra 2027.
**Đề xuất:** *"Ở Nhật hiện nay lễ cưới kiểu Thiên Chúa giáo (キリスト教式) chiếm khoảng **1/3** — nhỉnh hơn kiểu Thần đạo (神前式) một chút, còn lại là 人前式 (thề trước quan khách). Phần lớn người chọn kiểu nhà thờ **không theo đạo**, mà vì thẩm mỹ."*
Phần *"không phải vì theo đạo, mà vì thẩm mỹ"* là **ĐÚNG, giữ nguyên**.

### 🟡 D-2 · 主賓祝辞 và 乾杯 gộp vào một người
`ch08 dòng 148–157`
> d148 司会者: 「新郎側の上司、白鷗株式会社中村CFO様より、ご祝辞を頂戴します。」
> d149–150 中村CFO đọc 祝辞…
> d156 中村CFO: 「…心からお祝い申し上げます。**乾杯!**」

**Nguồn:** 「主賓の祝辞が最初に行われ、**その後に乾杯の発声**が続く。乾杯の発声は**主賓に次ぐ立場の人**のほか、仕切り上手な友人に頼むケースもある」 ([zexy](https://zexy.net/mar/manual/speech/cheers.html), [niwaka](https://www.niwaka.com/ksm/radio/wedding/speach/request-thanks/12/)).
**Vấn đề:** trong 披露宴 chuẩn đây là **hai vai riêng**, do hai người khác nhau đảm nhiệm, và MC giới thiệu riêng từng phần. Sách gộp làm một → học viên hình dung sai trình tự tiệc cưới Nhật.
**Mức độ:** 🟡 không phải lỗi hại người (khách chỉ ngồi nghe), nhưng sách này đang bán chính cái "hiểu đúng trình tự".
**Đề xuất (nhẹ nhất, 1 dòng):** thêm 1 gạch đầu dòng vào Bí quyết d170–178: *"**Trình tự chuẩn**: MC giới thiệu → 主賓挨拶 (sếp cao nhất, phát biểu chúc mừng) → **người kế tiếp về vai vế** hô 乾杯 → khai tiệc. Ở tiệc của Tanaka hai vai này do một người đảm nhiệm để tiết kiệm thời gian — cũng có nơi làm vậy, nhưng chuẩn là hai người."* Cách này giữ nguyên thoại, chỉ bổ sung kiến thức.

### 🟡 D-3 · Catalog gift giao về Việt Nam
`ch08 dòng 434` (Bí quyết): *"**Phiếu quà catalog**: chọn online trong 30 ngày. **Một số catalog giao hàng miễn phí về VN.**"*
**Vấn đề:** catalog gift Nhật (リンベル, ハーモニック…) về cơ bản chỉ giao **nội địa Nhật**; giao quốc tế hầu như không có, càng không miễn phí. Đây là lời khuyên khiến khách VN đặt hàng rồi hỏng.
**Đề xuất:** *"**Phiếu quà catalog**: chọn online trong 30 ngày. **Hầu hết chỉ giao trong nước Nhật** — nếu bạn về VN, hãy chọn quà và ghi địa chỉ người quen ở Nhật, hoặc chọn ngay trước khi rời Nhật."*

### 🔵 D-4 · "thả chim hót" (放鳥)
`ch08 dòng 370`: *"Cuối tiệc. Tung hoa cưới + **thả chim hót** ngoài khu vườn."*
放鳥 rất hiếm ở Nhật hiện đại (phúc lợi động vật / môi trường). Phổ biến là バルーンリリース, バブルシャワー, フラワーシャワー.
**Đề xuất:** đổi thành *"thả bong bóng xà phòng (バブルシャワー)"* — vừa thật vừa hợp cảnh khu vườn.

### 🔵 D-5 · "Pacifico Hotel"
`ch07 dòng 67` + `d462`: *"Phòng khách sạn Dũng (**Pacifico Hotel**)"*, d69 *"Phòng khách sạn thương mại Pacifico tầng 18"*.
Pacifico Yokohama là **trung tâm hội nghị**, không có khách sạn tên "Pacifico Hotel". Khách sạn nằm trong khuôn viên là **InterContinental Yokohama Grand** ("located within the grounds of PACIFICO Yokohama… directly connected", [icyokohama-grand.com](https://www.icyokohama-grand.com/en/banquets/)).
**Đề xuất:** đổi thành *"khách sạn trong khuôn viên Pacifico"* (không nêu tên riêng — an toàn nhất), hoặc dùng thẳng InterContinental Yokohama Grand.

### 🔵 D-6 · Số tờ tiền — diễn giải hơi lệch
`ch08 dòng 91`: *"**Số tờ LẺ** (1, 3, 5) — không 2, 4 (số lẻ tốt, số chẵn có nghĩa 'chia rẽ'). 30,000 = 3 tờ 10K, **không 2 tờ 10K + 1 tờ 5K + 5 tờ 1K**."*
**Vấn đề nhỏ:** ví dụ phản đề sách đưa ra (2×10K + 1×5K + 5×1K) là **8 tờ** — chẵn, nên đúng là không nên; nhưng cách viết khiến người đọc tưởng vấn đề nằm ở "trộn mệnh giá". Thực tế nguyên tắc chỉ là **tổng số tờ lẻ**. Nguồn còn nêu ngoại lệ: 2 vạn yên thì gói 1 tờ 10K + 2 tờ 5K (= 3 tờ) chính là cách xử lý số chẵn.
**Đề xuất:** *"**Tổng số tờ phải LẺ** (1, 3, 5…) — số chẵn gợi 'chia đôi = chia rẽ'. 30,000 = **3 tờ 10K** là gọn nhất. (Mẹo: nếu buộc phải gói số chẵn như 20,000, người Nhật gói 1 tờ 10K + 2 tờ 5K để tổng thành 3 tờ.)"*

---

## 9. TRỤC E — TIẾNG VIỆT

### 9.1 Xưng hô — kiểm chứng lại, KHÔNG phóng đại

B2 báo ch07 = 12 chỗ, ch08 = 8 chỗ. Vòng 3 main Claude đã sửa 3 chỗ (ch07 d218, d445; ch08 d464). R3 rà lại **toàn bộ** ch07–08 theo tiêu chí của rule mục E (chỉ tính khi bản Nhật cho thấy người nói **tự nói về mình** — không có `〜さん`, có `私`/`僕`/`〜いたします`):

| Dòng | Người nói | JA | VN | Phán định |
|---|---|---|---|---|
| ch07 d139 | ステージMC | `最新版アップロードしますので` | *"**Em** tải bản mới nhất lên"* | 🟡 **SAI NHẸ** — nhân viên sân khấu nói với diễn giả, tự xưng "em". Nên là **"Tôi/Bên tôi tải bản mới nhất lên"** |
| ch07 d185 | 田所記者 | `了解、Q&A 行きます` | *"Rõ, **em** qua Q&A"* | 🟡 **SAI** — phóng viên Nikkei, người lạ, tự xưng. Nên là **"tôi qua Q&A"** |
| ch07 d306 | 松本PM | `詳細は資料配布します` | *"Chi tiết **em** phát tài liệu"* | 🟡 **SAI** — Matsumoto (45-50t) trả lời báo chí trên sân khấu. Nên là **"chúng tôi sẽ phát tài liệu"** |
| ch07 d308 | アナリスト | `対応できるか不安です` | *"**em** lo có đáp ứng được…"* | 🟡 **SAI** — chuyên gia phân tích chất vấn. Nên **"tôi e ngại"** |
| ch07 d315 | アナリスト | `具体的で安心しました` | *"Cụ thể, **em** yên tâm"* | 🟡 **SAI** — cùng người trên. Nên **"tôi yên tâm"** |
| ch07 d345 | 来場者A (佐藤) | `私、関東銀行の AI 推進室の佐藤です` | *"**Em** là Sato của phòng xúc tiến AI ngân hàng Kanto"* | 🟡 **SAI** — có `私` rõ ràng, khách hàng tự giới thiệu. Nên **"Tôi là Sato…"** |
| ch07 d347 | 来場者A | `ご相談させていただいても?` | *"Sau này **em** có thể bàn về demo không?"* | 🟡 **SAI** — cùng người. Nên **"tôi có thể xin trao đổi"** |
| ch07 d354 | 来場者B (鈴木) | `富士山銀行の鈴木と申します` | *"**em** là Suzuki của ngân hàng Fujisan"* | 🟡 **SAI** — `と申します` = tự giới thiệu. Nên **"Tôi là Suzuki"** |
| ch07 d386 | 来場者C | `デモ試してみたいんですが` | *"**em** muốn thử demo"* | 🟡 **SAI** — khách tham quan. Nên **"tôi muốn thử"** |
| ch07 d401 | 来場者C | `本番環境のスペック資料、後でメールで` | *"Thẳng thắn **em** yên tâm"* | 🟡 **SAI** — cùng người. Nên **"tôi yên tâm"** |
| ch08 d462 | 田中PMO | `1時間だけ参戦!` | *"**Em** chỉ tham 1 tiếng!"* | 🟡 **SAI** — Tanaka (30-35t) nói với cả nhóm gồm Matsumoto/Ōgaki (45-50t) là cấp trên, nhưng đây là câu hô chung vào phòng, không phải nói riêng với ai. Xưng "em" với cả nhóm trong đó có Inoue ngang hàng và Dũng vai dưới = lệch. Nên **"Tôi chỉ tham gia 1 tiếng thôi!"** |

**Tổng: 11 chỗ sai thật ở ch07–08** (ch07 = 10, ch08 = 1).

⚠️ **Điểm cần nói rõ để main Claude không sửa quá tay:** phần lớn 11 ca này là **nhân vật phụ một lần xuất hiện** (khách tham quan, phóng viên, chuyên gia phân tích, nhân viên sân khấu) — không phải cast chính. Đây là dạng lỗi khác với ca ch07 d218 (Nakamura CFO) đã sửa vòng 3: nhẹ hơn nhiều, nhưng vẫn sai vì **người lạ / khách hàng không tự xưng "em" với người bán hàng**.

**Ngược lại — các chỗ "em" ĐÚNG, CẤM SỬA:** mọi lượt của **ズン** (Dũng là vai dưới, tự xưng "em" là chuẩn); các lượt **Tuấn / Hương gọi Dũng là "em"** (ngôi 2, hợp lệ); **松本/大垣/井上/中村 gọi Dũng "em"** (ngôi 2). Rule mục 3 đã ghi nhận 2 ca phóng đại vì lẫn ngôi 1 với ngôi 2 ở chính sách này — R3 đã loại hết nhóm đó khỏi bảng trên.

### 9.2 Tiếng Anh thừa trong bản dịch tiếng Việt

| Dòng | Bản Việt | Vấn đề | Đề xuất |
|---|---|---|---|
| ch07 d137 | *"(quản lý sân khấu)"* — nhưng nhãn vai là `ステージMC` | Nhất quán: d153 cũng `ステージMC` nhưng không có chú thích | Giữ, không lỗi |
| ch07 d195 | *"báo trước kịp đó"* | ✅ Đã dịch `heads up`, tốt | — |
| ch07 d273 | *"Demo + **toạ đàm discussion** hôm nay"* | **Dịch nửa vời**: "toạ đàm" (đã dịch) + "discussion" (còn nguyên) = thừa chữ | *"Demo + toạ đàm hôm nay"* |
| ch07 d279 | *"Khán giả cũng dịu xuống"* | ✅ Đã dịch `audience` | — |
| ch07 d399 | *"ô, **response** nhanh"* | Còn nguyên tiếng Anh | *"ô, phản hồi nhanh"* |
| ch07 d401 | *"Spec **production environment**, sau gửi mail giúp được không?"* | 2 cụm tiếng Anh; d400 ngay trên đã dịch `本番環境` thành "môi trường thực tế" → **không nhất quán trong 2 dòng liền nhau** | *"Thông số môi trường thực tế, sau gửi mail giúp được không?"* |
| ch07 d408 | *"Dũng xử lý tốt"* | ✅ Đã dịch `recovery` | — |
| ch07 d433 | *"Câu kỹ thuật của chuyên gia phân tích"* | ✅ Đã dịch | — |
| ch08 d27 | *"(3) **check** ngày-giờ-địa điểm, (4) **RSVP**"* | `check` nên dịch; `RSVP` giữ được (thuật ngữ thiệp mời quốc tế, và d34/d46 giải thích rõ) | *"(3) **xác nhận** ngày-giờ-địa điểm"* |
| ch08 d31 | *"dark suit (đen hoặc dark navy), white shirt, cravat MÀU trắng-bạc"* | 4 cụm tiếng Anh trong 1 câu tiếng Việt. Đây là **lời chị Hương giải thích cho người mới** — càng cần tiếng Việt rõ | *"vest sẫm màu (đen hoặc **xanh navy đậm**), **sơ mi trắng**, cravat màu trắng-bạc"* |
| ch08 d13 (Bí quyết tổng) | *"nam = **dark suit** (đen / **dark navy**) + **white shirt** + cravat trắng"* | Cùng vấn đề, ở khối Bí quyết tổng (chỗ người đọc lướt đầu tiên) | Như trên |
| ch08 d34 | *"gửi **reply card** đính kèm thiệp"* | | *"gửi **thiệp hồi đáp** đính kèm"* |
| ch08 d418 | *"Sẽ cần **check-in luggage** hoặc đem 1 phần lên **carry-on**"* | 2 cụm; ngay dòng dưới d433 đã dùng đúng tiếng Việt "hành lý xách tay / ký gửi" → **không nhất quán** | *"Sẽ cần ký gửi hoặc đem 1 phần lên hành lý xách tay"* |
| ch08 d448 | *"khác cả cách của Việt Nam em"* | ✅ Đã dịch `culture shock` phía JA thành カルチャーショック, VN dịch "sốc văn hóa" — tốt | — |

**Tổng tiếng Anh thừa trong bản VN ch07–08: 8 chỗ** (không tính các từ đã được vòng 3 xử lý).

### 9.3 Ký tự lạ / chính tả
Quét toàn ch07–08: **0 ký tự Hangul, 0 chữ Hán giản thể, 0 thẻ ruby vỡ**. Riêng `ch08 d462` bản Việt *"Mọi ngươi!"* → thiếu dấu, phải là **"Mọi người!"** (🔵).

---

## 10. TRỤC F — NHẤT QUÁN TOÀN SÁCH (nhiệm vụ riêng của R3)

### 10.1 Bảng đối chiếu cơ học 8 chương

| Phép đo | Kết quả |
|---|---|
| Số tình huống: `chương.md` vs `_front_matter.md` | **8/8 KHỚP** (10/12/11/14/13/11/12/11) ✅ |
| Mốc thời gian `背景` vs bảng front matter | **8/8 KHỚP** ✅ |
| Tên nhân vật front matter vs chương | **KHỚP** — Itō (không còn "Itoki"), Yamamoto (Osaka, ch03 nói Kansai-ben ✅), Sato Fukuoka (ch03), Hùng Thanh Hà (ch01) ✅ |
| Số khối Bí quyết vs số tình huống | ch06: 12 Bí quyết / 11 tình huống · ch08: 12 / 11 — **do vòng 4 thêm khối onsen và khối 忌み言葉 độc lập**, ✅ hợp lệ |
| Tiêu đề chương: front matter vs H1 | **4/8 LỆCH** — xem F-1 |
| Ruby vỡ toàn sách | **0** ✅ |

### 10.2 🟡 F-1 · Bảng danh mục chương lệch tiêu đề H1 — 4/8

| Ch | `_front_matter.md` (d33–40) | H1 trong `chương.md` |
|---|---|---|
| 01 | Một ngày tại triển lãm IT WEEK Tokyo | ✅ khớp |
| 02 | Cuối tuần đi golf cùng khách | ✅ khớp |
| **03** | Tiệc tất niên 忘年会 | Tiệc tất niên **cuối năm** 忘年会 |
| **04** | **Lần đầu sang Nhật làm việc 1 tuần** | **Công tác Nhật 1 tuần lần đầu** |
| **05** | Tiếp **khách** Nhật sang thăm **TP.HCM** 3 ngày | Tiếp **đoàn khách** Nhật thăm **HCMC** 3 ngày |
| **06** | Đi **suối nước nóng** 1 đêm cùng khách | Đi **onsen** 1 đêm cùng khách |
| 07 | Lễ ra mắt sản phẩm chung | ✅ khớp |
| 08 | Tiệc cưới đồng nghiệp Nhật | ✅ khớp |

**Mức 🟡** — không sai nội dung, nhưng rule mục F ghi nhận đây là lỗi meta điển hình (sách 08 lệch 51/51, sách 02 lệch 60/60). Sách 09 chỉ lệch 4/8, nhẹ hơn nhiều.
**Đề xuất:** chuẩn hoá theo **H1** (vì H1 là thứ in ra đầu mỗi chương), trừ ch06 nên lấy bản front matter *"suối nước nóng"* (tiếng Việt, hợp chủ trương nhãn UI tiếng Việt) hoặc **thống nhất dùng "onsen"** ở cả hai — miễn là một. Ch05: chọn **"HCMC"** hoặc **"TP.HCM"** cho toàn sách; hiện `chương.md` dùng cả hai (ch05 H1 "HCMC", ch08 d3 "HCMC", front matter "TP.HCM").

### 10.3 🟡 F-2 · Ba nhân vật cùng họ 佐藤 (Satō)

| Nơi | Nhân vật | Nguồn |
|---|---|---|
| `voice_profiles.json` `sato_kyushu` | **Sato Kenji**, chi nhánh Fukuoka, 58-62t, Hakata-ben | Xuất hiện ch03 (6 lượt) |
| `ch07 d345` 来場者A | **佐藤**, phòng xúc tiến AI ngân hàng Kanto | Khách tham quan, 2 lượt |
| `ch08 d112` | **佐藤由美 (Sato Yumi)** — **cô dâu** | Nhân vật quan trọng nhất chương cuối |

**Vấn đề:** 佐藤 là họ phổ biến nhất Nhật Bản nên trùng họ trong đời thực rất bình thường — **nhưng trong một cuốn sách 8 chương với cast cố định, ba 佐藤 làm người đọc phải dừng lại kiểm tra**. Nặng nhất là ch07 d345: khách tên 佐藤 xuất hiện **ngay chương liền trước** chương mà cô dâu tên 佐藤.
**Mức:** 🟡 — không sai sự thật, chỉ gây nhiễu.
**Đề xuất (chỉ 1 chỗ, rẻ nhất):** đổi 来場者A ở `ch07 d345, d347, d350, d519` từ 佐藤 sang họ khác (vd **中川** / **大野**). Nhân vật này chỉ 2 lượt thoại + 2 lần nhắc trong recap → **4 chỗ**, không đụng cast chính. **KHÔNG đổi cô dâu** (佐藤由美 xuất hiện ở d112 lời thề của linh mục — cảnh trang trọng nhất chương) và **KHÔNG đổi Sato Kyushu** (có profile, có Hakata-ben, đã ổn định).

### 10.4 🟡 F-3 · 田中専務 trùng họ với 田中PMO
`ch07 d438` 松本: 「さっき<ruby>経営陣<rt>けいえいじん</rt></ruby>の**田中<ruby>専務<rt>せんむ</rt></ruby>**とちょっと<ruby>話<rt>はな</rt></ruby>したんだけど…」 · nhắc lại `ch07 d525` (*"gửi thư cảm ơn **Tanaka senmu**"*).

**Vấn đề nặng hơn F-2:** 田中PMO là **nhân vật xuyên suốt 5 chương** và là **chú rể của chương 08**. Trong ch07 d438, cùng một đoạn thoại, Matsumoto nói về "Tanaka senmu của ban giám đốc" quyết định điều Dũng sang Tokyo. Người đọc rất dễ hiểu thành **"Tanaka PMO đã lên chức senmu"** — một hiểu lầm về cốt truyện, không chỉ về tên.
**Đề xuất:** đổi **田中専務 → 上原専務** (hoặc 佐伯/川上) tại `ch07 d438` và `d525`. **2 chỗ.** B2 đã nêu, chưa sửa.

### 10.5 🔵 F-4 · `zun_inner` khai trong voice_profiles nhưng KHÔNG dùng ở đâu
`voice_profiles.json` định nghĩa speaker `zun_inner` (`tts_voice_hint: "skip-tts"`, notes: *"Render .md là dòng italic `*[Dũng nghĩ: ...]*`"*).
Quét toàn 8 chương: **0 lần** xuất hiện chuỗi `Dũng nghĩ:` hay bất kỳ nhãn tách nội tâm nào. Toàn bộ nội tâm viết chung trong khối `*[...]*` với mô tả cảnh — ví dụ `ch07 d71–81` (cả tình huống 2 là nội tâm), `ch07 d180`, `ch08 d71`, `ch08 d152`, `ch08 d468`.
**Hệ quả:** pipeline TTS không phân biệt được narration cảnh (đọc) với nội tâm Dũng (skip).
**Mức 🔵 và NGOÀI PHẠM VI SỬA NỘI DUNG** — đây là vấn đề pipeline/schema, không phải chất lượng dạy học. **Ghi nhận để chủ nhà quyết**, đừng sửa trong đợt này (sửa sẽ đụng ~40 khối italic khắp 8 chương).

### 10.6 🔵 F-5 · Thiếu 相槌 / ngắt lời (#S5 từ đợt 1)
Xác nhận lại: ch07–08 có các lượt thoại rất dài không có 相槌 xen giữa — dài nhất `ch07 d314` (~330 ký tự JA, câu trả lời Q&A 3 lớp) và `ch08 d345` (~150 ký tự).
**Nhưng cần nói công bằng:** `ch07 d314` là **câu trả lời trên sân khấu trong phiên Q&A chính thức** — trong tình huống đó người Nhật **không** chen 相槌, và một câu trả lời có cấu trúc 3 điểm liền mạch mới là chuẩn. Tương tự `ch08 d149-150` (祝辞) và `d163` (phát biểu của bố) — đây là **độc thoại theo nghi thức**, không phải hội thoại.
→ **Trong phạm vi ch07–08, #S5 gần như không áp dụng.** Nếu làm #S5 thì nhắm vào ch05/ch06 (hội thoại bàn ăn/phòng khách), đừng đụng ch07 d314.
**Đây là điểm mà báo cáo đợt 1 gộp cả sách nên nhìn ra vấn đề lớn hơn thực tế ở 2 chương này.**

---

## 11. NHIỆM VỤ 4b — ĐỐI CHIẾU `voice_profiles.json` (chỉ đọc)

| Speaker | Hồ sơ khai | Biểu hiện ở ch07–08 | Phán định |
|---|---|---|---|
| `zun` | `polite`, `earnest`, `slightly nervous with new clients` | ✅ Rất khớp. ch07 d52 `内心ヒリヒリでした`, d280 `冷や汗かきました`, d310 `nuốt nước miếng` | ✅ **KHỚP** |
| `matsumoto` | `formal Japanese client`, `patient`, 45-50t | ✅ Khớp. ch08 d343-345 giải thích ý nghĩa lời mời cho Dũng = đúng nét `patient` | ✅ **KHỚP** |
| `nakamura_cfo` | `senior executive`, `deliberate pace`, 50-55t | ✅ JA khớp: ch07 d218/d224 (phát biểu khai mạc), ch08 d149-156 (祝辞). Bản VN đã sửa vòng 3 | ✅ **KHỚP** |
| `tanaka_pmo` | `Slack-heavy communicator`, notes: *"**hay dùng tiếng Anh tech term**"* | ch07: **0 lượt** (Tanaka không xuất hiện). ch08: 8 lượt, **0 tech term tiếng Anh** — nhưng d264 nói **cả câu tiếng Anh** (`this is my wife Yumi`) | 🟡 **KHÔNG THỂ KIỂM ở ch07–08** — Tanaka trong ch08 đang ở vai chú rể, không phải vai công việc, nên không dùng tech term là **hợp lý**. Mâu thuẫn mà đợt 1 nêu nằm ở **ch05 d326**, không phải phạm vi R3 |
| `oogaki_sales` | `sharp negotiator`, `direct`, `occasionally probing` | ch07 d433/d435: `次回 panel で、もう signal なしでも自分で take ね` = **có nét `direct` + huấn luyện thẳng**, đúng hồ sơ ✅. ch08 d342/d352/d449/d454: giọng **hoàn toàn dịu** (`(優しく)`, `(うなずく)`) — mất nét `sharp negotiator` | 🟡 **LỆCH MỘT PHẦN** nhưng **CÓ LÝ DO CHÍNH ĐÁNG**: ch08 là đám cưới, không phải bàn đàm phán. Một negotiator sắc sảo dịu giọng ở đám cưới là **khắc hoạ nhân vật tốt**, không phải lỗi. **KHÔNG nên sửa** |
| `inoue_hakuo` | `booth runner năng lượng cao`, `polite-warm`, `cảm ơn nhiều` | ✅ ch07 d38 (`これはダメだ、別のマイクに換えよう!`), d408 (`後で chocolate おごる`), d436 (mang chocolate đến thật) = **rất khớp** cả 3 nét | ✅ **KHỚP TỐT** |
| `tuan_leader` | `technical`, `concise`, `patient when explaining` | ✅ ch07 d112/d114/d145 khớp `patient`. ❌ **d116 "mày/tao" lệch hồ sơ** — xem B-4 | 🟡 **1 chỗ lệch** |
| `fuon` | `authoritative`, `warm with juniors`, `decisive` | ✅ ch08 d26–37: tóm tắt 5 điểm mạch lạc + kết bằng *"đừng căng thẳng… cứ tận hưởng nha"* = khớp trọn cả `authoritative` lẫn `warm with juniors` | ✅ **KHỚP TỐT** |
| `zun_inner` | khai nhưng không dùng | Xem F-4 | 🔵 |

**Nhân vật ch07–08 CHƯA có profile:** `田所記者` (Tadokoro, Nikkei XTECH — 4 lượt, có tên riêng), `山口` (Yamaguchi, bạn ĐH Tanaka — ch08 d211), `由美` (Sato Yumi, cô dâu — **5 lượt, nhân vật có tên trong chương cuối**), `田中父`, `司会者`, `司式者`, `友人スピーチ`, `結婚式スタッフ`, `ステージMC`, `モデレーター`, `アナリスト`, `来場者A/B/C`, `同席ゲストA/B/C`.
→ Đáng thêm profile nhất là **由美 (cô dâu)** — có tên riêng, 5 lượt, xuất hiện trong cảnh cao trào của cả sách.
**⛔ Nhưng `voice_profiles.json` NGOÀI PHẠM VI SỬA của đợt này — chỉ ghi nhận.**

---

## 12. NGOÀI PHẠM VI — GHI NHẬN, KHÔNG SỬA

| # | Vấn đề | Vị trí |
|---|---|---|
| N-1 | `voice_profiles.json` thiếu profile cho 由美/田所/山口 và có `zun_inner` chết | `nội_dung/voice_profiles.json` — **không phải file `.md`** |
| N-2 | `_back_matter.md` ghi *"Ngày phát hành 30/04/2026"* nhưng truyện kết thúc **5/2027**, và bản quyền `© 2026`. Sách phát hành trước khi câu chuyện trong sách diễn ra — hơi lạ nhưng là quy ước xuất bản bình thường (truyện tương lai gần). **Phiên bản 1.1** trong khi sách đã qua 4 vòng sửa | `_back_matter.md` d18–19 — thuộc phạm vi `.md` nhưng là **quyết định xuất bản của chủ nhà**, không phải lỗi nội dung |
| N-3 | Thứ tự chương ≠ thứ tự thời gian (ch04 tháng 9 xếp sau ch03 tháng 12) | Quyết định biên tập — **CẤM SỬA** |
| N-4 | `draft/*.json` đã trôi khác `.md`; ch04 draft còn nguyên tiếng Anh | Đã ghi trong `00_TIEN_DO.md` — không đụng |

---

## 13. 🔴 THỨ TỰ SỬA ĐỀ XUẤT (rẻ → đắt)

| Vòng | Việc | Số chỗ | Rủi ro |
|---|---|---|---|
| 1 | **R3-01** `呼の珍しい` → `呼ぶのは珍しい` (⚠️ copy nguyên văn còn ruby) | 1 | Thấp — nhưng phải theo quy trình `sed -n '218p'` |
| 1 | **B-1** ch08 "3 lỗi" → "2 lỗi" | 1 | Thấp (khối recap tiếng Việt) |
| 1 | ch08 d462 *"Mọi ngươi"* → *"Mọi người"* | 1 | Thấp |
| 1 | **K-1** bỏ chữ `again` trong bảng 忌み言葉 | 1 | Thấp |
| 2 | **DÒNG THỜI GIAN S-1…S-4** | **4** | Thấp — toàn bộ nằm trong recap tiếng Việt, không đụng ruby |
| 2 | **A-3** Fukuzawa → Shibusawa | 2 | Thấp |
| 2 | **A-4** ファーストバイト đảo chiều lại | 1 | Thấp (chỉ thị cảnh tiếng Việt) |
| 2 | **D-1** 70% → ~1/3 | 1 | Thấp |
| 2 | **D-3** catalog giao VN | 1 | Thấp |
| 2 | **D-4** thả chim → bong bóng · **D-5** Pacifico Hotel | 3 | Thấp |
| 3 | **R3-02** ch07 d346 bản Việt (fix nửa vời) | 1 | Trung bình — phải giữ đúng chỉ thị sân khấu |
| 3 | **A-1** quy tắc chiều tờ tiền (viết lại 2 chỗ) | 2 | Trung bình — cần đọc kỹ, dễ viết mơ hồ tiếp |
| 3 | **A-5** RSVP bổ sung bước 御 | 1 | Trung bình |
| 3 | **B-2** ch08 d309 bản Việt · **B-4** ch07 d116 mày/tao | 2 | Trung bình |
| 3 | **R3-03** thêm 袱紗 (3 gạch đầu dòng) · **A-6** 結びきり · **D-2** trình tự 祝辞/乾杯 · **D-6** số tờ lẻ | 4 | Trung bình — bổ sung nội dung, cần chủ nhà duyệt hướng |
| 4 | **E** xưng hô 11 chỗ + tiếng Anh thừa VN 8 chỗ | 19 | Trung bình — **PHẢI đối chiếu từng dòng với JA**, đừng replace mù |
| 4 | **F-1** mục lục 4 chương · **F-2** đổi họa 佐藤 khách ch07 (4 chỗ) · **F-3** 田中専務 (2 chỗ) | 10 | Thấp-trung |
| 5 | **E-1…E-8** tiếng Anh trong ô JA ch07 | 8 | Trung bình — sửa ô JA, **bắt buộc in lại dòng sau mỗi lần sửa** (rule 1.8) |

**Tổng: ~63 chỗ.** Trong đó **9 🔴** là bắt buộc.

---

## 14. ⛔ DANH SÁCH CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

> Đọc mục này TRƯỚC khi sửa bất cứ gì. Đây là các chỗ đã được R3 kiểm chứng là ĐÚNG.

### 14.1 Cấu trúc & thiết kế — chủ ý, không phải lỗi
1. **Tiếng Việt trong ô JA có nhãn `(ベトナム語)`** — ch07 d104-116, d145, d155, d230; ch08 d25-37. **Toàn bộ 15+12 dòng này là CHỦ Ý** (nhân vật Việt nói với nhau). Đợt 1 đã kết luận, R3 tái xác nhận.
2. **Danh từ riêng tiếng Việt trong câu Nhật** — `Tết` (ch08 d383-384), `Tien Phat`, `Tran Van Dung`, `HCMC`, `G7` (ch08 d268). Hoàn toàn tự nhiên.
3. **Thứ tự chương ≠ thứ tự thời gian** (ch04 tháng 9 sau ch03 tháng 12) — sắp theo loại tình huống.
4. **ch06 và ch08 có 12 Bí quyết / 11 tình huống** — do vòng 4 thêm khối độc lập (onsen, 忌み言葉). Đúng.
5. **JA và VN cùng dòng, ngăn `<br/>`** — format sách, đừng tách dòng.

### 14.2 Hội thoại tiếng Anh có chủ ý — KHÔNG phải "tiếng Anh lọt ô JA"
6. `ch07 d261` — Dũng quên từ, chuyển sang tiếng Anh (`sorry, the technical term in Japanese just escaped me…`). **Đây là điểm dạy trung tâm của tình huống 7**, xoá là phá hỏng cả khối Bí quyết d283-293.
7. `ch08 d112` — linh mục nói tiếng Anh+Nhật lẫn (có nhãn `英語+日本語混じり`). Đúng thực tế lễ cưới kiểu Thiên Chúa giáo ở Nhật.
8. `ch08 d264-266` — Tanaka/Yumi/Dũng nói tiếng Anh (có nhãn `英語で小声`, `English練習`). **Là cốt truyện**: Yumi đang luyện tiếng Anh, và d265 chính là bằng chứng Tanaka đã kể về Dũng ở nhà.

### 14.3 Tiếng Nhật ĐÚNG — dễ bị tưởng là keigo sai
9. `頂戴いたします` (ch07 d346) — **không phải 二重敬語**, là dạng đã 慣用化.
10. `お名前を頂戴できますでしょうか` (ch08 d60) — nhân viên lễ tân nói với khách, đúng cấp độ.
11. `ご祝辞を頂戴します` (ch08 d148) — `ご` gắn vào việc của NGƯỜI KHÁC (祝辞 của Nakamura), đúng.
12. `お待ちくださいませ` (ch07 d392) — dạng trang trọng ngành dịch vụ.
13. `年明けから動かしたい` (ch07 d438) — nói vào tháng 3 nghĩa là đầu năm SAU. **Bản Nhật đúng**, chỉ bản Việt "4 tháng nữa" sai (S-2).

### 14.4 Nghi thức đã kiểm chứng ĐÚNG
14. **Toàn bộ khối 忌み言葉 (ch08 d182-200)** — bảng 4 nhóm, giải thích 入刀, quy tắc không chấm câu, 3 lưu ý cho người Việt. **Đã WebSearch từng dòng, chuẩn.** Chỉ tinh chỉnh K-1/K-2/K-3 nếu muốn.
15. **ch07 名刺交換 phần JA (d346) và Bí quyết (d370-375)** — thứ tự đưa, 2 tay, đọc tên, đặt lên bàn, không ghi chú trước mặt: **đúng chuẩn**. Chỉ bản Việt d346 cần vá.
16. **Goshugi 30,000円 / 50,000円** (d12, d43) · **tránh số 4 và 9** (d92) · **新札** (d89) · **quy định trang phục cấm cravat đen/suit toàn đen** (d13, d31, d44) — tất cả **đúng**.
17. **Quy tắc không chấm câu 、。 trong thiệp mừng** (d200) — đúng.
18. **ch08 d411** `ベトナムへ発つの?` — đã sửa đúng, **đừng đổi lại thành 帰る**.
19. **ch08 d309** `その分ええ出会いがある` (bản JA) — đã sửa đúng để gỡ từ kiêng 悪い. **Chỉ sửa bản VN**, đừng đụng JA.
20. **ch06 quy tắc onsen + 浴衣右前** (vòng 4 thêm) — ngoài phạm vi R3 nhưng ghi để không ai sửa tiện tay.

### 14.5 Xưng hô ĐÚNG — rule mục 3 đã ghi 2 ca phóng đại ở chính sách này
21. **Mọi lượt của ズン xưng "em"** — Dũng là vai dưới, đúng chuẩn.
22. **松本 / 大垣 / 井上 / 中村 / Tuấn / Hương gọi Dũng là "em"** — đây là **NGÔI 2**, hoàn toàn hợp lệ. Đừng đưa vào danh sách sửa.
23. **ch07 d218, d445; ch08 d464** — đã sửa vòng 3, **đừng sửa lại**.

### 14.6 Giọng nhân vật
24. **`oogaki_sales` dịu giọng ở ch08** (d342, d352, d449, d454) — đám cưới, không phải bàn đàm phán. **Khắc hoạ nhân vật tốt, không phải lệch hồ sơ.**
25. **`tanaka_pmo` không dùng tech term ở ch08** — đang là chú rể, không phải vai công việc. Hợp lý.
26. **ch07 d314 (câu trả lời Q&A 330 ký tự không có 相槌)** — trên sân khấu, trong phiên Q&A chính thức. **Không chen 相槌 mới là chuẩn.** Đừng áp #S5 vào đây.
27. **ch08 d149-150 (祝辞), d163 (phát biểu của bố), d297-309 (友人スピーチ)** — độc thoại theo nghi thức, **không phải hội thoại**. Đừng chèn 相槌.

### 14.7 Nội dung hay — điểm sáng cần giữ
28. `ch07` tình huống 5 (chuyển hướng phóng viên) + tình huống 10 (demo treo) — dạy đúng nghiệp vụ, viết hay.
29. `ch08` tình huống 8 (Matsumoto giải thích ý nghĩa lời mời, d343-345) — khoảnh khắc bắc cầu văn hoá tốt nhất sách.
30. `ch08 d520` cross-reference *"đã thống nhất với Matsumoto chương 7"* — tham chiếu **đúng** (nội dung có thật ở ch07 d438-445). Chỉ con số năm cần sửa (S-3), **không đụng phần cross-reference**.
31. `ch08 d516` *"Ghi chú chế độ ăn của Tanaka (chay)"* — cross-reference sang ch05, đúng.

---

## 15. TÓM TẮT CHO MAIN CLAUDE

**3 việc quan trọng nhất:**
1. **`呼の珍しい` VẪN CÒN** ở ch08 d218 — đợt 1 kết luận sai vì dính bẫy ruby (rule 1.1). Đây là lỗi tiếng Nhật 🔴 duy nhất còn sót trong phạm vi.
2. **Dòng thời gian đã có phương án tối thiểu 4 chỗ** (S-1…S-4), chốt: 12 tháng · quan hệ 2 năm · onsite **Q1 2028**. Cả 4 nằm trong recap tiếng Việt → sửa an toàn, không đụng ruby.
3. **Tiếng Anh trong ô JA: 243 → 8 ca thật, tất cả ở ch07, 6/8 dồn vào tình huống 11.** ch08 = 0.

**2 fix vòng 4 chưa trọn:** ch07 d346 (JA sửa, VN hụt — mất luôn `頂戴いたします`) và 袱紗 (chưa làm gì).

**Kiểm chứng số liệu B2 (chống phóng đại):** B2 báo xưng hô ch07=12/ch08=8 → R3 rà từng dòng đối chiếu JA: **thực 10 + 1 = 11**, và **10/11 là nhân vật phụ một lần xuất hiện**, nhẹ hơn hẳn ca Nakamura CFO đã sửa. B2 báo "thiếu 相槌 toàn sách" → trong ch07-08 **gần như không áp dụng** vì phần lớn lượt dài là phát biểu nghi thức.

---

> **R3 — chương 07, 08 + nhất quán toàn sách. CHỈ BÁO CÁO, KHÔNG SỬA FILE NỘI DUNG.**
