# V2 — Rà soát phần_II (rule_08 → rule_15) — "Tiếp khách tại công ty"

> Agent V2 · Sách 07 `07_visit_card` · Phạm vi: 8 file `nội_dung/phần_II/rule_*/rule.md`.
> **CHỈ BÁO CÁO — không sửa file nội dung.** Theo `.claude/rules/book-review.md`.
> Nguồn kiểm chứng: WebSearch/WebFetch trang Nhật (ghi rõ URL từng mục).

---

## 0. Kiểm tra kỹ thuật trước (chống kết luận sai)

| Phép đo | Kết quả |
|---|---|
| Ruby vỡ / lệch `<ruby>`↔`</ruby>` (8 file) | **0** — khớp thước đo main Claude |
| Mọi kết luận "không có chuỗi X" | Đã strip ruby bằng python trước khi kết luận |
| Cross-ref `**Liên quan:**` (8 dòng) | **8/8 hợp lệ.** rule 06/07/09/10/11/12/13/17/25/30 đều tồn tại; `sách 03 rule_06`, `sách 03 rule_09`, `sách 04 HouRenSou` là **LIÊN SÁCH** — không phải lỗi |
| Khối "Hội thoại XẤU" | Đã loại khỏi phạm vi báo lỗi (lỗi cố ý) |

---

## 1. Bảng tổng kết

| Mức | Số | Rule |
|---|---|---|
| 🔴 A — dạy sai việc thật | **3** | rule_09 (thang máy), rule_09 (gõ cửa), rule_10 (xe ô tô) |
| 🔴 B — tự mâu thuẫn | **1** | rule_09 【2】 vs 【3】 vs Tránh |
| 🔴 C — tiếng Nhật sai | **0** | — |
| 🔴 D — sai sự thật | **1** | rule_11 (đặt cốc "bên phải" — thiếu vế "từ phía sau bên phải") |
| 🟡 E — tiếng Việt | **2** | rule_11 d24, rule_14 d24 |
| 🟡 F — nhất quán & meta | **3** | mục lục lệch H1: rule_08, rule_12, rule_14 |
| 🔵 gợi ý | **3** | rule_08, rule_13, rule_15 |

**Đánh giá chung:** phần II **sạch về tiếng Nhật** — quét 17 pattern 二重敬語/過剰敬語 ra **0 ca** (khớp thước đo main Claude: 2 ca keigo cả sách đều nằm ở rule_30, ngoài phạm vi tôi). Keigo trong 8 file dùng đúng: `お見えになる`, `お越しくださいました`, `お掛けください`, `お通しいたします`, `ごゆっくりどうぞ`, `お気をつけてお帰りくださいませ`, `何かございましたでしょうか` — tất cả đều là mẫu chuẩn, có mặt trong nguồn Nhật.

**Vấn đề tập trung vào đúng vùng cảnh báo: 上座/下座 + thao tác thang máy.** Đây là 3 lỗi 🔴A duy nhất, và cả 3 đều thuộc loại "học viên làm sai trước mặt khách".

---

## 2. 🔴 BẢNG TRỌNG TÂM — từng quy tắc 上座/下座 + nguồn + kết luận

