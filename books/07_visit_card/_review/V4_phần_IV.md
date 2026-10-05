# V4 — Rà soát phần IV (rule_24 → rule_30) — Tiếp đãi / ăn uống (接待)

> Agent V4. Phạm vi: 7 file `nội_dung/phần_IV/rule_*/rule.md`.
> Áp dụng `.claude/rules/book-review.md` mục 1, 3, 4, 5. **CHỈ BÁO CÁO, KHÔNG SỬA.**
> Toàn bộ kết luận "có/không có chuỗi X" đều đã strip ruby bằng python trước khi chốt.

---

## 0. Bảng tổng kết

| Trục | Số phát hiện | Mức |
|---|---|---|
| 🔴 A — dạy sai việc thật / rủi ro sức khoẻ + pháp lý | **4** | 2 nặng, 2 vừa |
| 🔴 B — sách tự mâu thuẫn | **2** | 1 nặng (rule_29), 1 vừa (rule_28) |
| 🔴 C — tiếng Nhật sai (keigo) | **4** | xác minh 2 ca của main Claude + tìm thêm 2 |
| 🔴 D — sai sự thật (đã WebSearch) | **2** | 1 nặng (乾杯 rượu vang), 1 vừa (túi giấy) |
| 🟡 E — tiếng Việt | **1** | nhẹ |
| 🟡 F — nhất quán & meta | **3** | nhẹ |

**Đánh giá chung:** đúng như main Claude đo — phần IV **sạch về mặt cơ học** (0 ruby vỡ, 0 ký tự lạ, 0 emoji strip, H1 khớp tên mục lục, 7/7 cross-ref `Liên quan` trỏ đúng rule có thật). Lỗi còn lại **không phải lỗi gõ, mà là lỗi NỘI DUNG NGHIỆP VỤ** — tập trung đúng vào vùng chủ nhà cảnh báo: rượu và quà.

**Số ca keigo tôi tìm được là 4, không phải 2.** Đây là con số **cao hơn** thước đo của main Claude — theo mục 3 tôi tự kiểm chứng lại: 2 ca thêm (d37, d80) là cùng một họ lỗi 伺う, nằm ở dòng mà bộ 17 pattern của main Claude không phủ. Chi tiết ở mục 3.

---

## 1. 🔴 MỤC RIÊNG — RỦI RO SỨC KHOẺ & PHÁP LÝ TRONG TIẾP ĐÃI

Chủ nhà yêu cầu soi 6 câu hỏi. Trả lời thẳng từng câu:

| # | Câu hỏi | Trả lời |
|---|---|---|
| 1 | Sách có khuyên uống rượu khi được mời không? Có dạy cách TỪ CHỐI không? | **KHÔNG khuyên uống** (tốt) — nhưng **KHÔNG dạy từ chối** (thiếu) |
| 2 | Có nhắc người không uống được (下戸 / thể chất) không? | **KHÔNG có một chữ nào** |
| 3 | 乾杯 có bắt buộc uống không? Có nói rõ được nâng ly bằng nước ngọt/trà không? | **KHÔNG bắt buộc uống rõ ràng, nhưng cũng KHÔNG nói được dùng đồ không cồn** |
| 4 | お酌 dạy thế nào? Có ép buộc không? | **Dạy rót LIÊN TỤC, không có van an toàn** — đây là ca nặng nhất |
| 5 | Có dạy gì về giới hạn chi phí tiếp đãi / chống hối lộ không? | **KHÔNG có gì** |
| 6 | Quà: giá bao nhiêu hợp lý? Có nêu điềm xấu (số 4, 9, khăn tay, đồ sắc) không? | **Giá CÓ (đúng chuẩn)**, **điềm xấu KHÔNG có** |

### ✅ Điểm sách làm ĐÚNG — phải ghi nhận, đừng sửa mất

Sách 07 **KHÔNG lặp lại lỗi chết người của sách 08 rule_12**. Không có bất kỳ câu nào bảo học viên "uống một ngụm cho phải phép". Ngược lại, có 3 chỗ chủ động mở đường cho người không uống rượu:

- `rule_24` d35: 「alcohol: 日本酒+ワイン両方準備、**ノンアルも**」
- `rule_24` d43 ghi chú【3】: *"Mặc định sake + vang + đồ không cồn → khách có lựa chọn. **CFO không uống cũng không bị áp lực.**"*
- `rule_25` d36: 「お飲み物は日本酒・ワイン・**ノンアル**ご用意しております。」

Đây là thiết kế **đúng và tiến bộ**. Nó giải quyết vấn đề từ phía CHỦ NHÀ (chuẩn bị sẵn lựa chọn) — cách phòng アルハラ hiệu quả nhất.

### 🔴 A-1 (NẶNG) — `rule_25`: dạy rót rượu LIÊN TỤC, không có van dừng

**rule_25 d47, ghi chú【3】** — nguyên văn:

> **Bên tiếp đón canh ly khách liên tục** = rót trước khi cạn. Hành động trước khi khách phải tự rót = ghi điểm.

Và **d39** (hội thoại TỐT):

> （中村CFOのglassが空になりそう→すぐ pour）「中村様、もう一杯いかがでしょうか。」
> *(thấy ly CFO Nakamura sắp cạn → rót ngay) Anh Nakamura, em rót thêm cho anh ly nữa được không ạ?*

**Vấn đề:** quy tắc được dạy là **vô điều kiện** — "canh ly liên tục", "rót trước khi cạn", "rót ngay". Không có một câu nào nói *khi nào thì DỪNG rót*. Học viên Việt học thuộc quy tắc này rồi áp dụng máy móc với một khách đã ngà ngà → chính là hành vi **アルハラ dạng "断りにくい雰囲気をつくる"** (tạo bầu không khí khó từ chối) theo định nghĩa của Asahi Beer.

**Không phải suy diễn.** Khảo sát Persol (10 vạn người lao động) cho thấy nhận thức đã đảo chiều: **~80% người đi làm coi việc trách móc chuyện お酌 là quấy rối**, và nguồn ngành ghi rõ 「部下からお酌されると『飲まないといけない雰囲気』になる」/「上司にお酒を過度に勧める行為は**逆に部下からのアルハラに該当**します」 — tức chính hành vi rót liên tục mà sách đang dạy **có thể bị tính là アルハラ ngược từ dưới lên**.

