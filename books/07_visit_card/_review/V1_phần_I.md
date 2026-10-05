# V1 — Rà soát phần_I (rule_01 → rule_07) — Trao danh thiếp (名刺交換)

> Agent V1 · Opus · Sách 07 "Danh thiếp & Nghi thức tiếp khách / 名刺・訪問"
> Phạm vi: 7 file `nội_dung/phần_I/rule_*/rule.md`. CHỈ báo cáo, KHÔNG sửa file nội dung.
> Áp dụng `.claude/rules/book-review.md` (mục 1 bẫy kỹ thuật · mục 3 chống phóng đại · mục 4 trục A→F).

---

## 📊 Bảng tổng kết

| Rule | 🔴 A (dạy sai việc thật) | 🔴 B (tự mâu thuẫn) | 🔴 C (tiếng Nhật) | 🔴 D (sai sự thật) | 🟡 E (tiếng Việt) | 🟡 F (nhất quán) | Kết luận |
|---|---|---|---|---|---|---|---|
| 01 名刺準備 | — | 1 (số học 14枚) | — | — | — | — | 🟡 1 lỗi nhẹ |
| 02 受取 | 1 (thiếu 名刺入れ座布団) | — | — | — | — | — | 🟡 thiếu chi tiết cốt lõi |
| 03 渡し方 | — | — | — | — | — | — | ✅ **SẠCH** |
| 04 同時交換 | 1 (bỏ 名刺入れ khỏi thao tác) | — | — | — | — | — | 🟡 thiếu chi tiết cốt lõi |
| 05 順序 | **1 (dạy NGƯỢC chuẩn Nhật)** | **1** | — | **1** | — | 1 | 🔴 **LỖI NẶNG NHẤT** |
| 06 机上配置 | — | — | — | — | — | — | ✅ **SẠCH** (thiếu 1 bổ sung nên có) |
| 07 管理 | — | 1 (6枚 vs 3 khách) | — | — | — | — | 🟡 1 lỗi nhẹ |

**Tổng:** **1 lỗi 🔴 nặng** (rule_05) · **2 lỗi 🟡 thiếu chi tiết nghi thức cốt lõi** (rule_02, 04) · **2 lỗi 🟡 số học nhẹ** (rule_01, 07) · **2 rule sạch hoàn toàn** (rule_03, 06).

### Đối chiếu thước đo main Claude

| Phép đo main Claude | Kết quả main | V1 xác nhận trên phần_I |
|---|---|---|
| 二重敬語 / 過剰敬語 (17 pattern) | 2 ca, cả 2 ở rule_30 (phần V) | ✅ **0 ca trong phần_I** — quét lại có strip ruby, khớp |
| Ký tự lạ | 0 | ✅ 0 |
| Emoji strip | 0 | ✅ 0 |
| Ruby vỡ | 0 | ✅ 0 |
| Cross-ref | — | ✅ **35/35 hợp lệ**, không có ref chết. `Sách 03 rule_11` (liên sách) đã tách đúng khỏi ref cùng sách |

**Nhận định:** đúng như main Claude đo — phần_I **sạch về mặt ngôn ngữ**. Toàn bộ lỗi V1 tìm được nằm ở tầng **nội dung nghi thức**, không phải tầng tiếng Nhật.

---

## 🔴 BẢNG KIỂM CHỨNG TỪNG QUY TẮC NGHI THỨC (nguồn Nhật)

