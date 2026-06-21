-- Hizashi book SQL — Điện thoại Công Việc / 電話応対
-- curriculum_id = 800000003
-- node count = 60
-- generated từ release/books/02_phone/
-- KHÔNG sửa thủ công file này. Chạy lại scripts/build_sql_from_release.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, introduction_jp, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000003, NULL, 'markdown_book', 'BJT', 'Điện thoại Công Việc', 'Bộ sách Hizashi — Điện thoại Công Việc', 'Hizashi シリーズ — 電話応対', 'system', TRUE, TRUE, TRUE, FALSE, 20, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, introduction = EXCLUDED.introduction, introduction_jp = EXCLUDED.introduction_jp, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000001, 800000003, NULL, 'markdown_book', 'Rule 01 — Câu mở đầu khi nhấc máy / 受電の第一声', '# Rule 01 — Câu mở đầu khi nhấc máy / 受電の第一声
> **Luận điểm / 要点.**
> Câu đầu tiên khi nhấc máy quyết định ấn tượng cả cuộc gọi. Mẫu câu chuẩn nơi công sở: **lời chào → tên công ty → tên phòng ban → tên cá nhân**. Tránh "もしもし" — đó là cách nghe điện ở nhà, không phải ở công ty.
>
> 受電時の第一声がコール全体の印象を決める。標準形：**挨拶 → 会社名 → 部署 → 氏名**。「もしもし」は家庭用、ビジネスでは避ける。
>
> **Từ khóa / キーワード:** **`「お電話ありがとうございます」フォーマット`**
>
> **Liên quan / 関連:** Rule 02 (3 hồi chuông), Rule 11 (đại diện công ty), Rule 22 (thứ tự gác máy).

## Bối cảnh / 場面
Anh Matsumoto (松本PM, khách hàng Nhật bên Cty Hakuō) gọi cho em Dũng (ズン, BD bên ティエンファット社) lần đầu, sáng thứ Hai 9:00. Đây là cuộc gọi đầu tiên giữa hai người sau khi anh Nakamura (CFO Hakuō) giới thiệu.

---

## Hội thoại XẤU — 悪い例
>  *(đường dây kết nối, em Dũng nhấc máy)*

| Vai | Câu |
|---------|-----|
| **ズン** (BD, ティエンファット) | 「もしもし。」 <br/>*Alo.* |
| **松本PM** (Hakuō, khách Nhật) | 「...あの、ティエンファットさんですか？」 <br/>*...Ơ, là Cty Thiên Phát phải không ạ?* |
| **ズン** | 「あ、はい、そうです。」 <br/>*À, vâng, đúng rồi ạ.* |

**Vì sao xấu / なぜダメか:**

- 「もしもし」 trong môi trường công sở gợi cảm giác *cá nhân nghe điện ở nhà* — không phải đại diện công ty.
- Anh Matsumoto phải tự hỏi *"mình có gọi đúng số không"* — sự bất an ngay 3 giây đầu của cuộc gọi quan trọng.
- Em Dũng không tự xưng tên → khách không biết đang nói chuyện với ai → phải hỏi thêm 1 lượt nữa = lãng phí.

---

## Hội thoại TỐT — 良い例
>  *(đường dây kết nối, em Dũng nhấc máy)*

| Vai | Câu |
|---------|-----|
| **ズン** (BD, ティエンファット) | 「お<ruby>電話<rt>でんわ</rt></ruby>ありがとうございます【1】。ティエンファット<ruby>社<rt>しゃ</rt></ruby>、<ruby>営業部<rt>えいぎょうぶ</rt></ruby>のズン【2】でございます【3】。」 <br/>*Cảm ơn anh đã gọi điện. Tôi là Dũng, phòng kinh doanh, Cty Thiên Phát ạ.* |
| **松本PM** (Hakuō) | 「お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>白鷗株式会社<rt>はくおうかぶしきがいしゃ</rt></ruby>の<ruby>松本<rt>まつもと</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。」 <br/>*Cảm ơn anh đã hỗ trợ. Tôi là Matsumoto bên Cty Hakuō ạ.* |
| **ズン** | 「松本様、いつもお世話になっております。」 <br/>*Anh Matsumoto, em luôn cảm ơn anh đã hỗ trợ ạ.* |

 **Ghi chú / 注釈:**

- 【1】「**お電話ありがとうございます**」 — câu chuẩn doanh nghiệp Nhật khi nhận máy. Một số công ty quy định dùng「**はい、◯◯です**」cho cuộc gọi nội bộ ngắn — học theo quy định nội bộ của bạn.
- 【2】**Trật tự không đảo:** Công ty → Phòng ban → Tên cá nhân. KHÔNG nói "ズン、ティエンファット社の営業部です" — nghe lủng củng.
- 【3】「**でございます**」 — kính ngữ an toàn cho mọi đối tượng. Có thể đổi sang「です」trong cuộc gọi nội bộ rất quen.

---

## Biến thể / バリエーション
### Khi nội bộ Cty gọi đến
| Vai | Câu |
|---------|-----|
| ズン | 「はい、ティエンファット営業部、ズンです。」 <br/>*Vâng, em Dũng, phòng kinh doanh Thiên Phát đây ạ.* |

→ Lược bỏ「お電話ありがとうございます」 + dùng「です」 thay 「でございます」.

### Khi line bận / để khách đợi rồi mới bốc
| Vai | Câu |
|---------|-----|
| ズン | 「お電話ありがとうございます。お<ruby>待<rt>ま</rt></ruby>たせいたしました。ティエンファット社、営業部のズンでございます。」 <br/>*Cảm ơn anh đã gọi. Xin lỗi vì đã để anh đợi. Tôi là Dũng, phòng kinh doanh, Cty Thiên Phát ạ.* |

→ Thêm「お待たせいたしました」 trước phần tự xưng.

### Khi gọi vào ngoài giờ làm
| Vai | Câu |
|---------|-----|
| ズン | 「お電話ありがとうございます。<ruby>営業時間外<rt>えいぎょうじかんがい</rt></ruby>でございますが、<ruby>緊急<rt>きんきゅう</rt></ruby>のご<ruby>用件<rt>ようけん</rt></ruby>でしたら<ruby>承<rt>うけたまわ</rt></ruby>ります。ティエンファット社のズンでございます。」 <br/>*Cảm ơn anh đã gọi. Hiện đã ngoài giờ làm việc, nhưng nếu là việc khẩn thì em xin tiếp nhận ạ. Em là Dũng bên Cty Thiên Phát ạ.* |

→ Thêm câu báo "ngoài giờ" + "nếu khẩn thì xử lý".

---

## Cụm từ mẫu / 使えるフレーズ
> **「お<ruby>電話<rt>でんわ</rt></ruby>ありがとうございます。〇〇<ruby>社<rt>しゃ</rt></ruby>、〇〇<ruby>部<rt>ぶ</rt></ruby>の〇〇でございます。」**
>
> *Cảm ơn anh đã gọi điện. Tôi là 〇〇 (tên), phòng 〇〇, công ty 〇〇 ạ.*

**Học thuộc câu này như câu thần chú** — luyện đến mức điện thoại reo thì miệng tự bật ra, không cần suy nghĩ. Khi đầu óc còn xử lý "ai gọi mình", miệng đã hoàn thành 5 giây giới thiệu — tạo khoảng đệm để bạn lấy bút giấy chuẩn bị nghe.

---

## Luyện nói
1. Đọc to câu chốt **5 lần liên tục** với tốc độ tự nhiên (~3 giây cho cả câu).
2. Ghi âm bằng điện thoại, nghe lại — có chuyên nghiệp không?
3. Lặp lại cho đến khi nói được không vấp, không quá nhanh, không quá chậm.

**Đo lường:** Người Nhật bản xứ đọc câu này trong **2.8-3.2 giây**. Nếu bạn nói nhanh hơn 2.5 giây → đối phương khó nghe. Chậm hơn 4 giây → cảm giác chậm chạp, thiếu chuyên nghiệp.

---

## Luyện BJT
**Q1 (J3 — 場面把握):**「お電話ありがとうございます」の後に正しく続くのはどれか？

- A) 「もしもし、ズンです」
- B) **「ティエンファット社、営業部のズンでございます」**
- C) 「ズン、ティエンファット営業部です」
- D) 「ティエンファットのズン、営業部でございます」

**Giải thích:** Mẫu câu chuẩn là Cty → Phòng → Tên. A sai vì có 「もしもし」 thừa. C, D sai trật tự.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----------|----------|----------|-----------|
| お電話 | おでんわ | ĐIỆN THOẠI | Cuộc gọi (kính ngữ) |
| ありがとうございます | ありがとうございます | — | Cảm ơn (kính ngữ) |
| 営業部 | えいぎょうぶ | DOANH NGHIỆP BỘ | Phòng kinh doanh |
| でございます | でございます | — | です (kính ngữ trang trọng nhất) |
| 申します | もうします | THÂN | (Khiêm nhường) "tôi tên là…" |
| お世話になっております | おせわになっております | THẾ THOẠI | Cảm ơn anh đã hỗ trợ (chào trang trọng) |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000002, 800000003, NULL, 'markdown_book', 'Rule 02 — Bắt máy trong 3 hồi chuông / 3コール以内に出る', '# Rule 02 — Bắt máy trong 3 hồi chuông / 3コール以内に出る
> **Luận điểm / 要点.**
> Quy tắc bất thành văn ở văn phòng Nhật: bắt máy **trong 3 hồi chuông**. Quá 3 → coi như "khách bị bỏ rơi", phải kèm câu xin lỗi.
>
> 日本のオフィスの暗黙ルール：**3コール以内に取る**。それを超えたら「お待たせ」のお詫びが必須。
>
> **Từ khóa / キーワード:** **`3コール原則`**
>
> **Liên quan / 関連:** Rule 01 (câu mở đầu), Rule 03 (cách xin lỗi khi trễ).

## Bối cảnh / 場面
Sáng thứ Hai, văn phòng đông. Anh Matsumoto gọi vào số bàn em Dũng. Em Dũng đang ghi chú dở. Điện thoại reo.

---

## Hội thoại XẤU — 悪い例
>  *(reo 5 hồi, em Dũng cuối cùng bốc máy)*

| Vai | Câu |
|---------|-----|
| **ズン** | 「お電話ありがとうございます。ティエンファット社のズンでございます。」 <br/>*Cảm ơn anh đã gọi. Tôi là Dũng bên Cty Thiên Phát ạ.* |
| **松本PM** | 「(im lặng 1 giây)... お世話になっております。」 <br/>*(im 1 giây)... Cảm ơn anh đã hỗ trợ.* |

**Vì sao xấu:** Reo 5 hồi mà không xin lỗi → khách ngầm cảm thấy "được phục vụ kém". 1 giây im lặng của Matsumoto là biểu hiện. Câu mở đúng nhưng *thiếu lời xin lỗi*.

---

## Hội thoại TỐT — 良い例
>  *(reo 4 hồi, em Dũng bốc máy)*

| Vai | Câu |
|---------|-----|
| **ズン** | 「お電話ありがとうございます。お待たせいたしました【1】、ティエンファット社のズンでございます。」 <br/>*Cảm ơn anh đã gọi. Xin lỗi vì đã để anh đợi, tôi là Dũng bên Cty Thiên Phát ạ.* |
| **松本PM** | 「お世話になっております。<ruby>白鷗<rt>はくおう</rt></ruby>の松本です。」 <br/>*Cảm ơn anh đã hỗ trợ. Tôi là Matsumoto bên Hakuō.* |

 **Ghi chú:**
- 【1】Quá 3 hồi → bắt buộc kèm「お待たせいたしました」. Quá 5 hồi →「大変お待たせいたしました」 (thêm「大変」).

---

## Biến thể — Khi đang dở việc lớn không thể bốc
| Vai | Câu |
|---------|-----|
| **ハイ (đồng nghiệp đỡ)** | 「お電話ありがとうございます。ティエンファット社のハイでございます。ズンが<ruby>席<rt>せき</rt></ruby>を<ruby>外<rt>はず</rt></ruby>しておりますが、よろしければご<ruby>用件<rt>ようけん</rt></ruby>を<ruby>承<rt>うけたまわ</rt></ruby>ります。」 <br/>*Cảm ơn anh đã gọi. Tôi là Hải bên Cty Thiên Phát. Em Dũng đang vắng, nếu anh đồng ý em xin tiếp nhận nội dung ạ.* |

→ Đồng nghiệp gần đó nên đỡ máy hộ. Không để chuông reo quá 5 hồi.

---

## Cụm từ mẫu
> **「お電話ありがとうございます。お待たせいたしました、〇〇社の〇〇でございます。」**

*Khi quá 3 hồi, thêm câu xin lỗi vào ngay sau câu mở.*

---

## Luyện BJT (J3 — 場面把握)
電話が5回鳴ってから取った場合、最も適切な第一声は？

- A) お電話ありがとうございます
- B) **お電話ありがとうございます。お待たせいたしました**
- C) すみません、遅くなりました
- D) もしもし、ティエンファットです

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| コール | コール | — | Hồi chuông |
| 大変 | たいへん | ĐẠI BIẾN | Rất, hết sức |
| 席を外す | せきをはずす | TỊCH NGOẠI | Vắng mặt, rời chỗ |
| 用件 | ようけん | DỤNG KIỆN | Việc cần (lý do gọi) |
| 承る | うけたまわる | THỪA | (Khiêm nhường) tiếp nhận |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000003, 800000003, NULL, 'markdown_book', 'Rule 03 — Trễ thì xin lỗi đúng cách / お待たせした時の詫び方', '# Rule 03 — Trễ thì xin lỗi đúng cách / お待たせした時の詫び方
> **Luận điểm / 要点.**
> Có 4 mức "xin lỗi vì để đợi" tùy vào *thời gian khách đợi*. Dùng sai mức = mất điểm — nhẹ quá thì vô tâm, nặng quá thì sáo.
>
> 待たせた時間に応じて4段階の詫び方がある。レベル違いは失礼。
>
> **Từ khóa / キーワード:** **`待たせ詫び4段階`**
>
> **Liên quan / 関連:** Rule 02 (3 hồi chuông), Rule 17 (giữ máy tối đa 1 phút).

## Bối cảnh / 場面
Anh Matsumoto gọi nhiều lần, có khi đường dây bận, có khi em Dũng để khách chờ máy lâu. Cần chọn mức xin lỗi phù hợp.

---

## 4 cấp độ xin lỗi / 4段階
| Thời gian khách đợi | Câu nói | Sắc thái |
|--------------------|---------|------|
| **3-5 hồi chuông** | お待たせいたしました | áy náy nhẹ |
| **5+ hồi chuông / chờ máy 30 giây** | 大変お待たせいたしました | áy náy |
| **Chờ máy 1 phút+** | 大変お待たせし、申し訳ございません | áy náy mạnh |
| **Có thể đã không bốc đúng lúc** | 大変お待たせし、誠に申し訳ございません | áy náy + chính thức |

---

## Hội thoại XẤU — 悪い例
>  *(em Dũng bốc máy sau khi để khách chờ máy 2 phút)*

| Vai | Câu |
|---------|-----|
| **ズン** | 「お<ruby>待<rt>ま</rt></ruby>たせしました、ズンです。」 <br/>*Xin lỗi vì để đợi, tôi là Dũng.* |

**Vì sao xấu:** Chờ máy 2 phút = mức 3-4. Câu「お待たせしました」chỉ phù hợp với mức 1 (3-5 hồi). Hơn nữa thiếu「お」 = thiếu kính ngữ.

---

## Hội thoại TỐT — 良い例
>  *(sau khi để khách chờ máy 2 phút)*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>大変<rt>たいへん</rt></ruby>お<ruby>待<rt>ま</rt></ruby>たせし、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません【1】。ティエンファット<ruby>社<rt>しゃ</rt></ruby>のズンでございます。」 <br/>*Vô cùng xin lỗi vì đã để anh đợi. Tôi là Dũng bên Cty Thiên Phát ạ.* |
| **松本PM** | 「いえ、こちらこそ。」 <br/>*Không, ngược lại em.* |

 **Ghi chú:**
- 【1】Để khách chờ lâu thì cần「申し訳ございません」 ngoài「お待たせ」. Đây là 2 câu khác biệt — 「お待たせ」 ghi nhận hành động, 「申し訳ございません」 thể hiện hối tiếc.

---

## Biến thể — Khi line bận liên tục
> Khách phải gọi 3 lần mới thông

| Vai | Câu |
|---------|-----|
| **ズン** | 「大変お待たせし、<ruby>誠<rt>まこと</rt></ruby>に申し訳ございません。<ruby>何度<rt>なんど</rt></ruby>もお<ruby>電話<rt>でんわ</rt></ruby>いただきありがとうございます。」 <br/>*Vô cùng xin lỗi vì đã để anh đợi. Cảm ơn anh đã gọi nhiều lần ạ.* |

→ Thêm「何度もお電話いただきありがとうございます」 ghi nhận khách phải gọi nhiều lần.

---

## Cụm từ mẫu
> **「大変お待たせし、申し訳ございません。」**

*Câu vạn năng cho mọi tình huống để khách chờ máy lâu. An toàn không sai.*

---

## Luyện BJT (J3 — 表現読解)
お客様を1分以上保留にした後の第一声として最も適切なのは？

- A) お待たせしました
- B) すみません、お待たせしました
- C) **大変お待たせし、申し訳ございません**
- D) ごめんなさい、長く待たせて

**Giải thích:** A nhẹ. B suồng sã. D rất suồng sã (kiểu gia đình). C là chuẩn công sở cho 1 phút+.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 申し訳ございません | もうしわけございません | THÂN DỊCH | Vô cùng xin lỗi (kính ngữ) |
| 大変 | たいへん | ĐẠI BIẾN | Rất, hết sức |
| 誠に | まことに | THÀNH | Thật sự, chân thành |
| 保留 | ほりゅう | BẢO LƯU | Giữ máy/chờ máy |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000004, 800000003, NULL, 'markdown_book', 'Rule 04 — Một tay nghe, một tay ghi / 片手で受話器、片手でメモ', '# Rule 04 — Một tay nghe, một tay ghi / 片手で受話器、片手でメモ
> **Luận điểm / 要点.**
> Khi điện thoại reo, **trước khi bốc** phải có **bút + giấy** trong tầm với. Bốc rồi mới mò tìm bút = trễ ghi 5-10 giây thông tin quan trọng.
>
> 電話が鳴ったら、**取る前に**ペンとメモが手の届く位置にあること。取ってから探すのは情報を5-10秒逃す。
>
> **Từ khóa / キーワード:** **`受話器とメモは同時に`**
>
> **Liên quan / 関連:** Rule 05 (mẫu khung 5W1H), Rule 09 (bố trí bàn làm việc).

## Bối cảnh / 場面
Anh Matsumoto gọi báo lịch họp gấp với 5 thông tin (ngày, giờ, phòng, số người, hạn nộp). Em Dũng phải nghe và ghi cùng lúc.

---

## Hội thoại XẤU — 悪い例
>

| Vai | Câu |
|---------|-----|
| **ズン** | 「お<ruby>電話<rt>でんわ</rt></ruby>ありがとうございます。ズンでございます。」 <br/>*Cảm ơn anh đã gọi. Tôi là Dũng ạ.* |
| **松本PM** | 「<ruby>明日<rt>あした</rt></ruby>の14<ruby>時<rt>じ</rt></ruby>、<ruby>第<rt>だい</rt></ruby>3<ruby>会議室<rt>かいぎしつ</rt></ruby>、6<ruby>名<rt>めい</rt></ruby><ruby>参加<rt>さんか</rt></ruby>、<ruby>資料<rt>しりょう</rt></ruby>は<ruby>今日<rt>きょう</rt></ruby><ruby>中<rt>じゅう</rt></ruby>に。」 <br/>*Mai 14h, phòng họp 3, 6 người tham dự, tài liệu trong hôm nay.* |
| **ズン** | 「ちょ、ちょっとお<ruby>待<rt>ま</rt></ruby>ちください、ペンを...」 <br/>*Ơ, ơ chờ chút, để em lấy bút...* |
| **松本PM** | (im lặng, rõ ràng bị làm phiền) <br/>*(im lặng — biểu hiện bị làm phiền)* |

**Vì sao xấu:** Em Dũng bốc máy mới tìm bút = ngắt nhịp khách. 5 con số rất dễ quên 1.

---

## Hội thoại TỐT — 良い例
>  *(em Dũng đã có bút sẵn trên bàn, ngay khi nhận thấy khách sẽ nói nhiều thông tin)*

| Vai | Câu |
|---------|-----|
| **ズン** | 「お電話ありがとうございます。ズンでございます。」 <br/>*Cảm ơn anh đã gọi. Tôi là Dũng ạ.* |
| **松本PM** | 「明日の14時、第3会議室、6名参加、資料は今日中に。」 <br/>*Mai 14h, phòng họp 3, 6 người tham dự, tài liệu trong hôm nay.* |
| **ズン** | 「<ruby>復唱<rt>ふくしょう</rt></ruby>させていただきます。明日14時、第3会議室、6名、<ruby>資料<rt>しりょう</rt></ruby><ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>じゅう</rt></ruby>、で<ruby>間違<rt>まちが</rt></ruby>いございませんでしょうか【1】。」 <br/>*Em xin lặp lại: mai 14h, phòng họp 3, 6 người, tài liệu trong hôm nay ạ.* |
| **松本PM** | 「その<ruby>通<rt>とお</rt></ruby>りです。」 <br/>*Đúng vậy.* |

 **Ghi chú:**
- 【1】「復唱させていただきます」 = "em xin lặp lại để xác nhận". Câu kết của bộ 3 "nghe → ghi → lặp lại để xác nhận", giúp ghi chính xác nhất.

