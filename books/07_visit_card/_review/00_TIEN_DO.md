# Sách 07 — Danh thiếp & Nghi thức tiếp khách / 名刺・訪問 — Tiến độ rà soát

> Áp dụng `.claude/rules/book-review.md`. Đợt này: **5 subagent Opus**, mỗi agent 1 phần.
> Main Claude giữ vai tổng duyệt — **kiểm chứng từng báo cáo trước khi sửa**.

## ⛔ PHẠM VI

CHỈ sửa file `.md`: `rule.md`, `meta/mục_lục.md`, `_front_matter.md`, `_back_matter.md`, `_thuat_ngu.md`.
**KHÔNG đụng:** `conversation.json` · script build · `phụ_lục_*.md` (sinh tự động).
Lỗi ngoài phạm vi → **ghi báo cáo, không tự sửa**.

## Quy mô

**35 rule** (đếm bằng `find -name rule.md`), 5 phần. Chưa từng có `_review/`.

| Phần | Số rule |
|---|---|
| I | 7 — Trao danh thiếp (名刺交換) |
| II | 8 — Tiếp khách tại công ty |
| III | 8 — Đi thăm khách |
| IV | 7 — Tiếp đãi / ăn uống |
| V | 5 — Tình huống đặc biệt + Tự cải thiện |

## 📏 Thước đo main Claude lập TRƯỚC khi tung agent

| # | Phép đo | Kết quả |
|---|---|---|
| 1 | Mục lục vs H1 | VN lệch **11/35**, JP lệch 1/35 |
| 2 | 二重敬語/過剰敬語 (17 pattern) | **2 ca**, cùng ở `rule_30` (d50, d83) |
| 3 | Ký tự lạ | **0** |
| 4 | Emoji strip | **0** |
| 5 | Ruby vỡ | **0** |

**Sách này SẠCH hơn hẳn 06** (mục lục 06 lệch 37/45, keigo 4 ca).
→ Agent báo vượt xa các số này thì phải kiểm chứng lại.

### 🔴 Main Claude tự tìm trước

**2 ca keigo — `rule_30_お礼メール` d50 + d83:** `お伺いさせていただきます`.
`伺う` đã là 謙譲語 I, chồng `させていただく` là 二重敬語 điển hình. Đúng: `伺います`.
(Cùng loại lỗi đã sửa ở sách 06 rule_12 — kiểm xem có phải lỗi hệ thống của bộ sách không.)

### 🪤 Điểm nghi vấn cần agent thẩm định — độ cúi chào

`rule_32_お辞儀角度` dạy **15° 会釈 / 30° 敬礼 / 45° 最敬礼** — đã WebSearch xác minh, **ĐÚNG chuẩn**.

Nhưng **câu chốt d54** khai 4 loại: 「会釈15°・敬礼30°・最敬礼45°・**謝罪90°**」.
- Chuẩn ngành Nhật chỉ phân **3 loại** (nguồn: rakuten knowledge, mynavi co-medical, musubu).
- Thân rule (d35-d47) cũng chỉ dạy **3 mức** — câu chốt tự mâu thuẫn với chính rule.
- `90°` có tồn tại trong thực tế (謝罪会見) nhưng **không thuộc phân loại お辞儀 chuẩn**.

→ Cần agent phần V xác minh: nên bỏ `謝罪90°` khỏi câu chốt, hay bổ sung vào thân rule?

## Phân công

