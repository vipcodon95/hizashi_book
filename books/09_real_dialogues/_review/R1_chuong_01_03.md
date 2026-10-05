# [09-R1] Rà soát đợt 2 — chương 01–03

> Agent: R1 · Ngày: 2026-08-16 · Trạng thái: HOÀN THÀNH
> Phạm vi: `chương_01_展示会/chương.md` (491 dòng), `chương_02_ゴルフ/chương.md` (442), `chương_03_忘年会/chương.md` (437)
> Đối chiếu: `.claude/rules/book-review.md`, `_review/00_TIEN_DO.md`, `_review/B1_chuong_01_04.md`, `_front_matter.md`, `_thuat_ngu.md`
> Phương pháp: strip ruby bằng python trước mọi grep; tách ô JA/VN theo `<br/>`; WebSearch kiểm chứng 12 khẳng định sự thật.

---

## 0. Bảng tổng kết

| Mức | Số | Nội dung chính |
|---|---|---|
| 🔴 Nghiêm trọng | **6** | 3 ca dạy SAI VIỆC THẬT về golf (giày clubhouse, mulligan, thứ tự đánh), 1 ca 上座 mâu thuẫn + sai nghi thức, 1 ca số liệu triển lãm vẫn sai sau khi "đã fix", 1 ca thiếu 中締め |
| 🟡 Vừa | **9** | tiếng Anh trong ô JA (13 ca thật), dịch lệch, mâu thuẫn dòng thời gian Phase, dẫn chiếu "sách 07/08" không kiểm chứng được, số liệu quà bánh |
| 🔵 Nhẹ | **4** | 相槌 vắng bóng, ナイスショット thiếu, caddie 井上 trùng tên, mật độ Latin |
| **Tổng** | **19** | |

**Đánh giá chung.** Ba chương này **tiếng Nhật rất sạch** — tôi quét lại toàn bộ 332 lượt thoại theo 18 pattern kính ngữ và **xác nhận kết luận của main Claude: 0 ca 二重敬語/過剰敬語 trong ch01–03**. Không tìm được ca nào khác để trích. Trục C sạch.

Ổ lỗi thật nằm ở **trục A (dạy sai việc thật) — chương 02 golf**, chứ không phải chương 03 tiệc rượu như đề bài dự đoán. Ch03 xử lý chuyện rượu **rất tốt** (xem mục 5). Ngược lại ch02 có **3 lời khuyên nghi thức golf sai với thực tế Nhật Bản hiện nay**, mà học viên sẽ làm theo nguyên văn.

---

## 1. 🔴 BẢNG KIỂM CHỨNG FIX ĐỢT 1 (rule mục 5)

Với mỗi mục trong `00_TIEN_DO.md` thuộc ch01–03, tôi mở đúng file, tìm chuỗi "Sai" và chuỗi "Đúng":

