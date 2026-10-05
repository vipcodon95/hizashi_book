# S1 — Rà soát ĐỢT 2 · Sách 08 Smalltalk · phần_I (rule_01 → rule_08)

> Agent: S1 · Phạm vi: **8 file `nội_dung/phần_I/rule_*/rule.md`** · CHỈ BÁO CÁO, KHÔNG SỬA.
> Rule áp dụng: `.claude/rules/book-review.md` (mục 1, 3, 4, **5**).
> Ruby đã strip bằng python trước mọi kết luận "không có".

---

## 0. BẢNG TỔNG KẾT

| Trục | Phát hiện | 🔴 | 🟡 | 🔵 |
|---|---|---|---|---|
| **A — dạy làm sai việc thật** | 1 (rule_08 thiếu vùng cấm 野球/đội bóng, mà rule_01/03/06 lại *khuyến khích*) | 1 | — | — |
| **B — sách tự mâu thuẫn** | 2 (tuổi cháu 中村; ký hiệu L1–L5 hai nghĩa) | — | 2 | — |
| **C — tiếng Nhật sai** | 0 二重敬語/過剰敬語/さ入れ. 1 vấn đề độ hợp lý (じいじ 3 tuổi) | — | 1 | — |
| **D — sai sự thật (WebSearch)** | **0/9 dữ kiện sai** — cả 9 đều ĐÚNG | — | — | — |
| **E — tiếng Việt** | **15 dòng khách Nhật tự xưng "anh/chị"** (P0-1 chưa ăn vào .md) + 3 Hán Việt sai | 1 | 1 | 1 |
| **F — nhất quán & meta** | 2 ký tự `內` phi-Nhật; mục lục Phần I **8/8 KHỚP** | — | 1 | 1 |

**Kết luận:** Phần I **không có lỗi sai sự thật nào** (9/9 dữ kiện WebSearch đều đúng) và **không có lỗi kính ngữ nào**. Vấn đề lớn nhất là **fix đợt 1 chạy nửa vời**: P0-1 (xưng hô) chỉ vá `conversation.json` + rule_01, còn **rule_02→08 trong `.md` vẫn sai 15 dòng**.

### ⚠️ Hai thước đo của main Claude cần chỉnh lại (kiểm chứng tại phần_I)

| Thước đo main Claude | Đo lại ở phần_I | Ghi chú |
|---|---|---|
| "Ký tự lạ = **0**" | **SAI — có 2 ca `內` (U+5167)** | Bộ lọc thiếu `內`. Xem 🟡-F1 |
| "Mục lục vs H1: **VN lệch 51/51**" | **SAI ở phần_I — 8/8 KHỚP** | `mục_lục.md` sửa 15/08 19:53, có lẽ đo trước khi sửa |
| "二重敬語/過剰敬語 = 0" | **ĐÚNG** — tôi quét lại 18 pattern, vẫn 0 | Xác nhận |
| "Ruby vỡ = 0" | **ĐÚNG** — 8/8 file delta=0 | Xác nhận |

---

## 1. 🔴 BẢNG KIỂM CHỨNG FIX ĐỢT TRƯỚC (bắt buộc — rule mục 5)

Đối chiếu từng mục `REVIEW_FINDINGS_JP.md` / `REVIEW_FINDINGS_VN.md` / `STATUS.md` thuộc rule_01→08.

| Mục findings | Nội dung | File · dòng | Chuỗi "Sai" | Chuỗi "Đúng" | Trạng thái |
|---|---|---|---|---|---|
| VN P0-1 (a) | Ōgaki "anh ngủ say" → "tôi" | rule_01:32 | absent | **có** `tôi ngủ say lắm` | ✅ **ĐÃ FIX** |
| VN P0-1 (b) | Ōgaki "Anh cũng vậy" → "Tôi" | rule_01:36 | absent | **có** `Tôi cũng vậy` | ✅ **ĐÃ FIX** |
| VN P0-1 (c) | Nakamura "anh dẫn đi Maruyama" → "tôi" | rule_01:57 | absent | **có** `tôi dẫn đi công viên Maruyama` | ✅ **ĐÃ FIX** |
| VN P0-1 (d) | Matsumoto "anh dẫn đi" → "tôi" | rule_01:78 | absent | **có** `tôi dẫn đi` | ✅ **ĐÃ FIX** |
| **VN P0-1 (mở rộng)** | **Cùng lỗi ở rule_02→08** | **15 dòng** | **VẪN CÒN** | — | 🔴 **CHƯA FIX — xem §2** |
| JP P1 | `加藤様` → `加藤さん` (rule_03 d35, d82) | rule_03:37,100 | `加藤様` absent | **có** `加藤さん` | ✅ **ĐÃ FIX** |
| VN P1-4 | rule_04 "Anh có khỏe không?" NG-list | rule_04:11 | — | có, đúng nguyên vẹn | ✅ **KHÔNG CẦN SỬA** (findings chỉ flag consistency) |
| VN P2-5 | front_matter "em Dũng" | ngoài phạm vi S1 | — | — | ⬜ **ngoài phạm vi** |
| VN P0-3 | mục lục đánh số Phần IV/V | `meta/mục_lục.md` | — | Phần I 8/8 khớp | ✅ **ĐÃ FIX** (phần I sạch) |