| Agent | Phần | Số rule | Trạng thái |
|---|---|---|---|
| V1 | phần_I | 7 | ✅ xong → `V1_phần_I.md` — **1 lỗi 🔴 NẶNG (rule_05 dạy NGƯỢC thứ tự nội bộ)** + 2 thiếu 名刺入れ (rule_02/04) + 2 lỗi số học (rule_01/07) + 1 lệch phòng ban. rule_03 & rule_06 SẠCH. Keigo phần_I **0 ca** (khớp thước đo main) |
| V2 | phần_II | 8 | ✅ xong → `V2_phần_II.md`. 3 🔴A (rule_09 thang máy dạy NGƯỢC · rule_09 gõ cửa 2 lần = quy ước WC, chuẩn là 3 · rule_10 thiếu vế "chủ nhà tự lái" — ngược taxi) · 1 🔴B (rule_09 tự mâu thuẫn, cùng gốc A-1) · 1 🔴D (rule_11 thiếu 右後方から + lý do "tay phải" bịa) · 2 🟡E · 3 🟡F (mục lục lệch 08/12/14) · 11 mục CẤM SỬA. Keigo phần_II **0 ca** — xác nhận thước đo |
| V3 | phần_III | 8 | ✅ XONG → `V3_phần_III.md` · 🔴 6 SAI nghi thức + 3 THIẾU · nặng nhất: **rule_21 gõ cửa 2 lần** (chuẩn = 3; 2 lần = ám hiệu WC) + **後ろ手 đóng cửa** (bị nêu đích danh là NG) + **rule_19 gấp áo ngược mặt** (chuẩn = lộn lớp lót ra) · 0 ca keigo trong phạm vi |
| V4 | phần_IV | 7 | ✅ XONG → `V4_phần_IV.md`. **4 keigo** (xác nhận d50+d83 của main, thêm d80 `お伺いいたし` + d37 `お伺いし` — cùng họ 伺う, pattern cũ lọt). **2 🔴A rủi ro rượu** (rule_25【3】 rót liên tục không có van dừng; toàn phần IV không dạy từ chối rượu / không nhắc 下戸). **1 🔴B nặng** (rule_29 d40 mail khai "đã ăn xong" trái luận điểm "không mở tại chỗ"). **1 🔴D** (rule_26 dạy chạm ly nhưng bàn có RƯỢU VANG → chuẩn là không chạm). Mục lục 7/7 khớp, cross-ref 7/7 đúng, 0 ruby vỡ. |
| V5 | phần_V + nhất quán toàn sách | 5 | ✅ XONG — `V5_phần_V.md`. 🔴4 🟡5 🔵3. Chốt độ cúi: **BỎ 90° khỏi phân loại (4→3), sửa 6 chỗ + mục lục** — KHÔNG phải chỉ câu chốt (đính chính d49: thân rule d34/d41/d48 CÓ dạy đủ 4 mức, rule nhất quán nội bộ nhưng nhất quán SAI). rule_13 45° **nhất quán, đừng đụng**. Phát hiện lớn ngoài phạm vi: **rule_05 dạy NGƯỢC thứ tự danh thiếp** (junior trước; chuẩn = 上位者から) — 1 rule lệch trục với r11/r31/r35. Fix STATUS #2 「お通りすぎ」 **nửa vời**: r35 VN còn romaji cũ, r22 CHƯA sửa. Mục lục 11/11 = lỗi thật (chưa Việt hoá), 0 ca rút gọn. Tên sách 4 file sản phẩm KHỚP. |

## Danh sách rule theo phần

### phần_I — 7 rule

- rule_01_名刺準備
- rule_02_受取
- rule_03_渡し方
- rule_04_同時交換
- rule_05_順序
- rule_06_机上配置
- rule_07_管理

### phần_II — 8 rule

- rule_08_お出迎え
- rule_09_案内
- rule_10_上座下座
- rule_11_お茶
- rule_12_冒頭
- rule_13_お見送り
- rule_14_アフターケア
- rule_15_早退遅刻

### phần_III — 8 rule

- rule_16_訪問準備
- rule_17_5分前
- rule_18_受付
- rule_19_コート
- rule_20_待機
- rule_21_入室
- rule_22_社内案内
- rule_23_退室

### phần_IV — 7 rule

- rule_24_接待ディナー
- rule_25_ホストゲスト
- rule_26_乾杯
- rule_27_雑談
- rule_28_お土産渡し
- rule_29_お土産受取
- rule_30_お礼メール

### phần_V — 5 rule

- rule_31_5名以上
- rule_32_お辞儀角度
- rule_33_文化衝突
- rule_34_初訪問キット
- rule_35_振り返り

---

## Nhật ký

- Lập 5 phép đo (pattern keigo mở rộng lên 17, rút từ bài học sách 06 sót `されておられ`), tự tìm 2 ca keigo + 1 điểm nghi vấn độ cúi chào, tạo `_review/`, tung 5 agent.

---

## ✅ Main Claude thẩm định 5 báo cáo — 22 chỗ sửa