| # | Quy tắc sách dạy | Vị trí | Nguồn Nhật | Kết luận |
|---|---|---|---|---|
| 1 | Phòng họp: 上座 = xa cửa nhất, lưng dựa tường; 下座 = gần cửa | rule_10 d3, d23, d63 | musubu, mynavi co-medical, kaigi-select | ✅ **ĐÚNG** — "出入口から遠い方が上座" là đại nguyên tắc |
| 2 | Bên chủ nhà ngồi 下座 (giữa khách và cửa) | rule_10 d3, d20 | như trên | ✅ **ĐÚNG** |
| 3 | 3 người ngồi hàng ngang: **cấp cao nhất ở TRUNG TÂM** | rule_10 【2】 d56 | mynavi co-medical 3469, essam | ✅ **ĐÚNG** — "3人の中央…が上座です" |
| 4 | Nhìn từ kamiza, **bên phải > bên trái** | rule_10 【2】 d56 | essam ("右上位"), mynavi co-medical 3469 ("右上位の国際儀礼…2番目の上座は…右側") | ✅ **ĐÚNG** — theo 右上位 quốc tế. ⚠️ Có nguồn thiểu số (musubu 10797) nói ngược ("左側が上座") → **GÂY TRANH CÃI nhẹ, nhưng sách theo phái đa số + chuẩn quốc tế. KHÔNG SỬA.** |
| 5 | Cấp trên bên mình ngồi **đối diện** cấp trên bên khách | rule_10 【3】 d57, Tránh d74 | thông lệ 対面配置 | ✅ **ĐÚNG** |
| 6 | Phòng có cửa sổ đẹp → 上座 = ghế gần cửa sổ (xa cửa ra vào) | rule_10 Tránh d76 | v-spirits, mynavi co-medical 3540 | ✅ **ĐÚNG và diễn đạt cẩn thận** — sách nói rõ "(xa cửa ra vào)" nên không xung đột nguyên tắc gốc. Nguồn Nhật: cảnh/tranh chỉ là **tiêu chí bổ trợ**, ưu tiên số 1 vẫn là khoảng cách tới cửa |
| 7 | **Taxi/ô tô**: ghế sau bên phải tài = 上座 #1; sau bên trái = #2; ghế phụ tài = 下座 | rule_10 Tránh d75 | nextage, mynavi co-medical 2925, p-chan | ⚠️ **ĐÚNG NHƯNG THIẾU — xem 🔴A-3.** Đúng cho **taxi/có tài xế riêng**; **NGƯỢC** khi chủ nhà/cấp trên tự lái (lúc đó ghế phụ tài = 上座) |
| 8 | **Thang máy**: 上座 = góc trong xa cửa; bên chủ nhà đứng cạnh bảng nút | rule_09 【3】 d50 | Indeed, onsuku, DIME | ✅ **ĐÚNG** — "奥のスペースが上座、操作盤の近くが下座" |
| 9 | **Vào thang máy**: khách vào trước, mình vào sau (「お先にどうぞ」) | rule_09 【2】 d41+d49, Tránh d66 | onsuku, Indeed, aiwaok | 🔴 **SAI (mặc định) — xem 🔴A-1.** Thang máy TRỐNG: **người dẫn vào TRƯỚC** giữ nút 開. Chỉ khi thang **đã có người** mới để khách vào trước |
| 10 | **Ra thang máy**: mình giữ nút, khách ra trước | rule_09 【2】 d49, Tránh d66 | onsuku, Indeed | ✅ **ĐÚNG** — "降りるときは…先に来客を降ろすのがマナー" |
| 11 | **Đi hành lang**: đi trước 1-2 bước, chéo bên trái, không quay lưng | rule_09 d3, d35 | humantrust ("斜め左側、2、3歩前"), j-manner | ✅ **ĐÚNG** — có nguồn nói "右斜め前", nhưng "斜め左" cũng là chuẩn được dạy rộng. **KHÔNG SỬA.** (Chỉ lệch "1-2 bước" vs "2-3 bước" — vô hại) |
| 12 | **Phục vụ trà**: cấp cao bên khách trước → hết khách → cấp cao bên mình → trẻ bên mình | rule_11 d3, 【3】d48 | greensun ("必ずお客様から先に…お客様に出し終えたら、自社の役職の高い人から順に") | ✅ **ĐÚNG** |
| 13 | Trà ra trong 5 phút sau khi khách ngồi | rule_11 d3 | thông lệ (3–5 phút) | ✅ **ĐÚNG** |
| 14 | Đặt cốc **bên phải** khách, **2 tay** | rule_11 d3, 【2】d47 | askul, greensun, businessmanagement | ⚠️ **ĐÚNG một nửa — xem 🔴D-1.** Chuẩn là "**từ phía sau bên phải** (右後方から)", sách chỉ nói "bên phải" và giải thích lý do sai ("Nhật uống trà bằng tay phải") |
| 15 | **Tiễn khách**: nơi tiễn theo cấp (phòng họp / thang máy / cửa xe) | rule_13 d15-20 | j-manner, g-soumu | ✅ **ĐÚNG** |
| 16 | Đứng đợi đến khi **xe khuất tầm mắt** / cửa thang máy đóng | rule_13 d3, 【3】d55 | inthehotel, denwadaikou ("車が見えなくなるまで", "ドアが完全に閉まるまで") | ✅ **ĐÚNG** |
| 17 | Cúi chào **45°** khi tiễn (最敬礼) | rule_13 d3, d41 | inthehotel, mynavi co-medical 1424 ("重要なお客さまをお見送りするとき…最敬礼45度") | ✅ **ĐÚNG** |
| 18 | Cúi chào **30°** khi đón (敬礼) | rule_08 d34, d68 | mynavi co-medical 1424 ("お客様を玄関で出迎えるとき…敬礼30度") | ✅ **ĐÚNG** |