---

## Biến thể — Khi không có bút sẵn (emergency)
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、メモの<ruby>準備<rt>じゅんび</rt></ruby>をさせていただきますので、<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちいただけますでしょうか。」 <br/>*Xin lỗi anh, em xin phép lấy bút và giấy ghi chú, anh đợi em một chút được không ạ?* |

→ Câu xin phép lịch sự để tạm dừng 5 giây tìm bút. Vẫn tốt hơn là ngắt giữa câu khách.

---

## Cụm từ mẫu
> **「<ruby>復唱<rt>ふくしょう</rt></ruby>させていただきます。〇〇、〇〇、〇〇でよろしいでしょうか。」**

*Vừa ghi vừa lặp lại — phương pháp đảm bảo không sai sót.*

---

## Luyện BJT (J4 — 場面把握)
電話を取った後に「ちょっとお待ちください、ペンを...」と言う行為について、最も正しい評価は？

- A) 丁寧で問題ない
- B) **準備不足を相手に印象付ける**
- C) 電話のマナーとして標準的
- D) 相手も同じ経験があるので問題ない

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 受話器 | じゅわき | THỤ THOẠI KHÍ | Ống nghe |
| メモ | メモ | — | Ghi chú |
| 復唱 | ふくしょう | PHỤC XƯỚNG | Lặp lại để xác nhận |
| 資料 | しりょう | TƯ LIỆU | Tài liệu |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000005, 800000003, NULL, 'markdown_book', 'Rule 05 — Khung mẫu 5W1H ghi chú / 5W1Hメモテンプレート', '# Rule 05 — Khung mẫu 5W1H ghi chú / 5W1Hメモテンプレート
> **Luận điểm.** Mỗi cuộc gọi công việc đều cần ghi 6 điều: **When-Who-Where-What-Why-How**. Có khung mẫu sẵn = không sót thông tin.
>
> 全ての電話で「いつ・誰が・どこで・何を・なぜ・どうやって」を記録。テンプレートあり = 漏れなし。
>
> **Từ khóa:** **`5W1Hメモ`** · **Liên quan:** Rule 04, Rule 18.

## Khung mẫu ghi chú chuẩn
```
日時:   ___________  (When)
発信者: __________ 様 (Who - tên + công ty)
場所:   ___________  (Where - điện thoại/gặp mặt/email)
件名:   ___________  (What - 1 câu)
理由:   ___________  (Why - lý do gọi)
対応:   ___________  (How - mình đáp + việc tiếp theo)
受電者: __________  (Bạn - người nhận)
```

---

## Hội thoại — Sử dụng khung mẫu để xác nhận lại
| Vai | Câu |
|---------|-----|
| **松本PM** | 「来週の<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせの<ruby>件<rt>けん</rt></ruby>で、<ruby>火曜<rt>かよう</rt></ruby>の15<ruby>時<rt>じ</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>したいのですが。」 <br/>*Về cuộc họp tuần sau, tôi muốn đổi sang thứ Ba 15h ạ.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>いたしました。火曜15時に変更で<ruby>承<rt>うけたまわ</rt></ruby>りました【1】。」 <br/>*Em đã rõ. Em đã ghi nhận đổi sang thứ Ba 15h ạ.* |
| **ズン** (tiếp) | 「<ruby>念<rt>ねん</rt></ruby>のため<ruby>復唱<rt>ふくしょう</rt></ruby>させていただきます。打ち合わせを来週火曜15時に変更、でよろしいでしょうか。」 <br/>*Em xin lặp lại để chắc chắn: đổi cuộc họp sang thứ Ba tuần sau 15h, đúng không ạ?* |
| **松本PM** | 「はい、お<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Vâng, nhờ em.* |

 **Ghi chú:**
- 【1】「承りました」 = 「nhận thông tin rồi」kính ngữ. Khi dùng nó, khách hiểu bạn đã *ghi vào sổ*.

---

## Cụm từ mẫu
> **「<ruby>念<rt>ねん</rt></ruby>のため<ruby>復唱<rt>ふくしょう</rt></ruby>させていただきます。〇〇、〇〇、〇〇でよろしいでしょうか。」**

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 念のため | ねんのため | NIỆM | Để chắc chắn |
| 承る | うけたまわる | THỪA | Nhận (kính ngữ) |
| 件名 | けんめい | KIỆN DANH | Tiêu đề, chủ đề |
| 対応 | たいおう | ĐỐI ỨNG | Cách xử lý, đáp |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000006, 800000003, NULL, 'markdown_book', 'Rule 06 — Cao độ và tốc độ giọng qua điện thoại / 電話の声の高さ・速度', '# Rule 06 — Cao độ và tốc độ giọng qua điện thoại / 電話の声の高さ・速度
> **Luận điểm.** Qua điện thoại, giọng bị "thiếu nửa cảm xúc" so với gặp mặt. Bù bằng: **nâng cao độ nửa cung** + **chậm hơn 10%** + **rõ phụ âm cuối câu**.
>
> 電話では声の感情が半減。**ピッチを半音上げ**+**10%遅く**+**語尾の子音を明瞭に**。
>
> **Từ khóa:** **`電話声の3調整`** · **Liên quan:** Rule 07, Rule 28.

## So sánh / 比較
| Yếu tố | Gặp mặt | Điện thoại |
|--------|---------|-------|
| Cao độ | Bình thường | **+半音** (nửa cung cao hơn) |
| Tốc độ | Bình thường | **-10%** (chậm hơn 10%) |
| Cuối câu | Tự nhiên | **Phụ âm rõ** ("です" — "đe-su" rõ chữ "su") |

---

## Trường hợp xấu — Giọng điện thoại như gặp mặt
| Vai | Câu |
|---------|-----|
| **ズン** (giọng trầm, nhanh) | 「お電話ありがとうございます、ティエンファットのズンです。」 <br/>*Cảm ơn anh đã gọi, tôi là Dũng bên Thiên Phát.* |
| **松本PM** | 「もう一度お願いします、お名前が...」 <br/>*Xin lặp lại em, tên là gì ạ...* |

**Vì sao xấu:** Giọng trầm + nhanh qua điện thoại → khách không nghe rõ tên + công ty.

---

## Trường hợp tốt — Đã điều chỉnh
| Vai | Câu |
|---------|-----|
| **ズン** (giọng cao hơn nửa cung, chậm) | 「お電話 ありがとうございます。ティエンファット<ruby>社<rt>しゃ</rt></ruby>、ズン でございます。」 <br/>*Cảm ơn anh đã gọi. Tôi là Dũng, Cty Thiên Phát ạ.* |
| **松本PM** | 「松本です。」(không cần hỏi lại) <br/>*Tôi là Matsumoto.* |

→ Khách nghe ngay từ lần đầu = không phải hỏi lại.

---

## Luyện
1. Ghi âm câu mở đầu (Rule 01) **2 lần**: lần 1 giọng bình thường, lần 2 cao hơn nửa cung + chậm 10%.
2. Nghe lại phần 2 — đã có chất giọng điện thoại chuyên nghiệp chưa?

---

## Cụm từ mẫu
> **半音上げ・10%遅く・語尾明瞭** — 3 điều chỉnh giọng qua điện thoại.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 高さ | たかさ | CAO | Độ cao (cao độ) |
| 速度 | そくど | TỐC ĐỘ | Tốc độ |
| 半音 | はんおん | BÁN ÂM | Nửa cung (âm nhạc) |
| 語尾 | ごび | NGỮ VĨ | Cuối câu |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000007, 800000003, NULL, 'markdown_book', 'Rule 07 — Nụ cười trong giọng nói — giọng truyền cảm xúc / 声で笑顔を作る', '# Rule 07 — Nụ cười trong giọng nói — giọng truyền cảm xúc / 声で笑顔を作る
> **Luận điểm.** Điện thoại không thấy mặt → cảm xúc phải đi qua **giọng**. Khi miệng thực sự cười, giọng có hơi ấm — khách *cảm nhận* được mặc dù không thấy.
>
> 電話では顔が見えない → 感情は声を通じて伝わる。実際に笑顔を作って話すと声に温度が乗る。
>
> **Từ khóa:** **`声で笑顔`** · **Liên quan:** Rule 06, Rule 40.

## Khoa học đằng sau
Khi người ta cười, **đường thanh quản** thay đổi — tần số âm sắc cao hơn, giọng "sáng" hơn. Não người nghe nhận biết được dù không thấy mặt. Đây không phải mẹo vặt — đây là vật lý âm thanh.

---

## Trường hợp xấu — Giọng vô hồn
| Vai | Câu |
|---------|-----|
| **ズン** (mặt tỉnh, không cười) | 「お電話ありがとうございます、ズンです。」 <br/>*Cảm ơn anh đã gọi, tôi là Dũng.* |
| **松本PM** (cảm thấy lạnh) | 「あ、はい、<ruby>松本<rt>まつもと</rt></ruby>ですが...」 <br/>*À vâng, tôi là Matsumoto...* |

→ Khách *cảm* được sự thiếu năng lượng → cuộc gọi mở đầu khô.

---

## Trường hợp tốt — Cười khi nói
| Vai | Câu |
|---------|-----|
| **ズン** (cười nhẹ, nâng cơ má) | 「お電話ありがとうございます！ティエンファット社のズンでございます。」 <br/>*Cảm ơn anh đã gọi! Tôi là Dũng bên Cty Thiên Phát ạ.* |
| **松本PM** (cảm thấy ấm) | 「<ruby>松本<rt>まつもと</rt></ruby>です。いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。」 <br/>*Tôi là Matsumoto. Lúc nào cũng cảm ơn bên em hỗ trợ ạ.* |

→ Khách *bắt được* sự nhiệt tình → mở đầu cuộc gọi tích cực.

---

## Mẹo thực tế
- **Đặt một tấm gương trên bàn** — khi điện thoại reo, nhìn vào gương cười 1 giây trước khi bốc.
- **Nâng cơ má** (như khi cười nhẹ) trong suốt cuộc gọi quan trọng.
- **Nghe lại** ghi âm — có nghe thấy nụ cười trong giọng không?

---

## Cụm từ mẫu
> **「電話に出る前に1秒、<ruby>口角<rt>こうかく</rt></ruby>を上げる」** — Trước khi bốc máy, nâng góc miệng 1 giây.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 笑顔 | えがお | TIẾU NHAN | Mặt cười, nụ cười |
| 口角 | こうかく | KHẨU GIÁC | Góc miệng |
| 元気 | げんき | NGUYÊN KHÍ | Khỏe, năng lượng |
| 温度 | おんど | ÔN ĐỘ | Nhiệt độ (giọng — cảm xúc) |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000008, 800000003, NULL, 'markdown_book', 'Rule 08 — Môi trường yên / 静かな環境を確保', '# Rule 08 — Môi trường yên / 静かな環境を確保
> **Luận điểm.** Tiếng ồn nền (café, đường, văn phòng ồn) trên điện thoại = mất chuyên nghiệp. Khách phải tập trung gấp đôi → nhanh mệt → giảm chất lượng cuộc gọi.
>
> 背景音はプロらしさを損なう。客が二倍集中する必要 → 疲れる → 通話品質低下。
>
> **Từ khóa:** **`通話環境`** · **Liên quan:** Rule 09, Rule 33.

## Quy tắc / ルール
| Tình huống | OK / NG |
|-----------|---------|
| Café, nhà hàng |  NG (ngoại trừ khẩn cấp) |
| Đường phố, ô tô |  NG |
| Văn phòng mở (không vách ngăn) đang bận |  Nếu được, vào phòng họp riêng |
| Làm việc tại nhà |  Tắt TV, đóng cửa, báo gia đình |
| Phòng họp riêng |  Lý tưởng |
| Khu yên trong văn phòng |  OK |

---

## Trường hợp xấu — Gọi ở quán cà phê
| Vai | Câu |
|---------|-----|
| **ズン** (tiếng nhạc, tiếng ly chén) | 「お電話ありがとうございます、ズンです。」 <br/>*Cảm ơn anh đã gọi, tôi là Dũng.* |
| **松本PM** | 「外にいらっしゃいますか？少し聞き取りにくいのですが...」 <br/>*Em đang ở ngoài à? Hơi khó nghe ạ...* |

**Vì sao xấu:** Khách phải xác nhận môi trường = lãng phí câu mở. Lộ rõ thiếu chuẩn bị.

---

## Trường hợp tốt — Vào phòng họp
| Vai | Câu |
|---------|-----|
| **ズン** | 「お電話ありがとうございます。ティエンファット社のズンでございます。」 <br/>*Cảm ơn anh đã gọi. Tôi là Dũng bên Cty Thiên Phát ạ.* |
| **松本PM** | 「松本です。」 <br/>*Tôi là Matsumoto.* |

---

## Biến thể — Khi không thể yên
Nếu *bắt buộc* phải nghe ở môi trường ồn (đang đi công tác):

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>外出中<rt>がいしゅつちゅう</rt></ruby>で<ruby>恐<rt>おそ</rt></ruby>れ入りますが、このまま電話を受けさせていただきます。お電話が遠く聞こえる場合は、ご<ruby>容赦<rt>ようしゃ</rt></ruby>ください。」 <br/>*Em đang đi ngoài nên xin lỗi anh. Em xin nhận máy luôn. Nếu line không được rõ, mong anh thông cảm ạ.* |

→ Báo trước cho khách biết → khách thông cảm.

---

## Cụm từ mẫu
> **「重要な電話の前は、必ず静かな場所へ。」**

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 環境 | かんきょう | HOÀN CẢNH | Môi trường |
| 背景音 | はいけいおん | BỐI CẢNH ÂM | Tiếng ồn nền |
| 外出中 | がいしゅつちゅう | NGOẠI XUẤT TRUNG | Đang ra ngoài |
| 容赦 | ようしゃ | DUNG XÁ | Tha thứ, thông cảm |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000009, 800000003, NULL, 'markdown_book', 'Rule 09 — Sắp xếp bàn trước cuộc gọi quan trọng / 重要電話前のデスク準備', '# Rule 09 — Sắp xếp bàn trước cuộc gọi quan trọng / 重要電話前のデスク準備
> **Luận điểm.** Trước cuộc gọi quan trọng (5+ phút, có quyết định), sắp xếp bàn trong 30 giây: **bút + giấy + lịch + tài liệu liên quan + cốc nước**.
>
> 重要通話の前に30秒のデスク準備：ペン+メモ+カレンダー+資料+水。
>
> **Liên quan:** Rule 04, Rule 24.

## Danh sách kiểm tra 30 giây / 30秒チェックリスト
```
□ ペンとメモパッド (trong tầm với)
□ カレンダー / lịch điện tử đang mở
□ 関連資料 (email lần trước, hợp đồng) đang mở
□ コップに水 (khi miệng khô)
□ スマホ通知 OFF (để tập trung)
□ ヘッドセット (khi văn phòng ồn)
```

---

## Hội thoại — Sắp xếp tốt = phản ứng nhanh
*đã mở sẵn email*

| Vai | Câu |
|---------|-----|
| **松本PM** | 「先週<ruby>送<rt>おく</rt></ruby>った<ruby>見積書<rt>みつもりしょ</rt></ruby>の3ページ<ruby>目<rt>め</rt></ruby>について<ruby>質問<rt>しつもん</rt></ruby>なのですが...」 <br/>*Em có câu hỏi về trang 3 của bảng báo giá tuần trước...* |
| **ズン** | 「はい、3ページ<ruby>目<rt>め</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いております。どの<ruby>項目<rt>こうもく</rt></ruby>でしょうか。」 <br/>*Vâng, em đã mở trang 3. Hạng mục nào ạ?* |

→ Vì đã mở sẵn → trả lời ngay, không phải "ちょっとお待ちください、メールを開きます".

---

## Cụm từ mẫu
> **「<ruby>重要電話<rt>じゅうようでんわ</rt></ruby>の30<ruby>秒前<rt>びょうまえ</rt></ruby>にデスクを<ruby>整<rt>ととの</rt></ruby>える」**

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 整える | ととのえる | CHỈNH | Sắp xếp |
| ヘッドセット | ヘッドセット | — | Tai nghe có micro |
| 通知 | つうち | THÔNG TRI | Thông báo |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000010, 800000003, NULL, 'markdown_book', 'Rule 10 — Tâm lý chuẩn bị cho cuộc gọi khó / 困難電話のメンタル準備', '# Rule 10 — Tâm lý chuẩn bị cho cuộc gọi khó / 困難電話のメンタル準備
> **Luận điểm.** Cuộc gọi khó (xin lỗi, đòi nợ, từ chối, báo tin xấu) cần **30 giây luyện tâm lý trong đầu** trước khi bốc/quay số. Không có = lúng túng = mất kiểm soát.
>
> 困難電話の前に30秒のメンタルリハーサル必須。なし = 焦り = 主導権喪失。
>
> **Liên quan:** Rule 40, Rule 41, Rule 45.

## Danh sách kiểm tra tâm lý 30 giây
```
1. 結論を1文で言える ようになっている
2. 想定される質問 3つ用意
3. NG言葉 (言い訳・ネガティブ感情) のリスト
4. 深呼吸 3回
5. 笑顔を作って 始める (Rule 07)
```

---

## Chuẩn bị tâm lý — trước cuộc gọi báo trễ hạn chót
**Em Dũng tự nói trước khi quay số:**

> 「結論：5/15デッドラインに間に合わない。新納期5/19。理由：トゥアン病欠。代替案：金曜にドラフト。」
> 「想定質問：①なぜ早く言わない ②金額影響 ③信頼回復策」
> 「言ってはいけない：『すみません』(軽すぎ)、『仕方ないですよね』(無責任)」

→ 30 giây này = sự khác biệt giữa cuộc gọi *kiểm soát được* và *bị cuốn theo cảm xúc của khách*.

---

## Cuộc gọi thực tế
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>松本<rt>まつもと</rt></ruby>様、お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>納期<rt>のうき</rt></ruby>について<ruby>重要<rt>じゅうよう</rt></ruby>なご<ruby>連絡<rt>れんらく</rt></ruby>でお<ruby>電話<rt>でんわ</rt></ruby>いたしました。」 <br/>*Anh Matsumoto, em xin lỗi đã làm phiền anh lúc bận. Em gọi để báo điều quan trọng về hạn chót ạ.* |
| **松本PM** | 「はい、どうぞ。」 <br/>*Vâng, em nói đi.* |
| **ズン** | 「<ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、5/15のデッドラインに<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いません。<ruby>新納期<rt>しんのうき</rt></ruby>は5/19を<ruby>提案<rt>ていあん</rt></ruby>させていただきたく...」 <br/>*Em xin nói kết luận trước: Em không kịp hạn chót 15/05. Em xin đề xuất hạn mới là 19/05 ạ...* |

→ Vì đã luyện trước → câu mở ổn định, không lắp.

---

## Cụm từ mẫu
> **「<ruby>結論<rt>けつろん</rt></ruby>を1<ruby>文<rt>ぶん</rt></ruby>で<ruby>言<rt>い</rt></ruby>えるまで、ダイヤルしない。」**

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 想定 | そうてい | TƯỞNG ĐỊNH | Dự đoán |
| 言い訳 | いいわけ | NGÔN DỊCH | Bào chữa |
| 主導権 | しゅどうけん | CHỦ ĐẠO QUYỀN | Quyền chủ động |
| 深呼吸 | しんこきゅう | THÂM HÔ HẤP | Hít thở sâu |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000011, 800000003, NULL, 'markdown_book', 'Rule 11 — Đại diện công ty trả lời, không phải cá nhân / 会社の代表として答える', '# Rule 11 — Đại diện công ty trả lời, không phải cá nhân / 会社の代表として答える
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
| Tỏ ra bực | (cau mày, cộc lốc) | (giọng vẫn lịch sự) |

---

## Trường hợp xấu — Trả lời cá nhân
| Vai | Câu |
|---------|-----|
| **松本PM** | 「<ruby>契約書<rt>けいやくしょ</rt></ruby>の<ruby>修正版<rt>しゅうせいばん</rt></ruby>、いつもらえますか？」 <br/>*Hợp đồng sửa đổi khi nào em gửi cho anh được?* |
| **ズン** | 「<ruby>私<rt>わたし</rt></ruby>には<ruby>分<rt>わ</rt></ruby>かりません。」 <br/>*Em không biết ạ.* |

**Vì sao xấu:** Khách không quan tâm "ズン biết hay không". Khách quan tâm **Cty Thiên Phát có thể trả lời**.

---

## Trường hợp tốt — Trả lời đại diện
| Vai | Câu |
|---------|-----|
| **松本PM** | 「契約書の修正版、いつもらえますか？」 <br/>*Hợp đồng sửa đổi khi nào em gửi được?* |
| **ズン** | 「<ruby>確認<rt>かくにん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、<ruby>本日中<rt>ほんじつちゅう</rt></ruby>にご<ruby>連絡<rt>れんらく</rt></ruby>いたします【1】。」 <br/>*Em xin xác nhận và liên lạc lại anh trong hôm nay ạ.* |

 **Ghi chú:** 【1】Câu này có 3 thông điệp: (1) sẽ kiểm tra, (2) sẽ liên lạc lại, (3) trong hôm nay = hạn chót rõ ràng.

---

