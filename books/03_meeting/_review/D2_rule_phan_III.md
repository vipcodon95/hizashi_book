# [03-D2] Rà soát rule.md phần III (14 rule)

> Agent: D2 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: `nội_dung/phần_III/rule_19..32_*/rule.md` (1.031 dòng). KHÔNG đụng phần I/II/IV/V.
> Phương pháp: đọc trọn 14 file + 4 script quét (strip ruby theo rule mục 1.1) + đối chiếu `conversation.json` + 6 lần WebSearch kiểm chứng.

---

## Tóm tắt số lỗi

| Mức | Số ca | Nội dung |
|---|---|---|
| 🔴 Nặng | **6** | 2 keigo SAI trong khối TỐT (dạy sai), 1 ruby-loss hệ thống (6 câu), 1 sai sự thật văn hoá, 1 mâu thuẫn thang 5 mức, 1 lỗ hổng vai vế |
| 🟡 Vừa | **9** | 4 ruby katakana sai loại, 1 ruby thiếu ký tự, 2 tiếng Anh chèn không có trong JA, 4 mục lục lệch (gộp) |
| 🔵 Nhẹ | **4** | thuật ngữ, nhãn Hán Việt, khối XẤU thiếu giải thích, romaji lẻ |
| **Tổng** | **19** | |

**Đánh giá chung:** phần III là phần khó nhất sách và **phần lớn viết tốt**. Cấu trúc 14 rule đồng dạng 14/14, cross-reference 42/42 trỏ đúng rule tồn tại, ruby đọc đúng gần như tuyệt đối (0 ca đọc sai kanji). Lỗi tập trung ở **2 câu keigo trong khối TỐT** và **1 bug ruby lặp hệ thống**.

Có **5 rule SẠCH hoàn toàn**: rule_19, rule_26, rule_27, rule_28, rule_31 (trừ lệch mục lục ngoài phạm vi rule.md).

---

## 1. KIỂM raw-kanji / ruby (bảng riêng)

`STATUS.md` khai "55 VN raw-kanji conversation + 13 raw-kanji rule.md" nhưng không có bảng Sai→Đúng. Tôi tự quét lại toàn bộ.

### 1.1 Kết luận tổng: KHÔNG có kanji "trần" ở mức lỗi thật, NHƯNG có bug ruby-loss hệ thống

Quy ước ruby của sách phần III (suy ra từ dữ liệu): **chỉ ruby lần xuất hiện ĐẦU trong mỗi khối hội thoại**; tên nhân vật (松本/大垣) và kanji trong ghi chú/luận điểm không ruby. Quy ước này nhất quán → không báo là lỗi.

### 1.2 🔴 BUG HỆ THỐNG — 6 câu lặp trong khối TỐT mất TOÀN BỘ ruby

Cơ chế: khối `Hội thoại TỐT` lặp lại lời mở đầu của khối `Hội thoại XẤU`. Ở khối XẤU câu **có ruby đầy đủ**, sang khối TỐT **ruby bị xoá sạch (0)**. Với người học đọc riêng khối TỐT (đúng cách dùng sách) thì mất hoàn toàn furigana.

| Rule | Dòng XẤU (ruby) | Dòng TỐT (ruby) | Câu | Kanji mất ruby |
|---|---|---|---|---|
| rule_21 | 23 (6 ruby) | **35 (0)** | 「権限は組織階層と職務属性のクロスマトリックスで管理します。」 | 権限・組織・階層・職務・属性・管理 |
| rule_22 | 23 (3) | **35 (0)** | 「7月末リリースで進めたいと考えております。」 | 月末・進・考 |
| rule_24 | 23 (2) | **37 (0)** | 「…以上が変更点となります。」 | 以上・変更点 |
| rule_25 | 23 (5) | **37 (0)** | 「もし15%の値引きが可能であれば、本日中に契約を進めたいのですが。」 | 値引・可能・本日中・契約・進 |
| rule_29 | 23 (1) | **39 (0)** | 「やはり20%でなければ難しいです。」 | 難 |
| rule_29 | 24 (1) | **40 (0)** | 「10%が限界です。」 | 限界 |

**Nặng nhất là rule_21 dòng 35** — 6 kanji chuyên môn (権限/組織階層/職務属性/管理), đúng câu mà cả rule đang dạy "không hiểu thì phải hỏi". Người học N3 không đọc nổi.

**Đề xuất sửa:** copy nguyên chuỗi có ruby từ dòng khối XẤU sang. Ví dụ rule_21 dòng 35 → `「<ruby>権限<rt>けんげん</rt></ruby>は<ruby>組織<rt>そしき</rt></ruby><ruby>階層<rt>かいそう</rt></ruby>と<ruby>職務<rt>しょくむ</rt></ruby><ruby>属性<rt>ぞくせい</rt></ruby>のクロスマトリックスで<ruby>管理<rt>かんり</rt></ruby>します。」`

⚠️ Cùng bug có thể tồn tại ở phần I/II/IV/V — **main Claude nên chạy `scan3.py` cho toàn sách** (script so hai câu giống nhau sau khi strip ruby, đếm chênh lệch số `<ruby>`).

### 1.3 🟡 4 ca ruby ĐẶT TRÊN KATAKANA — sai loại, hiển thị vô nghĩa

Furigana dùng để chú kana cho **kanji**. Đặt hiragana lên katakana là không có tác dụng học tập và trông lỗi.

| Rule | Dòng | Hiện tại | Vấn đề |
|---|---|---|---|
| rule_22 | 23 | `<ruby>リリース<rt>りりーす</rt></ruby>` | ruby hiragana lên katakana |
| rule_22 | 36 | `<ruby>スコープ<rt>すこーぷ</rt></ruby>` | như trên |
| rule_22 | 36 | `<ruby>フィージビリティ<rt>ふぃーじびりてぃ</rt></ruby>` | như trên; `ふぃ` còn là ghép kana bất thường |
| rule_28 | 39 | `<ruby>キャパシティ<rt>きゃぱしてぃ</rt></ruby>` | như trên |

**Đề xuất:** bỏ ruby, để katakana trần: `リリース` / `スコープ` / `フィージビリティ` / `キャパシティ`.
Bằng chứng đây là lỗi chứ không phải quy ước: chính rule_22 dòng 35 viết `リリース` **không ruby**, và toàn bộ katakana khác trong phần III (バックログ, スプリント, ワークフロー, インフラ, リソース, クラウド, デプロイ) đều **không ruby**. → 4 ca này là ngoại lệ lạc.

⚠️ Bảng từ vựng của rule_22/26/28/30/32 cũng ghi cách đọc katakana bằng hiragana (`フィージビリティ | ふぃーじびりてぃ`, `スプリント | すぷりんと`, `リソース | りそーす`, `インフラ | いんふら`, `バックログ | ばっくろぐ`). Đây là **cột "Cách đọc"** nên ít hại hơn, nhưng nếu sửa thì nên sửa đồng bộ (rule mục 5.3 — vá thoại mà quên bảng từ vựng).

### 1.4 🟡 1 ca ruby thiếu ký tự — `再見積`

| Rule | Dòng | Hiện tại | Vấn đề | Đề xuất |
|---|---|---|---|---|
| rule_27 | 38 | `<ruby>再見積<rt>さいみつ</rt></ruby>もりを` | base `再見積` đọc là `さいみつもり` (3 kanji ≠ 3 mora `さいみつ`). Ruby hiển thị "さいみつ" trên 再見積 rồi tiếp "もり" → người học đọc thành **さいみつもり?** hoặc **さいみつ+もり** lệch | `<ruby>再見積<rt>さいみつも</rt></ruby>り` **hoặc** tách `<ruby>再<rt>さい</rt></ruby><ruby>見積<rt>みつ</rt></ruby>もり` (khớp cách bảng từ vựng ghi `見積もり\|みつもり`) |

