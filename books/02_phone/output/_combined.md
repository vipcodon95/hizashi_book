---
title: "Hizashi — Điện thoại Công Việc / 電話応対 v1.2"
author: "Hizashi Teams"
date: "2026"
lang: vi
---

# Hizashi — Điện thoại Công Việc / 電話応対

## Sách song ngữ Việt-Nhật cho người Việt làm với khách hàng Nhật

*Hizashi Teams. 2026. Phiên bản 1.1 (sau review chuyên gia JP/VN/terminology).*

---

## 🎯 Đối tượng / 対象読者

**Tiếng Việt:**

Sách này dành cho người Việt đang làm công việc cần tiếp xúc bằng điện thoại (受電 và 発信) với khách hàng, đối tác hoặc đồng nghiệp Nhật. Đặc biệt phù hợp với:

- Nhân viên onsite hoặc offshore làm IT, BD, kế toán cho công ty Nhật.
- Người chuẩn bị thi **BJT (Business Japanese Test)** ở các level J3 → J2 → J1.
- Người đã học tiếng Nhật cơ bản (N3 trở lên) muốn nâng kỹ năng giao tiếp business.

**日本語:**

本書は、日本人顧客・取引先・同僚と電話でやり取りする必要があるベトナム人ビジネスパーソン向けです。特に：

- 日系IT企業のオンサイト／オフショア社員、BD、経理担当
- **BJT (ビジネス日本語能力テスト)** J3 → J2 → J1 受験準備中の方
- 日本語基礎 (N3 以上) を持ち、ビジネス会話力を伸ばしたい方

---

## 📚 Cấu trúc / 構成

Sách gồm **60 rules**, chia thành **5 phần**:

| Phần | Tên | 内容 | Số rule |
|------|-----|------|---------|
| **I** | Nền tảng trước nhấc máy | 受電前の基本姿勢 | 10 |
| **II** | Nhận điện thoại | 受電の流れ | 13 |
| **III** | Gọi điện thoại đi | 発信の流れ | 12 |
| **IV** | Tình huống khó | 困難な場面 | 13 |
| **V** | Voicemail, Online & Best Practice | 留守電・オンライン・ベストプラクティス | 12 |

**Mỗi rule có:**

- 📄 `rule.md` — bài học song ngữ với hội thoại minh họa, câu chốt, vocab.
- 🎙️ `conversation.json` — data hội thoại đầy đủ (line_id, speaker, gender, tone) cho **TTS audio pipeline**.
- 🧪 BJT practice — câu hỏi trắc nghiệm theo skill (語彙, 表現読解, 場面把握, 聴解, 応答).

**Phụ lục:**

- **Phụ lục A** — Script template tổng hợp (key_phrases tất cả 60 rules).
- **Phụ lục B** — Từ vựng tổng hợp (~197 từ unique).
- **Phụ lục C** — BJT practice tổng hợp (60 câu, group theo level).

---

## 🎬 Cast / 登場人物

Sách 02 dùng cùng cast với sách 01 (Email), bổ sung thêm 3 vai cho điện thoại:

### Công ty Thiên Phát / ティエンファット社 (HCMC, IT outsourcing)

| Tên VN | 名前 (JP) | Vai | Tính cách |
|--------|----------|-----|-----------|
| **em Dũng** | **ズン** | BD担当 | Trẻ, chu đáo, đang luyện BJT — nhân vật chính |
| **chị Hương** | **フオン副部長** | 副部長 | Cứng rắn, mentor cho Dũng |
| **anh Tuấn** | **トゥアンリーダー** | チームリーダー | Vui tính, hay giải thích văn hóa Nhật |
| **chị Loan** | **ロアン経理部長** | 経理部長 | Chính xác, kỹ tính |
| **em Linh** | **リン** | アシスタント | Mới vào, hay hỏi |
| **em Hải** | **ハイ** | FE/DevOps | Bốc máy → chuyển máy nhiều |
| **anh Hà** | **ハー** | CTO | Quản lý, hay vắng |

### Khách hàng Nhật / 日本側

| Tên | 名前 | Vai |
|-----|-----|-----|
| **anh Matsumoto** | **松本PM** | PM bên 白鷗株式会社 (đối tác chính) |
| **lễ tân Hakuō** | **白鷗 受付** | Lễ tân khi gọi đi |
| **CFO Nakamura** | **中村CFO** | Cấp cao 白鷗 |
| **người gọi không rõ** | **不明発信者** | Trong các tình huống cần xác minh |

---

## 🔉 Audio TTS / 音声生成

Mỗi rule có data đầy đủ trong `conversation.json` để gen audio:

- `line_id` — ID duy nhất cho từng câu (vd: `rule_15_good_03`).
- `speaker` + `gender` + `tone` — đủ để gọi TTS engine với voice riêng.
- `speed_multiplier`, `pause_after_ms` — điều chỉnh tốc độ + ngắt nghỉ tự nhiên.
- `pronunciation_hint` — hint cho từ kanji khó.

**Voice profiles** trong `voice_profiles.json` map mỗi `speaker` sang voice TTS cụ thể (cast Hizashi đã ổn định qua sách 01).

---

## 📖 Cách dùng / 使い方

**Người mới:**

1. Đọc lần lượt từ Phần I → V theo thứ tự.
2. Mỗi rule, đọc `rule.md` trước → nghe audio (nếu có) → làm BJT practice.
3. Phụ lục B (vocab) là từ điển tra cứu nhanh.

**Luyện thi BJT:**

1. Làm Phụ lục C theo level (J3 → J2 → J1).
2. Sai chỗ nào, quay lại rule gốc đọc kỹ.
3. Phụ lục A là script template để học thuộc cụm câu.

**Người dạy:**

- Mỗi rule = 1 buổi học 30-45 phút.
- 60 rules = 1 khóa 3-4 tháng (2 buổi/tuần).

---

## ⚖️ Bản quyền / 著作権

© 2026 Hizashi Teams.

Toàn bộ nội dung sách (text, hội thoại, BJT questions) là **sáng tác gốc** của Hizashi Teams. Tham khảo từ tài liệu BJT công khai và kinh nghiệm thực tế làm việc với khách Nhật.

Cho phép sử dụng cho mục đích **học tập cá nhân** và **giảng dạy phi lợi nhuận** với điều kiện ghi rõ nguồn. Không cho phép tái bản thương mại nếu chưa có sự cho phép bằng văn bản.

---

## 🔗 Liên hệ / 問い合わせ

Hizashi Teams — Hizashi Project. Phản hồi và đóng góp gửi qua repo dự án `Hizashi_book`.

---

*Bản 1.1 — 2026. 60 rules + 3 phụ lục, schema v2 sẵn sàng cho audio + app, đã pass 3 expert reviews.*


---

# Phần I — Nền tảng trước nhấc máy / 受電前の基本姿勢

# Rule 01 — Câu mở đầu khi nhấc máy / 受電の第一声

> **Luận điểm / 要点.**
> Câu đầu tiên khi nhấc máy quyết định ấn tượng cả cuộc gọi. Format chuẩn business: **lời chào → tên công ty → tên phòng ban → tên cá nhân**. Tránh "もしもし" — đó là cách nghe điện ở nhà, không phải ở công ty.
>
> 受電時の第一声がコール全体の印象を決める。標準形：**挨拶 → 会社名 → 部署 → 氏名**。「もしもし」は家庭用、ビジネスでは避ける。
>
> **Từ khóa / キーワード:** **`「お電話ありがとうございます」フォーマット`**
>
> **Liên quan / 関連:** Rule 02 (3 hồi chuông), Rule 11 (đại diện công ty), Rule 22 (thứ tự gác máy).

## Bối cảnh / 場面

Anh Matsumoto (松本PM, khách hàng Nhật bên Cty Hakuō) gọi cho em Dũng (ズン, BD bên ティエンファット社) lần đầu, sáng thứ Hai 9:00. Đây là cuộc gọi đầu tiên giữa hai người sau khi anh Nakamura (CFO Hakuō) giới thiệu.

---

## ❌ Hội thoại XẤU — 悪い例

> 📞 *(đường dây kết nối, em Dũng nhấc máy)*

| Speaker | Câu |
|---------|-----|
| **ズン** (BD, ティエンファット) | 「もしもし。」 |
| **松本PM** (Hakuō, khách Nhật) | 「...あの、ティエンファットさんですか？」 |
| **ズン** | 「あ、はい、そうです。」 |

**Vì sao xấu / なぜダメか:**

- 「もしもし」 trong môi trường business gợi cảm giác *cá nhân nghe điện ở nhà* — không phải đại diện công ty.
- Anh Matsumoto phải tự hỏi *"mình có gọi đúng số không"* — sự bất an ngay 3 giây đầu của cuộc gọi quan trọng.
- Em Dũng không tự xưng tên → khách không biết đang nói chuyện với ai → phải hỏi thêm 1 lượt nữa = lãng phí.

---

## ✅ Hội thoại TỐT — 良い例

> 📞 *(đường dây kết nối, em Dũng nhấc máy)*

| Speaker | Câu |
|---------|-----|
| **ズン** (BD, ティエンファット) | 「お電話ありがとうございます【1】。ティエンファット社、営業部のズン【2】でございます【3】。」 |
| **松本PM** (Hakuō) | 「お世話になっております。白鷗株式会社の松本と申します。」 |
| **ズン** | 「松本様、いつもお世話になっております。」 |

📝 **Ghi chú / 注釈:**

- 【1】「**お電話ありがとうございます**」 — câu chuẩn doanh nghiệp Nhật khi nhận máy. Một số công ty quy định dùng「**はい、◯◯です**」cho call nội bộ ngắn — học theo quy định nội bộ của bạn.
- 【2】**Trật tự không đảo:** Công ty → Phòng ban → Tên cá nhân. KHÔNG nói "ズン、ティエンファット社の営業部です" — nghe lủng củng.
- 【3】「**でございます**」 — kính ngữ an toàn cho mọi đối tượng. Có thể đổi sang「です」trong cuộc gọi nội bộ rất quen.

---

## 🔄 Biến thể / バリエーション

### Khi nội bộ Cty gọi đến

| Speaker | Câu |
|---------|-----|
| ズン | 「はい、ティエンファット営業部、ズンです。」 |

→ Lược bỏ「お電話ありがとうございます」 + dùng「です」 thay 「でございます」.

### Khi line bận / để khách đợi rồi mới bốc

| Speaker | Câu |
|---------|-----|
| ズン | 「お電話ありがとうございます。お待たせいたしました。ティエンファット社、営業部のズンでございます。」 |

→ Thêm「お待たせいたしました」 trước phần tự xưng.

### Khi gọi vào ngoài giờ làm

| Speaker | Câu |
|---------|-----|
| ズン | 「お電話ありがとうございます。営業時間外でございますが、緊急のご用件でしたら承ります。ティエンファット社のズンでございます。」 |

→ Thêm câu báo "ngoài giờ" + "nếu khẩn thì xử lý".

---

## 🎯 Câu chốt mang đi / 使えるフレーズ

> **「お電話ありがとうございます。〇〇社、〇〇部の〇〇でございます。」**
>
> *Cảm ơn anh đã gọi điện. Tôi là 〇〇 (tên), phòng 〇〇, công ty 〇〇 ạ.*

**Học thuộc câu này như câu thần chú** — luyện đến mức điện thoại reo thì miệng tự bật ra, không cần suy nghĩ. Khi đầu óc còn xử lý "ai gọi mình", miệng đã hoàn thành 5 giây giới thiệu — tạo khoảng đệm để bạn lấy bút giấy chuẩn bị nghe.

---

## 🎧 Luyện nói

1. Đọc to câu chốt **5 lần liên tục** với tốc độ tự nhiên (~3 giây cho cả câu).
2. Ghi âm bằng điện thoại, nghe lại — có "professional" không?
3. Lặp lại cho đến khi nói được không vấp, không quá nhanh, không quá chậm.

**Đo lường:** Người Nhật bản xứ đọc câu này trong **2.8-3.2 giây**. Nếu bạn nói nhanh hơn 2.5 giây → đối phương khó nghe. Chậm hơn 4 giây → cảm giác chậm chạp, thiếu chuyên nghiệp.

---

## 📝 BJT Practice

**Q1 (J3 — 場面把握):**「お電話ありがとうございます」の後に正しく続くのはどれか？

- A) 「もしもし、ズンです」
- B) **「ティエンファット社、営業部のズンでございます」** ✓
- C) 「ズン、ティエンファット営業部です」
- D) 「ティエンファットのズン、営業部でございます」

**Giải thích:** Format chuẩn là Cty → Phòng → Tên. A sai vì có 「もしもし」 thừa. C, D sai trật tự.

---

## 📚 Vocab note

| Tiếng Nhật | Cách đọc | Nghĩa Việt |
|-----------|----------|-----------|
| お電話 | おでんわ (o-denwa) | Cuộc gọi (kính ngữ) |
| ありがとうございます | arigatō gozaimasu | Cảm ơn (kính ngữ) |
| 営業部 | えいぎょうぶ (eigyō-bu) | Phòng kinh doanh |
| でございます | de-gozaimasu | です (kính ngữ trang trọng nhất) |
| 申します | もうします (mōshimasu) | (Khiêm nhường) "tôi tên là…" |
| お世話になっております | osewa ni natte orimasu | Cảm ơn anh đã hỗ trợ (chào trang trọng) |

---

> *📁 File JSON đi kèm rule này: [`conversation.json`](conversation.json) — chứa toàn bộ hội thoại có cấu trúc cho audio TTS pipeline.*


# Rule 02 — Bắt máy trong 3 hồi chuông / 3コール以内に出る

> **Luận điểm / 要点.**
> Quy tắc bất thành văn ở văn phòng Nhật: bắt máy **trong 3 hồi chuông**. Quá 3 → coi như "khách bị bỏ rơi", phải kèm câu xin lỗi.
>
> 日本のオフィスの暗黙ルール：**3コール以内に取る**。それを超えたら「お待たせ」のお詫びが必須。
>
> **Từ khóa / キーワード:** **`3コール原則`**
>
> **Liên quan / 関連:** Rule 01 (câu mở đầu), Rule 03 (cách xin lỗi khi trễ).

## Bối cảnh / 場面

Sáng thứ Hai, văn phòng đông. Anh Matsumoto gọi vào số bàn em Dũng. Em Dũng đang ghi note dở. Phone reo.

---

## ❌ Hội thoại XẤU — 悪い例

> 📞 *(reo 5 hồi, em Dũng cuối cùng bốc máy)*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お電話ありがとうございます。ティエンファット社のズンでございます。」 |
| **松本PM** | 「(im lặng 1 giây)... お世話になっております。」 |

**Vì sao xấu:** Reo 5 hồi mà không xin lỗi → khách ngầm cảm thấy "được phục vụ kém". 1 giây im lặng của Matsumoto là biểu hiện. Câu mở đúng nhưng *thiếu lời xin lỗi*.

---

## ✅ Hội thoại TỐT — 良い例

> 📞 *(reo 4 hồi, em Dũng bốc máy)*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お電話ありがとうございます。お待たせいたしました【1】、ティエンファット社のズンでございます。」 |
| **松本PM** | 「お世話になっております。白鷗の松本です。」 |

📝 **Ghi chú:**
- 【1】Quá 3 hồi → bắt buộc kèm「お待たせいたしました」. Quá 5 hồi →「大変お待たせいたしました」 (thêm「大変」).

---

## 🔄 Biến thể — Khi đang dở việc lớn không thể bốc

| Speaker | Câu |
|---------|-----|
| **ハイ (đồng nghiệp đỡ)** | 「お電話ありがとうございます。ティエンファット社のハイでございます。ズンが席を外しておりますが、よろしければご用件を承ります。」 |

→ Đồng nghiệp gần đó nên đỡ máy hộ. Không để chuông reo quá 5 hồi.

---

## 🎯 Câu chốt mang đi

> **「お電話ありがとうございます。お待たせいたしました、〇〇社の〇〇でございます。」**

*Khi quá 3 hồi, thêm câu xin lỗi vào ngay sau câu mở.*

---

## 📝 BJT Practice (J3 — 場面把握)

電話が5回鳴ってから取った場合、最も適切な第一声は？
- A) お電話ありがとうございます
- B) **お電話ありがとうございます。お待たせいたしました** ✓
- C) すみません、遅くなりました
- D) もしもし、ティエンファットです

---

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| コール | kōru | Hồi chuông |
| 大変 | たいへん (taihen) | Rất, hết sức |
| 席を外す | せきをはずす (seki o hazusu) | Vắng mặt, rời chỗ |
| 用件 | ようけん (yōken) | Việc cần (lý do gọi) |
| 承る | うけたまわる (uketamawaru) | (Khiêm nhường) tiếp nhận |


# Rule 03 — Trễ thì xin lỗi đúng cách / お待たせした時の詫び方

> **Luận điểm / 要点.**
> Có 4 mức "xin lỗi vì để đợi" tùy vào *thời gian khách đợi*. Dùng sai mức = mất điểm — nhẹ quá thì vô tâm, nặng quá thì sáo.
>
> 待たせた時間に応じて4段階の詫び方がある。レベル違いは失礼。
>
> **Từ khóa / キーワード:** **`待たせ詫び4段階`**
>
> **Liên quan / 関連:** Rule 02 (3 hồi chuông), Rule 17 (hold tối đa 1 phút).

## Bối cảnh / 場面

Anh Matsumoto gọi nhiều lần, có khi line bận, có khi em Dũng để hold lâu. Cần chọn mức xin lỗi phù hợp.

---

## 4 cấp độ xin lỗi / 4段階

| Thời gian khách đợi | Câu nói | Tone |
|--------------------|---------|------|
| **3-5 hồi chuông** | お待たせいたしました | apologetic nhẹ |
| **5+ hồi chuông / hold 30s** | 大変お待たせいたしました | apologetic |
| **Hold 1 phút+** | 大変お待たせし、申し訳ございません | apologetic mạnh |
| **Có thể đã không bốc đúng lúc** | 大変お待たせし、誠に申し訳ございません | apologetic + chính thức |

---

## ❌ Hội thoại XẤU — 悪い例

> 📞 *(em Dũng bốc máy sau khi để khách hold 2 phút)*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お待たせしました、ズンです。」 |

**Vì sao xấu:** Hold 2 phút = mức 3-4. Câu「お待たせしました」chỉ phù hợp với mức 1 (3-5 hồi). Hơn nữa thiếu「お」 = thiếu kính ngữ.

---

## ✅ Hội thoại TỐT — 良い例

> 📞 *(sau hold 2 phút)*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「大変お待たせし、申し訳ございません【1】。ティエンファット社のズンでございます。」 |
| **松本PM** | 「いえ、こちらこそ。」 |

📝 **Ghi chú:**
- 【1】Hold lâu thì cần「申し訳ございません」 ngoài「お待たせ」. Đây là 2 câu khác biệt — 「お待たせ」 ghi nhận hành động, 「申し訳ございません」 thể hiện hối tiếc.

---

## 🔄 Biến thể — Khi line bận liên tục

> Khách phải gọi 3 lần mới thông

| Speaker | Câu |
|---------|-----|
| **ズン** | 「大変お待たせし、誠に申し訳ございません。何度もお電話いただきありがとうございます。」 |

→ Thêm「何度もお電話いただきありがとうございます」 ghi nhận khách phải gọi nhiều lần.

---

## 🎯 Câu chốt

> **「大変お待たせし、申し訳ございません。」**

*Câu "all-purpose" cho mọi tình huống hold lâu. An toàn không sai.*

---

## 📝 BJT Practice (J3 — 表現読解)

お客様を1分以上保留にした後の第一声として最も適切なのは？
- A) お待たせしました
- B) すみません、お待たせしました
- C) **大変お待たせし、申し訳ございません** ✓
- D) ごめんなさい、長く待たせて

**Giải thích:** A nhẹ. B casual. D rất casual (gia đình). C là chuẩn business cho 1 phút+.

---

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 申し訳ございません | もうしわけございません | Vô cùng xin lỗi (kính ngữ) |
| 大変 | たいへん | Rất, hết sức |
| 誠に | まことに (makoto ni) | Thật sự, chân thành |
| 保留 | ほりゅう (horyū) | Hold, giữ máy |


# Rule 04 — Một tay nghe, một tay ghi / 片手で受話器、片手でメモ

> **Luận điểm / 要点.**
> Khi điện thoại reo, **trước khi bốc** phải có **bút + giấy** trong tầm với. Bốc rồi mới mò tìm bút = trễ ghi 5-10 giây thông tin quan trọng.
>
> 電話が鳴ったら、**取る前に**ペンとメモが手の届く位置にあること。取ってから探すのは情報を5-10秒逃す。
>
> **Từ khóa / キーワード:** **`受話器とメモは同時に`**
>
> **Liên quan / 関連:** Rule 05 (template 5W1H), Rule 09 (setup bàn).

## Bối cảnh / 場面

Anh Matsumoto gọi báo lịch họp gấp với 5 con số (ngày, giờ, phòng, số người, deadline). Em Dũng phải nghe và ghi cùng lúc.

---

## ❌ Hội thoại XẤU — 悪い例

> 📞

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お電話ありがとうございます。ズンでございます。」 |
| **松本PM** | 「明日の14時、第3会議室、6名参加、資料は今日中に。」 |
| **ズン** | 「ちょ、ちょっとお待ちください、ペンを...」 |
| **松本PM** | (im lặng, rõ ràng bị làm phiền) |

**Vì sao xấu:** Em Dũng bốc máy mới tìm bút = ngắt mạch khách. 5 con số rất dễ quên 1.

---

## ✅ Hội thoại TỐT — 良い例

> 📞 *(em Dũng đã có bút sẵn trên bàn, ngay khi nhận thấy khách sẽ nói nhiều thông tin)*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お電話ありがとうございます。ズンでございます。」 |
| **松本PM** | 「明日の14時、第3会議室、6名参加、資料は今日中に。」 |
| **ズン** | 「復唱させていただきます。明日14時、第3会議室、6名、資料本日中、で間違いございませんでしょうか【1】。」 |
| **松本PM** | 「その通りです。」 |

📝 **Ghi chú:**
- 【1】「復唱させていただきます」 = "em xin lặp lại để xác nhận". Vừa ghi vừa lặp = cách ghi chính xác nhất.

---

## 🔄 Biến thể — Khi không có bút sẵn (emergency)