## Cụm từ mẫu
> **「<ruby>確認<rt>かくにん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、〇〇までにご<ruby>連絡<rt>れんらく</rt></ruby>いたします。」** — Trả lời "không biết" theo cách đại diện công ty.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | Người phụ trách |
| 繋ぐ | つなぐ | HỆ | Nối, chuyển (máy) |
| 席を外す | せきをはずす | TỊCH NGOẠI | Vắng mặt |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000012, 800000003, NULL, 'markdown_book', 'Rule 12 — Xác nhận tên đối phương / 相手の名前を復唱で確認', '# Rule 12 — Xác nhận tên đối phương / 相手の名前を復唱で確認
> **Luận điểm.** Tên người Nhật **dễ nghe nhầm** (松本 vs 増本, 山田 vs 山本). Phải lặp lại để xác nhận.
>
> 日本人の名字は聞き取りミスが多い。復唱必須。
>
> **Liên quan:** Rule 13, Rule 14.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **不明発信者** | 「<ruby>白鷗<rt>はくおう</rt></ruby>のますもとですが、ズンさんお願いします。」 <br/>*Tôi là Matsumoto bên Hakuō, nhờ em nối máy cho anh Dũng.* |
| **ズン** | 「<ruby>白鷗<rt>はくおう</rt></ruby><ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>の<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>でいらっしゃいますね【1】。お<ruby>待<rt>ま</rt></ruby>ちしておりました。」 <br/>*Anh là Matsumoto bên Cty Hakuō đúng không ạ. Em đã đợi điện anh ạ.* |

 【1】 Lặp lại với 「いらっしゃいますね」 = vừa xác nhận vừa kính ngữ.

## Cụm từ mẫu
> **「〇〇<ruby>様<rt>さま</rt></ruby>でいらっしゃいますね。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 復唱 | ふくしょう | PHỤC XƯỚNG | Lặp lại |
| いらっしゃる | いらっしゃる | — | (Kính ngữ) là, có |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000013, 800000003, NULL, 'markdown_book', 'Rule 13 — Lặp lại số/email/tên / 数字・メール・氏名の復唱', '# Rule 13 — Lặp lại số/email/tên / 数字・メール・氏名の復唱
> **Luận điểm.** Điện thoại dễ nghe nhầm: **数字** (1-7, 4-8), **メール** (@ → "アット"?), **氏名** (đồng âm). Lặp lại từng phần — không phải cả câu.
>
> 電話で聞き間違いやすい：数字・メール・氏名。**部分復唱**で確認。

## Quy tắc lặp lại
| Loại | Cách lặp |
|------|---------|
| Số điện thoại | Đọc từng số, không nhóm: 「090-1234-5678 = ぜろ-きゅう-ぜろ、いち-に-さん-よん、ご-ろく-なな-はち」 |
| Email | Mỗi ký tự rõ: 「t-a-n-a-k-a アットマーク tenhou.co.jp」|
| Họ tên | Hỏi thêm kanji nếu không chắc: 「松本様、まつのまつ、本のもとでよろしいでしょうか」 |

## Hội thoại
| Vai | Câu |
|---------|-----|
| **松本PM** | 「電話番号は090-1234-5678です。」 <br/>*Số điện thoại là 090-1234-5678 ạ.* |
| **ズン** | 「<ruby>復唱<rt>ふくしょう</rt></ruby>させていただきます。090-1234-5678、ぜろきゅうぜろの、いちにさんよんの、ごろくななはちでよろしいでしょうか。」 <br/>*Em xin lặp lại: 090-1234-5678 (ngắt từng nhóm) đúng không ạ?* |

## Cụm từ mẫu
> **「数字を区切って復唱」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 数字 | すうじ | SỐ TỰ | Số |
| 区切る | くぎる | KHU | Phân đoạn |
| アットマーク | アットマーク | — | @ (at sign) |', 'system', 13, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000014, 800000003, NULL, 'markdown_book', 'Rule 14 — 5W1H ghi chú bắt buộc / 5W1Hメモは必須', '# Rule 14 — 5W1H ghi chú bắt buộc / 5W1Hメモは必須
> **Luận điểm.** Mỗi cuộc gọi nhận → ghi 5W1H: **いつ・誰が・どこで・何を・なぜ・どうやって**. Thiếu 1 = phải gọi lại hỏi = mất chuyên nghiệp.
>
> 受電1件ごとに5W1H記録。1つでも欠けると確認電話が必要 = 失礼。
>
> **Liên quan:** Rule 05 (mẫu câu), Rule 18 (伝言).

## Hội thoại — Ghi lời nhắn hoàn chỉnh
| Vai | Câu |
|---------|-----|
| **松本PM** | 「明日の<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせ、<ruby>第<rt>だい</rt></ruby>3<ruby>会議室<rt>かいぎしつ</rt></ruby>で14時から、6<ruby>名<rt>めい</rt></ruby>で。<ruby>資料<rt>しりょう</rt></ruby>は<ruby>事前<rt>じぜん</rt></ruby>にメールで。」 <br/>*Họp ngày mai, phòng họp 3, từ 14h, 6 người. Tài liệu gửi mail trước.* |
| **ズン** | 「<ruby>念<rt>ねん</rt></ruby>のため<ruby>復唱<rt>ふくしょう</rt></ruby>いたします。明日（When）、松本様（Who）、第3会議室（Where）、打ち合わせ（What）、6<ruby>名参加<rt>めいさんか</rt></ruby>（How）、14時から（When详）、資料事前メール（How详）、でよろしいでしょうか。」 <br/>*Em xin lặp lại: ngày mai, anh Matsumoto, phòng họp 3, cuộc họp, 6 người, từ 14h, tài liệu mail trước, đúng không ạ?* |
| **松本PM** | 「その<ruby>通<rt>とお</rt></ruby>りです。」 <br/>*Đúng vậy.* |

## Cụm từ mẫu
> **5W1Hで<ruby>復唱<rt>ふくしょう</rt></ruby>、<ruby>抜<rt>ぬ</rt></ruby>けなしを<ruby>確認<rt>かくにん</rt></ruby>。**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 抜け | ぬけ | BẠT | Thiếu sót |
| 詳細 | しょうさい | TƯỜNG TẾ | Chi tiết |', 'system', 14, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000015, 800000003, NULL, 'markdown_book', 'Rule 15 — Chuyển máy khi người nhận có mặt / 担当者がいる場合の取次ぎ', '# Rule 15 — Chuyển máy khi người nhận có mặt / 担当者がいる場合の取次ぎ
> **Luận điểm.** Chuyển máy có 3 bước: (1) hỏi tên người nhận, (2) xác nhận với người được nhờ, (3) chuyển. Không nhảy bước = chuyển nhầm.
>
> 取次ぎは3ステップ：①氏名確認 ②本人に確認 ③転送。スキップ = 誤転送。
>
> **Liên quan:** Rule 12, Rule 16.

## Hội thoại — Chuyển máy đúng
*người bốc máy · line khách*

| Vai | Câu |
|---------|-----|
| **松本PM** | 「ズンさんお願いします。」 <br/>*Phiền em cho tôi gặp Dũng nhé.* |
| **ハイ** | 「松本様、<ruby>少々<rt>しょうしょう</rt></ruby>お待ちください。ただ今おつなぎいたします。」 <br/>*Anh Matsumoto, anh đợi chút ạ. Em xin nối máy ngay.* |
| (chuyển sang ズン) **ハイ** | 「ズン、<ruby>白鷗<rt>はくおう</rt></ruby>の松本様からお電話です。」 <br/>*Dũng ơi, có anh Matsumoto bên Hakuō gọi tới này.* |
| **ズン** | 「ありがとう、つないで。」 <br/>*Cảm ơn em, nối qua đi nhé.* |
| **ズン** | 「お電話<ruby>変<rt>か</rt></ruby>わりました。ズンでございます。」 <br/>*Dạ, em Dũng nghe máy đây ạ.* |

## Cụm từ mẫu
> **「お電話<ruby>変<rt>か</rt></ruby>わりました。〇〇でございます。」** — Câu mở khi nhận máy chuyển từ đồng nghiệp.

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 取次ぎ | とりつぎ | THỦ THỨ | Chuyển máy |
| 繋ぐ | つなぐ | HỆ | Nối |
| 変わる | かわる | BIẾN | Đổi (người nói) |', 'system', 15, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000016, 800000003, NULL, 'markdown_book', 'Rule 16 — 4 công thức xử lý khi người nhận vắng / 担当者不在の4パターン', '# Rule 16 — 4 công thức xử lý khi người nhận vắng / 担当者不在の4パターン
> **Luận điểm.** Khi người được gọi không có mặt, có **4 công thức chuẩn** để phản hồi: (1) đang họp, (2) đang ra ngoài, (3) đang nghỉ phép, (4) đã về. Mỗi công thức có mức độ thông tin tiết lộ khác nhau.
>
> 担当者不在時の対応は4パターン：会議中／外出中／休暇中／退勤済み。それぞれ開示情報の粒度が異なる。
>
> **Liên quan:** Rule 15, Rule 17, Rule 18.

## Bối cảnh / 場面
Anh Matsumoto gọi cho anh Tuấn (Tech lead Thiên Phát) nhưng anh Tuấn đang trong cuộc họp. Em Dũng nhận máy và phải xử lý.

## Hội thoại — TỐT (Công thức 1: 会議中)
| Vai | Câu |
|---------|-----|
| **松本PM** | 「いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>白鷗<rt>はくおう</rt></ruby>の<ruby>松本<rt>まつもと</rt></ruby>ですが、トゥアンさんお<ruby>願<rt>ねが</rt></ruby>いできますでしょうか。」 <br/>*Cảm ơn anh đã hỗ trợ. Tôi là Matsumoto bên Hakuō, nhờ em nối máy cho anh Tuấn ạ.* |
| **ズン** | 「<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>、いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。あいにくトゥアンはただいま<ruby>会議中<rt>かいぎちゅう</rt></ruby>でございまして、15<ruby>時<rt>じ</rt></ruby>には<ruby>終<rt>お</rt></ruby>わる<ruby>予定<rt>よてい</rt></ruby>でございます。」 <br/>*Anh Matsumoto, cảm ơn anh đã hỗ trợ ạ. Đáng tiếc anh Tuấn hiện đang họp, dự kiến 15h sẽ kết thúc ạ.* |
| **ズン** | 「<ruby>終<rt>お</rt></ruby>わり<ruby>次第<rt>しだい</rt></ruby>、こちらから<ruby>折<rt>お</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>しお<ruby>電話<rt>でんわ</rt></ruby><ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げるようお<ruby>伝<rt>つた</rt></ruby>えしましょうか？」 <br/>*Khi xong cuộc họp em sẽ nhắn anh Tuấn gọi lại cho anh, được không ạ?* |
| **松本PM** | 「では、お<ruby>願<rt>ねが</rt></ruby>いいたします。」 <br/>*Vậy thì nhờ em ạ.* |

## Biến thể — 4 công thức câu mở
| Công thức | Câu chuẩn |
|---------|-----------|
| 会議中 | 「あいにくただいま<ruby>会議中<rt>かいぎちゅう</rt></ruby>でございまして、〇<ruby>時<rt>じ</rt></ruby>には<ruby>終<rt>お</rt></ruby>わる<ruby>予定<rt>よてい</rt></ruby>でございます。」 |
| 外出中 | 「あいにく<ruby>外出<rt>がいしゅつ</rt></ruby>しておりまして、<ruby>本日<rt>ほんじつ</rt></ruby>は〇<ruby>時<rt>じ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>る<ruby>予定<rt>よてい</rt></ruby>でございます。」 |
| 休暇中 | 「あいにく<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>休<rt>やす</rt></ruby>みをいただいておりまして、<ruby>明日<rt>あす</rt></ruby>〇<ruby>時<rt>じ</rt></ruby>に<ruby>出社<rt>しゅっしゃ</rt></ruby><ruby>予定<rt>よてい</rt></ruby>でございます。」 |
| 退勤済み | 「あいにく<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>を<ruby>終<rt>お</rt></ruby>えておりまして、<ruby>明日<rt>あす</rt></ruby>9<ruby>時<rt>じ</rt></ruby>より<ruby>出社<rt>しゅっしゃ</rt></ruby>いたします。」 |

## Cụm từ mẫu
> **「あいにく〇〇しておりまして、〇<ruby>時<rt>じ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>る<ruby>予定<rt>よてい</rt></ruby>でございます。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 不在 | ふざい | BẤT TẠI | Vắng mặt |
| 会議中 | かいぎちゅう | HỘI NGHỊ TRUNG | Đang họp |
| 外出 | がいしゅつ | NGOẠI XUẤT | Ra ngoài |
| あいにく | あいにく | — | Đáng tiếc thay |
| 折り返し | おりかえし | CHIẾT PHẢN | Gọi lại |', 'system', 16, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000017, 800000003, NULL, 'markdown_book', 'Rule 17 — Giữ máy tối đa 1 phút / 保留は1分以内', '# Rule 17 — Giữ máy tối đa 1 phút / 保留は1分以内
> **Luận điểm.** Để khách chờ máy quá 1 phút = mất kiên nhẫn của khách. Nếu phải lâu hơn → quay lại đường dây, xin lỗi và đề xuất gọi lại.
>
> 保留は1分以内が原則。超える場合は一旦戻り、折り返しを提案。
>
> **Liên quan:** Rule 15, Rule 36.

## Hội thoại
*50秒経過, nhạc chờ*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>確認<rt>かくにん</rt></ruby>いたしますので、<ruby>少々<rt>しょうしょう</rt></ruby>お待ちいただけますでしょうか。」 <br/>*Em xin phép kiểm tra một chút, anh giữ máy giúp em được không ạ?* |
| **ズン** | 「お待たせいたしまして大変申し訳ございません。確認にもうしばらく時間がかかりそうでございますので、こちらから<ruby>折<rt>お</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>しお電話<ruby>差<rt>さ</rt></ruby>し上げてもよろしいでしょうか。」 <br/>*Xin lỗi anh vì đã để đợi lâu ạ. Việc kiểm tra cần thêm thời gian, em xin phép gọi lại cho anh sau, được không ạ?* |

## Cụm từ mẫu
> **「お待たせして申し訳ございません。<ruby>折<rt>お</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>しお電話<ruby>差<rt>さ</rt></ruby>し上げてもよろしいでしょうか。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 保留 | ほりゅう | BẢO LƯU | Chờ máy/giữ máy |
| 少々 | しょうしょう | THIỂU THIỂU | Một chút |
| 折り返し | おりかえし | CHIẾT PHẢN | Gọi lại |', 'system', 17, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000018, 800000003, NULL, 'markdown_book', 'Rule 18 — 5 yếu tố bắt buộc khi ghi lời nhắn / 伝言メモの5要素', '# Rule 18 — 5 yếu tố bắt buộc khi ghi lời nhắn / 伝言メモの5要素
> **Luận điểm.** Một bản ghi lời nhắn hoàn chỉnh có 5 yếu tố: **(1) ai gọi**, **(2) công ty/phòng**, **(3) số gọi lại**, **(4) nội dung**, **(5) thời điểm gọi**. Thiếu 1 trong 5 = ghi chú vô dụng.
>
> 伝言メモの必須5要素：①誰が ②どの会社・部署 ③折り返し番号 ④用件 ⑤発信時刻。
>
> **Liên quan:** Rule 14, Rule 16, Rule 31.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **松本PM** | 「明日の<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせの時間を14時から15時に<ruby>変更<rt>へんこう</rt></ruby>したい<ruby>旨<rt>むね</rt></ruby>、お<ruby>伝<rt>つた</rt></ruby>えください。」 <br/>*Cuộc họp ngày mai, nhờ em nhắn lại là tôi muốn đổi từ 14h sang 15h ạ.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>念<rt>ねん</rt></ruby>のため<ruby>復唱<rt>ふくしょう</rt></ruby>させていただきます。明日の打ち合わせのお時間を14時から15時へ変更とのこと、トゥアンに<ruby>申<rt>もう</rt></ruby>し<ruby>伝<rt>つた</rt></ruby>えます。」 <br/>*Em đã rõ ạ. Em xin phép lặp lại để chắc chắn: cuộc họp ngày mai đổi từ 14h sang 15h, em sẽ chuyển lời cho anh Tuấn ạ.* |
| **ズン** | 「お電話番号は090-1234-5678でよろしいでしょうか？」 <br/>*Số điện thoại của anh là 090-1234-5678 đúng không ạ?* |
| **松本PM** | 「はい、その<ruby>通<rt>とお</rt></ruby>りです。」 <br/>*Đúng vậy ạ.* |
| **ズン** | 「<ruby>本日<rt>ほんじつ</rt></ruby>10時のお電話として、<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って申し伝えます。」 <br/>*Em xin chịu trách nhiệm chuyển lời, ghi nhận cuộc gọi lúc 10h hôm nay ạ.* |

## 5 yếu tố ghi chú
| # | Yếu tố | VD |
|---|--------|-----|
| 1 | 誰 | 松本様 |
| 2 | 会社・部署 | 白鷗株式会社・PM |
| 3 | 折り返し番号 | 090-1234-5678 |
| 4 | 用件 | 明日打合せ 14時→15時変更希望 |
| 5 | 発信時刻 | 4/25 10:00 |

## Cụm từ mẫu
> **「<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>申<rt>もう</rt></ruby>し<ruby>伝<rt>つた</rt></ruby>えます。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 伝言 | でんごん | TRUYỀN NGÔN | Lời nhắn |
| 申し伝える | もうしつたえる | THÂN TRUYỀN | (Khiêm) chuyển lời |
| 念のため | ねんのため | NIỆM | Để chắc chắn |
| 復唱 | ふくしょう | PHỤC XƯỚNG | Lặp lại |', 'system', 18, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000019, 800000003, NULL, 'markdown_book', 'Rule 19 — Xử lý cuộc gọi nhầm số lịch sự / 間違い電話への対応', '# Rule 19 — Xử lý cuộc gọi nhầm số lịch sự / 間違い電話への対応
> **Luận điểm.** Khi gặp người gọi nhầm số, **đừng cúp máy đột ngột**. Lễ phép xác nhận số đối phương đang gọi, báo họ gọi nhầm, kết thúc bằng câu chào.
>
> 間違い電話でも丁寧に。番号を確認し、間違いを伝え、挨拶で締める。
>
> **Liên quan:** Rule 11, Rule 22.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **不明発信者** | 「もしもし、<ruby>佐藤<rt>さとう</rt></ruby><ruby>商事<rt>しょうじ</rt></ruby>ですか？」 <br/>*Alo, đây là Cty Sato phải không?* |
| **ズン** | 「お<ruby>電話<rt>でんわ</rt></ruby>ありがとうございます。こちらティエンファット<ruby>社<rt>しゃ</rt></ruby>でございます。お<ruby>間違<rt>まちが</rt></ruby>いではないでしょうか？」 <br/>*Cảm ơn anh đã gọi điện. Đây là Cty Thiên Phát ạ. Có lẽ anh nhầm số phải không ạ?* |
| **不明発信者** | 「あ、03-1234-5678ではないんですか？」 <br/>*À, đây không phải 03-1234-5678 ạ?* |
| **ズン** | 「こちらは<ruby>別<rt>べつ</rt></ruby>の<ruby>番号<rt>ばんごう</rt></ruby>でございます。お<ruby>手数<rt>てすう</rt></ruby>ですが、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>確<rt>たし</rt></ruby>かめの<ruby>上<rt>うえ</rt></ruby>おかけ<ruby>直<rt>なお</rt></ruby>しください。」 <br/>*Đây là số khác ạ. Phiền anh kiểm tra lại số rồi gọi lại giúp ạ.* |
| **不明発信者** | 「失礼しました。」 <br/>*Xin lỗi đã làm phiền.* |
| **ズン** | 「とんでもございません。<ruby>失礼<rt>しつれい</rt></ruby>いたします。」 <br/>*Không có gì đâu ạ. Em xin phép ạ.* |

## Cụm từ mẫu
> **「お<ruby>間違<rt>まちが</rt></ruby>いではないでしょうか？お<ruby>確<rt>たし</rt></ruby>かめの<ruby>上<rt>うえ</rt></ruby>おかけ<ruby>直<rt>なお</rt></ruby>しください。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 間違い電話 | まちがいでんわ | GIAN VI ĐIỆN THOẠI | Gọi nhầm số |
| お確かめ | おたしかめ | XÁC | Kiểm tra (尊敬語 — đối phương kiểm tra) |
| お手数ですが | おてすうですが | THỦ SỐ | Phiền anh/chị |
| かけ直す | かけなおす | TRỰC | Gọi lại |', 'system', 19, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000020, 800000003, NULL, 'markdown_book', 'Rule 20 — Bước đầu xử lý phàn nàn qua điện thoại / クレーム電話の最初の対応', '# Rule 20 — Bước đầu xử lý phàn nàn qua điện thoại / クレーム電話の最初の対応
> **Luận điểm.** Khi khách phàn nàn — **đừng giải thích trước**. Bước 1 = **nghe**, **xin lỗi cảm xúc** (không phải xin lỗi sự kiện), rồi mới hỏi chi tiết.
>
> クレーム電話の第一手は『説明より傾聴』。事実への謝罪ではなく、不快な思いをさせたことへの謝罪を先に。
>
> **Liên quan:** Rule 40, Rule 41, Rule 45.

## Hội thoại XẤU
| Vai | Câu |
|---------|-----|
| 不明発信者 | 「<ruby>先週<rt>せんしゅう</rt></ruby><ruby>注文<rt>ちゅうもん</rt></ruby>した<ruby>商品<rt>しょうひん</rt></ruby>がまだ<ruby>届<rt>とど</rt></ruby>いていないんですが！」 <br/>*Hàng tôi đặt tuần trước vẫn chưa đến!* |
| ズン | 「えっと、<ruby>配送<rt>はいそう</rt></ruby>センターの<ruby>遅<rt>おく</rt></ruby>れでして…」 <br/>*Ờm, là do trung tâm giao hàng bị chậm…* |

→ Giải thích ngay = đẩy trách nhiệm sang nơi khác = khách càng tức.

