# S2 — Rà soát Phần II (rule_09 → rule_20) — Sách 08 Smalltalk

> Đợt 2, áp dụng `.claude/rules/book-review.md`.
> Phạm vi: **12 file** `nội_dung/phần_II/rule_*/rule.md`. CHỈ BÁO CÁO, KHÔNG SỬA.
> Đã đọc: rule book-review (trọn vẹn), `00_TIEN_DO_DOT2.md`, `REVIEW_FINDINGS_JP.md`, `REVIEW_FINDINGS_VN.md`, `STATUS.md`, `meta/mục_lục.md`.
> Ngày: 2026-08-15.

---

## 0. BẢNG TỔNG KẾT

| Hạng | Số ca | Ghi chú |
|---|---|---|
| 🔴 Nghiêm trọng | **2** | rule_15 giá 入湯手形 sai (1300→1500円) · rule_20 tên đòn snowboard BỊA |
| 🟡 Cần sửa | **5** | rule_16 chú thích 3000m mâu thuẫn thoại 2000m · rule_16 隅田川「240年」 · rule_16 フェニックス 2004 vs 2005 + 追悼/復興 · rule_10 「お当地」 sai chính tả · rule_19 phim Conan lệch năm bối cảnh |
| 🔵 Ghi nhận / cân nhắc | **6** | rule_18 tuổi Tanaka vs Pokémon đời đầu · rule_15 mất hẳn từ ヒートショック · rule_15 thiếu cảnh báo 温泉 + 高血圧/心臓 · rule_12 vocab thiếu 3 từ đã dạy · rule_13 mâu thuẫn nhẹ · rule_14 「独標」 n/a |
| ✅ Sạch | — | Trục C (tiếng Nhật keigo): **0 lỗi**, quét 16 pattern trên bản đã strip ruby. Ruby vỡ: **0**. Mục lục vs H1 phần II: **khớp 12/12** |

### Đánh giá tổng thể phần II

**Phần II ở tình trạng TỐT.** Hai lỗi loại A nặng nhất mà đề bài cảnh báo (rule_12 ép rượu, rule_15 ヒートショック nói ngược) **đều ĐÃ ĐƯỢC SỬA ĐÚNG và triệt để** — xem mục 2. Không tìm được lỗi keigo nào; đây là mảng sạch thật (tôi đã strip ruby trước khi quét, không dựa vào grep thô).

Các lỗi còn lại là **sai sự thật lẻ tẻ (trục D)** và **mâu thuẫn chú thích vs thoại (trục B)** — không phải lỗi hệ thống.

**Tôi KHÔNG tìm thấy** trong phạm vi mình: xưng hô sai · ký tự giản thể/Hangul · emoji bị strip · lỗi dịch máy · tiếng Anh thừa đáng kể · lệch mục lục. Theo mục 3 của rule (agent hay phóng đại) tôi ghi rõ **những mảng này SẠCH**, không bịa lỗi cho đủ số.

---

## 1. 🔴 MỤC RIÊNG — ĐÁNH GIÁ RỦI RO SỨC KHOẺ (rule_12, rule_15)

### 1.1 rule_12 酒 — LỜI KHUYÊN ÉP RƯỢU: ✅ **ĐÃ FIX TRIỆT ĐỂ**

**Kiểm chứng:** đọc toàn bộ 209 dòng. Chuỗi "uống 1 ngụm" / "cho phải phép" **KHÔNG CÒN TỒN TẠI** ở bất kỳ đâu trong file.

Nguyên văn hiện tại (dòng 166-167, khối `## NG — tuyệt đối tránh`):

> - Từ chối cụt lủn "私はお酒飲めません" rồi im lặng → khách hụt hẫng. **Không phải vì bạn phải uống**, mà vì thiếu vế thứ hai: hãy nói `「お酒は弱いのですが、お付き合いさせてください」` + **cầm ly ウーロン茶 / ノンアルコール cụng cùng mọi người**. Người Nhật nâng ly là để cùng nhịp, không phải để đo tửu lượng.
>   ⚠️ **Tuyệt đối không ép bản thân uống "cho phải phép".** Khoảng 40% người Nhật thiếu men ALDH2 nên chính họ hiểu rõ chuyện không uống được; và **アルハラ (quấy rối rượu bia)** nay là điều cấm kỵ ở doanh nghiệp Nhật. Nếu bạn dị ứng rượu, nói thẳng `「体質的に飲めないんです」` — đây là lý do được chấp nhận hoàn toàn.

**Đối chiếu 3 yêu cầu kiểm của đề bài:**

| Yêu cầu kiểm | Kết quả | Bằng chứng |
|---|---|---|
| Rule còn khuyên "uống 1 ngụm cho phải phép"? | **KHÔNG** — đã gỡ, còn cấm ngược lại | d167 "Tuyệt đối không ép bản thân uống" |
| Có dạy cách TỪ CHỐI rượu lịch sự? | **CÓ** — 2 chỗ | d158-159 khối Câu vàng: `「もう十分です、ありがとうございます。」` / `「明日早いので、これで失礼します。」`; d166-167: `「お酒は弱いのですが、お付き合いさせてください」` + `「体質的に飲めないんです」` |
| Có nhắc người không uống được? | **CÓ** — nêu đích danh ALDH2 40% + アルハラ | d167 |

**Nhận xét chuyên môn:** phần fix này viết **đúng và đủ**. Nêu được cả 3 tầng: (a) cơ sở sinh học (ALDH2), (b) cơ sở pháp lý/văn hoá doanh nghiệp (アルハラ), (c) câu tiếng Nhật thực dụng để dùng ngay. Cách diễn đạt `「体質的に飲めないんです」` là **chuẩn native** — đây đúng là công thức người Nhật dùng, mạnh hơn `「飲めません」` vì quy về thể chất nên không ai ép tiếp được.

🔵 **Góp ý nhỏ (không bắt buộc):** khối `NG` d171 có "Pha 焼酎 '後酒先湯'... khách sẽ nhăn mặt" — đặt ngang hàng một lỗi kỹ thuật pha rượu với cảnh báo sức khoẻ. Nếu muốn nâng cấp, có thể tách cảnh báo ALDH2/アルハラ ra thành hộp riêng có nhãn ⚠️ ở đầu mục NG thay vì lồng dưới gạch đầu dòng thứ nhất, để học viên đọc lướt vẫn thấy.

### 1.2 rule_15 旅行温泉 — CƠ CHẾ ヒートショック: ✅ **ĐÃ FIX ĐÚNG CHIỀU**

**Kiểm chứng:** dòng 131, lời 大垣 (Scenario 4).

Nguyên văn JA (đã strip ruby):
> 「脱衣所でも浴室でもNG。廊下と外だけ。あと**飲酒後すぐの入浴は絶対やめてね。血圧が下がって湯船で意識を失う事故が毎年ある**から。水分補給忘れずに。」

Nguyên văn VN (d132):
> *Cả phòng thay đồ lẫn phòng tắm đều NG. Chỉ hành lang với ngoài thôi. Còn vừa uống rượu xong thì tuyệt đối đừng ngâm — **huyết áp tụt**, mỗi năm đều có người ngất trong bồn. Đừng quên uống nước.*

**Xác minh cơ chế bằng WebSearch:** ĐÚNG. Rượu gây giãn mạch → huyết áp **hạ**; ngâm nước nóng làm giãn mạch thêm → huyết áp hạ tiếp → ngất (失神) → chết đuối trong bồn. Nguồn y khoa Nhật (アリナミン製薬, けやき脳神経リハビリクリニック, いいちこスタイル) đều mô tả đúng chiều này.

**→ Sách 08 rule_15 nay nói ĐÚNG CHIỀU. Lỗi cũ ("huyết áp lên") đã biến mất hoàn toàn.**