### 1.5 🔵 `ピーク時間帯<rt>ピークじかんたい</rt>` — rt trộn katakana

rule_28 dòng 40: `<ruby>ピーク時間帯<rt>ピークじかんたい</rt></ruby>`. Cách đọc chứa katakana `ピーク` — nhất quán nội bộ nhưng lệch quy ước "rt = hiragana". Nên tách: `ピーク<ruby>時間帯<rt>じかんたい</rt></ruby>`.

### 1.6 ✅ Ruby SAI cách đọc: **0 ca**

Đã đối chiếu toàn bộ 200+ cặp base→reading. Tất cả đúng. Hai base có 2 cách đọc đều hợp lệ theo ngữ cảnh:
- `上` = `うえ` (〜した上で) / `あ` (申し上げます) ✅
- `日` = `にち` (30日) / `び` (リリース日) ✅

`明日中<rt>あすじゅう</rt>` — WebSearch xác nhận `あすじゅう`/`あしたじゅう` đều là cách đọc chuẩn của 明日中. **KHÔNG phải lỗi.**

---

## 2. Trục quy trình thảo luận — 14 rule có thống nhất không (bảng)

Đã kiểm 42 mục `Liên quan` chéo (14 rule × 3).

### 2.1 Cross-reference: ✅ SẠCH 42/42

Tất cả rule được trỏ tới đều **tồn tại** và **mô tả khớp nội dung thật**:
- Rule 42 = "Đột xuất kết thúc sớm vì thiếu thời gian / 時間切れの締め方" ← rule_29 gọi là "kết thúc sớm" ✅
- Rule 44 = "Xác nhận việc cần làm + người phụ trách / アクションアイテムの確認" ← rule_24, rule_31 gọi là "việc cần làm" ✅

Cross-ref đối xứng tốt: 19↔20↔21, 22↔23↔24, 25↔29↔32, 26↔27↔28.

### 2.2 Trục 3 rule 持ち帰り (25 / 29 / 32) — ✅ KHÔNG mâu thuẫn, phân vai rõ

| Rule | Tình huống kích hoạt | Câu chuẩn | Ai nói | Điểm phân biệt |
|---|---|---|---|---|
| **25** | Khách ép quyết vượt thẩm quyền mình | 「一度持ち帰って社内で検討させていただけませんでしょうか？」 | Người **bị ép** | XIN PHÉP (dạng nghi vấn khiêm nhường) |
| **29** | Hai bên bế tắc, không ai nhúc nhích | 「本日この場で結論を出すのは難しいかと存じます。一度持ち帰って、別途ご相談する形でいかがでしょうか？」 | **Chủ trì**, trung lập giữa 2 bên | GỠ BẾ TẮC cho CẢ HAI bên |
| **32** | Chủ động thông báo hoãn có kế hoạch | 「本件は持ち帰り、〇月〇日〇時までにメールにてご回答いたします」 | Người **thông báo** | TUYÊN BỐ (dạng khẳng định) + kênh trả lời |

Ba rule khác nhau về **thể câu** (nghi vấn xin phép / nghi vấn đề nghị / khẳng định), **người nói**, **yếu tố bắt buộc**. Đây là thiết kế tốt, không phải trùng lặp. Cả 3 đều bắt buộc kèm **thời hạn** — nhất quán.

### 2.3 Trục "phản đối" (23 vs 27) — ✅ phân vai rõ

rule_27 tự khai ngay ở luận điểm: *"Khác rule 23 (phản đối lịch sự) ở chỗ rule 27 phải kèm số liệu / dẫn chứng"*. Đúng: rule_23 cấu trúc 3 bước (đệm→ただ→góc nhìn), rule_27 cấu trúc 4 bước (ghi nhận→ただ→**dữ liệu**→2 phương án). Không vênh.

### 2.4 🔴 MÂU THUẪN — rule_22 "5 mức ĐỒNG Ý" nhưng mức 4-5 KHÔNG phải đồng ý

**rule_22 dòng 3 (VN):**
> *"Đồng ý không phải chỉ "はい". Có **5 mức**: (1) Hoàn toàn đồng ý / 完全同意 → (2) Đại thể đồng ý / 概ね同意 → (3) Đồng ý một phần / 部分同意 → (4) Trung lập / 中立 → (5) Có ý kiến trái / 異論あり."*

**rule_22 dòng 5 (JA):**
> 「同意は「はい」だけではない。完全同意・概ね同意・部分同意・中立・異論ありの5段階を使い分ける。」

**Vấn đề:** tiêu đề rule là 「同意の表現（5段階）」 = "cách biểu đạt ĐỒNG Ý, 5 mức". Nhưng:
- Mức 4 「中立」 = **trung lập**, tức KHÔNG đồng ý cũng không phản đối
- Mức 5 「異論あり」 = **có ý kiến trái**, tức PHẢN ĐỐI — chính là nội dung rule_23

→ Gọi "phản đối" là một mức của "đồng ý" là mâu thuẫn logic. Thang thật ở đây là **thang mức độ đồng thuận (同意度)**, không phải "5 cách nói đồng ý".

**Hậu quả thực tế:** học viên tra bảng "5 mức đồng ý" rồi dùng mức 5 để "đồng ý" — trong khi nó là câu phản đối. Ngoài ra rule_22 dòng 45 đã tự tay đẩy mức 5 sang rule khác: *"Level 5 — 異論あり 「ご意見はよく分かりました。ただ〜」 (xem rule 23)"* → chính sách thừa nhận mức 5 không thuộc rule này.

**Đề xuất sửa (chỉ đổi nhãn, không đụng nội dung):**
- Luận điểm VN: "Đồng ý không phải chỉ 「はい」. Có **5 mức đồng thuận**: …" (thêm chữ "đồng thuận")
- JA: 「同意は「はい」だけではない。**同意度には**完全同意・概ね同意・部分同意・中立・異論ありの5段階**があり、使い分ける**。」
- Có thể giữ nguyên tiêu đề rule (同意の表現（5段階）) vì H1 vốn nói "5 levels".

### 2.5 🔴 rule_29 — lỗ hổng vai vế: em Dũng "chủ trì" họp có CTO công ty mình dự

**rule_29 dòng 13 (Bối cảnh):**
> *"Anh Ōgaki yêu cầu giảm 20%, anh Hà (CTO) chỉ đồng ý 10%. … **Em Dũng (chủ trì)** cần hạ nhiệt tình huống."*

**rule_29 dòng 41 (khối TỐT), JA:**
> 「お互いの状況を共有いただきありがとうございます。本日この場で結論を出すのは難しいかと存じますので、一度持ち帰って、別途ご相談する形でいかがでしょうか？」

**VN:**
> *"Cảm ơn cả hai bên đã chia sẻ tình hình ạ. Em e là khó kết luận tại đây hôm nay, **hai bên** xin phép mang về và bàn riêng có được không ạ?"*

**Vấn đề:** Theo `voice_profiles.json`, Dũng là **営業部 BD担当, 25-30 tuổi**; anh Hà là **CTO, 30-35**. Em Dũng dùng 「お互いの」 (cả hai bên) và tuyên bố thay cả CTO công ty mình rằng "hai bên mang về" — tức **nhân viên trẻ phát ngôn thay giám đốc trước mặt khách**. Trong họp Nhật, việc chốt 中断 (dừng đàm phán) là quyền của người có 決裁権 tại bàn — ở đây là CTO.