**Đề xuất (không sửa, chỉ đề xuất):** giữ nguyên tinh thần "chủ nhà chăm sóc ly khách", nhưng bổ sung vào ghi chú【3】một van an toàn, đại ý:
- Rót khi ly **còn ~1/3** và khách **chưa từ chối**.
- Khách úp tay lên miệng ly / nói 「もう結構です」/「車ですので」 = **dừng hẳn**, chuyển sang mời 烏龍茶・ノンアル, không hỏi lại lần hai.
- Mẫu câu chuyển: 「では、お茶かノンアルコールはいかがでしょうか。」

Đây là bổ sung 3 dòng, không phá cấu trúc rule.

### 🔴 A-2 (NẶNG) — Toàn phần IV: KHÔNG dạy cách TỪ CHỐI rượu, KHÔNG nhắc 下戸

Đã grep toàn bộ 7 file (đã strip ruby): **0 lần** xuất hiện `下戸`, `飲めない`, `お酒に弱い`, `アルハラ`, `アルコールハラスメント`, `体質`, `休肝`, hoặc bất kỳ mẫu câu từ chối nào.

**Vì sao đây là lỗ hổng thật, không phải bịa:** phần IV có **rule_25 dạy rót** và **rule_26 dạy cụng ly** — tức sách đã đưa học viên vào đúng tình huống rượu — nhưng **không trang bị cho họ đường thoát**. Học viên Việt trẻ đi 接待 lần đầu, bị khách Nhật rót lại (お返し, chuyện rất thường), sẽ không có câu nào để nói. Bối cảnh sách còn có nhân vật **Linh — nhân viên mới** (rule_28, rule_29), tức đúng đối tượng dễ bị ép nhất.

Nhắc lại: ~40% người Đông Á mang biến thể ALDH2 làm giảm/mất khả năng chuyển hoá acetaldehyde — con số này áp cho **cả khách Nhật lẫn chính học viên người Việt**.

**Đề xuất:** thêm một khối 「お酒を控える場合」 vào `rule_25` hoặc `rule_26`, gồm mẫu câu nguồn Nhật chuẩn:
- 「あいにく**お酒が得意ではない**もので、ウーロン茶で失礼いたします。」 (nguồn ngành khuyên nói 「得意でない」 mềm hơn 「苦手」)
- 「本日は**車で参りました**ので、ノンアルコールでご一緒させてください。」
- Và phía chủ nhà: 「**薄めでお願いします**」 — có thể nhờ nhà hàng pha loãng.

### 🔴 A-3 (VỪA) — `rule_26`: 乾杯 không nói rõ được nâng ly bằng đồ không cồn

`rule_26` dạy 4 quy tắc cứng, trong đó **d44 ghi chú【4】**:

> **Cụng xong, bên tiếp đón nhấp trước, khách uống sau** — thứ tự uống cũng giống thứ tự hô.

Cả rule **không có một chữ nào** nói rằng ly kanpai **có thể là nước ngọt / trà ô long / ノンアル**. Học viên đọc rule_26 độc lập (rất dễ, vì mỗi rule là một bài) sẽ hiểu 乾杯 = phải có rượu và **phải uống**.

Nguồn Nhật nói ngược lại rõ ràng: **「ソフトドリンクで乾杯の音頭を取っても失礼にはあたりません。乾杯の目的は全員でタイミングを合わせて会をスタートさせる一体感をつくることにある」** — mục đích 乾杯 là tạo sự đồng nhịp khởi động, không phải là uống rượu.

**Lưu ý mâu thuẫn nội bộ nhẹ:** rule_24 【3】 đã nói đúng ("CFO không uống cũng không bị áp lực"), nhưng rule_26 lại không kế thừa tinh thần đó. Học viên chỉ đọc rule_26 sẽ mất thông tin này.

**Đề xuất:** thêm 1 dòng vào ghi chú rule_26: *"Ly kanpai không nhất thiết là rượu — ノンアル / ô long / nước ép đều hợp lệ. Mục đích 乾杯 là đồng nhịp mở màn, không phải uống."*

⚠️ **Kèm một cảnh báo nguồn Nhật mà sách chưa biết:** **KHÔNG được kanpai bằng NƯỚC LỌC.** 水杯 (mizusakazuki) là nghi thức ly biệt vĩnh viễn — cụng bằng nước lọc là thất lễ nặng. Nếu bổ sung mục này thì phải nêu luôn, kẻo học viên "tránh rượu" bằng cách sai nhất.

### 🔴 A-4 (VỪA) — Toàn phần IV: KHÔNG có một chữ nào về giới hạn chi phí / rủi ro hối lộ

Grep 7 file: **0 lần** `交際費`, `贈収賄`, `コンプライアンス`, `倫理`, `公務員`, `賄賂`, "hối lộ", "tuân thủ", "compliance".

Sách dạy bữa tối 接待 cấp CFO ở nhà hàng Nhật cao cấp Q1, phòng riêng, suất ăn cao nhất + rượu vang, có mẫu điền `コース: _____ VND/人` — tức **dạy chi tiền thật, số tiền lớn, cho đối tác** — mà không có một dòng cảnh báo nào.

Bối cảnh pháp lý thật ở Nhật:
- Ngưỡng thuế 交際費 **5.000 yên/người** (đã nâng lên **10.000 yên/người** từ tháng 4/2024) là mốc mọi công ty Nhật đều biết và dùng để phân loại chi phí.
- **国家公務員倫理法**: người của công ty có "quan hệ lợi ích" (契約関係・許認可) **về nguyên tắc bị CẤM nhận 供応接待**; ăn uống trên **10.000 yên phải khai báo**. Luỹ kế **1.537 công chức** đã bị kỷ luật vì vi phạm.
- Nguồn ngành về quà cũng cảnh báo: **「あまりにも高価すぎる贈り物は『賄賂』や『下心』と捉えられるリスク」**.

**Vì sao quan trọng với đúng độc giả sách này:** đối tượng là BD/PM/Account người Việt. Nếu khách hàng là **doanh nghiệp nhà nước Nhật, cơ quan hành chính, hoặc công ty niêm yết có quy chế nội bộ chặt**, thì "bữa tối trang trọng + quà" mà sách dạy có thể khiến **chính khách Nhật phải từ chối hoặc bị kỷ luật**. Học viên không được cảnh báo sẽ không hiểu vì sao khách từ chối.

**Đề xuất:** thêm một dòng cảnh báo ngắn vào `rule_24` (mục Tránh) và `rule_28` (checklist mục E), đại ý: *"Trước khi mời 接待 / tặng quà, xác nhận quy chế nội bộ (コンプライアンス規程) phía khách. Khách thuộc khu vực công hoặc công ty có quy chế chặt có thể bị cấm nhận — hỏi trước qua PMO là an toàn."*