| Speaker | Câu |
|---------|-----|
| **ズン** | 「申し訳ございません、メモの準備をさせていただきますので、少々お待ちいただけますでしょうか。」 |

→ Câu xin phép lịch sự để tạm dừng 5 giây tìm bút. Vẫn tốt hơn là ngắt giữa câu khách.

---

## 🎯 Câu chốt

> **「復唱させていただきます。〇〇、〇〇、〇〇でよろしいでしょうか。」**

*Vừa ghi vừa lặp lại — phương pháp đảm bảo không sai sót.*

---

## 📝 BJT Practice (J4 — 場面把握)

電話を取った後に「ちょっとお待ちください、ペンを...」と言う行為について、最も正しい評価は？
- A) 丁寧で問題ない
- B) **準備不足を相手に印象付ける** ✓
- C) 電話のマナーとして標準的
- D) 相手も同じ経験があるので問題ない

---

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 受話器 | じゅわき (juwaki) | Ống nghe |
| メモ | memo | Note, ghi chú |
| 復唱 | ふくしょう (fukushō) | Lặp lại để xác nhận |
| 資料 | しりょう (shiryō) | Tài liệu |


# Rule 05 — Template 5W1H ghi chú / 5W1Hメモテンプレート

> **Luận điểm.** Mỗi cuộc gọi business đều cần ghi 6 điều: **When-Who-Where-What-Why-How**. Có template sẵn = không sót thông tin.
>
> 全ての電話で「いつ・誰が・どこで・何を・なぜ・どうやって」を記録。テンプレートあり = 漏れなし。
>
> **Từ khóa:** **`5W1Hメモ`** · **Liên quan:** Rule 04, Rule 18.

## Template ghi chú chuẩn

```
日時:   ___________  (When)
発信者: __________ 様 (Who - tên + công ty)
場所:   ___________  (Where - phone/visit/email)
件名:   ___________  (What - 1 câu)
理由:   ___________  (Why - lý do gọi)
対応:   ___________  (How - mình đáp + next action)
受電者: __________  (Bạn - người nhận)
```

---

## ✅ Hội thoại — Sử dụng template để confirm

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「来週の打ち合わせの件で、火曜の15時に変更したいのですが。」 |
| **ズン** | 「承知いたしました。火曜15時に変更で承りました【1】。」 |
| **ズン** (tiếp) | 「念のため復唱させていただきます。打ち合わせを来週火曜15時に変更、でよろしいでしょうか。」 |
| **松本PM** | 「はい、お願いします。」 |

📝 **Ghi chú:**
- 【1】「承りました」 = 「nhận thông tin rồi」kính ngữ. Khi dùng nó, khách hiểu bạn đã *ghi vào sổ*.

---

## 🎯 Câu chốt

> **「念のため復唱させていただきます。〇〇、〇〇、〇〇でよろしいでしょうか。」**

---

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 念のため | ねんのため | Để chắc chắn |
| 承る | うけたまわる | Nhận (kính ngữ) |
| 件名 | けんめい | Tiêu đề, chủ đề |
| 対応 | たいおう | Cách xử lý, đáp |


# Rule 06 — Pitch và tốc độ giọng phone / 電話の声の高さ・速度

> **Luận điểm.** Trên phone, giọng bị "thiếu nửa cảm xúc" so với gặp mặt. Bù bằng: **nâng pitch nửa note** + **chậm hơn 10%** + **rõ phụ âm cuối câu**.
>
> 電話では声の感情が半減。**ピッチを半音上げ**+**10%遅く**+**語尾の子音を明瞭に**。
>
> **Từ khóa:** **`電話声の3調整`** · **Liên quan:** Rule 07, Rule 28.

## So sánh / 比較

| Yếu tố | Gặp mặt | Phone |
|--------|---------|-------|
| Pitch | Bình thường | **+半音** (nửa note cao hơn) |
| Tốc độ | Bình thường | **-10%** (chậm hơn 10%) |
| Cuối câu | Tự nhiên | **Phụ âm rõ** ("です" — "đe-su" rõ chữ "su") |

---

## ❌ Bad — Giọng phone như gặp mặt

| Speaker | Câu |
|---------|-----|
| **ズン** (giọng trầm, nhanh) | 「お電話ありがとうございます、ティエンファットのズンです。」 |
| **松本PM** | 「もう一度お願いします、お名前が...」 |

**Vì sao xấu:** Giọng trầm + nhanh trên phone → khách không nghe rõ tên + công ty.

---

## ✅ Good — Đã điều chỉnh

| Speaker | Câu |
|---------|-----|
| **ズン** (giọng cao hơn nửa note, chậm) | 「お電話 ありがとうございます。ティエンファット社、ズン でございます。」 |
| **松本PM** | 「松本です。」(không cần hỏi lại) |

→ Khách nghe ngay từ lần đầu = không phải hỏi lại.

---

## 🎧 Luyện

1. Ghi âm câu mở đầu (Rule 01) **2 lần**: lần 1 giọng bình thường, lần 2 cao hơn nửa note + chậm 10%.
2. Nghe lại phần 2 — có "professional phone voice" chưa?

---

## 🎯 Câu chốt

> **半音上げ・10%遅く・語尾明瞭** — 3 điều chỉnh giọng phone.

---

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 高さ | たかさ | Độ cao (pitch) |
| 速度 | そくど | Tốc độ |
| 半音 | はんおん | Nửa note (musical) |
| 語尾 | ごび | Cuối câu |


# Rule 07 — "Smile in voice" — giọng truyền cảm xúc / 声で笑顔を作る

> **Luận điểm.** Phone không thấy mặt → cảm xúc phải đi qua **giọng**. Khi miệng thực sự cười, giọng có "warmth" — khách *cảm nhận* được mặc dù không thấy.
>
> 電話では顔が見えない → 感情は声を通じて伝わる。実際に笑顔を作って話すと声に温度が乗る。
>
> **Từ khóa:** **`声で笑顔`** · **Liên quan:** Rule 06, Rule 40.

## Khoa học đằng sau

Khi người ta cười, **vocal tract** thay đổi — formant frequency cao hơn, tone "sáng" hơn. Não người nghe nhận biết được dù không thấy mặt. Đây không phải "tip mềm" — đây là vật lý âm thanh.

---

## ❌ Bad — Giọng vô hồn

| Speaker | Câu |
|---------|-----|
| **ズン** (mặt tỉnh, không cười) | 「お電話ありがとうございます、ズンです。」 |
| **松本PM** (cảm thấy lạnh) | 「あ、はい、松本ですが...」 |

→ Khách *cảm* được sự thiếu năng lượng → cuộc gọi mở đầu khô.

---

## ✅ Good — Cười khi nói

| Speaker | Câu |
|---------|-----|
| **ズン** (cười nhẹ, nâng cơ má) | 「お電話ありがとうございます！ティエンファット社のズンでございます。」 |
| **松本PM** (cảm thấy ấm) | 「松本です。いつもお世話になっております。」 |

→ Khách *bắt được* sự nhiệt tình → mở đầu cuộc gọi tích cực.

---

## 🎯 Trick thực tế

- **Đặt một tấm gương trên bàn** — khi điện thoại reo, nhìn vào gương cười 1 giây trước khi bốc.
- **Nâng cơ má** (như khi cười nhẹ) trong suốt cuộc gọi quan trọng.
- **Nghe lại** ghi âm — có nghe thấy "smile" trong giọng không?

---

## 🎯 Câu chốt

> **「電話に出る前に1秒、口角を上げる」** — Trước khi bốc máy, nâng góc miệng 1 giây.

---

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 笑顔 | えがお (egao) | Mặt cười, nụ cười |
| 口角 | こうかく | Góc miệng |
| 元気 | げんき | Khỏe, năng lượng |
| 温度 | おんど | Nhiệt độ (giọng — cảm xúc) |


# Rule 08 — Môi trường yên / 静かな環境を確保

> **Luận điểm.** Tiếng ồn nền (café, đường, văn phòng ồn) trên phone = mất chuyên nghiệp. Khách phải tập trung gấp đôi → nhanh mệt → giảm chất lượng cuộc gọi.
>
> 背景音はプロらしさを損なう。客が二倍集中する必要 → 疲れる → 通話品質低下。
>
> **Từ khóa:** **`通話環境`** · **Liên quan:** Rule 09, Rule 33.

## Quy tắc / ルール

| Tình huống | OK / NG |
|-----------|---------|
| Café, nhà hàng | ❌ NG (ngoại trừ emergency) |
| Đường phố, ô tô | ❌ NG |
| Văn phòng mở (open office) bận | ⚠️ Nếu được, vào phòng họp riêng |
| Làm việc tại nhà | ⚠️ Tắt TV, đóng cửa, báo gia đình |
| Phòng họp riêng | ✅ Lý tưởng |
| Khu yên trong văn phòng | ✅ OK |

---

## ❌ Bad — Gọi ở café

| Speaker | Câu |
|---------|-----|
| **ズン** (tiếng nhạc, tiếng ly chén) | 「お電話ありがとうございます、ズンです。」 |
| **松本PM** | 「外にいらっしゃいますか？少し聞き取りにくいのですが...」 |

**Vì sao xấu:** Khách phải xác nhận môi trường = lãng phí câu mở. Lộ rõ thiếu chuẩn bị.

---

## ✅ Good — Vào phòng họp

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お電話ありがとうございます。ティエンファット社のズンでございます。」 |
| **松本PM** | 「松本です。」 |

---

## 🔄 Biến thể — Khi không thể yên

Nếu *bắt buộc* phải nghe ở môi trường ồn (đang đi công tác):

| Speaker | Câu |
|---------|-----|
| **ズン** | 「外出中で恐れ入りますが、このまま電話を受けさせていただきます。お電話が遠く聞こえる場合は、ご容赦ください。」 |

→ Báo trước cho khách biết → khách thông cảm.

---

## 🎯 Câu chốt

> **「重要な電話の前は、必ず静かな場所へ。」**

---

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 環境 | かんきょう | Môi trường |
| 背景音 | はいけいおん | Tiếng ồn nền |
| 外出中 | がいしゅつちゅう | Đang ra ngoài |
| 容赦 | ようしゃ | Tha thứ, thông cảm |


# Rule 09 — Setup bàn trước cuộc gọi quan trọng / 重要電話前のデスク準備

> **Luận điểm.** Trước cuộc gọi quan trọng (5+ phút, có quyết định), setup bàn 30 giây: **bút + giấy + lịch + tài liệu liên quan + cốc nước**.
>
> 重要通話の前に30秒のデスク準備：ペン+メモ+カレンダー+資料+水。
>
> **Liên quan:** Rule 04, Rule 24.

## Checklist 30 giây / 30秒チェックリスト

```
□ ペンとメモパッド (within reach)
□ カレンダー / Google Calendar 開いている
□ 関連資料 (前回メール、契約書) 開いている  
□ コップに水 (口が渇く時用)
□ スマホ通知 OFF (集中)
□ ヘッドセット (オフィスうるさい場合)
```

---

## ✅ Hội thoại — Setup tốt = phản ứng nhanh

*đã mở sẵn email*

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「先週送った見積書の3ページ目について質問なのですが...」 |
| **ズン** | 「はい、3ページ目を開いております。どの項目でしょうか。」 |

→ Vì đã mở sẵn → trả lời ngay, không phải "ちょっとお待ちください、メールを開きます".

---

## 🎯 Câu chốt

> **「重要電話の30秒前にデスクを整える」**

---

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 整える | ととのえる | Sắp xếp |
| ヘッドセット | heddosetto | Headset |
| 通知 | つうち | Thông báo |


# Rule 10 — Tâm lý chuẩn bị cho cuộc gọi khó / 困難電話のメンタル準備

> **Luận điểm.** Cuộc gọi khó (xin lỗi, đòi nợ, từ chối, báo tin xấu) cần **30 giây mental rehearsal** trước khi bốc/quay số. Không có = lúng túng = mất kiểm soát.
>
> 困難電話の前に30秒のメンタルリハーサル必須。なし = 焦り = 主導権喪失。
>
> **Liên quan:** Rule 40, Rule 41, Rule 45.

## Checklist mental 30 giây

```
1. 結論を1文で言える ようになっている
2. 想定される質問 3つ用意 
3. NG言葉 (言い訳・ネガティブ感情) のリスト
4. 深呼吸 3回
5. 笑顔を作って 始める (Rule 07)
```

---

## ✅ Setup mental — trước cuộc gọi báo trễ deadline

**Em Dũng tự nói trước khi quay số:**

> 「結論：5/15デッドラインに間に合わない。新納期5/19。理由：トゥアン病欠。代替案：金曜にドラフト。」
> 「想定質問：①なぜ早く言わない ②金額影響 ③信頼回復策」
> 「言ってはいけない：『すみません』(軽すぎ)、『仕方ないですよね』(無責任)」

→ 30 giây này = sự khác biệt giữa cuộc gọi *kiểm soát được* và *bị cuốn theo emotion của khách*.

---

## ✅ Cuộc gọi thực tế

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、お忙しいところ恐れ入ります。納期について重要なご連絡でお電話いたしました。」 |
| **松本PM** | 「はい、どうぞ。」 |
| **ズン** | 「結論から申し上げますと、5/15のデッドラインに間に合いません。新納期は5/19を提案させていただきたく...」 |

→ Vì đã rehearse → câu mở ổn định, không lắp.

---

## 🎯 Câu chốt

> **「結論を1文で言えるまで、ダイヤルしない。」**

---

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 想定 | そうてい | Dự đoán |
| 言い訳 | いいわけ | Bào chữa |
| 主導権 | しゅどうけん | Quyền chủ động |
| 深呼吸 | しんこきゅう | Hít thở sâu |



---

# Phần II — Nhận điện thoại / 受電の流れ

# Rule 11 — Đại diện công ty trả lời, không phải cá nhân / 会社の代表として答える

> **Luận điểm.** Khi nhấc máy, bạn không còn là "ズン" — bạn là **ティエンファット社**. Phong thái, ngôn ngữ, cách nói "không biết" đều phải theo chuẩn công ty, không cá nhân.
>
> 受電時、あなたは「ズン」ではなく「ティエンファット社」の代表。態度・言葉・「分からない」の言い方も会社基準。
>
> **Liên quan:** Rule 01, Rule 16.

## Khác biệt cá nhân vs đại diện

| Tình huống | Cá nhân (XẤU) | Đại diện công ty (TỐT) |
|-----------|--------------|----------------------|
| Không biết | 「分かりません」 | 「確認してご連絡いたします」 |
| Đồng nghiệp vắng | 「いません」 | 「ただ今席を外しております」 |
| Không trả lời được | 「私には分かりません」 | 「担当者におつなぎいたします」 |
| Tỏ ra bực | (cau mày, cộc lốc) | (tone vẫn polite) |

---

## ❌ Bad — Trả lời cá nhân

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「契約書の修正版、いつもらえますか？」 |
| **ズン** | 「私には分かりません。」 |

**Vì sao xấu:** Khách không quan tâm "ズン biết hay không". Khách quan tâm **Cty Thiên Phát có thể trả lời**.

---

## ✅ Good — Trả lời đại diện

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「契約書の修正版、いつもらえますか？」 |
| **ズン** | 「確認の上、本日中にご連絡いたします【1】。」 |

📝 **Ghi chú:** 【1】Câu này có 3 thông điệp: (1) sẽ check, (2) sẽ liên lạc lại, (3) trong hôm nay = deadline rõ.

---

## 🎯 Câu chốt

> **「確認の上、〇〇までにご連絡いたします。」** — Trả lời "không biết" theo cách đại diện công ty.

---

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 確認 | かくにん | Xác nhận |
| 担当者 | たんとうしゃ | Người phụ trách |
| 繋ぐ | つなぐ | Nối, chuyển (máy) |
| 席を外す | せきをはずす | Vắng mặt |


# Rule 12 — Xác nhận tên đối phương / 相手の名前を復唱で確認

> **Luận điểm.** Tên người Nhật **dễ nghe nhầm** (松本 vs 増本, 山田 vs 山本). Phải lặp lại để xác nhận.
>
> 日本人の名字は聞き取りミスが多い。復唱必須。
>
> **Liên quan:** Rule 13, Rule 14.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **不明発信者** | 「白鷗のますもとですが、ズンさんお願いします。」 |
| **ズン** | 「白鷗株式会社の松本様でいらっしゃいますね【1】。お待ちしておりました。」 |

📝 【1】 Lặp lại với 「いらっしゃいますね」 = vừa xác nhận vừa kính ngữ.

## 🎯 Câu chốt

> **「〇〇様でいらっしゃいますね。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 復唱 | ふくしょう | Lặp lại |
| いらっしゃる | irassharu | (Kính ngữ) là, có |


# Rule 13 — Lặp lại số/email/tên / 数字・メール・氏名の復唱

> **Luận điểm.** Phone dễ nghe nhầm: **数字** (1-7, 4-8), **メール** (@ → "アット"?), **氏名** (đồng âm). Lặp lại từng phần — không phải cả câu.
>
> 電話で聞き間違いやすい：数字・メール・氏名。**部分復唱**で確認。

## Quy tắc lặp lại

| Loại | Cách lặp |
|------|---------|
| Số điện thoại | Đọc từng số, không nhóm: 「090-1234-5678 = ぜろ-きゅう-ぜろ、いち-に-さん-よん、ご-ろく-なな-はち」 |
| Email | Mỗi ký tự rõ: 「t-a-n-a-k-a アットマーク tenhou.co.jp」|
| Họ tên | Hỏi thêm kanji nếu không chắc: 「松本様、まつのまつ、本のもとでよろしいでしょうか」 |

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「電話番号は090-1234-5678です。」 |
| **ズン** | 「復唱させていただきます。090-1234-5678、ぜろきゅうぜろの、いちにさんよんの、ごろくななはちでよろしいでしょうか。」 |

## 🎯 Câu chốt

> **「数字を区切って復唱」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 数字 | すうじ | Số |
| 区切る | くぎる | Phân đoạn |
| アットマーク | atto māku | @ (at sign) |


# Rule 14 — 5W1H ghi chú bắt buộc / 5W1Hメモは必須

> **Luận điểm.** Mỗi cuộc gọi nhận → ghi 5W1H: **いつ・誰が・どこで・何を・なぜ・どうやって**. Thiếu 1 = phải gọi lại hỏi = mất chuyên nghiệp.
>
> 受電1件ごとに5W1H記録。1つでも欠けると確認電話が必要 = 失礼。
>
> **Liên quan:** Rule 05 (template), Rule 18 (伝言).

## ✅ Hội thoại — Take message hoàn chỉnh

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「明日の打ち合わせ、第3会議室で14時から、6名で。資料は事前にメールで。」 |
| **ズン** | 「念のため復唱いたします。明日（When）、松本様（Who）、第3会議室（Where）、打ち合わせ（What）、6名参加（How）、14時から（When详）、資料事前メール（How详）、でよろしいでしょうか。」 |
| **松本PM** | 「その通りです。」 |

## 🎯 Câu chốt

> **5W1Hで復唱、抜けなしを確認。**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 抜け | ぬけ | Thiếu sót |
| 詳細 | しょうさい | Chi tiết |


# Rule 15 — Chuyển máy khi người nhận có mặt / 担当者がいる場合の取次ぎ

> **Luận điểm.** Chuyển máy có 3 bước: (1) hỏi tên người nhận, (2) confirm với người được nhờ, (3) chuyển. Không nhảy bước = chuyển nhầm.
>
> 取次ぎは3ステップ：①氏名確認 ②本人に確認 ③転送。スキップ = 誤転送。
>
> **Liên quan:** Rule 12, Rule 16.

## ✅ Hội thoại — Chuyển máy đúng

*người bốc máy · line khách*

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「ズンさんお願いします。」 |
| **ハイ** | 「松本様、少々お待ちください。ただ今おつなぎいたします。」 |
| (chuyển sang ズン) **ハイ** | 「ズン、白鷗の松本様からお電話です。」 |
| **ズン** | 「ありがとう、つないで。」 |
| **ズン** | 「お電話変わりました。ズンでございます。」 |

## 🎯 Câu chốt

> **「お電話変わりました。〇〇でございます。」** — Câu mở khi nhận máy chuyển từ đồng nghiệp.

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 取次ぎ | とりつぎ | Chuyển máy |
| 繋ぐ | つなぐ | Nối |
| 変わる | かわる | Đổi (người nói) |


# Rule 16 — 4 pattern xử lý khi người nhận vắng / 担当者不在の4パターン

> **Luận điểm.** Khi người được gọi không có mặt, có **4 pattern chuẩn** để phản hồi: (1) đang họp, (2) đang ra ngoài, (3) đang nghỉ phép, (4) đã về. Mỗi pattern có mức độ thông tin tiết lộ khác nhau.
>
> 担当者不在時の対応は4パターン：会議中／外出中／休暇中／退勤済み。それぞれ開示情報の粒度が異なる。
>
> **Liên quan:** Rule 15, Rule 17, Rule 18.

## Bối cảnh / 場面

Anh Matsumoto gọi cho anh Tuấn (Tech lead Thiên Phát) nhưng anh Tuấn đang trong cuộc họp. Em Dũng nhận máy và phải xử lý.

## ✅ Hội thoại — TỐT (Pattern 1: 会議中)

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「いつもお世話になっております。白鷗の松本ですが、トゥアンさんお願いできますでしょうか。」 |
| **ズン** | 「松本様、いつもお世話になっております。あいにくトゥアンはただいま会議中でございまして、15時には終わる予定でございます。」 |
| **ズン** | 「終わり次第、こちらから折り返しお電話差し上げるようお伝えしましょうか？」 |
| **松本PM** | 「では、お願いいたします。」 |

## 🔄 Biến thể — 4 pattern câu mở

| Pattern | Câu chuẩn |
|---------|-----------|
| 会議中 | 「あいにくただいま会議中でございまして、〇時には終わる予定でございます。」 |
| 外出中 | 「あいにく外出しておりまして、本日は〇時に戻る予定でございます。」 |
| 休暇中 | 「あいにく本日は休みをいただいておりまして、明日〇時に出社予定でございます。」 |
| 退勤済み | 「あいにく本日の業務を終えておりまして、明日9時より出社いたします。」 |

## 🎯 Câu chốt