### 🔴 Kết luận kiểm chứng — **FIX NỬA VỜI, đúng cả 4 kiểu hụt đã ghi trong rule mục 5**

1. **Kiểu 1 (script chỉ vá `.json`)** — XÁC NHẬN. `STATUS.md` khai *"chạy `scripts/apply_review_fixes.py`, sửa 49 dòng trong 25 `conversation.json`"* — **đúng là chỉ `conversation.json`**. File `.md` chỉ được sửa tay ở rule_01 (4 dòng mà findings trích dẫn nguyên văn). Các rule findings **không trích dẫn cụ thể** thì `.md` không ai đụng.
2. **Kiểu 4 (script không bắt hết pattern)** — XÁC NHẬN 2 lần:
   - **Thiếu "chị"**: rule_08 山本 (nữ) tự xưng **"Chị"** ở 2 chỗ (d60, d69) — sót y hệt bài học đã ghi trong rule.
   - **Bắt nửa đoạn**: rule_05 `conversation.json` đã sửa `"Tuần trước **tôi** đi công tác Niigata"` nhưng câu kế tiếp cùng người nói vẫn `"Đúng rồi, **anh** ghé nhà sản xuất sake"` → **script sửa được câu 1, bỏ câu 2 của cùng một lượt thoại.**
3. **Kiểu 2 (vá JA quên VN)** — không gặp ở phần_I (các fix JA đều đã đồng bộ).
4. **Kiểu 3 (vá thoại quên vocab)** — không gặp ở phần_I (vocab table phần_I không chứa dữ kiện bị sửa).

---

## 2. 🔴 E1 — 15 dòng khách Nhật TỰ XƯNG "anh/chị" trong `.md` (P0-1 chưa ăn vào)

**Tiêu chí lọc (theo rule mục 4-E):** chỉ tính khi **bản Nhật cho thấy người nói TỰ nói về mình** — có `私`, hoặc động từ chia về phía người nói (`〜たんだ`, `〜てきた`, `〜てるんよ`), hoặc danh từ thân tộc thuộc người nói (`親父`, `父`, `妻`).

> **Chống phóng đại (rule mục 3):** máy quét thô ra **30 dòng**. Sau khi đọc bản Nhật từng dòng: **15 SAI**, **13 là NGÔI 2 hợp lệ** (khách Nhật gọi Dũng/Tuấn là "em" — đúng thiết kế), **2 là false hit** (chữ "anh" nằm trong từ khác/không có tự xưng). Tôi **chỉ báo 15**.

| # | Rule · dòng | Người nói | Nguyên văn JA (đã strip ruby) | Nguyên văn VN (SAI) | Đề xuất |
|---|---|---|---|---|---|
| 1 | rule_02:63 | 中村 | 「あ、**お酒もう一杯どう?**」 | *À, **anh** thêm rượu nữa nhé?* | *À, **tôi** rót thêm nhé?* |
| 2 | rule_03:59 | 松本 | 「ああ、深川ね。今でも**親父**が住んでてさ…」 | *À, Fukagawa. Giờ bố **anh** vẫn ở đó.* | *…Giờ bố **tôi** vẫn ở đó.* |
| 3 | rule_04:94 | 中村 | 「…でね、**藻岩山に登ったんだ**、夜景見に。」 | *À, **anh** leo núi Moiwa ngắm dạ cảnh.* | *À, **tôi** leo núi Moiwa…* |
| 4 | rule_05:40 | 中村 | 「で、地元の蔵元に**寄ってきたんだけど**…」 | ***Anh** ghé nhà sản xuất sake địa phương…* | ***Tôi** ghé nhà sản xuất sake…* |
| 5 | rule_05:55 | 中村 | 「そうそう、地元の蔵元に**寄ってきたんだ**。」 | *Đúng rồi, **anh** ghé nhà sản xuất sake địa phương.* | *…**tôi** ghé…* |
| 6 | rule_05:59 | 中村 | 「もちろん、5種類**飲み比べてね**…」 | *Tất nhiên, **anh** thử 5 loại so sánh…* | *…**tôi** thử 5 loại…* |
| 7 | rule_05:80 | 大垣 | 「…チームに無理させたことの方が**辛かった**…」 | *…**anh** đau lòng vì đã ép nhóm quá sức…* | *…**tôi** đau lòng…* |
| 8 | rule_05:95 | 松本 | 「実は先月、初めてベトナムに観光で**行きまして**…」 | *Thật ra tháng trước **anh** lần đầu đi du lịch Việt Nam…* | *…**tôi** lần đầu…* |
| 9 | rule_05:110 | 松本 | (lặp lại y hệt d95 ở khối "Đúng") | *…tháng trước **anh** lần đầu…* | như trên |
| 10 | rule_05:133 | 中村 | 「もう涙出そうになったよ。**妻**にも…」 | ***Anh** suýt rớt nước mắt. Vợ **anh** cười…* | ***Tôi** suýt rớt nước mắt. Vợ **tôi** cười…* (2 chỗ 1 dòng) |
| 11 | rule_07:72 | 大垣 | 「いや、**考えてたんよ**。…」 | *Không, **anh** đang suy nghĩ mà…* | *Không, **tôi** đang suy nghĩ mà…* |
| 12 | rule_07:120 | 中村 | 「…**父**が去年亡くなってね…」 | *…Bố **anh** năm ngoái mất…* | *…Bố **tôi** năm ngoái mất…* |
| 13 | rule_07:127 | 中村 | 「うん、母がいるから。月一は**帰るようにしてるよ**。」 | ***Anh** cố gắng mỗi tháng về một lần.* | ***Tôi** cố gắng mỗi tháng về một lần.* |
| 14 | rule_08:60 | 山本 | 「**私**、来年で40やねん。…」 | ***Chị** sang năm 40. Bà cô rồi đó.* | ***Tôi** sang năm 40…* — **JA có 私 rành rành** |
| 15 | rule_08:69 | 山本 | (lặp lại d60 ở khối "TỐT") | ***Chị** sang năm 40…* | như trên |