### 🟢 Điểm sách làm ĐÚNG về QUÀ — đã kiểm chứng

`rule_28` d77: 「Giá: **1,500-3,000 yên/người** (đắt quá NG)」 — **ĐÚNG chuẩn ngành**. Nguồn Nhật: 手土産 ビジネス初訪問/取引先 = **1.500–3.000 yên**; dải rộng 2.000–5.000 yên. Sách chọn dải hẹp, thận trọng, kèm đúng lý do "đắt quá NG". **CẤM SỬA con số này.**

`rule_28` d76: 「HSD còn 1 tháng+」 + 「Đóng gói riêng từng phần」 — **ĐÚNG chuẩn**: nguồn ngành nhấn mạnh 個包装 + 常温保存 + tránh 賞味期限が極端に短い生もの.

### 🟡 Thiếu — điềm xấu trong quà tặng Nhật (chủ nhà hỏi câu 6)

Phần IV **không nhắc** bất kỳ điều kiêng kỵ nào về vật phẩm. Đã grep: 0 lần `4`/`九`/`苦`/`ハンカチ`/`刃物`/`櫛` trong ngữ cảnh kiêng kỵ.

Đây là **thiếu sót, không phải lỗi sai** — sách chọn quà là cà phê/trà/bánh (an toàn tuyệt đối), nên không vấp phải. Nhưng checklist `rule_28` mục A có cho phép chọn **「thêu / sơn mài」** (d74) — tức đồ vật, không phải thực phẩm — mà không kèm cảnh báo. Nếu học viên tự suy ra "vậy tặng đồ vật được" rồi chọn nhầm (bộ dao sơn mài, khăn tay thêu), sẽ dính kiêng kỵ.

**Đề xuất (mức thấp, tuỳ chủ nhà):** nếu bổ sung, chỉ cần 1 dòng NG list ở `rule_28` mục E: *"Tránh: đồ sắc nhọn (dao, kéo — hàm ý 'cắt đứt quan hệ'), khăn tay (手巾 → 手切れ, cũng hàm ý cắt đứt), lược (櫛 → 苦・死), và số lượng 4 / 9."*

---

## 2. 🔴 B — Sách tự mâu thuẫn

### 🔴 B-1 (NẶNG) — `rule_29`: luận điểm nói "KHÔNG mở tại chỗ", nhưng mail lại khai "đã cùng ăn ngon lành"

Ba mảnh trong **cùng một file**, mâu thuẫn nhau:

**d3 (luận điểm):**
> (4) **KHÔNG mở tại chỗ**, (5) báo "lát em mời cả phòng cùng dùng", (6) gửi thư cảm ơn trong 24h

**d38 (hội thoại TỐT):**
> 「ありがとうございます。**後ほど**社内で皆でいただきます。」
> *Cảm ơn anh ạ. **Lát nữa** em mời cả phòng cùng dùng.*

**d40 (cũng hội thoại TỐT — mail gửi ngay sau đó):**
> 「本日は素敵なお土産をいただき、ありがとうございました。社内で皆で**おいしくいただきました**。**後ほど改めて御礼のメールを送らせていただきます。**」
> *Hôm nay anh tặng quà rất ý nghĩa, em xin cảm ơn ạ. Cả phòng **đã cùng thưởng thức ngon lành**. **Em xin gửi lại thư cảm ơn trang trọng sau ạ.***

**Ba lỗi chồng nhau trong d40:**

1. **Mâu thuẫn thì (時制) với chính rule.** d38 vừa nói 「後ほど…いただきます」 (lát nữa sẽ dùng — tương lai), d40 đã thành 「おいしく**いただきました**」 (đã dùng rồi — quá khứ). Rule dạy KHÔNG mở tại chỗ mà mail lại báo cáo đã ăn xong — hai mảnh không nối được. Với `羊羹` (yokan) mà chính khách vừa nói 「日持ちもしますので」 (để được lâu), chuyện "đã ăn hết" trong cùng buổi càng phi lý.

2. **Mâu thuẫn với chính ghi chú【4】ngay bên dưới** (d46): *"**Mail cảm ơn trong 24h** = liên lạc tiếp chính thức."* Nhưng mail ở d40 lại tự khai *"em xin gửi lại thư cảm ơn trang trọng **sau** ạ"* — tức mail này **không phải** mail cảm ơn 24h, mà là mail báo sẽ gửi mail. Học viên sẽ không biết rốt cuộc phải gửi mấy mail.

3. **Mâu thuẫn với `rule_29` mục Tránh d64**: 「Quên gửi thư cảm ơn trong 24h — mất bước liên lạc tiếp」. Nếu d40 đã là mail cảm ơn thì tại sao còn hẹn gửi tiếp; nếu chưa phải thì rule chưa hề minh hoạ mail 24h.

**Đề xuất:** sửa d40 cho khớp trục thời gian — bỏ 「おいしくいただきました」 (quá khứ) và bỏ vế 「後ほど改めて…送らせていただきます」, để mail này **chính là** mail cảm ơn 24h. Ví dụ: 「本日は素敵なお土産をいただき、誠にありがとうございました。社内の皆で**ありがたく頂戴いたします**。」 — vừa giữ thì tương lai, vừa khớp【3】"báo sẽ chia".

### 🟡 B-2 (VỪA) — `rule_28`: "vứt túi giấy" vs chuẩn Nhật là "gấp lại mang về"

**d44 ghi chú【2】** nguyên văn:

> **Túi chỉ để mang** — lúc trao = lấy ra khỏi túi, hướng chữ về phía khách, đưa 2 tay. **Túi giấy bỏ đi (kiểu Nhật).**

Vế đầu **ĐÚNG** (xem D-2). Vế cuối **"Túi giấy bỏ đi (kiểu Nhật)"** thì sai — và sai theo hướng gây thất lễ. Nguồn Nhật nói ngược:

> 渡した後の紙袋は、相手に「処分してください」と渡すのは**マナー違反**で、**小さく畳んで自分のカバンにしまい、持ち帰るべき**です。

Tức: túi giấy **người tặng gấp nhỏ cất vào cặp mang về**, không phải "bỏ đi", và tuyệt đối không đẩy sang khách nhờ vứt. Chữ "bỏ đi" trong tiếng Việt rất dễ bị học viên hiểu thành "để lại đó / nhờ nhà hàng vứt" — đúng cái hành vi bị coi là マナー違反.