> **「あいにく〇〇しておりまして、〇時に戻る予定でございます。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 不在 | ふざい | Vắng mặt |
| 会議中 | かいぎちゅう | Đang họp |
| 外出 | がいしゅつ | Ra ngoài |
| あいにく | ainiku | Đáng tiếc thay |
| 折り返し | おりかえし | Gọi lại |


# Rule 17 — Hold tối đa 1 phút / 保留は1分以内

> **Luận điểm.** Bấm hold quá 1 phút = mất kiên nhẫn của khách. Nếu phải lâu hơn → quay lại line, xin lỗi và đề xuất gọi lại.
>
> 保留は1分以内が原則。超える場合は一旦戻り、折り返しを提案。
>
> **Liên quan:** Rule 15, Rule 36.

## ✅ Hội thoại

*50秒経過, hold music*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「確認いたしますので、少々お待ちいただけますでしょうか。」 |
| **ズン** | 「お待たせいたしまして大変申し訳ございません。確認にもうしばらく時間がかかりそうでございますので、こちらから折り返しお電話差し上げてもよろしいでしょうか。」 |

## 🎯 Câu chốt

> **「お待たせして申し訳ございません。折り返しお電話差し上げてもよろしいでしょうか。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 保留 | ほりゅう | Giữ máy |
| 少々 | しょうしょう | Một chút |
| 折り返し | おりかえし | Gọi lại |


# Rule 18 — 5 yếu tố bắt buộc khi take message / 伝言メモの5要素

> **Luận điểm.** Một bản take-message hoàn chỉnh có 5 yếu tố: **(1) ai gọi**, **(2) công ty/phòng**, **(3) số gọi lại**, **(4) nội dung**, **(5) thời điểm gọi**. Thiếu 1 trong 5 = ghi chú vô dụng.
>
> 伝言メモの必須5要素：①誰が ②どの会社・部署 ③折り返し番号 ④用件 ⑤発信時刻。
>
> **Liên quan:** Rule 14, Rule 16, Rule 31.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「明日の打ち合わせの時間を14時から15時に変更したい旨、お伝えください。」 |
| **ズン** | 「承知いたしました。念のため復唱させていただきます。明日の打ち合わせのお時間を14時から15時へご変更でよろしいでしょうか。トゥアンに申し伝えます。」 |
| **ズン** | 「お電話番号は090-1234-5678でよろしいでしょうか？」 |
| **松本PM** | 「はい、その通りです。」 |
| **ズン** | 「本日10時のお電話として、責任を持って申し伝えます。」 |

## 5 yếu tố ghi chú

| # | Yếu tố | VD |
|---|--------|-----|
| 1 | 誰 | 松本様 |
| 2 | 会社・部署 | 白鷗株式会社・PM |
| 3 | 折り返し番号 | 090-1234-5678 |
| 4 | 用件 | 明日打合せ 14時→15時変更希望 |
| 5 | 発信時刻 | 4/25 10:00 |

## 🎯 Câu chốt

> **「責任を持って申し伝えます。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 伝言 | でんごん | Lời nhắn |
| 申し伝える | もうしつたえる | (Khiêm) chuyển lời |
| 念のため | ねんのため | Để chắc chắn |
| 復唱 | ふくしょう | Lặp lại |


# Rule 19 — Xử lý wrong number lịch sự / 間違い電話への対応

> **Luận điểm.** Khi gặp wrong number, **đừng cúp máy đột ngột**. Lễ phép xác nhận số đối phương đang gọi, báo họ gọi nhầm, kết thúc bằng câu chào.
>
> 間違い電話でも丁寧に。番号を確認し、間違いを伝え、挨拶で締める。
>
> **Liên quan:** Rule 11, Rule 22.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **不明発信者** | 「もしもし、佐藤商事ですか？」 |
| **ズン** | 「お電話ありがとうございます。こちらティエンファット社でございます。お間違いではないでしょうか？」 |
| **不明発信者** | 「あ、03-1234-5678ではないんですか？」 |
| **ズン** | 「こちらは別の番号でございます。お手数ですが、もう一度お確かめの上おかけ直しください。」 |
| **不明発信者** | 「失礼しました。」 |
| **ズン** | 「とんでもございません。失礼いたします。」 |

## 🎯 Câu chốt

> **「お間違いではないでしょうか？お確かめの上おかけ直しください。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 間違い電話 | まちがいでんわ | Gọi nhầm số |
| お確かめ | おたしかめ | Kiểm tra (尊敬語 — đối phương kiểm tra) |
| お手数ですが | おてすうですが | Phiền anh/chị |
| かけ直す | かけなおす | Gọi lại |


# Rule 20 — Bước đầu xử lý phàn nàn qua phone / クレーム電話の最初の対応

> **Luận điểm.** Khi khách phàn nàn — **đừng giải thích trước**. Bước 1 = **nghe**, **xin lỗi cảm xúc** (không phải xin lỗi sự kiện), rồi mới hỏi chi tiết.
>
> クレーム電話の第一手は『説明より傾聴』。事実への謝罪ではなく、不快な思いをさせたことへの謝罪を先に。
>
> **Liên quan:** Rule 40, Rule 41, Rule 45.

## ❌ Hội thoại XẤU

| Speaker | Câu |
|---------|-----|
| 不明発信者 | 「先週注文した商品がまだ届いていないんですが！」 |
| ズン | 「えっと、配送センターの遅れでして…」 |

→ Giải thích ngay = đẩy trách nhiệm sang nơi khác = khách càng tức.

## ✅ Hội thoại TỐT

| Speaker | Câu |
|---------|-----|
| **不明発信者** | 「先週注文した商品がまだ届いていないんですが！」 |
| **ズン** | 「ご不便をおかけしまして大変申し訳ございません。詳しくお伺いしてもよろしいでしょうか。」 |
| **不明発信者** | 「3日前に着くはずだったのに...」 |
| **ズン** | 「左様でございますか。早急に確認の上、改めてご連絡差し上げます。」 |

## 🎯 Câu chốt

> **「ご不便をおかけしまして大変申し訳ございません。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 不便 | ふべん | Bất tiện |
| 傾聴 | けいちょう | Lắng nghe chăm chú |
| 早急に | さっきゅうに | Khẩn trương |
| 左様でございますか | さようでございますか | Vâng, em hiểu rồi (kính ngữ) |


# Rule 21 — Khi khách hỏi đường đến văn phòng / 訪問先案内の電話

> **Luận điểm.** Khi khách điện hỏi đường, **xác nhận họ đang ở đâu** trước, sau đó hướng dẫn theo điểm mốc rõ ràng. Tránh "đi thẳng rồi rẽ" — dùng tên ga, tên tòa nhà.
>
> 道案内は『現在地確認 → 目印 → 距離・方向』の順。曖昧な指示NG。
>
> **Liên quan:** Rule 11, Rule 24.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「すみません、今ホアンキエム湖の北側におります。御社まではどのように行けばよろしいでしょうか？」 |
| **ズン** | 「お電話ありがとうございます。湖の北側ですと、Hang Bac通りを北へ徒歩約5分でございます。途中、左手にBIDV銀行が見えてまいります。」 |
| **ズン** | 「BIDVの次の角を右折いただきますと、3軒目の8階建てビルが弊社でございます。1階に『ティエンファット』の看板がございます。」 |
| **松本PM** | 「BIDVの先を右、3軒目の8階建てビルですね。承知しました。」 |
| **ズン** | 「お気をつけてお越しください。」 |

## 🎯 Câu chốt

> **「目印 → 距離 → 方向」の順で案内**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 案内 | あんない | Hướng dẫn |
| 目印 | めじるし | Điểm mốc |
| 角 | かど | Góc đường |
| 右折 | うせつ | Rẽ phải |
| 看板 | かんばん | Bảng hiệu |


# Rule 22 — Thứ tự gác máy: khách trước, mình sau / 受話器を置くタイミング

> **Luận điểm.** Quy tắc business Nhật: **khách hàng / cấp trên gác máy trước**, mình gác sau. Cúp trước = thiếu tôn trọng.
>
> ビジネス電話の鉄則：相手（特に顧客・上司）が切ってから自分が切る。先に切るのは失礼。
>
> **Liên quan:** Rule 01, Rule 11, Rule 35.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「本日はお電話ありがとうございました。失礼いたします。」 |
| **松本PM** | 「失礼します。」 *(松本側で受話器を置く)* |
| **ズン** | *(2-3秒待ってから、静かに受話器を置く)* |

## ⚠ Lưu ý

- Không bao giờ "dập" mạnh — luôn đặt nhẹ.
- Nếu dùng smartphone: chờ 2-3 giây rồi mới ấn End call.
- Khi không chắc đối phương đã cúp chưa → giữ thêm 3-5 giây an toàn.

## 🎯 Câu chốt

> **「相手が切ってから、静かに受話器を置く」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 受話器 | じゅわき | Ống nghe |
| 静かに | しずかに | Nhẹ nhàng |
| 失礼いたします | しつれいいたします | Xin phép kết thúc (kính ngữ) |


# Rule 23 — Báo lại nội bộ sau cuộc gọi quan trọng / 受電後の社内報告

> **Luận điểm.** Cuộc gọi xong = mới một nửa công việc. Phải báo nội bộ ngay (Slack/email/face) cho người liên quan trong **15 phút**, kèm 5 yếu tố ghi chú.
>
> 受電後の社内報告は15分以内が目安。5要素メモ＋次のアクションを共有。
>
> **Liên quan:** Rule 18, Rule 51, Rule 59.

## ✅ Hội thoại — báo cáo trực tiếp

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、少しよろしいでしょうか。先ほど10時頃、白鷗の松本様からお電話がございました。」 |
| **フオン** | 「内容は？」 |
| **ズン** | 「明日の打ち合わせを14時から15時へ変更希望とのことです。トゥアンリーダーには既に共有済みです。返信のフォローアップメールも本日中に送る予定です。」 |
| **フオン** | 「分かりました。トゥアンの返答が来たらまた共有してください。」 |

## 報告テンプレ — 4要素

```
【日時】4/25 10:00頃
【発信者】白鷗株式会社 松本PM
【用件】明日の打合せ 14:00→15:00 変更希望
【次のアクション】トゥアンリーダーへ伝達済み／本日中にメール送信
```

## 🎯 Câu chốt

> **「先ほど〇時頃、〇〇様からお電話がございました。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 報告 | ほうこく | Báo cáo |
| 共有 | きょうゆう | Chia sẻ |
| 申し伝える | もうしつたえる | (Khiêm) chuyển lời |
| 先ほど | さきほど | Vừa nãy |



---

# Phần III — Gọi điện thoại đi / 発信の流れ

# Rule 24 — Checklist trước khi nhấn gọi / 発信前のチェックリスト

> **Luận điểm.** Trước khi gọi đi, kiểm 5 mục: **(1) mục đích rõ chưa**, **(2) thời điểm gọi phù hợp**, **(3) tài liệu sẵn**, **(4) note 5W1H đã list**, **(5) môi trường yên tĩnh**.
>
> 発信前に5項目チェック：①目的 ②時間帯 ③資料 ④5W1Hメモ ⑤環境。
>
> **Liên quan:** Rule 25, Rule 26, Rule 28.

## Bối cảnh

Em Dũng chuẩn bị gọi anh Matsumoto báo cập nhật tiến độ project. Trước khi nhấn gọi tự kiểm.

## Checklist

| # | Mục | Câu hỏi tự kiểm |
|---|-----|----------------|
| 1 | 目的 | Mục đích gọi 1 câu được không? |
| 2 | 時間帯 | Tránh 12-13h, sáng đầu tuần 9h, cuối ngày 17h+? |
| 3 | 資料 | Tài liệu/file PDF mở sẵn chưa? |
| 4 | 5W1H | Note When/Where/Who/What/Why/How đã viết? |
| 5 | 環境 | Không ai nói chuyện ồn xung quanh? |

## ✅ Hội thoại — internal self-check + first call

*独り言 · 電話で*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「目的：4月度進捗報告。資料：開いた。メモ：書いた。環境：OK。発信。」 |
| **ズン** | 「お世話になっております。ティエンファット社、営業部のズンでございます。松本様のお席はございますでしょうか？」 |

## 🎯 Câu chốt

> **「目的・時間・資料・メモ・環境」5チェック**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 発信 | はっしん | Gọi đi |
| 目的 | もくてき | Mục đích |
| 時間帯 | じかんたい | Khung giờ |
| 資料 | しりょう | Tài liệu |


# Rule 25 — Chọn giờ gọi: khung tránh / khung tốt / 電話する時間帯の選び方

> **Luận điểm.** Khung giờ tốt: **10:00-11:30**, **14:00-16:30**. Khung tránh: **9:00-9:30** (đầu giờ chuẩn bị), **12:00-13:00** (nghỉ trưa), **17:30+** (về). Đặc biệt thứ Hai sáng = busy nhất.
>
> 発信のベスト時間：10-11時半／14-16時半。避ける：始業直後・昼休み・終業前。
>
> **Liên quan:** Rule 24, Rule 33.

## Bảng giờ gọi

| Khung giờ | Đánh giá | Lý do |
|----------|---------|-------|
| 9:00-9:30 | ❌ Tránh | Bắt đầu giờ, kiểm mail, họp morning |
| 10:00-11:30 | ✅ Tốt | Đối phương đã settle |
| 12:00-13:00 | ❌ Cấm | Giờ nghỉ trưa |
| 14:00-16:30 | ✅ Tốt | Buổi chiều ổn định |
| 17:00-17:30 | △ Hạn chế | Sắp hết giờ |
| 17:30+ | ❌ Tránh | Đã hoặc đang về |

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お世話になっております。今、お電話よろしいでしょうか？」 |
| **松本PM** | 「はい、大丈夫です。」 |

→ Câu **「今、お電話よろしいでしょうか？」** = phép lịch sự dù chọn đúng giờ.

## 🎯 Câu chốt

> **「今、お電話よろしいでしょうか？」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 時間帯 | じかんたい | Khung giờ |
| 始業 | しぎょう | Bắt đầu giờ làm |
| 終業 | しゅうぎょう | Hết giờ làm |
| 昼休み | ひるやすみ | Nghỉ trưa |


# Rule 26 — Format giới thiệu khi gọi đi / 発信時の名乗りフォーマット

> **Luận điểm.** Format chuẩn khi gọi đi: **「お世話になっております」 → 公司・部署・名前 → 「〇〇様お願いします」**.
>
> 発信時の名乗り：①挨拶 ②会社・部署・氏名 ③相手の取次依頼。
>
> **Liên quan:** Rule 24, Rule 25, Rule 27.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **受付** | 「白鷗株式会社でございます。」 |
| **ズン** | 「いつもお世話になっております。ティエンファット社、営業部のズンと申します。恐れ入りますが、松本様はいらっしゃいますでしょうか？」 |
| **受付** | 「松本ですね。少々お待ちくださいませ。」 |

## 名乗り 3要素

```
①「いつもお世話になっております」
②「ティエンファット社、営業部のズンと申します」
③「恐れ入りますが、〇〇部の〇〇様はいらっしゃいますでしょうか」
```

## ⚠ Điểm cần nhớ

- Khi nhận máy = 「でございます」, khi gọi đi = 「と申します」 (khiêm nhường).
- 「恐れ入りますが」 = "phiền anh/chị" — bắt buộc trước khi nhờ nối máy.

## 🎯 Câu chốt

> **「ティエンファット社、営業部のズンと申します。〇〇様はいらっしゃいますでしょうか？」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 名乗る | なのる | Tự xưng tên |
| 申します | もうします | (Khiêm) tên là |
| 恐れ入りますが | おそれいりますが | Phiền anh/chị |
| いらっしゃる | irassharu | (Kính ngữ) có, là |


# Rule 27 — お時間よろしいでしょうか / 相手の都合を最初に確認

> **Luận điểm.** Sau khi tự xưng → **hỏi liền** "anh/chị có rảnh nói chuyện không". Nếu không hỏi mà nhảy thẳng vào việc = thiếu lịch sự.
>
> 名乗りの直後に『お時間よろしいでしょうか』で都合確認。本題前の必須ステップ。
>
> **Liên quan:** Rule 25, Rule 26, Rule 28.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ティエンファット社のズンと申します。今、5分ほどお時間よろしいでしょうか？」 |
| **松本PM** | 「はい、大丈夫です。」 |

## 🔄 Biến thể — Khi đối phương bận

| Speaker | Câu |
|---------|-----|
| ズン | 「今、お時間よろしいでしょうか？」 |
| 松本PM | 「すみません、今ちょっと立て込んでおりまして…」 |
| ズン | 「失礼いたしました。後ほど改めてお電話差し上げます。〇時頃でいかがでしょうか？」 |

→ Đề xuất giờ cụ thể, không nói "後ほど" mơ hồ.

## 🎯 Câu chốt

> **「今、〇分ほどお時間よろしいでしょうか？」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 都合 | つごう | Sự thuận tiện |
| 立て込む | たてこむ | Đang bận, dày kín |
| 後ほど | のちほど | Lát nữa |
| 改めて | あらためて | Lại |


# Rule 28 — Pitch 30 giây — truyền đạt mục đích gọn / 30秒で要件を伝える

> **Luận điểm.** Sau khi xác nhận có rảnh → trong 30 giây phải nói rõ **(1) lý do gọi**, **(2) hành động cần** từ đối phương, **(3) thời gian quyết định**.
>
> 30秒で『目的・依頼内容・期限』を明確に伝える。長い前置きは禁物。
>
> **Liên quan:** Rule 24, Rule 27, Rule 35.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「本日お電話差し上げましたのは、4月度の進捗報告書の件でございます。来週月曜のミーティング前にレビューをいただきたく、明日中にメールでお送りしてもよろしいでしょうか？」 |
| **松本PM** | 「分かりました。明日の午前中に送ってもらえれば、午後に確認します。」 |

## 30秒ピッチ構造

```
①「本日お電話差し上げましたのは、〇〇の件でございます」 — 5秒
②「〇〇をいただきたく、〇〇までに〇〇したい」 — 15秒
③「いかがでしょうか？」 — 5秒
```

## 🎯 Câu chốt

> **「本日お電話差し上げましたのは、〇〇の件でございます。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 要件 | ようけん | Việc, mục đích |
| 進捗 | しんちょく | Tiến độ |
| 期限 | きげん | Hạn chót |
| 前置き | まえおき | Lời mở rào |


# Rule 29 — Yêu cầu lặp lại điểm quan trọng / 重要事項の復唱を依頼

> **Luận điểm.** Khi truyền đạt thông tin quan trọng (số, ngày, số tiền), **nhờ đối phương lặp lại** — không chỉ tự lặp.
>
> 重要な数字・日付・金額は、相手にも復唱を依頼して確認漏れを防ぐ。
>
> **Liên quan:** Rule 13, Rule 18.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「金額は120万円、納期は5月15日でございます。念のため、復唱をお願いできますでしょうか。」 |
| **松本PM** | 「金額120万円、納期5月15日ですね。承知しました。」 |
| **ズン** | 「ありがとうございます。間違いございません。」 |

## ⚠ Tips

- Nhờ lặp lại = thể hiện **bạn coi trọng việc giao tiếp đúng**, không phải nghi đối phương.
- Câu mở: 「念のため、復唱をお願いできますでしょうか」 hoặc 「恐れ入りますが、ご確認のため復唱いただけますでしょうか」.

## 🎯 Câu chốt

> **「念のため、復唱をお願いできますでしょうか。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 復唱 | ふくしょう | Lặp lại |
| 金額 | きんがく | Số tiền |
| 納期 | のうき | Hạn giao |
| 念のため | ねんのため | Để chắc chắn |


# Rule 30 — Đề xuất chuyển kênh khi phone không đủ / 電話で済まない時の提案

> **Luận điểm.** Khi nội dung phức tạp (kèm số liệu, hình, văn bản dài) → đề xuất **chuyển sang mail/Teams meeting/face-to-face**. Đừng cố giải thích chi tiết qua phone.
>
> 複雑な内容は電話で完結させず、メール／オンライン会議／対面へ切り替える提案を。
>
> **Liên quan:** Rule 28, Rule 51, Rule 52.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「詳細な数字につきましては、お電話ですとかえって分かりにくいかと存じます。」 |
| **ズン** | 「資料を添付したメールをお送りした上で、明日30分ほどオンライン会議でご説明させていただくのはいかがでしょうか？」 |
| **松本PM** | 「そうですね、その方が分かりやすいですね。明日の14時はいかがですか？」 |
| **ズン** | 「14時、承知いたしました。会議URLを後ほどメールでお送りいたします。」 |

## 🎯 Câu chốt

> **「お電話ですとかえって分かりにくいかと存じます。〇〇でご説明させていただいてもよろしいでしょうか？」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| かえって | kaette | Ngược lại, càng |
| 添付 | てんぷ | Đính kèm |
| オンライン会議 | online kaigi | Họp online |
| 切り替える | きりかえる | Chuyển đổi |


# Rule 31 — Nhờ chuyển lời khi người nhận vắng / 不在時の伝言依頼

> **Luận điểm.** Khi gọi mà người cần gặp vắng → nhờ người bắt máy chuyển lời, kèm **(1) tên + cty mình**, **(2) việc cần**, **(3) cách liên lạc lại**.
>
> 不在時の伝言依頼：①自分の所属 ②用件 ③折り返し方法を簡潔に。
>
> **Liên quan:** Rule 16, Rule 18, Rule 32.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **受付** | 「あいにく松本は外出しておりまして、本日15時に戻る予定でございます。」 |
| **ズン** | 「左様でございますか。それでは恐れ入りますが、伝言をお願いできますでしょうか。」 |
| **ズン** | 「ティエンファット社の営業部、ズンと申します。明日の打ち合わせ資料を本日中にメールでお送りする旨、お伝えいただけますでしょうか。」 |
| **ズン** | 「ご返信は明日朝でも問題ございません。電話番号は090-1234-5678でございます。」 |
| **受付** | 「承知いたしました。申し伝えます。」 |

## 🎯 Câu chốt

> **「恐れ入りますが、伝言をお願いできますでしょうか。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 伝言 | でんごん | Lời nhắn |
| 申し伝える | もうしつたえる | (Khiêm) chuyển lời |
| 問題ございません | もんだいございません | Không vấn đề (kính ngữ) |
| 旨 | むね | Việc, ý là |


# Rule 32 — Xin gọi lại — folder back template / 折り返しの依頼