**Quan trọng — FIX ĐÃ ĂN CẢ HAI VẾ JA + VN.** Đây là điểm rất đáng ghi nhận vì mục 5 của rule ghi kiểu hụt số 2 là "vá JA quên VN". Ở đây không hụt: JA viết `血圧が下がって`, VN viết "huyết áp tụt" — khớp nhau.

🔵 **Ghi nhận 1 — từ khoá ヒートショック biến mất khỏi sách.** Sau khi sửa, cả file rule_15 **không còn chữ `ヒートショック` nào**, kể cả bảng từ vựng (d177-198). Nếu chủ đích là gỡ luôn thuật ngữ để tránh dạy sai lần nữa thì hợp lý; nhưng học viên đi onsen thật sẽ gặp biển cảnh báo ghi「ヒートショックにご注意」ở nhà tắm ryokan. **Cân nhắc** thêm 1 dòng vocab: `ヒートショック | — | — | Sốc nhiệt: chênh lệch nhiệt độ phòng thay đồ ↔ bồn tắm làm huyết áp dao động mạnh`. Đây là **đề xuất bổ sung**, không phải lỗi.

🔵 **Ghi nhận 2 — khối "7 điều" ở d136 chỉ liệt kê 1/2 rủi ro.** Nguyên văn d136:
> ⑦ **không vào ngay sau rượu**.

Đây là rủi ro do **rượu**. Nhưng rủi ro lớn hơn của onsen mùa đông là **chênh lệch nhiệt độ phòng thay đồ lạnh ↔ nước 42°C** — đúng nghĩa ヒートショック, và Scenario 2 d71 lại đang **cổ vũ** đúng tình huống nguy hiểm nhất: 「外気温-5度で湯に浸かる」+「湯の中は42度」. Không có câu nào cảnh báo cho ca này.
**Đề xuất (cần chủ nhà duyệt vì là thêm nội dung):** thêm ⑧ vào danh sách d136 — "⑧ **mùa đông: dội nước ấm lên người ở 洗い場 trước, đừng nhảy thẳng từ phòng thay đồ lạnh vào bồn 42°C** — chênh nhiệt làm huyết áp dao động mạnh". Việc này cũng khớp luôn với 【1】かけ湯 đã dạy ở d119.

### 1.3 Rà lời khuyên sức khoẻ / an toàn KHÁC trong 12 rule

| Rule | Lời khuyên | Phán định |
|---|---|---|
| rule_15 d131 | "水分補給忘れずに" (nhớ uống nước) | ✅ ĐÚNG — mất nước là rủi ro thật khi ngâm onsen |
| rule_15 d123-124 | Tóc dài phải búi, không để chạm nước | ✅ Đúng etiquette, không phải y tế |
| rule_15 d127 | Xăm: "có miếng dán che" (**シール**) | 🔵 Đúng thực tế nhưng **rủi ro thực hành**: nhiều ryokan truyền thống KHÔNG chấp nhận dán che, coi là lách luật. Câu「事前にチェック必要」ở ngay trước đã trung hoà đủ. Không tính lỗi. |
| rule_17 d38-41 | 生姜湯 / 蜂蜜大根 trị họng | ✅ AN TOÀN — là mẹo dân gian, được giới thiệu như mẹo dân gian ("Việt Nam cũng nói tốt cho cổ họng"), KHÔNG khẳng định hiệu quả y khoa, KHÔNG thay thuốc |
| rule_17 d61-62 | メタボ / eo 85cm / huyết áp cao | ✅ Số liệu ĐÚNG — WebSearch xác nhận chuẩn Nhật: nam ≥85cm, nữ ≥90cm |
| rule_17 d71 | "お酒は控えめに" | ✅ Đúng, an toàn |
| rule_17 d128,166 | Không hỏi tuổi/cân nặng/hôn nhân; "痩せましたね cũng tệ" | ✅ Tinh tế và đúng |
| rule_14 d42 | Golf: "sau vòng đấu có tắm + tiệc" | ✅ Không có rủi ro |
| rule_20 d63-72 | Thiên tai: đồng cảm, không ép tiến độ | ✅ Ứng xử đúng |
| rule_12 d170 | 自酌 khi senior chưa rót xong | ✅ Etiquette, không phải sức khoẻ |

**→ Ngoài rule_12 và rule_15, KHÔNG có lời khuyên sức khoẻ/an toàn nguy hiểm nào khác trong 12 rule.**

---

## 2. 🔴 BẢNG KIỂM CHỨNG FIX ĐỢT TRƯỚC (rule book-review mục 5)

Lọc `REVIEW_FINDINGS_JP.md` + `REVIEW_FINDINGS_VN.md` + `STATUS.md` lấy **mọi mục thuộc rule_09→20**. Với mỗi mục: mở đúng file, tìm chuỗi "Sai" và chuỗi "Đúng" trên bản **đã strip ruby**.

| # | Nguồn | Mục | Rule | Chuỗi "Sai" còn không? | Chuỗi "Đúng" có chưa? | **PHÁN ĐỊNH** |
|---|---|---|---|---|---|---|
| 1 | rule mục 4A (đúc kết từ chính sách 08) | rule_12 "uống 1 ngụm cho phải phép" | 12 | ❌ đã gỡ sạch | ✅ d166-167 có cả ALDH2 + アルハラ + 2 câu từ chối | **ĐÃ FIX — trọn vẹn** |
| 2 | rule mục 4A | rule_15 ヒートショック nói ngược ("huyết áp lên") | 15 | ❌ không còn | ✅ d131 JA `血圧が下がって` + d132 VN "huyết áp tụt" | **ĐÃ FIX — ăn CẢ JA lẫn VN** |
| 3 | JP P1 | rule_03 加藤様 → 加藤さん | — | ngoài phạm vi | — | *(rule_03 thuộc S1)* — nhưng **kiểm liên đới:** trong 12 file của tôi **0 lần** dùng `様` để xưng hô nói miệng. Cách gọi đều là `さん` / `部長` / `先生` / `CFO`. **NHẤT QUÁN — không sót** |
| 4 | JP P0 (rule_30 麦焼酎 日本一) | Liên đới: rule_12 có nhắc 麦焼酎 Fukuoka | 12 | — | ✅ d63 viết `福岡は麦が強くてね` + xếp `いいちこ`/`二階堂` cạnh nhau; 【3】d76 ghi rõ **「いいちこ = nhãn 麦焼酎 vùng 大分」** | **KHÔNG DÍNH LỖI CŨ** — rule_12 không hề khẳng định "Fukuoka #1 麦焼酎"; còn chủ động đính chính いいちこ là Ōita. Chỗ này **CẤM SỬA** |
| 5 | VN P0-1 | Xưng hô khách Nhật tự xưng "anh/em" | 09-20 | — | — | **SẠCH trong .md.** Xem mục 3.5 — quét thủ công 12 file, 0 ca sai. Lưu ý: script đợt trước chỉ chạy `conversation.json`; ở `.md` bản dịch vốn đã đúng |
| 6 | VN P0-1 phụ chú | "Script thiếu pattern **chị**" (nhân vật nữ sót) | 14,17,19 | — | — | **KHÔNG ẢNH HƯỞNG .md.** Yamamoto (nữ) trong 3 rule của tôi: d72 rule_14 "chị giữ vé cho" = **ngôi 1 hợp lệ**… xem mục 3.5.2 để rõ 1 ca cần bàn |
| 7 | VN P0-5 | rule_37 Hà Nội "10度切ること多い" phóng đại | — | ngoài phạm vi | — | **Kiểm liên đới rule_09:** d109-110 viết `ハノイは10度切ると『極寒』なので` — đây là **cảm nhận chủ quan của người nói**, KHÔNG phải khẳng định khí hậu. WebSearch: HN tháng 1 TB 16°C, cực lạnh ~5°C → câu này **hợp lệ**. **CẤM SỬA** |
| 8 | STATUS v1.1 | "Re-ran build_appendices + build_book" | — | — | — | Ngoài phạm vi (phụ lục). Không kiểm |

### 2.1 Bốn kiểu hụt của rule mục 5 — soi từng kiểu trên phạm vi của tôi