Cũng mâu thuẫn nhẹ với chính checklist d82: 「□ Túi giấy logo nhẹ (NG: logo to)」 — sách bảo phải chăm chút túi rồi lại bảo vứt.

**Đề xuất:** đổi "Túi giấy bỏ đi (kiểu Nhật)" → "Túi giấy **gấp nhỏ, tự cất vào cặp mang về** — không để lại bàn, không nhờ khách vứt."

---

## 3. 🔴 C — Tiếng Nhật sai (keigo)

### ✅ XÁC MINH ĐỘC LẬP 2 ca của main Claude — **XÁC NHẬN ĐÚNG CẢ HAI**

Tôi đã tự strip ruby và quét lại, không dựa vào thông tin được cho sẵn. Kết quả trùng khớp:

| Ca | Vị trí | Nguyên văn (đã strip ruby) | Phán định |
|---|---|---|---|
| C-1 | `rule_30` **d50** (Câu chốt) | 次回はぜひ当方からも東京へ**お伺いさせていただきます**。 | ✅ ĐÚNG là 二重敬語 |
| C-2 | `rule_30` **d83** (Mẫu email) | 次回はぜひ当方からも東京へ**お伺いさせていただき**たく、5月の頃改めてご相談させてください。 | ✅ ĐÚNG là 二重敬語 |

**Cơ sở:** `伺う` tự nó đã là 謙譲語 I của 行く/訪ねる. Thêm tiếp đầu ngữ `お` + `させていただく` (bản thân đã là 謙譲 + 許可求め) = chồng ba tầng khiêm nhường. Đây là ca sách giáo khoa của 二重敬語, cùng họ với `お伺いいたします` bị nêu đích danh trong `book-review.md` mục 4C.

**Sửa đúng:** `伺います` (d50) / `伺いたく` (d83). Nếu muốn giữ sắc thái xin phép: `お伺いいたします` vẫn bị nhiều nguồn coi là 二重敬語 (dù đã 慣用化) — an toàn nhất là **`伺います`**.

⚠️ **Bẫy ruby — cảnh báo cho main Claude khi sửa:** cả d50 và d83 đều có ruby **cắt đôi giữa từ**: `お<ruby>伺<rt>うかが</rt></ruby>いさせていただきます`. Copy chuỗi từ bản strip rồi Edit sẽ **thất bại** (đúng bẫy mục 1.1). Phải `sed -n '50p'` lấy nguyên văn còn ruby trước.

### 🔴 C-3 (MỚI — main Claude chưa bắt) — `rule_30` d80: `お伺いいたしました`

**d80** (trong mẫu email):

> 特に、〇〇様から**お伺いいたしました**〇〇のお話は、大変印象に残っております。

**Hai vấn đề chồng nhau:**

1. **二重敬語**: `伺う` (謙譲語 I) + `お〜いたす` (謙譲語 I) = chồng tầng. Cùng đúng họ lỗi với d50/d83 — pattern 17 của main Claude nhắm `お伺いさせていただ` nên **lọt mất biến thể `お伺いいたし`**.

2. **Dùng sai nghĩa của 伺う** (nghiêm trọng hơn). Ở d50/d83, `伺う` mang nghĩa **"đến thăm"** — đúng ngữ cảnh. Nhưng ở d80, ngữ cảnh là 「〇〇様から…〇〇のお話」 = **nghe được câu chuyện từ ngài OO**, tức nghĩa **"nghe"**. Chuỗi `A様からお伺いいたしましたお話` bị chồng thêm một lớp lỗi vì đứng cạnh `〇〇様` — người đọc dễ hiểu nhầm chủ thể.

**Sửa đúng:** `〇〇様から伺いました〇〇のお話` hoặc gọn hơn `〇〇様にお聞かせいただいた〇〇のお話`.

### 🟡 C-4 (MỚI, nhẹ) — `rule_30` d37: `お伺いし`

**d37:**
> 「次回はぜひ当方からも東京へ**お伺いし**、5月のお花見の頃に改めて」

`お伺いする` — cùng cơ chế chồng `お` lên `伺う`. Nhẹ hơn d50/d83 (không có `させていただく`), và dạng này **đã 慣用化 khá rộng** trong email thương mại thật, nhiều nguồn coi là chấp nhận được. Tôi xếp 🟡 chứ không 🔴.

**Nhưng có lý do nhất quán để sửa:** nếu main Claude sửa d50/d83/d80 mà bỏ d37, thì trong **cùng một file** sẽ tồn tại song song `伺います` (đã sửa) và `お伺いし` (chưa sửa) — học viên không hiểu rốt cuộc dạng nào đúng. **Nên sửa cả 4 cho đồng bộ:** d37 → `伺い、`.

### 📌 Tổng kết trục C — 4 ca, tất cả nằm gọn trong `rule_30`

| Ca | Dòng | Hiện tại | Đề xuất | Mức |
|---|---|---|---|---|
| C-1 | d50 | お伺いさせていただきます | 伺います | 🔴 |
| C-2 | d83 | お伺いさせていただきたく | 伺いたく | 🔴 |
| C-3 | d80 | お伺いいたしました | 伺いました | 🔴 |
| C-4 | d37 | お伺いし | 伺い | 🟡 |

**6 rule còn lại (24–29): 0 ca keigo.** Đã quét 15 pattern (二重敬語, 過剰お/ご, さ入れ, 役職+様, uchi/soto) trên bản đã strip ruby — sạch. Các keigo khác trong phần IV đều **đúng**, xem mục CẤM SỬA.

---

## 4. 🔴 D — Sai sự thật (đã WebSearch kiểm chứng)

### 🔴 D-1 (NẶNG) — `rule_26`: dạy cụng ly chạm nhau, nhưng bàn tiệc CÓ RƯỢU VANG

`rule_26` dạy xuyên suốt là **có chạm ly**, chỉ khác ở lực:

- d3 luận điểm: 「(3) **Chạm nhẹ**, không cụng kêu cốp」
- d36: （…より僅かに低く**合わせ、軽く触れる**）
- d43【3】: 「**Chạm nhẹ** + giao mắt cười = chính thức」
- d60 Tránh: 「Cụng mạnh kêu cốp — vỡ ly + thiếu sang」

Với **bia / sake** thì đúng. Nhưng bàn tiệc trong sách **có rượu vang** — `rule_24` d35 và `rule_25` d36 đều khai 「日本酒・**ワイン**・ノンアル」. Và với ly vang, chuẩn quốc tế (mà giới doanh nhân Nhật cao cấp áp dụng) là **KHÔNG chạm ly chút nào**:

> ワイングラスの乾杯は、グラス同士を「**カチンと当てない**」ように、**目の高さで静かに掲げる**のが正しいマナー
> 掲げる高さは胸、動作は小さく、**リムは当てない**

Lý do thực tế: ly vang mỏng, chạm dễ nứt/vỡ; ngoài ra chạm ở phần bầu (bowl) làm ám mùi tay và ảnh hưởng hương rượu.

**Vấn đề sư phạm:** rule_26 đang dạy **một quy tắc duy nhất cho mọi loại ly**, trong khi chính sách đã dựng bối cảnh nhà hàng Nhật cao cấp có vang + CFO. Học viên làm đúng theo sách (chạm nhẹ ly vang với CFO) sẽ **sai chuẩn ở đúng bàn tiệc quan trọng nhất**.

**Đề xuất:** thêm 1 dòng vào ghi chú【3】: *"Ngoại lệ **ly vang**: không chạm ly. Nâng ly ngang ngực/tầm mắt, gật đầu + giao mắt là đủ — ly vang mỏng, chạm dễ vỡ và bị coi là kém tinh tế."*

### 🟡 D-2 — `rule_28` d44: xem B-2 ("túi giấy bỏ đi")

Đã trình bày ở mục B-2. Vế **"lấy quà ra khỏi túi khi trao"** thì **ĐÚNG chuẩn** và đã kiểm chứng:

> 手土産を渡す際は、**紙袋や風呂敷から出して品物だけを渡すのがマナー**であり、**紙袋は基本的に自分で持ち帰ります**

Chỉ vế "bỏ đi" là sai. **Đừng sửa nhầm cả【2】** — phần lớn nội dung ghi chú này đúng.

*(Ghi chú bổ sung, mức thấp: nguồn Nhật có nêu ngoại lệ — ở **ngoài văn phòng / nhà hàng** thì trao nguyên túi vẫn chấp nhận được, kèm câu 「紙袋のまま失礼いたします」. Bối cảnh rule_28 chính là nhà hàng. Nhưng sách chọn dạy chuẩn nghiêm ngặt hơn — đó là lựa chọn sư phạm hợp lệ, **không tính là lỗi**.)*

### 📌 Đã kiểm chứng — **ĐÚNG**, không phải lỗi

| Khẳng định | Vị trí | Kết quả WebSearch |
|---|---|---|
| Quà biếu 1.500–3.000 yên/người | rule_28 d77 | ✅ ĐÚNG — chuẩn ngành 手土産 ビジネス 1.500–3.000 yên |
| "Đắt quá NG" | rule_28 d77 | ✅ ĐÚNG — nguồn Nhật: quá đắt bị coi là 賄賂/下心 |
| HSD còn 1 tháng+, đóng gói riêng | rule_28 d76, d75 | ✅ ĐÚNG — 個包装・常温・日持ち là 3 tiêu chí chuẩn |
| Toraya = quà Tokyo, yokan 日持ちする | rule_29 d13, d37 | ✅ ĐÚNG — Toraya (~500 năm, Muromachi) là 手土産 định番 Tokyo; yokan nổi tiếng để lâu |
| HCMC mùa mưa "giữa tháng 5, năm nay muộn hơn mọi năm" | rule_27 d43 | ✅ ĐÚNG — chuẩn 10–20/5; các năm gần đây có xu hướng SỚM hơn, nên "năm nay muộn" là biến thiên hợp lý, không sai sự thật |
| Đà Lạt cao nguyên, mát, cảnh đẹp, hợp chụp ảnh | rule_27 d40 | ✅ ĐÚNG |
| Trả tiền kín đáo bằng cách 中座 | rule_25 d41 | ✅ ĐÚNG — nguồn Nhật: 「お手洗いに行ってまいります」rồi ra quầy thanh toán khuất mắt = cách スマート nhất |
| 割り勘 là NG trong 接待 | rule_25 d3, d65 | ✅ ĐÚNG — 接待 theo định nghĩa là bên mời chi trả |
| Mail cảm ơn trong 24h, BCC là đại kỵ | rule_30 | ✅ ĐÚNG — chuẩn ngành |
| 雑談: cấm chính trị / tuổi / lương | rule_27 | ✅ ĐÚNG |
| Hạ ly thấp hơn cấp trên | rule_26 | ✅ ĐÚNG là tập quán có thật (59% biết, 80% trong số đó thực hành). *Ghi chú: nguồn cho thấy đây là tập quán đang bị tranh cãi (~16% ủng hộ), nhưng sách dạy phía an toàn — **hợp lý, không sửa***. |

---

## 5. 🟡 E — Tiếng Việt

### 🟡 E-1 — `rule_29` d35: xưng "Em" nhưng người nói là **phó phòng** nói với **PM** khách

**d35** nguyên văn:

| JA | VN |
|---|---|
| **フオン副部長**: （両手で受け取り、お辞儀30°）「**頂戴いたします**。お心遣いありがとうございます。」 | *(nhận 2 tay, bow 30°) **Em xin nhận**. Cảm ơn tấm lòng của anh ạ.* |

Theo `book-review.md` mục 4E, chỉ báo khi bản Nhật cho thấy người nói **TỰ nói về mình** — ở đây đúng vậy (`頂戴いたします` là 謙譲語, chủ ngữ là người nói, không có `〜さん`). Nên đây là ca hợp lệ để xét.

**Vấn đề:** Hương là **副部長 (phó phòng)** — cấp quản lý — đang nhận quà từ **松本PM**, ngang hoặc thấp hơn cấp. Xưng "Em" đẩy vị thế xuống quá thấp và không nhất quán với vai. So sánh: cùng file **d38** Hương lại nói *"Cảm ơn anh ạ. **Lát nữa em** mời cả phòng cùng dùng"* — cùng lỗi; còn **d40** thì *"em xin cảm ơn ạ"*.

Tuy nhiên **cần thận trọng** (mục 3 — đã có 3 ca agent phóng đại đúng trục xưng hô này): trong văn hoá công sở Việt, người ít tuổi hơn xưng "em" với đối tác nam lớn tuổi là **hoàn toàn tự nhiên**, và sách không cho biết tuổi hai người. Ngoài ra `頂戴いたします` là 謙譲語 mạnh, nên "em" cũng phản ánh đúng sắc thái hạ mình.

**Phán định của tôi: 🔵 mức thấp — nên để nguyên**, trừ khi main Claude đã có quy ước xưng hô toàn sách cho nhân vật Hương (cần đối chiếu phần II/III, ngoài phạm vi tôi). Ghi lại để main Claude nối dữ kiện giữa các phạm vi (mục 6 của rule).