| # | Sách dạy | Rule | Nguồn Nhật đối chiếu | Kết luận |
|---|---|---|---|---|
| 1 | Danh thiếp để hộp riêng 名刺入れ, KHÔNG để ví | 01 | MUFG, SMBC, printbahn | ✅ **ĐÚNG** |
| 2 | Mang số lượng dư, không tính sát | 01 | SKYPCE, nissindou | ✅ **ĐÚNG** (con số cụ thể là quy ước nội bộ, không phải chuẩn ngành) |
| 3 | Nhận bằng **2 tay**, đỡ **góc dưới**, không che chữ/logo | 02 | MUFG ("ロゴへの指触" là NG), SKYPCE | ✅ **ĐÚNG** |
| 4 | Nói 「頂戴いたします」 khi nhận | 02, 03, 04 | MUFG, SKYPCE, maysee — đều ghi nguyên văn 「頂戴いたします」 | ✅ **ĐÚNG** |
| 5 | Đọc tên + chức vụ ngay tại chỗ, KHÔNG cất túi ngay | 02 | SKYPCE, MUFG | ✅ **ĐÚNG** |
| 6 | Cấm viết/gấp/vẽ lên danh thiếp trước mặt khách | 02, 06, 07 | MUFG (NG行為), SKYPCE | ✅ **ĐÚNG** |
| 7 | **Nhận danh thiếp lên trên 名刺入れ (dùng như 座布団)** | 02, 04 | **MUFG: 「名刺入れを相手の名刺を乗せる座布団の役割」** · SMBC · rakuten · allabout | ❌ **SÁCH THIẾU HẲN** → xem 🟡 F2, F3 |
| 8 | Trao 2 tay, **mặt chữ hướng về khách** | 03 | MUFG, SKYPCE, printbahn | ✅ **ĐÚNG** |
| 9 | Tự xưng đủ 会社名・部署・役職・氏名 | 03 | shimojima: 「会社名・部署名・氏名を名乗り」 | ✅ **ĐÚNG** |
| 10 | Cúi chào **15° (会釈)** khi trao | 03 | shimojima: 「会釈の姿勢（15度くらいのお辞儀）」 | ✅ **ĐÚNG** (có nguồn nói 30° 敬礼 cũng dùng — xem 🔵 I1) |
| 11 | Trao **thấp hơn** danh thiếp đối phương = khiêm nhường | 03, 04 | MUFG: 「相手が差し出した名刺よりも低い位置から」 · SMBC · SKYPCE | ✅ **ĐÚNG** |
| 12 | Cấm trao **qua bàn** (テーブル越し) | 03 | SKYPCE (NG行為: テーブル越しの交換) | ✅ **ĐÚNG** |
| 13 | 同時交換: **tay phải trao của mình / tay trái nhận của khách** | 04 | MUFG: 「右手で自分の名刺を持ち…左手で名刺入れを持ち」 · SKYPCE: 「右手で自分の名刺を差し出しながら、左手で相手の名刺を受け取る」 | ✅ **ĐÚNG** |
| 14 | 同時交換: nhận xong **đảo sang đỡ 2 tay** ngay | 04 | SKYPCE: 「相手の名刺を受け取ったら、すぐに右手を添える」 | ✅ **ĐÚNG** |
| 15 | **Bên mình: cấp DƯỚI trao trước cấp TRÊN** | **05** | **SKYPCE, nissindou, DIME, rakuten — TẤT CẢ nói NGƯỢC LẠI** | ❌ **SAI** → xem 🔴 A1 |
| 16 | Bên khách: trao với **người cấp cao nhất trước** | 05 | SKYPCE: 「最も役職が高い方から順番に」 | ✅ **ĐÚNG** |
| 17 | Bên đến thăm / bên cần việc trao trước | 05 | rakuten, nissindou: 「訪問した側から」 | ✅ **ĐÚNG** |
| 18 | Đặt danh thiếp trên bàn **theo thứ tự chỗ ngồi** | 06 | DIME: 「相手の座っている場所と対になるように」 · Nikkei リスキリング | ✅ **ĐÚNG** |
| 19 | **KHÔNG xếp chồng** danh thiếp | 06 | DIME, nissindou | ✅ **ĐÚNG** |
| 20 | **Chỉ cất khi khách đã xong / đứng dậy** | 06 | MUFG: 「商談が終わった際に、名刺入れにしまいます」 · SKYPCE: 「相手がしまうのを確認してから」 | ✅ **ĐÚNG** |
| 21 | Danh thiếp rơi: KHÔNG dùng chân, cúi nhặt 2 tay + xin lỗi | 06 | Chuẩn chung ビジネスマナー | ✅ **ĐÚNG** |
| 22 | Cấm đặt vật khác (cốc, sổ) lên danh thiếp | 06 | nissindou, designmeishi | ✅ **ĐÚNG** |
| 23 | Danh thiếp đặt phía **bên trái** nhìn từ mình | — | MUFG: 「自分から見て左側が基本」 · SKYPCE | ⚠️ **SÁCH KHÔNG NÓI** → 🔵 I2 (nên bổ sung) |
| 24 | Danh thiếp người cấp cao nhất đặt **lên trên 名刺入れ** | — | nissindou, designmeishi, SKYPCE | ⚠️ **SÁCH KHÔNG NÓI**; DIME có lưu ý phản biện → 🔵 I3 (tuỳ chọn, GÂY TRANH CÃI) |
| 25 | Không gọi 「部長様」 (二重敬語) | 02, 06 | kigyolog, fashion-hr | ✅ **ĐÚNG** — sách dùng 「大垣部長」/「大垣 営業部長」, không có 「部長様」 |

**Điểm số nghi thức phần_I: 22 ĐÚNG / 1 SAI / 2 THIẾU.**

---

## 🔴 A1 — rule_05 dạy NGƯỢC chuẩn Nhật: "cấp dưới bên mình trao trước"

**Mức: 🔴 NẶNG NHẤT của phần_I.** Vừa là A (dạy làm sai việc thật), vừa là D (sai sự thật), vừa là B (mâu thuẫn nội bộ).

### Nguyên văn sách

**rule_05 dòng 3** (luận điểm):
> **Luận điểm.** Khi bên mình có nhiều người: **người cấp dưới trao trước, người cấp trên trao sau**.