| # | Mục trong 00_TIEN_DO | Vị trí kiểm | Chuỗi SAI còn không? | Chuỗi ĐÚNG có không? | Kết luận |
|---|---|---|---|---|---|
| 1 | "Itoki" → "Itō" | ch01–03 + `_front_matter` d25 | `Itoki` = **0** ca toàn ch01–03 | `_front_matter` d25: *"anh Itō (Nagoya)"* ✅ | **ĐÃ FIX** (ch01–03 vốn không chứa; lỗi nằm ở ch04 — ngoài phạm vi R1) |
| 2 | 佐藤先生 → 佐藤さん (ch03) | ch03 d53, 188, 194, 195, 199, 201, 203 | `佐藤先生` = **0** ca | Nhãn nhân vật = `**佐藤さん**` (6 lượt); d194 `佐藤さん、ありがとうございます`; d53 `こちら側の奥に佐藤さん` | **ĐÃ FIX TRỌN** (JA + nhãn + VN đồng bộ) |
| 3 | ch01 ga tàu | ch01 d19 | `Kokusai-Tenjijō` = **0** | d19: `(ga Tokyo Big Sight, tuyến Yurikamome)` | **ĐÃ FIX** — và **fix đúng**. WebSearch xác nhận ゆりかもめ đổi 国際展示場正門駅 → 東京ビッグサイト駅 ngày 16/3/2019; 国際展示場駅 là りんかい線. Đi từ Shinbashi = Yurikamome ✅ |
| 4 | ch01 quy mô IT Week | ch01 d3 | `700 gian hàng` / `90,000` = **0** | d3: `≈950 công ty trưng bày… gần 58,000 lượt khách` | **FIX NỬA VỜI — số MỚI vẫn sai với bối cảnh truyện.** Xem #R1-A5 dưới |
| 5 | ch03 焼酎 中々 | ch03 d195 | `地元福岡の麦焼酎` = **0** | JA: `九州の麦焼酎で『中々』ていうの。宮崎の蔵のやつばい` · VN: *"shochu lúa mạch Kyushu… Của lò bên Miyazaki đó"* | **ĐÃ FIX TRỌN (JA + VN)**. WebSearch xác nhận 中々 = 黒木本店, 宮崎県高鍋町 ✅ |
| 6 | ch03 Tết 2027 = 6/2 | ch03 d202 | `1月29日` = **0** | JA: `来年は2月6日です` · VN: *"Năm sau là 6/2"* | **ĐÃ FIX TRỌN (JA + VN)**. WebSearch xác nhận mùng 1 Tết Đinh Mùi = **thứ Bảy 06/02/2027** ✅ |
| 7 | Xưng hô (9 chỗ vòng 3) | ch01–03 | Vòng 3 chỉ liệt kê ch05/07/08 — **không có ca nào thuộc ch01–03** | — | **KHÔNG ÁP DỤNG.** Tôi quét độc lập lại ch01–03 theo tiêu chí rule (JA có `私`/`僕` và KHÔNG có `〜さん`) → **0 ca sai**. Xác nhận đánh giá "trục này sạch" của B1 (#E2) |
| 8 | Tiếng Anh thừa trong bản VIỆT (16 chỗ) | ch01 d367, 369, 315; ch03 d29, 264, 330, 59 | **CÒN 5 CA CHƯA FIX** — xem bảng dưới | một phần đã fix (d264 "câu đùa… thẳng thắn", d376 "quá đà", d420 "kết nối trong ngành", d330 "hạn chót") | **FIX NỬA VỜI** |
| 9 | Tiếng Anh trong ô JA (#6, "208 dòng — chưa làm") | ch01–03 | chưa động | — | **CHƯA FIX** — nhiệm vụ 2, xem mục 2 |

### 1b. Chi tiết mục #8 — 5 ca tiếng Anh thừa CÒN SÓT trong bản tiếng Việt

Vòng 3 khai "16 chỗ ✅ XONG" nhưng ch01–03 vẫn còn:

| Ch | Dòng | JA (đã strip ruby) | VN hiện tại | Vấn đề | Đề xuất |
|---|---|---|---|---|---|
| 01 | 367 | `もちろん、ぜひ。お土産何が人気?` | *"Đương nhiên rồi, mời cậu. Quà gì **popular**?"* | JA dùng 人気 — **bản Việt tự thêm tiếng Anh không có trong bản Nhật** | "Quà gì được ưa chuộng?" |
| 01 | 369 | `…シュガーバターサンドの木も人気だよ…` | *"…hoặc Sugar Butter Sand cũng **popular**…"* | như trên | "cũng được ưa chuộng" |
| 01 | 315 | `Tien Phatさん、技術力高いって松本から聞いてます。` | *"Anh Matsumoto khen Tien Phat **technical** mạnh."* | JA là 技術力 (thuần Nhật); bản Việt chèn tiếng Anh | "khen Tien Phat kỹ thuật mạnh" |
| 03 | 29 | `(ベトナム語)Topic an toàn…` | *"(tiếng Việt) **Topic** an toàn…"* | "Topic" tiếng Anh trong lời tiếng Việt | "Chủ đề an toàn" (sửa cả 2 ô vì đây là dòng tiếng Việt có nhãn) |
| 03 | 59 | `ズン、僕らはこっち、入口側。junior は shimoza。` | *"…**Junior** thì **shimoza**."* | `junior` là tiếng Anh thừa (JA có sẵn 後輩/若手); `shimoza` là từ Nhật Latin hoá — chấp nhận được vì chương đang dạy chính thuật ngữ này | JA → `後輩は下座`; VN → "Người ít kinh nghiệm thì ngồi shimoza (下座)" |

**⚠️ Cảnh báo cho main Claude:** ca ch01 d118 *"Hỏi vậy thì **demo girl** mới ngồi xuống trả lời"* (B1 #D2) **VẪN CHƯA FIX**. JA gốc chỉ nói 「demo の人」 — trung tính. Đây là lỗi **nặng hơn tiếng Anh thừa**: bản Việt tự bịa sắc thái hạ thấp nghề nghiệp, gán cho một 営業部長, trong khi người demo trong chương là **kỹ sư 山田**. Không nằm trong danh sách vòng 3 nên bị bỏ sót.

---

## 2. 🔴 BẢNG LỌC "TIẾNG ANH TRONG Ô NHẬT" — ch01–03

### 2a. Cách đếm

Strip ruby → tách ô JA (trước `<br/>`) → bắt token Latin:

| Cách đếm | ch01–03 |
|---|---|
| Mọi token Latin trong ô JA | **537** token / 313 từ khác nhau / 123 dòng |
| Bỏ dòng có nhãn `(ベトナム語)` (chủ ý thiết kế) | 105 dòng |
| **LỖI THẬT sau khi phân loại** | **13 ca** |

### 2b. Phân loại từng ca (105 dòng → 13 lỗi)

**NHÓM 1 — KHÔNG PHẢI LỖI: tên riêng / tên công ty / tên sản phẩm** (≈180 token)
`Tien Phat`, `Thanh Hà Software`, `Pham Quoc Hung`, `Tran Van Dung`, `Tuan Le`, `Hakuō`, `Hùng`, `Tokyo`, `HCMC`, `Big Sight`, `Andrew Ng`, `Smart Bank Assistant`, `PRESS BUTTER SAND`, `Sapa`, `Tết`, `AirDrop`, `RX-78`, `Tokyo Office`, `Co. Ltd.`
→ Người Nhật viết y hệt. **Không sửa.**

**NHÓM 2 — KHÔNG PHẢI LỖI: thuật ngữ IT/AWS người Nhật dùng nguyên chữ Latin** (≈60 token)
`AWS`, `Bedrock`, `Agent`, `COBOL`, `Go`, `POC`, `QR`, `Slack`, `AI`, `BD`, `CFO`, `IT Week`, `Phase 4/5`, `guard rail`, `hallucination`, `human-in-the-loop`, `70% automation + 30% human review`
→ Đây là cách viết thật trong tài liệu/họp IT Nhật. **Không sửa.** (`Phase` xuất hiện 17 lần — cao nhất — nhưng là tên giai đoạn dự án, hoàn toàn hợp lệ.)

**NHÓM 3 — KHÔNG PHẢI LỖI: hội thoại tiếng Anh CÓ CHỦ Ý**
- ch02 d92 `(英語混じり、励まし)Nice, that's the feel!` — **có nhãn 英語混じり ngay trong ô**, Tuấn cố ý pha tiếng Anh động viên. Đúng ý đồ. **Không sửa.**

**NHÓM 4 — KHÔNG PHẢI LỖI: từ Nhật/Việt viết Latin có chủ đích dạy học**
`soba` (ch01 d235 ×2), `miso` (d238), `phở` (d241, 242), `shimoza` (ch03 d59), `onsen` (ch02 d352), `Tết` (ch03 d200–203)
→ `phở`/`Tết` là danh từ riêng tiếng Việt trong câu Nhật — tự nhiên (đúng như ĐÍNH CHÍNH đợt 1). `soba`/`miso`/`onsen` là từ Nhật, viết katakana thì đúng hơn nhưng **không phải lỗi dạy học**. **Không sửa.**

**NHÓM 5 — KHÔNG PHẢI LỖI: đơn vị / ký hiệu**
`200y`, `220y`, `180y`, `5cm`, `NG` (ch02) — ký hiệu đo lường, người Nhật viết y hệt. **Không sửa.**

**NHÓM 6 — KHÔNG PHẢI LỖI: `OK`**
13 lần. 「OK」 là từ **đã nhập tịch hoàn toàn** vào tiếng Nhật nói (オーケー), người Nhật mọi lứa tuổi dùng. **Không sửa.**

### 2c. ✅ 13 CA LỖI THẬT — cần chuyển sang katakana / từ Nhật

Tiêu chí: từ tiếng Anh viết **chữ Latin** trong lời nhân vật **Nhật**, mà tiếng Nhật thật **luôn** dùng katakana hoặc kanji; viết Latin làm người học **đọc sai thành tiếng Anh**.

| # | Ch | Dòng | Người nói | JA hiện tại (đã strip ruby) | Sửa thành | Vì sao là lỗi |
|---|---|---|---|---|---|---|
| 1 | 01 | 38 | 松本PM | `田中くんはもう中でbadge取ってるはずです。` | `バッジ` | Triển lãm Nhật luôn viết バッジ/ネームカード |
| 2 | 01 | 42 | 松本PM | `じゃあ、まず badge 取りに行こうか。` | `バッジ` | 〃 |
| 3 | 01 | 58 | 田中PMO | `私のbadgeは『Hakuō Co. Ltd.』で出てるけど` | `バッジ` | 〃 |
| 4 | 01 | 75 | 田中PMO | `badge 見せて入る booth とパス入る booth` | `バッジ` ×1, `ブース` ×2 | ブース là chuẩn tuyệt đối; **cùng dòng này đã có パス viết katakana** → tự mâu thuẫn ngay trong 1 câu |
| 5 | 01 | 78 | 松本PM | `展示者だと自分の booth 守らなきゃ` | `ブース` | 〃 |
| 6 | 01 | 154 | フン | `僕も booth 13:00 から` | `ブース` | Hùng nói tiếng Nhật với người Nhật |
| 7 | 01 | 254 | フン | `私 booth 戻ります` | `ブース` | 〃 |
| 8 | 01 | 292 | 松本PM | `次、白鷗のbooth寄ろうか` | `ブース` | **Chính ch01 d316 Dũng đã nói `井上さんのブース`** — cùng chương, cùng từ, hai cách viết |
| 9 | 01 | 320 | ズン | `3:45 まで booth 内で待機します` | `ブース` | 〃 |
| 10 | 02 | 190 | 松本PM | `ゴルフは最初の3年は score 気にしない。**enjoy + matter improve** したらいい。` | `楽しんで、一打ずつ良くなればそれでいい` | 🔴 **Nặng nhất**: `enjoy + matter improve` **không phải tiếng Anh đúng, cũng không phải tiếng Nhật** — cụm vô nghĩa. Bản Việt phải đoán ("cứ thưởng thức và cải thiện từng điểm"). Xác nhận phát hiện #D3 của B1 |
| 11 | 02 | 244 | トゥアン | `ズン、weather チェックして。` | `天気予報` | 天気 là từ N5, không lý do dùng Latin |
| 12 | 02 | 246 | 松本PM | `weather チェックありがとう。caddie さんに…` | `天気予報` + `キャディさん` | Người Nhật 45t nói tiếng Anh **nhiều hơn** người Việt cùng cảnh → sai giọng nhân vật. `caddie` càng lạ vì d247/248 đã dùng キャディ katakana |
| 13 | 03 | 361 | 松本PM | `(歩きながら、casual)ズンさん、来年の話なんだけどさ。` | `(歩きながら、砕けた口調で)` | `casual` nằm trong **chỉ dẫn sân khấu tiếng Nhật** — các chỉ dẫn khác cùng chương đều thuần Nhật (`小声`, `関西弁`, `緊張`, `陽気`) |

**Ba ca ranh giới — tôi xếp là KHÔNG PHẢI LỖI, ghi ra để main Claude không bị bất ngờ:**
- ch03 d370 松本 `それまで family と話してて` — `family` viết Latin hơi lạ (家族 là N5), nhưng Matsumoto trong 3 chương đều có tật pha tiếng Anh; đây là **nét nhân vật nhất quán**, không phải lỗi kỹ thuật. Nếu main Claude sửa 10–12 thì nên sửa luôn cho đồng bộ.
- ch01 d420 大垣 `業界 networking 大事` — 営業部長 nói `networking` là thực tế trong ngành. Giữ.
- ch02 d58 大垣 `ロッカーで golf shoes に履き替えて` — nên là ゴルフシューズ, nhưng dòng này **sẽ bị viết lại toàn bộ** vì nội dung sai sự thật (xem #R1-A1).

**Con số cuối cùng cho ch01–03: 537 token thô → 105 dòng (bỏ tiếng Việt có nhãn) → 13 ca lỗi thật (9 ca `badge`/`booth` + 1 ca cụm vô nghĩa + 2 ca `weather`/`caddie` + 1 ca `casual`).**

---

## 3. 🔴 TRỤC A — DẠY LÀM SAI VIỆC THẬT

### #R1-A1 🔴 [ch02 d56, 58, 64–71, 423] — DẠY SAI: "cởi giày đi dép trong nhà câu lạc bộ golf"

**Nguyên văn JA** (d56, Tuấn):
> `(小声)ズンさん、靴脱いでスリッパね。クラブハウス内は土足NG。`
**VN:** *"(nhỏ giọng) Dũng à, cởi giày đi dép trong nha. Trong nhà câu lạc bộ không đi giày ngoài."*

**Khối Bí quyết d64–71 chốt thành quy tắc:**
> - **Cởi giày bước vào nhà câu lạc bộ** — đổi dép trong.
> - **Không** đi giày ngoài sân lên thảm nhà câu lạc bộ.

**Sổ tay Dũng d423 lặp lại:** *"Suýt đi giày thể thao vào nhà câu lạc bộ → đổi dép trong ngay khi vào."*

**Vấn đề — WebSearch xác nhận NGƯỢC LẠI.** Nhà câu lạc bộ golf Nhật hiện nay là **土足** (đi nguyên giày vào). Quy trình thật: đi giày thường (da/sneaker) vào clubhouse → nhận chìa khoá tủ ở quầy → **trong phòng thay đồ** mới đổi sang giày golf → ra sân. Điều bị cấm là **đi giày GOLF vào clubhouse**, không phải đi giày thường. Hơn nữa nguồn hướng dẫn nghi thức nói rõ: *"疲れたからといってロッカールーム内に置いてあるスリッパなどに履き替えてクラブハウス内をうろうろしてはいけません"* — **đi dép của phòng thay đồ lang thang trong clubhouse chính là vi phạm nghi thức**, và *"サンダルやスリッパ…はマナー違反"*.

**→ Sách đang dạy học viên làm đúng cái điều bị coi là mất lịch sự.** Đây là loại lỗi trục A nguy hiểm nhất: học viên đọc xong sẽ cởi giày ở cửa clubhouse trước mặt khách hàng Nhật.

**Đề xuất (sửa đồng bộ 3 chỗ):**
- d56 JA → `(小声)ズンさん、ゴルフシューズはロッカーで履き替えるからね。クラブハウスにゴルフシューズで入るのはNG。` VN → *"Dũng à, giày golf thì vào phòng thay đồ mới đổi. Đi thẳng giày golf vào nhà câu lạc bộ là không được."*
- d58 大垣 → giữ ý "trong phòng thay đồ đổi giày golf rồi mới ra sân" (câu này **vốn đã đúng**), bỏ vế dép.
- Bí quyết d64–71 → viết lại: (a) đi giày da/sneaker sạch tới sân, (b) **không** đi giày golf vào clubhouse, (c) đổi giày golf trong phòng thay đồ, (d) trước khi vào clubhouse dùng máy thổi khí + khăn làm sạch giày golf, (e) tuyệt đối không sandal/dép.
- d423 sổ tay → *"Suýt đi thẳng giày golf vào nhà câu lạc bộ → giày golf chỉ đổi trong phòng thay đồ."*

### #R1-A2 🔴 [ch02 d119, 121, 132–138, 15, 413] — DẠY SAI: "mulligan lỗ 1 gần như là truyền thống ở Nhật"

**Nguyên văn JA** (d121, Matsumoto):
> `うん、初めての海外ゴルフ場、ホール1のマリガンは伝統みたいなものだから。気楽にね。`
**VN:** *"Ừ, sân golf nước ngoài lần đầu, mulligan lỗ 1 gần như là truyền thống rồi. Thoải mái đi."*

**Hai lỗi chồng nhau:**

**(a) Sai góc nhìn nhân vật.** Dũng là **người Việt đang ở Nhật** — với Dũng đây là 日本のゴルフ場, không phải 海外ゴルフ場. Matsumoto (người Nhật, ở Nhật) gọi sân nhà mình là "sân nước ngoài" là **vô lý**. Đáng chú ý: **d60 chính Dũng đã nói đúng** `初めての日本のゴルフ場で楽しみです` → **mâu thuẫn nội bộ trong cùng chương, cách nhau 61 dòng.**

**(b) Sai phong tục — WebSearch.** Golf Nhật **không có truyền thống mulligan**. Luật địa phương đặc trưng của Nhật cho cú tee shot hỏng là **前進4打 (Forward 4 / "Front 4")** — đánh OB thì tiến tới điểm thả bóng có cọc vàng cách ~200–250y và đánh gậy thứ 4, **chính là để tránh việc đánh lại nhiều lần gây chậm vòng**. Chậm vòng (スロープレー) bị coi là vi phạm nghi thức nặng nhất ở Nhật.

**→ Sách dạy học viên rằng "mulligan lỗ 1 gần như là truyền thống ở Nhật" là truyền sai kỳ vọng.** Học viên có thể tự cho mình quyền đánh lại, hoặc chờ được mời mulligan mà không bao giờ được mời.

**Đề xuất:**
- d121 JA → `うん、初めての日本のゴルフ場だし、1番ホールは誰でも緊張するからね。今日は気楽にいこう。`
- Bí quyết d132–138 viết lại theo hướng: mulligan **không phải thông lệ Nhật**, chỉ là ưu ái riêng do chủ nhà chủ động cho trong nhóm thân; **tuyệt đối không tự đề nghị**; bổ sung **前進4打** — đây mới là thứ học viên sẽ gặp thật ở sân Nhật (đáng giá hơn cả phần mulligan).
- d15 (Bí quyết tổng) và d413 (sổ tay) chỉnh theo.

### #R1-A3 🔴 [ch02 d105, 110–112, toàn chương] — THIẾU: nghi thức thứ tự đánh (オナー / 遠球先打)

**Hiện trạng.** d105 dẫn cảnh có nêu thứ tự lỗ 1: *"Matsumoto → Ōgaki → Tuấn → Dũng (người ít kinh nghiệm nhất đánh cuối)"*. Nhưng **suốt 12 tình huống, chương không hề nhắc**:
- **オナー (honour)** — từ lỗ 2 trở đi, người ghi ít gậy nhất ở lỗ trước được đánh trước. Đây là **cơ chế cốt lõi** quyết định thứ tự cả vòng.
- **遠球先打** — sau tee shot, người xa cờ nhất đánh trước.

**Vấn đề.** WebSearch xác nhận cả hai là kiến thức nền của mọi vòng golf Nhật; nghi thức hậu-lỗ còn gồm *"次のオナーが誰かを全員で共有してからグリーンを離れる"*. Một chương golf **12 tình huống, có Bí quyết riêng cho cả cách cầm cờ pin** mà bỏ trắng thứ tự đánh là thiếu bài học có giá trị cao nhất — học viên ra sân sẽ đứng ngơ ngác không biết tới lượt ai, hoặc tệ hơn là đánh cướp lượt của khách hàng.

**Đề xuất.** Thêm 3–4 lượt ở Tình huống 8 (lỗ 10, d238–249 — đúng chỗ "tee off 9 lỗ sau" nên tự nhiên phải xác lập lại thứ tự): caddie hoặc Ōgaki nói `松本さん、オナーどうぞ` → Dũng hỏi `オナーって?` → giải thích. Kèm Bí quyết ngắn: オナー là gì · 遠球先打 · thứ tự lỗ 1 quyết bằng bốc thăm hoặc nhường khách · đánh nhầm lượt **không bị phạt**, chỉ cần nói 「失礼しました」 (chi tiết này gỡ áp lực rất tốt cho người mới).

### #R1-A4 🔴 [ch03 d47, 53, 55, 64, 67–75] — 上座/下座: chương TỰ MÂU THUẪN và dạy ngược vai chủ–khách

**Bối cảnh xác lập rõ (d52, Hương):** `本日はお招きいただきありがとうございます` = **Hakuō là bên MỜI, Thiên Phát là KHÁCH.**

**Nhưng d53 Matsumoto xếp chỗ:**
> `(席を案内)中村CFOはこちらの奥、その隣に大垣さん、フオン副部長、こちら側の奥に佐藤さん…`
> *"Anh Nakamura CFO ngồi cuối này, kế bên là Ōgaki, chị Hương, bên này cuối là anh Sato…"*

→ **Kamiza (奥, xa cửa) được trao cho Nakamura CFO — người của bên MỜI.** Hương (đại diện khách cấp cao nhất) chỉ ngồi thứ ba.

**Mâu thuẫn với chính khối Bí quyết d69–73 của chương:**
> **Kamiza (上座)** = chỗ xa cửa nhất, dành người cấp cao nhất / **khách quý**.
> - Khách nước ngoài thường được **mời kamiza** dù ít tuổi hơn — bên JP coi là 'khách đặc biệt'.

**Và mâu thuẫn với d55:** *"Tuấn kéo nhẹ tay, ra hiệu mắt **'để khách JP ngồi kamiza'**"* — gọi bên Hakuō là "khách", trong khi d52 vừa xác lập Hakuō là bên mời.

**WebSearch xác nhận quy tắc thật:** *"招待する側が招待された取引先より下座に座り、招待された取引先が上座に座るのが一般的"* — bên mời ngồi shimoza, bên được mời (đối tác) ngồi kamiza; 主賓 là đại diện bên khách.

**→ Ba tầng lỗi trong một cảnh:** (1) sai sự thật nghi thức, (2) văn bản tự mâu thuẫn giữa thoại và Bí quyết, (3) thuật ngữ "khách" đảo ngược giữa d52 và d55. Đây là **cảnh mở màn của chương dạy chính về 上座/下座** nên sai ở đây phá hỏng cả chương.

**Đề xuất.** Chọn một trong hai hướng, rồi đồng bộ d47/53/55/64/69–75:
- **Hướng A (đúng nghi thức, khuyến nghị):** Matsumoto mời `フオン副部長、どうぞ奥へ` (Hương lên kamiza), Nakamura ngồi đối diện phía bên mời. Bí quyết giữ nguyên — lúc đó thoại và lý thuyết mới khớp.
- **Hướng B (giữ nguyên thoại, sửa Bí quyết):** thêm nhịp Hương **từ chối kamiza** — `いえいえ、中村様がどうぞ奥へ` — và Bí quyết giải thích: ở tiệc 忘年会 chung có 役員 bên chủ nhà, việc khách nhường kamiza cho 役員 là **cách ứng xử thực tế phổ biến**. Hướng này dạy được nhiều hơn nhưng phải nói rõ, không để im lặng như hiện nay.
- Trong cả hai hướng: d55 sửa *"để khách JP ngồi kamiza"* → *"để phía Hakuō ngồi phía trong"*.

### #R1-A5 🔴 [ch01 d3] — SỐ LIỆU IT WEEK: fix đợt 1 dùng số của kỳ SAI năm

**Hiện tại (đã fix đợt 1):**
> *"Japan IT Week Spring — triển lãm IT lớn nhất Đông Á, ≈950 công ty trưng bày, 3 ngày, gần 58,000 lượt khách."*

**Bối cảnh truyện: tháng 5/2026.**

**WebSearch số chính thức Japan IT Week Spring 2026** (japan-it.jp — trang chủ sự kiện):
- Thời gian: **8–10/4/2026**
- Số công ty trưng bày: **1.100 công ty trở lên**
- Lượt khách: **51.370** (8/4: 14.801 · 9/4: 16.829 · 10/4: 19.740)

→ Con số `950 / 58.000` không khớp kỳ 2026. Đây là số của kỳ 2025 — **fix đợt 1 đã sửa một số sai thành một số sai khác**, đúng kiểu "fix nửa vời" mục 5.

**Thêm hai vấn đề chưa được động tới trong lần fix đó:**
1. **"triển lãm IT lớn nhất Đông Á"** — khẳng định không nguồn. Ban tổ chức tự xưng là 「日本最大のIT・DX展示会」 (**lớn nhất Nhật Bản**), không phải Đông Á.
2. **Lệch tháng.** Sự kiện thật diễn ra **tháng 4**, truyện đặt **tháng 5/2026** và nói *"ký Phase 4 xong tháng 4"*. Nếu giữ tên thật "Japan IT Week Spring" thì tháng phải là tháng 4.

**Đề xuất d3:** `Japan IT Week Spring — một trong những triển lãm IT lớn nhất Nhật Bản, hơn 1.100 công ty trưng bày, 3 ngày, khoảng 51.000 lượt khách.` + dời bối cảnh sang **tháng 4/2026** (kéo theo `_front_matter` d/bảng chương 01 và ch03 d232 `5月の IT Week` → `4月の`). Nếu chủ nhà muốn giữ tháng 5 thì phải đổi tên sự kiện thành tên hư cấu.

### #R1-A6 🔴 [ch03 — giữa TH9 (d285) và TH10 (d322)] — THIẾU 中締め

Bonenkai kết thúc lúc 22:00, đoàn chuyển thẳng sang niji-kai (d328 Tanaka: `二次会カラオケ行く?`), **không có 中締め** — nghi thức khép tiệc chính thức: người cấp cao nói lời kết + 手締め (一本締め/三本締め/一丁締め).

WebSearch xác nhận đây là nghi thức chuẩn của 忘年会 công ty, và nguồn còn cảnh báo đúng điểm người nước ngoài hay vấp: *"一本締めと一丁締めを混同して説明すると、最後の最後で恥をかく"* — 一本締め là 10 nhịp (3-3-3-1), 一丁締め chỉ 1 nhịp; nhầm là mất mặt ngay trước toàn thể.

**→ Chương chuyên về bonenkai thiếu đúng nghi thức đóng của bonenkai.** Với người Việt, đây là khoảnh khắc hoang mang nhất: không biết vỗ tay lúc nào, vỗ mấy nhịp. Xác nhận phát hiện #C10 của B1 — **chưa ai sửa**.

**Đề xuất.** Thêm 1 tình huống ngắn (5–6 lượt) trước TH10: Ōgaki `それでは、お手を拝借。よ〜、パン!`, Dũng vỗ trượt nhịp, Matsumoto giải thích nhỏ. Kèm Bí quyết: 中締め là gì · phân biệt 一本締め (3-3-3-1, tổng 10) / 三本締め (lặp 3 lần) / 一丁締め (1 nhịp, hay dùng ở izakaya vì ồn) · câu MC hay dùng 「お手を拝借」 · **quy tắc số một: nghe kỹ người xướng gọi tên kiểu nào rồi mới vỗ**.

---

## 4. 🟡 TRỤC B — TỰ MÂU THUẪN

### #R1-B1 🟡 [ch01 d3 + d388 vs ch03 d116] — Phase 4: "vừa ký / kickoff" hay "vừa hoàn thành"?

| Vị trí | Nội dung |
|---|---|
| ch01 d3 (5/2026) | *"Cty Thiên Phát **ký Phase 4** với 白鷗 xong tháng 4"* |
| ch01 d388 田中 | `Phase 4 のキックオフでこういうの大事` — **kickoff** |
| ch01 d326 大垣 | `Phase 3の頃から自発的なタイプ` — Phase 3 là quá khứ ✅ nhất quán |
| ch03 d116 中村CFO (12/2026) | `今年、白鷗としては Phase 4 を無事に完了でき` — **hoàn thành trong năm 2026** ✅ hợp lý |
| ch02 d383 (6/2026) | *"tháng sau là **sprint cuối Phase 4**"* → sprint cuối vào 7/2026 |

**Vấn đề:** ch02 d383 nói sprint **cuối** Phase 4 rơi vào tháng 7/2026, nhưng ch03 (12/2026) Ōgaki mới bàn Phase 5 `年明けにスコープ広げる` và Hương nói `来年もチーム一同全力で` — tức có **5 tháng trống (8–12/2026) không rõ đang làm gì**, trong khi ch04 (9/2026) là chuyến công tác Tokyo. Không phải mâu thuẫn cứng, nhưng "sprint cuối" là từ quá dứt khoát cho một dự án còn chạy tới cuối năm.

**Đề xuất:** ch02 d383 → *"tháng sau là sprint căng nhất của Phase 4"* (bỏ chữ "cuối"). Rủi ro thấp, gỡ được điểm cấn.

### #R1-B2 🟡 [ch03 d372 vs `_front_matter`] — "1年半" vs "12 tháng"

ch03 d372 Matsumoto: `Phase 1 のメール ride-along から 1年半。早かったね。` — tháng 12/2026 trừ 1,5 năm = Phase 1 bắt đầu **~6/2025**.

`_front_matter`: *"mạch truyện kéo dài khoảng **12 tháng** (5/2026 → 5/2027)"*.

Hai con số **không mâu thuẫn về mặt logic** (Phase 1 xảy ra **trước** khi sách bắt đầu), nhưng `00_TIEN_DO.md` mục "Quyết định cần chủ nhà chốt" #1 đã ghi nhận ch07/ch08 còn nói "3 năm" và "2 năm". **Ca ch03 d372 này là mốc neo sớm nhất và có vẻ hợp lý nhất** — nếu chủ nhà chốt dòng thời gian, nên lấy `Phase 1 = 6/2025` làm gốc và chỉnh ch07/ch08 theo, chứ đừng sửa ch03.
→ **Ghi vào danh sách CẤM SỬA** cho tới khi có quyết định toàn sách.

### #R1-B3 🟡 [ch02 d14, 29, 358, 360, 334 + ch03 d28, 184, 190, 209] — dẫn chiếu "sách 07 / sách 08" không kiểm chứng được

| Ch | Dòng | Nội dung | Vấn đề |
|---|---|---|---|
| 02 | 14 | *"Onsen sau golf = truyền thống. **Sách 07** đã dạy nhưng ôn lại"* | Theo `_front_matter`, **온sen là chương 06 của CHÍNH sách 09 này** (Atami, 1/2027). Sách 07 trong bộ Hizashi là sách khác |
| 02 | 29 | Tuấn: *"Onsen sau vòng, **sách 07** anh dạy rồi"* | 〃 — và tệ hơn: nhân vật **trong truyện** dẫn chiếu số hiệu sách giáo trình, phá vỡ hoàn toàn tính "hội thoại thật" |
| 02 | 334 | *"Dũng đã đọc **sách 07** nhưng vẫn lúng túng"* | 〃 |
| 02 | 358, 360 | *"### Bí quyết — Onsen sau golf — **ôn lại từ sách 07**"* / *"**Ôn lại từ sách 07 (rule onsen)**"* | 〃 |
| 03 | 28 | Hải: *"Em mới **rule sách 08** đọc xong tuần trước"* | Nhân vật dẫn số hiệu sách; **thêm lỗi trật tự từ tiếng Việt** — xem #R1-E1 |
| 03 | 184, 190, 209 | *"**Sách 08** dạy không từ chối người lớn tuổi hơn mời"* ×3 | Xem #R1-A7 dưới — nội dung được dẫn có vấn đề |

**Vấn đề gốc:** hai kiểu dẫn chiếu bị trộn — (a) trong **Bí quyết** (giọng tác giả, dẫn sách khác là hợp lệ) và (b) trong **lời thoại nhân vật** (Tuấn, Hải, Dũng) — loại (b) phá vỡ nhất quán tiểu thuyết và không kiểm chứng được. Chương 06 của chính sách này mới là chương onsen.

**Đề xuất:** trong **thoại**, đổi sang trung tính — d29 → *"Onsen sau vòng, hôm trước anh dặn rồi"*; d28 → *"Em vừa đọc lại phần quy tắc dự tiệc tuần trước"*. Trong **Bí quyết**, đổi *"ôn lại từ sách 07"* → *"ôn nhanh (chương 06 sẽ nói kỹ)"* — vừa đúng, vừa tạo liên kết nội bộ sách.

### #R1-A7 🟡→🔴 [ch03 d184, 190, 209–213] — "Người 60t mời 1 ly = KHÔNG TỪ CHỐI" mâu thuẫn với chính d99–105

Đây là ca đáng chú ý nhất về rượu — và tôi **xác nhận ch03 xử lý chuyện rượu tốt hơn nhiều so với lo ngại của đề bài**, nhưng có một vết nứt:

**Phần LÀM RẤT TỐT (không sửa):**
- d86 松本: `飲めない方は他の物どうぞ` — chủ nhà **chủ động mở đường** ngay từ lượt gọi đồ uống đầu.
- d88–91 Yamamoto phát hiện Linh do dự → đỡ công khai → Linh gọi oolong. Không ai bình luận thêm.
- Bí quyết d99–105 **rất chuẩn**: *"JP modern (2020s+) — không ép uống đã thành phổ biến"*, *"Không cần xin lỗi"*, và tinh tế nhất là *"Tránh câu 私はお酒飲めません tuyệt đối — nghe quá cứng nhắc. Câu ビール苦手で… nhẹ hơn"*.
- d212–214 (ch02): Tuấn từ chối bia bữa trưa golf bằng **lý do kỹ thuật** `午後まだ9ホールあるので集中したい` + Bí quyết d227–233 dạy đúng cách từ chối khéo. Xuất sắc.

**Vết nứt — d184, d190, tiêu đề Bí quyết d207:**
> d184 (dẫn cảnh): *"Sách 08 dạy **không từ chối người lớn tuổi hơn mời**."*
> d190: *"Dũng nhớ quy tắc sách 08: người 60t mời 1 ly = **không từ chối**, dù không quen shochu."*
> d207: *"### Bí quyết — Người 60t mời 1 ly = **chấp nhận**"*

**Vấn đề.** Sách vừa dạy ở d99–105 rằng từ chối là OK, rồi 80 dòng sau dạy rằng với người 60 tuổi thì **không được từ chối**. Hai thông điệp đá nhau, và cái thứ hai là cái nguy hiểm: nó là **quy tắc tuyệt đối, không nêu ngoại lệ**. Rule mục 4A đã ghi nhận đúng ca này ở sách 08 (*"Ép uống rượu: rule_12 khuyên 'uống 1 ngụm' — ~40% người Nhật thiếu ALDH2, và アルハラ nay là cấm kỵ"*).

Với người Việt: tỉ lệ thiếu men ALDH2 ở Đông Á rất cao, và một học viên **không uống được rượu** đọc câu "người 60t mời thì không từ chối" sẽ uống — rồi đỏ mặt, tim đập nhanh, có người nguy hiểm thật. Nguồn WebSearch về アルハラ khuyến nghị ngược lại: *"飲酒を強要されたらキッパリと断る"*, *"一度でも妥協すると『少しなら飲める』と思われてしまう"*.

**Cần phân biệt hai chuyện mà chương đang gộp làm một:**
- **Đi lại ngồi cạnh khi người lớn tuổi gọi** = nghi thức, **nên làm** ✅ (chương dạy đúng)
- **Bắt buộc uống** = **không đúng và có rủi ro sức khoẻ** ❌

**Đề xuất (không phá cảnh Sato — cảnh này hay):**
- d184/d190 → *"Người lớn tuổi mời riêng 1 ly = cử chỉ rõ rệt, **nên đi lại ngồi cùng** — còn uống hay không là chuyện riêng."*
- d207 tiêu đề → *"### Bí quyết — Người 60t mời riêng 1 ly = lời mời tới GẦN, không phải lệnh uống"*
- Thêm 2 gạch đầu dòng vào Bí quyết d209–213: (a) **nếu không uống được**: vẫn đi lại, nhận ly bằng hai tay, `ありがとうございます、少しだけいただきます` hoặc `お酒は弱いので、お茶で乾杯させてください` — cái được đánh giá là **đến gần**, không phải lượng rượu; (b) nêu rõ **アルハラ** là khái niệm đã thành cấm kỵ ở doanh nghiệp Nhật, và ~40% người Đông Á thiếu men ALDH2 — không uống được là chuyện thể chất, không phải chuyện thái độ.

---

## 5. 🔵 TRỤC C — TIẾNG NHẬT

**Kết quả: 0 lỗi.** Tôi quét 332 lượt thoại ch01–03 theo 18 pattern (二重敬語 `部長様`/`社長様`/`おっしゃっておられる`/`お伺いさせていただく`; 過剰敬語 お/ご vào việc của mình; さ入れ言葉 `〜させていただく` chia sai; uchi/soto; 弊社/当社/御社/貴社; 申し伝える nội bộ) và **không tìm được ca nào để trích làm bằng**.

Xác nhận kết luận của main Claude. Ba điểm đáng ghi nhận là **ĐÚNG, dễ bị sửa nhầm** (đưa vào CẤM SỬA):
- ch03 d292 トゥアン `はい、伺います` — 伺う khiêm nhường đúng hướng (Tuấn nghe Ōgaki, người ngoài công ty). ✅
- ch03 d125 フオン `全力で取り組ませていただきます` — 取り組ませて là dạng sai khiến đúng của 取り組む (nhóm 1 đuôi む), **không phải** さ入れ言葉. ✅
- ch01 d150 フン `Thanh Hà Software の Pham Quoc Hung です` — B1 (#B1) đề xuất thêm 弊社. **Tôi không đồng ý**: Hùng đang tự giới thiệu công ty **của mình** cho khách của bên khác trong bối cảnh triển lãm; `弊社` chỉ bắt buộc khi nói về công ty mình **trong tương quan với 御社**. Câu hiện tại tự nhiên. Không sửa.

Về **#B3 của B1** (ch02 d248 caddie `ご安心ください` "trịch thượng"): tôi **không đồng ý là lỗi**. 「ご安心ください」 từ nhân viên dịch vụ nói với khách là cách nói chuẩn mực, gặp thường xuyên trong ngành dịch vụ Nhật. Đưa vào CẤM SỬA.

---

## 6. 📊 BẢNG DỮ KIỆN WEBSEARCH (trục D)

| # | Khẳng định trong sách | Vị trí | Kết quả tra | Phán định |
|---|---|---|---|---|
| 1 | Tết 2027 = 6/2 | ch03 d202 | Mùng 1 Tết Đinh Mùi = **thứ Bảy 06/02/2027** | ✅ ĐÚNG (fix đợt 1 chuẩn) |
| 2 | 中々 là 麦焼酎 của lò Miyazaki | ch03 d195 | 中々 = 黒木本店, 宮崎県高鍋町; cùng lò với 百年の孤独, 㐂六 | ✅ ĐÚNG (fix đợt 1 chuẩn) |
| 3 | Sato mời Dũng tới Fukuoka xem 蔵元 | ch03 d203 | 黒木本店 **có** tour tham quan (kèm 尾鈴山蒸留所). Nhưng lò ở **Miyazaki**, còn Sato mời sang **Fukuoka** | 🟡 CẤN — Sato nói `福岡に来たら焼酎工場連れてってあげる` ngay sau khi khoe rượu Miyazaki. Fukuoka **có** lò 麦焼酎 riêng (vd 天盃) nên câu không sai tuyệt đối, nhưng người đọc kỹ sẽ thấy hụt. Đề xuất d203 thêm nửa câu: `福岡にもよか蔵のあるけん、連れてってあげる` |
| 4 | Ga Tokyo Big Sight, tuyến Yurikamome | ch01 d19 | ゆりかもめ đổi tên 国際展示場正門駅 → **東京ビッグサイト駅** ngày 16/3/2019. 国際展示場駅 thuộc りんかい線 | ✅ ĐÚNG (fix đợt 1 chuẩn) |
| 5 | Shinbashi → Big Sight ~30 phút | ch01 d35; về d408 "≈25 phút" | Yurikamome Shinbashi→Tokyo Big Sight ≈ 22–25 phút | ✅ ĐÚNG (30 phút gồm đi bộ; hợp lý) |
| 6 | IT Week Spring: 950 công ty, 58.000 lượt, "lớn nhất Đông Á" | ch01 d3 | **2026: 8–10/4, 1.100+ công ty, 51.370 lượt.** BTC tự xưng 「日本最大」 không phải Đông Á | ❌ **SAI** → #R1-A5 |
| 7 | Cởi giày → dép trong ở clubhouse golf | ch02 d56, 64–71 | Clubhouse Nhật là **土足**; đi dép của locker lang thang trong clubhouse là **vi phạm nghi thức**; điều bị cấm là đi **giày golf** vào clubhouse | ❌ **SAI NGƯỢC** → #R1-A1 |
| 8 | Mulligan lỗ 1 "gần như truyền thống" ở Nhật | ch02 d121, 132–138 | Nhật **không có** truyền thống mulligan; luật địa phương đặc trưng là **前進4打**, đặt ra chính để chống chậm vòng | ❌ **SAI** → #R1-A2 |
| 9 | Điểm 65/9 lỗ của người mới là "tệ, cao nhất nhóm" | ch02 d181, 183, 187 | Nguồn Nhật: người mới nên **nhắm 60–65 cho 9 lỗ** (6–7 gậy/lỗ); người mới toàn vòng 120–140 | ✅ **ĐÚNG — B1 (#C5) BÁO SAI.** 65 nằm đúng dải mục tiêu người mới. **Không sửa điểm số.** (Xem CẤM SỬA) |
| 10 | Lịch: 9 lỗ đầu 08:00–11:00, nghỉ trưa 1h, 9 lỗ sau 12:30–15:30 | ch02 d103–293 | Chuẩn Nhật: mỗi 9 lỗ **≤2h15**, nghỉ trưa ~1h, tổng 5,5–6h | ✅ ĐÚNG — lịch trong chương khớp chuẩn. **B1 nghi ngờ "vòng không thể kết thúc 15:30" là báo nhầm** |
| 11 | Sapa (miền Bắc VN) có onsen tự nhiên | ch02 d348 | Suối khoáng nóng tự nhiên **Bản Hồ, Sa Pa** (cách trung tâm ~30km), 40–45°C | ✅ ĐÚNG — không phải lỗi |
| 12 | 中締め là nghi thức chuẩn của bonenkai | ch03 (thiếu) | Xác nhận chuẩn; 一本締め 10 nhịp / 三本締め 30 / 一丁締め 1 — nhầm là mất mặt | ❌ **THIẾU** → #R1-A6 |
| 13 | Bên mời ngồi shimoza, khách ngồi kamiza | ch03 d53 | Xác nhận: *"招待する側が…下座に、招待された取引先が上座に座るのが一般的"* | ❌ **LÀM NGƯỢC** → #R1-A4 |
| 14 | Chi phí vòng golf | ch02 (không nhắc) | Chuẩn: **bên mời trả** プレー代 | 🔵 THIẾU — xem #R1-F3 |
| 15 | Dây đeo 3 màu: Đỏ/Vàng=trưng bày, Xanh=khách, Trắng=báo chí | ch01 d83 | Triển lãm Nhật **có** phân loại bằng màu badge/dây đeo, nhưng **bảng màu do từng ban tổ chức tự quy định**, không có chuẩn toàn quốc | 🟡 Nói quá — đề xuất d83 sửa thành *"Triển lãm Nhật thường phân màu dây đeo theo vai trò (người trưng bày / khách tham quan / báo chí) — **xem bảng chú thích của từng sự kiện**"* |
| 16 | シュガーバターサンドの木: hộp ¥1.500 = 28 cái, bán trong Big Sight | ch01 d369, 379, 395 | Quy cách thật: **5 cái ¥450 · 7 cái ¥680 · 10 cái ¥900 · 18 cái ¥1.728 · 24 cái ¥2.160**. **Không có quy cách 28 cái**; điểm bán tập trung ga Tokyo/Shinagawa + sân bay, **không tra được quầy trong Big Sight** | ❌ SAI → #R1-D1 |

---

## 7. 🟡 CÁC PHÁT HIỆN CÒN LẠI

### #R1-D1 🟡 [ch01 d369, 379, 395] — quy cách & giá hộp bánh, và "Big Sight cũng bán"

- d379: *"Dũng mua: 1 hộp **¥1,500 (28 cái)**"* → không tồn tại quy cách 28 cái. Gần nhất: 18 cái ¥1.728 hoặc 10 cái ¥900.
- d395 (Bí quyết): *"1 cái gói riêng trong hộp 28 cái… Tổng chi phí: **≈50¥**"* → phép tính đổ theo. Với 18 cái/¥1.728 thì 1 cái ≈ **¥96**.
- d369 JA: `空港でも買えるけど Big Sight 内のショップでも` — không tra được nguồn xác nhận có quầy trong Tokyo Big Sight. **Đây là câu người Nhật (Tanaka) khẳng định chắc chắn** nên sai là lộ.

**Đề xuất (sửa đồng bộ 3 chỗ):** d379 → *"1 hộp ¥1.728 (18 cái)"*; d395 → *"≈100¥"*; d369 JA → `空港でも買えるし、東京駅でも買えるよ` (vừa đúng vừa hợp lộ trình Dũng về qua Shinbashi/Tokyo).

### #R1-E1 🟡 [ch03 d28] — câu tiếng Việt vỡ trật tự từ

JA: `(ベトナム語)Vâng chị. Em mới rule sách 08 đọc xong tuần trước, hi vọng đủ dùng.`
VN: *"(tiếng Việt) Vâng chị. **Em mới rule sách 08 đọc xong tuần trước**, hi vọng đủ dùng."*

Trật tự từ hỏng hoàn toàn (bổ ngữ đứng trước động từ theo cú pháp Nhật), cộng thêm "rule" tiếng Anh. **Lỗi ở CẢ HAI Ô** vì dòng tiếng Việt có nhãn thì hai ô trùng nhau.
**Đề xuất (sửa cả 2 ô):** *"Vâng chị. Em vừa đọc xong phần quy tắc dự tiệc tuần trước, hy vọng đủ dùng."*

### #R1-E2 🟡 [ch02 d129] — câu đùa mất ngữ cảnh + mâu thuẫn 11 dòng

JA: `最初の OB ボールは、田中の名前で残しとこうか(笑)。` VN: *"Quả OB lúc nãy để tên Tanaka đi (cười)."*

Hai lỗi: (a) **Tanaka không có mặt ở chương 02** — nhóm golf chỉ có Matsumoto, Ōgaki, Tuấn, Dũng; câu đùa mất hoàn toàn ngữ cảnh, người đọc không hiểu đùa gì. (b) **d118 Dũng vừa nói `OB じゃないですけど`** — bóng không phải OB, nó bay sang fairway lỗ bên; Ōgaki gọi là "OB ボール" ngay 11 dòng sau. Xác nhận #E3 của B1, **chưa sửa**.
**Đề xuất:** d129 → `じゃあそれでいこう。さっきの1球は、なかったことにしよう(笑)。` / *"Vậy chơi với quả đó. Quả lúc nãy coi như chưa có nhé (cười)."*

### #R1-E3 🟡 [ch02 d421] — "xe điện" sai nghĩa

Sổ tay: *"Quên điện thoại **trên xe điện** (lỗ 5) → lần sau để túi quần."*
d152 nói rõ điện thoại ở **bag golf trên cart**. "Xe điện" trong tiếng Việt = tàu điện → sai hoàn toàn. Xác nhận #E5 của B1, **chưa sửa**.
**Đề xuất:** *"Quên điện thoại trong túi gậy trên xe golf (lỗ 5) → lần sau để túi quần."*

### #R1-E4 🟡 [ch01 d118] — "demo girl" (nhắc lại từ mục 1b vì mức độ)
Xem chi tiết ở mục 1b. **Đề xuất:** *"Hỏi vậy thì người trình bày mới ngồi xuống trả lời."*

### #R1-F1 🔵 [ch02 d109, 248 vs ch01 d314–342] — caddie trùng tên 井上 với nhân vật cố định

井上 là Product Manager của 白鷗 (`inoue_hakuo`), xuất hiện dày ở ch01 TH8 (6 lượt) và ch04. Đặt caddie nữ sân Chiba cũng tên **井上** — người đọc ch02 ngay sau ch01 dễ hiểu nhầm. Ô JA d109 còn phải chú thích vụng 「(架空)」.
Với sách dùng TTS theo speaker key, đây còn là rủi ro **một giọng cho hai người**.
**Đề xuất:** đổi caddie thành họ không trùng cast — `小川` hoặc `木村`; nhãn `キャディ 小川`; bỏ 「(架空)」.

### #R1-F2 🔵 [ch02 — toàn chương] — thiếu 「ナイスショット!」 trong tiếng Nhật

Tôi grep toàn chương: **`ナイスショット` = 0 lần**. Chỉ có d128 Tuấn nói `Nice shot ズンさん!` (**chữ Latin**) và d314 Ōgaki `ナイスバーディー`.

Nguồn nghi thức 接待ゴルフ nêu đích danh: *"相手がいいショットを打ったなら「ナイスショット」と声をかけたり…相手のプレーに気を配るのがポイント"*. Ở d110–112, ba cú tee shot của Matsumoto/Ōgaki/Tuấn được rút thành đúng ba lượt 「よし。」「まあまあ。」「OK。」 — **không ai hô cho ai**. Đây là chi tiết làm cảnh golf Nhật "nghe như thật" hơn bất kỳ chi tiết nào khác, và là câu học viên sẽ dùng nhiều nhất trong 6 tiếng.
**Đề xuất:** chèn 「ナイスショット!」 sau cú của Matsumoto và Ōgaki ở d110–111; đổi d128 `Nice shot ズンさん!` → `ナイスショット、ズンさん!` (giải quyết luôn 1 ca Latin).

### #R1-F3 🔵 [ch02 — toàn chương] — không hề nhắc chuyện chi phí

Chương golf 12 tình huống, có thanh toán ngầm (thẻ điểm ký, ăn trưa, onsen, taxi) nhưng **không một câu nào về ai trả tiền**. Với người Việt lần đầu được khách Nhật mời golf, đây là câu hỏi lo lắng số một (vòng golf Nhật ~¥15.000–25.000/người). WebSearch xác nhận chuẩn: **bên mời trả プレー代**, và khoản này vào 接待交際費 của công ty họ.
**Đề xuất:** thêm 2–3 dòng vào Bí quyết TH12 (d394–400): chủ nhà mời thì chủ nhà trả; khách **nên chủ động ngỏ ý trả phần mình một lần** (`私の分、お支払いします` ) rồi **rút lui nhẹ nhàng khi bị từ chối**; tự trả phí thuê gậy/tiền tip caddie nếu có; và **gửi lời cảm ơn nhắc tới việc được mời** trong tin nhắn hôm sau.

### #R1-F4 🔵 [ch01 TH6 d226–245; ch02, ch03] — 相槌 và ngắt lời gần như vắng bóng

Trong 332 lượt thoại ch01–03, hầu như **không có lượt 相槌 độc lập** (「うんうん」「へえ〜」「なるほど」 đứng riêng), **không có nói chồng**, **không có câu bỏ lửng**. Rõ nhất là ch01 TH6 — 20 lượt liên tiếp ở khu ẩm thực triển lãm đông nghịt mà không ai bị ngắt.

Với sách tên **"Real Dialogues"**, đây là khoảng cách lớn nhất giữa tên sách và nội dung. Đã ghi nhận là #S5 trong `00_TIEN_DO.md`, và đúng là **phải làm sau cùng** vì thay đổi số lượt thoại → ảnh hưởng TTS/pipeline. Tôi ghi lại để không rơi mất, **không đề xuất sửa trong đợt này**.

---

## 8. ⛔ DANH SÁCH CẤM SỬA (chỗ ĐÚNG dễ bị sửa nhầm)

| # | Vị trí | Nội dung | Vì sao CẤM SỬA |
|---|---|---|---|
| 1 | ch02 d181, 183, 187, 432 | Điểm Dũng **65** cho 9 lỗ đầu, tổng **123** | B1 (#C5) đòi hạ xuống 56/108–112. **B1 SAI**: nguồn Nhật nêu người mới nên nhắm **60–65 cho 9 lỗ**; người mới toàn vòng 120–140. Số hiện tại **đúng thực tế**. Phép cộng 65+58=123 cũng đúng |
| 2 | ch02 d103–293 | Lịch trình 08:00 tee off → 11:00 hết 9 lỗ → 12:30 lỗ 10 → 15:30 lỗ 18 | B1 nghi "vòng không thể kết thúc 15:30". **Khớp chuẩn Nhật**: mỗi 9 lỗ ≤2h15 + nghỉ trưa 1h. Không đụng |
| 3 | ch02 d348 | `自然温泉は北部の Sapa とか中部に少しあります` | WebSearch xác nhận **Sa Pa CÓ** suối khoáng nóng tự nhiên (Bản Hồ, 40–45°C). Không phải lỗi về Việt Nam |
| 4 | ch02 d248 | Caddie `カート内に4本ございます、ご安心ください` | B1 (#B3) gọi là "trịch thượng". **Không phải lỗi** — 「ご安心ください」 là cách nói chuẩn của nhân viên dịch vụ Nhật với khách |
| 5 | ch01 d150 | `Thanh Hà Software の Pham Quoc Hung です` | B1 (#B1) đòi thêm 弊社. Không cần: 弊社 bắt buộc khi đối chiếu với 御社, không phải mọi lần tự giới thiệu. Câu hiện tại tự nhiên |
| 6 | ch03 d292 | トゥアン `はい、伺います` | 伺う khiêm nhường **đúng hướng** (nghe người ngoài công ty). Đừng đổi thành 聞きます |
| 7 | ch03 d125 | フオン `全力で取り組ませていただきます` | 取り組ませて là sai khiến **đúng** của 取り組む. **KHÔNG phải** さ入れ言葉 |
| 8 | ch01 d438–442; ch02 d25–30; ch03 d25–31, 93, 128, 156, 264, 330–331 | Lời thoại tiếng Việt trong ô JA **có nhãn `(ベトナム語)`** | **CHỦ Ý THIẾT KẾ** — đã chốt ở ĐÍNH CHÍNH đợt 1. Sửa là phá đặc trưng "Real Dialogues" |
| 9 | ch01 d235, 238, 241–242; ch03 d200–203 | `soba`, `miso`, `phở`, `Tết` viết Latin trong ô JA | Danh từ riêng / tên món — tự nhiên. Không nằm trong 13 ca lỗi |
| 10 | ch01/02/03 | `Phase 4/5`, `AWS`, `Bedrock`, `Slack`, `QR`, `POC`, `BD`, `CFO`, `AI`, `IT Week` trong ô JA | Người Nhật viết y hệt trong tài liệu/họp IT. Không nằm trong 13 ca lỗi |
| 11 | ch02 d92 | `(英語混じり、励まし)Nice, that's the feel!` | Hội thoại tiếng Anh **có chủ ý**, có nhãn 英語混じり ngay trong ô. Không sửa |
| 12 | ch02 d215 | 大垣 `僕らはおじさんだから 1 杯くらい大丈夫(笑)` | Đây là chủ nhà **tự trào**, không phải ép người khác uống. Câu này còn làm nhẹ áp lực cho người từ chối. Giữ |
| 13 | ch03 d86–105 | Toàn cảnh Linh từ chối bia + Bí quyết "Từ chối bia ở bonenkai = OK" | **Phần làm tốt nhất về rượu trong cả 3 chương.** Chỉ sửa d184/190/207 (#R1-A7), tuyệt đối không đụng khối này |
| 14 | ch02 d212–214, 227–233 | Tuấn từ chối bia bữa trưa bằng lý do kỹ thuật + Bí quyết | Dạy đúng và hay. Không đụng |
| 15 | ch03 d372 | `Phase 1 のメール ride-along から 1年半` | Neo dòng thời gian sớm nhất và hợp lý nhất. **Chờ chủ nhà chốt** dòng thời gian toàn sách (mục "Quyết định cần chốt" #1) rồi mới động — đừng sửa lẻ |
| 16 | ch03 d266–268 | Yamamoto tự nhận nói Kansai-ben + đề nghị nói lại tiếng chuẩn; Linh khen phương ngữ | Xử lý phương ngữ rất chuẩn về mặt xã hội học ngôn ngữ. Giữ |

---

## 9. Ghi chú cho main Claude

1. **Thứ tự sửa đề xuất:** #R1-A1 (giày clubhouse) → #R1-A2 (mulligan) → #R1-A4 (上座) → #R1-A7 (rượu người 60t) → #R1-A5 (số IT Week) → 13 ca Latin → các ca 🟡. Bốn cái đầu là **dạy sai việc thật**, ưu tiên tuyệt đối.
2. **#R1-A1 và #R1-A2 phải sửa 3–4 chỗ mỗi cái** (thoại + Bí quyết + Bí quyết tổng + sổ tay Dũng). Đây đúng kiểu "vá thoại quên cheat sheet" ở rule mục 5.3 — kiểm lại bằng grep sau khi sửa.
3. **#R1-A3 và #R1-A6 là BỔ SUNG NỘI DUNG** (thêm tình huống/khối Bí quyết) → thuộc vòng 5, cần chủ nhà duyệt hướng.
4. **B1 báo sai 2 ca** (điểm golf #C5, lịch trình vòng golf) — tôi đã kiểm chứng bằng WebSearch và đưa vào CẤM SỬA. Đề nghị ghi vào `00_TIEN_DO.md` để đợt sau không lặp.
5. **Ngoài phạm vi, chỉ báo cáo:** `voice_profiles.json` khai `sato_kyushu` với `name_ja: "佐藤先生"` — chương đã sửa xong nhưng **cast có thể còn sót** (00_TIEN_DO ghi đã sửa 1 chỗ; cần main Claude xác nhận). Tôi không mở/không sửa file này theo yêu cầu.
6. **Không sửa file nội dung nào.** Chỉ ghi báo cáo này.