> **Luận điểm.** Khi nhờ gọi lại, **đề xuất khung giờ thuận tiện cho đối phương**, không phải mình. Cộng thêm **phương án thay thế** (mail) nếu không tiện.
>
> 折り返し依頼は『相手の都合優先』。代替手段（メール）も提示すると親切。
>
> **Liên quan:** Rule 31, Rule 25, Rule 51.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お戻りになりましたら、お手すきの時に折り返しお電話をいただけますと幸いです。本日中ですと17時まで、明日であれば終日対応可能でございます。」 |
| **ズン** | 「もしお電話がご都合つかない場合は、メールでも構いません。zun (z-u-n) アットマーク thienphat ドット vn 宛にお願いいたします。」 |
| **受付** | 「承知いたしました。申し伝えます。」 |

## 🎯 Câu chốt

> **「お手すきの時に折り返しお電話をいただけますと幸いです。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 折り返し | おりかえし | Gọi lại |
| お手すき | おてすき | Lúc rảnh |
| 幸いです | さいわいです | Mong được... |
| 終日 | しゅうじつ | Cả ngày |


# Rule 33 — Cuộc gọi quốc tế — múi giờ + chậm hơn / 国際電話の留意点

> **Luận điểm.** Gọi quốc tế: **(1) tính giờ đối phương** (Việt Nam < Nhật 2h), **(2) nói chậm hơn 10-15%**, **(3) tránh từ lóng/abbreviation**, **(4) confirm qua mail sau gọi**.
>
> 国際電話：時差確認・話速10-15%減・略語/スラング回避・通話後メール確認。
>
> **Liên quan:** Rule 25, Rule 51, Rule 55.

## ✅ Hội thoại

*slower 0.85x*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ベトナムは現在朝9時、日本は11時でございます。1時間ほどお時間よろしいでしょうか。」 |
| **松本PM** | 「はい、大丈夫です。」 |
| **ズン** | 「進捗を…ご報告…させていただきます。詳細は後ほどメールでも…お送りいたします。」 |

## ⚠ Tips

- Tránh: "ASAP", "FYI" — dùng tiếng Nhật chuẩn 「至急」「ご参考までに」.
- Sau cuộc gọi → gửi mail tóm tắt trong 1h (Rule 51).

## 🎯 Câu chốt

> **「ベトナムは現在〇時、日本は〇時でございます。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 時差 | じさ | Lệch giờ |
| 略語 | りゃくご | Từ viết tắt |
| 至急 | しきゅう | Khẩn cấp |
| 国際電話 | こくさいでんわ | Cuộc gọi quốc tế |


# Rule 34 — Cách nói trong cuộc gọi khẩn / 緊急電話の言い回し

> **Luận điểm.** Cuộc gọi khẩn cấp: **mở đầu báo "khẩn cấp"** ngay trong câu đầu. Cấu trúc: 「至急ご連絡したい件で〜」. Bỏ vòng vo, vào thẳng vấn đề.
>
> 緊急電話は冒頭で『至急』を明示し、用件を即座に伝える。前置き省略。
>
> **Liên quan:** Rule 28, Rule 44.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お忙しいところ恐れ入ります。至急ご連絡したい件がございます。」 |
| **ズン** | 「本日納品予定のサーバーですが、配送業者のトラブルで到着が午後にずれ込む見込みでございます。」 |
| **ズン** | 「現場のトゥアンにも至急共有いたします。松本様からも何かご対応が必要でしたら、ご指示ください。」 |
| **松本PM** | 「分かりました。トゥアンさんへ私からも連絡します。」 |

## 🎯 Câu chốt

> **「お忙しいところ恐れ入ります。至急ご連絡したい件がございます。」**

## ⚠ Tránh

- Vòng vo "あの〜実は〜" → ăn 30 giây vô ích trong khi đối phương đang lo.
- "もしかして…" → lưỡng lự, làm mất tin cậy.

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 至急 | しきゅう | Khẩn cấp |
| 即時 | そくじ | Ngay lập tức |
| ずれ込む | ずれこむ | Trễ, dời |
| 見込み | みこみ | Dự kiến |


# Rule 35 — Review summary trước khi cúp máy / 電話を切る前の確認

> **Luận điểm.** Trước khi cúp, **summary 3 điểm**: (1) đã thống nhất gì, (2) ai làm gì, (3) deadline. Tránh "thanh tan biến" khi cúp xong không nhớ chi tiết.
>
> 通話終了前に『合意事項・担当・期限』の3点サマリーで認識合わせ。
>
> **Liên quan:** Rule 22, Rule 28, Rule 51.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「最後に確認させていただきます。明日朝までに進捗報告書をメールでお送りし、午後オンライン会議でご説明いたします。会議URLは本日中にお送りいたします。」 |
| **ズン** | 「以上でよろしいでしょうか？」 |
| **松本PM** | 「はい、その通りです。よろしくお願いします。」 |
| **ズン** | 「ありがとうございました。失礼いたします。」 |

## 🎯 Câu chốt

> **「最後に確認させていただきます。〜以上でよろしいでしょうか？」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 確認 | かくにん | Xác nhận |
| 合意 | ごうい | Đồng ý, thống nhất |
| 担当 | たんとう | Người phụ trách |
| 期限 | きげん | Hạn chót |



---

# Phần IV — Tình huống khó / 困難な場面

# Rule 36 — Đừng để hold quá im — voice fill / 保留中の対応

> **Luận điểm.** Hold máy quá 30 giây mà im lặng = khách lo "có còn line không". Cứ 30 giây quay lại line nói **「お待たせしております」** một lần.
>
> 保留が30秒超えるごとに『お待たせしております』で生存確認。沈黙は不安を呼ぶ。
>
> **Liên quan:** Rule 17, Rule 22.

## ✅ Hội thoại

*30秒経過 · brief unhold · 20秒後*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「確認いたしますので、少々お待ちください。」 *(hold)* |
| **ズン** | 「お待たせしております。あと少々お時間をいただきます。」 *(re-hold)* |
| **ズン** | 「大変お待たせいたしました。確認できました。〜」 |

## 🎯 Câu chốt

> **「お待たせしております。あと少々お時間をいただきます。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 保留中 | ほりゅうちゅう | Đang giữ máy |
| 沈黙 | ちんもく | Im lặng |


# Rule 37 — Khi line đứt, ai gọi lại trước? / 切れた時のかけ直しルール

> **Luận điểm.** Quy tắc business: **bên gọi đi (発信側) gọi lại trước**. Nếu khách là người gọi → mình vẫn nên chủ động gọi lại để thể hiện thiện chí.
>
> 通話切断時は『発信側がかけ直す』が原則。ただし顧客側だった場合でも、こちらから折り返すと印象◎。
>
> **Liên quan:** Rule 22, Rule 32.

## ✅ Hội thoại — sau khi gọi lại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「先ほどはお電話が途中で切れてしまい、大変失礼いたしました。」 |
| **松本PM** | 「いえ、こちらこそ。電波が悪かったかもしれません。」 |
| **ズン** | 「続きから失礼いたします。先ほどの納期の件ですが…」 |

## ⚠ Tips

- Không bắt khách phải gọi lại — gọi lại NGAY trong 1 phút.
- Câu mở: 「先ほどはお電話が途中で切れてしまい、大変失礼いたしました」.

## 🎯 Câu chốt

> **「お電話が途中で切れてしまい、大変失礼いたしました。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 途中 | とちゅう | Giữa chừng |
| 切れる | きれる | Đứt, ngắt |
| 電波 | でんぱ | Sóng điện thoại |
| かけ直す | かけなおす | Gọi lại |


# Rule 38 — Khi nghe không rõ / お電話が遠いようですが

> **Luận điểm.** Khi không nghe rõ, **đừng đổ lỗi cho đối phương** ("bạn nói nhỏ"). Câu chuẩn: 「お電話が遠いようですが」 — coi như lỗi của line/môi trường.
>
> 聞き取れない時は『お電話が遠いようですが』で婉曲に伝える。相手のせいにしない。
>
> **Liên quan:** Rule 39, Rule 13.

## ❌ Hội thoại XẤU

| Speaker | Câu |
|---------|-----|
| ズン | 「すみません、声が小さいんですが…」 |

→ Nghe như **đối phương nói nhỏ** = mất lịch sự.

## ✅ Hội thoại TỐT

| Speaker | Câu |
|---------|-----|
| **ズン** | 「申し訳ございません。お電話が遠いようでございますが、もう一度お願いできますでしょうか？」 |
| **松本PM** | 「失礼しました。今は聞こえますか？」 |
| **ズン** | 「はい、はっきり聞こえます。ありがとうございます。」 |

## 🎯 Câu chốt

> **「お電話が遠いようでございますが、もう一度お願いできますでしょうか？」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 遠い | とおい | Xa (line không rõ) |
| 申し訳ございません | もうしわけございません | Xin lỗi (kính ngữ cao) |
| はっきり | hakkiri | Rõ ràng |


# Rule 39 — 5 patterns hỏi lại từ không hiểu / 聞き返しの5パターン

> **Luận điểm.** 5 pattern hỏi lại tùy mức độ chưa hiểu: (1) toàn bộ, (2) một phần, (3) nghĩa từ, (4) cách viết, (5) chính tả tên.
>
> 聞き返しは『何が不明か』に応じて5パターン使い分け。
>
> **Liên quan:** Rule 12, Rule 13, Rule 38.

## 5 patterns

| # | Tình huống | Câu chuẩn |
|---|-----------|----------|
| 1 | Toàn bộ câu | 「恐れ入りますが、もう一度お願いできますでしょうか？」 |
| 2 | Phần cụ thể | 「『〇〇』の部分をもう一度お願いします」 |
| 3 | Nghĩa từ | 「〇〇とはどのような意味でしょうか？」 |
| 4 | Cách viết | 「〇〇はどのような漢字でしょうか？」 |
| 5 | Tên người | 「お名前はどのような漢字でいらっしゃいますか？〇〇でよろしいですか？」 |

## ✅ Hội thoại — pattern 4 + 5

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「うちの担当はおおがきです。」 |
| **ズン** | 「恐れ入ります。おおがき様ですね。どのような漢字でいらっしゃいますか？」 |
| **松本PM** | 「大きいに垣根の垣で大垣です。」 |
| **ズン** | 「大垣様、承知いたしました。」 |

## 🎯 Câu chốt

> **「どのような漢字でいらっしゃいますか？」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 聞き返し | ききかえし | Hỏi lại |
| 漢字 | かんじ | Chữ Hán |
| 垣 | かき | Hàng rào |
| 意味 | いみ | Nghĩa |


# Rule 40 — Khách đang giận — nghe trước, giải pháp sau / 怒っているお客様への対応

> **Luận điểm.** Khi khách giận, **đừng cắt ngang**. Để họ nói hết, dùng câu chêm 「はい」「左様でございますか」 cho thấy đang lắng nghe, sau đó mới giải pháp.
>
> 怒っている顧客には『傾聴 → 共感 → 確認 → 解決』の順。途中で遮らない。
>
> **Liên quan:** Rule 20, Rule 41, Rule 45.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **不明発信者** | 「3回もメールしたのに返信がないんですよ！どうなってるんですか！」 |
| **ズン** | 「はい...左様でございましたか。」 |
| **不明発信者** | 「もう1週間ですよ、1週間！」 |
| **ズン** | 「ご返信が遅くなり、本当に申し訳ございません。すぐに状況を確認の上、本日中に必ずご回答差し上げます。」 |
| **不明発信者** | 「...じゃあお願いします。」 |

## ⚠ Điểm chú ý

- **「はい...」「左様でございますか」** = ack tiếng Việt như "Vâng... em hiểu". Không cắt lời.
- Sau khi khách "xả" xong → mới đến phase xin lỗi + giải pháp.

## 🎯 Câu chốt

> **「左様でございましたか。ご返信が遅くなり、本当に申し訳ございません。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 怒る | おこる | Giận |
| 傾聴 | けいちょう | Lắng nghe |
| 共感 | きょうかん | Đồng cảm |
| 遮る | さえぎる | Cắt ngang |


# Rule 41 — Bộ xử lý phàn nàn đầy đủ — 5 bước / クレーム対応のフルセット

> **Luận điểm.** 5 bước chuẩn: **(1) 傾聴 nghe**, **(2) 謝罪 xin lỗi cảm xúc**, **(3) 事実確認 xác minh**, **(4) 解決提示 giải pháp**, **(5) 再発防止 cam kết**.
>
> クレーム対応の5ステップ：傾聴→謝罪→事実確認→解決→再発防止。
>
> **Liên quan:** Rule 20, Rule 40, Rule 45.

## ✅ Hội thoại — full 5 steps

| | Speaker | Câu | Bước |
|--|---------|-----|------|
| **L1** | **不明発信者** | 「商品が壊れていました！」 | 怒り |
| **L2** | **ズン** | 「左様でございましたか。」 | 1.傾聴 |
| **L3** | **ズン** | 「ご不便をおかけしまして大変申し訳ございません。」 | 2.謝罪 |
| **L4** | **ズン** | 「恐れ入りますが、商品の状態を詳しくお聞かせいただけますでしょうか？」 | 3.確認 |
| **L5** | **不明発信者** | 「箱を開けたら画面にひびが入っていて…」 | |
| **L6** | **ズン** | 「承知いたしました。本日中に新品をお送りし、不良品は弊社にて回収の手配をいたします。」 | 4.解決 |
| **L7** | **ズン** | 「今後、出荷前検品プロセスを見直し、再発防止に努めます。」 | 5.再発防止 |

## 🎯 Câu chốt

> **「再発防止に努めます。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 再発 | さいはつ | Tái diễn |
| 防止 | ぼうし | Ngăn chặn |
| 検品 | けんぴん | Kiểm hàng |
| 回収 | かいしゅう | Thu hồi |
| 不良品 | ふりょうひん | Hàng lỗi |


# Rule 42 — Cách từ chối qua phone không gây xước / 電話で断る言い方

> **Luận điểm.** Từ chối qua phone: **(1) cảm ơn lời mời/đề xuất**, **(2) lý do khái quát** (không nói chi tiết), **(3) đề xuất phương án thay thế nếu có**.
>
> 電話で断る時：①感謝 ②婉曲な理由 ③代替案 の3点セット。
>
> **Liên quan:** Rule 30, Rule 43.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「来週金曜のセミナーにご参加いただけませんか？」 |
| **ズン** | 「お声がけいただきありがとうございます。あいにく金曜は他の予定が入っておりまして、参加が難しい状況でございます。」 |
| **ズン** | 「もし可能でしたら、後日資料を共有いただけますと幸いです。」 |
| **松本PM** | 「承知しました、資料お送りします。」 |

## ⚠ Tránh

- 「無理です」 trực tiếp = thô.
- 「ちょっと…」 mơ hồ = đối phương không biết bạn có đồng ý hay không.

## 🎯 Câu chốt

> **「あいにく〇〇が難しい状況でございます。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 断る | ことわる | Từ chối |
| あいにく | ainiku | Đáng tiếc |
| 婉曲 | えんきょく | Vòng vo |
| 代替案 | だいたいあん | Phương án thay thế |


# Rule 43 — Báo dời / đổi lịch qua phone / 延期・変更を電話で伝える

> **Luận điểm.** Báo dời lịch: **(1) xin lỗi**, **(2) lý do ngắn gọn**, **(3) đề xuất 2-3 phương án mới**, **(4) confirm + gửi mail**.
>
> 延期・変更連絡：謝罪→理由→代替日提示（複数）→メール確認の4ステップ。
>
> **Liên quan:** Rule 42, Rule 44, Rule 51.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お忙しいところ恐れ入ります。明日10時のお打ち合わせの件でお電話いたしました。」 |
| **ズン** | 「申し訳ございませんが、急遽弊社のトゥアンの出張が入りまして、日程を変更させていただきたくお願い申し上げます。」 |
| **ズン** | 「代替案として、明後日の14時、もしくは来週月曜の10時はいかがでしょうか？」 |
| **松本PM** | 「では、来週月曜10時でお願いします。」 |
| **ズン** | 「ありがとうございます。後ほど確認のメールをお送りいたします。」 |

## 🎯 Câu chốt

> **「日程を変更させていただきたくお願い申し上げます。代替案として、〇〇はいかがでしょうか？」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 延期 | えんき | Hoãn |
| 変更 | へんこう | Thay đổi |
| 急遽 | きゅうきょ | Đột xuất |
| 代替案 | だいたいあん | Phương án thay thế |
| 出張 | しゅっちょう | Công tác |


# Rule 44 — Báo tin xấu qua phone / 悪い知らせを電話で伝える

> **Luận điểm.** Tin xấu **không gửi mail trước** mà gọi điện. Cấu trúc: **(1) báo trước "tin không tốt"**, **(2) sự việc gọn**, **(3) ảnh hưởng**, **(4) kế hoạch xử lý**.
>
> 悪い知らせは電話が原則。①予告 ②事実 ③影響 ④対応策 の順で伝える。
>
> **Liên quan:** Rule 34, Rule 45.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お忙しいところ恐れ入ります。残念なお知らせがございまして、お電話いたしました。」 |
| **ズン** | 「先ほどの本番リリースで、決済モジュールに障害が発生しております。」 |
| **ズン** | 「現在ユーザーがお支払いできない状況で、影響範囲は約500件と推定されます。」 |
| **ズン** | 「対応として、すでにロールバックを実行中で、30分以内に復旧の見込みでございます。」 |
| **松本PM** | 「分かりました。復旧後に詳細レポートをください。」 |

## 🎯 Câu chốt

> **「残念なお知らせがございまして、お電話いたしました。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 障害 | しょうがい | Sự cố |
| 影響範囲 | えいきょうはんい | Phạm vi ảnh hưởng |
| 復旧 | ふっきゅう | Khôi phục |
| 推定 | すいてい | Ước tính |


# Rule 45 — Gọi xin lỗi — 4 bước / 謝罪の電話

> **Luận điểm.** Gọi xin lỗi 4 bước: **(1) thừa nhận sự việc**, **(2) xin lỗi rõ ràng** (không vòng vo), **(3) giải pháp khôi phục**, **(4) cam kết tránh tái diễn**. (Tham khảo Sách 01 Rule 53.)
>
> 謝罪電話の4ステップ：①事実認める ②明確な謝罪 ③復旧策 ④再発防止。
>
> **Liên quan:** Rule 41, Rule 44.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「先ほどはご迷惑をおかけし、誠に申し訳ございませんでした。」 |
| **ズン** | 「弊社の確認漏れにより、納期を1日遅らせる結果となりました。全責任は弊社にございます。」 |
| **ズン** | 「すぐに不足分を本日中に発送し、追加コストは弊社にて負担いたします。」 |
| **ズン** | 「今後はチェック体制を二重化し、二度とこのようなことが起きないよう徹底いたします。」 |
| **松本PM** | 「対応については分かりました。次回はお願いします。」 |

## 🎯 Câu chốt

> **「全責任は弊社にございます。」**

## ⚠ Tránh

- 「もしかしたら〜」 → lưỡng lự, không thừa nhận.
- 「仕方ありませんでした」 → đẩy lỗi cho hoàn cảnh.

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 謝罪 | しゃざい | Xin lỗi |
| 責任 | せきにん | Trách nhiệm |
| 徹底 | てってい | Triệt để |
| 二重化 | にじゅうか | Tăng gấp đôi (cơ chế kiểm) |


# Rule 46 — Gọi cảm ơn / お礼の電話

> **Luận điểm.** Sau cuộc họp / sự hỗ trợ → gọi cảm ơn trong **24h**. Cụ thể (cảm ơn vì việc gì), ngắn (3 phút), không vào việc mới.
>
> お礼電話は24時間以内に。具体的に・短く・新規依頼を混ぜない。
>
> **Liên quan:** Rule 51, Rule 35.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「昨日はお忙しい中、貴重なお時間をいただきありがとうございました。」 |
| **ズン** | 「特にAPI設計についての具体的なアドバイスは、チームにとって大変参考になりました。」 |
| **松本PM** | 「いえいえ、こちらこそ。実装で何かあればまたご連絡ください。」 |
| **ズン** | 「ありがとうございます。引き続きよろしくお願いいたします。」 |

## 🎯 Câu chốt

> **「昨日はお忙しい中、貴重なお時間をいただきありがとうございました。」**

## ⚠ Tránh

- Đan xen yêu cầu mới → biến cuộc gọi cảm ơn thành xin việc.
- Cảm ơn quá chung chung "色々ありがとう" → không có sức nặng.

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 貴重 | きちょう | Quý báu |
| 参考 | さんこう | Tham khảo |
| 引き続き | ひきつづき | Tiếp tục |


# Rule 47 — Gọi đòi nợ / nhắc thanh toán / 督促の電話

> **Luận điểm.** Đòi tiền là tình huống tế nhị. Cấu trúc: **(1) hỏi xác nhận** (giả định có thể đã trả), **(2) thông tin cụ thể** (số hóa đơn, ngày), **(3) đề xuất ngày trả mới**. Không buộc tội.
>
> 督促電話は『確認の体裁』で。請求書番号・金額・期日を明示し、相手に逃げ道を残す。
>
> **Liên quan:** Rule 41, Rule 42.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ロアン経理部長** | 「お世話になっております。ティエンファット社の経理部、ロアンと申します。」 |
| **ロアン** | 「3月分の請求書INV-2026-0315、150万円のお振込みについてご確認のお電話を差し上げました。」 |
| **ロアン** | 「期日は4月20日でございましたが、本日時点で入金が確認できておりません。何か行き違いがございましたでしょうか？」 |
| **松本PM** | 「失礼しました。経理に確認して明日中に処理します。」 |
| **ロアン** | 「ご対応ありがとうございます。引き続きどうぞよろしくお願いいたします。」 |

## 🎯 Câu chốt

> **「お振込みについてご確認のお電話を差し上げました。何か行き違いがございましたでしょうか？」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 督促 | とくそく | Đòi nợ |
| 請求書 | せいきゅうしょ | Hóa đơn |
| 振込み | ふりこみ | Chuyển khoản |
| 行き違い | いきちがい | Sự nhầm lẫn |
| 入金 | にゅうきん | Vào tiền |


# Rule 48 — Gọi để thông báo / công văn miệng / 通知のための電話