### Agent ĐÚNG (kiểm chứng độc lập bằng nguồn Nhật xác nhận)

| Agent | Phát hiện | Kiểm chứng |
|---|---|---|
| **V1+V5** | `rule_05` dạy NGƯỢC thứ tự trao danh thiếp nội bộ | **Đúng.** WebSearch: 「複数人で名刺交換をする場合は**役職が上の人から**順番に行います」. Sách dạy "junior trao trước". Bằng chứng nội tại V1 nêu rất mạnh: d46 Hương phải nói 「最後になり申し訳ございません」 — nếu đúng chuẩn thì không cần xin lỗi |
| **V2** | `rule_09` thang máy dạy ngược | **Đúng.** Thang **trống** → mình vào trước, đứng bảng nút giữ 開; thang **có người** → khách vào trước. Sách chỉ dạy vế sau. Mâu thuẫn nội tại: d35 "vào sau cùng" nhưng d50 "đứng cạnh bảng nút" — bất khả thi |
| **V2+V3** | Gõ cửa **2 lần** | **Đúng.** Business Nhật chuẩn **3 lần**; 2 lần = quy ước kiểm phòng trống (nhà vệ sinh). Tệ hơn: chú thích d49 còn ghi *"3 lần = kiểu gõ cửa WC"* — **gán nhãn ngược** |
| **V3** | `rule_21` đóng cửa **後ろ手** | **Đúng.** 「後ろ手で閉めるのはマナー違反、必ずドアのほうを向いて閉める」. Ý sách đúng (đừng quay lưng) nhưng kỹ thuật lại chính là cái bị cấm |
| **V4** | Tìm thêm **2 ca keigo** ngoài 2 ca main Claude | **Đúng.** d80 `お伺いいたしました` còn **sai nghĩa** (ngữ cảnh là *nghe*, không phải *đến thăm*), d37 `お伺いし`. Bộ 17 pattern của tôi lọt cả hai |
| **V5** | Fix đợt trước nửa vời | **Đúng.** `rule_22` d46 chưa sửa `お通りすぎいたしましょう`; `rule_35` sửa JA nhưng **vế Việt vẫn romaji cũ** |
| **V5** | Suica cọc 2.000 yên | **Đúng**, thực tế 500 yên |

### Agent SAI (main bác)

| Agent | Báo cáo | Thực tế |
|---|---|---|
| **V3** | `rule_19` gấp áo khoác ngược mặt | **Bác.** WebSearch: 「裏返すのは…**外のほこりを訪問先の家の中に落とさないため**」 — tức lộn mặt ngoài **vào trong**, đúng như sách viết. V3 hiểu ngược nguồn |
| **main** | `rule_32` "thân rule chỉ dạy 3 mức, câu chốt tự mâu thuẫn" | **Của chính tôi sai.** V5 chỉ ra thân rule dạy đủ 4 (d3, d34, d41, d48). Rule **nhất quán nội bộ nhưng nhất quán SAI** → phạm vi sửa là 6 chỗ, không phải 1 |

### 22 chỗ sửa

| # | File | Sửa |
|---|---|---|
| 1-10 | `rule_05` | Viết lại toàn bộ theo **2 trục**: giữa 2 công ty (bên đến thăm trước) vs nội bộ đoàn (cấp cao trước). Sửa luận điểm JA+VN, khối XẤU (đang kết tội nhầm Hương), khối TỐT, 3 ghi chú, câu chốt, mục Tránh |
| 11-13 | `rule_09` | Thang máy: tách 2 trường hợp trống/có người (luận điểm JA+VN + ghi chú【2】) |
| 14-18 | `rule_21` | Gõ 2→3 lần (5 chỗ) + đóng cửa 後ろ手 → xoay người chếch (5 chỗ) + bảng từ vựng |
| 19 | `rule_19` | Gõ cửa 2→3 lần |
| 20 | `rule_30` | **4 ca keigo**: `お伺いさせていただきます`→`伺います`, `お伺いし`→`伺い`, `お伺いいたしました`→`伺いました` |
| 21 | `rule_32` | 4 loại → **3 loại chuẩn + 1 ngoại lệ** (d3, d5, d13, H2 d30, d34, d48, câu chốt d54/56) |
| 22 | `rule_22`, `rule_35`, `rule_34` | Fix nửa vời: `お通りすぎいたしましょう`→`通り過ぎましょう` (JA+romaji VN); Suica 2.000→500 yên |
| — | `meta/mục_lục.md` | Đồng bộ **11 dòng** cột Tên VN + cột Brief của r05, r32 |