**rule_05 dòng 5** (JA):
> 名刺交換は『下位者から上位者へ』の順番。自社内では junior が先、相手より格下なら自社全員が先に出す。

**rule_05 dòng 30** (JA/VN — lời Hương "sửa" Linh):
> 「リンさん、<ruby>本来<rt>ほんらい</rt></ruby>は junior から<ruby>先<rt>さき</rt></ruby>よ。トゥアンさんの<ruby>後<rt>あと</rt></ruby>でいいの。」
> *Linh, đáng lẽ người cấp dưới phải đi trước. Em đứng sau anh Tuấn cũng được.*

**rule_05 dòng 42** (JA/VN — hội thoại TỐT):
> 「<ruby>順番<rt>じゅんばん</rt></ruby>は **リン → ズン → トゥアン → 私（フオン）**【1】。」
> *Thứ tự sẽ là Linh → Dũng → Tuấn → chị (Hương).*

**rule_05 dòng 49** (ghi chú 【1】):
> **Cấp dưới trước cấp trên bên mình** — Linh (intern) → Dũng (BD) → Tuấn (Lead) → Hương (副部長). Lý do: người càng nhẹ ký càng "thăm dò" trước, người cấp cao xuất hiện cuối = điểm nhấn.

**rule_05 dòng 57** (câu chốt):
> **「名刺は『自社junior先・相手senior優先』のマトリクス順。」**

**rule_05 dòng 65** (Tránh):
> - **Người cấp cao bên mình bước ra đầu tiên** → lộ "không hiểu người cấp dưới phải dấn thân trước"

### Chuẩn Nhật thật — 4 nguồn độc lập đều nói NGƯỢC LẠI

| Nguồn | Nguyên văn |
|---|---|
| SKYPCE (Sky株式会社) | 「訪問者側で複数名いる場合は、**役職が高い順に差し出します**」・「最初にお互いの**上司同士**が名刺交換を行い」・「上司が名刺交換をしている間は手の空いている人同士で名刺交換を始めず」待つ |
| 日新堂印刷 | 「自社の**上司**→相手の上司、自社の上司→相手の部下、自社の**部下**→相手の上司、自社の部下→相手の部下」 |
| @DIME | 「**上役から**交換していく」 |
| 楽天カード みんなのマネ活 | 「複数人数で訪問した場合は、**役職が上の人から**名刺交換を行います」 |

### Vì sao sách nhầm

Sách trộn **hai trục khác nhau** thành một:

- **Trục 1 — GIỮA HAI BÊN (đúng):** bên 立場が下 (bên đến thăm / bên cần việc) trao trước bên kia. Đây chính là câu 「下位者から上位者へ」 — và nó **chỉ nói về quan hệ giữa 2 công ty**, không nói về nội bộ một bên.
- **Trục 2 — TRONG NỘI BỘ MỘT BÊN (sách dạy ngược):** trong cùng một đoàn, **người cấp cao nhất của bên mình mở màn** với người cấp cao nhất bên kia. Cấp dưới **đứng chờ**, không được tự ý bắt đầu.

Sách lấy nguyên tắc của Trục 1 rồi áp máy móc xuống Trục 2 → ra kết luận ngược.

### Hậu quả thực tế

Học viên làm theo sách: intern Linh **bước ra trước mặt CFO Nakamura trong khi Phó phòng Hương đứng sau**. Trong nghi thức Nhật đây là ca 失礼 rõ rệt — đúng bằng thứ mà chính rule_05 dòng 32 mô tả là "lộ ngay tổ chức không sắp xếp trước". **Sách đang dạy đúng cái nó bảo phải tránh.**

### 🔴 B — sách tự mâu thuẫn trong CHÍNH rule_05

Dòng 46, sau khi trao xong, Hương nói:

> 「<ruby>最後<rt>さいご</rt></ruby>になり<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。営業部 副部長のフオンでございます。」
> *Xin lỗi vì để đến cuối ạ. Tôi là Hương, Phó phòng Kinh doanh.*

Câu 「最後になり申し訳ございません」 là **lời xin lỗi vì mình đến cuối** — tức chính nhân vật trong sách cũng cảm thấy việc người cấp cao trao sau cùng là điều **phải xin lỗi**. Nếu thứ tự đó là ĐÚNG chuẩn như sách khẳng định thì **không có gì để xin lỗi cả**. Chi tiết này là dấu vết cho thấy tác giả mơ hồ ngay từ lúc viết.

### 🟡 F — kéo theo lỗi mục lục

`meta/mục_lục.md` dòng 42, brief rule 05: **"Junior trao trước senior"** — cùng lỗi, phải sửa đồng bộ.

### Đề xuất sửa (đồng bộ JA + VN + câu chốt + Tránh + ghi chú + mục lục)