## Hội thoại TỐT
| Vai | Câu |
|---------|-----|
| **不明発信者** | 「先週注文した商品がまだ届いていないんですが！」 <br/>*Hàng tôi đặt tuần trước vẫn chưa đến!* |
| **ズン** | 「ご<ruby>不便<rt>ふべん</rt></ruby>をおかけしまして<ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>詳<rt>くわ</rt></ruby>しくお<ruby>伺<rt>うかが</rt></ruby>いしてもよろしいでしょうか。」 <br/>*Em xin lỗi vì đã gây bất tiện cho anh ạ. Cho em hỏi chi tiết hơn được không ạ?* |
| **不明発信者** | 「3<ruby>日<rt>にち</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>着<rt>つ</rt></ruby>くはずだったのに...」 <br/>*Đáng lẽ phải đến 3 ngày trước rồi...* |
| **ズン** | 「<ruby>左様<rt>さよう</rt></ruby>でございますか。<ruby>早急<rt>さっきゅう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、<ruby>改<rt>あらた</rt></ruby>めてご<ruby>連絡<rt>れんらく</rt></ruby><ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。」 <br/>*Vâng em hiểu rồi ạ. Em sẽ kiểm tra ngay và liên hệ lại với anh sớm nhất ạ.* |

## Cụm từ mẫu
> **「ご<ruby>不便<rt>ふべん</rt></ruby>をおかけしまして<ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 不便 | ふべん | BẤT TIỆN | Bất tiện |
| 傾聴 | けいちょう | KHUYNH THÍNH | Lắng nghe chăm chú |
| 早急に | さっきゅうに | TẢO CẤP | Khẩn trương |
| 左様でございますか | さようでございますか | TẢ DẠNG | Vâng, em hiểu rồi (kính ngữ) |', 'system', 20, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000021, 800000003, NULL, 'markdown_book', 'Rule 21 — Khi khách hỏi đường đến văn phòng / 訪問先案内の電話', '# Rule 21 — Khi khách hỏi đường đến văn phòng / 訪問先案内の電話
> **Luận điểm.** Khi khách điện hỏi đường, **xác nhận họ đang ở đâu** trước, sau đó hướng dẫn theo điểm mốc rõ ràng. Tránh "đi thẳng rồi rẽ" — dùng tên ga, tên tòa nhà.
>
> 道案内は『現在地確認 → 目印 → 距離・方向』の順。曖昧な指示NG。
>
> **Liên quan:** Rule 11, Rule 24.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **松本PM** | 「すみません、今ホアンキエム<ruby>湖<rt>こ</rt></ruby>の<ruby>北側<rt>きたがわ</rt></ruby>におります。<ruby>御社<rt>おんしゃ</rt></ruby>まではどのように行けばよろしいでしょうか？」 <br/>*Xin lỗi, tôi đang ở phía bắc hồ Hoàn Kiếm. Tới văn phòng các bạn đi đường nào ạ?* |
| **ズン** | 「お電話ありがとうございます。湖の北側ですと、Hang Bac通りを北へ<ruby>徒歩<rt>とほ</rt></ruby>約5分でございます。<ruby>途中<rt>とちゅう</rt></ruby>、<ruby>左手<rt>ひだりて</rt></ruby>にBIDV<ruby>銀行<rt>ぎんこう</rt></ruby>が見えてまいります。」 <br/>*Cảm ơn anh đã gọi ạ. Từ bắc hồ, anh đi phố Hàng Bạc về phía bắc khoảng 5 phút đi bộ. Trên đường bên trái sẽ thấy ngân hàng BIDV ạ.* |
| **ズン** | 「BIDVの次の<ruby>角<rt>かど</rt></ruby>を<ruby>右折<rt>うせつ</rt></ruby>いただきますと、3<ruby>軒目<rt>けんめ</rt></ruby>の8<ruby>階建<rt>かいだ</rt></ruby>てビルが<ruby>弊社<rt>へいしゃ</rt></ruby>でございます。1階に『ティエンファット』の<ruby>看板<rt>かんばん</rt></ruby>がございます。」 <br/>*Qua BIDV, anh rẽ phải ở góc đường tiếp theo, tòa nhà 8 tầng thứ 3 là văn phòng em ạ. Tầng 1 có biển hiệu ''Thiên Phát'' ạ.* |
| **松本PM** | 「BIDVの<ruby>先<rt>さき</rt></ruby>を右、3軒目の8階建てビルですね。<ruby>承知<rt>しょうち</rt></ruby>しました。」 <br/>*Qua BIDV rẽ phải, tòa thứ 3 cao 8 tầng nhỉ. Tôi hiểu rồi ạ.* |
| **ズン** | 「お気をつけてお<ruby>越<rt>こ</rt></ruby>しください。」 <br/>*Anh đi cẩn thận giúp em ạ.* |

## Cụm từ mẫu
> **「目印 → 距離 → 方向」の順で案内**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 案内 | あんない | ÁN NỘI | Hướng dẫn |
| 目印 | めじるし | MỤC ẤN | Điểm mốc |
| 角 | かど | GIÁC | Góc đường |
| 右折 | うせつ | HỮU CHIẾT | Rẽ phải |
| 看板 | かんばん | KHÁN BẢN | Bảng hiệu |', 'system', 21, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000022, 800000003, NULL, 'markdown_book', 'Rule 22 — Thứ tự gác máy: khách trước, mình sau / 受話器を置くタイミング', '# Rule 22 — Thứ tự gác máy: khách trước, mình sau / 受話器を置くタイミング
> **Luận điểm.** Quy tắc giao tiếp công sở Nhật: **khách hàng / cấp trên gác máy trước**, mình gác sau. Cúp trước = thiếu tôn trọng.
>
> ビジネス電話の鉄則：相手（特に顧客・上司）が切ってから自分が切る。先に切るのは失礼。
>
> **Liên quan:** Rule 01, Rule 11, Rule 35.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「本日はお電話ありがとうございました。失礼いたします。」 <br/>*Hôm nay cảm ơn anh đã gọi điện ạ. Em xin phép cúp máy ạ.* |
| **松本PM** | 「では、失礼します。」 *(松本側で<ruby>受話器<rt>じゅわき</rt></ruby>を置く)* <br/>*Vậy tôi xin phép trước nhé.* |
| **ズン** | *(2-3秒待ってから、<ruby>静<rt>しず</rt></ruby>かに受話器を置く)* <br/>*(Chờ 2-3 giây rồi nhẹ nhàng đặt ống nghe xuống)* |

## Lưu ý
- Không bao giờ "dập" mạnh — luôn đặt nhẹ.
- Nếu dùng smartphone: chờ 2-3 giây rồi mới ấn End call.
- Khi không chắc đối phương đã cúp chưa → giữ thêm 3-5 giây an toàn.

## Cụm từ mẫu
> **「相手が切ってから、<ruby>静<rt>しず</rt></ruby>かに<ruby>受話器<rt>じゅわき</rt></ruby>を置く」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 受話器 | じゅわき | THỤ THOẠI KHÍ | Ống nghe |
| 静かに | しずかに | TĨNH | Nhẹ nhàng |
| 失礼いたします | しつれいいたします | THẤT LỄ | Xin phép kết thúc (kính ngữ) |', 'system', 22, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000023, 800000003, NULL, 'markdown_book', 'Rule 23 — Báo lại nội bộ sau cuộc gọi quan trọng / 受電後の社内報告', '# Rule 23 — Báo lại nội bộ sau cuộc gọi quan trọng / 受電後の社内報告
> **Luận điểm.** Cuộc gọi xong = mới một nửa công việc. Phải báo nội bộ ngay (nhắn tin/email/trực tiếp) cho người liên quan trong **15 phút**, kèm 5 yếu tố ghi chú.
>
> 受電後の社内報告は15分以内が目安。5要素メモ＋次のアクションを共有。
>
> **Liên quan:** Rule 18, Rule 51, Rule 59.

## Hội thoại — báo cáo trực tiếp
| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、少しよろしいでしょうか。<ruby>先<rt>さき</rt></ruby>ほど10時頃、<ruby>白鷗<rt>はくおう</rt></ruby>の<ruby>松本<rt>まつもと</rt></ruby>様からお電話がございました。」 <br/>*Chị Hương ơi, em xin phép một chút ạ. Khoảng 10h vừa rồi anh Matsumoto bên Hakuō có gọi điện ạ.* |
| **フオン** | 「内容は？」 <br/>*Nội dung gì vậy em?* |
| **ズン** | 「明日の<ruby>打<rt>う</rt></ruby>ち合わせを14時から15時へ<ruby>変更<rt>へんこう</rt></ruby><ruby>希望<rt>きぼう</rt></ruby>とのことです。トゥアンリーダーには<ruby>既<rt>すで</rt></ruby>に<ruby>共有<rt>きょうゆう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>返信<rt>へんしん</rt></ruby>のフォローアップメールも<ruby>本日<rt>ほんじつ</rt></ruby>中に送る<ruby>予定<rt>よてい</rt></ruby>です。」 <br/>*Anh ấy muốn dời buổi họp ngày mai từ 14h sang 15h ạ. Em đã báo anh Tuấn rồi, và sẽ gửi email tóm tắt trong hôm nay ạ.* |
| **フオン** | 「分かりました。トゥアンの<ruby>返答<rt>へんとう</rt></ruby>が来たらまた共有してください。」 <br/>*Chị rõ rồi. Khi anh Tuấn phản hồi em chia sẻ lại nhé.* |

## 報告テンプレ — 4要素
```
【日時】4/25 10:00頃
【発信者】白鷗株式会社 松本PM
【用件】明日の打合せ 14:00→15:00 変更希望
【次のアクション】トゥアンリーダーへ伝達済み／本日中にメール送信
```

## Cụm từ mẫu
> **「<ruby>先<rt>さき</rt></ruby>ほど〇時頃、〇〇様からお電話がございました。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|----------|-------|
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 共有 | きょうゆう | CỘNG HỮU | Chia sẻ |
| 申し伝える | もうしつたえる | THÂN TRUYỀN | (Khiêm) chuyển lời |
| 先ほど | さきほど | TIÊN | Vừa nãy |', 'system', 23, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000024, 800000003, NULL, 'markdown_book', 'Rule 24 — Danh sách kiểm tra trước khi nhấn gọi / 発信前のチェックリスト', '# Rule 24 — Danh sách kiểm tra trước khi nhấn gọi / 発信前のチェックリスト
> **Luận điểm.** Trước khi gọi đi, kiểm 5 mục: **(1) mục đích rõ chưa**, **(2) thời điểm gọi phù hợp**, **(3) tài liệu sẵn**, **(4) ghi chú 5W1H đã viết**, **(5) môi trường yên tĩnh**.
>
> 発信前に5項目チェック：①目的 ②時間帯 ③資料 ④5W1Hメモ ⑤環境。
>
> **Liên quan:** Rule 25, Rule 26, Rule 28.

## Bối cảnh
Em Dũng chuẩn bị gọi anh Matsumoto báo cập nhật tiến độ project. Trước khi nhấn gọi tự kiểm.

## Danh sách kiểm tra
| # | Mục | Câu hỏi tự kiểm |
|---|-----|----------------|
| 1 | 目的 | Mục đích gọi 1 câu được không? |
| 2 | 時間帯 | Tránh 12-13h, sáng đầu tuần 9h, cuối ngày 17h+? |
| 3 | 資料 | Tài liệu/tệp PDF mở sẵn chưa? |
| 4 | 5W1H | Ghi chú When/Where/Who/What/Why/How đã viết? |
| 5 | 環境 | Không ai nói chuyện ồn xung quanh? |

## Hội thoại — tự kiểm nội bộ + cuộc gọi đầu
*独り言 · 電話で*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>目的<rt>もくてき</rt></ruby>：4月度<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>。<ruby>資料<rt>しりょう</rt></ruby>：<ruby>開<rt>ひら</rt></ruby>いた。メモ：<ruby>書<rt>か</rt></ruby>いた。<ruby>環境<rt>かんきょう</rt></ruby>：OK。<ruby>発信<rt>はっしん</rt></ruby>。」 <br/>*(Tự nhủ) Mục đích: báo cáo tiến độ tháng 4. Tài liệu: mở rồi. Ghi chú: viết rồi. Môi trường: OK. Gọi.* |
| **ズン** | 「お世話になっております。ティエンファット社、<ruby>営業部<rt>えいぎょうぶ</rt></ruby>のズンでございます。松本<ruby>様<rt>さま</rt></ruby>のお<ruby>席<rt>せき</rt></ruby>はございますでしょうか？」 <br/>*Cảm ơn anh đã hỗ trợ ạ. Em là Dũng, phòng kinh doanh, Cty Thiên Phát ạ. Anh Matsumoto có ở văn phòng không ạ?* |

## Cụm từ mẫu
> **「<ruby>目的<rt>もくてき</rt></ruby>・<ruby>時間<rt>じかん</rt></ruby>・<ruby>資料<rt>しりょう</rt></ruby>・メモ・<ruby>環境<rt>かんきょう</rt></ruby>」5チェック**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 発信 | はっしん | PHÁT TÍN | Gọi đi |
| 目的 | もくてき | MỤC ĐÍCH | Mục đích |
| 時間帯 | じかんたい | THỜI GIAN ĐỚI | Khung giờ |
| 資料 | しりょう | TƯ LIỆU | Tài liệu |', 'system', 24, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000025, 800000003, NULL, 'markdown_book', 'Rule 25 — Chọn giờ gọi: khung tránh / khung tốt / 電話する時間帯の選び方', '# Rule 25 — Chọn giờ gọi: khung tránh / khung tốt / 電話する時間帯の選び方
> **Luận điểm.** Khung giờ tốt: **10:00-11:30**, **14:00-16:30**. Khung tránh: **9:00-9:30** (đầu giờ chuẩn bị), **12:00-13:00** (nghỉ trưa), **17:30+** (về). Đặc biệt sáng thứ Hai = bận nhất.
>
> 発信のベスト時間：10-11時半／14-16時半。避ける：始業直後・昼休み・終業前。
>
> **Liên quan:** Rule 24, Rule 33.

## Bảng giờ gọi
| Khung giờ | Đánh giá | Lý do |
|----------|---------|-------|
| 9:00-9:30 |  Tránh | Bắt đầu giờ, kiểm mail, họp đầu ngày |
| 10:00-11:30 |  Tốt | Đối phương đã vào guồng công việc |
| 12:00-13:00 |  Cấm | Giờ nghỉ trưa |
| 14:00-16:30 |  Tốt | Buổi chiều ổn định |
| 17:00-17:30 | △ Hạn chế | Sắp hết giờ |
| 17:30+ |  Tránh | Đã hoặc đang về |

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「お世話になっております。今、お電話よろしいでしょうか？」 |
| **松本PM** | 「はい、大丈夫です。」 |

→ Câu **「今、お電話よろしいでしょうか？」** = phép lịch sự dù chọn đúng giờ.

## Cụm từ mẫu
> **「今、お電話よろしいでしょうか？」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 時間帯 | じかんたい | THỜI GIAN ĐỚI | Khung giờ |
| 始業 | しぎょう | THỦY NGHIỆP | Bắt đầu giờ làm |
| 終業 | しゅうぎょう | CHUNG NGHIỆP | Hết giờ làm |
| 昼休み | ひるやすみ | — | Nghỉ trưa |', 'system', 25, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000026, 800000003, NULL, 'markdown_book', 'Rule 26 — Mẫu câu giới thiệu khi gọi đi / 発信時の名乗りフォーマット', '# Rule 26 — Mẫu câu giới thiệu khi gọi đi / 発信時の名乗りフォーマット
> **Luận điểm.** Mẫu câu chuẩn khi gọi đi: **「お世話になっております」 → 公司・部署・名前 → 「〇〇様お願いします」**.
>
> 発信時の名乗り：①挨拶 ②会社・部署・氏名 ③相手の取次依頼。
>
> **Liên quan:** Rule 24, Rule 25, Rule 27.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **受付** | 「<ruby>白鷗株式会社<rt>はくおうかぶしきがいしゃ</rt></ruby>でございます。」 <br/>*Cty Hakuō xin nghe ạ.* |
| **ズン** | 「いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。ティエンファット<ruby>社<rt>しゃ</rt></ruby>、<ruby>営業部<rt>えいぎょうぶ</rt></ruby>のズンと<ruby>申<rt>もう</rt></ruby>します。<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>はいらっしゃいますでしょうか？」 <br/>*Em chào chị ạ. Em là Dũng, phòng kinh doanh Cty Thiên Phát ạ. Phiền chị, anh Matsumoto có ở văn phòng không ạ?* |
| **受付** | 「<ruby>松本<rt>まつもと</rt></ruby>ですね。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。」 <br/>*Dạ anh Matsumoto đúng không ạ? Anh giữ máy chút ạ.* |

## 名乗り 3要素
```
①「いつもお世話になっております」
②「ティエンファット社、営業部のズンと申します」
③「恐れ入りますが、〇〇部の〇〇様はいらっしゃいますでしょうか」
```

## Điểm cần nhớ
- Khi nhận máy = 「でございます」, khi gọi đi = 「と申します」 (khiêm nhường).
- 「恐れ入りますが」 = "phiền anh/chị" — bắt buộc trước khi nhờ nối máy.

## Cụm từ mẫu
> **「ティエンファット<ruby>社<rt>しゃ</rt></ruby>、<ruby>営業部<rt>えいぎょうぶ</rt></ruby>のズンと<ruby>申<rt>もう</rt></ruby>します。〇〇<ruby>様<rt>さま</rt></ruby>はいらっしゃいますでしょうか？」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 名乗る | なのる | — | Tự xưng tên |
| 申します | もうします | — | (Khiêm) tên là |
| 恐れ入りますが | おそれいりますが | — | Phiền anh/chị |
| いらっしゃる | いらっしゃる | — | (Kính ngữ) có, là |', 'system', 26, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000027, 800000003, NULL, 'markdown_book', 'Rule 27 — お時間よろしいでしょうか / 相手の都合を最初に確認', '# Rule 27 — お時間よろしいでしょうか / 相手の都合を最初に確認
> **Luận điểm.** Sau khi tự xưng → **hỏi liền** "anh/chị có rảnh nói chuyện không". Nếu không hỏi mà nhảy thẳng vào việc = thiếu lịch sự.
>
> 名乗りの直後に『お時間よろしいでしょうか』で都合確認。本題前の必須ステップ。
>
> **Liên quan:** Rule 25, Rule 26, Rule 28.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「ティエンファット<ruby>社<rt>しゃ</rt></ruby>のズンと<ruby>申<rt>もう</rt></ruby>します。今、5分ほどお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？」 <br/>*Em là Dũng bên Thiên Phát ạ. Bây giờ em xin khoảng 5 phút có tiện anh không ạ?* |
| **松本PM** | 「はい、大丈夫です。」 <br/>*Vâng, được ạ.* |

## Biến thể — Khi đối phương bận
| Vai | Câu |
|---------|-----|
| ズン | 「今、お時間よろしいでしょうか？」 <br/>*Bây giờ em xin chút thời gian có được không ạ?* |
| 松本PM | 「すみません、今ちょっと<ruby>立<rt>た</rt></ruby>て<ruby>込<rt>こ</rt></ruby>んでおりまして…」 <br/>*Xin lỗi em, hiện tôi đang hơi bận…* |
| ズン | 「<ruby>失礼<rt>しつれい</rt></ruby>いたしました。<ruby>後<rt>のち</rt></ruby>ほど<ruby>改<rt>あらた</rt></ruby>めてお<ruby>電話<rt>でんわ</rt></ruby><ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。〇時頃でいかがでしょうか？」 <br/>*Em xin lỗi đã làm phiền ạ. Em sẽ gọi lại sau, khoảng 〇h được không ạ?* |

→ Đề xuất giờ cụ thể, không nói "後ほど" mơ hồ.

## Cụm từ mẫu
> **「今、〇分ほどお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 都合 | つごう | ĐÔ HỢP | Sự thuận tiện |
| 立て込む | たてこむ | — | Đang bận, dày kín |
| 後ほど | のちほど | — | Lát nữa |
| 改めて | あらためて | — | Lại |', 'system', 27, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000028, 800000003, NULL, 'markdown_book', 'Rule 28 — Trình bày 30 giây — truyền đạt mục đích gọn / 30秒で要件を伝える', '# Rule 28 — Trình bày 30 giây — truyền đạt mục đích gọn / 30秒で要件を伝える
> **Luận điểm.** Sau khi xác nhận có rảnh → trong 30 giây phải nói rõ **(1) lý do gọi**, **(2) hành động cần** từ đối phương, **(3) thời gian quyết định**.
>
> 30秒で『目的・依頼内容・期限』を明確に伝える。長い前置きは禁物。
>
> **Liên quan:** Rule 24, Rule 27, Rule 35.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「本日お<ruby>電話<rt>でんわ</rt></ruby><ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げましたのは、4<ruby>月度<rt>がつど</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でございます。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby>のミーティング<ruby>前<rt>まえ</rt></ruby>にレビューをいただきたく、<ruby>明日中<rt>あすじゅう</rt></ruby>にメールでお<ruby>送<rt>おく</rt></ruby>りしてもよろしいでしょうか？」 <br/>*Hôm nay em gọi điện về việc báo cáo tiến độ tháng 4 ạ. Em mong được anh duyệt trước buổi họp thứ Hai tuần sau, em xin gửi mail trong ngày mai có được không ạ?* |
| **松本PM** | 「分かりました。明日の<ruby>午前中<rt>ごぜんちゅう</rt></ruby>に<ruby>送<rt>おく</rt></ruby>ってもらえれば、<ruby>午後<rt>ごご</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。」 <br/>*Tôi hiểu rồi. Em gửi sáng mai thì chiều tôi sẽ xem.* |