**Kiểm cuối trên release:** 10/10 nội dung mới có mặt · 7/7 nội dung cũ = 0.

## ⚠️ Ngoài phạm vi — chờ chủ nhà quyết

1. **`rule_25` dạy rót rượu vô điều kiện** (V4 🔴): "canh ly liên tục", "rót ngay" — **không một chữ nào nói khi nào DỪNG**. Khảo sát Persol: ~80% coi trách móc chuyện お酌 là quấy rối.
2. **Grep 7 file phần IV: 0 lần `下戸`/`飲めない`/`アルハラ`** — sách đưa học viên vào tình huống rượu mà không cho đường thoát. (Sách 08 rule_12 đã có, sách 07 thì chưa.)
3. **`rule_26` không nói kanpai được dùng đồ không cồn**; và chưa biết **cấm kanpai bằng nước lọc** (水杯 = nghi thức ly biệt).
4. **`rule_26` dạy chạm ly cho mọi loại ly** nhưng bàn tiệc trong sách **có rượu vang** — ly vang chuẩn là **không chạm**.
5. **0 lần `交際費`/`贈収賄`** — dạy chi tiền cho đối tác mà không nhắc ngưỡng 交際費 hay 国家公務員倫理法.
6. `rule_29` tự mâu thuẫn: d3 "KHÔNG mở quà tại chỗ" nhưng d40 mail khai 「おいしくいただきました」 (đã ăn xong).
7. Nhãn vai `トゥアンリーダー` — quy ước toàn sách 17 lần/7 rule, sửa lẻ sẽ lệch.

---

## 🔁 Kiểm xác nhận cuối — và 5 lỗi TÌM THÊM được nhờ quét chéo 10 sách

Sau khi báo "sách 07 xong", tôi chạy lại 5 phép đo độc lập. Phép đo keigo **bắt được 1 ca tôi từng báo sạch nhầm**, và mở rộng quét sang cả bộ thì ra thêm 4 ca nữa.

### Ca ở chính sách 07 — tôi báo "10/10 sạch" là SAI

`rule_16_訪問準備` d46: 「…2名で**お伺いいたします**」 — 二重敬語 (伺う đã 謙譲語 I + いたす).
**Vì sao lọt:** V4 chỉ được giao quét `rule_30`, tôi cũng chỉ kiểm lại đúng các ca V4 nêu.
→ Sửa thành `伺います`.

### Quét chéo cả 10 sách → thêm 4 ca

| Sách | File | Lỗi | Xử lý |
|---|---|---|---|
| 03 | `rule_12_出席者紹介` d37 (khối **TỐT**) | `大垣 営業部長様` | → `営業部長の大垣様`. **WebSearch xác minh:** 「様」 gắn vào **TÊN**, không gắn vào **chức danh**; `営業部長様` là 二重敬語 |
| 03 | `rule_12` 【2】 chú thích | Dạy "chức danh đặt **sau** tên là được" — **sai** | Viết lại, nêu rõ cách đúng `営業部長の大垣様` / `大垣様` |
| 01 | `rule_25_質問は番号付き` d15 | `3点お伺いいたします` | → `3点伺います` |
| 01 | `rule_35_空虚な言葉を削る` d34 | `「お伺いいたします：」` | → `「伺います：」` |
| 01 | `rule_53_謝罪4ステップ` d46 | `貴社にお伺いいたします` (ruby bao trọn `お伺`) | → `貴社に伺います` |

**Sách 03 nặng nhất** vì lỗi nằm ở **khối TỐT + chú thích dạy học** — học viên chép đúng cái sai.
(3 ca `部長様` còn lại ở sách 03 và 2 ca ở sách 06 đều thuộc **khối XẤU + dòng cảnh báo có chủ ý** → CẤM SỬA.)

### Kiểm cuối toàn bộ

| Sách | 二重敬語 nặng còn lại |
|---|---|
| 01 → 09 (9 sách, trừ phụ lục) | **0** |