| Chỗ | Hiện tại | Đề xuất |
|---|---|---|
| d3 luận điểm | "người cấp dưới trao trước, người cấp trên trao sau" | "**người cấp trên bên mình mở màn trước**, cấp dưới lần lượt theo sau; **giữa 2 bên** thì bên đến thăm / bên cần việc trao trước" |
| d5 JA | 自社内では junior が先 | 自社内では**上位者が先**（上司同士から交換を始める） |
| d30 | 「本来は junior から先よ。トゥアンさんの後でいいの。」 | 「本来は**上司から先**よ。フオンさんが中村CFOと交換してから、あなたの番。」 |
| d42 | リン → ズン → トゥアン → 私（フオン） | **私（フオン）→ トゥアン → ズン → リン** |
| d46 | 「最後になり申し訳ございません」 (Hương) | **Bỏ câu này** hoặc chuyển sang Linh (người thật sự đứng cuối) |
| d49 【1】 | "Cấp dưới trước cấp trên bên mình… người cấp cao xuất hiện cuối = điểm nhấn" | "**Cấp trên bên mình đi trước** — Hương (副部長) mở màn với Nakamura CFO. Cấp dưới **đứng chờ**, KHÔNG tự ý bắt đầu khi cấp trên đang trao." |
| d51 【3】 | "Người cấp dưới bên mình + người cấp cao bên kia = ưu tiên đầu" | "**Cấp cao bên mình × cấp cao bên kia = cặp đầu tiên**; cấp thấp × cấp thấp = cặp cuối" |
| d57 câu chốt | 『自社junior先・相手senior優先』 | 『**自社上位者先**・相手senior優先』 |
| d65 Tránh | "Người cấp cao bên mình bước ra đầu tiên → lộ không hiểu…" | **Đảo lại**: "**Cấp dưới tự ý bước ra trong khi cấp trên chưa trao xong** → phá thứ tự, lộ tổ chức không sắp xếp" |
| mục_lục d42 | "Junior trao trước senior" | "Cấp trên bên mình mở màn; bên đến thăm trao trước" |

⚠️ **Đây là ca sửa "nửa vời" rất dễ xảy ra** (rule mục 5): sửa luận điểm mà quên câu chốt / bảng Tránh / ghi chú 【1】【3】 / mục lục. Phải sửa **cả 10 chỗ**.

---

## 🟡 F2 — rule_02 thiếu 名刺入れ trong thao tác NHẬN (座布団)

**Mức: 🟡 nhưng là thiếu chi tiết CỐT LÕI** — mọi nguồn Nhật đều dạy, sách bỏ hẳn.

**rule_02 dòng 3** (luận điểm):
> Nhận danh thiếp = **nghi lễ 3 giây**: 2 tay đỡ ở góc dưới + nói「頂戴いたします」+ đọc tên/chức vụ ngay trước mặt khách

**rule_02 dòng 44** (ghi chú 【1】):
> **両手で角を持つ** — 2 ngón cái + trỏ giữ 2 góc dưới. KHÔNG che chữ in trên danh thiếp. KHÔNG cầm chính giữa.

**Vấn đề:** sách dạy nhận **bằng tay trần**. Chuẩn Nhật là nhận **lên trên 名刺入れ** — hộp danh thiếp đóng vai "座布団" (nệm ngồi) đỡ danh thiếp khách:

> MUFG: 「**名刺入れを相手の名刺を乗せる座布団の役割**」
> rakuten/allabout: 「自身の手元側のテーブルの左上に名刺入れを置き、それを**座布団がわりにして**受け取った名刺を上に乗せます」

Đây không phải chi tiết phụ — nó là **hình ảnh biểu tượng** của toàn bộ nghi thức nhận danh thiếp Nhật, và là thứ khách Nhật nhìn thấy ngay. Học viên làm đúng mọi thứ khác nhưng nhận tay trần vẫn lộ "chưa được đào tạo".

Chua thêm: rule_01 dạy rất kỹ việc **phải có 名刺入れ** (điều kiện ①), nhưng đến rule_02 thì cái hộp đó **biến mất khỏi thao tác** — hụt logic giữa 2 rule liền kề.

**Đề xuất:** thêm vào luận điểm d3 + ghi chú 【1】 d44 + bảng Tránh: *"Nhận danh thiếp đặt lên trên 名刺入れ (hộp làm 'nệm' 座布団), KHÔNG nhận bằng tay trần"*. Bổ sung 座布団 vào bảng từ vựng.

---

## 🟡 F3 — rule_04 mô tả 同時交換 thiếu hẳn 名刺入れ

**rule_04 dòng 3** (luận điểm):
> **tay phải đưa danh thiếp của mình** xuống dưới (低), **tay trái nhận danh thiếp khách** ở trên (高)