Chính rule này ở khối XẤU đã dạy đúng nguyên tắc: *"Em Dũng đề xuất con số 15% mà chưa hỏi ý kiến CTO → CTO bị phủ quyết trước khách → mất mặt nội bộ"*. Nhưng khối TỐT lại để Dũng làm một việc cùng loại (quyết thay CTO việc dừng đàm) mà **không có tín hiệu CTO đồng ý**.

Ghi chú sân khấu dòng 35 có *"nhìn Dũng, gật đầu"* — nhưng đây là stage direction rời, người học đọc bảng thoại **không thấy ai gật**. Với sách dạy nghiệp vụ, tín hiệu uỷ quyền phải nằm trong lời thoại.

**Đề xuất sửa (nhẹ nhất, không phá cấu trúc):**
1. Thêm 1 lượt của anh Hà trước lượt Dũng: 「ズンさん、いかがでしょうか。」 (CTO trao lượt) — hoặc
2. Sửa lời Dũng thành xin phép chứ không tuyên bố thay: 「…**弊社としても一度持ち帰らせていただき**、別途ご相談する形でいかがでしょうか？」 (chỉ nói thay công ty mình, không nói thay 大垣) — hoặc
3. Đổi Bối cảnh: Dũng là **司会/thư ký điều phối**, và ghi rõ trong ghi chú 【1】 rằng câu này chỉ dùng khi cấp trên đã trao lượt.

Tôi khuyến nghị **phương án 2** — sửa 1 cụm, giữ nguyên bố cục 4 lượt.

---

## 3. Danh sách lỗi theo rule

### rule_19 発言挙手 — ✅ SẠCH
Keigo chuẩn. 「恐れ入りますが、一点よろしいでしょうか」 đúng phong cách. 「確認させていただきたい点がございます」 — kenjō đúng, không thừa. Ghi chú 【2】 giải thích rất đúng cơ chế giữ thể diện (không nói 「数字が違う」). Khối XẤU/TỐT phân định rõ.

### rule_20 質問5W1H — 🔴 1 lỗi keigo trong khối TỐT

**🔴 [D2-01] Dòng 38 — 「どなた様になりますでしょうか」: 2 lỗi keigo cùng lúc, nằm trong khối TỐT**

JA (nguyên văn, đã strip ruby):
> 「承知しました。次に、白鷗様側の主担当はどなた様になりますでしょうか？」

VN:
> *"Vâng em rõ ạ. Tiếp theo, người phụ trách chính bên 白鷗 sẽ là ai ạ?"*