Build: 7 sách / 316 node. Sách 07: mục lục VN lệch 0/35, ký tự lạ 0, ruby vỡ 0.

### 📌 Bài học — thước đo phải chạy LẠI sau khi sửa, và chạy TRÊN CẢ BỘ

Tôi lập thước đo trước khi tung agent (đúng), nhưng sau khi sửa xong lại chỉ kiểm **đúng danh sách ca agent nêu** — nên bỏ sót ca ở `rule_16`. Chạy lại đủ 5 phép đo mới lộ ra.

Và vì các sách dùng chung một dàn nhân vật/mẫu câu, **lỗi keigo hay lặp xuyên sách**: 1 ca ở sách 07 kéo ra 4 ca ở sách 01 và 03. Quét theo phạm vi từng sách sẽ không bao giờ thấy.

---

## ✅ ĐỢT 3 — Rà lại trọn bộ theo rule (main tự làm, +2 chỗ, tổng = 32)

Rà toàn bộ 35 rule theo **đủ checklist** `.claude/rules/book-review.md`, gồm cả 2 mục mới thêm sau đợt trước (D2 khái quát hoá, 1.9 thước đo sai sách).

### Kết quả từng trục

| Trục | Kết quả |
|---|---|
| 1.1 / 1.8 ruby vỡ | **0** |
| **1.3 ruby-loss khi câu lặp** | **1 ca** → đã sửa |
| 1.6 cross-ref ngoài dải 1-35 | **0** |
| 4A lời khuyên rủi ro | 6 ca — 5 hợp lệ, **1 thiếu đường thoát** → đã bổ sung |
| 4B số liệu nghi thức xuyên sách | **nhất quán** (xem dưới) |
| 4C keigo (18 pattern) | **0** |
| 4E ký tự lạ | **0** (22 ca `点` đều là kanji Nhật: 論点/減点/5点) |
| 4F mục lục vs H1 | VN **0/35**, JP 1/35 (rút gọn chủ ý) |
| 4F emoji strip | **0** |
| **D2 khái quát hoá dân tộc** | **0** (2 ca đã sửa đợt trước) |

### 2 chỗ sửa

| # | Chỗ | Sửa |
|---|---|---|
| 31 | `rule_25` d58 | **Ruby-loss**: 「お会計はこちらで承りました」 mất hết ruby ở bản lặp lại, trong khi bản gốc có đủ → đắp lại. Đúng bẫy rule mục 1.3 |
| 32 | `rule_33`【1】 | Khối TỐT dạy nhịp "rót cho nhau" như phản xạ mặc định, **không nêu lựa chọn cho người không uống được** → bổ sung: giữ đúng nhịp bằng cách rót cho đối phương rồi để ly mình là ノンアル, kèm câu 「お酒は飲めない体質でして」 và cảnh báo ép bản thân uống là アルハラ ngược |

### 4B — kiểm chéo số liệu nghi thức, KHÔNG mâu thuẫn

`90度` xuất hiện ở 5 rule, thoạt nhìn chọi với `rule_32` (vừa sửa: 90° chỉ là ngoại lệ, không phải loại thứ tư). Mở tận nơi:

| Rule | Dùng 90° cho | Kết luận |
|---|---|---|
| r03, r09, r10 | **góc tay chỉ hướng** (「こちらへどうぞ」) | Khác chuyện, hợp lệ |
| r35 | dạy Linh cúi 90° là **SAI**, 「45°が正解」 | **Khớp** rule_32 |

→ Nhất quán. **CẤM SỬA** — đừng thấy `90度` mà gom lại.

### Ca đã kiểm, không phải lỗi

- **22 ca `点`** — 論点 (điểm bàn), 減点 (trừ điểm), 5点 (5 điểm). Kanji Nhật hợp lệ.
- **`rule_25` "host 全責任"** — nói về **trách nhiệm chi trả** của bên tiếp đón, không phải nhận lỗi pháp lý. Hợp lệ.
- **`rule_33` d21/d36 Matsumoto mời thêm ly** — mời bình thường, không ép. Khối XẤU dạy lỗi tự rót cho mình, không liên quan rượu.

**Kiểm cuối trên release:** ruby vỡ 0 · 3/3 nội dung mới có mặt.