### 📌 Tiếng Anh trong bản Nhật — KHÔNG báo là lỗi

Quét thấy: `dinner`, `menu`, `glass`, `host`, `senior`, `alcohol`, `order/pour/pay`, `course`, `Meeting`, `brand`, `buffer`, `rehearse`.

**Tôi KHÔNG xếp đây là lỗi**, vì:
- Phần lớn nằm trong **dòng tóm tắt luận điểm** (d5) và **checklist**, là văn phong ghi chú nội bộ có chủ ý của cả bộ sách (dạng 「host = 『order・pour・pay』の3点」).
- `menu`, `course`, `dinner`, `alcohol` là **từ mượn đã chuẩn hoá trong tiếng Nhật** (メニュー, コース, ディナー, アルコール) — chỉ khác ở chỗ viết bằng Latin thay vì katakana.
- Đây đúng loại ca mà mục 3 cảnh báo agent hay thổi phồng.

**Điểm duy nhất đáng nêu (🔵 rất nhẹ):** viết Latin thay vì katakana **không nhất quán trong cùng một dòng** — vd `rule_25` d39: 「中村CFOの**glass**が空になりそう→すぐ **pour**」 trong khi `rule_24` d35 lại dùng katakana 「**ワイン**」「**ノンアル**」. Nếu chủ nhà muốn đồng bộ thì đổi `glass`→グラス, `pour`→お注ぎ. **Không bắt buộc.**

---

## 6. 🟡 F — Nhất quán & meta

### ✅ Đã kiểm — SẠCH

| Phép đo | Kết quả phần IV |
|---|---|
| H1 vs `meta/mục_lục.md` (7 rule) | **7/7 KHỚP** — cả tên VN lẫn tên JP |
| Cross-ref `Liên quan` | **7/7 trỏ đúng** rule có thật (24,25,26,28,29,30,32,33) — không có ca trỏ hụt |
| Ruby vỡ (`</ruBy`, `ruby**`) | **0** |
| Ký tự lạ (giản thể / Hangul) | **0** |
| Emoji strip để lại double-space | **0** |
| Bug ruby-loss khi câu lặp giữa khối XẤU/TỐT (mục 1.3) | **0** — phần IV không có câu lặp giữa hai khối |
| Bảng từ vựng có đủ 7 rule | **7/7 có**, mỗi bảng 7 dòng, format thống nhất |

### 🔵 F-1 — `rule_28`: mâu thuẫn số tiền giữa khối XẤU và checklist (KHÔNG phải lỗi)

`rule_28` d22 (khối **XẤU**): 「ベトナムの高級ブランドのコーヒーで、**5千円**もするんですよ。」
`rule_28` d77 (checklist): 「Giá: **1,500-3,000 yên/người**」

Nhìn qua tưởng mâu thuẫn. **KHÔNG PHẢI LỖI** — d22 nằm trong khối "Hội thoại XẤU", cố tình cho nhân vật vừa khoe giá vừa mua quà **vượt chuẩn**, minh hoạ đúng hai lỗi mà rule đang dạy tránh. Ghi ra đây để main Claude **không sửa nhầm**.

### 🔵 F-2 — Hán Việt sai trong bảng từ vựng

| Rule | Dòng | Từ | Hán Việt trong sách | Đúng phải là |
|---|---|---|---|---|
| rule_24 | d96 | 食事制限 | **THỰC SỰ CHẾ HẠN** | **THỰC SỰ CHẾ HẠN** → phải là **THỰC SỰ CHẾ HẠN**… thực ra `事` = SỰ, nên "THỰC SỰ CHẾ HẠN" đúng chữ nhưng đọc ra vô nghĩa; thường ghi **THỰC SỰ HẠN CHẾ** cho dễ hiểu |
| rule_28 | d113 | 紙袋 | **CHỈ ĐÃI** | **CHỈ ĐẠI** (袋 = ĐẠI/ĐÁI, không phải ĐÃI) |
| rule_25 | d79 | 割り勘 | **QUÁT KHAM** | **CÁT KHAM** (割 = CÁT, nghĩa "chia/cắt"; QUÁT là âm sai) |

Ba ca này là **lỗi máy móc, rủi ro thấp** (vòng 1 theo mục 8). `紙袋 = CHỈ ĐÃI` và `割り勘 = QUÁT KHAM` là sai rõ ràng. `食事制限` thì đúng chữ nhưng khó đọc.

### 🔵 F-3 — `rule_29` d3 + d44: đặt quà lên "上座 của bàn" — thuật ngữ dùng lỏng

`rule_29` d3: 「(3) đặt lên **上座 (kamiza) của bàn**」; d44【2】: 「Đặt 2 tay → đặt lên **phía 上座 (kamiza) của bàn** đàng hoàng」

上座 là thuật ngữ chỉ **vị trí NGỒI** trong phòng (xa cửa / phía 床の間), không phải một "phía của mặt bàn". Cách dùng ở đây là mở rộng nghĩa, hơi lỏng về thuật ngữ — nhất là khi **sách 07 có hẳn `rule_10_上座下座`** dạy nghĩa gốc, nên học viên có thể lẫn.

Nguồn Nhật về chỗ đặt quà nhận được nói khác: 「いただいた手土産を、その場に置きっぱなしにするのは好ましくありません。**若手社員が一時退室して、裏にしまう**のが正解」 — tức chuẩn là **cất đi**, không phải để trên bàn.

Tuy nhiên **hành vi sách dạy vẫn hợp lý** (đặt trang trọng, không để dưới sàn/góc bàn), và mục Tránh d63 「Nhận 1 tay / để dưới chân / để bừa lên bàn — thất lễ」 là đúng tinh thần. **Xếp 🔵, mức thấp** — chỉ là vấn đề chọn chữ. Nếu sửa, đổi 「上座側」 → 「机の奥側（相手から見て上手）」 hoặc đơn giản "đặt trang trọng bên cạnh, sau đó cất vào trong".

---

## 7. Kiểm chứng fix đợt trước (mục 5 của rule)

`meta/STATUS.md` khai changelog v1.0→v1.1 gồm 8 mục. **Không mục nào thuộc phần IV** (các mục nhắc rule 03,04,05,08,09,15,16,17,18,21,22,30,35). Mục duy nhất chạm phạm vi tôi:

> P0 ティエンファット社 (self-ref) → ティエンファット (8 rules: 03, 04, 05, 08, 16, 17, 18, 21, **30**)