| Kiểu hụt | Có xảy ra ở phần II không? | Bằng chứng |
|---|---|---|
| (1) Chỉ vá JSON, không đụng `.md` | ❌ **KHÔNG** | rule_12 và rule_15 đều đã vá **trực tiếp trong `.md`** — tôi đọc nguyên văn ở trên |
| (2) Vá JA quên VN | ❌ **KHÔNG** | rule_15 d131 (JA) ↔ d132 (VN) khớp nhau. rule_12 d166-167 là văn Việt thuần, không có vế JA để lệch |
| (3) Vá thoại quên bảng từ vựng | 🔵 **CÓ 1 ca nhẹ, không phải lỗi** | rule_15: thoại d131 nay dạy cơ chế tụt huyết áp, nhưng **bảng từ vựng d177-198 không có mục nào** liên quan (không có `ヒートショック`, không có `血圧`). Không sai — chỉ là **thiếu cơ hội củng cố**. Xem 1.2 ghi nhận 1 |
| (4) Script thiếu pattern | ❌ không áp dụng | Fix rule_12/15 là sửa tay, không phải script |

---

## 3. PHÁT HIỆN CHI TIẾT

### 🔴 3.1 — rule_15 dòng 92: giá 入湯手形 黒川温泉 SAI (1300円 → thực tế 1500円)

**File:** `nội_dung/phần_II/rule_15_旅行温泉/rule.md:92`

Nguyên văn JA (đã strip ruby):
> **佐藤**「お、知っとるか!**1300円**で3軒、6か月有効。村全体が一つの旅館って思想で、街並みも統一感ある。」

Nguyên văn VN (d93):
> *Ồ, biết luôn! **1300 yên** 3 quán, 6 tháng hiệu lực. Triết lý 'cả làng là 1 ryokan', cảnh quan thống nhất.*

**Vấn đề (trục D — sai sự thật).** WebSearch trang chính thức 黒川温泉観光旅館協同組合: 入湯手形 hiện là **1,500円** (người lớn) / 700円 (trẻ em). Hệ thống đã đổi (37 năm mới cải tổ): mặt sau có 3 tem — **2 tem đỏ dùng tắm + 1 tem xanh dùng cho ăn uống/quà lưu niệm**. Hạn 6 tháng thì ĐÚNG.

Hai chỗ lệch: (a) giá 1300 → 1500; (b) "3軒 = 3 quán tắm" không còn chính xác — nay là 2 lượt tắm + 1 lượt tiêu dùng.

**Mức nguy hiểm:** học viên nói đúng câu này trước khách Kumamoto/Kyushu sẽ **bị đính chính ngay** — mà cả rule_15 đang xây trên tiền đề "biết chi tiết = đẳng cấp". Nói sai chi tiết thì phản tác dụng đúng bằng mức đó.

**Đề xuất (sửa CẢ 2 vế, và nhớ ruby chen số — xem 5.1):**
- JA d92: `1300円で3軒` → `1500円で、お風呂2軒＋食べ歩きにも使えるとよ` (hoặc an toàn hơn, bỏ số: `手形一枚で3か所巡れるとよ、6か月有効`)
- VN d93: "1300 yên 3 quán" → "1500 yên, 2 lượt tắm + 1 lượt ăn/mua quà, 6 tháng hiệu lực"
- ⚠️ Nếu chọn phương án bỏ số → **evergreen**, không bị lỗi thời lần nữa (cùng logic đã áp dụng cho rule_28 「創業60年」→「創業半世紀以上」 ở đợt trước).

⚠️ **Kiểm chéo trước khi sửa:** `入湯手形` cũng nằm ở **bảng từ vựng d195** và **đoạn VN chốt d107**. Cả hai chỗ đó **không chứa số tiền** → không cần sửa. Đây chính là kiểu hụt (3) của rule mục 5, tôi đã kiểm nên báo luôn.

---

### 🔴 3.2 — rule_20 dòng 99 + 105: 「スーパーフライト」 là tên đòn KHÔNG TỒN TẠI

**File:** `nội_dung/phần_II/rule_20_ニュース/rule.md:99` và chú thích 【9】 d105

Nguyên văn JA (d98, đã strip ruby):
> **ズン**「平野!**北京で金**取った時、感動でした。**スーパーフライト**かっこよかった。」

Nguyên văn VN (d99):
> *Hirano! Lúc đoạt vàng Beijing em cảm động lắm. **Trick Super Flight** đỉnh quá.*

Chú thích d105:
> 【9】 **スーパーフライト** = trick gold-winning Beijing 2022.

**Vấn đề (trục D — sai sự thật, và là kiểu sai NGUY HIỂM NHẤT vì nó là từ BỊA).**

WebSearch xác minh: đòn đưa 平野歩夢 tới HCV Bắc Kinh 2022 (96.00 điểm) là **トリプルコーク1440** (triple cork 1440 — 3 vòng trục nghiêng, 4 vòng ngang). Anh là người **duy nhất thế giới** làm được, và ở chung kết đã thực hiện **thành công 3/3 lượt**. Tra riêng từ khoá 「スーパーフライト」 trong danh mục kỹ thuật snowboard: **không tồn tại**. Đây không phải tên đòn lệch — nó là tên **không có trong môn này**.

**Mức nguy hiểm:** đây là ca **tệ hơn cả sai số liệu**. Học viên đem câu này ra nói với khách Nhật (mà rule_20 đang dạy "tên vận động viên Nhật cần thuộc") sẽ nghe như người **chưa từng xem trận đấu mà cố giả vờ đã xem** — phá đúng thứ mà cả rule_20 muốn xây. Nhắc lại: 平野 là niềm tự hào thể thao Nhật, còn Scenario này đặt trong bối cảnh "thể thao = chủ đề AN TOÀN". Nói sai ở chủ đề an toàn thì mất trắng lợi thế.

**Đề xuất:**
- JA d98: `スーパーフライト` → `トリプルコーク1440` (giữ nguyên phần còn lại)
- VN d99: "Trick Super Flight" → "Cú triple cork 1440"
- Chú thích d105 【9】: `**スーパーフライト** = trick gold-winning Beijing 2022` → `**トリプルコーク1440** = đòn khó nhất thế giới (3 vòng trục nghiêng × 4 vòng ngang); 平野 thực hiện thành công cả 3 lượt ở chung kết Bắc Kinh 2022, chỉ mình anh làm được`
- 🔵 **Nâng cấp thêm (tuỳ chọn):** đổi luôn thành `トリプルコーク1440、3本とも決めたのがすごかった` — vì chi tiết "3/3 lượt" mới đúng là thứ fan thật sự nhớ, khớp triết lý "chi tiết cụ thể = đẳng cấp" của cả sách.

⚠️ **Kiểm chéo:** `スーパーフライト` **không xuất hiện** ở bảng từ vựng d177-199 → chỉ 3 chỗ trên. Đã kiểm.

---

### 🟡 3.3 — rule_16 dòng 105: chú thích 【7】 nói "3000m", thoại nói "2000m超" — TỰ MÂU THUẪN

**File:** `nội_dung/phần_II/rule_16_季節行事/rule.md:96` (thoại) vs `:105` (chú thích)

Thoại d96 (加藤, đã strip ruby):
> 「…岐阜なら**新穂高ロープウェイ**【6】、**標高2000メートル超**【7】から**紅葉の絨毯**を見下ろせる。」

Thoại d98 (ズン):
> 「**2000m超**!**寒さ対策**【8】必須ですね。」

Chú thích d105:
> 【6】 **新穂高ロープウェイ** = cáp treo Hida. 【7】 = **độ cao 3000m**. 【8】 = chuẩn bị chống lạnh.

**Vấn đề (trục B — tự mâu thuẫn, + trục D).** Cùng một trang, thoại nói 2000m超 (2 lần), chú thích nói 3000m. WebSearch: ga cuối 西穂高口駅 của 新穂高ロープウェイ ở **2,156.1m** (xuất phát 新穂高温泉駅 1,090m, chênh 1,060m).