**Ghi chú quan trọng cho main Claude:**
- #14, #15 là **bằng chứng trực tiếp** cho bài học "script thiếu pattern *chị*" đã ghi trong rule mục 5 — nhân vật nữ 山本 sót nguyên vẹn.
- #9 và #15 nằm trong khối lặp (câu mở của khối XẤU được lặp lại ở khối TỐT) → **sửa phải sửa cả 2 bản**, đừng chỉ sửa bản đầu.
- #10 có **2 chỗ trong 1 dòng** — replace 1 lần sẽ sót.

---

## 3. 🔴 A1 — rule_08 thiếu vùng cấm "đội bóng", mà rule_01/03/06 lại KHUYẾN KHÍCH chủ đề này

**Đây là mâu thuẫn liên-rule kèm rủi ro thật, không phải lỗi chính tả.**

- `rule_08:17-26` liệt kê **8 vùng cấm**: 政治 / 宗教 / 給料 / 女性の年齢 / 占い・血液型 / 会社内スキャンダル / so sánh JP-VN tiêu cực / 不倫・離婚. **Không có đội bóng / bóng chày.**
- Nhưng ở phần_I, **thể thao theo đội được dựng thành chủ đề vàng**:
  - `rule_01:113` câu vàng copy-paste: 「ご出身の[地名]、もうXX…の季節ですか?」 và `rule_01:99` dạy sau khi chốt hợp đồng thì mở 「大垣さん — mùa này 阪神 thế nào?」
  - `rule_03:127` câu vàng L3: 「**[sport team theo quê khách]** 今シーズンどうですか?」
  - `rule_03:88` "**L3 OK:** thể thao theo đội bóng quê"
  - `rule_06:60` 大垣 nói về 阪神 5 phút liền như chủ đề an toàn.

**Vấn đề:** trong văn hoá công sở Nhật, câu răn kinh điển là **「政治・宗教・野球の話はするな」** — bóng chày (cụ thể 巨人 vs 阪神) đứng **ngang hàng** chính trị và tôn giáo, đúng vì fan hai đội đối đầu gay gắt. Sách dạy 8 vùng cấm mà bỏ mất **1 trong 3 vùng cấm nổi tiếng nhất**, đồng thời lại dạy dùng chính chủ đề đó làm mũi nhọn.

**Không đề nghị bỏ chủ đề thể thao** — cách dùng của sách (hỏi đội **theo quê khách**) là đúng và tinh tế. Nhưng cần **1 dòng cảnh báo**: chỉ hỏi đội **của khách**, tuyệt đối không (a) bình luận đội đối thủ, (b) chê đội khách, (c) đem 巨人 ra hỏi người Kansai và ngược lại. Đáng chú ý: `REVIEW_FINDINGS_JP.md` P2 đã nêu đúng ý này cho rule_47 (*"ask about TEAM matching THEIR home prefecture"* — "the rule implies but doesn't say") nhưng **chưa ai áp xuống rule_08 / rule_03 của phần_I**.

**Đề xuất:** thêm vào bảng 8 vùng cấm rule_08 một dòng #9 「**贔屓球団の否定**」(chê đội khách ủng hộ / đem đội kình địch ra so) mức "Cẩn trọng", HOẶC thêm chú thích dưới `rule_03:127`. → **cần chủ nhà duyệt hướng vì là bổ sung nội dung (vòng 5 theo rule mục 8).**

*Đối chiếu:* trục A cũng yêu cầu soi lời khuyên sức khoẻ + cách từ chối lịch sự. **Phần_I không có lời khuyên sức khoẻ nào** (không có ca kiểu rule_15 ヒートショック / rule_12 "uống 1 ngụm"). rule_08 có dạy **cách né** (「いやあ、そういうのはちょっと(笑)。ところで…」) và dạy **cách gỡ khi đồng đội lỡ miệng** — phần này tốt, giữ nguyên.