> **Luận điểm.** Khi cần thông báo chính thức (thay đổi giờ làm, đổi địa chỉ...) → gọi điện *trước* khi gửi mail. Cấu trúc: **(1) báo "có thông báo"**, **(2) nội dung**, **(3) thời điểm hiệu lực**, **(4) cam kết gửi mail xác nhận**.
>
> 公式通知は電話で先に伝え、後にメール確認の二段構え。
>
> **Liên quan:** Rule 35, Rule 51.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お世話になっております。1点ご通知申し上げたい件がございます。」 |
| **ズン** | 「来月5月1日より、弊社の新オフィスへ移転することとなりました。」 |
| **ズン** | 「住所はハノイ市バーディン区フンチエン通り123番、電話番号は変更ございません。」 |
| **ズン** | 「詳細は本日中に正式なご案内メールをお送りいたします。」 |
| **松本PM** | 「承知しました。メールお待ちしています。」 |

## 🎯 Câu chốt

> **「1点ご通知申し上げたい件がございます。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 通知 | つうち | Thông báo |
| 移転 | いてん | Chuyển trụ sở |
| 案内 | あんない | Hướng dẫn, thông báo |
| 正式 | せいしき | Chính thức |



---

# Phần V — Voicemail, Online & Best Practice / 留守電・オンライン・ベストプラクティス

# Rule 49 — Voicemail 30 giây format / 留守番電話に残すメッセージ

> **Luận điểm.** Voicemail 30 giây có 4 phần: **(1) tên + cty**, **(2) lý do gọi 1 câu**, **(3) số gọi lại + thời gian thuận**, **(4) lời chào kết**.
>
> 留守電は30秒以内・4要素：①名乗り ②要件 ③折り返し情報 ④締めの挨拶。
>
> **Liên quan:** Rule 50, Rule 32.

## ✅ Voicemail mẫu

| Speaker | Câu |
|---------|-----|
| **ズン** | 「いつもお世話になっております。ティエンファット社、営業部のズンと申します。」 |
| **ズン** | 「明日の打ち合わせ資料の件でご相談したく、お電話差し上げました。」 |
| **ズン** | 「お手すきの際に090-1234-5678までお電話いただけますと幸いです。本日17時まで対応可能でございます。」 |
| **ズン** | 「失礼いたします。」 |

## ⚠ Tránh

- 30 giây trở lên → khách bỏ qua.
- "後でかけ直します" mà không nói cụ thể → khách không biết chờ.
- Đọc số quá nhanh → khách không note kịp.

## 🎯 Câu chốt

> **「お手すきの際に〇〇〇〇までお電話いただけますと幸いです。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 留守番電話 | るすばんでんわ | Voicemail |
| お手すき | おてすき | Lúc rảnh |
| 際 | さい | Lúc, khi |
| 幸い | さいわい | Mong được |


# Rule 50 — Sau khi nghe voicemail — gọi lại trong 24h / 留守番電話を聞いた後の対応

> **Luận điểm.** Khi mình nghe được voicemail của khách → gọi lại **trong 24h**. Mở lời bằng "聞きました" + nội dung tóm tắt = thể hiện đã chú ý.
>
> 留守電を聞いた後は24時間以内に折り返し。『メッセージを確認いたしました』で受信を伝える。
>
> **Liên quan:** Rule 49, Rule 32.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お忙しいところ恐れ入ります。ティエンファット社のズンでございます。」 |
| **ズン** | 「先ほどお電話いただきましたメッセージを確認いたしました。納期の件でしたね。」 |
| **松本PM** | 「あ、ズンさん。早速ありがとうございます。」 |
| **ズン** | 「ご連絡が遅くなり申し訳ございません。本題ですが…」 |

## 🎯 Câu chốt

> **「お電話いただきましたメッセージを確認いたしました。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 確認 | かくにん | Xác nhận / kiểm tra |
| 早速 | さっそく | Nhanh chóng |
| 折り返し | おりかえし | Gọi lại |


# Rule 51 — Phone xong gửi tóm tắt qua mail / 電話後のフォローアップメール

> **Luận điểm.** Sau cuộc gọi quan trọng → gửi mail tóm tắt **trong 1h** với 3 phần: **(1) cảm ơn**, **(2) thống nhất**, **(3) bước tiếp + deadline**.
>
> 重要通話後は1時間以内にフォローアップメール。①感謝 ②合意事項 ③次アクションの3点。
>
> **Liên quan:** Rule 35, Rule 23.

## ✅ Mail mẫu

```
件名：本日のお打ち合わせのお礼（4月度進捗の件）

松本様

いつもお世話になっております。ティエンファット社のズンでございます。

本日は貴重なお時間をいただきありがとうございました。

ご相談いたしました内容、以下の通り認識合わせさせていただきます：

【合意事項】
・4月度進捗報告書を明日午前中までにメール送付
・明日14時よりオンライン会議で詳細説明

【次のアクション】
・ズン：報告書送付（4/26 12:00まで）／会議URL送付（本日中）
・松本様：会議出席（4/26 14:00）

ご認識相違がございましたら、ご返信いただけますと幸いです。

引き続きよろしくお願いいたします。
ズン
```

## ✅ Hội thoại — phone confirm

| Speaker | Câu |
|---------|-----|
| **ズン** | 「先ほどの内容、本日中にフォローアップメールでまとめてお送りいたします。ご確認のほどよろしくお願いいたします。」 |
| **松本PM** | 「お願いします。」 |

## 🎯 Câu chốt

> **「本日中にフォローアップメールでまとめてお送りいたします。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| フォローアップ | follow-up | Theo dõi tiếp |
| 認識合わせ | にんしきあわせ | Đồng nhất hiểu biết |
| 合意事項 | ごういじこう | Điểm thống nhất |


# Rule 52 — Conference call / Zoom / Teams — phone version / オンライン会議の電話作法

> **Luận điểm.** Online meeting có giọng nhưng không có hình → vẫn áp dụng phone etiquette + thêm: **(1) tự giới thiệu rõ ràng** mỗi lần phát biểu, **(2) nói chậm hơn**, **(3) confirm "聞こえますか" đầu cuộc.
>
> オンライン会議：発言時に毎回名乗り＋話速を下げる＋冒頭で音声確認。
>
> **Liên quan:** Rule 53, Rule 54, Rule 55.

## ✅ Hội thoại

*発表後*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ティエンファットのズンです。皆様、音声は聞こえておりますでしょうか？」 |
| **松本PM** | 「はい、こちらは聞こえております。」 |
| **ズン** | 「ありがとうございます。それでは、ズンより4月度の進捗についてご報告いたします。」 |
| **ズン** | 「ズンからは以上です。質問ございますでしょうか？」 |

## ⚠ Tips

- **「〇〇のズンです」** mở mỗi lần phát biểu = đối phương biết ai đang nói (vì không thấy mặt).
- **「以上です」** đánh dấu hết phần phát biểu.

## 🎯 Câu chốt

> **「〇〇のズンより〇〇についてご報告いたします。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| オンライン会議 | online kaigi | Họp online |
| 音声 | おんせい | Âm thanh |
| 発言 | はつげん | Phát biểu |
| 質問 | しつもん | Câu hỏi |


# Rule 53 — Tone giọng khi share màn hình / 画面共有時の声の使い方

> **Luận điểm.** Khi share màn hình, **chỉ trực tiếp** khu vực đang nói (「左上の表」「3行目」). Tone chậm hơn 10%, dừng nhẹ giữa các điểm để khán giả theo kịp.
>
> 画面共有時：①画面位置を言葉で指示 ②話速を下げる ③ポイント間に小休止。
>
> **Liên quan:** Rule 52, Rule 54.

## ✅ Hội thoại

*short pause*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「画面を共有いたします。今、見えておりますでしょうか？」 |
| **松本PM** | 「はい、見えています。」 |
| **ズン** | 「ありがとうございます。スライドの左上、4月度KPI表をご覧ください。」 |
| **ズン** | 「ご覧の通り、契約数は前月比15%増となっております。」 |
| **ズン** | 「次に、スライド3枚目をご覧ください。」 |

## 🎯 Câu chốt

> **「スライドの〇〇をご覧ください。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 画面共有 | がめんきょうゆう | Share màn hình |
| 表 | ひょう | Bảng |
| 前月比 | ぜんげつひ | So với tháng trước |
| 小休止 | しょうきゅうし | Nghỉ ngắn |


# Rule 54 — Mute/unmute etiquette / マイクオフ・オンの礼儀

> **Luận điểm.** Khi không nói = mute. Khi muốn nói = unmute + chờ 0.5 giây cho audio sync trước khi mở lời. Tránh "phantom audio" làm gián đoạn người khác.
>
> 発言しない時はミュート、発言時はアンミュート＋0.5秒待機。雑音回避と発言の明確化。
>
> **Liên quan:** Rule 52, Rule 57.

## ✅ Hội thoại

*unmute, wait 0.5s · 発言後、ズンが mute*

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「ご質問ございますでしょうか？」 |
| **ズン** | 「ティエンファットのズンですが、1点よろしいでしょうか？」 |
| **松本PM** | 「はい、どうぞ。」 |
| **ズン** | 「契約条件の確認をさせてください。…」 |

## ⚠ Tránh

- Mở mic mà có tiếng phòng ồn (gõ phím, nói chuyện sau lưng).
- Quên unmute → "muted" thì người khác phải nhắc.
- Giữ unmute cả buổi → tiếng thở/click làm phiền.

## 🎯 Câu chốt

> **「1点よろしいでしょうか？」(unmute → 待機 → 発言)**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| ミュート | mute | Tắt mic |
| 雑音 | ざつおん | Tạp âm |
| 待機 | たいき | Chờ |
| 発言 | はつげん | Phát biểu |


# Rule 55 — Cross-border online meeting / 国際オンライン会議

> **Luận điểm.** Họp online quốc tế: **(1) hỏi múi giờ + ngôn ngữ chính** ngay đầu, **(2) nói chậm hơn cả người Nhật bản xứ**, **(3) tránh từ lóng/bóng gió**, **(4) confirm hiểu sau mỗi vấn đề lớn.
>
> 国際オンライン会議：時差・主言語確認＋話速をさらに下げる＋曖昧表現回避。
>
> **Liên quan:** Rule 33, Rule 52.

## ✅ Hội thoại

*mid-meeting confirmation*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「皆さん、こんにちは。ベトナム時間で午前9時、日本時間11時でございます。」 |
| **ズン** | 「本日は日本語で進めさせていただきますが、ご不明な点があればいつでもお知らせください。」 |
| **松本PM** | 「承知しました。」 |
| **ズン** | 「ここまでで何かご不明な点はございますでしょうか？」 |

## 🎯 Câu chốt

> **「ご不明な点があればいつでもお知らせください。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 国際 | こくさい | Quốc tế |
| 時差 | じさ | Múi giờ |
| 主言語 | しゅげんご | Ngôn ngữ chính |
| 不明な点 | ふめいなてん | Điểm chưa rõ |


# Rule 56 — Xin phép ghi âm / transcribe / 録音・文字起こしの許可

> **Luận điểm.** Trước khi bật ghi âm hay AI transcribe → **xin phép từng người tham gia**. Quy định privacy của Nhật rất nghiêm.
>
> 録音・AI文字起こしは事前に全員の許可を得る。日本のプライバシー規定は厳格。
>
> **Liên quan:** Rule 52, Rule 59.

## ✅ Hội thoại

| Speaker | Câu |
|---------|-----|
| **ズン** | 「本日のミーティングですが、議事録作成のため録音と自動文字起こしをさせていただきたく存じます。」 |
| **ズン** | 「皆様、ご了承いただけますでしょうか？」 |
| **松本PM** | 「私は問題ありません。」 |
| **ズン** | 「ありがとうございます。それでは録音を開始いたします。」 |

## ⚠ Tránh

- Bật ghi âm trước rồi hỏi sau → vi phạm trust.
- "後でAIで文字起こしします" → đây cũng là ghi âm gián tiếp, vẫn cần xin phép.

## 🎯 Câu chốt

> **「録音と自動文字起こしをさせていただきたく存じます。皆様、ご了承いただけますでしょうか？」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 録音 | ろくおん | Ghi âm |
| 文字起こし | もじおこし | Transcribe |
| 議事録 | ぎじろく | Biên bản họp |
| 了承 | りょうしょう | Đồng ý |


# Rule 57 — Take floor in conference call — interrupt khéo / 電話会議で発言を取る

> **Luận điểm.** Khi muốn xen lời trong họp online → **đợi câu kết của người trước**, dùng câu chuẩn 「恐れ入ります」 + tự xưng. Tránh cắt lời.
>
> 電話会議で発言を取る時：①前話者の文末を待つ ②『恐れ入ります』+名乗り ③発言開始。
>
> **Liên quan:** Rule 52, Rule 54.

## ✅ Hội thoại

*unmute, wait pause*

| Speaker | Câu |
|---------|-----|
| **松本PM** | 「…ということで、現状のロードマップは順調と言えるでしょう。」 |
| **ズン** | 「恐れ入ります、ティエンファットのズンです。発言よろしいでしょうか？」 |
| **松本PM** | 「はい、ズンさんどうぞ。」 |
| **ズン** | 「ロードマップの第3四半期の項目について、追加でご相談したい点がございます。」 |

## 🎯 Câu chốt

> **「恐れ入ります、〇〇のズンです。発言よろしいでしょうか？」**

## ⚠ Tips

- Nếu nhiều người cùng nói → "お先にどうぞ" để nhường, sau mới phát biểu.
- Tránh "あの〜" rồi nói luôn → sẽ chồng tiếng người khác.

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 発言を取る | はつげんをとる | Lấy lượt phát biểu |
| 恐れ入ります | おそれいります | Phiền anh/chị, xin lỗi |
| お先に | おさきに | Trước (mời người khác đi trước) |


# Rule 58 — Hybrid meeting — vừa offline vừa online / ハイブリッド会議

> **Luận điểm.** Hybrid meeting có nguy cơ "online member bị bỏ rơi". Người moderate phải **gọi tên online member**, nhắc lại comment phòng cho online, đảm bảo cả hai bên cùng tham gia.
>
> ハイブリッド会議では『オンライン参加者が取り残されない』配慮が必須。意識的に名前を呼ぶ。
>
> **Liên quan:** Rule 52, Rule 57.

## ✅ Hội thoại — Moderator role (em Dũng tại VN office, anh Matsumoto online)

*in office · online · 後*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、オンラインからもご意見をお伺いできますでしょうか。先ほどのトゥアンの発言、聞こえておりましたか？」 |
| **松本PM** | 「はい、聞こえました。納期延長について意見申し上げてもよろしいでしょうか。」 |
| **ズン** | 「ぜひお願いいたします。」 |
| **ズン** | 「会場側で先ほど『コスト面の懸念』が出ておりますが、松本様はどうお考えでしょうか？」 |

## 🎯 Câu chốt

> **「オンラインからもお声をいただけますでしょうか。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| ハイブリッド | hybrid | Hỗn hợp |
| 参加者 | さんかしゃ | Người tham gia |
| 取り残す | とりのこす | Bỏ rơi |
| 配慮 | はいりょ | Quan tâm |
| 懸念 | けねん | Mối lo |


# Rule 59 — Quản lý lịch sử cuộc gọi & ghi chú / 電話履歴の管理

> **Luận điểm.** Mọi cuộc gọi business cần lưu lại: **(1) ngày giờ**, **(2) đối phương + cty**, **(3) tóm tắt 5W1H**, **(4) action items**, **(5) follow-up status**. Lưu trên CRM hoặc file Excel cá nhân.
>
> 通話履歴は5要素で記録：日時・相手・内容・タスク・進捗。CRMまたはエクセルで保管。
>
> **Liên quan:** Rule 23, Rule 51.

## Template ghi chú

| 日時 | 相手 | 用件 | アクション | 期限 | ステータス |
|------|------|------|-----------|------|----------|
| 4/25 10:00 | 松本PM (白鷗) | 4月度進捗 | 報告書送付 | 4/26 12:00 | ✅完了 |
| 4/25 14:30 | ハー CTO | API設計確認 | 設計書修正 | 4/28 18:00 | 進行中 |

## ✅ Hội thoại — báo cáo nội bộ về việc lưu

| Speaker | Câu |
|---------|-----|
| **フオン** | 「先週の松本様との通話、記録されてる？」 |
| **ズン** | 「はい、CRMに登録済みです。アクションは『報告書送付』で完了ステータスにしております。」 |
| **フオン** | 「ありがとう。来月のレビューで参照します。」 |

## 🎯 Câu chốt

> **「CRMに登録済みです。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 履歴 | りれき | Lịch sử |
| 記録 | きろく | Ghi nhận |
| 進捗 | しんちょく | Tiến độ |
| 完了 | かんりょう | Hoàn thành |


# Rule 60 — Self-diagnostic — phone skills checklist / 電話力の自己診断

> **Luận điểm.** Cuối sách: tự chấm điểm 10 điểm phone skill từ rule 1 đến 59. Đánh dấu mục yếu → ôn lại rule tương ứng. **Phone skill = practice, not theory**.
>
> 電話力チェックリスト10項目で自己診断。弱点の rule に戻って再演習。
>
> **Liên quan:** Rule 01, Rule 35.

## ✅ 10-item Self-Diagnostic

| # | Câu hỏi tự chấm | ✓/✗ | Rule liên quan |
|---|----------------|------|----------------|
| 1 | Tôi có thể đọc câu mở 「お電話ありがとうございます〜」 trong 3 giây không? | | Rule 01 |
| 2 | Tôi bắt máy trong 3 hồi chuông? | | Rule 02 |
| 3 | Tôi có template note 5W1H sẵn? | | Rule 05, 14 |
| 4 | Tôi confirm tên/số/email bằng cách lặp lại? | | Rule 12, 13 |
| 5 | Tôi xử lý 4 pattern unavailable trôi chảy? | | Rule 16 |
| 6 | Tôi đề xuất "30秒ピッチ" được khi gọi đi? | | Rule 28 |
| 7 | Tôi nói "お電話が遠いようですが" thay vì "声が小さい"? | | Rule 38 |
| 8 | Tôi xử lý phàn nàn theo 5 bước? | | Rule 41 |
| 9 | Tôi gửi follow-up mail trong 1h sau gọi quan trọng? | | Rule 51 |
| 10 | Tôi mute khi không nói trong online meeting? | | Rule 54 |

## Self-grading

- **9-10 ✓:** Phone skill đạt level business — sẵn sàng làm việc với khách Nhật.
- **6-8 ✓:** Còn vài điểm yếu — luyện rule tương ứng 1 tuần.
- **0-5 ✓:** Đọc lại sách từ đầu, mỗi rule luyện nói 5 lần.

## ✅ Hội thoại — review với mentor

| Speaker | Câu |
|---------|-----|
| **フオン** | 「ズン、自己診断やってみた？」 |
| **ズン** | 「はい、9点でした。Rule 38の『お電話が遠い』表現がまだ少し練習不足ですので、来週重点的に練習します。」 |
| **フオン** | 「いい姿勢ね。継続が一番です。」 |

## 🎯 Câu chốt

> **「電話力は理論ではなく、練習の量。」**

## 📚 Vocab

| 漢字 | よみ | Nghĩa |
|------|------|-------|
| 自己診断 | じこしんだん | Tự chẩn đoán |
| 弱点 | じゃくてん | Điểm yếu |
| 練習 | れんしゅう | Luyện tập |
| 継続 | けいぞく | Liên tục |



---

# Phụ lục A — Script Template Tổng Hợp / 場面別フレーズ集

*Tổng hợp `key_phrases` từ tất cả 60 rules. Sắp xếp theo phần để tiện tra cứu khi soạn / luyện.*

*Mỗi cụm có thể audio TTS — cấu trúc trong `conversation.json` của từng rule.*

---


## Phần I — Nền tảng trước nhấc máy

### Rule 01 — Câu mở đầu khi nhấc máy / 受電の第一声

**ズン (em Dũng):**

> 🇯🇵 「お電話ありがとうございます。〇〇社、〇〇部の〇〇でございます。」
>
> 🇻🇳 *Cảm ơn anh đã gọi điện. Tôi là 〇〇, phòng 〇〇, công ty 〇〇 ạ.*
>
> 📝 _受電第一声の標準フォーマット — 全電話で使える基本テンプレート_

**ズン (em Dũng):**

> 🇯🇵 「お待たせいたしました。」
>
> 🇻🇳 *Xin lỗi vì đã để anh/chị đợi.*
>
> 📝 _受電が遅れた時の詫び — 第一声と組み合わせて使う_


### Rule 02 — Bắt máy trong 3 hồi chuông / 3コール以内に出る

**ズン (em Dũng):**

> 🇯🇵 「お電話ありがとうございます。お待たせいたしました、〇〇社の〇〇でございます。」
>
> 🇻🇳 *Cảm ơn anh đã gọi. Xin lỗi vì đã để anh đợi, tôi là 〇〇 bên Cty 〇〇 ạ.*
>
> 📝 _3コール超え時の第一声テンプレート_


### Rule 03 — Trễ thì xin lỗi đúng cách / お待たせした時の詫び方

**ズン (em Dũng):**

> 🇯🇵 「大変お待たせし、申し訳ございません。」
>
> 🇻🇳 *Vô cùng xin lỗi vì đã để anh/chị đợi.*
>
> 📝 _1分以上保留時の標準詫び — どの場面でも安全_


### Rule 04 — Một tay nghe, một tay ghi / 片手で受話器、片手でメモ

**ズン (em Dũng):**

> 🇯🇵 「復唱させていただきます。〇〇、〇〇、〇〇でよろしいでしょうか。」
>
> 🇻🇳 *Em xin lặp lại để xác nhận: 〇〇, 〇〇, 〇〇 đúng không ạ?*
>
> 📝 _情報確認の標準フォーマット_


### Rule 05 — Template ghi chú 5W1H / 5W1Hメモテンプレート

**ズン (em Dũng):**

> 🇯🇵 「念のため復唱させていただきます。〇〇、〇〇、〇〇でよろしいでしょうか。」
>
> 🇻🇳 *Em xin lặp lại để chắc chắn: 〇〇, 〇〇, 〇〇 đúng không ạ?*
>
> 📝 _5W1H確認の標準フレーズ_


### Rule 06 — Pitch và tốc độ giọng phone / 電話の声の高さ・速度

**ズン (em Dũng):**

> 🇯🇵 「電話の声は半音上げて、10%遅く話す。」
>
> 🇻🇳 *Giọng phone: cao hơn nửa note, chậm hơn 10%.*
>
> 📝 _電話声の3調整原則を覚える_