## 30秒ピッチ構造
```
①「本日お電話差し上げましたのは、〇〇の件でございます」 — 5秒
②「〇〇をいただきたく、〇〇までに〇〇したい」 — 15秒
③「いかがでしょうか？」 — 5秒
```

## Cụm từ mẫu
> **「本日お電話差し上げましたのは、〇〇の件でございます。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 要件 | ようけん | YẾU KIỆN | Việc, mục đích |
| 進捗 | しんちょく | TIẾN THÚC | Tiến độ |
| 期限 | きげん | KỲ HẠN | Hạn chót |
| 前置き | まえおき | — | Lời mở rào |', 'system', 28, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000029, 800000003, NULL, 'markdown_book', 'Rule 29 — Yêu cầu lặp lại điểm quan trọng / 重要事項の復唱を依頼', '# Rule 29 — Yêu cầu lặp lại điểm quan trọng / 重要事項の復唱を依頼
> **Luận điểm.** Khi truyền đạt thông tin quan trọng (số, ngày, số tiền), **nhờ đối phương lặp lại** — không chỉ tự lặp.
>
> 重要な数字・日付・金額は、相手にも復唱を依頼して確認漏れを防ぐ。
>
> **Liên quan:** Rule 13, Rule 18.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>金額<rt>きんがく</rt></ruby>は120<ruby>万円<rt>まんえん</rt></ruby>、<ruby>納期<rt>のうき</rt></ruby>は5月15日でございます。<ruby>念<rt>ねん</rt></ruby>のため、<ruby>復唱<rt>ふくしょう</rt></ruby>をお願いできますでしょうか。」 <br/>*Số tiền 1.200.000 yên, hạn giao là 15/5 ạ. Để chắc chắn, phiền anh lặp lại giúp em được không ạ?* |
| **松本PM** | 「金額120万円、納期5月15日ですね。<ruby>承知<rt>しょうち</rt></ruby>しました。」 <br/>*Tiền 1.200.000 yên, giao 15/5 nhỉ. Tôi hiểu rồi.* |
| **ズン** | 「ありがとうございます。<ruby>間違<rt>まちが</rt></ruby>いございません。」 <br/>*Cảm ơn anh ạ. Đúng vậy ạ.* |

## Lưu ý
- Nhờ lặp lại = thể hiện **bạn coi trọng việc giao tiếp đúng**, không phải nghi đối phương.
- Câu mở: 「念のため、復唱をお願いできますでしょうか」 hoặc 「恐れ入りますが、ご確認のため復唱いただけますでしょうか」.

## Cụm từ mẫu
> **「<ruby>念<rt>ねん</rt></ruby>のため、<ruby>復唱<rt>ふくしょう</rt></ruby>をお願いできますでしょうか。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 復唱 | ふくしょう | PHỤC XƯỚNG | Lặp lại |
| 金額 | きんがく | KIM NGẠCH | Số tiền |
| 納期 | のうき | NẠP KỲ | Hạn giao |
| 念のため | ねんのため | — | Để chắc chắn |', 'system', 29, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000030, 800000003, NULL, 'markdown_book', 'Rule 30 — Đề xuất chuyển kênh khi phone không đủ / 電話で済まない時の提案', '# Rule 30 — Đề xuất chuyển kênh khi phone không đủ / 電話で済まない時の提案
> **Luận điểm.** Khi nội dung phức tạp (kèm số liệu, hình, văn bản dài) → đề xuất **chuyển sang mail/họp trực tuyến/gặp trực tiếp**. Đừng cố giải thích chi tiết qua điện thoại.
>
> 複雑な内容は電話で完結させず、メール／オンライン会議／対面へ切り替える提案を。
>
> **Liên quan:** Rule 28, Rule 51, Rule 52.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>詳細<rt>しょうさい</rt></ruby>な<ruby>数字<rt>すうじ</rt></ruby>につきましては、お<ruby>電話<rt>でんわ</rt></ruby>ですとかえって<ruby>分<rt>わ</rt></ruby>かりにくいかと<ruby>存<rt>ぞん</rt></ruby>じます。」 <br/>*Về số liệu chi tiết, em e qua điện thoại sẽ khó hình dung ạ.* |
| **ズン** | 「<ruby>資料<rt>しりょう</rt></ruby>を<ruby>添付<rt>てんぷ</rt></ruby>したメールをお<ruby>送<rt>おく</rt></ruby>りした<ruby>上<rt>うえ</rt></ruby>で、<ruby>明日<rt>あした</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>ほどオンライン<ruby>会議<rt>かいぎ</rt></ruby>でご<ruby>説明<rt>せつめい</rt></ruby>させていただくのはいかがでしょうか？」 <br/>*Em xin gửi mail kèm tài liệu, rồi ngày mai họp trực tuyến khoảng 30 phút em giải thích, anh thấy thế nào ạ?* |
| **松本PM** | 「そうですね、その<ruby>方<rt>ほう</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすいですね。<ruby>明日<rt>あした</rt></ruby>の14<ruby>時<rt>じ</rt></ruby>はいかがですか？」 <br/>*Đúng vậy, vậy dễ hiểu hơn nhỉ. 14h ngày mai được không em?* |
| **ズン** | 「14<ruby>時<rt>じ</rt></ruby>、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>会議<rt>かいぎ</rt></ruby>URLを<ruby>後<rt>のち</rt></ruby>ほどメールでお<ruby>送<rt>おく</rt></ruby>りいたします。」 <br/>*14h em rõ rồi ạ. Em sẽ gửi đường dẫn họp qua mail sau ạ.* |

## Cụm từ mẫu
> **「お<ruby>電話<rt>でんわ</rt></ruby>ですとかえって<ruby>分<rt>わ</rt></ruby>かりにくいかと<ruby>存<rt>ぞん</rt></ruby>じます。〇〇でご<ruby>説明<rt>せつめい</rt></ruby>させていただいてもよろしいでしょうか？」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| かえって | かえって | — | Ngược lại, càng |
| 添付 | てんぷ | THIÊM PHỤ | Đính kèm |
| オンライン会議 | おんらいんかいぎ | — | Họp trực tuyến |
| 切り替える | きりかえる | — | Chuyển đổi |', 'system', 30, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000031, 800000003, NULL, 'markdown_book', 'Rule 31 — Nhờ chuyển lời khi người nhận vắng / 不在時の伝言依頼', '# Rule 31 — Nhờ chuyển lời khi người nhận vắng / 不在時の伝言依頼
> **Luận điểm.** Khi gọi mà người cần gặp vắng → nhờ người bắt máy chuyển lời, kèm **(1) tên + cty mình**, **(2) việc cần**, **(3) cách liên lạc lại**.
>
> 不在時の伝言依頼：①自分の所属 ②用件 ③折り返し方法を簡潔に。
>
> **Liên quan:** Rule 16, Rule 18, Rule 32.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **受付** | 「あいにく松本は<ruby>外出<rt>がいしゅつ</rt></ruby>しておりまして、本日15時に戻る予定でございます。」 <br/>*Đáng tiếc anh Matsumoto đang ra ngoài, dự kiến 15h hôm nay sẽ về ạ.* |
| **ズン** | 「<ruby>左様<rt>さよう</rt></ruby>でございますか。それでは<ruby>恐<rt>おそ</rt></ruby>れ入りますが、<ruby>伝言<rt>でんごん</rt></ruby>をお願いできますでしょうか。」 <br/>*Vâng em hiểu rồi ạ. Phiền chị, cho em xin nhắn lại được không ạ?* |
| **ズン** | 「ティエンファット社の<ruby>営業部<rt>えいぎょうぶ</rt></ruby>、ズンと申します。明日の<ruby>打<rt>う</rt></ruby>ち合わせ<ruby>資料<rt>しりょう</rt></ruby>を本日中にメールでお送りする<ruby>旨<rt>むね</rt></ruby>、お伝えいただけますでしょうか。」 <br/>*Em là Dũng phòng kinh doanh Cty Thiên Phát ạ. Phiền chị nhắn anh Matsumoto là em sẽ gửi tài liệu họp ngày mai qua mail trong hôm nay ạ.* |
| **ズン** | 「ご<ruby>返信<rt>へんしん</rt></ruby>は明日朝でも問題ございません。電話番号は090-1234-5678でございます。」 <br/>*Anh Matsumoto phản hồi sáng mai cũng được ạ. Số điện thoại của em là 090-1234-5678 ạ.* |
| **受付** | 「<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>申<rt>もう</rt></ruby>し伝えます。」 <br/>*Em rõ rồi ạ. Em sẽ chuyển lời ạ.* |

## Cụm từ mẫu
> **「<ruby>恐<rt>おそ</rt></ruby>れ入りますが、<ruby>伝言<rt>でんごん</rt></ruby>をお願いできますでしょうか。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 伝言 | でんごん | TRUYỀN NGÔN | Lời nhắn |
| 申し伝える | もうしつたえる | — | (Khiêm) chuyển lời |
| 問題ございません | もんだいございません | — | Không vấn đề (kính ngữ) |
| 旨 | むね | CHỈ | Việc, ý là |', 'system', 31, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000032, 800000003, NULL, 'markdown_book', 'Rule 32 — Xin gọi lại — mẫu nhờ gọi lại / 折り返しの依頼', '# Rule 32 — Xin gọi lại — mẫu nhờ gọi lại / 折り返しの依頼
> **Luận điểm.** Khi nhờ gọi lại, **đề xuất khung giờ thuận tiện cho đối phương**, không phải mình. Cộng thêm **phương án thay thế** (mail) nếu không tiện.
>
> 折り返し依頼は『相手の都合優先』。代替手段（メール）も提示すると親切。
>
> **Liên quan:** Rule 31, Rule 25, Rule 51.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「お<ruby>戻<rt>もど</rt></ruby>りになりましたら、お<ruby>手<rt>て</rt></ruby>すきの<ruby>時<rt>とき</rt></ruby>に<ruby>折<rt>お</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>しお<ruby>電話<rt>でんわ</rt></ruby>をいただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>ですと17<ruby>時<rt>じ</rt></ruby>まで、<ruby>明日<rt>あす</rt></ruby>であれば<ruby>終日<rt>しゅうじつ</rt></ruby><ruby>対応<rt>たいおう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でございます。」 <br/>*Khi anh ấy về, lúc nào rảnh xin gọi lại giúp em ạ. Hôm nay em có thể đến 17h, ngày mai cả ngày đều được ạ.* |
| **ズン** | 「もしお<ruby>電話<rt>でんわ</rt></ruby>がご<ruby>都合<rt>つごう</rt></ruby>つかない<ruby>場合<rt>ばあい</rt></ruby>は、メールでも<ruby>構<rt>かま</rt></ruby>いません。zun (z-u-n) アットマーク thienphat ドット vn <ruby>宛<rt>あて</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いいたします。」 <br/>*Nếu không tiện gọi điện, anh ấy gửi mail cũng được ạ. Mail là zun@thienphat.vn ạ.* |
| **受付** | 「<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>申<rt>もう</rt></ruby>し<ruby>伝<rt>つた</rt></ruby>えます。」 <br/>*Em rõ rồi ạ, em sẽ chuyển lời ạ.* |

## Cụm từ mẫu
> **「お<ruby>手<rt>て</rt></ruby>すきの<ruby>時<rt>とき</rt></ruby>に<ruby>折<rt>お</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>しお<ruby>電話<rt>でんわ</rt></ruby>をいただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 折り返し | おりかえし | CHIẾT PHẢN | Gọi lại |
| お手すき | おてすき | — | Lúc rảnh |
| 幸いです | さいわいです | — | Mong được... |
| 終日 | しゅうじつ | CHUNG NHẬT | Cả ngày |', 'system', 32, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000033, 800000003, NULL, 'markdown_book', 'Rule 33 — Cuộc gọi quốc tế — múi giờ + chậm hơn / 国際電話の留意点', '# Rule 33 — Cuộc gọi quốc tế — múi giờ + chậm hơn / 国際電話の留意点
> **Luận điểm.** Gọi quốc tế: **(1) tính giờ đối phương** (Việt Nam < Nhật 2h), **(2) nói chậm hơn 10-15%**, **(3) tránh từ lóng/viết tắt**, **(4) xác nhận lại qua mail sau gọi**.
>
> 国際電話：時差確認・話速10-15%減・略語/スラング回避・通話後メール確認。
>
> **Liên quan:** Rule 25, Rule 51, Rule 55.

## Hội thoại
*Nói chậm hơn bình thường ~15%*

| Vai | Câu |
|---------|-----|
| **ズン** | 「ベトナムは<ruby>現在<rt>げんざい</rt></ruby>朝9時、日本は11時でございます。1時間ほどお時間よろしいでしょうか。」 <br/>*Hiện Việt Nam là 9h sáng, Nhật là 11h ạ. Em xin khoảng 1 tiếng có tiện anh không ạ?* |
| **松本PM** | 「はい、大丈夫です。」 <br/>*Vâng, được ạ.* |
| **ズン** | 「<ruby>進捗<rt>しんちょく</rt></ruby>を…ご<ruby>報告<rt>ほうこく</rt></ruby>…させていただきます。<ruby>詳細<rt>しょうさい</rt></ruby>は<ruby>後<rt>のち</rt></ruby>ほどメールでも…お<ruby>送<rt>おく</rt></ruby>りいたします。」 <br/>*Em xin báo cáo tiến độ ạ. Chi tiết em sẽ gửi qua mail sau ạ.* |

## Mẹo
- Tránh: "ASAP", "FYI" — dùng tiếng Nhật chuẩn 「至急」「ご参考までに」.
- Sau cuộc gọi → gửi mail tóm tắt trong 1h (Rule 51).

## Cụm từ mẫu
> **「ベトナムは<ruby>現在<rt>げんざい</rt></ruby>〇時、日本は〇時でございます。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 時差 | じさ | THỜI SAI | Lệch giờ |
| 略語 | りゃくご | LƯỢC NGỮ | Từ viết tắt |
| 至急 | しきゅう | CHÍ CẤP | Khẩn cấp |
| 国際電話 | こくさいでんわ | QUỐC TẾ ĐIỆN THOẠI | Cuộc gọi quốc tế |', 'system', 33, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000034, 800000003, NULL, 'markdown_book', 'Rule 34 — Cách nói trong cuộc gọi khẩn / 緊急電話の言い回し', '# Rule 34 — Cách nói trong cuộc gọi khẩn / 緊急電話の言い回し
> **Luận điểm.** Cuộc gọi khẩn cấp: **mở đầu báo "khẩn cấp"** ngay trong câu đầu. Cấu trúc: 「至急ご連絡したい件で〜」. Bỏ vòng vo, vào thẳng vấn đề.
>
> 緊急電話は冒頭で『至急』を明示し、用件を即座に伝える。前置き省略。
>
> **Liên quan:** Rule 28, Rule 44.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「お忙しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>至急<rt>しきゅう</rt></ruby>ご<ruby>連絡<rt>れんらく</rt></ruby>したい<ruby>件<rt>けん</rt></ruby>がございます。」 <br/>*Em xin lỗi làm phiền lúc anh đang bận. Em có việc gấp cần liên hệ ạ.* |
| **ズン** | 「<ruby>本日<rt>ほんじつ</rt></ruby><ruby>納品<rt>のうひん</rt></ruby>予定のサーバーですが、<ruby>配送<rt>はいそう</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>のトラブルで<ruby>到着<rt>とうちゃく</rt></ruby>が午後に<ruby>ずれ込<rt>ずれこ</rt></ruby>む<ruby>見込<rt>みこ</rt></ruby>みでございます。」 <br/>*Máy chủ dự kiến giao hôm nay đang bị bên vận chuyển trục trặc, dự kiến chiều mới tới ạ.* |
| **ズン** | 「<ruby>現場<rt>げんば</rt></ruby>のトゥアンにも<ruby>至急<rt>しきゅう</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>いたします。<ruby>松本<rt>まつもと</rt></ruby>様からも何かご<ruby>対応<rt>たいおう</rt></ruby>が必要でしたら、ご<ruby>指示<rt>しじ</rt></ruby>ください。」 <br/>*Em nghĩ cần báo gấp cho anh Tuấn ở hiện trường, anh thấy thế nào ạ?* |
| **松本PM** | 「分かりました。トゥアンさんへ私からも<ruby>連絡<rt>れんらく</rt></ruby>します。」 <br/>*Tôi hiểu rồi. Tôi cũng sẽ liên hệ anh Tuấn.* |

## Cụm từ mẫu
> **「お忙しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>至急<rt>しきゅう</rt></ruby>ご<ruby>連絡<rt>れんらく</rt></ruby>したい<ruby>件<rt>けん</rt></ruby>がございます。」**

## Tránh
- Vòng vo "あの〜実は〜" → ăn 30 giây vô ích trong khi đối phương đang lo.
- "もしかして…" → lưỡng lự, làm mất tin cậy.

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 至急 | しきゅう | CHÍ CẤP | Khẩn cấp |
| 即時 | そくじ | TỨC THỜI | Ngay lập tức |
| ずれ込む | ずれこむ | — | Trễ, dời |
| 見込み | みこみ | — | Dự kiến |', 'system', 34, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000035, 800000003, NULL, 'markdown_book', 'Rule 35 — Tóm tắt xác nhận trước khi cúp máy / 電話を切る前の確認', '# Rule 35 — Tóm tắt xác nhận trước khi cúp máy / 電話を切る前の確認
> **Luận điểm.** Trước khi cúp, **tóm tắt 3 điểm**: (1) đã thống nhất gì, (2) ai làm gì, (3) hạn chót. Tránh "tan biến" khi cúp xong không nhớ chi tiết.
>
> 通話終了前に『合意事項・担当・期限』の3点まとめで認識合わせ。
>
> **Liên quan:** Rule 22, Rule 28, Rule 51.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「最後に<ruby>確認<rt>かくにん</rt></ruby>させていただきます。明日朝までに<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>をメールでお送りし、午後オンライン<ruby>会議<rt>かいぎ</rt></ruby>でご説明いたします。会議URLは本日中にお送りいたします。」 <br/>*Em xin chốt lại ạ. Sáng mai em sẽ gửi báo cáo tiến độ qua mail, chiều họp trực tuyến em giải thích. Đường dẫn họp em gửi trong hôm nay ạ.* |
| **ズン** | 「以上でよろしいでしょうか？」 <br/>*Như vậy được không ạ?* |
| **松本PM** | 「はい、その通りです。よろしくお願いします。」 <br/>*Vâng, đúng vậy. Nhờ em ạ.* |
| **ズン** | 「ありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。」 <br/>*Cảm ơn anh ạ. Em xin phép cúp máy ạ.* |

## Cụm từ mẫu
> **「最後に<ruby>確認<rt>かくにん</rt></ruby>させていただきます。〜以上でよろしいでしょうか？」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| 合意 | ごうい | HỢP Ý | Đồng ý, thống nhất |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Người phụ trách |
| 期限 | きげん | KỲ HẠN | Hạn chót |', 'system', 35, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000036, 800000003, NULL, 'markdown_book', 'Rule 36 — Đừng để máy chờ quá im — lấp im lặng / 保留中の対応', '# Rule 36 — Đừng để máy chờ quá im — lấp im lặng / 保留中の対応
> **Luận điểm.** Giữ máy chờ quá 30 giây mà im lặng = khách lo "có còn kết nối không". Cứ 30 giây quay lại line nói **「お待たせしております」** một lần.
>
> 保留が30秒超えるごとに『お待たせしております』で生存確認。沈黙は不安を呼ぶ。
>
> **Liên quan:** Rule 17, Rule 22.

## Hội thoại
*30秒経過 · quay lại line · 20秒後*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>確認<rt>かくにん</rt></ruby>いたしますので、<ruby>少々<rt>しょうしょう</rt></ruby>お待ちください。」 *(giữ máy)* <br/>*Em xin phép kiểm tra, anh giữ máy chút ạ.* |
| **ズン** | 「お待たせしております。あと少々お時間をいただきます。」 *(quay lại giữ máy)* <br/>*Xin lỗi đã để anh đợi ạ. Em xin thêm chút thời gian nữa ạ.* |
| **ズン** | 「<ruby>大変<rt>たいへん</rt></ruby>お待たせいたしました。確認できました。〜」 <br/>*Rất xin lỗi đã để anh đợi ạ. Em đã kiểm tra xong rồi ạ.* |

## Cụm từ mẫu
> **「お待たせしております。あと<ruby>少々<rt>しょうしょう</rt></ruby>お時間をいただきます。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 保留中 | ほりゅうちゅう | BẢO LƯU TRUNG | Đang giữ máy |
| 沈黙 | ちんもく | TRẦM MẶC | Im lặng |', 'system', 36, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000037, 800000003, NULL, 'markdown_book', 'Rule 37 — Khi line đứt, ai gọi lại trước? / 切れた時のかけ直しルール', '# Rule 37 — Khi line đứt, ai gọi lại trước? / 切れた時のかけ直しルール
> **Luận điểm.** Quy tắc nghiệp vụ: **bên gọi đi (発信側) gọi lại trước**. Nếu khách là người gọi → mình vẫn nên chủ động gọi lại để thể hiện thiện chí.
>
> 通話切断時は『発信側がかけ直す』が原則。ただし顧客側だった場合でも、こちらから折り返すと印象◎。
>
> **Liên quan:** Rule 22, Rule 32.