---

## 4. 🔵 D — BẢNG DỮ KIỆN ĐÃ WEBSEARCH (9/9 ĐÚNG)

| # | Rule · dòng | Khẳng định trong sách | Kết quả kiểm chứng | Phán định |
|---|---|---|---|---|
| 1 | rule_05:96 | ハロン湾「2000近くの島」/ "gần 2000 hòn đảo" | Vịnh Hạ Long có **1.969 đảo** | ✅ **ĐÚNG** — "gần 2000" là cách nói chuẩn xác. **⚠️ CẤM SỬA thành 3.000** (bẫy đã ghi trong rule mục 4-D là chiều ngược lại) |
| 2 | rule_01:52 | 札幌 桜「東京とは1か月遅れ…5月の連休がやっと見頃」 | Hokkaido nở chậm hơn Honshu ~1 tháng; Sapporo 2026 dự báo nở 26/4, mãn khai 30/4 → **đúng GW** | ✅ **ĐÚNG** |
| 3 | rule_03:58 | 深川めし = 「あさりとご飯」, 松本 quê 深川, bố còn ở đó | 深川めし là **món quê Tokyo** (江東区), nấu **nghêu あさり** + cơm; MAFF công nhận | ✅ **ĐÚNG** |
| 4 | rule_03:62 | 門前仲町 có quán 深川めし ngon | 門前仲町/清澄白河 đúng là khu tập trung quán 深川めし | ✅ **ĐÚNG** |
| 5 | rule_04:93 | 藻岩山 ngắm 夜景 ở Sapporo | 藻岩山 được chọn **日本新三大夜景** (2015), có ロープウェイ + đài quan sát | ✅ **ĐÚNG** |
| 6 | rule_04:72 | 若洲海浜公園 (東京湾) câu シーバス | Đúng — công viên biển 江東区, có 海釣り施設, câu được スズキ (seabass) | ✅ **ĐÚNG** |
| 7 | rule_04:114 | 「つるとんたん」丸の内, 関西風出汁 | つるとんたん BIS TOKYO ở 丸の内 (nối ga Tokyo), nước dùng **昆布+鰹 kiểu Kansai** | ✅ **ĐÚNG** |
| 8 | rule_03:79 | 新庄監督「エスコンフィールド満員にした」 | 新庄剛志 làm HLV 日本ハム từ 2022; ES CON FIELD mở 2023, CS 2024 gần 4 vạn khán giả/ngày | ✅ **ĐÚNG** |
| 9 | rule_06:45 | 池井戸潤 新刊「銀行もの」 | 池井戸潤 cựu nhân viên 三菱銀行, chuyên tiểu thuyết ngân hàng (半沢直樹) | ✅ **ĐÚNG** |
| 10 | rule_08:170 | 「A型ですか?あ、几帳面そう!」 là NG với người lớn tuổi | Nhật có khái niệm **ブラハラ (blood-type harassment)**; "A型=几帳面" bị coi là định kiến vô căn cứ, doanh nghiệp cấm hỏi khi tuyển | ✅ **ĐÚNG** — sách cảnh báo chính xác |
| 11 | rule_07:10 | 「間」bắt nguồn từ 茶道・能・俳句 | Đúng — 間 là phạm trù mỹ học trong 能・茶道, im lặng có giá trị ngang lời nói | ✅ **ĐÚNG** |

**→ Phần_I KHÔNG có lỗi sai sự thật.** Không có ca nào kiểu 黒霧島/新庄 quê sai. Đặc biệt **không có dữ kiện nào về Việt Nam bị sai** (chỉ 1 dữ kiện VN duy nhất = Hạ Long, và nó đúng).

---

## 5. 🟡 B — SÁCH TỰ MÂU THUẪN (2 ca)

### 🟡 B1 — Tuổi cháu của 中村: "sắp 3" vs "đã 3 và nói trôi chảy"

| Rule · dòng | Nguyên văn JA | Nguyên văn VN |
|---|---|---|
| rule_02:39 | 「…でも**孫が3歳になったら**…」 | *…Nhưng đợi **cháu 3 tuổi**…* (= **chưa tới 3**) |
| rule_02:81 | 「お孫さん**3歳になられる**とおっしゃってましたよね」 | *…cháu **sắp 3 tuổi**…* (= **chưa tới 3**) |
| rule_05:132 | 「**3歳でこんなに言葉出る**とは思わなかった」 | *Không ngờ **3 tuổi** đã nói nhiều thế* (= **đã 3**) |
| rule_06:37 | 「**孫が3歳になってね**、もうペラペラなんだよ」 | *…**Cháu 3 tuổi rồi**, nói trôi chảy lắm* (= **đã 3**) |

Cả 4 rule dùng **cùng bối cảnh tháng 5/2026** (rule_01:17 và rule_02:17 khai rõ). rule_02 nói cháu chưa tới 3, rule_05/06 nói đã 3. Đây đúng dạng "**giữa hai rule**" mà rule mục 4-B mô tả (giống `約20店舗` vs `25店舗` ở rule_28).