### Rule 07 — Smile in voice — giọng truyền cảm xúc / 声で笑顔を作る

**ズン (em Dũng):**

> 🇯🇵 「電話に出る前に1秒、口角を上げる。」
>
> 🇻🇳 *Trước khi bốc máy, nâng góc miệng 1 giây.*
>
> 📝 _笑顔の習慣化 — 電話前のルーティン_


### Rule 08 — Môi trường yên lúc gọi/nhận / 静かな環境を確保

**ズン (em Dũng):**

> 🇯🇵 「重要な電話の前は、必ず静かな場所へ。」
>
> 🇻🇳 *Trước cuộc gọi quan trọng, vào nơi yên tĩnh.*
>
> 📝 _通話準備のルール_


### Rule 09 — Setup bàn trước cuộc gọi quan trọng / 重要電話前のデスク準備

**ズン (em Dũng):**

> 🇯🇵 「重要電話の30秒前にデスクを整える。」
>
> 🇻🇳 *Trước cuộc gọi quan trọng, sắp xếp bàn 30 giây.*
>
> 📝 _通話準備のルーティン化_


### Rule 10 — Tâm lý chuẩn bị cho cuộc gọi khó / 困難電話のメンタル準備

**ズン (em Dũng):**

> 🇯🇵 「結論から申し上げますと、〇〇です。」
>
> 🇻🇳 *Em xin nói kết luận trước: 〇〇 ạ.*
>
> 📝 _困難電話の冒頭テンプレート — 結論先行_



## Phần II — Nhận điện thoại

### Rule 11 — Đại diện công ty trả lời, không phải cá nhân / 会社の代表として答える

**ズン (em Dũng):**

> 🇯🇵 「確認の上、〇〇までにご連絡いたします。」
>
> 🇻🇳 *Em xác nhận và liên lạc lại anh/chị trước 〇〇 ạ.*
>
> 📝 _「分からない」を会社代表として言い換えるテンプレート_


### Rule 12 — Xác nhận tên đối phương / 相手の名前を復唱で確認

**ズン (em Dũng):**

> 🇯🇵 「〇〇様でいらっしゃいますね。」
>
> 🇻🇳 *Anh/chị là 〇〇 đúng không ạ?*
>
> 📝 _名前確認の標準フレーズ_


### Rule 13 — Lặp lại số / email / tên / 数字・メール・氏名の復唱

**ズン (em Dũng):**

> 🇯🇵 「数字を区切って復唱させていただきます。」
>
> 🇻🇳 *Em xin lặp lại từng số ạ.*
>
> 📝 _数字確認の標準_


### Rule 14 — 5W1H ghi chú bắt buộc / 5W1Hメモは必須

**ズン (em Dũng):**

> 🇯🇵 「念のため復唱いたします。」
>
> 🇻🇳 *Em xin lặp lại để chắc chắn ạ.*
>
> 📝 _5W1H確認の冒頭_


### Rule 15 — Chuyển máy khi người nhận có mặt / 担当者がいる場合の取次ぎ

**ズン (em Dũng):**

> 🇯🇵 「お電話変わりました。〇〇でございます。」
>
> 🇻🇳 *Dạ, em 〇〇 nghe máy đây ạ.*
>
> 📝 _取次ぎ後の第一声_

**ハイ (em Hải):**

> 🇯🇵 「少々お待ちください。ただ今おつなぎいたします。」
>
> 🇻🇳 *Anh đợi chút ạ. Em xin nối máy ngay.*
>
> 📝 _取次ぎ前の保留依頼_


### Rule 16 — 4 pattern xử lý khi người nhận vắng / 担当者不在の4パターン

**ズン (em Dũng):**

> 🇯🇵 「あいにく〇〇はただいま会議中でございまして、〇時には終わる予定でございます。」
>
> 🇻🇳 *Đáng tiếc anh/chị 〇〇 hiện đang họp, dự kiến 〇 giờ sẽ kết thúc ạ.*
>
> 📝 _不在対応・会議中パターン_

**ズン (em Dũng):**

> 🇯🇵 「あいにく外出しておりまして、本日は〇時に戻る予定でございます。」
>
> 🇻🇳 *Đáng tiếc anh ấy đang ra ngoài, dự kiến hôm nay 〇 giờ sẽ về ạ.*
>
> 📝 _不在対応・外出中パターン_

**ズン (em Dũng):**

> 🇯🇵 「終わり次第、折り返しお電話差し上げるようお伝えしましょうか？」
>
> 🇻🇳 *Khi xong em sẽ nhắn gọi lại cho anh, được không ạ?*
>
> 📝 _折り返し提案_


### Rule 17 — Hold tối đa 1 phút / 保留は1分以内

**ズン (em Dũng):**

> 🇯🇵 「お待たせいたしまして大変申し訳ございません。折り返しお電話差し上げてもよろしいでしょうか。」
>
> 🇻🇳 *Xin lỗi đã để anh đợi lâu. Em xin phép gọi lại sau được không ạ?*
>
> 📝 _保留長引いた時の標準対応_


### Rule 18 — 5 yếu tố bắt buộc khi take message / 伝言メモの5要素

**ズン (em Dũng):**

> 🇯🇵 「念のため復唱させていただきます。」
>
> 🇻🇳 *Em xin phép lặp lại để chắc chắn ạ.*
>
> 📝 _復唱開始フレーズ_

**ズン (em Dũng):**

> 🇯🇵 「責任を持って申し伝えます。」
>
> 🇻🇳 *Em xin chịu trách nhiệm chuyển lời ạ.*
>
> 📝 _伝言締めくくり・信頼形成_


### Rule 19 — Xử lý wrong number lịch sự / 間違い電話への対応

**ズン (em Dũng):**

> 🇯🇵 「お間違いではないでしょうか？お手数ですが、お確かめの上おかけ直しください。」
>
> 🇻🇳 *Có lẽ anh/chị nhầm số. Phiền anh/chị kiểm tra lại rồi gọi lại giúp ạ.*
>
> 📝 _間違い電話の標準応対_


### Rule 20 — Bước đầu xử lý phàn nàn qua phone / クレーム電話の最初の対応

**ズン (em Dũng):**

> 🇯🇵 「ご不便をおかけしまして大変申し訳ございません。詳しくお伺いしてもよろしいでしょうか。」
>
> 🇻🇳 *Em xin lỗi vì đã gây bất tiện. Cho em hỏi chi tiết hơn được không ạ?*
>
> 📝 _クレーム第一声・傾聴と感情謝罪_


### Rule 21 — Khi khách hỏi đường đến văn phòng / 訪問先案内の電話

**ズン (em Dũng):**

> 🇯🇵 「〇〇を目印に、〇〇通りを徒歩約〇分でございます。」
>
> 🇻🇳 *Lấy 〇〇 làm mốc, đi phố 〇〇 khoảng 〇 phút đi bộ ạ.*
>
> 📝 _道案内の標準フォーマット_


### Rule 22 — Thứ tự gác máy: khách trước, mình sau / 受話器を置くタイミング

**ズン (em Dũng):**

> 🇯🇵 「本日はお電話ありがとうございました。失礼いたします。」
>
> 🇻🇳 *Hôm nay cảm ơn anh đã gọi ạ. Em xin phép cúp máy ạ.*
>
> 📝 _電話終了の標準フレーズ_


### Rule 23 — Báo lại nội bộ sau cuộc gọi quan trọng / 受電後の社内報告

**ズン (em Dũng):**

> 🇯🇵 「先ほど〇時頃、〇〇様からお電話がございました。」
>
> 🇻🇳 *Khoảng 〇 giờ vừa rồi, anh/chị 〇〇 có gọi điện ạ.*
>
> 📝 _受電後社内報告の冒頭_



## Phần III — Gọi điện thoại đi

### Rule 24 — Checklist trước khi nhấn gọi / 発信前のチェックリスト

**ズン (em Dũng):**

> 🇯🇵 「お世話になっております。ティエンファット社、営業部のズンでございます。〇〇様のお席はございますでしょうか？」
>
> 🇻🇳 *Cảm ơn anh đã hỗ trợ. Em là Dũng phòng kinh doanh Cty Thiên Phát ạ. Anh/chị 〇〇 có ở văn phòng không ạ?*
>
> 📝 _発信時の標準フォーマット_


### Rule 25 — Chọn giờ gọi — khung tránh / khung tốt / 電話する時間帯の選び方

**ズン (em Dũng):**

> 🇯🇵 「今、お電話よろしいでしょうか？」
>
> 🇻🇳 *Bây giờ em gọi điện có tiện cho anh không ạ?*
>
> 📝 _発信時の都合確認_


### Rule 26 — Format giới thiệu khi gọi đi / 発信時の名乗りフォーマット

**ズン (em Dũng):**

> 🇯🇵 「ティエンファット社、営業部のズンと申します。恐れ入りますが、〇〇様はいらっしゃいますでしょうか？」
>
> 🇻🇳 *Em là Dũng phòng kinh doanh Cty Thiên Phát ạ. Phiền chị, anh/chị 〇〇 có ở văn phòng không ạ?*
>
> 📝 _発信名乗り＋取次依頼の標準_


### Rule 27 — Hỏi đối phương có rảnh trước khi vào việc / 相手の都合を最初に確認

**ズン (em Dũng):**

> 🇯🇵 「今、〇分ほどお時間よろしいでしょうか？」
>
> 🇻🇳 *Bây giờ em xin khoảng 〇 phút có tiện anh không ạ?*
>
> 📝 _発信後の都合確認・所要時間明示_


### Rule 28 — Pitch 30 giây — truyền đạt mục đích gọn / 30秒で要件を伝える

**ズン (em Dũng):**

> 🇯🇵 「本日お電話差し上げましたのは、〇〇の件でございます。」
>
> 🇻🇳 *Hôm nay em gọi điện về việc 〇〇 ạ.*
>
> 📝 _30秒ピッチの冒頭_


### Rule 29 — Yêu cầu lặp lại điểm quan trọng / 重要事項の復唱を依頼

**ズン (em Dũng):**

> 🇯🇵 「念のため、復唱をお願いできますでしょうか。」
>
> 🇻🇳 *Để chắc chắn, phiền anh/chị lặp lại giúp em được không ạ?*
>
> 📝 _復唱依頼の標準フレーズ_


### Rule 30 — Đề xuất chuyển kênh khi phone không đủ / 電話で済まない時の提案

**ズン (em Dũng):**

> 🇯🇵 「お電話ですとかえって分かりにくいかと存じます。〇〇でご説明させていただいてもよろしいでしょうか？」
>
> 🇻🇳 *Em e qua điện thoại sẽ khó hình dung. Em xin giải thích qua 〇〇 được không ạ?*
>
> 📝 _チャネル切替提案_


### Rule 31 — Nhờ chuyển lời khi người nhận vắng / 不在時の伝言依頼

**ズン (em Dũng):**

> 🇯🇵 「恐れ入りますが、伝言をお願いできますでしょうか。」
>
> 🇻🇳 *Phiền chị, cho em xin nhắn lại được không ạ?*
>
> 📝 _伝言依頼の標準_


### Rule 32 — Xin gọi lại — folder back template / 折り返しの依頼

**ズン (em Dũng):**

> 🇯🇵 「お手すきの時に折り返しお電話をいただけますと幸いです。」
>
> 🇻🇳 *Lúc nào rảnh xin gọi lại giúp em ạ.*
>
> 📝 _折り返し依頼の標準_


### Rule 33 — Cuộc gọi quốc tế — múi giờ + chậm hơn / 国際電話の留意点

**ズン (em Dũng):**

> 🇯🇵 「ベトナムは現在〇時、日本は〇時でございます。」
>
> 🇻🇳 *Hiện Việt Nam là 〇 giờ, Nhật là 〇 giờ ạ.*
>
> 📝 _国際電話冒頭の時差共有_


### Rule 34 — Cách nói trong cuộc gọi khẩn / 緊急電話の言い回し

**ズン (em Dũng):**

> 🇯🇵 「お忙しいところ恐れ入ります。至急ご連絡したい件がございます。」
>
> 🇻🇳 *Em xin lỗi làm phiền. Em có việc gấp cần liên hệ ạ.*
>
> 📝 _緊急電話の冒頭_


### Rule 35 — Review summary trước khi cúp máy / 電話を切る前の確認

**ズン (em Dũng):**

> 🇯🇵 「最後に確認させていただきます。〇〇、以上でよろしいでしょうか？」
>
> 🇻🇳 *Em xin chốt lại ạ. 〇〇, như vậy được không ạ?*
>
> 📝 _通話終了前のサマリー確認_



## Phần IV — Tình huống khó

### Rule 36 — Đừng để hold quá im — voice fill / 保留中の対応

**ズン (em Dũng):**

> 🇯🇵 「お待たせしております。あと少々お時間をいただきます。」
>
> 🇻🇳 *Xin lỗi đã để anh/chị đợi. Em xin thêm chút thời gian ạ.*
>
> 📝 _保留中の生存確認フレーズ_


### Rule 37 — Khi line đứt — ai gọi lại trước? / 切れた時のかけ直しルール

**ズン (em Dũng):**

> 🇯🇵 「お電話が途中で切れてしまい、大変失礼いたしました。」
>
> 🇻🇳 *Line bị ngắt giữa chừng, em rất xin lỗi anh ạ.*
>
> 📝 _再接続時の冒頭詫び_


### Rule 38 — Khi nghe không rõ — câu chuẩn / お電話が遠いようですが

**ズン (em Dũng):**

> 🇯🇵 「お電話が遠いようでございますが、もう一度お願いできますでしょうか？」
>
> 🇻🇳 *Hình như line không rõ, anh nói lại giúp em được không ạ?*
>
> 📝 _聞き取れない時の婉曲依頼_


### Rule 39 — 5 patterns hỏi lại từ không hiểu / 聞き返しの5パターン

**ズン (em Dũng):**

> 🇯🇵 「恐れ入りますが、もう一度お願いできますでしょうか？」
>
> 🇻🇳 *Phiền anh, anh nói lại giúp em được không ạ?*
>
> 📝 _全体聞き返し_

**ズン (em Dũng):**

> 🇯🇵 「どのような漢字でいらっしゃいますか？」
>
> 🇻🇳 *Kanji viết như thế nào ạ?*
>
> 📝 _漢字確認_


### Rule 40 — Khách đang giận — nghe trước, giải pháp sau / 怒っているお客様への対応

**ズン (em Dũng):**

> 🇯🇵 「左様でございましたか。本当に申し訳ございません。」
>
> 🇻🇳 *Vâng em hiểu rồi ạ. Em rất xin lỗi anh ạ.*
>
> 📝 _怒り客への共感＋謝罪_


### Rule 41 — Bộ xử lý phàn nàn đầy đủ — 5 bước / クレーム対応のフルセット

**ズン (em Dũng):**

> 🇯🇵 「再発防止に努めます。」
>
> 🇻🇳 *Em nỗ lực không để tái diễn ạ.*
>
> 📝 _クレーム対応の締めくくり_


### Rule 42 — Cách từ chối qua phone không gây xước / 電話で断る言い方

**ズン (em Dũng):**

> 🇯🇵 「あいにく〇〇が難しい状況でございます。」
>
> 🇻🇳 *Đáng tiếc 〇〇 hiện em khó (làm) được ạ.*
>
> 📝 _婉曲な拒否_


### Rule 43 — Báo dời / đổi lịch qua phone / 延期・変更を電話で伝える

**ズン (em Dũng):**

> 🇯🇵 「日程を変更させていただきたくお願い申し上げます。代替案として、〇〇はいかがでしょうか？」
>
> 🇻🇳 *Em xin phép dời lịch ạ. Em đề xuất 〇〇, anh thấy thế nào ạ?*
>
> 📝 _延期・変更依頼の標準_


### Rule 44 — Báo tin xấu qua phone / 悪い知らせを電話で伝える

**ズン (em Dũng):**

> 🇯🇵 「残念なお知らせがございまして、お電話いたしました。」
>
> 🇻🇳 *Em có tin không hay cần báo nên xin phép gọi anh ạ.*
>
> 📝 _悪い知らせの予告フレーズ_


### Rule 45 — Gọi xin lỗi — 4 bước / 謝罪の電話

**ズン (em Dũng):**

> 🇯🇵 「全責任は弊社にございます。」
>
> 🇻🇳 *Tất cả là trách nhiệm của bên em ạ.*
>
> 📝 _明確な謝罪・責任表明_


### Rule 46 — Gọi cảm ơn / お礼の電話

**ズン (em Dũng):**

> 🇯🇵 「昨日はお忙しい中、貴重なお時間をいただきありがとうございました。」
>
> 🇻🇳 *Hôm qua anh bận thế mà vẫn dành thời gian quý báu cho em, em xin cảm ơn ạ.*
>
> 📝 _お礼電話の標準冒頭_


### Rule 47 — Gọi đòi nợ / nhắc thanh toán / 督促の電話

**ロアン経理部長 (chị Loan):**

> 🇯🇵 「ご確認のお電話を差し上げました。何か行き違いがございましたでしょうか？」
>
> 🇻🇳 *Tôi gọi xác nhận ạ. Có lẽ có nhầm lẫn gì không ạ?*
>
> 📝 _督促の婉曲表現_


### Rule 48 — Gọi để thông báo / công văn miệng / 通知のための電話

**ズン (em Dũng):**

> 🇯🇵 「1点ご通知申し上げたい件がございます。」
>
> 🇻🇳 *Em có 1 việc xin được thông báo ạ.*
>
> 📝 _公式通知の予告_



## Phần V — Voicemail, Online & Best Practice

### Rule 49 — Voicemail 30 giây format / 留守番電話に残すメッセージ

**ズン (em Dũng):**

> 🇯🇵 「お手すきの際に〇〇〇〇までお電話いただけますと幸いです。」
>
> 🇻🇳 *Lúc nào rảnh anh gọi lại số 〇〇 giúp em ạ.*
>
> 📝 _留守電折り返し依頼_


### Rule 50 — Sau khi nghe voicemail — gọi lại trong 24h / 留守番電話を聞いた後の対応

**ズン (em Dũng):**

> 🇯🇵 「お電話いただきましたメッセージを確認いたしました。」
>
> 🇻🇳 *Em đã nghe lời nhắn anh để lại ạ.*
>
> 📝 _留守電応答の冒頭_


### Rule 51 — Phone xong gửi tóm tắt qua mail / 電話後のフォローアップメール

**ズン (em Dũng):**

> 🇯🇵 「本日中にフォローアップメールでまとめてお送りいたします。」
>
> 🇻🇳 *Em sẽ tổng hợp gửi mail follow-up trong hôm nay ạ.*
>
> 📝 _通話後の文書化約束_


### Rule 52 — Conference call / Zoom / Teams etiquette / オンライン会議の電話作法

**ズン (em Dũng):**

> 🇯🇵 「皆様、音声は聞こえておりますでしょうか？」
>
> 🇻🇳 *Mọi người nghe được tiếng em không ạ?*
>
> 📝 _オンライン会議冒頭の音声確認_


### Rule 53 — Tone giọng khi share màn hình / 画面共有時の声の使い方

**ズン (em Dũng):**

> 🇯🇵 「スライドの〇〇をご覧ください。」
>
> 🇻🇳 *Anh xem 〇〇 trên slide giúp em ạ.*
>
> 📝 _画面共有時の位置指示_


### Rule 54 — Mute/unmute etiquette / マイクオフ・オンの礼儀

**ズン (em Dũng):**

> 🇯🇵 「〇〇のズンですが、1点よろしいでしょうか？」
>
> 🇻🇳 *Em Dũng bên 〇〇 ạ, em xin hỏi 1 điểm được không ạ?*
>
> 📝 _アンミュート後の発言冒頭_


### Rule 55 — Cross-border online meeting / 国際オンライン会議

**ズン (em Dũng):**

> 🇯🇵 「ご不明な点があればいつでもお知らせください。」
>
> 🇻🇳 *Có gì chưa rõ anh/chị cứ nói em ạ.*
>
> 📝 _国際会議での理解確認_


### Rule 56 — Xin phép ghi âm / transcribe / 録音・文字起こしの許可

**ズン (em Dũng):**

> 🇯🇵 「録音と自動文字起こしをさせていただきたく存じます。ご了承いただけますでしょうか？」
>
> 🇻🇳 *Em xin phép ghi âm và auto-transcribe ạ. Anh/chị có đồng ý không ạ?*
>
> 📝 _録音許可の標準フレーズ_


### Rule 57 — Take floor in conference call — interrupt khéo / 電話会議で発言を取る

**ズン (em Dũng):**

> 🇯🇵 「恐れ入ります、〇〇のズンです。発言よろしいでしょうか？」
>
> 🇻🇳 *Em xin lỗi, em Dũng bên 〇〇 ạ. Em xin phát biểu được không ạ?*
>
> 📝 _発言取得の標準フレーズ_


### Rule 58 — Hybrid meeting — vừa offline vừa online / ハイブリッド会議

**ズン (em Dũng):**

> 🇯🇵 「オンラインからもお声をいただけますでしょうか。」
>
> 🇻🇳 *Phía online cho em xin ý kiến với ạ.*
>
> 📝 _ハイブリッド会議でオンライン参加者を巻き込む_


### Rule 59 — Quản lý lịch sử cuộc gọi & ghi chú / 電話履歴の管理

**ズン (em Dũng):**

> 🇯🇵 「CRMに登録済みです。」
>
> 🇻🇳 *Em đã lưu vào CRM rồi ạ.*
>
> 📝 _通話履歴管理の報告_


### Rule 60 — Self-diagnostic — phone skills checklist / 電話力の自己診断

**フオン副部長 (chị Hương):**

> 🇯🇵 「電話力は理論ではなく、練習の量。」
>
> 🇻🇳 *Kỹ năng điện thoại không nằm ở lý thuyết, mà ở số lần luyện.*
>
> 📝 _本書の締めくくりメッセージ_



---

# Phụ lục B — Từ vựng Tổng hợp / 語彙総合集

*Tổng hợp tất cả từ vựng phone-related từ 60 rules. Sắp xếp theo Phần.*

*Đọc romaji và nghĩa Việt giúp người Việt học JP business dễ tra cứu.*

---