→ **Thoại ĐÚNG (2000m超), chú thích SAI (3000m).**

Đây đúng dạng lỗi mà rule mục 4B mô tả ("sách tự mâu thuẫn — phá lòng tin nhanh nhất"), và ở mức dễ bị bắt: học viên đọc chú thích ngay dưới bảng thoại, thấy vênh lập tức.

**Đề xuất:** chú thích d105 【7】: `độ cao 3000m` → `ga cuối 西穂高口 ở độ cao 2,156m (xuất phát 1,090m — chênh hơn 1.000m)`.
⚠️ **CẤM SỬA thoại d96 và d98** — hai chỗ đó đang đúng. Đây chính là ca mà rule mục 0 nguyên tắc 5 dặn phải liệt kê.

---

### 🟡 3.4 — rule_16 dòng 76: 隅田川花火大会 「lễ hội 240 năm」 — số sai

**File:** `nội_dung/phần_II/rule_16_季節行事/rule.md:76`

Nguyên văn chú thích:
> 【1】 **隅田川花火大会** = 7月 cuối tuần thứ 4-5, **lễ hội 240 năm**.

**Vấn đề (trục D).** WebSearch: nguồn gốc là 水神祭 do 徳川吉宗 tổ chức năm **享保18年 (1733)** ở chân cầu 両国橋. Tính đến 2026 là **~293 năm**, không phải 240. (Tên gọi hiện tại「隅田川花火大会」thì mới từ 1978, năm 2026 là lần thứ 49 — nhưng "lễ hội 240 năm" không khớp mốc nào cả.)

**Đề xuất:** `lễ hội 240 năm` → `khởi nguồn từ 1733 (水神祭 thời 徳川吉宗), gần 300 năm lịch sử` — hoặc evergreen hơn: `lễ hội có gốc từ thời Edo`.

✅ **Phần còn lại của chú thích ĐÚNG:** "7月 cuối tuần" khớp — lễ tổ chức **thứ Bảy cuối cùng của tháng 7** (2026 = 25/7). Thoại d61 để Dũng nói 「**7月最後の土曜**ですよね?」 → **CHÍNH XÁC, CẤM SỬA**.

---

### 🟡 3.5 — rule_16 dòng 71: フェニックス "2004年の中越地震の追悼として始まった" — lệch năm + lệch tính chất

**File:** `nội_dung/phần_II/rule_16_季節行事/rule.md:71` (thoại 中村) và d76 chú thích 【6】

Nguyên văn JA d71 (đã strip ruby):
> 「ズンさん、相当勉強してるね…**2004年の中越地震の追悼として始まった**。今度ぜひ実物見て。」

Nguyên văn VN d72:
> *Em học kỹ thật... **ra đời năm 2004 sau động đất Chūetsu để tưởng niệm**. Lần sau xem thực tế nhé.*

Chú thích d76 【6】:
> **長岡花火** = lễ **Phượng hoàng tưởng niệm động đất**.

**Vấn đề (trục D — 2 điểm lệch).**

1. **Năm:** động đất 中越地震 xảy ra 2004, nhưng フェニックス bắt đầu bắn từ **2005** (năm sau). Câu「2004年の…始まった」dễ đọc thành "bắt đầu năm 2004".
2. **Tính chất — điểm này quan trọng hơn:** tên chính thức là **「復興祈願花火フェニックス」** — *cầu nguyện phục hưng*, không phải **追悼** (*truy điệu / tưởng niệm người mất*). Hai khái niệm này ở Nhật **phân biệt rõ**: 追悼 hướng về người đã khuất, 復興祈願 hướng về việc đứng dậy. Chính vì thế phần nhạc nền là bài 『Jupiter』 của 平原綾香 — tông vươn lên chứ không phải tông tang lễ.

Thêm nữa, 長岡まつり (lễ hội mẹ) mới là phần mang tính 慰霊 — cho nạn nhân **không kích 1/8/1945**. Gộp hai lớp ý nghĩa này lại thành "tưởng niệm động đất" là **làm mờ một tầng lịch sử** mà người Nagaoka rất coi trọng.

**Mức nguy hiểm:** trung bình-cao về mặt xã giao. Đây là chủ đề **thiên tai + chiến tranh** — đúng vùng mà cả sách 08 (rule_20 d167) dặn "quá nhạy cảm, phải cẩn thận". Nói lệch tính chất một lễ tưởng niệm trước người bản địa là rủi ro thật.

**Đề xuất (sửa cả JA + VN + chú thích):**
- JA d71: `2004年の中越地震の追悼として始まった` → `2004年の中越地震のあと、**復興祈願**として翌2005年から始まったんだ`
- VN d72: "ra đời năm 2004 sau động đất Chūetsu để tưởng niệm" → "sau động đất Chūetsu 2004, từ năm 2005 bắt đầu bắn để **cầu nguyện phục hưng**"
- Chú thích d76 【6】: `lễ Phượng hoàng tưởng niệm động đất` → `pháo hoa **cầu phục hưng** sau động đất Chūetsu (từ 2005, nhạc nền 『Jupiter』)`

✅ **ĐÚNG, CẤM SỬA:** d67 三大花火 = 長岡(新潟)・大曲(秋田)・土浦(茨城) — WebSearch xác nhận chuẩn. d69-70 "Phoenix rộng 2km, biểu tượng tái thiết (復興の象徴)" — **đúng cả hai ý**, và chỗ này Dũng dùng đúng chữ 復興. Trớ trêu là **Dũng nói đúng ở d69, Nakamura nói sai ở d71** — càng nên sửa để hai lượt thoại không đá nhau.

---

### 🟡 3.6 — rule_10 dòng 159: 「お当地」 sai — phải là 「ご当地」

**File:** `nội_dung/phần_II/rule_10_出身地/rule.md:159` (bảng từ vựng)

Nguyên văn:
> | ご当地 | ごとうち | ĐƯƠNG ĐỊA | "Của vùng đó" (**お当地グルメ / お当地アイドル**) |

**Vấn đề (trục C — tiếng Nhật sai, + trục F — tự mâu thuẫn trong CÙNG MỘT DÒNG).** Cột đầu ghi đúng `ご当地`, cột nghĩa lại viết ví dụ bằng `お当地` — **sai 2 lần trong cùng ô**.

`当地` là từ Hán ngữ (音読み) nên tiền tố kính ngữ bắt buộc là **ご**. `お当地` **không tồn tại**. Dạng đúng: **ご当地グルメ**, **ご当地アイドル**, **ご当地キャラ**.

**Đối chiếu nội bộ:** `rule_11_食/rule.md:177` bảng từ vựng viết **đúng** → `| ご当地グルメ | ごとうちぐるめ |`, và d196 (BJT) cũng viết đúng `ご当地グルメ`. → Chỉ **rule_10 d159 lệch**, 3 chỗ khác trong phần II đều đúng. Đây là **lỗi gõ đơn lẻ**, không phải hiểu sai hệ thống.

**Đề xuất:** d159 sửa `(お当地グルメ / お当地アイドル)` → `(ご当地グルメ / ご当地アイドル)`.

**Ghi chú cho main Claude:** đây là **ca duy nhất thuộc trục C** tôi tìm được trong 12 file. Thước đo của bạn quét 16 pattern 二重敬語/過剰敬語 ra 0 — kết quả đó ĐÚNG, vì lỗi này thuộc nhóm khác (お/ご chọn sai theo 音読み/訓読み), không nằm trong 16 pattern.

---

### 🟡 3.7 — rule_19 dòng 90: phim Conan 「今年は100万ドルの五稜星」 lệch năm bối cảnh

**File:** `nội_dung/phần_II/rule_19_アニメ/rule.md:90` và chú thích 【2】 d105

Nguyên văn JA (đã strip ruby):
> **山本**「コナン!?毎年4月の劇場版、家族で見に行くで(笑)。**今年は100万ドルの五稜星**、北海道編。」