**rule_04 dòng 44** (ghi chú 【1】):
> **右手低・左手高** — tay phải trao danh thiếp **của mình** chìa thấp + tay trái đỡ danh thiếp **khách** ở cao.

**Phần ĐÚNG (không được sửa):** trục phải-trao / trái-nhận ✅, trao thấp-nhận cao ✅, đảo sang 2 tay ✅, 「頂戴いたします」 ✅. Bốn điểm này khớp MUFG và SKYPCE nguyên văn.

**Phần THIẾU:** tay trái trong 同時交換 **đang cầm 名刺入れ**, và danh thiếp khách rơi xuống **trên mặt hộp** đó — chứ không phải vào lòng bàn tay trái:

> MUFG: 「右手で自分の名刺を持ち、相手の名刺入れに向かって渡します。このとき**左手で名刺入れを持ち、名刺入れの上で相手の名刺を受け取ります**」

Thiếu chi tiết này thì học viên hình dung tay trái trống — sai tư thế thật.

Bổ sung tuỳ chọn (MUFG): cách kẹp danh thiếp mình *「親指と人差し指の間ではさんで持ち、名刺入れは人差し指と中指の間ではさんで持つ」* — giúp danh thiếp mình "nổi" trên hộp.

**Đề xuất:** sửa d3 + d44 thành *"tay trái **cầm 名刺入れ**, nhận danh thiếp khách **lên trên mặt hộp**"*. Thêm 名刺入れ vào bảng từ vựng rule_04.

---

## 🟡 B1 — rule_01 phép tính 14枚 không khớp cách diễn giải

**rule_01 dòng 25:**
> 「大垣さん・松本様・中村CFO 3人 + 通訳 + 我々 4人 + buffer = 最低 14枚必要だよ。」
> *Anh Ōgaki, anh Matsumoto, anh Nakamura CFO = 3 người, thêm thông dịch, bên mình 4 người, cộng dự phòng = tối thiểu 14 tờ.*

**Vấn đề số học:** người Linh cần trao danh thiếp = 3 khách + 1 thông dịch = **4 người**. `我々 4人` là **người bên MÌNH** — Linh **không trao danh thiếp cho đồng nghiệp cùng công ty**. Vậy nhu cầu thật là 4, không phải cơ sở của số 14.

Nếu áp công thức 人数×2倍 của chính rule (d5, d53): 4 × 2 = **8**, không ra 14. Còn nếu cộng cả 我々 4人 vào: (4+4)×2 = 16 ≠ 14. **Không có cách đọc nào cho ra 14.**

**Mâu thuẫn nội bộ tiếp:** d41 Linh báo *"14枚 + buffer 6枚 = 20枚"* → tức 14 **chưa** gồm buffer. Nhưng d25 Dũng đã tính *"+ buffer = 最低14枚"* → 14 **đã** gồm buffer. Hai dòng trong cùng rule hiểu số 14 theo hai kiểu khác nhau.

**Đề xuất:** thống nhất một cách tính. Gợi ý: *"3 khách + 1 thông dịch = 4 người × 2 = 8, làm tròn lên 10, buffer 10 = **20枚**"* — vừa khớp công thức ×2倍, vừa ra đúng con số 20 mà d41 đã chốt. Hoặc giữ 14 nhưng nêu rõ căn cứ (vd tính cả người có thể xuất hiện thêm).

⚠️ Sửa chỗ này phải để ý **bẫy ruby chen sau chữ số** (rule mục 1.1): d25 có `14枚<ruby>必要<rt>ひつよう</rt></ruby>` và `4人 + buffer`. Phải `sed -n '25p'` xem nguyên văn rồi copy, đừng copy từ bản đã strip.

---

## 🟡 B2 — rule_07 "6枚 danh thiếp" không khớp bối cảnh 3 khách

**rule_07 dòng 13** (bối cảnh):
> Dũng yêu cầu Linh xử lý **6 danh thiếp** đã nhận (3 cấp trên 白鷗 + **3 thành viên khác trong đoàn**).

**rule_07 dòng 39:**
> 「リンさん、6<ruby>枚<rt>まい</rt></ruby><ruby>名刺<rt>めいし</rt></ruby>の<ruby>処理<rt>しょり</rt></ruby>プラン<ruby>共有<rt>きょうゆう</rt></ruby>して。」

**Vấn đề:** xuyên suốt rule_01→06 đoàn 白鷗 nhất quán là **3 người** (大垣 + 松本 + 中村). rule_01 d25 chỉ thêm **1 通訳**. Cụm "3 thành viên khác trong đoàn" ở rule_07 là **nhân vật mới xuất hiện lần đầu ở rule cuối phần**, không có ở đâu khác — làm đoàn phình từ 3 lên 6 người mà không giải thích.

Cũng lệch với rule_06 d13, nơi phòng họp chỉ có đúng 3 danh thiếp khách trên bàn.