**Tổng kết vùng 上座/下座:** 18 quy tắc kiểm chứng → **14 ĐÚNG · 1 gây tranh cãi nhẹ (sách theo phái đúng) · 3 có vấn đề** (#9 sai, #7 thiếu, #14 thiếu).

---

## 3. 🔴 A — Sách dạy người học làm SAI VIỆC THẬT

### 🔴 A-1. rule_09 — **Thang máy: dạy ngược thứ tự VÀO thang** (nặng nhất phần II)

**Vị trí:** `rule_09_案内/rule.md`
- d35 (chỉ dẫn sân khấu): `đến thang máy, bấm nút, đứng giữ cửa · vào thang máy · vào sau cùng, đứng cạnh bảng nút điều khiển`
- d41: **ズン**「**お先にどうぞ**【2】。」 / *Mời các anh vào trước ạ.*
- d49 (Ghi chú 【2】): `**「お先にどうぞ」** — khi vào thang máy / cửa: khách trước, mình sau.`
- d66 (Tránh): `Vào thang máy / phòng **trước khách** → chiếm chỗ (trừ trường hợp ra thang — bên chủ nhà ra sau)`
- d3 (Luận điểm): `Ở thang máy: bấm nút giữ + để khách vào trước + mình vào sau, đứng cạnh bảng điều khiển.`

**Vấn đề:** Chuẩn Nhật cho **thang máy trống** là **người dẫn đường VÀO TRƯỚC**, đứng vào bảng điều khiển, bấm giữ nút 「開」, rồi mới mời khách vào. Sách dạy ngược lại và còn liệt kê hành vi đúng vào mục "Tránh".

**Nguồn:**
- onsuku.jp/blog/manners_006: *"誰も乗っていない場合：自分が先にエレベーターに乗って操作ボタンの前に立ち、開くボタンまたはドアを押さえて来客が乗るのを待ちます"* — và *"既に人が乗っている場合：廊下側のボタンを押して来客を先に乗せてから自分が乗る"*
- jp.indeed.com (elevator-manners-and-rules): *"乗る際：自分が先に乗り操作盤の「開」ボタンを押して待ちます"*
- aiwaok.jp: *"まず自分がエレベーターの中に入って「開」のボタンを押し、お客様を待ちましょう"*

**Vì sao nguy hiểm:** đây là sai lầm **lộ ngay trước mặt khách**. Thực tế: nếu để khách vào trước thang trống, khách phải tự tìm nút — đúng điều rule_09 muốn tránh. Hơn nữa sách còn **tự mâu thuẫn** (xem 🔴B-1): d35 chỉ dẫn sân khấu ghi *"vào sau cùng, đứng cạnh bảng nút"* — nhưng nếu vào sau cùng thì **không thể** đứng cạnh bảng nút (vị trí đó ở ngay cửa, người vào trước chiếm).

**Đề xuất:** phân biệt hai trường hợp, đúng như nguồn Nhật:
- Thang **trống** → mình vào trước, đứng bảng điều khiển, giữ 「開」, nói 「お先に失礼いたします」rồi 「どうぞ」mời khách vào.
- Thang **đã có người** → bấm nút ngoài hành lang, để khách vào trước (「お先にどうぞ」), mình vào sau.
- **RA thang** → giữ 「開」, khách ra trước (giữ nguyên — đang đúng).
- Sửa d3, d41, d49, d66 đồng bộ; d35 phải bỏ "vào sau cùng".

---

### 🔴 A-2. rule_09 — **Gõ cửa 2 lần** là quy ước kiểm tra WC, không phải chuẩn business

**Vị trí:** `rule_09_案内/rule.md`
- d35: `đi trước dẫn đến cửa phòng họp, **gõ nhẹ 2 lần**, mở cửa giữ`
- d51 (Ghi chú 【4】): `gõ nhẹ **2 lần** (kể cả phòng trống)`
- d69 (Tránh): `**Không gõ cửa** phòng họp dù phòng trống → luôn gõ **2 lần**`

**Vấn đề:** Theo プロトコール・マナー, **2 lần = kiểm tra phòng trống, dùng chủ yếu cho nhà vệ sinh**. Chuẩn business Nhật là **3 lần**; với người trên/khách/lần đầu ghé thì 4 lần (chuẩn Âu Mỹ). Gõ 2 lần trước mặt khách Nhật là lỗi bị chỉ ra trong chính các bài giảng マナー.

**Nguồn:**
- denwadaikou.jp/column/blog/000334: *"2回ノック：空室確認（おもにトイレの入室確認に使用）／3回ノック：入室確認／4回ノック：目上の人やビジネスシーン"* — và *"日本の場合、通例、ビジネスシーンで入室時にドアをノックする回数は3回です"*
- f-ricopy.jp (`ドアノック2回は間違い！`) — tiêu đề nói thẳng
- y-aoyama.jp: *"正しいノック回数は…3回が一般的"*
- j-manner.com (post-22): *"応接室のドアは3回ノックしてから開け"*

**Đề xuất:** đổi **2 lần → 3 lần** ở cả 3 chỗ (d35, d51, d69). Có thể thêm một câu: *"2 lần là quy ước kiểm tra WC — đừng dùng ở phòng họp."* Đây chính là loại chi tiết đáng giá của sách.

**Lưu ý phạm vi:** cùng chuỗi này còn dính rule_21 入室マナー (phần III) — **ngoài phạm vi tôi**, nhưng main Claude nên kiểm chéo cho đồng bộ.

---

### 🔴 A-3. rule_10 — **Quy tắc ô tô thiếu vế "chủ nhà tự lái"** (hai trường hợp NGƯỢC nhau)

**Vị trí:** `rule_10_上座下座/rule.md` d75 (mục Tránh):
> `**Quên quy tắc taxi/ô tô**: khi cùng đi taxi với khách: ghế phía sau bên phải tài = 上座 (cao nhất), ghế phía sau bên trái = 上座 thứ 2, ghế phụ tài = 下座 (bên chủ nhà)`

**Vấn đề:** Điều sách viết **đúng cho taxi / xe có tài xế chuyên nghiệp**. Nhưng khi **người bên mình (hoặc cấp trên) tự lái**, thứ bậc **đảo ngược**: ghế phụ tài trở thành **上座**, và bỏ trống ghế phụ tài lúc đó bị coi là thất lễ (như đối xử với người lái như tài xế thuê). Sách chỉ dạy một vế → học viên áp dụng nguyên si vào xe công ty do đồng nghiệp lái sẽ làm **sai ngược**.

Đây đúng là trường hợp mà prompt cảnh báo: *"HAI TRƯỜNG HỢP NÀY NGƯỢC NHAU — soi kỹ sách có phân biệt không"*. → **Sách KHÔNG phân biệt.**

**Nguồn:**
- nextage.jp/buy_guide/info/504744: *"タクシーでは…運転席後方が上座、助手席が下座"* / *"上司が運転し身内のみの場合、助手席が上座となり、目上の人がいればその人へ譲ります"* / xe công ty có tài xế riêng: *"助手席が上座となり"* ← nguồn này còn ghi cả trường hợp 専属運転手
- mynavi co-medical 2925, 221616.com/norico/kamiza-shimoza, p-chan.jp — cùng nội dung: 運転手つき → 運転席後ろ上座 · 身内が運転 → 助手席上座

**Đề xuất:** bổ sung 1 gạch đầu dòng ngay sau d75:
> *Khi **người bên mình tự lái** (xe công ty, không tài xế): quy tắc **đảo ngược** — ghế **phụ tài = 上座**, ghế sau mới là 下座. Để trống ghế phụ tài khi đồng nghiệp cầm lái = coi người lái như tài xế thuê = thất lễ.*

Ghi thêm: thứ tự 3 người ghế sau chuẩn Nhật là ① sau tài ② sau phụ tài ③ **giữa ghế sau** — sách chỉ nêu 2 vị trí, có thể bổ sung vị trí thứ 3 (không bắt buộc).

---

## 4. 🔴 B — Sách tự mâu thuẫn

### 🔴 B-1. rule_09 — mâu thuẫn nội bộ về vị trí trong thang máy

Ba chỗ trong **cùng một rule** không thể đồng thời đúng:

| Dòng | Nguyên văn | Hàm ý |
|---|---|---|
| d35 | `vào thang máy · **vào sau cùng, đứng cạnh bảng nút điều khiển**` | mình vào **sau** |
| d49 【2】 | `khi vào thang máy / cửa: **khách trước, mình sau**` | mình vào **sau** |
| d50 【3】 | `**Đứng cạnh bảng nút** — bên chủ nhà trong thang máy luôn đứng cạnh nút để **bấm tầng + giữ mở**` | phải vào **trước** mới giữ được cửa cho khách |
| d3 | `**bấm nút giữ** + để khách vào trước + mình vào sau` | tự mâu thuẫn trong **một câu**: ai đang giữ nút nếu chưa vào? |

Về mặt vật lý: muốn "giữ nút 開 cho khách vào" thì phải đứng trong thang máy **trước khách**. Câu d3 gộp cả hai vế nên tự triệt tiêu.

**Cùng gốc với 🔴A-1** — sửa A-1 thì B-1 tự hết. Ghi riêng vì đây là loại lỗi "phá lòng tin" (mục 4B của rule) mà học viên đọc kỹ sẽ phát hiện.

---

## 5. 🔴 D — Sai/thiếu sự thật

### 🔴 D-1. rule_11 — "đặt cốc bên phải" thiếu vế **từ phía sau**, và lý do giải thích không phải lý do thật

**Vị trí:** `rule_11_お茶/rule.md`
- d3: `Đặt cốc **bên phải khách** (không chắn tầm nhìn)`
- d47 【2】: `**Đặt bên phải, 2 tay** — bên phải khách (**= tay uống**). 2 tay đỡ đáy cốc đặt nhẹ.`
- d29 (giải thích khối XẤU): `(3) Đặt từ trái = chắn tay phải khách (**Nhật uống trà bằng tay phải**).`
- d65 (Tránh): `Đặt cốc **bên trái** khách → chắn tay uống`

**Vấn đề — 2 điểm:**

**(a) Thiếu vế quan trọng nhất: 右後方から (từ phía sau bên phải).** Chuẩn Nhật không chỉ là "đặt ở bên phải" mà là **tiếp cận từ phía sau bên phải rồi đặt xuống bên phải**. Vế "từ phía sau" mới là phần khó và là phần khách Nhật đánh giá — vì đi vòng ra sau nghĩa là **không chìa tay ngang qua mặt khách**. Sách nói "không chắn tầm nhìn" (d3) là đã chạm tới ý này nhưng không nêu thành thao tác.

**(b) Lý do sách đưa ra sai.** Sách bảo lý do là *"Nhật uống trà bằng tay phải"* (d29) / *"= tay uống"* (d47). Không nguồn マナー nào giải thích như vậy — người thuận tay trái vẫn được phục vụ bên phải. Lý do thật là **quy ước 右後方から** + tránh vươn tay qua trước mặt khách. Nêu lý do bịa làm học viên suy diễn sai sang tình huống khác (vd gặp khách thuận tay trái thì đổi bên → sai).

**Nguồn:**
- askul.co.jp: *"相手の右後方からお茶を出す方法があります。まず、上座から下座の順で"*
- greensun.jp: *"お茶はお客様の後ろから出すのが基本です。どうしても前から出す場合は「前から失礼します」と添えるといい"*
- businessmanagement.jpn.com: *"お茶はお客様からみて右側から出し、右側に置くのがマナー。右側に壁があるなど右側から出せないときは「前から失礼します」と一声かけ、左側から出して右側に置きましょう"*
- kaigishitu.com/…/4045: *"お客様の右後ろから両手で差し出す"*

**Đề xuất:**
- d47 【2】 sửa thành: *"Tiếp cận **từ phía sau bên phải** khách (右後方から), đặt cốc xuống **bên phải** — không vươn tay qua trước mặt khách."*
- Bổ sung phương án dự phòng (nguồn Nhật có nêu, sách thiếu): **khi bên phải bị vướng tường/ghế** → nói 「前から失礼いたします」rồi đưa từ phía trước, **nhưng vẫn đặt xuống bên phải**. Đây là tình huống rất hay gặp ở phòng họp chật.
- Bỏ lý do "Nhật uống trà bằng tay phải" ở d29 và d47.

**Ghi chú GÂY TRANH CÃI (không phải lỗi):** có nguồn thiểu số (kaigishitu 4045) dạy *"下座のお客様から順番に"* (từ 下座 lên). Nhưng đa số áp đảo (askul, greensun, businessmanagement) dạy **từ 上座 xuống**, và sách theo phái đa số → **KHÔNG SỬA thứ tự.**

**Ngoài phạm vi — ghi để main Claude biết:** prompt hỏi *"có bánh thì đặt thế nào?"*. Chuẩn Nhật: nhìn từ khách, **bánh (お茶菓子) bên TRÁI, trà bên PHẢI**; đặt lần lượt từ xa tới gần theo phía người phục vụ (nguồn askul). **Sách 07 phần II không đề cập bánh ở đâu cả** — không phải lỗi (rule_11 chỉ nói お茶), nhưng là **khoảng trống nội dung** đáng cân nhắc bổ sung, vì tiếp khách Nhật rất hay có 茶菓子.

---

## 6. 🟡 E — Tiếng Việt (kiểm CẢ hai vế JA↔VN)

### 🟡 E-1. rule_11 d24 — dịch lệch sắc thái, thêm chữ không có trong bản Nhật

**Vị trí:** `rule_11_お茶/rule.md` d24 (khối **Hội thoại XẤU** — nhưng đây là **lỗi DỊCH**, không phải lỗi cố ý của kịch bản)

| | Nguyên văn |
|---|---|
| JA | 「あ、リンさん、まず<ruby>客<rt>きゃく</rt></ruby>様から…」 |
| VN hiện tại | *À Linh, **từ khách trước em ơi...*** |

**Vấn đề:** bản Nhật không có thành phần nào tương ứng với **"em ơi"** — đó là hô ngữ thân mật do người dịch thêm. Trong ngữ cảnh Dũng nhắc Linh giữa mặt khách Nhật, "em ơi" hạ tông xuống mức đùa cợt, lệch với 「まず客様から…」 (câu nhắc nghiệp vụ bị bỏ lửng, gấp gáp).

Ghi nhận thêm: bản JA viết 「客様」 — dạng chuẩn là 「**お**客様」. Vì nằm trong khối XẤU nên **có thể** là cố ý (nhân vật nói vội), nhưng 「客様」 không phải cách người Nhật nói sai tự nhiên — người Nhật nói vội vẫn ra 「お客様」. Nghiêng về **lỗi gõ thiếu お**.

**Đề xuất:** VN → *"À Linh, phải từ khách trước đã..."*; JA → cân nhắc 「まずお客様から…」.

### 🟡 E-2. rule_14 d24 — dịch làm lộ văn dàn ý, câu thoại không tự nhiên

**Vị trí:** `rule_14_アフターケア/rule.md` d24

| | Nguyên văn |
|---|---|
| JA | 「あ、<ruby>忘<rt>わす</rt></ruby>れてた。リンさん、generic で<ruby>送<rt>おく</rt></ruby>って。」 |
| VN hiện tại | *À, quên mất. Linh, em gửi **email sáo rỗng** đi.* |

**Vấn đề:** bản Nhật dùng từ Anh 「generic」 — người nói không tự gọi mail của mình là "sáo rỗng"; "sáo rỗng" là **lời phán xét của tác giả**, không phải lời nhân vật. Dịch như vậy làm nhân vật tự tố cáo mình, lộ khung dàn ý. (Từ "sáo rỗng" đúng chỗ ở d28 và d62, nơi tác giả đang bình luận.)

**Đề xuất:** *"À, quên mất. Linh, em gửi bản mẫu chung đi."* / *"...gửi mẫu có sẵn đi."*

**Ghi chú:** 「generic」 là **tiếng Anh trong ô tiếng Nhật** (mục 4E của rule). Nhưng đây là khối XẤU và văn phong công ty IT Nhật dùng 「generic」 thật → **KHÔNG tính là lỗi.** Ghi để main Claude biết đã cân nhắc.

---

## 7. 🟡 F — Nhất quán & meta

### 🟡 F-1. Mục lục lệch H1 — 3/8 rule trong phạm vi

`meta/mục_lục.md` d52-59 vs H1 các file:

| Rule | Mục lục | H1 rule.md | Nhận định |
|---|---|---|---|
| 08 | Đón khách tại **lobby** | Đón khách tại **tiền sảnh** | H1 đúng (đã Việt hoá) — mục lục còn từ Anh |
| 12 | Mở đầu hội nghị **offline** | Mở đầu **cuộc họp trực tiếp** | H1 đúng — mục lục còn từ Anh |
| 14 | **After-care** (theo dõi) | **Chăm sóc sau khi tiếp** (theo dõi) | H1 đúng — mục lục còn từ Anh |
| 09,10,11,13,15 | — | — | ✅ khớp |

Cả 3 ca **cùng một nguyên nhân**: mục lục là bản nháp chưa Việt hoá (khớp mô tả mục 4F của rule: *"thường do mục lục là bản chưa Việt hoá"*). **Tên JP khớp 8/8.**

→ Sửa **mục lục theo H1**, không sửa ngược. Con số này khớp thước đo main Claude (11/35 toàn sách).

### 🟡 F-2. Front matter vs mục lục — tên Phần II lệch 3 cách gọi

| Nguồn | Tên Phần II |
|---|---|
| `_front_matter.md` d16 | Tiếp khách tại **Việt Nam** (来客対応) |
| `meta/mục_lục.md` d27 | Tiếp khách tại **văn phòng VN** (来客対応) |
| `meta/mục_lục.md` d48 (tiêu đề mục) | Tiếp khách tại **VN** (来客対応) |
| `meta/STATUS.md` d13 | Tiếp khách tại **VN** |
| Prompt giao việc / `00_TIEN_DO.md` | Tiếp khách tại **công ty** |

Không có file rule nào sai — đây thuần là **meta chưa thống nhất**. Nội dung thực tế (bối cảnh HCMC, Tiên Phát) khớp "tại Việt Nam". Đề xuất chốt một cách gọi duy nhất.

### 🟡 F-3. `_thuat_ngu.md` — thiếu 2 viết tắt xuất hiện trong phần II

- **CFO** — có trong bảng ✅ (d13)
- **PMO** — có ✅ (d23)
- **PM** — có ✅ (d22)
- **Slack** — xuất hiện rule_15 d3, d49, d74, d95 — là **tên riêng phần mềm**, không cần vào bảng viết tắt ✅
- **HCMC** — xuất hiện rule_11 d3/d13, rule_12 d3/d39/d41, rule_14 d38 — **KHÔNG có trong `_thuat_ngu.md`**. 🔵 Cân nhắc thêm dòng `HCMC | Ho Chi Minh City | Thành phố Hồ Chí Minh`.
- **BD** — có ✅ (d10), dùng ở rule_11 d19.

Mức độ: thấp. Ghi để đủ.

---

## 8. 🔵 Gợi ý (không phải lỗi — chủ nhà quyết)

### 🔵 G-1. rule_08 — 「ようこそお越しくださいました」 đúng, nhưng ghi chú 【3】 nói hơi quá

**Vị trí:** d49: `**「ようこそお越しくださいました」** — câu cố định đón khách. Trang trọng hơn 「いらっしゃいませ」(**dùng cho bán lẻ**).`

Câu 「ようこそお越しくださいました」 hoàn toàn chuẩn ✅. Nhưng vế *"「いらっしゃいませ」dùng cho bán lẻ"* hơi tuyệt đối: nguồn マナー doanh nghiệp Nhật vẫn dạy lễ tân văn phòng chào khách hẹn trước bằng 「いらっしゃいませ。お待ちしておりました」.

Nguồn: knitmag.jp, manpowerjobnet.com — *"事前に約束のあるお客様だった場合は、「いらっしゃいませ。お待ちしておりました」と歓迎の挨拶をします"*

**Gợi ý:** đổi *"dùng cho bán lẻ"* → *"「いらっしゃいませ」thiên về lễ tân/cửa hàng; với khách hẹn trước, người phụ trách nên dùng 「ようこそお越しくださいました」hoặc 「お待ちしておりました」"*. Việc bổ sung 「お待ちしておりました」 sẽ đáng giá — đây là câu **rất hay dùng** mà cả phần II không có.

### 🔵 G-2. rule_13 — thiếu quy tắc cúi chào tại thang máy

rule_13 d15-18 phân 3 mức nơi tiễn, trong đó có "tiễn đến **cửa thang máy** (đợi cửa đóng)". Nhưng thân rule chỉ diễn tình huống taxi. Thiếu chi tiết thao tác cho ca thang máy — vốn là ca **phổ biến nhất** trong toà nhà văn phòng.

Chuẩn Nhật (denwadaikou.jp/column/blog/000634): *"エレベーターの場合は、ドアが閉まり始めてからお辞儀をし、完全に閉まるまで行う"* — tức **bắt đầu cúi khi cửa bắt đầu khép**, giữ tư thế đến khi cửa **đóng hẳn**, không ngẩng lên sớm.

**Gợi ý:** thêm 1 gạch đầu dòng vào 【3】 hoặc mục Tránh.

### 🔵 G-3. rule_15 — "chờ tối thiểu 15 phút" nên nêu rõ điều kiện

d96 (Tránh): `**Bắt đầu họp đúng giờ** dù khách chưa đến (bỏ khách lại sau) → chờ tối thiểu 15 phút trước khi sắp xếp lại lịch`

Lời khuyên hợp lý, nhưng ở cuộc họp lớn (rule_12 khai 6 người, 9:40–12:00) việc chờ cứng 15 phút có thể tự nó gây hại. Nguyên tắc nội dung "khách muộn thì không hối" (d3, 【4】【5】【6】) rất chuẩn và tôi **không đề nghị đụng**; chỉ gợi ý thêm mệnh đề điều kiện kiểu *"nếu khách đã báo sẽ muộn N phút thì bám theo con số khách báo, đừng tự đặt mốc"*.

---

## 9. Đối chiếu với thước đo main Claude

| Thước đo (00_TIEN_DO) | Kết quả phạm vi phần_II |
|---|---|
| Mục lục vs H1 — VN lệch 11/35 | **3 ca** trong 8 rule (08, 12, 14) — khớp, không phóng đại |
| 二重敬語/過剰敬語 — 2 ca, đều ở rule_30 | **0 ca** trong phần_II — **xác nhận** thước đo |
| Ký tự lạ | **0** — xác nhận |
| Emoji strip | **0** — xác nhận |
| Ruby vỡ | **0** — xác nhận |

**Tôi KHÔNG báo cáo vượt các con số này.** Không ca nào trong báo cáo mâu thuẫn với đo lường của main Claude. Ba lỗi 🔴A đều thuộc trục **nội dung nghi thức** — trục mà 5 phép đo cơ học không quét được.

Xác nhận đánh giá của main Claude: **sách này sạch hơn hẳn 06.** Tiếng Nhật phần II ở mức tốt; 8/8 rule có cấu trúc đầy đủ, cross-ref chính xác, bảng từ vựng khớp nội dung.

---

## 10. ⛔ CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| # | Chỗ | Vì sao dễ bị sửa nhầm | Sự thật |
|---|---|---|---|
| 1 | **rule_10 【2】 d56** — "nhìn từ kamiza, **bên phải > bên trái**" | Có nguồn Nhật (musubu 10797) viết ngược: 「上座から見たときに左側が上座」. Agent/reviewer đợt sau tra trúng nguồn đó sẽ đòi đổi thành "trái" | **ĐÚNG NHƯ ĐANG VIẾT.** Theo 右上位 (国際儀礼): essam + mynavi co-medical 3469 — *"右上位の国際儀礼を用いると、2番目の上座は…右側"*. Phái đa số. **ĐỪNG ĐỔI THÀNH TRÁI** |
| 2 | **rule_11 d3, 【3】d48** — thứ tự trà: khách 上座 trước → hết khách → chủ nhà | kaigishitu.com/…/4045 dạy ngược 「下座のお客様から順番に」 | **ĐÚNG NHƯ ĐANG VIẾT.** askul + greensun + businessmanagement đều dạy từ 上座 xuống; greensun ghi rõ *"必ずお客様から先に…お客様に出し終えたら、自社の役職の高い人から順に"* |
| 3 | **rule_09 【2】 d49 — vế RA thang máy**: "mình giữ nút, khách ra trước" | Khi sửa lỗi 🔴A-1 (vế VÀO thang), rất dễ "sửa cho nhất quán" mà lật luôn vế RA | Vế **RA** đang **ĐÚNG**. Vào và ra **cố ý ngược nhau** — đó là bản chất quy tắc. Chỉ sửa vế VÀO |
| 4 | **rule_10 Tránh d76** — "phòng có cửa sổ đẹp → 上座 = ghế gần cửa sổ **(xa cửa ra vào)**" | Trông như mâu thuẫn với nguyên tắc "xa cửa nhất"; dễ bị xoá vì tưởng sai | **ĐÚNG.** Sách đã khéo đặt "(xa cửa ra vào)" trong ngoặc nên hai tiêu chí không xung đột. Nguồn v-spirits: cảnh đẹp là **tiêu chí bổ trợ**, ưu tiên số 1 vẫn là khoảng cách cửa |
| 5 | **rule_09 d3, d35** — "đi trước 1-2 bước, **chéo bên trái**" | Nhiều nguồn ghi 「右斜め前」 → dễ bị đổi sang "bên phải" | **KHÔNG CẦN SỬA.** humantrust ghi 「斜め左側、2、3歩前」; cả trái và phải đều được dạy rộng. Không phải lỗi |
| 6 | **rule_13 d3, d41 — cúi 45° khi tiễn** và **rule_08 d34, d68 — cúi 30° khi đón** | Dễ bị "thống nhất về một con số" | **CẢ HAI ĐÚNG và cố ý khác nhau.** mynavi co-medical 1424: 敬礼30° cho 出迎え, 最敬礼45° cho 重要なお客様のお見送り |
| 7 | **rule_09 【3】 d50** — "上座 trong thang máy = góc xa cửa, chủ nhà đứng cạnh bảng nút" | Nằm ngay cạnh chỗ SAI (🔴A-1) nên dễ bị xoá lây khi sửa | **ĐÚNG.** Indeed: 「奥のスペースが上座、操作盤の近くが下座」. Chỉ thứ tự VÀO là sai, vị trí ĐỨNG là đúng |
| 8 | **rule_10 Tránh d75** — quy tắc taxi (sau tài = 上座) | Sau khi đọc 🔴A-3 dễ tưởng cả dòng sai và xoá | **Dòng hiện tại ĐÚNG cho taxi.** Chỉ **BỔ SUNG** vế "chủ nhà tự lái", **không sửa** vế taxi |
| 9 | **rule_15 【4】【5】【6】** — không đề cập việc khách muộn | Trái trực giác "phải xác nhận cho rõ ràng" | **ĐÚNG chuẩn Nhật.** 「何かございましたでしょうか」 + 「ご無事で何よりです」 + không nhắc lại sau buổi họp — là mẫu chuẩn |
| 10 | **rule_08 d64, rule_08 d3** — "đến đúng giờ = muộn, phải 5 phút trước" | Nghe cực đoan với người Việt | **ĐÚNG** với 来客対応 Nhật |
| 11 | Toàn bộ khối **`## Hội thoại XẤU`** (8 file) | Chứa lỗi **cố ý** — sai chỗ ngồi, sai thứ tự trà, 「もう20分も」, 「気をつけて帰ってください」, 「generic」, 「昨日」 sai ngày | **CẤM "sửa" các lỗi này.** Trừ E-1/E-2 vì đó là lỗi **DỊCH**, không phải lỗi kịch bản |

---

## 11. Việc ngoài phạm vi — ghi để main Claude quyết, KHÔNG tự sửa

1. **rule_21 入室マナー (phần III)** có thể cũng dạy số lần gõ cửa — cần kiểm chéo cho đồng bộ với 🔴A-2. Ngoài phạm vi tôi.
2. **rule_20 待機マナー (phần III)** dạy "không ngồi 上座" — nên đối chiếu định nghĩa 上座 với rule_10 để hai rule không lệch.
3. **rule_32 お辞儀角度 (phần V)** — điểm nghi vấn 「謝罪90°」 mà main Claude nêu. Trong phạm vi tôi, rule_08 (30°) và rule_13 (45°) **đều khớp chuẩn 3 loại**, không có chỗ nào dùng 90° → **ủng hộ phương án BỎ 「謝罪90°」 khỏi câu chốt rule_32** thay vì bổ sung vào thân rule.
4. **`meta/mục_lục.md` + `_front_matter.md` + `meta/STATUS.md`** — tên Phần II lệch 3 cách gọi (F-2). Là file trong phạm vi sửa của đợt nhưng **không thuộc 8 rule của tôi** → main Claude quyết.
5. **Khoảng trống nội dung:** cách bày **お茶菓子** (bánh: bên trái, trà bên phải nhìn từ khách) không xuất hiện ở đâu trong phần II. Không phải lỗi; là đề xuất bổ sung.
6. **`_thuat_ngu.md`** thiếu `HCMC` (F-3).

---

*Báo cáo V2 — phần_II (rule_08→rule_15). 8/8 file đã đọc trọn vẹn. 18 quy tắc 上座/下座 + nghi thức đã đối chiếu nguồn Nhật.*