## Phần I — Nền tảng trước nhấc máy

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| お電話 | おでんわ (o-denwa) | Cuộc gọi (kính ngữ) | rule_01 |
| ありがとうございます | arigatō gozaimasu | Cảm ơn (kính ngữ) | rule_01 |
| 営業部 | えいぎょうぶ (eigyō-bu) | Phòng kinh doanh | rule_01 |
| でございます | de-gozaimasu | です (kính ngữ trang trọng nhất) | rule_01 |
| 申します | もうします (mōshimasu) | (Khiêm nhường) "tôi tên là…" | rule_01 |
| お世話になっております | osewa ni natte orimasu | Cảm ơn anh đã hỗ trợ (chào trang trọng) | rule_01 |
| コール | kōru | Hồi chuông | rule_02 |
| 大変 | たいへん (taihen) | Rất, hết sức | rule_02 |
| 席を外す | せきをはずす (seki o hazusu) | Vắng mặt, rời chỗ | rule_02 |
| 用件 | ようけん (yōken) | Việc cần (lý do gọi) | rule_02 |
| 承る | うけたまわる (uketamawaru) | (Khiêm nhường) tiếp nhận | rule_02 |
| 申し訳ございません | もうしわけございません | Vô cùng xin lỗi (kính ngữ) | rule_03 |
| 誠に | まことに (makoto ni) | Thật sự, chân thành | rule_03 |
| 保留 | ほりゅう (horyū) | Hold, giữ máy | rule_03 |
| 受話器 | じゅわき (juwaki) | Ống nghe | rule_04 |
| メモ | memo | Note, ghi chú | rule_04 |
| 復唱 | ふくしょう (fukushō) | Lặp lại để xác nhận | rule_04 |
| 資料 | しりょう (shiryō) | Tài liệu | rule_04 |
| 念のため | ねんのため | Để chắc chắn | rule_05 |
| 件名 | けんめい | Tiêu đề, chủ đề | rule_05 |
| 対応 | たいおう | Cách xử lý, đáp | rule_05 |
| 高さ | たかさ | Độ cao (pitch) | rule_06 |
| 速度 | そくど | Tốc độ | rule_06 |
| 半音 | はんおん | Nửa note (musical) | rule_06 |
| 語尾 | ごび | Cuối câu | rule_06 |
| 笑顔 | えがお (egao) | Mặt cười, nụ cười | rule_07 |
| 口角 | こうかく | Góc miệng | rule_07 |
| 元気 | げんき | Khỏe, năng lượng | rule_07 |
| 温度 | おんど | Nhiệt độ (giọng — cảm xúc) | rule_07 |
| 環境 | かんきょう | Môi trường | rule_08 |
| 背景音 | はいけいおん | Tiếng ồn nền | rule_08 |
| 外出中 | がいしゅつちゅう | Đang ra ngoài | rule_08 |
| 容赦 | ようしゃ | Tha thứ, thông cảm | rule_08 |
| 整える | ととのえる | Sắp xếp | rule_09 |
| ヘッドセット | heddosetto | Headset | rule_09 |
| 通知 | つうち | Thông báo | rule_09 |
| 想定 | そうてい | Dự đoán | rule_10 |
| 言い訳 | いいわけ | Bào chữa | rule_10 |
| 主導権 | しゅどうけん | Quyền chủ động | rule_10 |
| 深呼吸 | しんこきゅう | Hít thở sâu | rule_10 |


## Phần II — Nhận điện thoại

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 確認 | かくにん | Xác nhận | rule_11 |
| 担当者 | たんとうしゃ | Người phụ trách | rule_11 |
| 繋ぐ | つなぐ | Nối, chuyển (máy) | rule_11 |
| いらっしゃる | irassharu | (Kính ngữ) là, có | rule_12 |
| 数字 | すうじ | Số | rule_13 |
| 区切る | くぎる | Phân đoạn | rule_13 |
| アットマーク | atto māku | @ (at sign) | rule_13 |
| 抜け | ぬけ | Thiếu sót | rule_14 |
| 詳細 | しょうさい | Chi tiết | rule_14 |
| 取次ぎ | とりつぎ | Chuyển máy | rule_15 |
| 変わる | かわる | Đổi (người nói) | rule_15 |
| 不在 | ふざい | Vắng mặt | rule_16 |
| 会議中 | かいぎちゅう | Đang họp | rule_16 |
| 外出 | がいしゅつ | Ra ngoài | rule_16 |
| あいにく | ainiku | Đáng tiếc thay | rule_16 |
| 折り返し | おりかえし | Gọi lại | rule_16 |
| 少々 | しょうしょう | Một chút | rule_17 |
| 伝言 | でんごん | Lời nhắn | rule_18 |
| 申し伝える | もうしつたえる | (Khiêm) chuyển lời | rule_18 |
| 間違い電話 | まちがいでんわ | Gọi nhầm số | rule_19 |
| お確かめ | おたしかめ | Kiểm tra (尊敬語 — đối phương kiểm tra) | rule_19 |
| お手数ですが | おてすうですが | Phiền anh/chị | rule_19 |
| かけ直す | かけなおす | Gọi lại | rule_19 |
| 不便 | ふべん | Bất tiện | rule_20 |
| 傾聴 | けいちょう | Lắng nghe chăm chú | rule_20 |
| 早急に | さっきゅうに | Khẩn trương | rule_20 |
| 左様でございますか | さようでございますか | Vâng, em hiểu rồi (kính ngữ) | rule_20 |
| 案内 | あんない | Hướng dẫn | rule_21 |
| 目印 | めじるし | Điểm mốc | rule_21 |
| 角 | かど | Góc đường | rule_21 |
| 右折 | うせつ | Rẽ phải | rule_21 |
| 看板 | かんばん | Bảng hiệu | rule_21 |
| 静かに | しずかに | Nhẹ nhàng | rule_22 |
| 失礼いたします | しつれいいたします | Xin phép kết thúc (kính ngữ) | rule_22 |
| 報告 | ほうこく | Báo cáo | rule_23 |
| 共有 | きょうゆう | Chia sẻ | rule_23 |
| 先ほど | さきほど | Vừa nãy | rule_23 |


## Phần III — Gọi điện thoại đi

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 発信 | はっしん | Gọi đi | rule_24 |
| 目的 | もくてき | Mục đích | rule_24 |
| 時間帯 | じかんたい | Khung giờ | rule_24 |
| 始業 | しぎょう | Bắt đầu giờ làm | rule_25 |
| 終業 | しゅうぎょう | Hết giờ làm | rule_25 |
| 昼休み | ひるやすみ | Nghỉ trưa | rule_25 |
| 名乗る | なのる | Tự xưng tên | rule_26 |
| 恐れ入りますが | おそれいりますが | Phiền anh/chị | rule_26 |
| 都合 | つごう | Sự thuận tiện | rule_27 |
| 立て込む | たてこむ | Đang bận, dày kín | rule_27 |
| 後ほど | のちほど | Lát nữa | rule_27 |
| 改めて | あらためて | Lại | rule_27 |
| 要件 | ようけん | Việc, mục đích | rule_28 |
| 進捗 | しんちょく | Tiến độ | rule_28 |
| 期限 | きげん | Hạn chót | rule_28 |
| 前置き | まえおき | Lời mở rào | rule_28 |
| 金額 | きんがく | Số tiền | rule_29 |
| 納期 | のうき | Hạn giao | rule_29 |
| かえって | kaette | Ngược lại, càng | rule_30 |
| 添付 | てんぷ | Đính kèm | rule_30 |
| オンライン会議 | online kaigi | Họp online | rule_30 |
| 切り替える | きりかえる | Chuyển đổi | rule_30 |
| 問題ございません | もんだいございません | Không vấn đề (kính ngữ) | rule_31 |
| 旨 | むね | Việc, ý là | rule_31 |
| お手すき | おてすき | Lúc rảnh | rule_32 |
| 幸いです | さいわいです | Mong được... | rule_32 |
| 終日 | しゅうじつ | Cả ngày | rule_32 |
| 時差 | じさ | Lệch giờ | rule_33 |
| 略語 | りゃくご | Từ viết tắt | rule_33 |
| 至急 | しきゅう | Khẩn cấp | rule_33 |
| 国際電話 | こくさいでんわ | Cuộc gọi quốc tế | rule_33 |
| 即時 | そくじ | Ngay lập tức | rule_34 |
| ずれ込む | ずれこむ | Trễ, dời | rule_34 |
| 見込み | みこみ | Dự kiến | rule_34 |
| 合意 | ごうい | Đồng ý, thống nhất | rule_35 |
| 担当 | たんとう | Người phụ trách | rule_35 |


## Phần IV — Tình huống khó

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 保留中 | ほりゅうちゅう | Đang giữ máy | rule_36 |
| 沈黙 | ちんもく | Im lặng | rule_36 |
| 途中 | とちゅう | Giữa chừng | rule_37 |
| 切れる | きれる | Đứt, ngắt | rule_37 |
| 電波 | でんぱ | Sóng điện thoại | rule_37 |
| 遠い | とおい | Xa (line không rõ) | rule_38 |
| はっきり | hakkiri | Rõ ràng | rule_38 |
| 聞き返し | ききかえし | Hỏi lại | rule_39 |
| 垣 | かき | Hàng rào | rule_39 |
| 意味 | いみ | Nghĩa | rule_39 |
| 怒る | おこる | Giận | rule_40 |
| 共感 | きょうかん | Đồng cảm | rule_40 |
| 遮る | さえぎる | Cắt ngang | rule_40 |
| 再発 | さいはつ | Tái diễn | rule_41 |
| 防止 | ぼうし | Ngăn chặn | rule_41 |
| 検品 | けんぴん | Kiểm hàng | rule_41 |
| 回収 | かいしゅう | Thu hồi | rule_41 |
| 不良品 | ふりょうひん | Hàng lỗi | rule_41 |
| 断る | ことわる | Từ chối | rule_42 |
| 婉曲 | えんきょく | Vòng vo | rule_42 |
| 代替案 | だいたいあん | Phương án thay thế | rule_42 |
| 延期 | えんき | Hoãn | rule_43 |
| 変更 | へんこう | Thay đổi | rule_43 |
| 急遽 | きゅうきょ | Đột xuất | rule_43 |
| 出張 | しゅっちょう | Công tác | rule_43 |
| 障害 | しょうがい | Sự cố | rule_44 |
| 影響範囲 | えいきょうはんい | Phạm vi ảnh hưởng | rule_44 |
| 復旧 | ふっきゅう | Khôi phục | rule_44 |
| 推定 | すいてい | Ước tính | rule_44 |
| 謝罪 | しゃざい | Xin lỗi | rule_45 |
| 責任 | せきにん | Trách nhiệm | rule_45 |
| 徹底 | てってい | Triệt để | rule_45 |
| 二重化 | にじゅうか | Tăng gấp đôi (cơ chế kiểm) | rule_45 |
| 貴重 | きちょう | Quý báu | rule_46 |
| 参考 | さんこう | Tham khảo | rule_46 |
| 引き続き | ひきつづき | Tiếp tục | rule_46 |
| 督促 | とくそく | Đòi nợ | rule_47 |
| 請求書 | せいきゅうしょ | Hóa đơn | rule_47 |
| 振込み | ふりこみ | Chuyển khoản | rule_47 |
| 行き違い | いきちがい | Sự nhầm lẫn | rule_47 |
| 入金 | にゅうきん | Vào tiền | rule_47 |
| 移転 | いてん | Chuyển trụ sở | rule_48 |
| 正式 | せいしき | Chính thức | rule_48 |


## Phần V — Voicemail, Online & Best Practice

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 留守番電話 | るすばんでんわ | Voicemail | rule_49 |
| 際 | さい | Lúc, khi | rule_49 |
| 幸い | さいわい | Mong được | rule_49 |
| 早速 | さっそく | Nhanh chóng | rule_50 |
| フォローアップ | follow-up | Theo dõi tiếp | rule_51 |
| 認識合わせ | にんしきあわせ | Đồng nhất hiểu biết | rule_51 |
| 合意事項 | ごういじこう | Điểm thống nhất | rule_51 |
| 音声 | おんせい | Âm thanh | rule_52 |
| 発言 | はつげん | Phát biểu | rule_52 |
| 質問 | しつもん | Câu hỏi | rule_52 |
| 画面共有 | がめんきょうゆう | Share màn hình | rule_53 |
| 表 | ひょう | Bảng | rule_53 |
| 前月比 | ぜんげつひ | So với tháng trước | rule_53 |
| 小休止 | しょうきゅうし | Nghỉ ngắn | rule_53 |
| ミュート | mute | Tắt mic | rule_54 |
| 雑音 | ざつおん | Tạp âm | rule_54 |
| 待機 | たいき | Chờ | rule_54 |
| 国際 | こくさい | Quốc tế | rule_55 |
| 主言語 | しゅげんご | Ngôn ngữ chính | rule_55 |
| 不明な点 | ふめいなてん | Điểm chưa rõ | rule_55 |
| 録音 | ろくおん | Ghi âm | rule_56 |
| 文字起こし | もじおこし | Transcribe | rule_56 |
| 議事録 | ぎじろく | Biên bản họp | rule_56 |
| 了承 | りょうしょう | Đồng ý | rule_56 |
| 発言を取る | はつげんをとる | Lấy lượt phát biểu | rule_57 |
| 恐れ入ります | おそれいります | Phiền anh/chị, xin lỗi | rule_57 |
| お先に | おさきに | Trước (mời người khác đi trước) | rule_57 |
| ハイブリッド | hybrid | Hỗn hợp | rule_58 |
| 参加者 | さんかしゃ | Người tham gia | rule_58 |
| 取り残す | とりのこす | Bỏ rơi | rule_58 |
| 配慮 | はいりょ | Quan tâm | rule_58 |
| 懸念 | けねん | Mối lo | rule_58 |
| 履歴 | りれき | Lịch sử | rule_59 |
| 記録 | きろく | Ghi nhận | rule_59 |
| 完了 | かんりょう | Hoàn thành | rule_59 |
| 自己診断 | じこしんだん | Tự chẩn đoán | rule_60 |
| 弱点 | じゃくてん | Điểm yếu | rule_60 |
| 練習 | れんしゅう | Luyện tập | rule_60 |
| 継続 | けいぞく | Liên tục | rule_60 |


**Tổng:** 195 từ unique đã liệt kê trong sách.


---

# Phụ lục C — BJT Practice Tổng Hợp / BJT練習問題集

*Tổng hợp tất cả BJT practice questions từ 60 rules, sắp xếp theo level và skill.*

*Dùng để luyện thi BJT business Japanese — câu hỏi có audio prompt được link đến rule gốc.*

---


## Level J4 (8 câu)

### J4.1 (từ rule_04 — Một tay nghe, một tay ghi)

**Skill:** 場面把握

**Q:** 電話を取った後に「ちょっとお待ちください、ペンを...」と言う行為について、最も正しい評価は？

- A) 丁寧で問題ない
- **B) 準備不足を相手に印象付ける**
- C) 電話のマナーとして標準的
- D) 相手も同じ経験があるので問題ない

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 電話を取る前にメモの準備があるべき。後から探すのは準備不足の印象。
- 🇻🇳 Phải có sẵn bút giấy TRƯỚC khi bốc máy. Tìm sau = lộ chuẩn bị thiếu.

### J4.2 (từ rule_08 — Môi trường yên lúc gọi/nhận)

**Skill:** 場面把握

**Q:** 重要な顧客電話を受けるのに最も適切な場所は？

- A) カフェ
- B) 車内
- **C) 静かな会議室**
- D) 賑やかなオープンオフィス

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 背景音のない静かな会議室が理想。
- 🇻🇳 Phòng họp yên tĩnh không tiếng ồn nền là lý tưởng.

### J4.3 (từ rule_12 — Xác nhận tên đối phương)

**Skill:** 表現読解

**Q:** 相手の名前を確認する最も丁寧な言い方は？

- A) お名前は？
- B) 誰ですか？
- **C) 〇〇様でいらっしゃいますね**
- D) 〇〇さんですか

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 「いらっしゃる」が最高の敬語。
- 🇻🇳 「いらっしゃる」 là kính ngữ cao nhất.

### J4.4 (từ rule_22 — Thứ tự gác máy: khách trước, mình sau)

**Skill:** 場面把握

**Q:** 顧客との電話で、受話器を置くタイミングは？

- A) 自分が先に置く
- B) 相手より先に置く
- **C) 相手が置いてから2-3秒後に静かに置く**
- D) 同時に置く

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 顧客や上司が切ってから自分が切るのが基本マナー。
- 🇻🇳 Khách/cấp trên cúp trước, mình cúp sau là quy tắc cơ bản.

### J4.5 (từ rule_25 — Chọn giờ gọi — khung tránh / khung tốt)

**Skill:** 場面把握

**Q:** ビジネス電話の発信時間として最も避けるべきは？

- A) 10時半
- **B) 12時半**
- C) 14時
- D) 15時

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 12時-13時は昼休みで発信NG。
- 🇻🇳 12-13h là giờ nghỉ trưa, không nên gọi.

### J4.6 (từ rule_36 — Đừng để hold quá im — voice fill)

**Skill:** 場面把握

**Q:** 保留が30秒を超える時の対応として正しいのは？

- A) そのまま沈黙
- **B) 30秒ごとに『お待たせしております』と声かけ**
- C) 電話を切る
- D) 音楽だけ流す

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 沈黙は不安の元。30秒ごとの生存確認が基本。
- 🇻🇳 Im lặng gây lo lắng. 30 giây quay lại 1 lần là chuẩn.

### J4.7 (từ rule_37 — Khi line đứt — ai gọi lại trước?)

**Skill:** 場面把握

**Q:** 電話が突然切れた時、原則として誰がかけ直す？

- A) 受電側
- **B) 発信側**
- C) 上司
- D) 誰でも

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 ビジネス電話の原則は『発信側がかけ直す』。
- 🇻🇳 Nguyên tắc: bên gọi đi gọi lại trước.

### J4.8 (từ rule_54 — Mute/unmute etiquette)

**Skill:** 場面把握

**Q:** オンライン会議で発言しない時のマイクは？

- A) 常にオン
- **B) ミュート**
- C) 音楽流す
- D) 離席

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 発言しない時はミュートが基本マナー。雑音回避のため。
- 🇻🇳 Không nói thì mute — tránh tạp âm là nguyên tắc cơ bản.


## Level J3 (39 câu)

### J3.1 (từ rule_01 — Câu mở đầu khi nhấc máy)

**Skill:** 場面把握

**Q:** 「お電話ありがとうございます」の後に正しく続くのはどれか？

- A) もしもし、ズンです
- **B) ティエンファット社、営業部のズンでございます**
- C) ズン、ティエンファット営業部です
- D) ティエンファットのズン、営業部でございます

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 標準形は『会社名 → 部署 → 氏名』。Aは「もしもし」が不要。C, Dは順序が誤り。
- 🇻🇳 Format chuẩn là 'Công ty → Phòng → Tên'. A sai vì có 「もしもし」 thừa. C, D sai trật tự.

### J3.2 (từ rule_02 — Bắt máy trong 3 hồi chuông)

**Skill:** 場面把握

**Q:** 電話が5回鳴ってから取った場合、最も適切な第一声は？

- A) お電話ありがとうございます
- **B) お電話ありがとうございます。お待たせいたしました**
- C) すみません、遅くなりました
- D) もしもし、ティエンファットです

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 3コール以上は「お待たせいたしました」必須。「すみません」はビジネス電話の詫びとしてカジュアルすぎる。
- 🇻🇳 Quá 3 hồi phải có 「お待たせいたしました」. 「すみません」 quá casual cho phone business.

### J3.3 (từ rule_03 — Trễ thì xin lỗi đúng cách)

**Skill:** 表現読解

**Q:** お客様を1分以上保留にした後の第一声として最も適切なのは？

- A) お待たせしました
- B) すみません、お待たせしました
- **C) 大変お待たせし、申し訳ございません**
- D) ごめんなさい、長く待たせて

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 1分以上は「申し訳ございません」必須。「すみません」「ごめんなさい」はビジネス電話に不適切。
- 🇻🇳 1 phút+ cần 「申し訳ございません」. 「すみません」「ごめんなさい」 không phù hợp business phone.

### J3.4 (từ rule_05 — Template ghi chú 5W1H)

**Skill:** 場面把握

**Q:** 電話メモで5W1Hに含まれないのはどれか？

- A) 発信者の氏名 (Who)
- B) 打ち合わせの場所 (Where)
- **C) 発信者の年齢 (How old)**
- D) 電話の理由 (Why)

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 5W1Hは When-Who-Where-What-Why-How。年齢は含まれない。
- 🇻🇳 5W1H là When-Who-Where-What-Why-How. Tuổi không thuộc 6 yếu tố này.

### J3.5 (từ rule_06 — Pitch và tốc độ giọng phone)

**Skill:** 場面把握

**Q:** 電話で話す時、対面と比べて適切な調整は？

- A) ピッチを下げる、速く話す
- **B) ピッチを上げる、ゆっくり話す**
- C) 対面と全く同じ調子で話す
- D) ささやくように話す

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 電話では感情伝達が弱いため、ピッチ↑+速度↓で補う。
- 🇻🇳 Trên phone cảm xúc truyền yếu → bù bằng pitch cao + tốc độ chậm.

### J3.6 (từ rule_07 — Smile in voice — giọng truyền cảm xúc)

**Skill:** 場面把握

**Q:** 電話で「声に笑顔を乗せる」とは？

- A) 笑い声を出す
- **B) 実際に微笑みながら話す**
- C) 冗談を言う
- D) 声を高く張り上げる

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 実際の表情筋の動きが声の質を変える。
- 🇻🇳 Chuyển động cơ mặt thực tế thay đổi chất giọng — khoa học, không phải tip mềm.

### J3.7 (từ rule_09 — Setup bàn trước cuộc gọi quan trọng)

**Skill:** 場面把握

**Q:** 重要顧客電話前のデスク準備に含まれないものは？

- A) ペンとメモ
- B) 関連資料
- C) カレンダー
- **D) 昼食**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 昼食は不要。集中の妨げになる可能性も。
- 🇻🇳 Đồ ăn trưa không cần. Có thể làm mất tập trung.

### J3.8 (từ rule_11 — Đại diện công ty trả lời, không phải cá nhân)

**Skill:** 表現読解

**Q:** 「私には分かりません」を会社代表として言い換えると？

- A) 知りません
- B) 分からないです
- **C) 確認の上、ご連絡いたします**
- D) 他の人に聞いてください

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 会社として「確認して連絡する」が標準的回答。
- 🇻🇳 Đại diện công ty: chuẩn là 「xác nhận và liên lạc lại」.