## Hội thoại — sau khi gọi lại
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>先<rt>さき</rt></ruby>ほどはお<ruby>電話<rt>でんわ</rt></ruby>が<ruby>途中<rt>とちゅう</rt></ruby>で<ruby>切<rt>き</rt></ruby>れてしまい、<ruby>大変<rt>たいへん</rt></ruby><ruby>失礼<rt>しつれい</rt></ruby>いたしました。」 <br/>*Vừa nãy line bị ngắt giữa chừng, em rất xin lỗi anh ạ.* |
| **松本PM** | 「いえ、こちらこそ。<ruby>電波<rt>でんぱ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>かったかもしれません。」 <br/>*Không có gì, có thể sóng yếu ạ.* |
| **ズン** | 「<ruby>続<rt>つづ</rt></ruby>きから<ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>先<rt>さき</rt></ruby>ほどの<ruby>納期<rt>のうき</rt></ruby>の<ruby>件<rt>けん</rt></ruby>ですが…」 <br/>*Em xin phép tiếp tục ạ. Quay lại việc hạn giao vừa nãy...* |

## Mẹo
- Không bắt khách phải gọi lại — gọi lại NGAY trong 1 phút.
- Câu mở: 「<ruby>先<rt>さき</rt></ruby>ほどはお<ruby>電話<rt>でんわ</rt></ruby>が<ruby>途中<rt>とちゅう</rt></ruby>で<ruby>切<rt>き</rt></ruby>れてしまい、<ruby>大変<rt>たいへん</rt></ruby><ruby>失礼<rt>しつれい</rt></ruby>いたしました」.

## Cụm từ mẫu
> **「お<ruby>電話<rt>でんわ</rt></ruby>が<ruby>途中<rt>とちゅう</rt></ruby>で<ruby>切<rt>き</rt></ruby>れてしまい、<ruby>大変<rt>たいへん</rt></ruby><ruby>失礼<rt>しつれい</rt></ruby>いたしました。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 途中 | とちゅう | ĐỒ TRUNG | Giữa chừng |
| 切れる | きれる | — | Đứt, ngắt |
| 電波 | でんぱ | ĐIỆN BA | Sóng điện thoại |
| かけ直す | かけなおす | — | Gọi lại |', 'system', 37, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000038, 800000003, NULL, 'markdown_book', 'Rule 38 — Khi nghe không rõ / お電話が遠いようですが', '# Rule 38 — Khi nghe không rõ / お電話が遠いようですが
> **Luận điểm.** Khi không nghe rõ, **đừng đổ lỗi cho đối phương** ("bạn nói nhỏ"). Câu chuẩn: 「お電話が遠いようですが」 — coi như lỗi của line/môi trường.
>
> 聞き取れない時は『お電話が遠いようですが』で婉曲に伝える。相手のせいにしない。
>
> **Liên quan:** Rule 39, Rule 13.

## Hội thoại XẤU
| Vai | Câu |
|---------|-----|
| ズン | 「すみません、声が小さいんですが…」 <br/>*Xin lỗi, anh nói nhỏ quá em không nghe được…* |

→ Nghe như **đối phương nói nhỏ** = mất lịch sự.

## Hội thoại TỐT
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。お<ruby>電話<rt>でんわ</rt></ruby>が<ruby>遠<rt>とお</rt></ruby>いようでございますが、もう一度お<ruby>願<rt>ねが</rt></ruby>いできますでしょうか？」 <br/>*Em xin lỗi ạ. Hình như line không được rõ, anh nói lại giúp em được không ạ?* |
| **松本PM** | 「<ruby>失礼<rt>しつれい</rt></ruby>しました。今は<ruby>聞<rt>き</rt></ruby>こえますか？」 <br/>*Xin lỗi em. Bây giờ nghe được chưa?* |
| **ズン** | 「はい、はっきり<ruby>聞<rt>き</rt></ruby>こえます。ありがとうございます。」 <br/>*Vâng, em nghe rõ rồi ạ. Cảm ơn anh ạ.* |

## Cụm từ mẫu
> **「お<ruby>電話<rt>でんわ</rt></ruby>が<ruby>遠<rt>とお</rt></ruby>いようでございますが、もう一度お<ruby>願<rt>ねが</rt></ruby>いできますでしょうか？」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 遠い | とおい | — | Xa (đường truyền không rõ) |
| 申し訳ございません | もうしわけございません | — | Xin lỗi (kính ngữ cao) |
| はっきり | はっきり | — | Rõ ràng |', 'system', 38, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000039, 800000003, NULL, 'markdown_book', 'Rule 39 — 5 công thức hỏi lại từ không hiểu / 聞き返しの5パターン', '# Rule 39 — 5 công thức hỏi lại từ không hiểu / 聞き返しの5パターン
> **Luận điểm.** 5 công thức hỏi lại tùy mức độ chưa hiểu: (1) toàn bộ, (2) một phần, (3) nghĩa từ, (4) cách viết, (5) chính tả tên.
>
> 聞き返しは『何が不明か』に応じて5パターン使い分け。
>
> **Liên quan:** Rule 12, Rule 13, Rule 38.

## 5 công thức
| # | Tình huống | Câu chuẩn |
|---|-----------|----------|
| 1 | Toàn bộ câu | 「恐れ入りますが、もう一度お願いできますでしょうか？」 |
| 2 | Phần cụ thể | 「『〇〇』の部分をもう一度お願いします」 |
| 3 | Nghĩa từ | 「〇〇とはどのような意味でしょうか？」 |
| 4 | Cách viết | 「〇〇はどのような漢字でしょうか？」 |
| 5 | Tên người | 「お名前はどのような漢字でいらっしゃいますか？〇〇でよろしいですか？」 |

## Hội thoại — công thức 4 + 5
| Vai | Câu |
|---------|-----|
| **松本PM** | 「うちの<ruby>担当<rt>たんとう</rt></ruby>はおおがきです。」 <br/>*Người phụ trách bên tôi tên là Ōgaki ạ.* |
| **ズン** | 「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。おおがき<ruby>様<rt>さま</rt></ruby>ですね。どのような<ruby>漢字<rt>かんじ</rt></ruby>でいらっしゃいますか？」 <br/>*Phiền anh ạ. Anh Ōgaki nhỉ. Kanji viết như thế nào ạ?* |
| **松本PM** | 「<ruby>大<rt>おお</rt></ruby>きいに<ruby>垣根<rt>かきね</rt></ruby>の<ruby>垣<rt>かき</rt></ruby>で<ruby>大垣<rt>おおがき</rt></ruby>です。」 <br/>*Là chữ ''大'' (lớn) ghép với ''垣'' (trong 垣根 - hàng rào) thành 大垣 ạ.* |
| **ズン** | 「<ruby>大垣<rt>おおがき</rt></ruby>様、<ruby>承知<rt>しょうち</rt></ruby>いたしました。」 <br/>*Anh Ōgaki, em rõ rồi ạ.* |

## Cụm từ mẫu
> **「どのような<ruby>漢字<rt>かんじ</rt></ruby>でいらっしゃいますか？」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 聞き返し | ききかえし | — | Hỏi lại |
| 漢字 | かんじ | HÁN TỰ | Chữ Hán |
| 垣 | かき | HOÀN | Hàng rào |
| 意味 | いみ | Ý VỊ | Nghĩa |', 'system', 39, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000040, 800000003, NULL, 'markdown_book', 'Rule 40 — Khách đang giận — nghe trước, giải pháp sau / 怒っているお客様への対応', '# Rule 40 — Khách đang giận — nghe trước, giải pháp sau / 怒っているお客様への対応
> **Luận điểm.** Khi khách giận, **đừng cắt ngang**. Để họ nói hết, dùng câu chêm 「はい」「左様でございますか」 cho thấy đang lắng nghe, sau đó mới giải pháp.
>
> 怒っている顧客には『傾聴 → 共感 → 確認 → 解決』の順。途中で遮らない。
>
> **Liên quan:** Rule 20, Rule 41, Rule 45.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **不明発信者** | 「3回もメールしたのに<ruby>返信<rt>へんしん</rt></ruby>がないんですよ！どうなってるんですか！」 <br/>*Tôi đã gửi mail 3 lần mà không có phản hồi! Là sao đây!* |
| **ズン** | 「はい...<ruby>左様<rt>さよう</rt></ruby>でございましたか。」 <br/>*Vâng... em hiểu rồi ạ.* |
| **不明発信者** | 「もう1週間ですよ、1週間！」 <br/>*Đã 1 tuần rồi đấy, 1 tuần!* |
| **ズン** | 「ご返信が遅くなり、本当に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。すぐに<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>の上、<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に必ずご<ruby>回答<rt>かいとう</rt></ruby>差し上げます。」 <br/>*Em xin lỗi vì đã trả lời chậm ạ. Em sẽ kiểm tra ngay và chắc chắn trả lời anh trong hôm nay ạ.* |
| **不明発信者** | 「...じゃあお願いします。」 <br/>*...Vậy nhờ em nhé.* |

## Điểm chú ý
- **「はい...」「左様でございますか」** = câu chêm xác nhận đang lắng nghe, tiếng Việt như "Vâng... em hiểu". Không cắt lời.
- Sau khi khách "xả" xong → mới đến bước xin lỗi + giải pháp.

## Cụm từ mẫu
> **「<ruby>左様<rt>さよう</rt></ruby>でございましたか。ご<ruby>返信<rt>へんしん</rt></ruby>が遅くなり、本当に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 怒る | おこる | — | Giận |
| 傾聴 | けいちょう | KHUYNH THÍNH | Lắng nghe |
| 共感 | きょうかん | CỘNG CẢM | Đồng cảm |
| 遮る | さえぎる | — | Cắt ngang |', 'system', 40, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000041, 800000003, NULL, 'markdown_book', 'Rule 41 — Bộ xử lý phàn nàn đầy đủ — 5 bước / クレーム対応のフルセット', '# Rule 41 — Bộ xử lý phàn nàn đầy đủ — 5 bước / クレーム対応のフルセット
> **Luận điểm.** 5 bước chuẩn: **(1) 傾聴 nghe**, **(2) 謝罪 xin lỗi cảm xúc**, **(3) 事実確認 xác minh**, **(4) 解決提示 giải pháp**, **(5) 再発防止 cam kết**.
>
> クレーム対応の5ステップ：傾聴→謝罪→事実確認→解決→再発防止。
>
> **Liên quan:** Rule 20, Rule 40, Rule 45.

## Hội thoại — đủ 5 bước
| # | Vai | Câu | Bước |
|--|---------|-----|------|
| **1** | **不明発信者** | 「商品が<ruby>壊<rt>こわ</rt></ruby>れていました！」 | 怒り |
| | | *Sản phẩm bị hỏng rồi!* | |
| **2** | **ズン** | 「<ruby>左様<rt>さよう</rt></ruby>でございましたか。」 | 1.傾聴 |
| | | *Vâng em hiểu rồi ạ.* | |
| **3** | **ズン** | 「ご<ruby>不便<rt>ふべん</rt></ruby>をおかけしまして<ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。」 | 2.謝罪 |
| | | *Em xin lỗi vì đã gây bất tiện cho anh ạ.* | |
| **4** | **ズン** | 「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、商品の<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しくお<ruby>聞<rt>き</rt></ruby>かせいただけますでしょうか？」 | 3.確認 |
| | | *Phiền anh cho em hỏi chi tiết tình trạng sản phẩm được không ạ?* | |
| **5** | **不明発信者** | 「<ruby>箱<rt>はこ</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けたら<ruby>画面<rt>がめん</rt></ruby>にひびが<ruby>入<rt>はい</rt></ruby>っていて…」 | |
| | | *Mở hộp ra thì màn hình bị nứt…* | |
| **6** | **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>新品<rt>しんぴん</rt></ruby>をお<ruby>送<rt>おく</rt></ruby>りし、<ruby>不良品<rt>ふりょうひん</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby>にて<ruby>回収<rt>かいしゅう</rt></ruby>の<ruby>手配<rt>てはい</rt></ruby>をいたします。」 | 4.解決 |
| | | *Em rõ rồi ạ. Em sẽ gửi hàng mới trong hôm nay, hàng lỗi bên em sẽ thu hồi ạ.* | |
| **7** | **ズン** | 「<ruby>今後<rt>こんご</rt></ruby>、<ruby>出荷前<rt>しゅっかまえ</rt></ruby><ruby>検品<rt>けんぴん</rt></ruby>プロセスを<ruby>見直<rt>みなお</rt></ruby>し、<ruby>再発防止<rt>さいはつぼうし</rt></ruby>に<ruby>努<rt>つと</rt></ruby>めます。」 | 5.再発防止 |
| | | *Từ giờ em sẽ rà soát lại quy trình kiểm hàng trước khi xuất, nỗ lực không để tái diễn ạ.* | |

## Cụm từ mẫu
> **「<ruby>再発防止<rt>さいはつぼうし</rt></ruby>に<ruby>努<rt>つと</rt></ruby>めます。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 再発 | さいはつ | TÁI PHÁT | Tái diễn |
| 防止 | ぼうし | PHÒNG CHỈ | Ngăn chặn |
| 検品 | けんぴん | KIỂM PHẨM | Kiểm hàng |
| 回収 | かいしゅう | HỒI THU | Thu hồi |
| 不良品 | ふりょうひん | BẤT LƯƠNG PHẨM | Hàng lỗi |', 'system', 41, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000042, 800000003, NULL, 'markdown_book', 'Rule 42 — Cách từ chối qua phone không gây xước / 電話で断る言い方', '# Rule 42 — Cách từ chối qua phone không gây xước / 電話で断る言い方
> **Luận điểm.** Từ chối qua phone: **(1) cảm ơn lời mời/đề xuất**, **(2) lý do khái quát** (không nói chi tiết), **(3) đề xuất phương án thay thế nếu có**.
>
> 電話で断る時：①感謝 ②婉曲な理由 ③代替案 の3点セット。
>
> **Liên quan:** Rule 30, Rule 43.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **松本PM** | 「来週金曜のセミナーにご<ruby>参加<rt>さんか</rt></ruby>いただけませんか？」 <br/>*Em tham gia hội thảo thứ Sáu tuần sau được không?* |
| **ズン** | 「お<ruby>声<rt>こえ</rt></ruby>がけいただきありがとうございます。あいにく金曜は他の予定が入っておりまして、参加が難しい<ruby>状況<rt>じょうきょう</rt></ruby>でございます。」 <br/>*Cảm ơn anh đã mời ạ. Đáng tiếc thứ Sáu em đã có lịch khác, em khó tham gia ạ.* |
| **ズン** | 「もし可能でしたら、<ruby>後日<rt>ごじつ</rt></ruby>資料を<ruby>共有<rt>きょうゆう</rt></ruby>いただけますと幸いです。」 <br/>*Nếu được, anh chia sẻ tài liệu sau giúp em ạ.* |
| **松本PM** | 「<ruby>承知<rt>しょうち</rt></ruby>しました、資料お送りします。」 <br/>*Tôi hiểu rồi, tôi sẽ gửi tài liệu nhé.* |

## Tránh
- 「無理です」 trực tiếp = thô.
- 「ちょっと…」 mơ hồ = đối phương không biết bạn có đồng ý hay không.

## Cụm từ mẫu
> **「あいにく〇〇が難しい<ruby>状況<rt>じょうきょう</rt></ruby>でございます。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 断る | ことわる | — | Từ chối |
| あいにく | あいにく | — | Đáng tiếc |
| 婉曲 | えんきょく | UYỂN KHÚC | Vòng vo |
| 代替案 | だいたいあん | ĐẠI THẾ ÁN | Phương án thay thế |', 'system', 42, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000043, 800000003, NULL, 'markdown_book', 'Rule 43 — Báo dời / đổi lịch qua phone / 延期・変更を電話で伝える', '# Rule 43 — Báo dời / đổi lịch qua phone / 延期・変更を電話で伝える
> **Luận điểm.** Báo dời lịch: **(1) xin lỗi**, **(2) lý do ngắn gọn**, **(3) đề xuất 2-3 phương án mới**, **(4) xác nhận lại + gửi mail**.
>
> 延期・変更連絡：謝罪→理由→代替日提示（複数）→メール確認の4ステップ。
>
> **Liên quan:** Rule 42, Rule 44, Rule 51.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>明日<rt>あす</rt></ruby>10<ruby>時<rt>じ</rt></ruby>のお<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせの<ruby>件<rt>けん</rt></ruby>でお<ruby>電話<rt>でんわ</rt></ruby>いたしました。」 <br/>*Em xin phép làm phiền lúc anh đang bận ạ. Em gọi về việc cuộc họp 10h ngày mai ạ.* |
| **ズン** | 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんが、<ruby>急遽<rt>きゅうきょ</rt></ruby><ruby>弊社<rt>へいしゃ</rt></ruby>のトゥアンの<ruby>出張<rt>しゅっちょう</rt></ruby>が<ruby>入<rt>はい</rt></ruby>りまして、<ruby>日程<rt>にってい</rt></ruby>を<ruby>変更<rt>へんこう</rt></ruby>させていただきたくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。」 <br/>*Em xin lỗi anh, anh Tuấn đột xuất phải đi công tác, em xin phép dời lịch ạ.* |
| **ズン** | 「<ruby>代替案<rt>だいたいあん</rt></ruby>として、<ruby>明後日<rt>あさって</rt></ruby>の14<ruby>時<rt>じ</rt></ruby>、もしくは<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby>の10<ruby>時<rt>じ</rt></ruby>はいかがでしょうか？」 <br/>*Em xin đề xuất 2 phương án: ngày kia 14h, hoặc thứ Hai tuần sau 10h, anh thấy thế nào ạ?* |
| **松本PM** | 「では、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby>10<ruby>時<rt>じ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Vậy thứ Hai tuần sau 10h nhé.* |
| **ズン** | 「ありがとうございます。<ruby>後<rt>のち</rt></ruby>ほど<ruby>確認<rt>かくにん</rt></ruby>のメールをお<ruby>送<rt>おく</rt></ruby>りいたします。」 <br/>*Cảm ơn anh ạ. Em sẽ gửi mail xác nhận sau ạ.* |

## Cụm từ mẫu
> **「<ruby>日程<rt>にってい</rt></ruby>を<ruby>変更<rt>へんこう</rt></ruby>させていただきたくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>代替案<rt>だいたいあん</rt></ruby>として、〇〇はいかがでしょうか？」**
>
> *Em xin phép dời lịch ạ. Em đề xuất 〇〇, anh thấy thế nào ạ?*

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 延期 | えんき | DIÊN KỲ | Hoãn |
| 変更 | へんこう | BIẾN CANH | Thay đổi |
| 急遽 | きゅうきょ | CẤP CỬ | Đột xuất |
| 代替案 | だいたいあん | ĐẠI THẾ ÁN | Phương án thay thế |
| 出張 | しゅっちょう | XUẤT TRƯƠNG | Công tác |', 'system', 43, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000044, 800000003, NULL, 'markdown_book', 'Rule 44 — Báo tin xấu qua phone / 悪い知らせを電話で伝える', '# Rule 44 — Báo tin xấu qua phone / 悪い知らせを電話で伝える
> **Luận điểm.** Tin xấu **không gửi mail trước** mà gọi điện. Cấu trúc: **(1) báo trước "tin không tốt"**, **(2) sự việc gọn**, **(3) ảnh hưởng**, **(4) kế hoạch xử lý**.
>
> 悪い知らせは電話が原則。①予告 ②事実 ③影響 ④対応策 の順で伝える。
>
> **Liên quan:** Rule 34, Rule 45.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「お忙しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>残念<rt>ざんねん</rt></ruby>なお<ruby>知<rt>し</rt></ruby>らせがございまして、お<ruby>電話<rt>でんわ</rt></ruby>いたしました。」 <br/>*Em xin lỗi làm phiền lúc anh đang bận ạ. Em có tin không hay cần báo nên xin phép gọi anh ạ.* |
| **ズン** | 「<ruby>先<rt>さき</rt></ruby>ほどの<ruby>本番<rt>ほんばん</rt></ruby>リリースで、<ruby>決済<rt>けっさい</rt></ruby>モジュールに<ruby>障害<rt>しょうがい</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>しております。」 <br/>*Lần triển khai thực tế vừa rồi, phân hệ thanh toán đang phát sinh sự cố ạ.* |
| **ズン** | 「<ruby>現在<rt>げんざい</rt></ruby>ユーザーがお<ruby>支払<rt>しはら</rt></ruby>いできない<ruby>状況<rt>じょうきょう</rt></ruby>で、<ruby>影響範囲<rt>えいきょうはんい</rt></ruby>は<ruby>約<rt>やく</rt></ruby>500<ruby>件<rt>けん</rt></ruby>と<ruby>推定<rt>すいてい</rt></ruby>されます。」 <br/>*Hiện tại người dùng không thanh toán được, em ước tính khoảng 500 giao dịch bị ảnh hưởng ạ.* |
| **ズン** | 「<ruby>対応<rt>たいおう</rt></ruby>として、すでにロールバックを<ruby>実行中<rt>じっこうちゅう</rt></ruby>で、30<ruby>分<rt>ぷん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>復旧<rt>ふっきゅう</rt></ruby>の<ruby>見込<rt>みこ</rt></ruby>みでございます。」 <br/>*Bên em đang tiến hành khôi phục phiên bản cũ, dự kiến khôi phục trong 30 phút ạ.* |
| **松本PM** | 「<ruby>分<rt>わ</rt></ruby>かりました。<ruby>復旧後<rt>ふっきゅうご</rt></ruby>に<ruby>詳細<rt>しょうさい</rt></ruby>レポートをください。」 <br/>*Tôi hiểu rồi. Sau khi khôi phục em gửi báo cáo chi tiết nhé.* |