**Mức độ:** 🟡 chứ không 🔴 — vì các rule không bắt buộc xảy ra cùng ngày, độc giả khó bắt. Nhưng rule_02:88 lại **cố tình dạy** "nhớ chi tiết khách kể" và lấy `孫が3歳` làm ví dụ mẫu → sách tự phá ví dụ của chính nó.

**Đề xuất:** thống nhất một mốc. Đơn giản nhất: đổi rule_02:39 「孫が3歳になったら」→「孫がもう少し大きくなったら」 (bỏ con số), và rule_02:81/82 đổi thành 「お孫さん、3歳になられたとおっしゃってましたよね」/*"cháu vừa tròn 3 tuổi"*.

### 🟡 B2 — Ký hiệu **L1–L5 mang HAI nghĩa khác nhau**, không hề báo trước

| Rule | L1/L2/L3 nghĩa là gì |
|---|---|
| rule_03 (định nghĩa gốc, d19-25) | **Cấp độ THÂN MẬT** — L1 mới gặp → L5 bạn thân |
| rule_04:23, 134 | dùng **đúng nghĩa rule_03** (L4-L5 = thân) ✅ |
| rule_06:24-25, 144 | dùng **đúng nghĩa rule_03** (L3-L4 = thân) ✅ |
| **rule_05:19-23** | **KỸ THUẬT LẮNG NGHE** — L1 相槌 / L2 要約 / L3 掘り下げ ❌ nghĩa khác hẳn |

`rule_05:21` viết "**L1** | 相槌 + Lặp từ khóa | **Mọi lúc**" — trong khi cùng ký hiệu ở rule_03 nghĩa là "khách mới gặp, chỉ được nói thời tiết". Học viên đọc tuần tự rule_03 → rule_04 → rule_05 sẽ hiểu nhầm "L3 đào sâu cảm xúc" là "chỉ dùng ở cấp thân L3".

**Đề xuất:** rule_05 đổi nhãn sang **Lớp 1 / Lớp 2 / Lớp 3** hoặc **T1/T2/T3** (T = technique), giữ L1–L5 độc quyền cho thang thân mật. Sửa 8 chỗ trong rule_05 (d19-23, 29, 65, 67, 124, 148, 155, 160).

---

## 6. 🟡 C — TIẾNG NHẬT

### ✅ Kết quả quét: 0 lỗi kính ngữ

Quét 18 pattern trên bản đã strip ruby (`部長様`, `社長様`, `おっしゃっておられる`, `ご質問になられる`, `お伺いさせていただく`, `申させていただきます`, `ご請求書`, `ご覧になられる`, `お帰りになられる`, `なされる`, `いたされる`, `お読みになられる`, ら抜き `食べれる/見れる/来れる/出れる`, さ入れ `〜さ+せていただく`) → **0 hit**.

Ca duy nhất máy dừng lại là `rule_06:120` 「相談**させて**いただけますか」 — đây là **さ入れ言葉 hợp lệ**: 相談する là động từ nhóm 3, dạng sai khiến đúng là 相談させる. **KHÔNG phải lỗi. CẤM SỬA.** (さ入れ言葉 chỉ sai ở nhóm 1, vd 飲まさせて ❌).

Tôi **xác nhận con số 0 của main Claude** ở trục này cho phần_I — không tìm được ca nào để trích nguyên văn làm bằng.

### 🟡 C1 — rule_05: cháu 3 tuổi "lần đầu gọi じいじ" là bất hợp lý về phát triển

| Dòng | JA | VN |
|---|---|---|
| rule_05:128 | 「実はね、先月**孫が初めて『じいじ』って呼んでくれて**。」 | *Tháng trước cháu **lần đầu** gọi tôi là 'ông ơi'.* |
| rule_05:132 | 「**3歳でこんなに言葉出る**とは思わなかった。」 | *Không ngờ **3 tuổi** đã nói nhiều thế.* |

**Kiểm chứng:** trẻ Nhật 3 tuổi thông thường có vốn ~**1.000 từ** và nói được câu 3 từ trở lên; mốc "Late Talker" quốc tế là **dưới 50 từ ở 2 tuổi**. Vậy "3 tuổi mới lần đầu gọi ông" là **dấu hiệu chậm nói**, không phải khoảnh khắc đáng mừng — và câu 「3歳でこんなに言葉出るとは思わなかった」 (ngạc nhiên vì nói *nhiều*) mâu thuẫn ngay với 「初めて呼んでくれた」 ở 4 dòng trên.

**Mức độ:** 🟡 — không gây hại, nhưng độc giả Nhật (hoặc người có con nhỏ) sẽ thấy gợn, và nó làm hỏng chính khoảnh khắc cảm xúc mà rule_05 dựng lên để dạy kỹ thuật 要約+掘り下げ.

**Đề xuất:** đổi `rule_05:128` thành 「先月**孫が初めて『じいじ、あそぼ』って**言ってくれて」 (lần đầu nói **câu**, không phải lần đầu gọi) — giữ nguyên cảm xúc, hết bất hợp lý, và ăn khớp với 「3歳でこんなに言葉出る」.

---

## 7. 🟡🔵 E — TIẾNG VIỆT (ngoài §2)

### 🟡 E2 — 3 âm Hán Việt SAI trong bảng Vocab

| Rule · dòng | Từ | Sách ghi | Đúng phải là | Vì sao |
|---|---|---|---|---|
| rule_02:161 | 受験 | **THỤ HIỂM** | **THỤ NGHIỆM** | 験 = NGHIỆM (thí nghiệm, kinh nghiệm). HIỂM là chữ **険** — khác chữ |
| rule_05:192 | 疲弊 | **BỆ BỈ** | **BÌ TỆ** | 疲 = BÌ (mệt), 弊 = TỆ. Sách vừa **đảo thứ tự** vừa sai cả 2 âm |
| rule_07:178 | 信頼関係 | **TÍN LỆ QUAN HỆ** | **TÍN LẠI QUAN HỆ** | 頼 = LẠI (ỷ lại, tín lại). LỆ là 例/隷 — khác chữ |

Đã đối chiếu 13 mục Hán Việt của phần_I; **10 mục còn lại ĐÚNG** — xem danh sách CẤM SỬA §9.

### 🔵 E3 — Tiếng Anh trong văn tiếng Việt (nhẹ, 2 ca đáng cân nhắc)

| Rule · dòng | Nguyên văn | Nhận xét |
|---|---|---|
| rule_03:127 | 「[**sport team** theo quê khách] 今シーズンどうですか?」 | Nằm trong khối "câu vàng copy-paste" — placeholder tiếng Anh lọt vào mẫu câu tiếng Nhật. Nên đổi 「[**đội bóng quê khách**]」 |
| rule_03:132 | "(chỉ khi khách đã **share** trước)" | "share" → "**chia sẻ**" |

`slang` (rule_01:38, 143) và `open/closed question` (rule_04:162-163) là **thuật ngữ giải thích, chấp nhận được** — bảng `_thuat_ngu.md` cũng theo lối này. Không báo là lỗi.

**Không tìm thấy:** ký tự Hangul, chữ Trung giản thể trong văn Việt, mẫu dịch máy "Hy vọng anh/chị…", hay ca dịch lệch kiểu `お世話になっております` → "cảm ơn anh đã hỗ trợ".

---

## 8. 🟡🔵 F — NHẤT QUÁN & META

### 🟡 F1 — 2 ký tự `內` (U+5167) phi tiếng Nhật — **main Claude báo "ký tự lạ = 0" là SAI**

| Rule · dòng | Nguyên văn | Vấn đề |
|---|---|---|
| rule_03:104 | 「…ええ、まあ…(`<ruby>`**內心**`<rt>ないしん</rt></ruby>`: lần đầu hỏi vầy?)」 | `內` = **U+5167** (dạng phồn thể/Trung), tiếng Nhật dùng **`内` U+5185** |
| rule_06:105 | 「…え、ああ…(**內心**: cắt giữa câu chuyện?)」 | như trên (ở đây **không có ruby**, khác rule_03) |

**Bằng chứng đối chiếu ngay trong sách:** `rule_01:94` viết đúng — 「(と、`<ruby>`**内心**`<rt>ないしん</rt></ruby>`: 今その話?)」 với `内` U+5185. Vậy 2 ca trên là lỗi gõ, không phải chủ ý.

Báo động sai #1 trong `00_TIEN_DO_DOT2.md` loại `那`/`几`/`没`/`点` là **đúng** (đều là kanji Nhật hợp lệ), nhưng bộ lọc **không có `內`** nên bỏ sót. Đây là ca "**ký tự lạ**" thật sự duy nhất của phần_I.

⚠️ **Bẫy khi sửa:** rule_03:104 có ruby bọc, rule_06:105 **không có ruby** → sửa bằng 2 lệnh Edit khác nhau. Theo rule mục 1.1, phải `sed -n '104p'` xem nguyên văn trước khi Edit.

### 🔵 F2 — Mục lục Phần I: **8/8 KHỚP** (trái với thước đo "VN lệch 51/51")

Đối chiếu H1 của 8 file với `meta/mục_lục.md` d50-57: **khớp tuyệt đối cả 8**, kể cả phần tên Nhật sau dấu `/`.

```
01 ✅ Khi nào "tán" được? / 雑談のタイミング
02 ✅ Quy tắc 80/20 (khách nói 80%) / 8:2のルール
03 ✅ 5 mức độ thân mật + chủ đề phù hợp / 親密度5レベル
04 ✅ Câu hỏi mở vs đóng / 開かれた質問・閉じた質問
05 ✅ Người giỏi lắng nghe / 聞き上手の技術
06 ✅ Chuyển chủ đề mượt / トピック転換
07 ✅ Khi im lặng — đừng hoảng / 沈黙の活用
08 ✅ 8 chủ đề cấm tuyệt đối / NG話題8選
```

`mục_lục.md` có mtime **15/08 19:53** — nhiều khả năng thước đo "lệch 51/51" đo **trước** lần sửa đó. **Đề nghị main Claude đo lại toàn sách trước khi giao ai đó "Việt hoá mục lục".**

### 🔵 F3 — Lệch nhỏ giữa mục lục và nội dung rule_08 (chỉ 1 chữ)

`mục_lục.md:57` brief rule 08 ghi 「…tuổi cụ thể (phụ nữ) / **占星術** / scandal…」 nhưng `rule_08:23` bảng 8 vùng cấm ghi 「**占い**・血液型決めつけ」. 占星術 = **chiêm tinh/tử vi phương Tây**, 占い = **bói toán nói chung**; vocab rule_08:183 cũng chỉ có 占い. → thống nhất thành 占い. 🔵 rất nhẹ.

### ✅ Các phép đo khác — SẠCH

| Phép đo | Kết quả phần_I |
|---|---|
| Ruby vỡ (`<ruby>` vs `</ruby>`, `<rt>` vs `</rt>`) | **0/8 file lệch**, `broken`=0 |
| Bug ruby-loss ở câu LẶP giữa khối XẤU/TỐT | rule_05, 07, 08 có lặp câu — **đều mất ruby ở bản thứ hai** (vd rule_05:109-110 lặp d94-95, rule_08:68 lặp d59). **Ghi nhận, KHÔNG tự sửa** — theo rule mục 1.3, việc này phải chạy script cho TOÀN SÁCH chứ không theo phạm vi agent |
| Emoji bị strip để lại double-space | **0** — xác nhận báo động sai #2 đúng: sách 08 không dùng cấu trúc `📝 **Ghi chú:**`. Các dòng `**Vì sao XẤU:` / `**Đúng:` là in đậm bình thường |
| Cấu trúc 8 file (Luận điểm → Tâm lý → Bối cảnh → 4 Scenario → Câu vàng → NG → Vocab → BJT) | **8/8 đủ mục**, đúng thứ tự |
| Footer 「Hizashi Sách 08 — Rule NN — <tên JP>」 | **8/8 khớp** tên JP với H1 |

**Lưu ý biến thể tiêu đề (không phải lỗi):** rule_01/03/06 dùng "## 4 Scenario", rule_02/04/05/07/08 dùng "## 4 Scenarios"; rule_05 dùng "## 4 Tình huống" và "## Điều tuyệt đối tránh" / "## Câu vàng dùng ngay" thay vì "## NG — tuyệt đối tránh" / "## Câu vàng copy-paste". 🔵 rất nhẹ, chỉ báo để main Claude quyết có đồng bộ hoá không.

---

## 9. ⛔ DANH SÁCH **CẤM SỬA** — chỗ ĐÚNG rất dễ bị sửa nhầm

| # | Vị trí | Nội dung | VÌ SAO CẤM SỬA |
|---|---|---|---|
| 1 | rule_05:96 | ハロン湾「**2000近くの島**」/ "gần 2000 hòn đảo" | **ĐÚNG** (thật: 1.969 đảo). Rule mục 4-D có ghi bẫy "Hạ Long ~1.969 không phải 3.000" → đọc lướt dễ tưởng chỗ này sai. **KHÔNG đổi thành 3.000, cũng không đổi thành "1.969"** — "gần 2000" trong lời thoại là tự nhiên |
| 2 | rule_05:94-99 | Cả khối ズン độc thoại 2 phút về Hạ Long | Đây là khối **cố ý làm sai** để dạy "không cướp lời". Nội dung "sai về hành vi" là **chủ ý sư phạm** |
| 3 | rule_01:92-95 · rule_02:54-63 · rule_03:100-105 · rule_04:37-50 · rule_06:101-106 · rule_07:37-40, 69-72 · rule_08:38-41, 61-62, 85-88, 115-118 | Toàn bộ khối "Hội thoại XẤU" / dòng có nhãn `[NG]` | **Cố tình chứa lỗi**. Vd rule_08:61 「え、40歳ですか?見えませんね」 là ví dụ NG mẫu — **không phải sách khuyên làm vậy** |
| 4 | rule_06:120 | 「来週の納期の件、少し**相談させて**いただけますか」 | **KHÔNG phải さ入れ言葉**. 相談する = nhóm 3 → 相談させる đúng chuẩn. Chỉ nhóm 1 (飲む→飲ませる) mới sai khi thêm さ |
| 5 | rule_01:53 · 74 · rule_02:55, 78, 84, 101, 112 · rule_03:80 · rule_05:76 · rule_06:84, 123 · rule_08:118 | **13 dòng** khách Nhật gọi Dũng/Tuấn là "**em**" | Đây là **NGÔI 2 hợp lệ** (khách senior gọi junior Việt). Rule mục 3 ghi rõ: agent từng báo 43 lỗi mà thực tế chỉ 7. **Chỉ sửa đúng 15 dòng ở §2, đừng replace toàn cục "anh"→"tôi"** |
| 6 | rule_08:59, 68 | 山本 tự gọi 「**おばちゃんやで**」 | Nhân vật **tự trào** bằng Kansai-ben — hợp lệ, tự nhiên. Chỉ sửa phần **dịch VN** "Chị"→"Tôi", **giữ nguyên bản Nhật** |
| 7 | rule_02:156, 158 · rule_05:186, 187 | 聞き上手=**VĂN THƯỢNG THỦ**, 相槌=**TƯƠNG CHÙY** | **ĐÚNG** (聞=VĂN, 槌=CHÙY). Đừng sửa nhầm khi đang sửa 3 mục Hán Việt sai ở §7-E2 |
| 8 | rule_01:145 見頃=KIẾN KHOẢNH · rule_02:155 自分語り=TỰ PHÂN NGỮ · rule_03:161 趣味=THÚ VỊ · rule_04:169 物足りない=VẬT TÚC · rule_07:176-177 落ち着く=LẠC TRƯỚC · rule_08:181,183,187 給料=CẤP LIỆU/占い=CHIÊM/横領=HOÀNH LĨNH | 10 mục Hán Việt | **Đã đối chiếu, tất cả ĐÚNG** |
| 9 | rule_01:94 | 「(と、**内心**…)」 với `内` U+5185 | **Đây là bản ĐÚNG** — dùng làm mẫu để sửa rule_03:104 và rule_06:105. Đừng đổi ngược |
| 10 | rule_03:19-25 | Bảng L1–L5 thang thân mật | **Đây là định nghĩa GỐC**. Nếu sửa xung đột ký hiệu (§5-B2) thì đổi ở **rule_05**, không đổi rule_03 |
| 11 | rule_08:17-26 | Bảng 8 vùng cấm hiện có | 8 mục hiện tại **đều đúng**. Vấn đề ở §3 là **THIẾU**, không phải sai → chỉ **thêm**, đừng sửa 8 mục đang có |
| 12 | rule_07 toàn bộ mốc giây (3/5/7/8/10) | "5-7 giây im lặng là bình thường" | Nhất quán trong rule, khớp mỹ học 間. Không phải mâu thuẫn số liệu |
| 13 | rule_08:170 | 「A型ですか?あ、几帳面そう!」 liệt vào NG | **ĐÚNG** — Nhật có khái niệm ブラハラ. `几` là kanji Nhật hợp lệ (几帳面), **không phải giản thể** — báo động sai #1 đã ghi |

---

## 10. ⬜ NGOÀI PHẠM VI — GHI NHẬN, KHÔNG SỬA

| Việc | Ghi chú |
|---|---|
| `conversation.json` của 8 rule | Có lỗi xưng hô còn sót (vd rule_05 "Đúng rồi, **anh** ghé…", rule_08 "**Chị** sang năm 40"). Rule mục 0 + đề bài: **không đụng**. Nhưng đây là **bằng chứng script `apply_review_fixes.py` bắt thiếu pattern** |
| `scripts/apply_review_fixes.py` | Pattern thiếu "chị" và chỉ bắt câu đầu của lượt thoại. **Không sửa** — là công cụ, ngoài phạm vi |
| Phụ lục B/E | Không kiểm (ngoài phạm vi S1, và là file sinh tự động) |
| `_front_matter.md` / `_back_matter.md` | Không thuộc phạm vi S1 |
| Bug ruby-loss ở câu lặp | Đã ghi ở §8. Theo rule mục 1.3, phải xử lý **toàn sách** bằng script, không theo phạm vi agent |

---

## 11. THỨ TỰ SỬA ĐỀ XUẤT (theo rule mục 8)

| Vòng | Việc | Số chỗ | Rủi ro |
|---|---|---|---|
| 1 | `內`→`内` (F1) · 3 âm Hán Việt (E2) · "share"→"chia sẻ", "sport team"→"đội bóng quê khách" (E3) | 2 + 3 + 2 | Thấp — dùng Edit, **đừng viết script** |
| 2 | (không có — **0 lỗi sai sự thật**) | 0 | — |
| 3 | **15 dòng xưng hô** (§2) — dùng Edit từng dòng, chú ý #9/#15 nằm trong khối lặp và #10 có 2 chỗ/dòng | 15 | Trung bình — **tuyệt đối không replace_all "anh"→"tôi"** (sẽ phá 13 dòng ngôi 2) |
| 3 | Thống nhất tuổi cháu 中村 (B1) · sửa 「初めて『じいじ』」 (C1) | 3-4 | Trung bình — cần đọc ngữ cảnh |
| 4 | Đổi nhãn L1-L3 của rule_05 (B2) · 占星術→占い ở mục lục (F3) | 8 + 1 | Thấp |
| 5 | **Thêm vùng cấm #9 「贔屓球団の否定」 vào rule_08** (A1) — **cần chủ nhà duyệt hướng** | 1-2 | Bổ sung nội dung mới |

---

*S1 — phần_I (rule_01→08) — Đợt rà soát 2 — sách 08 Smalltalk.*
*Đã strip ruby trước mọi kết luận. Đã tự chặn phóng đại: 30 hit thô → **15** lỗi xưng hô thật.*