Chú thích d105:
> 【2】 = phim chiếu rạp **2024**.

**Vấn đề (trục F — nhất quán bối cảnh).** Bối cảnh truyện của sách 08 là **2026** (rule_16 d18 ghi thẳng "Năm 2026 Dũng có nhiều buổi gặp"; rule_20 d18 "Năm 2026 có WBC tháng 3"; rule_20 d88 nói Olympics ミラノ・コルティナ = tháng 2/2026). Nhưng ở đây Yamamoto nói 「**今年は**」 về bộ phim ra rạp **12/4/2024** — chính chú thích của sách tự khai là 2024.

→ Nhân vật gọi phim của 2 năm trước là "năm nay".

WebSearch xác nhận: 『名探偵コナン 100万ドルの五稜星(みちしるべ)』 công chiếu **12/4/2024**, tác phẩm thứ 27, bối cảnh **函館/北海道**, có 怪盗キッド + 服部平次. → Nội dung mô tả **ĐÚNG**, chỉ có chữ 「今年」 sai.

**Đề xuất (chọn 1):**
- (a) Ít xâm lấn nhất — bỏ "今年": `一昨年の100万ドルの五稜星、北海道編よかったわ` + chú thích giữ "2024"
- (b) Evergreen: đổi thành `毎年見に行くで。北海道が舞台の回もあってな` (bỏ hẳn tên phim cụ thể)
- ⚠️ **KHÔNG đề xuất** thay bằng tên phim 2026 — vì tôi không xác minh được phim Conan 2026 (ngoài tầm dữ liệu tin cậy), mà đoán bừa tên phim thì tạo lỗi mới nặng hơn.

✅ **CẤM SỬA (đúng, dễ bị sửa nhầm):**
- d92 「1996年から続いてます」 — Conan bản anime khởi chiếu 1996: **ĐÚNG**.
- d92 「ギネス級の長寿」 — dùng chữ **"cấp Guinness"** chứ không khẳng định "giữ kỷ lục Guinness". Kỷ lục thật thuộc về **サザエさん** (1969, được Guinness công nhận 2013) — mà sách **cũng nhắc サザエさん đúng ở d98 + chú thích 【10】 d105 ghi "longest running anime"**. → Sách phân biệt đúng cả hai. **Đừng sửa d92 thành "không phải Guinness"** — cách viết hiện tại đã hedge chuẩn.

---

### 🔵 3.8 — rule_18 Scenario 3: tuổi Tanaka vs 「初代赤緑」 — hơi vênh

**File:** `nội_dung/phần_II/rule_18_世代/rule.md:92`

Nguyên văn (đã strip ruby):
> **田中**「俺、初代から(笑)。**赤緑**、**ゲームボーイ**の世代。今の子はSwitchしか知らないけど。」

**Vấn đề (trục F — nhất quán nhân vật, mức nhẹ).** Sách khai Tanaka **35 tuổi** (d18 "Tanaka 35t (平成 game/anime)"; rule_14 d120 "Tanaka 35t"). Bối cảnh 2026 → sinh ~1991. Pokémon 赤・緑 phát hành **27/2/1996** (WebSearch xác nhận) → khi đó Tanaka **5 tuổi**.

Chơi Pokémon lúc 5 tuổi là **có thể** (không sai tuyệt đối), nhưng câu 「俺、初代から」 mang giọng "tôi là lứa đầu tiên" — thường là người sinh 1985-1990 (7-11 tuổi năm 1996, đúng lứa mục tiêu). Sau đó Tanaka còn nói với Dũng (d96) 「**金銀**!?ズンさん、**平成世代**だよね、世代分かるわ」 — hàm ý Tanaka **hơn tuổi** rõ rệt so với người chơi 金銀 (1999).

→ Không phải "sai sự thật" mà là **calibration nhân vật hơi lệch**. Nếu Tanaka được đặt 38-40t thì mọi câu đều mượt.

**Đề xuất (mức 🔵 — chỉ nếu chủ nhà muốn siết):** hoặc (a) đổi d92 thành 「俺、金銀のちょっと前から」, hoặc (b) mềm hoá 「兄貴の影響で初代からやっとった」 — giữ nguyên tuổi 35 mà vẫn hợp lý. **Không sửa cũng không sao.**

✅ **CẤM SỬA:** d94 「151匹」 (đúng — thế hệ 1 có 151 Pokémon), d105 chú thích 【3】「赤緑 = 1996」 + 【6】「金銀 = 1999」 — **cả hai năm ĐÚNG**, WebSearch xác nhận.

---

### 🔵 3.9 — rule_12: 3 từ đã dạy trong thoại nhưng THIẾU ở bảng từ vựng

**File:** `nội_dung/phần_II/rule_12_酒/rule.md` — bảng từ vựng d177-197

Thoại dạy nhưng bảng không có:

| Từ | Dạy ở dòng | Tầm quan trọng |
|---|---|---|
| `淡麗辛口` | d34 + chú thích 【2】 d47 | ✅ **CÓ ở d185** — kiểm lại: OK |
| `シークヮーサー` | d125-128 (2 lượt thoại) + khối VN d136 nêu là từ khoá bắt buộc | ❌ **THIẾU** |
| `カラカラ` (酒器 Okinawa) | d125 + khối VN d136 nêu là từ khoá bắt buộc | ❌ **THIẾU** |
| `3M` (魔王/森伊蔵/村尾) | d63-65 + chú thích 【4】 d76 + khối VN d78 "biết '3M' = đẳng cấp Hakata" | ❌ **THIẾU** |

**Vấn đề (trục F — dạng hụt số (3) của rule mục 5: "vá thoại quên bảng từ vựng").** Không phải lỗi sai, nhưng khối VN d136 **tự nhận** 「泡盛 / 黒麹 / クース / カラカラ / シークヮーサー」 là bộ từ khoá phải biết — mà bảng từ vựng chỉ có 3/5 (泡盛 d181, 黒麹 d194, 古酒(クース) d193), thiếu đúng 2 từ katakana. Tương tự d78 đề cao "3M" nhưng bảng không có.

**Đề xuất (mức 🔵 — bổ sung, cần chủ nhà duyệt vì là thêm nội dung):** thêm 3 dòng vào bảng d177-197:
```
| シークヮーサー | シークヮーサー | — | Quả họ cam Okinawa, vắt vào awamori |
| カラカラ | カラカラ | — | Bình rót awamori truyền thống Okinawa |
| 3M (魔王・森伊蔵・村尾) | さんエム | — | 3 nhãn imo-shochu thượng hạng Kagoshima |
```

---

### 🔵 3.10 — rule_13 Scenario 3 vs khối NG: mâu thuẫn NHẸ (đã tự trung hoà)

**File:** `nội_dung/phần_II/rule_13_家族/rule.md:92` vs `:156`

d92 Dũng hỏi: 「お子様、**何歳**ですか?」 → khách trả lời **ngắn** 「上が高校、下が中学です。」
d156 khối NG: "Đào sâu khi khách trả lời ngắn → ép = mất mối quan hệ."

**Phán định: KHÔNG PHẢI LỖI.** Đọc kỹ thì Scenario 3 đang **dạy đúng nghiệp vụ**: Dũng hỏi 1 câu → nhận tín hiệu trả lời ngắn → **đổi ngay sang chủ đề Carp** (d96) → khách mở lòng lại (d98 「マツダスタジアムは家族の思い出いっぱい」). Khối VN d101 nói rõ luôn cơ chế này.

→ Đây là **thiết kế có chủ ý**, không phải mâu thuẫn. **Ghi vào CẤM SỬA** để đợt sau đừng ai "sửa" cho Dũng thôi hỏi tuổi con.

🔵 Góp ý duy nhất: 「お子様、何歳ですか?」 hơi trực diện; native thường mềm hơn 「お子さん、もう大きいんですか?」. Mức polish, không bắt buộc.