**Đề xuất:** hoặc đổi `6枚` → `3枚` (khớp cả phần), hoặc `4枚` (3 khách + thông dịch, khớp rule_01); hoặc giữ 6 nhưng giới thiệu 3 người kia từ rule_01. Phương án gọn nhất: **4枚**.

---

## 🟡 F4 — rule_05: phòng ban của Linh lệch giữa 2 rule

| Rule | Dòng | Nguyên văn |
|---|---|---|
| 02 | 39 | 「ティエンファット**の**リンと申します」 (không nêu phòng ban) |
| 05 | 43 | 「ティエンファット **マーケティング**のリンと申します」 |

rule_05 gán Linh vào **Marketing**. Nhưng bối cảnh xuyên suốt: Linh là intern do **Dũng (BD phòng Kinh doanh)** kèm cặp, dưới **Hương 副部長 営業部** (rule_05 d16 sơ đồ cấp bậc: フオン副部長 > トゥアン > ズン BD > リン intern — toàn tuyến 営業部), và rule_01 d27 Dũng sai Linh đi in danh thiếp như việc nội bộ nhóm.

**Đề xuất:** đổi rule_05 d43 → 「ティエンファット **営業部**のリンと申します」 cho khớp sơ đồ ngay trên đó. (Nếu chủ nhà muốn giữ Marketing thì phải sửa sơ đồ d16 — nhưng như vậy Linh nằm ngoài cây quản lý của Hương, hỏng logic rule_05.)

---

## 🔵 I1 — Góc cúi chào 15° khi trao danh thiếp: ĐÚNG nhưng có nguồn nói 30°

**rule_03 d3, d51, d77** dạy **15°**.

**Kết luận: ĐÚNG, không cần sửa.** shimojima (nguồn ngành in danh thiếp) ghi nguyên văn: 「相手に向かって**会釈の姿勢（15度くらいのお辞儀）**で、会社名・部署名・氏名を名乗り」.

**Tuy nhiên GÂY TRANH CÃI nhẹ:** có nguồn cho rằng 名刺交換 dùng **敬礼 30°** khi cần tỏ kính trọng rõ hơn, và 「相手よりお辞儀の角度を少し深く」 (cúi sâu hơn đối phương một chút) khi 同時交換.

**Đề xuất (tuỳ chọn, không bắt buộc):** thêm 1 câu ở ghi chú rule_03: *"15° là mức chuẩn khi trao danh thiếp; với khách cấp rất cao (CFO/社長) có thể nâng lên 30° 敬礼"*. Cần đối chiếu với **rule_32 お辞儀角度 (phần V)** trước khi thêm, tránh mâu thuẫn liên phần — đây là việc của main Claude vì vắt qua 2 phạm vi.

---

## 🔵 I2 — Nên bổ sung: danh thiếp đặt phía TRÁI nhìn từ mình

rule_06 dạy rất tốt về **thứ tự chỗ ngồi**, nhưng **không nói đặt ở phía nào của bàn**. Chuẩn Nhật có quy định rõ:

> MUFG: 「置く場所は、**自分から見て左側が基本**」
> SKYPCE: 「自分から見て左側に置くのが基本です」

**Đề xuất:** thêm vào ghi chú 【1】 rule_06 d46: *"đặt ở phía **bên trái** nhìn từ chỗ mình ngồi (không để trước mặt cản chỗ ghi chép / đặt tài liệu)"*.

---

## 🔵 I3 — Tuỳ chọn: danh thiếp cấp cao nhất đặt lên trên 名刺入れ (GÂY TRANH CÃI)

Nhiều nguồn dạy: 「役職の一番高い人のものを**名刺入れの上に置き**、他の方の名刺はテーブル上に」 (nissindou, designmeishi, SKYPCE).

**Nhưng đây là điểm GÂY TRANH CÃI thật sự**, DIME nêu phản biện:

> 「上役の名刺を名刺入れの上に乗せ…るケースもあるものの、**1人だけを特別扱いにするのを快く思わない人もいるようです**」

**Đề xuất:** **KHÔNG bắt buộc thêm.** Nếu thêm thì phải nêu cả hai mặt, không dạy như quy tắc cứng. Cách hiện tại của sách (chỉ dạy seat order, không phân biệt đối xử) là **lựa chọn an toàn** — nếu chủ nhà muốn giữ nguyên thì hoàn toàn hợp lý.

---

## ✅ Kiểm khối "Hội thoại XẤU" — phần "Vì sao xấu" có giải thích đúng cái sai không?