**Kiểm `rule_30`:** grep (đã strip ruby) → `ティエンファット社` = **0 kết quả**; `ティエンファット` xuất hiện 2 lần (d75 「ティエンファットのズンでございます」, d88 「ティエンファット 営業部」), **cả 2 đều là dạng đã sửa đúng**.

→ **ĐÃ FIX, không nửa vời.** Đây là fix đúng về mặt keigo/uchi-soto: gọi công ty mình kèm 社 khi tự xưng là thừa.

Ngoài ra `_pipeline/english_audit.md` có tồn tại — tôi **không mở/không sửa** (ngoài phạm vi 7 file rule.md được giao).

---

## 8. 🚫 CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| # | Vị trí | Nội dung | Vì sao CẤM SỬA |
|---|---|---|---|
| 1 | `rule_28` **d22** | 「5千円もするんですよ」 (5 nghìn yên) | Nằm trong khối **Hội thoại XẤU** — cố tình sai để minh hoạ "khoe giá + quà vượt chuẩn". Không mâu thuẫn với d77. |
| 2 | `rule_28` **d77** | 「Giá: 1,500-3,000 yên/người」 | **ĐÚNG chuẩn ngành Nhật** đã WebSearch. Đừng nâng lên cho "sang". |
| 3 | `rule_24` **d43**【3】 | "CFO không uống cũng không bị áp lực" | Đây là **câu chống アルハラ tốt nhất của cả phần IV**. Phải giữ, và nên nhân rộng sang rule_26. |
| 4 | `rule_24` d35 · `rule_25` d36 | 「ノンアル」/「ノンアルコール」 | Thiết kế đúng — chuẩn bị sẵn lựa chọn không cồn từ phía chủ nhà. Giữ nguyên. |
| 5 | `rule_28` **d43**【1】 | 「つまらないものですが」 | Có nguồn Nhật hiện đại khuyên thay bằng 「心ばかりのものですが」 vì tự hạ quá đà bị coi là かえって失礼. **NHƯNG** 「つまらないものですが」 vẫn là mẫu chuẩn được dạy rộng rãi, và mục lục sách đã chốt brief này (`meta/mục_lục.md` d86). Sách còn đã dùng 「ささやかではございますが」 ở rule_24 d50 + rule_28 d34 làm biến thể. **Không tự sửa** — nếu muốn hiện đại hoá thì đây là **quyết định biên tập của chủ nhà**, không phải lỗi. |
| 6 | `rule_25` **d41** | 中座 → thanh toán kín đáo → quay lại | **ĐÚNG chuẩn**, đã WebSearch xác minh. |
| 7 | `rule_25` **d3, d65** | 割り勘 là NG trong 接待 | ĐÚNG theo định nghĩa 接待. |
| 8 | `rule_26` | Hạ ly thấp hơn cấp trên | Tập quán có thật, tuy đang bị tranh cãi ở Nhật. Sách dạy phía an toàn — hợp lý. |
| 9 | `rule_28` **d44**【2】 vế đầu | "lấy quà ra khỏi túi, hướng chữ về phía khách, đưa 2 tay" | **ĐÚNG chuẩn.** Khi sửa vế "túi giấy bỏ đi" (B-2), **đừng đụng vế này.** |
| 10 | `rule_27` **d43** | HCMC mùa mưa "giữa tháng 5, năm nay muộn hơn" | ĐÚNG — chuẩn 10–20/5. Đừng đổi thành "đầu tháng 5". |
| 11 | `rule_29` **d13, d37** | Toraya / yokan 日持ちする | ĐÚNG — Toraya là 手土産 định番 Tokyo, yokan nổi tiếng để lâu. |
| 12 | `rule_25` **d37** | 「トゥアンリーダー」 | Nhìn qua giống lỗi uchi/soto (giữ chức danh đồng nghiệp trước khách). **Nhưng đây là NHÃN VAI trong bảng hội thoại, không phải lời thoại** — và là quy ước **toàn sách** (17 lần khắp 5 phần). Sửa ở phần IV sẽ làm lệch với 4 phần còn lại. Nếu đổi thì phải đổi cả sách — **quyết định của main Claude, không phải phạm vi tôi.** |
| 13 | Toàn phần IV | Tiếng Anh trong ô JA (`host`, `menu`, `glass`, `order/pour/pay`…) | Văn phong ghi chú có chủ ý + từ mượn đã chuẩn hoá. **Không phải lỗi.** Đây đúng loại ca mục 3 cảnh báo thổi phồng. |
| 14 | Cả 7 khối `## Hội thoại XẤU` | Mọi lỗi trong đó | **Cố tình sai** để dạy. Không báo, không sửa. |

---

## 9. Việc ngoài phạm vi — chỉ ghi nhận, KHÔNG tự sửa

1. **`conversation.json`**: mỗi rule_24→30 đều có file này. Nếu main Claude sửa keigo `rule_30` d37/50/80/83 trong `.md`, thì `conversation.json` tương ứng sẽ **lệch**. Theo `book-review.md` mục 3, pipeline chỉ đọc `.md` nên không ảnh hưởng sản phẩm — nhưng ghi lại để chủ nhà quyết (đúng bài học mục 5.1: script trước đây chỉ vá json mà quên md; lần này là chiều ngược lại).
2. **Phụ lục A/B/C/D** (`nội_dung/phụ_lục/`): tôi **không mở**. Nếu phụ lục A tổng hợp key_phrases có chép lại 「お伺いさせていただきます」 từ rule_30 d50, thì sửa `.md` mà không build lại sẽ để sót. **Main Claude cần grep phụ lục sau khi sửa** (nhớ strip ruby) — nhưng sửa ở **script build**, không sửa tay file phụ lục.
3. **`_pipeline/english_audit.md`**: có tồn tại, tôi không đọc/không đụng (ngoài phạm vi).
4. **`meta/STATUS.md`** khai "v1.1 — Sẵn sàng ship". Với 2 ca 🔴 A và 2 ca 🔴 B tìm được, **nhãn này lạc quan hơn thực tế** (đúng cảnh báo mục 5: "Đừng tin STATUS.md").

---

## 10. Thứ tự sửa đề xuất (theo mục 8 của rule)