### J3.9 (từ rule_13 — Lặp lại số / email / tên)

**Skill:** 場面把握

**Q:** 電話番号を復唱する最良の方法は？

- A) 全体を一度に
- **B) 区切って一桁ずつ**
- C) 省略して
- D) 確認しない

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 区切って一桁ずつが聞き間違い防止に最も効果的。
- 🇻🇳 Tách từng số là cách hiệu quả nhất tránh nghe nhầm.

### J3.10 (từ rule_14 — 5W1H ghi chú bắt buộc)

**Skill:** 場面把握

**Q:** 電話メモで欠けると後で問題になりやすいのは？

- A) 時間 (When)
- B) 場所 (Where)
- C) 人数 (How many)
- **D) 全て**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 5W1Hは全て揃って初めて意味がある。
- 🇻🇳 5W1H phải đủ mới có giá trị.

### J3.11 (từ rule_15 — Chuyển máy khi người nhận có mặt)

**Skill:** 表現読解

**Q:** 電話を取り次ぐ前の正しい一言は？

- A) ちょっと待って
- **B) 少々お待ちください、ただ今おつなぎいたします**
- C) 後でかけ直して
- D) 誰？

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 「少々お待ちください」が最丁寧。
- 🇻🇳 「少々お待ちください」 là lịch sự nhất.

### J3.12 (từ rule_16 — 4 pattern xử lý khi người nhận vắng)

**Skill:** 場面把握

**Q:** 担当者が会議中の時、最も適切な対応はどれか？

- A) 今いません
- B) 会議中なので無理です
- **C) あいにく会議中でございまして、〇時に終わる予定でございます**
- D) 後でかけ直してください

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 「あいにく」で詫び＋具体的な時刻提示が最良。Aは敬語不足、B/Dは突き放した印象。
- 🇻🇳 「あいにく」 + thời gian cụ thể là chuẩn. A thiếu kính ngữ, B/D nghe lạnh và đẩy việc.

### J3.13 (từ rule_17 — Hold tối đa 1 phút)

**Skill:** 場面把握

**Q:** 保留が1分を超えそうな時、最も適切なのは？

- A) そのまま待たせ続ける
- **B) 一旦戻り折り返しを提案**
- C) 電話を切る
- D) 他の人に代わる

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 1分超過しそうなら必ず一度戻る。相手の時間を尊重するのが基本マナー。
- 🇻🇳 Quá 1 phút phải quay lại line. Tôn trọng thời gian của đối phương là nguyên tắc cơ bản.

### J3.14 (từ rule_19 — Xử lý wrong number lịch sự)

**Skill:** 表現読解

**Q:** 間違い電話を受けた時、最も丁寧な言い方は？

- A) 違います、切ります
- B) 番号間違ってます
- **C) お間違いではないでしょうか？お確かめの上おかけ直しください**
- D) ここはそんな会社じゃない

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 婉曲表現と「お確かめの上」が丁寧。A/B/Dは突き放し感あり。
- 🇻🇳 Cách nói vòng + 「お確かめの上」 thể hiện lịch sự. A/B/D nghe lạnh và xua đuổi.

### J3.15 (từ rule_21 — Khi khách hỏi đường đến văn phòng)

**Skill:** 場面把握

**Q:** 訪問先案内で最も避けるべき表現は？

- A) BIDV銀行を目印にしてください
- **B) まっすぐ行って、適当に右に曲がってください**
- C) 8階建てのビルでございます
- D) 徒歩約5分でございます

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 「適当に」は曖昧で道案内NG。具体的な目印・方向・距離が原則。
- 🇻🇳 「適当に」 (đại khái) quá mơ hồ. Hướng dẫn phải cụ thể: mốc + hướng + khoảng cách.

### J3.16 (từ rule_23 — Báo lại nội bộ sau cuộc gọi quan trọng)

**Skill:** 場面把握

**Q:** 受電後の社内報告で最も含めるべき情報は？

- A) 天気の話
- **B) 発信者・用件・次のアクション**
- C) 自分の感想
- D) 個人的な話

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 報告の核は『誰から何の用件で、次に何をすべきか』。
- 🇻🇳 Cốt lõi báo cáo là 'ai gọi vì việc gì, bước tiếp theo là gì'.

### J3.17 (từ rule_24 — Checklist trước khi nhấn gọi)

**Skill:** 場面把握

**Q:** 発信前のチェックリストに含まれないものはどれか？

- A) 目的の明確化
- B) 資料の準備
- C) 5W1Hメモ
- **D) 相手の趣味の調査**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 5項目は目的・時間帯・資料・メモ・環境。趣味は不要。
- 🇻🇳 5 mục: mục đích/giờ/tài liệu/note/môi trường. Sở thích không cần.

### J3.18 (từ rule_26 — Format giới thiệu khi gọi đi)

**Skill:** 表現読解

**Q:** 発信時の自己紹介で正しい謙譲表現は？

- A) でございます
- **B) と申します**
- C) ですけど
- D) なんですが

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 発信側の自己紹介は謙譲語『と申します』。受電側は『でございます』。
- 🇻🇳 Bên gọi đi tự xưng dùng khiêm nhường 「と申します」. Bên nhận máy dùng 「でございます」.

### J3.19 (từ rule_27 — Hỏi đối phương có rảnh trước khi vào việc)

**Skill:** 表現読解

**Q:** 発信後、本題前に最も適切な質問は？

- A) もう用事はありますか
- **B) 今、お時間よろしいでしょうか**
- C) 暇ですか
- D) ちょっと話しても？

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 ビジネス電話の標準は『お時間よろしいでしょうか』。
- 🇻🇳 Câu chuẩn business: 「お時間よろしいでしょうか」.

### J3.20 (từ rule_29 — Yêu cầu lặp lại điểm quan trọng)

**Skill:** 表現読解

**Q:** 重要事項を相手に確認させる丁寧な言い方は？

- A) もう一回言ってください
- B) 復唱してください
- **C) 念のため、復唱をお願いできますでしょうか**
- D) 覚えましたか

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 『念のため』『お願いできますでしょうか』が最も丁寧。
- 🇻🇳 「念のため」 + 「お願いできますでしょうか」 là cách lịch sự nhất.

### J3.21 (từ rule_31 — Nhờ chuyển lời khi người nhận vắng)

**Skill:** 場面把握

**Q:** 伝言を依頼する時に最も含めるべき情報は？

- A) 天気
- **B) 自分の所属・用件・連絡先**
- C) 個人的な話
- D) 他社の噂

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 伝言依頼の3要素：所属・用件・折り返し連絡先。
- 🇻🇳 3 yếu tố nhờ nhắn lời: đơn vị / việc / cách liên lạc lại.

### J3.22 (từ rule_32 — Xin gọi lại — folder back template)

**Skill:** 表現読解

**Q:** 折り返し依頼で最も配慮された言い方は？

- A) 今すぐ電話してください
- **B) お手すきの時にいただけますと幸いです**
- C) 早く折り返してください
- D) 暇な時で結構です

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 『お手すきの時』『幸いです』が相手の都合を尊重した表現。
- 🇻🇳 「お手すきの時」「幸いです」 thể hiện tôn trọng thời gian đối phương.

### J3.23 (từ rule_33 — Cuộc gọi quốc tế — múi giờ + chậm hơn)

**Skill:** 場面把握

**Q:** 国際電話で最初に共有すべきは？

- A) 天気
- **B) 時差**
- C) 個人の予定
- D) 為替レート

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 時差の共有が国際電話の冒頭マナー。相手が文脈を把握しやすい。
- 🇻🇳 Chia sẻ múi giờ là phép lịch sự đầu cuộc gọi quốc tế.

### J3.24 (từ rule_35 — Review summary trước khi cúp máy)

**Skill:** 場面把握

**Q:** 通話終了前のサマリーに含めない要素は？

- A) 合意事項
- B) 担当者
- C) 期限
- **D) 個人の感想**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 サマリーは『合意・担当・期限』の3点。感想は不要。
- 🇻🇳 Tóm tắt 3 điểm: thống nhất / người làm / hạn. Cảm tưởng cá nhân không cần.

### J3.25 (từ rule_38 — Khi nghe không rõ — câu chuẩn)

**Skill:** 表現読解

**Q:** 聞き取れない時の最も丁寧な言い方は？

- A) 声が小さいです
- B) もっと大きく話してください
- **C) お電話が遠いようですが**
- D) 聞こえません

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 『お電話が遠い』が婉曲で相手を責めない表現。
- 🇻🇳 「お電話が遠い」 là cách nói vòng không trách đối phương.

### J3.26 (từ rule_39 — 5 patterns hỏi lại từ không hiểu)

**Skill:** 場面把握

**Q:** 相手の名前の漢字が分からない時の聞き方は？

- A) なんですか
- B) もう一回
- **C) どのような漢字でいらっしゃいますか？**
- D) スペル教えて

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 丁寧形で漢字を確認するのが標準。
- 🇻🇳 Cách lịch sự để xác nhận kanji.

### J3.27 (từ rule_42 — Cách từ chối qua phone không gây xước)

**Skill:** 表現読解

**Q:** 電話で断る最も丁寧な表現は？

- A) 無理です
- B) 嫌です
- **C) あいにく〇〇が難しい状況でございます**
- D) ちょっと…

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 『あいにく』『難しい状況』が最も婉曲で丁寧。
- 🇻🇳 「あいにく」 + 「難しい状況」 là cách vòng và lịch sự nhất.

### J3.28 (từ rule_43 — Báo dời / đổi lịch qua phone)

**Skill:** 場面把握

**Q:** 日程変更の電話で最も避けるべきは？

- A) 謝罪する
- **B) 代替案を1つだけ提示**
- C) 代替案を2-3つ提示
- D) メール確認する

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 代替案は複数提示が望ましい。1つだけだと選択肢を奪う。
- 🇻🇳 Nên đề xuất nhiều phương án. 1 phương án = ép đối phương.

### J3.29 (từ rule_46 — Gọi cảm ơn)

**Skill:** 場面把握

**Q:** お礼電話で避けるべき行為は？

- A) 具体的に感謝を伝える
- B) 24時間以内にかける
- **C) 新しい依頼を混ぜる**
- D) 短くまとめる

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 お礼電話では新規依頼を混ぜると感謝の意味が薄れる。
- 🇻🇳 Xen việc mới làm loãng ý nghĩa cuộc gọi cảm ơn.

### J3.30 (từ rule_48 — Gọi để thông báo / công văn miệng)

**Skill:** 場面把握

**Q:** 公式通知の最良の伝達方法は？

- A) メールのみ
- B) 電話のみ
- **C) 電話で先に伝え、メールで正式確認**
- D) 口頭で軽く伝える

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 重要な公式通知は電話＋メールの二段構えが信頼性高い。
- 🇻🇳 Thông báo chính thức quan trọng — phone + mail 2 lớp mới đáng tin.

### J3.31 (từ rule_49 — Voicemail 30 giây format)

**Skill:** 場面把握

**Q:** 留守電メッセージで含めない要素は？

- A) 名乗り
- B) 要件
- C) 折り返し番号
- **D) 個人的な世間話**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 留守電は30秒・4要素（名乗り・要件・番号・挨拶）。世間話は不要。
- 🇻🇳 Voicemail 30 giây 4 yếu tố. Chuyện phiếm không cần.

### J3.32 (từ rule_50 — Sau khi nghe voicemail — gọi lại trong 24h)

**Skill:** 表現読解

**Q:** 留守電を聞いて折り返す時の最も適切な言い方は？

- A) メッセージ聞きました
- **B) メッセージを確認いたしました**
- C) 留守電聞いた
- D) メッセージ受け取った

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 留守電には『確認いたしました』『承りました』が標準。『拝聴』は講演など重みのある内容向けで過剰。
- 🇻🇳 Voicemail dùng 「確認いたしました / 承りました」 là chuẩn. 「拝聴」 dành cho nội dung trang trọng (bài giảng, diễn văn) — quá nặng.

### J3.33 (từ rule_51 — Phone xong gửi tóm tắt qua mail)

**Skill:** 場面把握

**Q:** 重要通話後のフォローアップとして最も適切なのは？

- A) 電話だけで完結
- **B) 1時間以内にメールで合意事項を文書化**
- C) 翌週にまとめて報告
- D) 口頭でのみ伝える

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 口頭合意を1時間以内に文書化することで認識違いを防ぐ。
- 🇻🇳 Văn bản hóa thỏa thuận miệng trong 1h tránh hiểu nhầm.

### J3.34 (từ rule_52 — Conference call / Zoom / Teams etiquette)

**Skill:** 場面把握

**Q:** オンライン会議の冒頭で必須なのは？

- A) 天気の話
- **B) 音声確認と自己紹介**
- C) 個人的な雑談
- D) 資料の説明

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 視覚情報なしのため、音声確認と名乗りで参加者を識別する。
- 🇻🇳 Không có hình nên cần confirm âm thanh + tự xưng để xác định ai.

### J3.35 (từ rule_53 — Tone giọng khi share màn hình)

**Skill:** 場面把握

**Q:** 画面共有時の声の使い方として正しいのは？

- A) 速く話す
- **B) 位置を言葉で明示し、話速を下げる**
- C) 黙って画面だけ見せる
- D) 雑談を多く

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 視覚情報を言葉で補い、話速を下げて理解を促す。
- 🇻🇳 Bổ sung thông tin hình bằng lời, nói chậm để dễ hiểu.

### J3.36 (từ rule_55 — Cross-border online meeting)

**Skill:** 場面把握

**Q:** 国際オンライン会議の冒頭で確認すべきは？

- A) 天気
- **B) 時差と主言語**
- C) 個人予定
- D) 為替

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 時差・言語の共有が国際会議の出発点。
- 🇻🇳 Múi giờ + ngôn ngữ là điểm xuất phát của họp quốc tế.

### J3.37 (từ rule_57 — Take floor in conference call — interrupt khéo)

**Skill:** 場面把握

**Q:** オンライン会議で発言を取る時の最良の方法は？

- A) 前話者を遮る
- **B) 前話者の文末を待ち『恐れ入ります』で許可を取る**
- C) 黙って発言開始
- D) チャットだけ

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 前話者を尊重し許可取得型で発言する。
- 🇻🇳 Tôn trọng người trước, xin phép trước khi nói.

### J3.38 (từ rule_59 — Quản lý lịch sử cuộc gọi & ghi chú)

**Skill:** 場面把握

**Q:** 通話履歴の管理として最も適切なのは？

- A) 記憶だけに頼る
- B) 個人ノートに書く
- **C) CRMに5要素（日時・相手・内容・タスク・進捗）で記録**
- D) 記録しない

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 5要素でCRM管理が組織として最良。
- 🇻🇳 Quản lý 5 yếu tố trên CRM là tốt nhất cho tổ chức.

### J3.39 (từ rule_60 — Self-diagnostic — phone skills checklist)

**Skill:** 場面把握

**Q:** 電話力向上のために最も重要なのは？

- A) 理論を読む
- **B) 継続的な練習と自己診断**
- C) 他人の真似だけ
- D) 1度だけの研修

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 電話力は実践と振り返りの繰り返しで身につく。
- 🇻🇳 Phone skill hình thành qua thực hành + tự kiểm liên tục.


## Level J2 (13 câu)

### J2.1 (từ rule_10 — Tâm lý chuẩn bị cho cuộc gọi khó)

**Skill:** 表現読解

**Q:** 悪い知らせの電話の冒頭で最も避けるべき言葉は？

- A) 結論から申し上げますと
- B) 重要なご連絡で
- **C) すみません、ちょっと話しにくいのですが**
- D) お忙しいところ恐れ入ります

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 「話しにくい」と言うと相手も身構える。冷静に結論先行で。
- 🇻🇳 「話しにくい」làm khách cũng căng. Phải bình tĩnh, kết luận trước.

### J2.2 (từ rule_18 — 5 yếu tố bắt buộc khi take message)

**Skill:** 場面把握

**Q:** 伝言メモに必須でない要素はどれか？

- A) 相手の名前
- B) 会社名
- C) 発信時刻
- **D) 相手の年齢**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 伝言の5要素は誰・会社・番号・用件・時刻。年齢は不要。
- 🇻🇳 5 yếu tố bắt buộc là tên/cty/số/nội dung/giờ. Tuổi không cần thiết.

### J2.3 (từ rule_20 — Bước đầu xử lý phàn nàn qua phone)

**Skill:** 場面把握

**Q:** クレーム電話の最初の対応として最も適切なのは？

- A) 原因を説明する
- **B) ご不便をおかけして申し訳ございません、と感情に寄り添う**
- C) 他の人に代わる
- D) 事実を確認する

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 クレーム対応の鉄則は『傾聴 → 感情謝罪 → 事実確認 → 解決』。最初に説明すると言い訳に聞こえる。
- 🇻🇳 Nguyên tắc: nghe → xin lỗi cảm xúc → xác minh → giải pháp. Giải thích trước nghe như biện minh.

### J2.4 (từ rule_28 — Pitch 30 giây — truyền đạt mục đích gọn)

**Skill:** 場面把握

**Q:** 30秒ピッチに含まれない要素はどれか？

- A) 目的
- B) 依頼内容
- C) 期限
- **D) 雑談**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 30秒ピッチは『目的・依頼・期限』。雑談は不要。
- 🇻🇳 Pitch 30 giây chỉ gồm 'mục đích / yêu cầu / hạn'. Chuyện phiếm không cần.

### J2.5 (từ rule_30 — Đề xuất chuyển kênh khi phone không đủ)

**Skill:** 場面把握

**Q:** 複雑な数字説明を電話でする際の最良の対応は？

- A) 強引に電話で説明
- **B) メール＋オンライン会議への切り替え提案**
- C) 後日対応
- D) 電話を切る

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 複雑な内容はチャネル切替が最良。Aは伝達ミス、C/Dは無責任。
- 🇻🇳 Nội dung phức tạp nên đổi kênh. A dễ sai, C/D vô trách nhiệm.

### J2.6 (từ rule_34 — Cách nói trong cuộc gọi khẩn)

**Skill:** 場面把握

**Q:** 緊急電話の冒頭で最も適切なのは？

- A) あの〜実は〜
- **B) 至急ご連絡したい件がございます**
- C) ちょっといいですか
- D) 暇ですか

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 緊急電話は冒頭で『至急』を明示し用件直行が原則。
- 🇻🇳 Cuộc gọi khẩn phải nói 「至急」 ngay đầu rồi vào thẳng việc.

### J2.7 (từ rule_40 — Khách đang giận — nghe trước, giải pháp sau)

**Skill:** 場面把握

**Q:** 怒っているお客様への最初の対応として正しいのは？

- A) 途中で説明する
- **B) 傾聴し『左様でございましたか』と共感を示す**
- C) 電話を切る
- D) 他の人に代わる

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 怒り客対応は『傾聴→共感→解決』の順。最初は遮らず聞く。
- 🇻🇳 Trình tự: nghe → đồng cảm → giải pháp. Đầu tiên không cắt lời.

### J2.8 (từ rule_41 — Bộ xử lý phàn nàn đầy đủ — 5 bước)

**Skill:** 場面把握

**Q:** クレーム対応5ステップに含まれない要素は？

- A) 傾聴
- B) 謝罪
- **C) 値引き**
- D) 再発防止

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 5ステップは『傾聴・謝罪・確認・解決・再発防止』。値引きは含まれない（個別判断）。
- 🇻🇳 5 bước: nghe / xin lỗi / xác minh / giải pháp / cam kết. Giảm giá không thuộc bước (tùy ca).

### J2.9 (từ rule_44 — Báo tin xấu qua phone)

**Skill:** 場面把握

**Q:** 悪い知らせを伝える時の最初の一言として正しいのは？

- A) 問題が起きました
- **B) 残念なお知らせがございまして**
- C) 失敗しました
- D) ヤバいです

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 『残念なお知らせ』が予告として丁寧で、相手に心構えさせる。
- 🇻🇳 「残念なお知らせ」 là cách mở đầu lịch sự, giúp đối phương chuẩn bị.

### J2.10 (từ rule_45 — Gọi xin lỗi — 4 bước)

**Skill:** 表現読解

**Q:** 謝罪電話で最も避けるべき表現は？

- A) すべて当社の責任です
- B) 申し訳ございませんでした
- **C) 仕方ありませんでした**
- D) 再発防止に努めます

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 『仕方ありませんでした』は責任回避表現。謝罪では使わない。
- 🇻🇳 「仕方ありませんでした」 là cách đẩy lỗi cho hoàn cảnh — không dùng trong xin lỗi.

### J2.11 (từ rule_47 — Gọi đòi nợ / nhắc thanh toán)

**Skill:** 表現読解

**Q:** 督促電話で最も婉曲な表現は？

- A) お金まだですか
- **B) 何か行き違いがございましたでしょうか**
- C) 早く払ってください
- D) 支払い遅れてます

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 『行き違い』で相手のミスではない可能性を含ませた表現が最も丁寧。
- 🇻🇳 「行き違い」 ngầm nói 'có thể không phải lỗi của anh' — cách lịch sự nhất.

### J2.12 (từ rule_56 — Xin phép ghi âm / transcribe)

**Skill:** 場面把握

**Q:** オンライン会議の録音について正しいのは？

- A) 黙って録音する
- **B) 事前に全員の許可を得る**
- C) 録音後に伝える
- D) AI文字起こしは許可不要

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 録音もAI文字起こしも事前許可が必須。日本のプライバシー意識は高い。
- 🇻🇳 Cả ghi âm lẫn AI transcribe đều cần xin trước. Nhật rất nghiêm về privacy.

### J2.13 (từ rule_58 — Hybrid meeting — vừa offline vừa online)

**Skill:** 場面把握

**Q:** ハイブリッド会議で最も注意すべきは？

- A) 会場の音量
- **B) オンライン参加者を取り残さない配慮**
- C) 資料の枚数
- D) 時間厳守

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 ハイブリッド最大の課題はオンライン参加者の疎外感回避。
- 🇻🇳 Thách thức lớn nhất của hybrid là không để người online cảm thấy bị bỏ rơi.


**Tổng số câu hỏi:** 60

---

*Tài liệu này có thể export thành quiz interactive — đọc data trực tiếp từ `bjt_practice` array trong mỗi `conversation.json`.*