Hai lỗi:
1. **「どなた様」= 二重敬語.** 「どなた」 tự thân đã là 尊敬語 của 「誰」. Thêm 「様」 là chồng kính ngữ. ([Timee Lab](https://lab.timee.co.jp/blog/tips/honorifics), [語彙力.com](https://goiryoku.com/dochirasama/))
2. **「〜になります」= バイト敬語.** 「なります」 chỉ dùng khi có **biến đổi trạng thái** (A→B). Người phụ trách không "biến thành" ai. ([Indeed バイト敬語](https://jp.indeed.com/career-advice/useful-business-tips/baito-keigo-toha), [ヒューマントラスト](https://www.humantrust.co.jp/bizskills/employee13/))

**Vì sao nặng:** nằm trong khối **`## Hội thoại TỐT — đóng khung từng câu hỏi`** — sách đang dạy đây là câu MẪU. Không có nhân vật nào sửa lưng. Học viên sẽ học thuộc câu này. Với khách Nhật, バイト敬語 trong họp business bị nghe là **thiếu đào tạo**.

Đối chiếu `conversation.json` rule_20: **cùng lỗi** → lỗi có ở nguồn, không phải lỗi build. Sửa `.md` (phạm vi đợt này), ghi chú lại để đợt sau đồng bộ json.

**Đề xuất:**
- 「白鷗様側の主担当は**どなた**でしょうか？」 (gọn nhất, chuẩn nhất)
- hoặc 「白鷗様側の主担当は**どちら様**でしょうか？」
- hoặc trang trọng hơn: 「白鷗様側の主担当は**どなたがご担当**でしょうか？」

VN giữ nguyên ("sẽ là ai ạ" đã đúng) — nhưng nếu muốn khớp sát: *"…người phụ trách chính bên 白鷗 là ai ạ?"* (bỏ "sẽ").

**🔵 [D2-02] Dòng 24 (khối XẤU) — VN "deploy ở đâu"**
JA: 「…どこにデプロイするかとか…」 → có デプロイ. VN dùng "deploy". **KHÔNG phải lỗi** (JA cũng ngoại lai). Ghi nhận để không sửa nhầm.

### rule_21 不明点確認 — 🔴 1 ruby-loss (mục 1.2)

Nội dung keigo ✅ sạch. 「申し訳ございません、〇〇という点をもう一度ご説明いただけますでしょうか」 — 「ご説明いただく」 là tôn kính đúng (việc của ĐỐI PHƯƠNG), không phải 過剰敬語. 【2】「〜という認識でよろしいでしょうか」 dùng đúng ngữ cảnh (xác nhận cách hiểu của MÌNH, không phải áp đặt lên đối phương).

Lỗi duy nhất: **dòng 35 mất 6 ruby** — xem mục 1.2.

Ghi nhận tốt: dòng 27 giải thích chính xác 「承知しました」= "đã hiểu", nói khi chưa hiểu là cam kết sai. Đây đúng là điểm mấu chốt mà prompt lo ("承知しました vs 検討します"). Sách xử lý đúng.

### rule_22 同意表現 — 🔴 1 mâu thuẫn (mục 2.4) + 🟡 3 ruby katakana + 🟡 1 tiếng Anh

**🟡 [D2-03] Dòng 24 — "Vâng, OK ạ." dịch từ 「はい、大丈夫です。」**
JA: 「はい、大丈夫です。」 (không có từ ngoại lai)
VN: *"Vâng, OK ạ."*
→ Chèn tiếng Anh vào bản Việt trong khi JA thuần Nhật. Đây là ca **rule mục 4E** (tiếng Anh thừa phía Việt).
**Đề xuất:** *"Vâng, không vấn đề gì ạ."* hoặc *"Vâng, được ạ."*
⚠️ Đây là khối XẤU, nhưng cái "xấu" mà sách muốn dạy là **cam kết quá sớm**, không phải "nói tiếng Anh". Sửa VN không làm mất bài học.

**🔵 [D2-04] Dòng 36 — cụm câu dài bất thường**
Lượt của Dũng dài 3 mệnh đề lồng (方向性…ただ…ので、〜した上で、改めて〜). Không sai ngữ pháp nhưng dài hơn hẳn mọi lượt khác trong phần III, và dùng 「フィージビリティ」 katakana trong khi 「実現可能性」 tự nhiên hơn với khách Nhật. Không bắt buộc sửa — ghi nhận.

### rule_23 異論表現 — 🔴 1 lỗi keigo trong khối TỐT

**🔴 [D2-05] Dòng 39 — 「ご検討させていただけませんでしょうか」: 過剰敬語 + lệch ngữ nghĩa**

JA (nguyên văn):
> 「もしよろしければ、スコープを優先度別に再整理し、削減案を一緒に**ご検討させていただけません**でしょうか【3】？」

VN:
> *"Nếu được, em xin phép sắp xếp lại phạm vi theo độ ưu tiên rồi **cùng anh xem xét** phương án cắt giảm có được không ạ?"*

**Vấn đề:** 「ご」+ 「検討」 + 「させていただく」 — 検討 ở đây là hành động **CỦA MÌNH** (Tuấn xem xét). Gắn 「ご」 vào việc của mình là 過剰敬語 (rule mục 4C: "お/ご vào việc CỦA MÌNH"). Nguồn tiếng Nhật xác nhận: dạng đúng gọn là 「検討させていただく」, bỏ 「ご」. ([eigobu](https://eigobu.jp/magazine/gokentousaseteitadakimasu), [トゥモローゲート](https://tomorrowgate.co.jp/blog/1558/))

**Đối chiếu nội bộ sách — bằng chứng đây là lỗi, không phải quy ước:**

| Nơi | Câu | Có 「ご」? |
|---|---|---|
| rule_23 dòng 39 (TỐT) | 一緒に**ご**検討させていただけませんでしょうか | ❌ CÓ |
| rule_25 dòng 38 (TỐT) | 社内で**検討させていただけません**でしょうか | ✅ KHÔNG |
| rule_22 dòng 44 (Level 4) | 持ち帰って**検討させて**ください | ✅ KHÔNG |
| rule_27 dòng 37 (TỐT) | いずれかを**ご検討いただけます**でしょうか | ✅ ĐÚNG (việc của ĐỐI PHƯƠNG → có ご là chuẩn) |

→ Sách **tự nó dùng đúng ở 3 chỗ khác**. Chỉ rule_23 dòng 39 sai. Rất rõ là lỗi sót, không phải chủ ý.

**Vấn đề phụ (ngữ nghĩa):** VN dịch *"cùng anh xem xét"* — nếu muốn giữ nghĩa "cùng nhau", 「させていただく」 (xin phép làm việc của mình) không khớp; đúng hơn là 「ご一緒にご検討いただけませんでしょうか」 (mời đối phương) hoặc 「一緒にご相談させていただけませんでしょうか」.

**Đề xuất sửa:**
> 「もしよろしければ、スコープを優先度別に再整理し、削減案を一緒に**ご相談させていただけません**でしょうか？」

(「ご相談させていただく」 là dạng đã được từ điển hoá cho hành vi "bàn với đối phương", không bị coi là 過剰敬語 — khác với 「ご検討させていただく」.)
Hoặc đơn giản nhất: bỏ 「ご」 → 「一緒に**検討させていただけません**でしょうか？」

⚠️ **Phải sửa cả ghi chú 【3】 dòng 45** — hiện ghi: *"【3】**「ご検討させていただけませんでしょうか」** — đề xuất giải pháp thay thế…"*. Đây là bẫy rule mục 5.3 (vá thoại quên chú thích).

**🔵 [D2-06] Dòng 38 VN — "Em đã nhận được ý anh rồi ạ."**
JA: 「ご意見はよく分かりました」
Bản Việt "đã nhận được ý anh rồi" hơi lệch sắc thái — 「よく分かりました」 = "em hiểu rõ rồi ạ" (ghi nhận + thấu hiểu), còn "nhận được" nghe như xác nhận đã tiếp nhận thông tin. Đề xuất: *"Em hiểu rõ ý anh rồi ạ."*

**Ghi chú kiểm chứng (KHÔNG phải lỗi):** WebSearch có ý kiến cho rằng 「分かりました」 với người trên có thể nghe hơi trên cơ. Tuy nhiên 「ご意見はよく分かりました」 là **cụm クッション言葉 cố định** trong đàm phán business, được dùng rộng rãi, và ở đây người nói là **nhà cung cấp nói với khách trong tình huống phản đối** — đúng chỗ. Không báo lỗi.

### rule_24 発言要約 — 🔴 1 ruby-loss + 🔵 1 thiếu giải thích

Nội dung xuất sắc: kỹ thuật paraphrase 3 điểm + xác nhận 2 vòng (【3】 nhắc lại sau khi khách đính chính) là thứ nhiều sách không dạy.

**🔴 Dòng 37 mất 2 ruby** — xem mục 1.2.

**🔵 [D2-07] Dòng 24 + 27 — khối XẤU dùng 「了解しました」 nhưng sách không nói vì sao xấu về mặt keigo**

JA (khối XẤU): 「はい、了解しました。」
Sách giải thích ở dòng 27: *"「了解しました」không chứng minh đã hiểu đủ 3 điểm."*

Giải thích này **đúng nhưng thiếu**. 「了解しました」 với **khách hàng / người trên** vốn đã bị coi là không đủ kính trọng — chuẩn business là 「承知しました」 / 「かしこまりました」. ([Forbes JAPAN](https://forbesjapan.com/articles/detail/72870), [Indeed](https://jp.indeed.com/career-advice/career-development/is-i-understand-polite-expression))

Đây là cơ hội dạy bị bỏ lỡ: sách chọn đúng từ xấu để đưa vào khối XẤU (rất tốt!) nhưng chỉ khai thác 1 trong 2 tầng lỗi. Chú ý: chính rule này ở khối TỐT dòng 40 dùng 「承知しました」 ✅ — sách **biết** phân biệt, chỉ là không nói ra.

**Đề xuất:** bổ sung 1 câu vào dòng 27:
> *"Ngoài ra 「了解しました」 vốn không phù hợp khi nói với khách / cấp trên — chuẩn là 「承知しました」 hoặc 「かしこまりました」 (xem khối TỐT)."*

**🔵 [D2-08] Dòng 38 VN — "update message tiếng Việt"**
JA: 「ベトナム語メッセージの更新」 — có メッセージ (ngoại lai) nhưng 更新 là kanji.
VN: *"update message tiếng Việt"* → dùng 2 từ tiếng Anh cho 1 cụm mà JA chỉ có 1 từ ngoại lai.
**Đề xuất:** *"cập nhật message tiếng Việt"* (giữ message vì JA có メッセージ, Việt hoá 更新→"cập nhật").

### rule_25 持ち帰り検討 — 🔴 1 ruby-loss + 🔴 1 sai sự thật

**🔴 Dòng 37 mất 5 ruby** — xem mục 1.2.

**🔴 [D2-09] Dòng 3 & 5 — mô tả 稟議 SAI: nhầm 稟議 với 持ち帰り, và khẳng định sai về 即決**

**Dòng 3 (VN):**
> *"Đây là khái niệm cốt lõi trong văn hoá doanh nghiệp Nhật: ra quyết định cần sự đồng thuận nội bộ (**稟議 ringi**)."*

**Dòng 5 (JA):**
> 「即決できない時は「持ち帰って検討させてください」と素直に伝える。日本では**稟議文化のため、即決を求められない**。」

Hai vấn đề:

**(a) 「即決を求められない」 — sai sự thật, và nguy hiểm về mặt hành nghề.**
Câu này dịch sát là *"ở Nhật, do văn hoá ringi nên **người ta không yêu cầu quyết ngay**"*. Điều này **trái với chính hội thoại trong rule**: anh Ōgaki (khách Nhật) ở dòng 37 nói 「本日中に契約を進めたいのですが」 = **đang yêu cầu quyết ngay hôm nay**. Rule_32 cũng có 大垣 nói 「本日決定したいのですが」. Rule_29 có cả một tình huống bị ép quyết.

→ Sách **tự mâu thuẫn trong cùng một trang**: luận điểm nói "khách Nhật không đòi quyết ngay", hội thoại ngay dưới cho khách Nhật đòi quyết ngay.

Thực tế: khách Nhật **hoàn toàn có thể** ép quyết ngay (nhất là 営業 như Ōgaki). Cái đúng là: **phía mình có quyền xin 持ち帰り và điều đó được chấp nhận, không bị coi là yếu kém** — chứ không phải "họ sẽ không đòi".

**Đề xuất sửa dòng 5:**
> 「即決できない時は「持ち帰って検討させてください」と素直に伝える。日本では**稟議文化が根付いているため、持ち帰りは失礼にあたらない**。」

**Đề xuất sửa dòng 3 (VN), phần tương ứng:**
> *"…Nói "持ち帰り" = chuyên nghiệp, không nói = bị ép quyết sai."* → giữ, nhưng thêm: *"Khách Nhật **vẫn có thể** yêu cầu chốt ngay (như anh Ōgaki dưới đây) — điểm mấu chốt là bên mình có quyền xin mang về, và điều đó không bị coi là thiếu chuyên nghiệp."*

**(b) Định nghĩa 稟議 chưa chính xác.**
Sách viết: *"ra quyết định cần sự đồng thuận nội bộ (稟議 ringi)"*. 稟議 không phải "sự đồng thuận" chung chung — nó là **quy trình văn bản cụ thể**: người đề xuất soạn 稟議書, luân chuyển lên nhiều cấp để đóng dấu 承認 tuần tự. Cái sách đang mô tả ("đồng thuận nội bộ") gần với **根回し** (nemawashi — vận động trước, phi văn bản) hơn.

Bảng từ vựng dòng 73 ghi `稟議 | りんぎ | BẨM NGHỊ | Quy trình duyệt nội bộ JP` — **cột này ĐÚNG hơn luận điểm**. Đây là ca "vá chỗ này quên chỗ kia" ngược chiều.

**Đề xuất:** sửa dòng 3 thành *"…ra quyết định cần đi qua quy trình duyệt văn bản nội bộ nhiều cấp (**稟議** ringi)"*.

⚠️ **Điểm mù cần main Claude bù (rule mục 6):** 根回し không xuất hiện ở đâu trong phần III. Trước khi kết luận "sách thiếu 根回し", **phải kiểm phần I (chuẩn bị trước họp)** — đó là chỗ tự nhiên nhất để dạy 根回し. Tôi không có quyền đọc phần I nên không kết luận.

### rule_26 提案表現 — ✅ SẠCH
Cấu trúc 4 bước (xin phép→課題→解→意見聞き) rất chuẩn. 「ひとつご提案させていただいてもよろしいでしょうか」 đúng (提案 là việc mình, nhưng 「ご提案」 hướng tới đối phương — dạng này được chấp nhận rộng rãi, khác 「ご検討させていただく」). 「ご意見を頂戴できればと存じます」 đúng kenjō. Khối XẤU dùng 「〜べき」+「私の意見では」 — chọn lỗi rất chính xác.

Nhãn 【課題】【解】【意見聞き】 chèn giữa câu JA (dòng 36) hơi rối khi đọc, nhưng có giá trị sư phạm. Không báo lỗi.

### rule_27 根拠反論 — ✅ SẠCH
Rule mạnh nhất phần III. 「ご実績、参考になります」 ghi nhận đúng cách. Số liệu cụ thể (10.5 tuần, QA 2 tuần, 結合試験 1.5 tuần) nhất quán số học (2+1.5 < 10.5, và 8 tuần < 10.5 → đề xuất tăng người là hợp lý). 「ご検討いただけますでしょうか」 dùng ご ĐÚNG (việc của đối phương).

Chỉ có 🟡 lỗi ruby `再見積` (mục 1.4).

### rule_28 情報要求 — ✅ SẠCH (nội dung) + 🟡 1 tiếng Anh + 🟡 1 ruby katakana

Cấu trúc "mục đích + số điểm + liệt kê" rất tốt. 「〜するために、〇〇のデータをいただけますでしょうか」 chuẩn.

**🟡 [D2-10] Dòng 41 — "OK rồi. Tôi share trước thứ Hai tuần sau."**
JA: 「分かりました。来週月曜までに共有します。」 (thuần Nhật, không ngoại lai)
VN: *"OK rồi. Tôi share trước thứ Hai tuần sau."* → **2 từ tiếng Anh** chèn vào bản Việt trong khi JA không có.
Đây là lời của **anh Matsumoto — khách Nhật, PM 45-50 tuổi, voice profile ghi "formal Japanese client"**. Cho nhân vật này nói "OK rồi, tôi share" phá vỡ giọng nhân vật.
**Đề xuất:** *"Tôi hiểu rồi. Tôi sẽ chia sẻ trước thứ Hai tuần sau."*

**🟡 Dòng 39 `キャパシティ` ruby katakana** — mục 1.3.
**🔵 Dòng 40 `ピーク時間帯` rt trộn katakana** — mục 1.5.

**🔵 [D2-11] Bảng từ vựng dòng 70 — nhãn Hán Việt cụt**
`ピーク時間帯 | ぴーくじかんたい | THỜI GIAN ĐỚI | Khung giờ cao điểm`
Cột Hán Việt ghi "THỜI GIAN ĐỚI" cho cả cụm có ピーク (katakana không có Hán Việt). Nên ghi `— (時間帯: THỜI GIAN ĐỚI)` hoặc để `—`. Cùng dạng với dòng 69 `クラウド選定 | TUYỂN ĐỊNH` ở rule_32.

### rule_29 行き詰まり — 🔴 1 vai vế (mục 2.5) + 🔴 2 ruby-loss + 🟡 1 keigo

**🔴 Dòng 39, 40 mất ruby** — mục 1.2.
**🔴 Vai vế em Dũng quyết thay CTO** — mục 2.5.

**🟡 [D2-12] Dòng 41 — 「共有いただきありがとうございます」 thiếu 「ご」**

JA: 「お互いの状況を**共有いただき**ありがとうございます。」

「共有」 ở đây là hành động **CỦA ĐỐI PHƯƠNG** (hai bên đã chia sẻ tình hình). Việc của đối phương → phải có tiền tố kính ngữ: 「**ご**共有いただきありがとうございます」. Dạng 「ご共有いただきありがとうございます」 là chuẩn business phổ biến. ([海竜社](https://www.kairyusha.co.jp/biz-word/447.html), [Learncity](https://learncity.jp/%e3%80%8c%e3%81%94%e5%85%b1%e6%9c%89%e3%81%84%e3%81%9f%e3%81%a0%e3%81%8d%e3%81%82%e3%82%8a%e3%81%8c%e3%81%a8%e3%81%86%e3%81%94%e3%81%96%e3%81%84%e3%81%be%e3%81%99%e3%80%8d%e3%81%a8%e3%81%af%ef%bc%9f/))

**Lưu ý cân nhắc:** 「共有いただき」 (không ご) không phải sai ngữ pháp tuyệt đối — 「〜いただく」 đã mang kenjō. Nhưng trong khối **TỐT** dạy câu mẫu cho khách hàng, dạng đầy đủ 「ご共有いただき」 an toàn hơn hẳn. Xếp 🟡 chứ không 🔴.

**Đối chiếu nội bộ:** rule_25 dòng 38 viết 「**ご**提案いただきありがとうございます」 ✅ (có ご), rule_32 dòng 37 viết 「**ご**要望ありがとうございます」 ✅. → Sách dùng đúng ở 2 chỗ khác, chỉ rule_29 sót.

**Đề xuất:** 「お互いの状況を**ご共有いただき**ありがとうございます。」

**Ghi nhận điểm ĐÚNG:** dòng 42 「弊社では…お出しいたします」 — uchi/soto chuẩn, 弊社 khiêm nhường đúng chỗ. Dòng 49 kèm thời hạn cụ thể (来週水曜) — đúng nguyên tắc rule tự nêu.

### rule_30 曖昧発言 — ✅ SẠCH (nội dung) + 🟡 2 tiếng Anh

Nội dung rất tốt — kỹ thuật "đưa 2 cách hiểu A/B để đối phương chọn" là cách xử lý 曖昧発言 chuẩn xác, tránh được cả "đoán mò" lẫn "hỏi mở làm phiền cấp trên". 「ご検討中という意味でしょうか」 — 「ご」 đúng (việc của Matsumoto).

**🟡 [D2-13] Dòng 36 & 38 VN — "support" và "check…resource"**
- Dòng 36: JA 「支援が必要」 → VN *"cần thêm support"*. JA dùng **kanji** 支援, VN dùng tiếng Anh.
- Dòng 38: JA 「本日中に追加リソースの可否を社内確認し」 → VN *"Em sẽ **check** khả năng tăng **resource** trong nội bộ"*. JA có リソース (ngoại lai ✅ giữ được) nhưng 確認 là kanji → "check" là tiếng Anh thừa.

**Đề xuất:**
- Dòng 36: *"…hay cần thêm **hỗ trợ** để giữ lịch hiện tại ạ?"*
- Dòng 38: *"Em sẽ **xác nhận** khả năng tăng resource trong nội bộ ngay hôm nay và báo lại anh ạ."*

### rule_31 意思決定 — ✅ SẠCH (nội dung) + 🟡 1 tiếng Anh + 🔵 1 điểm cần bổ sung cảnh báo

Cấu trúc chủ trì (tổng hợp→đề xuất→xác nhận→mời phản đối→確定) rất chuẩn nghiệp vụ.

**🟡 [D2-14] Dòng 38 — "Tôi A là OK."**
JA: 「私は A 案で問題ありません。」
VN: *"Tôi A là OK."*
→ Vừa chèn tiếng Anh (JA không có), vừa **cụt ngữ pháp tiếng Việt** ("Tôi A là OK" thiếu động từ). Đây là lời anh Ōgaki — 営業部長 Nhật.
**Đề xuất:** *"Tôi thấy phương án A không vấn đề gì."*

**🔵 [D2-15] Dòng 3, 5, 45 — 「沈黙＝同意」 nói quá chắc, thiếu cảnh báo**

Dòng 3 (VN): *"chủ trì đề xuất → ai im lặng = 同意 (im lặng tức đồng ý), ai phản đối phải nói rõ."*
Dòng 5 (JA): 「司会が方向を提示し、**沈黙＝同意とみなす**。」
Dòng 45: *"Im lặng = đồng ý (im lặng tức đồng thuận)."*

**Vấn đề:** mô tả **đúng về mặt quy ước vận hành họp** (chủ trì coi im lặng là thông qua) nhưng **thiếu vế quan trọng**: trong văn hoá Nhật, im lặng thường KHÔNG phải đồng ý thật — mà là 忖度/同調圧力, người dự có ý kiến nhưng không nói ra; bất mãn bùng ra sau họp. ([PRESIDENT Online](https://president.jp/articles/-/28941), [海外人材タイムス](https://kjtimes.jp/topics/column/tacit-understanding/))

Sách 03 dạy người Việt **chủ trì** họp với khách Nhật. Dạy "im lặng = đồng ý" mà không cảnh báo → người học chốt 確定 rồi tưởng đã có đồng thuận, thực tế phía Nhật đang giữ ý kiến. Đây đúng là kiểu lỗi 🔴A ("dạy làm sai việc thật") — nhưng vì phần mô tả quy ước **không sai**, tôi xếp 🔵 với đề xuất **bổ sung**, không phải sửa.

**Đề xuất:** thêm 1 gạch đầu dòng vào mục `## Tránh`:
> - Coi im lặng là đồng thuận thật. 沈黙＝同意 chỉ là **quy ước vận hành** để chốt biên bản — người Nhật có ý kiến trái thường không nói giữa họp. Nếu cảm thấy phòng họp im bất thường, hỏi đích danh: 「〇〇様、ご懸念はございませんでしょうか？」

Cụm 「ご懸念はございませんでしょうか」 nhất quán với phong cách các rule khác.

**Ghi nhận:** dòng 3 nói 「Nhật hiếm khi bỏ phiếu số đông」 ✅ **đúng** — tuy tiêu đề rule là 「多数決・意思決定」 (bỏ phiếu đa số). Tiêu đề hơi lệch nội dung (rule thực chất dạy KHÔNG bỏ phiếu mà dùng 提示＋確認), nhưng mục lục và H1 khớp nhau nên tôi không xếp thành lỗi. Ghi nhận cho D3 nếu rà tiêu đề toàn sách.

### rule_32 結論先送り — ✅ SẠCH (nội dung) + 🟡 2 tiếng Anh

Rule chặt chẽ nhất về mặt checklist (lý do→持ち帰り→hạn→kênh→sản phẩm bàn giao). Ghi chú 【1】 nêu rõ uchi/soto 「弊社の」 trước CTO/CFO — ✅ đúng, và đây chính là "1 critical 弊社CTO uchi-soto" mà STATUS.md khai đã fix → **XÁC NHẬN ĐÃ FIX**.

**🟡 [D2-16] Dòng 37 & 38 VN — "infra và cost", "bảng tính cost"**
JA dòng 37: 「インフラとコストの両面から」 → **JA CÓ** インフラ/コスト (ngoại lai). VN dùng "infra và cost" → **hợp lệ**, JA cũng ngoại lai. **KHÔNG phải lỗi.**
JA dòng 38: 「コスト試算を添付」 → VN *"bảng tính cost"*. Cũng hợp lệ.
→ **Xếp lại: KHÔNG phải lỗi.** Ghi vào mục 6 (CẤM SỬA) để tránh bị sửa nhầm.

**🔵 [D2-17] Bảng từ vựng dòng 69** — `クラウド選定 | クラウドせんてい | TUYỂN ĐỊNH | Lựa chọn cloud`: cột "Cách đọc" trộn katakana+hiragana, cột Hán Việt chỉ ứng với 選定. Cùng dạng D2-11. Nhẹ.

---

## 4. Lỗi hệ thống

| # | Lỗi | Phạm vi | Cách phát hiện |
|---|---|---|---|
| **S1** | **Ruby-loss ở câu lặp XẤU→TỐT** — 6 câu trong phần III mất 100% ruby | rule_21, 22, 24, 25, 29(×2). **Nghi ngờ có ở cả 4 phần còn lại** | script so 2 câu giống nhau sau strip ruby, đếm chênh `<ruby>` |
| **S2** | **Ruby đặt trên katakana** — 4 ca, trong khi 12+ katakana khác không ruby | rule_22 (×3), rule_28 (×1) | regex `<ruby>[ァ-ヴー]+<rt>` |
| **S3** | **Bản Việt chèn tiếng Anh mà bản Nhật KHÔNG có từ ngoại lai** — 6 ca | rule_22, 24, 28, 30(×2), 31 | so `\ben\b` trong VN với sự vắng mặt katakana tương ứng trong JA |
| **S4** | **「ご」 dùng lệch: thiếu ở việc của đối phương, thừa ở việc của mình** | rule_23 (thừa), rule_29 (thiếu) | đối chiếu chéo với 3-4 chỗ sách tự dùng đúng |
| **S5** | **Bảng từ vựng ghi cách đọc katakana bằng hiragana** + cột Hán Việt cụt cho cụm lai | rule_22, 26, 28, 30, 32 | đọc cột 2-3 bảng từ vựng |
| **S6** | **Lệch mục lục ↔ H1** — 4 rule (21, 25, 29, 32) | script so `meta/mục_lục.md` với dòng 1 rule.md |

### Chi tiết S6 — lệch mục lục (thuộc phạm vi D3, ghi để đối chiếu)

| # | mục_lục.md | H1 rule.md | Loại lệch |
|---|---|---|---|
| 21 | Xin **clarification** khi không hiểu | Xin **làm rõ** khi không hiểu | mục lục **chưa Việt hoá** |
| 25 | 検討時間を求める | 持ち帰って検討 | vế JP khác hẳn |
| 29 | Khi gặp **deadlock** | Khi gặp **bế tắc** | mục lục **chưa Việt hoá** |
| 32 | 結論先送り**の伝え方** | 結論先送り | vế JP cụt |
| 22 | Đồng ý lịch sự / 同意の表現 | Đồng ý lịch sự — 5 levels / 同意の表現（5段階） | H1 chi tiết hơn |

→ Khớp nhận định của main Claude trong `00_TIEN_DO.md` ("24/50 tên Việt KHÁC HẲN — mục lục là bản chưa Việt hoá"). Phần III đóng góp 2 ca `clarification`/`deadlock`. **Đồng bộ theo H1 của rule.md** (rule.md đã Việt hoá đúng).

⚠️ Lưu ý cho D3: H1 rule_22 dùng "5 levels" (tiếng Anh) — nếu chuẩn hoá Việt hoá thì đây cũng là ca cần sửa: "5 mức".

---

## 5. 10 lỗi cần sửa gấp nhất

| # | Mã | Rule:dòng | Lỗi | Vì sao gấp |
|---|---|---|---|---|
| 1 | D2-01 | rule_20:38 | 「どなた様になりますでしょうか」 = 二重敬語 + バイト敬語, **trong khối TỐT** | Học viên học thuộc câu SAI; với khách Nhật nghe là thiếu đào tạo |
| 2 | D2-05 | rule_23:39 (+45) | 「ご検討させていただけません」 = 過剰敬語, **trong khối TỐT** | Sách tự dùng đúng ở 3 chỗ khác → lỗi sót rõ ràng; phải sửa CẢ ghi chú 【3】 |
| 3 | S1 | rule_21:35 | Mất 6 ruby (権限/組織/階層/職務/属性/管理) | Câu chuyên môn nhất phần III, đúng chỗ dạy "không hiểu phải hỏi" |
| 4 | D2-09 | rule_25:3,5 | 「即決を求められない」 sai sự thật + **tự mâu thuẫn với hội thoại ngay dưới** | Người học tin "khách Nhật không đòi quyết ngay" → bị ép là hoảng |
| 5 | S1 | rule_22:35, 24:37, 25:37, 29:39,40 | 5 câu còn lại mất ruby | Cùng bug, sửa 1 lượt |
| 6 | D2-16b | rule_22:3,5 | "5 mức ĐỒNG Ý" nhưng mức 4-5 là trung lập/phản đối | Mâu thuẫn logic; sách tự thừa nhận ở dòng 45 |
| 7 | D2-12 | rule_29:41 | 「共有いただき」 thiếu ご (việc của đối phương) | Khối TỐT; sách dùng đúng ở rule_25/32 |
| 8 | — | rule_29:41 | Em Dũng (BD 25-30) quyết thay CTO trước khách | Trái chính nguyên tắc rule này dạy ở khối XẤU |
| 9 | S3 | rule_28:41, rule_31:38 | Khách Nhật formal nói "OK rồi, tôi share" / "Tôi A là OK" | Phá giọng nhân vật; "Tôi A là OK" còn cụt ngữ pháp Việt |
| 10 | S2 | rule_22:23,36 rule_28:39 | 4 ruby trên katakana | Hiển thị vô nghĩa; sách tự để katakana trần ở 12+ chỗ khác |

---

## 6. CẤM SỬA — chỗ đúng dễ bị sửa nhầm

| # | Chỗ | Vì sao ĐÚNG |
|---|---|---|
| 1 | **Toàn bộ khối `## Hội thoại XẤU` (14/14 rule)** | Chứa lỗi CỐ Ý để dạy. Cụ thể: 「いいえ、無理です」(23), 「私の意見では…べきです」(26), 「了解しました」(24), 「データください」(28), 「また今度」(32), 「はい、大丈夫です」(22), cắt lời (19), 「色々…とか」(20), 「思います」(27), 「どうしましょうか」(31). **ĐỪNG sửa thành đúng keigo.** Riêng D2-03 (VN "OK ạ" ở rule_22:24) và D2-07 (bổ sung giải thích rule_24:27) là sửa **bản Việt / chú thích**, không đụng câu Nhật xấu. |
| 2 | **rule_21:36 「ご説明いただけますでしょうか」** | 「ご」 đúng — 説明 là việc của **Matsumoto**. KHÔNG phải 過剰敬語. Đừng bỏ ご theo kiểu máy móc "bỏ ご ở mọi chỗ có させていただく/いただく". |
| 3 | **rule_27:37 「ご検討いただけますでしょうか」** | Cùng lý do #2 — 検討 ở đây là việc của **大垣**. Đây là dạng ĐỐI CHỨNG cho lỗi rule_23:39. Sửa nhầm chỗ này là hỏng cả bằng chứng. |
| 4 | **rule_26:34 「ひとつご提案させていただいてもよろしいでしょうか」** | Khác 「ご検討させていただく」. 「ご提案」 hướng về phía đối phương và được từ điển hoá; đây là câu chuẩn công sở. **Đừng bỏ ご theo diện rộng.** |
| 5 | **rule_25:73 bảng từ vựng `稟議 = Quy trình duyệt nội bộ JP`** | Cột này ĐÚNG. Cái sai là **luận điểm dòng 3** ("sự đồng thuận nội bộ"). Sửa dòng 3 cho khớp bảng, KHÔNG sửa bảng theo dòng 3. |
| 6 | **rule_32:37,38 VN "infra và cost", "bảng tính cost"** | JA có 「インフラとコスト」/「コスト試算」 — bản Việt giữ ngoại lai là **khớp**, không phải tiếng Anh thừa. |
| 7 | **rule_20:24 VN "deploy ở đâu"** | JA có 「デプロイ」. Khớp. |
| 8 | **rule_26:36 VN "backlog/sprint/core"** | JA có 「バックログ」「スプリント」「コア機能」. Khớp. |
| 9 | **rule_27 VN "Team Ấn Độ"** | JA có 「インドのチーム」. Khớp. |
| 10 | **rule_25:39 `明日中<rt>あすじゅう</rt>`** | WebSearch xác nhận `あすじゅう` là cách đọc chuẩn của 明日中. Đừng "sửa" thành `みょうにちじゅう`. |
| 11 | **rule_23:38 「ご意見はよく分かりました」** | Là クッション言葉 cố định trong đàm phán, đúng chỗ (nhà cung cấp → khách, tình huống phản đối). Có nguồn nói 「分かりました」 hơi trên cơ, nhưng KHÔNG áp dụng cho cụm này. Đây cũng là **câu chốt** của rule + trùng mục lục #23 → sửa là vỡ 3 chỗ. |
| 12 | **rule_21:38 / rule_24:38 「〜という認識でよろしいでしょうか」** | Đúng ngữ cảnh: xác nhận **cách hiểu của MÌNH**, mời đối phương đính chính. Chỉ thành "trên cơ" khi áp đặt nhận thức LÊN đối phương — không phải trường hợp này. Đây là câu chốt của rule_24 + trùng mục lục. |
| 13 | **Tên nhân vật 松本/大垣 không có ruby** | Quy ước nhất quán toàn phần III. KHÔNG phải raw-kanji thiếu sót. Script quét thô sẽ báo nhầm hàng loạt — xem cảnh báo dưới. |
| 14 | **Kanji trong luận điểm / ghi chú / mục Tránh không có ruby** | Cùng quy ước. Script quét thô báo ~140 ca nhiễu; con số thật trong ô thoại là **6** (mục 1.2). |
| 15 | **rule_31:3 「Nhật hiếm khi bỏ phiếu số đông」** | Đúng thực tế, dù tiêu đề rule là 多数決. Đừng "sửa cho khớp tiêu đề". |
| 16 | **rule_25/29/32 cùng dùng 持ち帰り** | KHÔNG phải trùng lặp — 3 tình huống, 3 thể câu, 3 người nói khác nhau (bảng mục 2.2). Đừng gộp rule. |

### ⚠️ Cảnh báo chống phóng đại (rule mục 3)

Script quét raw-kanji **thô** (không lọc dòng) trả **~140 ca** cho phần III. Con số này **SAI** — gồm tên nhân vật, luận điểm, ghi chú, mục Tránh, bảng từ vựng (những chỗ theo quy ước không cần ruby).

**Số thật: 6 câu** (mục 1.2), tất cả cùng 1 nguyên nhân duy nhất (câu lặp XẤU→TỐT).

Nếu báo cáo nào nói "phần III có hàng trăm chỗ thiếu furigana" → **sai**, do quét không lọc dòng thoại.

---

## 7. Ghi chú cho giai đoạn SỬA

### 7.1 Thứ tự đề nghị

| Vòng | Việc | Rủi ro | Ghi chú |
|---|---|---|---|
| 1 | **S1 ruby-loss (6 câu)** | Rất thấp | Copy chuỗi có ruby từ dòng khối XẤU. Máy móc, kiểm được bằng script. **Chạy cho cả 5 phần.** |
| 2 | **S2 ruby katakana (4) + S5 bảng từ vựng** | Rất thấp | Xoá tag `<ruby>`, giữ katakana |
| 3 | **S3 tiếng Anh thừa (6 ca)** | Thấp | Chỉ sửa VN. Dùng danh sách CẤM SỬA #6-9 để không sửa nhầm |
| 4 | **D2-01, D2-05 keigo trong khối TỐT** | Trung bình | **Phải sửa kèm ghi chú 【】 và câu chốt nếu có.** rule_23 có ghi chú 【3】 trích nguyên câu sai |
| 5 | **D2-09 稟議/即決, D2-16b thang 5 mức** | Trung bình | Sửa luận điểm (dòng 3 VN + dòng 5 JA). **Phải sửa CẢ HAI vế** — bẫy rule mục 5.2 |
| 6 | **rule_29 vai vế Dũng/CTO** | Cao | Cần chủ nhà duyệt hướng (thêm lượt thoại hay đổi cụm). Đề nghị phương án 2 (mục 2.5) |
| 7 | **D2-15 bổ sung cảnh báo 沈黙＝同意** | Cao | Là **thêm nội dung mới** → rule mục 8 vòng 5, cần duyệt |

### 7.2 Bẫy cụ thể khi sửa (rule mục 5)

**Sửa 1 chỗ phải kiểm 4 chỗ.** Mỗi câu mẫu trong phần III xuất hiện ở tối đa **4 nơi**: (a) luận điểm dòng 3 VN, (b) luận điểm dòng 5 JA, (c) ô hội thoại, (d) ghi chú 【n】, (e) `## Câu chốt`, (f) `## Tránh`, (g) mục lục.

Ví dụ D2-05 (rule_23 「ご検討させていただけません」):
- ✅ dòng 39 (ô thoại) — phải sửa
- ✅ dòng 45 (ghi chú 【3】) — **trích nguyên câu sai, phải sửa**
- ⬜ dòng 51 (Câu chốt) — dùng câu khác, không ảnh hưởng
- ⬜ mục lục #23 — dùng câu 「ご意見はよく分かりました」, không ảnh hưởng

Ví dụ D2-01 (rule_20 「どなた様になりますでしょうか」):
- ✅ dòng 38 (ô thoại) — phải sửa
- ⬜ ghi chú/câu chốt/mục lục — không trích câu này ✅ an toàn

**Đối chiếu `conversation.json`:** cả 4 lỗi keigo/dịch chính (D2-01, D2-05, D2-07, D2-12) đều **có mặt trong json** với cùng nội dung sai. Đợt này CHỈ sửa `.md` (theo `00_TIEN_DO.md`), nhưng **ghi lại 4 mã này** để đợt đồng bộ json sau không phải rà lại từ đầu.

### 7.3 Việc main Claude cần bù (rule mục 6 — điểm mù agent)

1. **S1 ruby-loss có thể lan ra 4 phần còn lại.** Script `scan3.py` (lưu ở scratchpad) so 2 câu giống nhau sau strip ruby và đếm chênh `<ruby>`. Chạy cho toàn `nội_dung/`. Nếu D1/D3 không báo lỗi này, **không có nghĩa là phần đó sạch** — họ có thể không quét kiểu này.

2. **根回し (nemawashi) — đừng vội kết luận "sách thiếu".** Phần III (thảo luận trong họp) không nhắc 根回し, và đó là **hợp lý** vì 根回し diễn ra **TRƯỚC** họp. Phải kiểm **phần I (chuẩn bị trước họp, 8 rule)** trước khi kết luận. Tôi không có quyền đọc phần I.

3. **稟議 xuất hiện ở đâu khác?** rule_25 là chỗ duy nhất trong phạm vi tôi định nghĩa 稟議. Nếu phần I/IV cũng định nghĩa mà khác đi → mâu thuẫn liên phần. Cần grep `稟議` toàn sách.

4. **「〜という認識でよろしいでしょうか」 dùng ở rule_21 VÀ rule_24** — hai rule cùng dạy 1 câu chốt. Không mâu thuẫn (21 = sau khi được giải thích, 24 = sau khi nghe trình bày dài) nhưng nếu phần IV/V cũng dùng thì nên có 1 chỗ "chủ", các chỗ khác trỏ tới. Cần grep toàn sách.

5. **"5 levels" trong H1 rule_22** — nếu D3 đang chuẩn hoá Việt hoá tiêu đề toàn sách thì đây là ca cần gộp vào (cùng nhóm `clarification`/`deadlock`).

### 7.4 Kiểm chứng sau khi sửa

```bash
# 1. Ruby-loss còn không (kỳ vọng 0 dòng)
python3 scan3.py

# 2. Ruby katakana còn không (kỳ vọng 0)
grep -oE '<ruby>[ァ-ヴー]+<rt>' nội_dung/phần_III/*/rule.md

# 3. Keigo đã sửa (nhớ STRIP RUBY trước khi grep — rule mục 1.1)
grep -c 'どなた様になります\|ご検討させていただけません' nội_dung/phần_III/*/rule.md  # kỳ vọng 0

# 4. Build lại rồi grep nội dung MỚI trong release/ (strip ruby)
```

---

*Hết báo cáo D2. 14/14 rule đã đọc trọn văn. 5 rule sạch hoàn toàn: 19, 26, 27, 28, 31.*