---

### 3.11 — Trục E (tiếng Việt) + xưng hô: kiểm chi tiết

Theo rule mục 4E: **chỉ báo khi bản Nhật cho thấy người nói TỰ nói về mình**. Tôi quét 12 file, đối chiếu từng cặp JA↔VN.

**Kết quả: 0 ca sai.** Chi tiết các ca **trông giống lỗi nhưng HỢP LỆ** (ghi ra để đợt sau không báo động sai):

| Rule/dòng | JA | VN | Vì sao HỢP LỆ |
|---|---|---|---|
| rule_14 d72 | 山本「次回出張のとき、**チケット取っとくわ**」 | "**chị** giữ vé cho" | Yamamoto là **nữ**, ngôi 1 với đàn em → "chị" ĐÚNG. Đây chính là ca mà script cũ thiếu pattern "chị" — nhưng ở `.md` **dịch đúng sẵn** |
| rule_12 d67 | 佐藤「今日は**俺の**地元のおすすめ」 | "**anh** chọn của vùng anh" | JA có 俺 = ngôi 1 rõ ràng; Sato 60t nói với đàn em → "anh" ĐÚNG |
| rule_18 d34 | 佐藤「**俺らの**世代の女神よ」 | "nữ thần thế hệ **anh**" | 俺ら ngôi 1 số nhiều → ĐÚNG |
| rule_16 d123 | 大垣「京都は丸餅白味噌」 | "Kyoto là mochi tròn miso trắng" | Không có self-ref → không đụng |
| rule_17 d40 | 佐藤「うちの**かみさん**もよく作ってくれる」 | "**vợ anh** cũng hay nấu" | かみさん = "vợ tôi" (cách nói dân dã của nam giới) → "vợ anh" (anh = ngôi 1) ĐÚNG |
| rule_13 d90 | 広島「妻と子ども2人。今は単身赴任なんで」 | "vợ với 2 con. **Anh** giờ công tác xa nhà" | Ngôi 1 → ĐÚNG |

**Ký tự lạ (giản thể / Hangul):** quét 12 file → **0**. Nhắc lại báo động sai #1 của main Claude: `那` (那覇, rule_12 d127) là **kanji Nhật hợp lệ**, không phải giản thể — tôi xác nhận lại kết luận đó.

**Emoji bị strip:** theo báo động sai #2, sách 08 **không dùng** cấu trúc `📝 **Ghi chú:**`. Tôi xác nhận: 12 file phần II dùng `> **VN:**` và `**Sao xấu:**` / `**Đúng:**` — **dòng in đậm bình thường**, không phải dấu vết emoji bị strip. **Không có lỗi.**

**Tiếng Anh thừa:** các từ Anh xuất hiện đều **có lý do**: tên riêng (Apple Watch, Instagram, TikTok, Netflix, Strava, Splatoon, HMB, DAZN, MLB, WBC, NBA, X), thuật ngữ đã thành từ mượn trong tiếng Nhật, hoặc tên tác phẩm (The First Slam Dunk). **Không tính lỗi.**

**Ruby vỡ:** script đếm `<ruby>` vs `</ruby>` + `</ruBy` + `ruby**` → **0/12 file**.

**Khối "Hội thoại XẤU"/NG cố tình sai:** rule_13 Scenario 4 (Dũng hỏi tuổi vợ), rule_17 Scenario 4 (Linh hỏi tuổi/hôn nhân), rule_19 Scenario 4 (Linh đẩy 呪術), rule_20 Scenario 4 (Linh hỏi chính trị) — **4 khối này CỐ Ý chứa lỗi, đã có nhãn [NG] và giải thích ngay dưới. KHÔNG báo là lỗi của sách.**

---

## 4. BẢNG DỮ KIỆN WEBSEARCH