| Rule | Lỗi cố ý cài trong hội thoại XẤU | "Vì sao xấu" giải thích | Khớp? |
|---|---|---|---|
| 01 | Để ví, 5 tờ, thiếu mặt EN | Danh thiếp = đại diện công ty; 5 tờ trong ví = lộ nhân viên mới | ✅ |
| 02 | Nhận 1 tay, không đọc, nhét túi | Đúng cả 3 điểm, nêu rõ hậu quả ấn tượng đầu | ✅ |
| 03 | 1 tay, chữ hướng về mình, xưng thiếu | Đánh số (1)(2)(3) khớp đúng 3 lỗi cài | ✅ **mẫu mực** |
| 04 | 2 bên cùng tầm cao → đụng tay → 「お先にどうぞ」 lẫn nhau | "Ai cũng khiêm nhường sai cách" — đúng bản chất | ✅ |
| 05 | Hương (cấp cao) trao trước; Linh nhảy hàng | ⚠️ Bắt đúng lỗi Linh nhảy hàng, nhưng **kết tội nhầm Hương** — theo chuẩn Nhật Hương trao trước là ĐÚNG | ❌ **xem A1** |
| 06 | Xếp chồng → gọi nhầm 「松本部長」 (Matsumoto là PM) | Giải thích rõ chuỗi nhân quả xếp chồng → nhầm chức | ✅ **rất hay** |
| 07 | Để 3 ngày, quên bối cảnh | Nêu hậu quả email sáo rỗng | ✅ |

**6/7 khối XẤU đạt.** Riêng rule_05: khối XẤU cài **hai** lỗi nhưng chỉ một lỗi là thật (Linh nhảy hàng); lỗi kia (Hương đi trước) bị gán sai. Khi sửa A1 phải viết lại cả khối XẤU này, không chỉ khối TỐT.

---

## ⛔ DANH SÁCH CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| # | Chỗ | Vì sao CẤM sửa |
|---|---|---|
| 1 | **rule_04 d3, d44, d52 — 右手低・左手高** | ĐÚNG nguyên văn MUFG + SKYPCE. Khi vá lỗi rule_05 rất dễ "sửa lây" sang trục tay của rule_04 vì cả hai đều nói về "cao/thấp". **Hai chuyện hoàn toàn khác nhau.** Chỉ được BỔ SUNG 名刺入れ, KHÔNG đảo trái/phải, KHÔNG đảo cao/thấp |
| 2 | **rule_05 d3, d42 【2】 — "cả nhóm trao với 中村CFO (cấp cao nhất bên khách) trước"** | Phần này **ĐÚNG** (SKYPCE: 「最も役職が高い方から順番に」). Lỗi A1 **chỉ nằm ở trục NỘI BỘ bên mình**. Sửa A1 mà đảo luôn trục bên khách = phá cái đang đúng |
| 3 | **rule_05 d3 — "bên đến thăm / bên cần việc trao trước bên được thăm"** | ĐÚNG (rakuten, nissindou 「訪問した側から」). Đây là Trục 1, KHÔNG phải thứ đang sai |
| 4 | **rule_03 d3, d51 — cúi 15°** | ĐÚNG theo shimojima. Đừng nghe nguồn nói 30° mà sửa vội — phải đối chiếu rule_32 trước (xem I1) |
| 5 | **rule_02 d45 【2】 — 「頂戴いたします」, KHÔNG dùng「ありがとうございます」/「もらいます」** | ĐÚNG hoàn toàn, có ở mọi nguồn. Trông "cứng nhắc" nhưng là quy ước cố định |
| 6 | **rule_03 d40 — 大垣 nói 「頂戴いたします」 khi nhận từ Dũng** | ĐÚNG — người cấp cao cũng nói câu này khi nhận. Đừng tưởng "sếp thì không cần" mà xoá |
| 7 | **rule_02 d39 / rule_06 d41 — 「大垣 営業部長」 / 「大垣部長」** | ĐÚNG. Chức vụ đã hàm ý kính ngữ → **KHÔNG được** thêm 様 thành 「大垣部長様」 (二重敬語) |
| 8 | **rule_01 d25 — 「松本様」** | ĐÚNG. Đây là 松本 **chưa kèm chức vụ** nên gắn 様 hợp lệ; khác hẳn ca 「部長様」 ở #7. Đừng "chuẩn hoá" thành 松本さん cho đều |
| 9 | **rule_03 d25 — 大垣 nói 「ズン様、ですね」** trong hội thoại XẤU | Đây là **khách Nhật** gọi người ngoài công ty → 様 hợp lệ. Nằm trong khối XẤU nhưng **bản thân câu này không phải lỗi** — lỗi là của Dũng |
| 10 | **rule_06 d24 — 「松本部長」 gọi nhầm** | **Lỗi CỐ Ý** trong hội thoại XẤU (Matsumoto là PM). Là điểm dạy học của rule. **TUYỆT ĐỐI không "sửa" thành 松本PM** |
| 11 | **rule_01 d24 — 「財布の中に5枚」** | **Lỗi CỐ Ý** của nhân vật Linh trong khối XẤU |
| 12 | **rule_02 d24 — 「リンです、よろしくお願いします」 (xưng thiếu)** | **Lỗi CỐ Ý** khối XẤU, được フオン sửa ngay dòng dưới |
| 13 | **rule_04 d61 — 「お先にどうぞ」 chỉ dùng khi rule 05, KHÔNG dùng giữa 2 người cùng cấp** | Nhất quán với rule_05 d68. Nếu sửa A1 thì **rà lại cả 2 dòng này cùng lúc** — chúng khoá nhau |
| 14 | **rule_07 d67 — "Viết ghi chú lên chính danh thiếp → KHÔNG bao giờ"** | ĐÚNG chuẩn Nhật, nhất quán với rule_02 d65 + rule_06 d65. Ba chỗ khoá nhau, sửa 1 phải sửa 3 |
| 15 | **rule_06 d47 【2】 — cất danh thiếp SAU khi khách đứng dậy** | ĐÚNG (MUFG 「商談が終わった際に」, SKYPCE 「相手がしまうのを確認してから」) |