## Cụm từ mẫu
> **「<ruby>残念<rt>ざんねん</rt></ruby>なお<ruby>知<rt>し</rt></ruby>らせがございまして、お<ruby>電話<rt>でんわ</rt></ruby>いたしました。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 障害 | しょうがい | CHƯỚNG NGẠI | Sự cố |
| 影響範囲 | えいきょうはんい | ẢNH HƯỞNG PHẠM VI | Phạm vi ảnh hưởng |
| 復旧 | ふっきゅう | PHỤC CỰU | Khôi phục |
| 推定 | すいてい | SUY ĐỊNH | Ước tính |', 'system', 44, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000045, 800000003, NULL, 'markdown_book', 'Rule 45 — Gọi xin lỗi — 4 bước / 謝罪の電話', '# Rule 45 — Gọi xin lỗi — 4 bước / 謝罪の電話
> **Luận điểm.** Gọi xin lỗi 4 bước: **(1) thừa nhận sự việc**, **(2) xin lỗi rõ ràng** (không vòng vo), **(3) giải pháp khôi phục**, **(4) cam kết tránh tái diễn**. (Tham khảo Sách 01 Rule 53.)
>
> 謝罪電話の4ステップ：①事実認める ②明確な謝罪 ③復旧策 ④再発防止。
>
> **Liên quan:** Rule 41, Rule 44.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>先<rt>さき</rt></ruby>ほどはご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけし、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした。」 <br/>*Vừa nãy đã gây phiền cho anh, em thành thật xin lỗi ạ.* |
| **ズン** | 「<ruby>弊社<rt>へいしゃ</rt></ruby>の<ruby>確認漏<rt>かくにんも</rt></ruby>れにより、<ruby>納期<rt>のうき</rt></ruby>を1<ruby>日<rt>にち</rt></ruby><ruby>遅<rt>おく</rt></ruby>らせる<ruby>結果<rt>けっか</rt></ruby>となりました。<ruby>全責任<rt>ぜんせきにん</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby>にございます。」 <br/>*Do bên em sót việc kiểm tra nên giao chậm 1 ngày. Tất cả là trách nhiệm của bên em ạ.* |
| **ズン** | 「すぐに<ruby>不足分<rt>ふそくぶん</rt></ruby>を<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>発送<rt>はっそう</rt></ruby>し、<ruby>追加<rt>ついか</rt></ruby>コストは<ruby>弊社<rt>へいしゃ</rt></ruby>にて<ruby>負担<rt>ふたん</rt></ruby>いたします。」 <br/>*Em sẽ gửi phần thiếu trong hôm nay, chi phí phát sinh bên em chịu ạ.* |
| **ズン** | 「<ruby>今後<rt>こんご</rt></ruby>はチェック<ruby>体制<rt>たいせい</rt></ruby>を<ruby>二重化<rt>にじゅうか</rt></ruby>し、<ruby>二度<rt>にど</rt></ruby>とこのようなことが<ruby>起<rt>お</rt></ruby>きないよう<ruby>徹底<rt>てってい</rt></ruby>いたします。」 <br/>*Từ sau bên em sẽ tăng cường cơ chế kiểm tra hai lớp, em cam kết sẽ không để tái diễn ạ.* |
| **松本PM** | 「<ruby>対応<rt>たいおう</rt></ruby>については<ruby>分<rt>わ</rt></ruby>かりました。<ruby>次回<rt>じかい</rt></ruby>はお<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Cách xử lý tôi đã hiểu. Lần sau nhờ em nhé.* |

## Cụm từ mẫu
> **「<ruby>全責任<rt>ぜんせきにん</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby>にございます。」**

## Tránh
- 「もしかしたら〜」 → lưỡng lự, không thừa nhận.
- 「仕方ありませんでした」 → đẩy lỗi cho hoàn cảnh.

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 謝罪 | しゃざい | TẠ TỘI | Xin lỗi |
| 責任 | せきにん | TRÁCH NHIỆM | Trách nhiệm |
| 徹底 | てってい | TRIỆT ĐỂ | Triệt để |
| 二重化 | にじゅうか | NHỊ TRỌNG HÓA | Tăng gấp đôi (cơ chế kiểm) |', 'system', 45, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000046, 800000003, NULL, 'markdown_book', 'Rule 46 — Gọi cảm ơn / お礼の電話', '# Rule 46 — Gọi cảm ơn / お礼の電話
> **Luận điểm.** Sau cuộc họp / sự hỗ trợ → gọi cảm ơn trong **24h**. Cụ thể (cảm ơn vì việc gì), ngắn (3 phút), không vào việc mới.
>
> お礼電話は24時間以内に。具体的に・短く・新規依頼を混ぜない。
>
> **Liên quan:** Rule 51, Rule 35.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「昨日はお忙しい中、<ruby>貴重<rt>きちょう</rt></ruby>なお時間をいただきありがとうございました。」 <br/>*Hôm qua giữa lúc bận rộn anh đã dành thời gian quý báu cho em, em xin cảm ơn anh ạ.* |
| **ズン** | 「特にAPI<ruby>設計<rt>せっけい</rt></ruby>についての<ruby>具体的<rt>ぐたいてき</rt></ruby>なアドバイスは、チームにとって大変<ruby>参考<rt>さんこう</rt></ruby>になりました。」 <br/>*Đặc biệt lời khuyên cụ thể về thiết kế API rất bổ ích cho nhóm em ạ.* |
| **松本PM** | 「いえいえ、こちらこそ。実装で何かあればまたご連絡ください。」 <br/>*Không có gì, tôi mới phải cảm ơn. Nếu có gì trong quá trình triển khai em cứ liên hệ nhé.* |
| **ズン** | 「ありがとうございます。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きよろしくお願いいたします。」 <br/>*Cảm ơn anh ạ. Em mong tiếp tục được anh hỗ trợ ạ.* |

## Cụm từ mẫu
> **「昨日はお忙しい中、<ruby>貴重<rt>きちょう</rt></ruby>なお時間をいただきありがとうございました。」**

## Tránh
- Đan xen yêu cầu mới → biến cuộc gọi cảm ơn thành xin việc.
- Cảm ơn quá chung chung "色々ありがとう" → không có sức nặng.

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 貴重 | きちょう | QUÝ TRỌNG | Quý báu |
| 参考 | さんこう | THAM KHẢO | Tham khảo |
| 引き続き | ひきつづき | — | Tiếp tục |', 'system', 46, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000047, 800000003, NULL, 'markdown_book', 'Rule 47 — Gọi đòi nợ / nhắc thanh toán / 督促の電話', '# Rule 47 — Gọi đòi nợ / nhắc thanh toán / 督促の電話
> **Luận điểm.** Đòi tiền là tình huống tế nhị. Cấu trúc: **(1) hỏi xác nhận** (giả định có thể đã trả), **(2) thông tin cụ thể** (số hóa đơn, ngày), **(3) đề xuất ngày trả mới**. Không buộc tội.
>
> 督促電話は『確認の体裁』で。請求書番号・金額・期日を明示し、相手に逃げ道を残す。
>
> **Liên quan:** Rule 41, Rule 42.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ロアン経理部長** | 「お世話になっております。ティエンファット社の<ruby>経理部<rt>けいりぶ</rt></ruby>、ロアンと<ruby>申<rt>もう</rt></ruby>します。」 <br/>*Lúc nào cũng cảm ơn anh hỗ trợ ạ. Tôi là Loan, phòng kế toán Cty Thiên Phát ạ.* |
| **ロアン** | 「3月分の<ruby>請求書<rt>せいきゅうしょ</rt></ruby>INV-2026-0315、150万円のお<ruby>振込<rt>ふりこ</rt></ruby>みについてご<ruby>確認<rt>かくにん</rt></ruby>のお電話を<ruby>差<rt>さ</rt></ruby>し上げました。」 <br/>*Tôi xin gọi xác nhận về khoản chuyển khoản 1.500.000 yên cho hóa đơn tháng 3, số INV-2026-0315 ạ.* |
| **ロアン** | 「<ruby>期日<rt>きじつ</rt></ruby>は4月20日でございましたが、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>時点<rt>じてん</rt></ruby>で<ruby>入金<rt>にゅうきん</rt></ruby>が確認できておりません。何か<ruby>行<rt>い</rt></ruby>き<ruby>違<rt>ちが</rt></ruby>いがございましたでしょうか？」 <br/>*Hạn là 20/4 nhưng tới hôm nay bên tôi chưa thấy tiền vào. Có lẽ có nhầm lẫn gì không ạ?* |
| **松本PM** | 「失礼しました。経理に確認して<ruby>明日中<rt>あすじゅう</rt></ruby>に<ruby>処理<rt>しょり</rt></ruby>します。」 <br/>*Xin lỗi chị, tôi sẽ kiểm tra với kế toán và xử lý trong ngày mai.* |
| **ロアン** | 「ご<ruby>対応<rt>たいおう</rt></ruby>ありがとうございます。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きどうぞよろしくお願いいたします。」 <br/>*Cảm ơn anh đã xử lý ạ. Mong anh tiếp tục hỗ trợ.* |

## Cụm từ mẫu
> **「お<ruby>振込<rt>ふりこ</rt></ruby>みについてご<ruby>確認<rt>かくにん</rt></ruby>のお電話を<ruby>差<rt>さ</rt></ruby>し上げました。何か<ruby>行<rt>い</rt></ruby>き<ruby>違<rt>ちが</rt></ruby>いがございましたでしょうか？」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 督促 | とくそく | ĐỐC XÚC | Đòi nợ, nhắc nợ |
| 請求書 | せいきゅうしょ | THỈNH CẦU THƯ | Hóa đơn |
| 振込み | ふりこみ | — | Chuyển khoản |
| 行き違い | いきちがい | — | Sự nhầm lẫn |
| 入金 | にゅうきん | NHẬP KIM | Vào tiền |', 'system', 47, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000048, 800000003, NULL, 'markdown_book', 'Rule 48 — Gọi để thông báo / công văn miệng / 通知のための電話', '# Rule 48 — Gọi để thông báo / công văn miệng / 通知のための電話
> **Luận điểm.** Khi cần thông báo chính thức (thay đổi giờ làm, đổi địa chỉ...) → gọi điện *trước* khi gửi mail. Cấu trúc: **(1) báo "có thông báo"**, **(2) nội dung**, **(3) thời điểm hiệu lực**, **(4) cam kết gửi mail xác nhận**.
>
> 公式通知は電話で先に伝え、後にメール確認の二段構え。
>
> **Liên quan:** Rule 35, Rule 51.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「お世話になっております。1点ご<ruby>通知<rt>つうち</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げたい<ruby>件<rt>けん</rt></ruby>がございます。」 <br/>*Cảm ơn anh đã hỗ trợ ạ. Em có 1 việc xin được thông báo ạ.* |
| **ズン** | 「<ruby>来月<rt>らいげつ</rt></ruby>5月1日より、<ruby>弊社<rt>へいしゃ</rt></ruby>の<ruby>新<rt>しん</rt></ruby>オフィスへ<ruby>移転<rt>いてん</rt></ruby>することとなりました。」 <br/>*Từ ngày 1/5 tháng sau, bên em sẽ chuyển sang văn phòng mới ạ.* |
| **ズン** | 「<ruby>住所<rt>じゅうしょ</rt></ruby>はハノイ<ruby>市<rt>し</rt></ruby>バーディン<ruby>区<rt>く</rt></ruby>フンチエン<ruby>通<rt>どお</rt></ruby>り123<ruby>番<rt>ばん</rt></ruby>、<ruby>電話番号<rt>でんわばんごう</rt></ruby>は<ruby>変更<rt>へんこう</rt></ruby>ございません。」 <br/>*Địa chỉ là số 123 phố Hùng Chiến, quận Ba Đình, Hà Nội ạ. Số điện thoại không đổi ạ.* |
| **ズン** | 「<ruby>詳細<rt>しょうさい</rt></ruby>は<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby>なご<ruby>案内<rt>あんない</rt></ruby>メールをお<ruby>送<rt>おく</rt></ruby>りいたします。」 <br/>*Chi tiết em sẽ gửi mail thông báo chính thức trong hôm nay ạ.* |
| **松本PM** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。メールお<ruby>待<rt>ま</rt></ruby>ちしています。」 <br/>*Tôi hiểu rồi. Tôi đợi mail của em.* |

## Cụm từ mẫu
> **「1点ご<ruby>通知<rt>つうち</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げたい<ruby>件<rt>けん</rt></ruby>がございます。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|-----|---------|---------|-------|
| 通知 | つうち | THÔNG TRI | Thông báo |
| 移転 | いてん | DI CHUYỂN | Chuyển trụ sở |
| 案内 | あんない | ÁN NỘI | Hướng dẫn, thông báo |
| 正式 | せいしき | CHÍNH THỨC | Chính thức |', 'system', 48, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000049, 800000003, NULL, 'markdown_book', 'Rule 49 — Hộp thư thoại 30 giây công thức / 留守番電話に残すメッセージ', '# Rule 49 — Hộp thư thoại 30 giây công thức / 留守番電話に残すメッセージ
> **Luận điểm.** Hộp thư thoại 30 giây có 4 phần: **(1) tên + cty**, **(2) lý do gọi 1 câu**, **(3) số gọi lại + thời gian thuận**, **(4) lời chào kết**.
>
> 留守電は30秒以内・4要素：①名乗り ②要件 ③折り返し情報 ④締めの挨拶。
>
> **Liên quan:** Rule 50, Rule 32.

## Mẫu hộp thư thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「いつもお世話になっております。ティエンファット社、<ruby>営業部<rt>えいぎょうぶ</rt></ruby>のズンと<ruby>申<rt>もう</rt></ruby>します。」 <br/>*Cảm ơn anh đã hỗ trợ ạ. Em là Dũng phòng kinh doanh Cty Thiên Phát ạ.* |
| **ズン** | 「明日の<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせ<ruby>資料<rt>しりょう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でご<ruby>相談<rt>そうだん</rt></ruby>したく、お電話<ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げました。」 <br/>*Em gọi điện vì muốn trao đổi về tài liệu họp ngày mai ạ.* |
| **ズン** | 「お<ruby>手<rt>て</rt></ruby>すきの<ruby>際<rt>さい</rt></ruby>に090-1234-5678までお電話いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。本日17時まで<ruby>対応<rt>たいおう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でございます。」 <br/>*Lúc nào rảnh anh gọi lại số 090-1234-5678 giúp em ạ. Hôm nay em có thể nhận máy đến 17h ạ.* |
| **ズン** | 「<ruby>失礼<rt>しつれい</rt></ruby>いたします。」 <br/>*Em xin phép cúp máy ạ.* |

## Tránh
- 30 giây trở lên → khách bỏ qua.
- "後でかけ直します" mà không nói cụ thể → khách không biết chờ.
- Đọc số quá nhanh → khách không ghi kịp.

## Cụm từ mẫu
> **「お<ruby>手<rt>て</rt></ruby>すきの<ruby>際<rt>さい</rt></ruby>に〇〇〇〇までお電話いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 留守番電話 | るすばんでんわ | LƯU THỦ PHIÊN ĐIỆN THOẠI | Hộp thư thoại |
| お手すき | おてすき | — | Lúc rảnh |
| 際 | さい | TẾ | Lúc, khi |
| 幸い | さいわい | HẠNH | Mong được |', 'system', 49, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000050, 800000003, NULL, 'markdown_book', 'Rule 50 — Sau khi nghe hộp thư thoại — gọi lại trong 24h / 留守番電話を聞いた後の対応', '# Rule 50 — Sau khi nghe hộp thư thoại — gọi lại trong 24h / 留守番電話を聞いた後の対応
> **Luận điểm.** Khi mình nghe được lời nhắn trong hộp thư thoại của khách → gọi lại **trong 24h**. Mở lời bằng "聞きました" + nội dung tóm tắt = thể hiện đã chú ý.
>
> 留守電を聞いた後は24時間以内に折り返し。『メッセージを確認いたしました』で受信を伝える。
>
> **Liên quan:** Rule 49, Rule 32.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「お忙しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。ティエンファット社のズンでございます。」 <br/>*Em xin lỗi làm phiền lúc anh đang bận ạ. Em là Dũng bên Thiên Phát ạ.* |
| **ズン** | 「先ほどお電話いただきましたメッセージを<ruby>確認<rt>かくにん</rt></ruby>いたしました。<ruby>納期<rt>のうき</rt></ruby>の件でしたね。」 <br/>*Em đã nghe lời nhắn anh để lại vừa nãy ạ. Việc về hạn giao đúng không ạ?* |
| **松本PM** | 「あ、ズンさん。<ruby>早速<rt>さっそく</rt></ruby>ありがとうございます。」 <br/>*À, Dũng đó. Cảm ơn em đã gọi nhanh nhé.* |
| **ズン** | 「ご連絡が遅くなり申し訳ございません。<ruby>本題<rt>ほんだい</rt></ruby>ですが…」 <br/>*Em xin lỗi vì liên hệ lại muộn ạ. Về việc anh hỏi…* |

## Cụm từ mẫu
> **「お電話いただきましたメッセージを<ruby>確認<rt>かくにん</rt></ruby>いたしました。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 確認 | かくにん | XÁC NHẬN | Xác nhận / kiểm tra |
| 早速 | さっそく | TẢO TỐC | Nhanh chóng |
| 折り返し | おりかえし | — | Gọi lại |', 'system', 50, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000051, 800000003, NULL, 'markdown_book', 'Rule 51 — Sau cuộc gọi gửi tóm tắt qua mail / 電話後のフォローアップメール', '# Rule 51 — Sau cuộc gọi gửi tóm tắt qua mail / 電話後のフォローアップメール
> **Luận điểm.** Sau cuộc gọi quan trọng → gửi mail tóm tắt **trong 1h** với 3 phần: **(1) cảm ơn**, **(2) thống nhất**, **(3) bước tiếp + hạn chót**.
>
> 重要通話後は1時間以内にフォローアップメール。①感謝 ②合意事項 ③次アクションの3点。
>
> **Liên quan:** Rule 35, Rule 23.

## Mail mẫu
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

## Hội thoại — xác nhận qua điện thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>先<rt>さき</rt></ruby>ほどの<ruby>内容<rt>ないよう</rt></ruby>、<ruby>本日中<rt>ほんじつちゅう</rt></ruby>にフォローアップメールでまとめてお<ruby>送<rt>おく</rt></ruby>りいたします。ご<ruby>確認<rt>かくにん</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。」 <br/>*Nội dung vừa rồi em sẽ tổng hợp gửi mail tóm tắt trong hôm nay. Phiền anh xác nhận giúp em ạ.* |
| **松本PM** | 「お願いします。」 <br/>*Nhờ em nhé.* |

## Cụm từ mẫu
> **「<ruby>本日中<rt>ほんじつちゅう</rt></ruby>にフォローアップメールでまとめてお<ruby>送<rt>おく</rt></ruby>りいたします。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| フォローアップ | フォローアップ | — | Theo sát sau cuộc gọi |
| 認識合わせ | にんしきあわせ | NHẬN THỨC — | Đồng nhất hiểu biết |
| 合意事項 | ごういじこう | HỢP Ý SỰ HẠNG | Điểm thống nhất |', 'system', 51, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000052, 800000003, NULL, 'markdown_book', 'Rule 52 — Họp trực tuyến qua Zoom / Teams / オンライン会議の電話作法', '# Rule 52 — Họp trực tuyến qua Zoom / Teams / オンライン会議の電話作法
> **Luận điểm.** Họp trực tuyến có giọng nhưng không có hình → vẫn áp dụng nghi thức gọi điện + thêm: **(1) tự giới thiệu rõ ràng** mỗi lần phát biểu, **(2) nói chậm hơn**, **(3) xác nhận "聞こえますか" đầu cuộc.
>
> オンライン会議：発言時に毎回名乗り＋話速を下げる＋冒頭で音声確認。
>
> **Liên quan:** Rule 53, Rule 54, Rule 55.

## Hội thoại
*発表後*

| Vai | Câu |
|---------|-----|
| **ズン** | 「ティエンファットのズンです。<ruby>皆様<rt>みなさま</rt></ruby>、<ruby>音声<rt>おんせい</rt></ruby>は<ruby>聞<rt>き</rt></ruby>こえておりますでしょうか？」 <br/>*Em Dũng bên Thiên Phát ạ. Mọi người nghe được tiếng em không ạ?* |
| **松本PM** | 「はい、こちらは<ruby>聞<rt>き</rt></ruby>こえております。」 <br/>*Vâng, bên tôi nghe được ạ.* |
| **ズン** | 「ありがとうございます。それでは、ズンより4<ruby>月度<rt>がつど</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>についてご<ruby>報告<rt>ほうこく</rt></ruby>いたします。」 <br/>*Cảm ơn anh ạ. Sau đây em xin báo cáo tiến độ tháng 4 ạ.* |
| **ズン** | 「ズンからは<ruby>以上<rt>いじょう</rt></ruby>です。<ruby>質問<rt>しつもん</rt></ruby>ございますでしょうか？」 <br/>*Phần em đến đây hết ạ. Có câu hỏi nào không ạ?* |

## Mẹo
- **「〇〇のズンです」** mở mỗi lần phát biểu = đối phương biết ai đang nói (vì không thấy mặt).
- **「以上です」** đánh dấu hết phần phát biểu.

## Cụm từ mẫu
> **「〇〇のズンより〇〇についてご<ruby>報告<rt>ほうこく</rt></ruby>いたします。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| オンライン会議 | オンライン かいぎ | — HỘI NGHỊ | Họp trực tuyến |
| 音声 | おんせい | ÂM THANH | Âm thanh |
| 発言 | はつげん | PHÁT NGÔN | Phát biểu |
| 質問 | しつもん | CHẤT VẤN | Câu hỏi |', 'system', 52, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000053, 800000003, NULL, 'markdown_book', 'Rule 53 — Giọng điệu khi chia sẻ màn hình / 画面共有時の声の使い方', '# Rule 53 — Giọng điệu khi chia sẻ màn hình / 画面共有時の声の使い方
> **Luận điểm.** Khi chia sẻ màn hình, **chỉ trực tiếp** khu vực đang nói (「左上の表」「3行目」). Nói chậm hơn 10%, dừng nhẹ giữa các điểm để người nghe theo kịp.
>
> 画面共有時：①画面位置を言葉で指示 ②話速を下げる ③ポイント間に小休止。
>
> **Liên quan:** Rule 52, Rule 54.