| Vòng | Việc | Ca |
|---|---|---|
| 1 (máy móc) | Hán Việt sai trong bảng từ vựng | F-2 (3 ca) |
| 2 (sai sự thật) | "Túi giấy bỏ đi" → "gấp nhỏ mang về" · 乾杯 ly vang không chạm | B-2/D-2, D-1 |
| 3 (mâu thuẫn + rủi ro) | rule_29 d40 lệch thì · **van dừng お酌** · **mẫu câu từ chối rượu** · 乾杯 bằng ノンアル · cảnh báo コンプライアンス | B-1, A-1, A-2, A-3, A-4 |
| 3 (keigo) | rule_30 d37/50/80/83 — ⚠️ **`sed -n 'Np'` lấy nguyên văn còn ruby trước khi Edit** | C-1→C-4 |
| 5 (cần chủ nhà duyệt) | Điềm xấu trong quà tặng · 「つまらないものですが」 hiện đại hoá | mục 1, CẤM SỬA #5 |

---

## Nguồn WebSearch

**Rượu / アルハラ / 乾杯:**
- [アルコール・ハラスメントについて — アサヒビール](https://www.asahibeer.co.jp/csr/tekisei/self_check/manners.html)
- [お酒が弱い・飲めない人｜上手にお酒を断る方法 — Yahoo!ニュース エキスパート](https://news.yahoo.co.jp/expert/articles/557e1cc75ec4b617d350fecdc0c7d5a116e735aa)
- [これってアルハラ？アルハラの定義や上手なお酒の断り方 — @DIME](https://dime.jp/genre/1389086/)
- [お酒が飲めない人もソフトドリンクを注文するべき？ — Yahoo!ニュース エキスパート](https://news.yahoo.co.jp/expert/articles/000f0dbee7b9239719c498aed80bfd4bbc3c744a)
- [危ない！その乾杯の仕方（水杯） — 日本語教師の広場](https://www.tomojuku.com/blog/business-manners/%E4%B9%BE%E6%9D%AF%E4%BD%9C%E6%B3%95%E3%81%AE%E3%83%AB%E3%83%BC%E3%83%AB/)
- [お酌をめぐるハラスメント意識調査 — パーソルホールディングス](https://prtimes.jp/main/html/rd/p/000000838.000016451.html)
- [飲み会で「お酌」ってすべきですか？ — ファイナンシャルフィールド](https://financial-field.com/household/entry-296951)
- [間違っている人多いかも？お酒のマナー — リクナビNEXTジャーナル](https://next.rikunabi.com/journal/20150902_s38/)
- [ワイングラスの乾杯マナー — アカデミー・デュ・ヴァン](https://www.adv.gr.jp/blog/wine-manners/)
- [マナーを学ぶ！正しい乾杯のマナー〔ワイングラス〕 — 4Cs](https://4cs-i.com/blog/newscolumns/table-manners-wineglass/)

**Quà / 手土産:**
- [【シーン別】手土産の相場 — Atelier Gift](https://www.atelier-gift.jp/column/small-gift/price/)
- [手土産の相場はいくら？ビジネスシーンで失敗しない金額と選び方 — 舞昆テレビ](https://maikon.tv/column/detail/20260120130123/)
- [手土産を紙袋に入れたまま渡すのはNG！ — ベリービー](https://www.berry-b.jp/package-library/how-to-hand-paperbag-souvenir/)
- [手土産の渡し方、紙袋や風呂敷マナー — All About](https://allabout.co.jp/gm/gc/220718/)
- [つい言ってしまいがちな「つまらないものですが…」は間違いだった！ — ダイヤモンド・オンライン](https://diamond.jp/articles/-/150189)
- [手土産で「つまらないものですが」は失礼？ — 舞昆テレビ](https://maikon.tv/columm/detail/20260213131213/)
- [手土産の渡し方、受け取り方のマナー — Indeed](https://jp.indeed.com/career-advice/career-development/manners-for-giving-and-receiving-small-present-by-cartoon)
- [とらやの羊羹とは？ — 阪急百貨店 HANKYU FOOD](https://web.hh-online.jp/hankyu-food/blog/sweets/detail/001709.html)

**Chi phí / pháp lý:**
- [No.5265 交際費等の範囲と損金不算入額の計算 — 国税庁](https://www.nta.go.jp/taxes/shiraberu/taxanswer/hojin/5265.htm)
- [国家公務員倫理法令違反を防止するために — 経団連](https://www.keidanren.or.jp/announce/2024/1106_shiryo2.pdf)
- [接待交際費5,000円基準とは？ — jinjer](https://hcm-jinjer.com/blog/keihiseisan/entertainment_criteria/)

**接待 会計 / 二次会:**
- [【お相手にご負担をかけない会計マナー】 — 星のなる木](https://hoshinonaruki.jp/entertain/96/)
- [新社会人必読！レストランでのスマートなお会計マナー — @DIME](https://dime.jp/genre/1563256/)
- [取引先の宴会を一次会で切り上げたい。どうやって断る？ — PRESIDENT Online](https://president.jp/articles/-/18044)

**Việt Nam:**
- [Bao giờ TP.HCM và Nam Bộ bắt đầu mùa mưa? — Tuổi Trẻ](https://tuoitre.vn/bao-gio-tp-hcm-va-nam-bo-bat-dau-mua-mua-20250401161005811.htm)
- [Trời oi bức, TP.HCM và Nam bộ khi nào mùa mưa bắt đầu? — Thanh Niên](https://thanhnien.vn/troi-oi-buc-tphcm-va-nam-bo-khi-nao-mua-mua-bat-dau-185250501161013525.htm)

---

## 🚫 CẤM SỬA

**Xem đầy đủ ở mục 8 (14 mục).** Nhắc lại 5 chỗ nguy hiểm nhất:

1. **`rule_28` d22 「5千円」** — khối Hội thoại XẤU, cố tình sai. KHÔNG phải mâu thuẫn với d77.
2. **`rule_28` d77 「1,500-3,000 yên」** — ĐÚNG chuẩn ngành, đã WebSearch. Đừng nâng.
3. **`rule_24` d43【3】 "CFO không uống cũng không bị áp lực"** + mọi chỗ 「ノンアル」 — câu chống アルハラ tốt nhất của phần IV.
4. **`rule_28` d44【2】 vế "lấy quà ra khỏi túi, hướng chữ, 2 tay"** — ĐÚNG. Chỉ vế "túi giấy bỏ đi" mới sai.
5. **`rule_25` d37 「トゥアンリーダー」** + toàn bộ tiếng Anh trong ô JA — quy ước toàn sách / văn phong có chủ ý. KHÔNG phải lỗi phần IV.

---

*V4 — phần IV (rule_24→30). 7/7 file đã rà. Mọi grep đều strip ruby trước khi kết luận. Không sửa bất kỳ file nội dung nào.*