---

## 📌 Việc nằm NGOÀI phạm vi V1 — ghi lại, không tự sửa

1. **`meta/mục_lục.md` d42** — brief rule 05 "Junior trao trước senior" mang **cùng lỗi A1**. Phải sửa đồng bộ khi vá rule_05. (Mục lục ngoài phạm vi 7 file rule của V1.)
2. **rule_03 d3 (15°) ↔ rule_32 お辞儀角度 (phần V)** — cần main Claude đối chiếu liên phần, V1 không có phạm vi đọc rule_32. Liên quan điểm nghi vấn 謝罪90° main Claude đã nêu.
3. **`conversation.json` của 7 rule** — V1 KHÔNG mở theo đúng phạm vi. Nếu chủ nhà quyết sửa A1 thì cần chốt riêng có đồng bộ json hay không (`build_release_books_02_08.py` chỉ đọc `.md` nên không bắt buộc).
4. **Phụ lục A/B/C/D** — không kiểm (sinh tự động, ngoài phạm vi). Lưu ý: nếu phụ lục A/D có tổng hợp mẫu câu thứ tự trao danh thiếp thì **sẽ kế thừa lỗi A1** — main Claude nên grep `junior` / `下位者` trong phụ lục sau khi sửa.

---

## Thứ tự sửa đề xuất

| Ưu tiên | Việc | Rule |
|---|---|---|
| **1** 🔴 | **A1 — đảo thứ tự nội bộ (10 chỗ + mục lục)** | 05 |
| **2** 🟡 | Bổ sung 名刺入れ 座布団 vào thao tác nhận | 02, 04 |
| **3** 🟡 | Vá số học 14枚 / 6枚 | 01, 07 |
| **4** 🟡 | Thống nhất phòng ban Linh (営業部) | 05 |
| **5** 🔵 | Bổ sung "đặt bên trái"; cân nhắc 15°↔30° | 06, 03 |

---

## Nguồn kiểm chứng

- [三菱UFJカード — 名刺交換のマナーを徹底解説](https://www.cr.mufg.jp/mycard/beginner/24033/index.html)
- [SKYPCE — 複数名との名刺交換マナー｜順番・渡し方・受け取り方](https://www.skypce.net/media/article/1009/)
- [SKYPCE — 名刺交換のマナー完全ガイド｜順番・渡し方・受け取り方](https://www.skypce.net/media/article/2433/)
- [日新堂印刷 — 複数人での名刺交換マナーは目下の人からが基本](https://www.nissindou.co.jp/magazine/meishikoukan-manners-multiple/)
- [@DIME — 相手が複数いる場合の名刺交換の順番と受け取った後の並べ方](https://dime.jp/genre/893369/)
- [楽天カード みんなのマネ活 — 名刺交換は誰から行う？複数人いる際の順番](https://www.rakuten-card.co.jp/minna-money/topic/article_2303_00028/)
- [三井住友カード — 名刺交換のやり方を徹底解説](https://www.smbc-card.com/nyukai/magazine/recommend/business_card_exchange.jsp)
- [シモジマ — おさえておきたい名刺の交換方法とマナー](https://shimojima.jp/shop/pages/column_contents00023.aspx)
- [日新堂印刷 — 名刺の置き方・しまい方](https://www.nissindou.co.jp/magazine/meishi-placement/)
- [メイシー — 名刺の同時交換はマナー違反!?](https://maysee.jp/blog/archives/602)
- [起業ログ — 役職に「様」をつけるのは間違い？](https://kigyolog.com/article.php?id=1617)
- [NIKKEIリスキリング — 相手の名刺は席順に置く](https://reskill.nikkei.com/article/DGXDZO50114590Y2A221C1W05001/)

---

*V1 — phần_I (rule_01→07) — hoàn tất.*