## Hội thoại
*nghỉ ngắn*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>画面<rt>がめん</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>いたします。今、見えておりますでしょうか？」 <br/>*Em xin chia sẻ màn hình ạ. Anh thấy được không ạ?* |
| **松本PM** | 「はい、見えています。」 <br/>*Vâng, tôi thấy rồi ạ.* |
| **ズン** | 「ありがとうございます。スライドの<ruby>左上<rt>ひだりうえ</rt></ruby>、4月度KPI<ruby>表<rt>ひょう</rt></ruby>をご覧ください。」 <br/>*Cảm ơn anh ạ. Anh xem bảng KPI tháng 4 ở góc trên bên trái slide ạ.* |
| **ズン** | 「ご覧の通り、<ruby>契約数<rt>けいやくすう</rt></ruby>は<ruby>前月比<rt>ぜんげつひ</rt></ruby>15%増となっております。」 <br/>*Như anh thấy, số hợp đồng tăng 15% so với tháng trước ạ.* |
| **ズン** | 「次に、スライド3<ruby>枚目<rt>まいめ</rt></ruby>をご覧ください。」 <br/>*Tiếp theo, anh xem slide thứ 3 giúp em ạ.* |

## Cụm từ mẫu
> **「スライドの〇〇をご覧ください。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 画面共有 | がめんきょうゆう | HỌA DIỆN CỘNG HỮU | Chia sẻ màn hình |
| 表 | ひょう | BIỂU | Bảng |
| 前月比 | ぜんげつひ | TIỀN NGUYỆT TỈ | So với tháng trước |
| 小休止 | しょうきゅうし | TIỂU HƯU CHỈ | Nghỉ ngắn |', 'system', 53, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000054, 800000003, NULL, 'markdown_book', 'Rule 54 — Phép tắc tắt/bật mic / マイクオフ・オンの礼儀', '# Rule 54 — Phép tắc tắt/bật mic / マイクオフ・オンの礼儀
> **Luận điểm.** Khi không nói = tắt mic. Khi muốn nói = bật mic + chờ 0.5 giây cho âm thanh ổn định trước khi mở lời. Tránh tiếng động lạ làm gián đoạn người khác.
>
> 発言しない時はミュート、発言時はアンミュート＋0.5秒待機。雑音回避と発言の明確化。
>
> **Liên quan:** Rule 52, Rule 57.

## Hội thoại
*bật mic, chờ 0.5 giây · 発言後、ズンが tắt mic*

| Vai | Câu |
|---------|-----|
| **松本PM** | 「ご<ruby>質問<rt>しつもん</rt></ruby>ございますでしょうか？」 <br/>*Có câu hỏi nào không ạ?* |
| **ズン** | 「ティエンファットのズンですが、1点よろしいでしょうか？」 <br/>*Em Dũng bên Thiên Phát ạ, em xin hỏi 1 điểm được không ạ?* |
| **松本PM** | 「はい、どうぞ。」 <br/>*Vâng, em hỏi đi.* |
| **ズン** | 「<ruby>契約<rt>けいやく</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>をさせてください。…」 <br/>*Em xin xác nhận điều khoản hợp đồng ạ.* |

## Tránh
- Bật mic mà có tiếng phòng ồn (gõ phím, nói chuyện sau lưng).
- Quên bật mic → người khác phải nhắc "bạn đang tắt mic".
- Để bật mic cả buổi → tiếng thở/click làm phiền.

## Cụm từ mẫu
> **「1点よろしいでしょうか？」(bật mic → <ruby>待機<rt>たいき</rt></ruby> → <ruby>発言<rt>はつげん</rt></ruby>)**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ミュート | ミュート | — | Tắt mic |
| 雑音 | ざつおん | TẠP ÂM | Tạp âm |
| 待機 | たいき | ĐÃI CƠ | Chờ |
| 発言 | はつげん | PHÁT NGÔN | Phát biểu |', 'system', 54, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000055, 800000003, NULL, 'markdown_book', 'Rule 55 — Họp trực tuyến quốc tế / 国際オンライン会議', '# Rule 55 — Họp trực tuyến quốc tế / 国際オンライン会議
> **Luận điểm.** Họp trực tuyến quốc tế: **(1) hỏi múi giờ + ngôn ngữ chính** ngay đầu, **(2) nói chậm hơn cả người Nhật bản xứ**, **(3) tránh từ lóng/bóng gió**, **(4) xác nhận hiểu sau mỗi vấn đề lớn.
>
> 国際オンライン会議：時差・主言語確認＋話速をさらに下げる＋曖昧表現回避。
>
> **Liên quan:** Rule 33, Rule 52.

## Hội thoại
*Xác nhận hiểu giữa cuộc họp*

| Vai | Câu |
|---------|-----|
| **ズン** | 「皆さん、こんにちは。ベトナム時間で午前9時、日本時間11時でございます。」 <br/>*Xin chào mọi người. Hiện giờ Việt Nam là 9h sáng, Nhật là 11h ạ.* |
| **ズン** | 「本日は日本語で進めさせていただきますが、ご<ruby>不明<rt>ふめい</rt></ruby>な点があればいつでもお知らせください。」 <br/>*Hôm nay em xin phép tiến hành bằng tiếng Nhật, có gì chưa rõ mọi người cứ nói em ạ.* |
| **松本PM** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。」 <br/>*Tôi hiểu rồi.* |
| **ズン** | 「ここまでで何かご不明な点はございますでしょうか？」 <br/>*Đến đây có điểm nào chưa rõ không ạ?* |

## Cụm từ mẫu
> **「ご<ruby>不明<rt>ふめい</rt></ruby>な点があればいつでもお知らせください。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 国際 | こくさい | QUỐC TẾ | Quốc tế |
| 時差 | じさ | THỜI SAI | Múi giờ |
| 主言語 | しゅげんご | CHỦ NGÔN NGỮ | Ngôn ngữ chính |
| 不明な点 | ふめいなてん | BẤT MINH — ĐIỂM | Điểm chưa rõ |', 'system', 55, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000056, 800000003, NULL, 'markdown_book', 'Rule 56 — Xin phép ghi âm / chuyển giọng thành văn bản / 録音・文字起こしの許可', '# Rule 56 — Xin phép ghi âm / chuyển giọng thành văn bản / 録音・文字起こしの許可
> **Luận điểm.** Trước khi bật ghi âm hay AI chuyển giọng thành văn bản → **xin phép từng người tham gia**. Quy định về quyền riêng tư của Nhật rất nghiêm.
>
> 録音・AI文字起こしは事前に全員の許可を得る。日本のプライバシー規定は厳格。
>
> **Liên quan:** Rule 52, Rule 59.

## Hội thoại
| Vai | Câu |
|---------|-----|
| **ズン** | 「本日のミーティングですが、<ruby>議事録<rt>ぎじろく</rt></ruby><ruby>作成<rt>さくせい</rt></ruby>のため<ruby>録音<rt>ろくおん</rt></ruby>と<ruby>自動<rt>じどう</rt></ruby><ruby>文字起<rt>もじお</rt></ruby>こしをさせていただきたく<ruby>存<rt>ぞん</rt></ruby>じます。」 <br/>*Buổi họp hôm nay, em xin phép ghi âm và tự động chuyển giọng thành văn bản để làm biên bản ạ.* |
| **ズン** | 「<ruby>皆様<rt>みなさま</rt></ruby>、ご<ruby>了承<rt>りょうしょう</rt></ruby>いただけますでしょうか？」 <br/>*Mọi người có đồng ý không ạ?* |
| **松本PM** | 「<ruby>私<rt>わたし</rt></ruby>は<ruby>問題<rt>もんだい</rt></ruby>ありません。」 <br/>*Tôi không có vấn đề gì.* |
| **ズン** | 「ありがとうございます。それでは<ruby>録音<rt>ろくおん</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>いたします。」 <br/>*Cảm ơn anh ạ. Em xin bắt đầu ghi âm ạ.* |

## Tránh
- Bật ghi âm trước rồi hỏi sau → đánh mất lòng tin.
- "後でAIで文字起こしします" → đây cũng là ghi âm gián tiếp, vẫn cần xin phép.

## Cụm từ mẫu
> **「<ruby>録音<rt>ろくおん</rt></ruby>と<ruby>自動<rt>じどう</rt></ruby><ruby>文字起<rt>もじお</rt></ruby>こしをさせていただきたく<ruby>存<rt>ぞん</rt></ruby>じます。<ruby>皆様<rt>みなさま</rt></ruby>、ご<ruby>了承<rt>りょうしょう</rt></ruby>いただけますでしょうか？」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 録音 | ろくおん | LỤC ÂM | Ghi âm |
| 文字起こし | もじおこし | VĂN TỰ — | Chuyển giọng thành văn bản |
| 議事録 | ぎじろく | NGHỊ SỰ LỤC | Biên bản họp |
| 了承 | りょうしょう | LIỄU THỪA | Đồng ý |', 'system', 56, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000057, 800000003, NULL, 'markdown_book', 'Rule 57 — Giành lượt phát biểu trong họp trực tuyến — chen lời khéo léo / 電話会議で発言を取る', '# Rule 57 — Giành lượt phát biểu trong họp trực tuyến — chen lời khéo léo / 電話会議で発言を取る
> **Luận điểm.** Khi muốn xen lời trong họp trực tuyến → **đợi câu kết của người trước**, dùng câu chuẩn 「恐れ入ります」 + tự xưng. Tránh cắt lời.
>
> 電話会議で発言を取る時：①前話者の文末を待つ ②『恐れ入ります』+名乗り ③発言開始。
>
> **Liên quan:** Rule 52, Rule 54.

## Hội thoại
*bật mic, chờ ngắt*

| Vai | Câu |
|---------|-----|
| **松本PM** | 「…ということで、<ruby>現状<rt>げんじょう</rt></ruby>のロードマップは<ruby>順調<rt>じゅんちょう</rt></ruby>と<ruby>言<rt>い</rt></ruby>えるでしょう。」 <br/>*Như vậy, có thể nói roadmap hiện tại đang tiến triển tốt.* |
| **ズン** | 「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります、ティエンファットのズンです。<ruby>発言<rt>はつげん</rt></ruby>よろしいでしょうか？」 <br/>*Em xin lỗi, em Dũng bên Thiên Phát ạ. Em xin phát biểu được không ạ?* |
| **松本PM** | 「はい、ズンさんどうぞ。」 <br/>*Vâng, Dũng phát biểu đi.* |
| **ズン** | 「ロードマップの<ruby>第3四半期<rt>だいさんしはんき</rt></ruby>の<ruby>項目<rt>こうもく</rt></ruby>について、<ruby>追加<rt>ついか</rt></ruby>でご<ruby>相談<rt>そうだん</rt></ruby>したい<ruby>点<rt>てん</rt></ruby>がございます。」 <br/>*Về mục quý 3 trong roadmap, em có 1 điểm muốn trao đổi thêm ạ.* |

## Cụm từ mẫu
> **「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります、〇〇のズンです。<ruby>発言<rt>はつげん</rt></ruby>よろしいでしょうか？」**

## Mẹo
- Nếu nhiều người cùng nói → "お先にどうぞ" để nhường, sau mới phát biểu.
- Tránh "あの〜" rồi nói luôn → sẽ chồng tiếng người khác.

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 発言を取る | はつげんをとる | PHÁT NGÔN — | Lấy lượt phát biểu |
| 恐れ入ります | おそれいります | — | Phiền anh/chị, xin lỗi |
| お先に | おさきに | — | Trước (mời người khác đi trước) |', 'system', 57, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000058, 800000003, NULL, 'markdown_book', 'Rule 58 — Họp kết hợp — vừa trực tiếp vừa trực tuyến / ハイブリッド会議', '# Rule 58 — Họp kết hợp — vừa trực tiếp vừa trực tuyến / ハイブリッド会議
> **Luận điểm.** Họp kết hợp có nguy cơ "người tham gia trực tuyến bị bỏ rơi". Người điều phối phải **gọi tên người tham gia trực tuyến**, nhắc lại phát biểu của phòng cho phía trực tuyến, đảm bảo cả hai bên cùng tham gia.
>
> ハイブリッド会議では『オンライン参加者が取り残されない』配慮が必須。意識的に名前を呼ぶ。
>
> **Liên quan:** Rule 52, Rule 57.

## Hội thoại — Vai điều phối (em Dũng tại văn phòng VN, anh Matsumoto tham gia trực tuyến)
*tại văn phòng · trực tuyến · 後*

| Vai | Câu |
|---------|-----|
| **ズン** | 「松本様、オンラインからもご<ruby>意見<rt>いけん</rt></ruby>をお<ruby>伺<rt>うかが</rt></ruby>いできますでしょうか。<ruby>先<rt>さき</rt></ruby>ほどのトゥアンの<ruby>発言<rt>はつげん</rt></ruby>、<ruby>聞<rt>き</rt></ruby>こえておりましたか？」 <br/>*Anh Matsumoto, từ phía trực tuyến anh phát biểu giúp em ạ. Phát biểu của anh Tuấn vừa rồi anh nghe được không ạ?* |
| **松本PM** | 「はい、聞こえました。<ruby>納期<rt>のうき</rt></ruby><ruby>延長<rt>えんちょう</rt></ruby>について<ruby>意見<rt>いけん</rt></ruby><ruby>申<rt>もう</rt></ruby>し上げてもよろしいでしょうか。」 <br/>*Vâng, tôi nghe được. Tôi xin có ý kiến về việc gia hạn được không?* |
| **ズン** | 「ぜひお<ruby>願<rt>ねが</rt></ruby>いいたします。」 <br/>*Vâng, mời anh ạ.* |
| **ズン** | 「<ruby>会場<rt>かいじょう</rt></ruby><ruby>側<rt>がわ</rt></ruby>で先ほど『コスト<ruby>面<rt>めん</rt></ruby>の<ruby>懸念<rt>けねん</rt></ruby>』が<ruby>出<rt>で</rt></ruby>ておりますが、松本様はどうお<ruby>考<rt>かんが</rt></ruby>えでしょうか？」 <br/>*Bên phòng vừa nãy có nêu ''lo ngại về chi phí'', anh Matsumoto thấy thế nào ạ?* |

## Cụm từ mẫu
> **「オンラインからもお<ruby>声<rt>こえ</rt></ruby>をいただけますでしょうか。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ハイブリッド | ハイブリッド | — | Kết hợp (trực tiếp + trực tuyến) |
| 参加者 | さんかしゃ | THAM GIA GIẢ | Người tham gia |
| 取り残す | とりのこす | — | Bỏ rơi |
| 配慮 | はいりょ | PHỐI LỰ | Quan tâm |
| 懸念 | けねん | HUYỀN NIỆM | Mối lo |', 'system', 58, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000059, 800000003, NULL, 'markdown_book', 'Rule 59 — Quản lý lịch sử cuộc gọi & ghi chú / 電話履歴の管理', '# Rule 59 — Quản lý lịch sử cuộc gọi & ghi chú / 電話履歴の管理
> **Luận điểm.** Mọi cuộc gọi công việc cần lưu lại: **(1) ngày giờ**, **(2) đối phương + cty**, **(3) tóm tắt 5W1H**, **(4) việc cần làm**, **(5) trạng thái theo dõi**. Lưu trên CRM hoặc file Excel cá nhân.
>
> 通話履歴は5要素で記録：日時・相手・内容・タスク・進捗。CRMまたはエクセルで保管。
>
> **Liên quan:** Rule 23, Rule 51.

## Mẫu ghi chú
| 日時 | 相手 | 用件 | アクション | 期限 | ステータス |
|------|------|------|-----------|------|----------|
| 4/25 10:00 | 松本PM (白鷗) | 4月度進捗 | 報告書送付 | 4/26 12:00 | 完了 |
| 4/25 14:30 | ハー CTO | API設計確認 | 設計書修正 | 4/28 18:00 | 進行中 |

## Hội thoại — báo cáo nội bộ về việc lưu
| Vai | Câu |
|---------|-----|
| **フオン** | 「<ruby>先週<rt>せんしゅう</rt></ruby>の<ruby>松本<rt>まつもと</rt></ruby>様との<ruby>通話<rt>つうわ</rt></ruby>、<ruby>記録<rt>きろく</rt></ruby>されてる？」 <br/>*Cuộc gọi với anh Matsumoto tuần trước em đã ghi lại chưa?* |
| **ズン** | 「はい、CRMに<ruby>登録済<rt>とうろくず</rt></ruby>みです。アクションは『<ruby>報告書送付<rt>ほうこくしょそうふ</rt></ruby>』で<ruby>完了<rt>かんりょう</rt></ruby>ステータスにしております。」 <br/>*Vâng, em đã lưu vào CRM rồi ạ. Hạng mục ''gửi báo cáo'' đã chuyển sang trạng thái hoàn thành ạ.* |
| **フオン** | 「ありがとう。<ruby>来月<rt>らいげつ</rt></ruby>のレビューで<ruby>参照<rt>さんしょう</rt></ruby>します。」 <br/>*Cảm ơn em. Tháng sau review chị sẽ tham khảo.* |

## Cụm từ mẫu
> **「CRMに<ruby>登録済<rt>とうろくず</rt></ruby>みです。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 履歴 | りれき | LÝ LỊCH | Lịch sử |
| 記録 | きろく | KÝ LỤC | Ghi nhận |
| 進捗 | しんちょく | TIẾN THÚC | Tiến độ |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn thành |', 'system', 59, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (830000060, 800000003, NULL, 'markdown_book', 'Rule 60 — Tự chấm điểm — bảng kiểm kỹ năng điện thoại / 電話力の自己診断', '# Rule 60 — Tự chấm điểm — bảng kiểm kỹ năng điện thoại / 電話力の自己診断
> **Luận điểm.** Cuối sách: tự chấm điểm 10 điểm kỹ năng điện thoại từ rule 1 đến 59. Đánh dấu mục yếu → ôn lại rule tương ứng. **Kỹ năng điện thoại = luyện tập, không phải lý thuyết**.
>
> 電話力チェックリスト10項目で自己診断。弱点の rule に戻って再演習。
>
> **Liên quan:** Rule 01, Rule 35.

## 10 câu tự chấm
| # | Câu hỏi tự chấm | / | Rule liên quan |
|---|----------------|------|----------------|
| 1 | Tôi có thể đọc câu mở 「お電話ありがとうございます〜」 trong 3 giây không? | | Rule 01 |
| 2 | Tôi bắt máy trong 3 hồi chuông? | | Rule 02 |
| 3 | Tôi có mẫu ghi chú 5W1H sẵn? | | Rule 05, 14 |
| 4 | Tôi xác nhận lại tên/số/email bằng cách lặp lại? | | Rule 12, 13 |
| 5 | Tôi xử lý 4 mẫu tình huống người cần gặp vắng mặt trôi chảy? | | Rule 16 |
| 6 | Tôi đề xuất "30秒ピッチ" được khi gọi đi? | | Rule 28 |
| 7 | Tôi nói "お電話が遠いようですが" thay vì "声が小さい"? | | Rule 38 |
| 8 | Tôi xử lý phàn nàn theo 5 bước? | | Rule 41 |
| 9 | Tôi gửi mail tóm tắt trong 1h sau gọi quan trọng? | | Rule 51 |
| 10 | Tôi tắt mic khi không nói trong họp trực tuyến? | | Rule 54 |

## Tự xếp loại
- **9-10 :** Kỹ năng điện thoại đạt trình độ làm việc thực tế — sẵn sàng làm việc với khách Nhật.
- **6-8 :** Còn vài điểm yếu — luyện rule tương ứng 1 tuần.
- **0-5 :** Đọc lại sách từ đầu, mỗi rule luyện nói 5 lần.

## Hội thoại — cùng người hướng dẫn xem lại
| Vai | Câu |
|---------|-----|
| **フオン** | 「ズン、<ruby>自己診断<rt>じこしんだん</rt></ruby>やってみた？」 <br/>*Dũng, em đã tự chấm điểm chưa?* |
| **ズン** | 「はい、9点でした。Rule 38の『お電話が<ruby>遠<rt>とお</rt></ruby>い』<ruby>表現<rt>ひょうげん</rt></ruby>がまだ少し<ruby>練習不足<rt>れんしゅうぶそく</rt></ruby>ですので、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>重点的<rt>じゅうてんてき</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>します。」 <br/>*Vâng, em được 9 điểm ạ. Rule 38 ''お電話が遠い'' em luyện chưa đủ, tuần sau em sẽ tập trung luyện điểm này ạ.* |
| **フオン** | 「いい<ruby>姿勢<rt>しせい</rt></ruby>ね。<ruby>継続<rt>けいぞく</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>です。」 <br/>*Tinh thần tốt đấy. Quan trọng nhất là duy trì đều đặn.* |

## Cụm từ mẫu
> **「<ruby>電話力<rt>でんわりょく</rt></ruby>は<ruby>理論<rt>りろん</rt></ruby>ではなく、<ruby>練習<rt>れんしゅう</rt></ruby>の<ruby>量<rt>りょう</rt></ruby>。」**

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 自己診断 | じこしんだん | TỰ KỶ CHẨN ĐOÁN | Tự chẩn đoán |
| 弱点 | じゃくてん | NHƯỢC ĐIỂM | Điểm yếu |
| 練習 | れんしゅう | LUYỆN TẬP | Luyện tập |
| 継続 | けいぞく | KẾ TỤC | Liên tục |', 'system', 60, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