| # | Rule/dòng | Khẳng định trong sách | Kết quả kiểm chứng | Phán định |
|---|---|---|---|---|
| 1 | r15 d131-132 | Uống rượu xong ngâm onsen → **huyết áp tụt** → ngất | Rượu giãn mạch → HA hạ; nước nóng giãn mạch thêm → HA hạ tiếp → 失神 → đuối nước. Nguồn: アリナミン製薬, けやき脳神経リハビリクリニック, いいちこスタイル | ✅ **ĐÚNG** (lỗi cũ đã sửa đúng chiều) |
| 2 | r15 d92-93 | 入湯手形 黒川温泉 = **1300円**, 3軒, 6 tháng | Chính thức: **1,500円** (trẻ em 700円); 2 tem tắm + 1 tem ăn/quà; hạn 6 tháng ✅ | 🔴 **SAI giá** (hạn 6 tháng đúng) |
| 3 | r20 d98,105 | Đòn HCV Bắc Kinh 2022 của 平野歩夢 = **スーパーフライト** | Thực tế **トリプルコーク1440**, thành công 3/3 lượt, 96.00đ. 「スーパーフライト」 không có trong danh mục kỹ thuật snowboard | 🔴 **SAI — tên đòn không tồn tại** |
| 4 | r16 d96,105 | 新穂高ロープウェイ: thoại "2000m超" / chú thích "3000m" | Ga cuối 西穂高口 = **2,156.1m** (từ 1,090m, chênh 1,060m) | 🟡 Thoại ĐÚNG, **chú thích SAI** |
| 5 | r16 d76 | 隅田川花火大会 "lễ hội **240 năm**" | Gốc **1733** (享保18年, 水神祭 thời 徳川吉宗) → ~293 năm. Tên hiện tại từ 1978, 2026 là lần thứ 49 | 🟡 **SAI số** |
| 6 | r16 d61,76 | 隅田川 = **thứ Bảy cuối tháng 7** | Đúng — 2026 là 25/7 (thứ Bảy) | ✅ **ĐÚNG — CẤM SỬA** |
| 7 | r16 d71,76 | フェニックス "**2004年**の中越地震の**追悼**として始まった" | Động đất 2004, pháo hoa bắt đầu **2005**; tên chính thức **復興祈願花火** (không phải 追悼); nhạc nền 『Jupiter』平原綾香 | 🟡 **SAI năm + SAI tính chất** |
| 8 | r16 d67 | 三大花火 = 長岡(新潟)・大曲(秋田)・土浦(茨城) | Chuẩn xác | ✅ **ĐÚNG — CẤM SỬA** |
| 9 | r16 d69 | フェニックス rộng 2km, 復興の象徴 | Đúng — chương trình ~5 phút, biểu tượng phục hưng | ✅ **ĐÚNG — CẤM SỬA** |
| 10 | r16 d36-37 | 花見団子 3 màu: hồng=xuân, trắng=đông, xanh=hè | Là **một trong các thuyết phổ biến** (thuyết này giải thích thiếu "thu" = 飽きない/商い). Thuyết khác: hồng=hoa đào, trắng=tuyết, xanh=chồi non | ✅ **CHẤP NHẬN ĐƯỢC** — thuyết có nguồn |
| 11 | r16 d127-130 | おせち: 一=祝い肴, 二=焼き物, 三=煮物, 与=酢の物; 与 thay 四 | Cách chia **thay đổi theo nguồn** (có bản 二=口取り). Nhưng bản của sách là **biến thể phổ biến**; lý do dùng 与 thay 四 (四→死) ĐÚNG | ✅ **CHẤP NHẬN ĐƯỢC** |
| 12 | r12 d38 | 精米歩合 ≤50% = 大吟醸, có loại ≤35% | Chuẩn phân loại sake Nhật | ✅ **ĐÚNG** |
| 13 | r12 d40-42 | 広島 dùng **軟水**, tạo vị mềm; 賀茂鶴 | Đúng — nước Hiroshima độ cứng 3-6 (軟水); 三浦仙三郎 phát minh 軟水醸造法; 賀茂鶴酒造 (西条) tiên phong | ✅ **ĐÚNG — CẤM SỬA** |
| 14 | r12 d67,76 | 百年の孤独 = 麦焼酎 Miyazaki, ủ thùng gỗ | Đúng — 黒木本店 (Miyazaki), ủ sồi 3-5 năm, 40 độ | ✅ **ĐÚNG** |
| 15 | r12 d63,76 | いいちこ = 麦焼酎 **大分**; 3M = 魔王/森伊蔵/村尾 Kagoshima | Đúng cả hai | ✅ **ĐÚNG — CẤM SỬA** (xem mục 2 hàng #4) |
| 16 | r12 d71-72 | お湯割り: **お湯 trước, 焼酎 sau** | Đúng — đối lưu tự nhiên, tránh bay hơi cồn đột ngột. Ngược lại 水割り thì 焼酎 trước | ✅ **ĐÚNG — CẤM SỬA** |
| 17 | r12 d121-122 | 泡盛: gạo Thái + 黒麹, **25-43 độ**, chưng cất (vs sake ủ men) | Đúng — phổ biến 30 độ, 古酒 ~43 độ, "mild" ≤25 độ; luật thuế trần 45 độ | ✅ **ĐÚNG** |
| 18 | r12 d123,134 | 古酒(クース) = ủ **≥3 năm** | Đúng | ✅ **ĐÚNG** |
| 19 | r17 d61-62,74 | メタボ: eo nam **85cm** | Đúng — chuẩn Nhật nam ≥85cm, nữ ≥90cm (tương đương mỡ tạng 100cm²) | ✅ **ĐÚNG — CẤM SỬA** |
| 20 | r14 d105,114 | 大の里 vừa **横綱昇進**; 全勝優勝 mới 1 lần; 九州場所 tháng 11 tại 福岡国際センター | Lên 横綱 (đời 75) sau 場所 tháng 5/2025 — khớp bối cảnh 2026 "vừa lên". 6 場所/năm và địa điểm: đúng | ✅ **ĐÚNG** |
| 21 | r20 d32-33 | 佐々木朗希 "100マイル超え" | 165 km/h ≈ **102.5 mph** → vượt 100 mph ✅ | ✅ **ĐÚNG** |
| 22 | r20 d88-92 | ミラノ・コルティナ五輪 2026; 高木美帆, 鍵山優真, 坂本花織 | Olympics mùa đông Milano-Cortina đúng tháng 2/2026; các VĐV đều là gương mặt chủ lực Nhật | ✅ **ĐÚNG** |
| 23 | r19 d90,105 | Conan 『100万ドルの五稜星』 bối cảnh 北海道, phim 2024 | Đúng — công chiếu 12/4/2024, tác phẩm 27, bối cảnh 函館, có 怪盗キッド + 服部平次 | ✅ Nội dung ĐÚNG, nhưng chữ 「今年」 lệch (mục 3.7) |
| 24 | r19 d92 | Conan anime từ **1996**, "ギネス級" | 1996 đúng. Kỷ lục Guinness thật thuộc **サザエさん** (1969, công nhận 2013) — sách nhắc đúng ở d98/105 | ✅ **ĐÚNG (đã hedge) — CẤM SỬA** |
| 25 | r18 d92-94,105 | ポケモン 赤緑 = **1996**, 金銀 = **1999**, 151 con | Đúng cả ba — 赤・緑 phát hành 27/2/1996 (Game Boy) | ✅ **ĐÚNG — CẤM SỬA** |
| 26 | r09 d109-110 | "ハノイは10度切ると『極寒』" | HN tháng 1 TB ~16°C (max 20 / min 12), đợt lạnh xuống ~5°C. Câu này là **cảm nhận chủ quan nhân vật**, không phải khẳng định khí hậu | ✅ **HỢP LỆ — CẤM SỬA** |
| 27 | r09 d89,114 | Kyushu 梅雨入り 5月末 / Tokyo 6月上旬 / **Hokkaido không có 梅雨**; 真冬日 = max <0°C, 冬日 = min <0°C | Đúng toàn bộ — định nghĩa 真冬日/冬日 là chuẩn 気象庁 | ✅ **ĐÚNG — CẤM SỬA** |
| 28 | r16 d100-101 | 飛騨高山祭 tháng 4 và 10, 山車 = **UNESCO 無形文化遺産** | Đúng — 高山祭の屋台行事 nằm trong danh mục 「山・鉾・屋台行事」 UNESCO 2016 | ✅ **ĐÚNG** |

**Tổng: 28 khẳng định kiểm chứng → 2 SAI nghiêm trọng (#2, #3), 3 SAI mức trung bình (#4, #5, #7), 23 ĐÚNG.**

---

## 5. GHI CHÚ KỸ THUẬT CHO NGƯỜI SỬA

### 5.1 ⚠️ Cả 5 lỗi cần sửa đều nằm gần RUBY hoặc gần CHỮ SỐ

Theo rule mục 1.1 (biến thể nguy hiểm: ruby chen ngay sau chữ số). Trước khi Edit, **bắt buộc `sed -n '<dòng>p'` xem nguyên văn còn ruby**, copy từ đó rồi mới sửa. Cụ thể:

| Lỗi | Dòng | Cảnh báo cụ thể |
|---|---|---|
| 3.1 入湯手形 1300円 | r15 d92-93 | `**1300円**で<ruby>3軒<rt>さんげん</rt></ruby>` — số 3軒 **CÓ ruby**, `1300円` thì không. Edit theo bản strip sẽ TRƯỢT ở vế 3軒 |
| 3.2 スーパーフライト | r20 d98,105 | Cùng dòng có `<ruby>北京<rt>ペキン</rt></ruby>` và `<ruby>感動<rt>かんどう</rt></ruby>` |
| 3.3 chú thích 3000m | r16 d105 | Dòng chú thích **không có ruby** → an toàn. Nhưng **ĐỪNG đụng d96/d98** (có ruby dày đặc, và đang ĐÚNG) |
| 3.4 240 năm | r16 d76 | Dòng chú thích, không ruby → an toàn |
| 3.5 フェニックス | r16 d71-72,76 | d71 có `<ruby>中越地震<rt>ちゅうえつじしん</rt></ruby>` và `<ruby>追悼<rt>ついとう</rt></ruby>` — **chữ 追悼 nằm TRONG ruby**, sửa phải thay cả cụm `<ruby>追悼<rt>ついとう</rt></ruby>` |
| 3.6 お当地 | r10 d159 | Bảng từ vựng, không ruby → an toàn |

**Sau mỗi lần thay, in lại chính dòng đó** (rule mục 1.8), đừng in "OK".

### 5.2 Sửa ≤3 chỗ thì dùng Edit, đừng viết script

6 lỗi này rải ở **4 file** (r10, r15, r16, r20), tổng ~11 chỗ. **Đừng viết script glob** — rule mục 1.7 đã ghi ca sách 04 bị glob rộng làm trôi sang phụ lục.

### 5.3 Kiểm chéo bắt buộc sau khi sửa (chống hụt kiểu (3))

| Sửa gì | Phải kiểm thêm ở đâu |
|---|---|
| 入湯手形 1300円 | r15 **bảng từ vựng d195** (không có số — OK) + **khối VN d107** (không có số — OK) → đã kiểm sẵn, không cần sửa |
| スーパーフライト | r20 **bảng từ vựng d177-199** (không có — OK) + **khối Câu vàng d139-159** (không có — OK) → đã kiểm sẵn |
| フェニックス | r16 **d69-70** Dũng nói 復興の象徴 — chỗ này ĐÚNG, để nguyên; sửa xong hai lượt sẽ khớp nhau |
| お当地 | r11 d177 + d196 đã đúng sẵn → không đụng |

---

## 6. ⛔ NGOÀI PHẠM VI — GHI NHẬN, KHÔNG SỬA

Theo rule mục 0 / bảng "Không thuộc phạm vi":

1. **`conversation.json`** — 12 thư mục đều có file này. Tôi **không mở, không kiểm, không sửa**. Lưu ý cho chủ nhà: `REVIEW_FINDINGS_VN.md` P0-1 khai "36/50 file lỗi xưng hô", `STATUS.md` khai script đã sửa "49 dòng / 25 file". **Chênh 36 vs 25 chưa được giải thích ở đâu** — nếu cần chốt thì đó là đợt việc riêng, không phải đợt này.
2. **Phụ lục** — không đụng. Nhưng ghi nhận: nếu sửa `入湯手形 1300円` (3.1), `スーパーフライト` (3.2) và `お当地` (3.6) mà **phụ lục B (vocab) có chứa các mục này**, thì phụ lục sẽ lệch cho tới khi chạy lại `build_appendices.py`. **Không tự chạy** — báo để chủ nhà quyết.
3. **Script build** — không đụng.
4. **Rule ngoài phần II** — không đụng. Các "kiểm liên đới" ở mục 2 (hàng #3, #4, #7) chỉ là **đọc để đối chiếu**, tôi không đề xuất sửa gì ngoài phạm vi.

---

## 7. ⛔ DANH SÁCH CẤM SỬA (chỗ ĐÚNG dễ bị sửa nhầm)

> Theo rule mục 0 nguyên tắc 5. Đây là phần quan trọng nhất của báo cáo cho main Claude.

| # | File / dòng | Nội dung | VÌ SAO ĐỪNG ĐỤNG |
|---|---|---|---|
| 1 | **r12 d166-167** | Toàn bộ cảnh báo ALDH2 + アルハラ + `「体質的に飲めないんです」` | **ĐÃ FIX ĐÚNG** lỗi loại A nặng nhất của sách. Đừng "gọn hoá" làm mất ý |
| 2 | **r15 d131-132** | `血圧が下がって…意識を失う` / "huyết áp tụt" | **ĐÃ FIX ĐÚNG CHIỀU** (WebSearch xác nhận). Ai nhớ lỗi cũ "huyết áp lên" mà sửa ngược lại là **tái tạo lỗi loại A** |
| 3 | **r16 d96 + d98** | Thoại `標高2000メートル超` (2 chỗ) | **Thoại ĐÚNG** (2,156m). Chỉ chú thích d105 sai. Sửa nhầm thoại = phá chỗ đúng |
| 4 | **r16 d61** | `7月最後の土曜ですよね?` | ĐÚNG — 隅田川 tổ chức thứ Bảy cuối tháng 7 |
| 5 | **r16 d67** | 三大花火 長岡・大曲・土浦 | ĐÚNG chuẩn |
| 6 | **r16 d69-70** | `幅2kmの不死鳥、復興の象徴` | ĐÚNG — và dùng đúng chữ 復興 (khác d71 sai). Sửa d71 cho khớp d69, **không phải ngược lại** |
| 7 | **r12 d63 + 【3】d76** | `福岡は麦が強くてね` + `いいちこ = 麦焼酎 vùng 大分` | Rule_30 từng sai "Fukuoka #1 麦焼酎"; **rule_12 KHÔNG dính lỗi đó**, còn đính chính いいちこ là Ōita. Đừng "sửa cho đồng bộ" với ký ức lỗi cũ |
| 8 | **r12 d71-72** | `先にお湯、後で焼酎` | ĐÚNG (お湯割り). Lưu ý: 水割り thì **ngược lại** — đừng lẫn |
| 9 | **r12 d40-42** | 広島 軟水 → vị mềm; 賀茂鶴 | ĐÚNG (三浦仙三郎 軟水醸造法, 賀茂鶴酒造 西条) |
| 10 | **r19 d92** | `1996年から続いてます` + `ギネス級の長寿` | Đã hedge chuẩn. Kỷ lục Guinness thật là サザエさん — sách **nhắc đúng ở d98/105**. Đừng sửa thành "không phải Guinness" |
| 11 | **r18 d94 + 【3】【6】d105** | 151匹 / 赤緑=1996 / 金銀=1999 | **Cả ba ĐÚNG** |
| 12 | **r17 d61-62 + 【3】d74** | メタボ eo nam 85cm | ĐÚNG chuẩn Nhật |
| 13 | **r09 d109-110** | `ハノイは10度切ると『極寒』` | **Cảm nhận chủ quan nhân vật**, KHÔNG phải khẳng định khí hậu. Khác hẳn lỗi rule_37 ("10度切ること多い"). Đừng gom hai ca này làm một |
| 14 | **r09 d89 + d114** | Hokkaido không có 梅雨; 真冬日/冬日 | ĐÚNG chuẩn 気象庁 |
| 15 | **r13 Scenario 3 (d88-101)** | Dũng hỏi 「お子様、何歳ですか?」 rồi đổi chủ đề | **Thiết kế có chủ ý** — dạy đúng cách bắt tín hiệu. Không mâu thuẫn với NG d156 |
| 16 | **4 khối NG có nhãn** | r13 Sc4 · r17 Sc4 · r19 Sc4 · r20 Sc4 | **CỐ Ý chứa lỗi** để dạy. Đã có nhãn [NG] + giải thích. **KHÔNG báo là lỗi của sách, KHÔNG "sửa" cho đúng** |
| 17 | **r10, r11, r14, r17, r18** | Toàn bộ | **5 rule này SẠCH** — không tìm được lỗi nào ngoài r10 d159 (お当地) và r18 d92 (calibration nhẹ 🔵). Đừng bịa lỗi cho đủ số |
| 18 | Mọi cách xưng hô "anh/chị/em" ở 6 ca liệt kê mục 3.11 | | **ĐÃ ĐỐI CHIẾU JA — HỢP LỆ**. Đặc biệt r14 d72 "chị giữ vé" (Yamamoto nữ, ngôi 1) — đúng chỗ script cũ thiếu pattern, nhưng `.md` vốn đã đúng |

---

## 8. TÓM TẮT HÀNH ĐỘNG ĐỀ XUẤT (theo thứ tự rule mục 8)

| Vòng | Việc | File/dòng | Mức |
|---|---|---|---|
| 1 (máy móc) | `お当地` → `ご当地` (2 chỗ cùng ô) | r10 d159 | 🟡 |
| 2 (sai sự thật) | `スーパーフライト` → `トリプルコーク1440` (JA+VN+chú thích) | r20 d98, d99, d105 | 🔴 |
| 2 | `1300円` → `1500円` + chỉnh mô tả 3軒 (JA+VN) | r15 d92, d93 | 🔴 |
| 2 | Chú thích `3000m` → `2,156m` (**chỉ chú thích**) | r16 d105 | 🟡 |
| 2 | `240 năm` → `gốc 1733, gần 300 năm` | r16 d76 | 🟡 |
| 2 | `2004年…追悼` → `翌2005年から復興祈願` (JA+VN+chú thích) | r16 d71, d72, d76 | 🟡 |
| 3 (mâu thuẫn/bối cảnh) | Bỏ `今年は` ở phim Conan 2024 | r19 d90 (+d105) | 🟡 |
| 5 (bổ sung — cần duyệt) | Thêm ⑧ cảnh báo chênh nhiệt vào "7 điều" onsen | r15 d136 | 🔵 |
| 5 (bổ sung — cần duyệt) | Thêm `ヒートショック` vào vocab | r15 d177-198 | 🔵 |
| 5 (bổ sung — cần duyệt) | Thêm 3 từ `シークヮーサー` / `カラカラ` / `3M` vào vocab | r12 d177-197 | 🔵 |
| — (tuỳ chọn) | Mềm hoá calibration tuổi Tanaka vs 初代赤緑 | r18 d92 | 🔵 |

**Sau khi sửa:** build lại → grep nội dung mới trong `release/` (**nhớ strip ruby**) → xác nhận 0 lỗi cũ sót.

---

*S2 — Phần II (rule_09→20) — 12/12 file đã đọc trọn vẹn. 28 khẳng định đã WebSearch. 2 lỗi loại A của đề bài: CẢ HAI ĐÃ ĐƯỢC FIX ĐÚNG.*
