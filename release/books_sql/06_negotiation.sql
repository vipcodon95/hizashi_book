-- Hizashi book SQL — Đàm phán · Đề xuất / 商談・交渉
-- curriculum_id = 800000007
-- node count = 45
-- generated từ release/books/06_negotiation/
-- KHÔNG sửa thủ công file này. Chạy lại scripts/build_sql_from_release.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, introduction_jp, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000007, NULL, 'markdown_book', 'BJT', 'Đàm phán · Đề xuất', 'Bộ sách Hizashi — Đàm phán · Đề xuất', 'Hizashi シリーズ — 商談・交渉', 'system', TRUE, TRUE, TRUE, FALSE, 20, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, introduction = EXCLUDED.introduction, introduction_jp = EXCLUDED.introduction_jp, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000001, 800000007, NULL, 'markdown_book', 'Rule 01 — BATNA: Phương án thay thế tốt nhất / BATNA — 交渉決裂時の代替案', '# Rule 01 — BATNA: Phương án thay thế tốt nhất / BATNA — 交渉決裂時の代替案
> **Luận điểm.** Vào đàm phán mà KHÔNG có **BATNA** (Best Alternative To Negotiated Agreement) = vào với 0 đòn bẩy. Khách Nhật cảm nhận được người không có "lựa chọn khác" qua giọng nói → push hard. Định nghĩa BATNA cụ thể TRƯỚC khi vào phòng đàm phán: con số, thời điểm, đối tác thay thế.
>
> 交渉に入る前に **BATNA**(交渉決裂時の代替案) を必ず数値化する。曖昧なBATNAを持って交渉に入ると、相手はこちらに代替案がないことを声色で察知し、攻めに転じる。
>
> **Liên quan:** rule 02 (ZOPA), rule 08 (điểm rút lui), rule 09 (kế hoạch nhượng bộ).
> Sách 05 Rule 01 — danh sách kiểm tra 7 câu.

---

## Bối cảnh / 場面
Tháng 5/2026, Phase 3 với 白鷗 vào vòng đàm phán giá lần 1. Anh Hà CTO giao Dũng + Tuấn chào giá ¥18M cho Phase 3. Khách 大垣 sẽ trả giá ngược — Dũng cần định nghĩa BATNA trước khi bước vào phòng. Sáng thứ Hai, Dũng đến văn phòng chị Hương xin tham vấn.

---

## Hội thoại XẤU — vào đàm phán không có BATNA
*Slack 9:00, hỏi Hương*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、明日 Phase 3 の<ruby>価格交渉<rt>かかくこうしょう</rt></ruby>です。¥18M で出すんですが、もし<ruby>大垣<rt>おおがき</rt></ruby>さんが下げてと言ったらどこまで下げますか？」 <br/>*Chị Hương, mai là round đàm phán giá Phase 3 ạ. Em ra giá ¥18M, nhưng nếu anh Ōgaki ép giảm thì giảm xuống tới đâu ạ?* |
| **フオン** | 「BATNA は？」 <br/>*BATNA của em là gì?* |
| **ズン** | 「BATNA…えっと、まだ考えてないです。<ruby>譲歩<rt>じょうほ</rt></ruby>は¥17Mぐらいまでかなと…」 <br/>*BATNA... ờ, em chưa nghĩ ạ. Em định nhượng bộ chừng ¥17M ạ...* |
| **フオン** | 「**ダメ。BATNA がないなら、明日交渉に行かないで**。¥17M も<ruby>曖昧<rt>あいまい</rt></ruby>で<ruby>根拠<rt>こんきょ</rt></ruby>がない。今夜中に BATNA 3 シナリオ書いて、明日朝レビューしよう。」 <br/>*Không được. BATNA không có thì mai không vào đàm phán. ¥17M cũng mơ hồ không có cơ sở. Tối nay viết BATNA 3 kịch bản, sáng mai chị xem lại.* |

**Vì sao xấu:** Dũng vào đàm phán mà không có BATNA → không biết điểm rút lui. ¥17M chỉ là cảm giác, không có cơ sở. Khách Nhật sắc sảo như 大垣 sẽ thăm dò → đẩy Dũng đến ¥15M dễ dàng. Hương từ chối cho Dũng vào phòng — đây là quyết định đúng của người hướng dẫn.

---

## Hội thoại TỐT — BATNA định nghĩa rõ + 3 kịch bản
*Slack 9:00 · file 開く*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、Phase 3 <ruby>価格交渉<rt>かかくこうしょう</rt></ruby>の **BATNA 3 シナリオ**を<ruby>作成<rt>さくせい</rt></ruby>しました【1】。レビューいただけますでしょうか？」 <br/>*Chị Hương, em đã tạo BATNA 3 kịch bản cho đàm phán giá Phase 3 ạ. Phiền chị xem lại giúp em được không ạ?* |
| **フオン** | 「シナリオA(<ruby>成立<rt>せいりつ</rt></ruby>): ¥18M、target、shake hand。シナリオB(<ruby>再交渉<rt>さいこうしょう</rt></ruby>): ¥16.5M + scope -10%、ハー CTO <ruby>承認済<rt>しょうにんずみ</rt></ruby>。シナリオC(walk-away): ¥15M <ruby>以下<rt>いか</rt></ruby>なら<ruby>撤退<rt>てったい</rt></ruby>、<ruby>別案件<rt>べつあんけん</rt></ruby> X 社の話進める。これは<ruby>具体的<rt>ぐたいてき</rt></ruby>でいいね。」 <br/>*Kịch bản A (chốt thương vụ): ¥18M, mục tiêu, bắt tay. Kịch bản B (đàm phán lại): ¥16.5M + phạm vi -10%, anh Hà CTO đã duyệt. Kịch bản C (rút lui): dưới ¥15M thì rút, chuyển sang X社. Cụ thể, OK.* |
| **ズン** | 「シナリオB の<ruby>根拠<rt>こんきょ</rt></ruby>は、**Phase 2 <ruby>同等<rt>どうとう</rt></ruby>スコープなら ¥16.5M で<ruby>利益率<rt>りえきりつ</rt></ruby> 22% <ruby>維持可能<rt>いじかのう</rt></ruby>**【2】、ハー CTO に<ruby>確認済<rt>かくにんず</rt></ruby>みです。シナリオC は **3月にX社から ¥17M の MoU <ruby>受領<rt>じゅりょう</rt></ruby>** が走っているので、こちらに切り替え可能です【3】。」 <br/>*Cơ sở kịch bản B: phạm vi tương đương Phase 2 thì ¥16.5M giữ tỷ suất lợi nhuận 22%, anh Hà CTO đã xác nhận ạ. Kịch bản C: tháng 3 đã có MoU ¥17M từ X社 đang chạy, em có thể chuyển sang ạ.* |
| **フオン** | 「<ruby>完璧<rt>かんぺき</rt></ruby>。明日<ruby>大垣<rt>おおがき</rt></ruby>さんが ¥15M 以下を出してきたら、シナリオ C を<ruby>堂々<rt>どうどう</rt></ruby>と<ruby>提示<rt>ていじ</rt></ruby>。『<ruby>弊社<rt>へいしゃ</rt></ruby>にも他のオプションがある』ことを声に出さなくても tone で伝わる。それが BATNA の力。」 <br/>*Tuyệt. Mai anh Ōgaki đẩy xuống dưới ¥15M thì em đưa kịch bản C ra một cách thẳng thắn. ''Bên em cũng có lựa chọn khác'' không cần nói thành lời, giọng điệu cũng truyền tải. Đó là sức mạnh BATNA.* |

 **Ghi chú:**
- 【1】**「BATNA 3 シナリオ」** — A (chốt nguyên), B (đã chuẩn bị trả giá ngược), C (rút lui). Mỗi kịch bản phải có **con số + điều kiện + người đã duyệt**.
- 【2】**シナリオB phải có xác thực tài chính nội bộ** — không chỉ "cảm giác". Giữ biên lợi nhuận ≥ 20% là ngưỡng nội bộ.
- 【3】**Kịch bản C (rút lui) cần lựa chọn thay thế thật** — không phải đòn dọa suông. X 社 MoU thật → Dũng vào phòng với sự tự tin.

---

## Cụm từ mẫu
> **「BATNAなしで<ruby>交渉<rt>こうしょう</rt></ruby>に入らない。3シナリオ(<ruby>成立<rt>せいりつ</rt></ruby>／<ruby>再交渉<rt>さいこうしょう</rt></ruby>／<ruby>撤退<rt>てったい</rt></ruby>)を<ruby>数値<rt>すうち</rt></ruby>で持つ。」**
>
> *Không vào đàm phán khi chưa có BATNA. 3 kịch bản (chốt / đàm phán lại / rút lui) phải có con số.*

---

## Tránh
- BATNA mơ hồ ("nếu không thì cũng OK") → khách Nhật sắc sảo đọc được trong 5 phút
- Không có kịch bản C (rút lui thật) → mọi nhượng bộ của bạn = không có đáy
- BATNA không có duyệt nội bộ → đến giờ G phát hiện kịch bản B vượt quyền
- Nói trực tiếp "我々には他のオプションがあります" → doanh nghiệp Nhật kỵ kiểu nói đe dọa; thay bằng giọng điệu tự tin (toát ra trong giọng) + ngôn ngữ cơ thể

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| BATNA | batna | — | Phương án thay thế tốt nhất khi đàm phán đổ vỡ |
| 撤退 | てったい | TRIỆT THOÁI | Rút lui |
| 譲歩 | じょうほ | NHƯỢNG BỘ | Nhượng bộ |
| 利益率 | りえきりつ | LỢI ÍCH SUẤT | Tỷ suất lợi nhuận |
| 内部承認 | ないぶしょうにん | NỘI BỘ THỪA NHẬN | Duyệt nội bộ |
| シナリオ | シナリオ | — | Kịch bản |
| MoU | MoU | — | Biên bản ghi nhớ |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000002, 800000007, NULL, 'markdown_book', 'Rule 02 — ZOPA: Vùng có thể thỏa thuận / ZOPA — 合意可能領域', '# Rule 02 — ZOPA: Vùng có thể thỏa thuận / ZOPA — 合意可能領域
> **Luận điểm.** **ZOPA** (Zone Of Possible Agreement) là khoảng giao giữa giá giới hạn của bên mình và giá giới hạn của khách. Nếu hai khoảng KHÔNG giao nhau → không có thương vụ. Trước đàm phán phải ước lượng cả 4 con số: *mục tiêu* + *giới hạn rút lui* của mình, *trần ngân sách* + *sàn ngân sách* (mức tối thiểu) của khách.
>
> 交渉に入る前に、自社の **目標価格・撤退価格** だけでなく相手の **予算上限・最低期待品質** も推定し、**ZOPA**(合意可能領域) が存在するか確認する。ZOPAがゼロなら、その日の交渉は成立しない。
>
> **Liên quan:** rule 01 (BATNA), rule 08 (điểm rút lui), rule 18 (neo giá).

---

## Bối cảnh / 場面
Sau khi xem xét BATNA xong (rule 01), Hương yêu cầu Dũng thêm **bản đồ ZOPA** — ước lượng trần ngân sách của 白鷗 dựa trên số liệu thực tế Phase 2 + thông tin từ Tanaka PMO. Dũng vào phòng họp nhỏ với Hương sáng thứ Ba.

---

## Hội thoại XẤU — chỉ tính giá phía mình, không ước lượng phía khách
| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、<ruby>目標<rt>もくひょう</rt></ruby> ¥18M、<ruby>撤退<rt>てったい</rt></ruby> ¥15M で行きます。」 <br/>*Chị Hương, em đi với mục tiêu ¥18M, điểm rút lui ¥15M ạ.* |
| **フオン** | 「<ruby>相手<rt>あいて</rt></ruby>の<ruby>予算上限<rt>よさんじょうげん</rt></ruby>は？」 <br/>*Trần ngân sách phía khách là bao nhiêu?* |
| **ズン** | 「分かりません。とりあえず ¥18M 出して<ruby>反応<rt>はんのう</rt></ruby>見ます。」 <br/>*Em chưa biết ạ. Cứ ra ¥18M rồi xem phản ứng ạ.* |
| **フオン** | 「それは<ruby>博打<rt>ばくち</rt></ruby>。¥18M が相手<ruby>上限<rt>じょうげん</rt></ruby> ¥16M を超えていたら、その時点で ZOPA ゼロ。**こっちが anchor を出す前に、相手の budget <ruby>帯<rt>たい</rt></ruby>を<ruby>推定<rt>すいてい</rt></ruby>して。**」 <br/>*Đó là đánh bạc. Nếu ¥18M vượt trần khách ¥16M là ZOPA = 0 ngay. Trước khi mình neo giá, phải ước lượng dải ngân sách của khách.* |

**Vì sao xấu:** Chỉ tính một phía → không biết ZOPA có tồn tại hay không. Nếu trần ngân sách của khách là ¥16M mà mình neo giá ¥18M, có thể bị từ chối rút lui ngay từ đầu hoặc bị ép giảm sâu. "Reaction を見る" (chờ xem phản ứng) là cách lười, không có dữ liệu.

---

## Hội thoại TỐT — lập bản đồ ZOPA 4 số + kiểm chéo thông tin
| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、ZOPA マッピングを作りました【1】。<ruby>弊社<rt>へいしゃ</rt></ruby> target ¥18M、reservation ¥15M。<ruby>白鷗<rt>はくおう</rt></ruby>側は推定 budget ceiling ¥17M、<ruby>最低期待品質<rt>さいていきたいひんしつ</rt></ruby>ライン Phase 2 <ruby>同等<rt>どうとう</rt></ruby>以上。」 <br/>*Chị Hương, em đã làm bản đồ ZOPA ạ. Bên mình mục tiêu ¥18M, giới hạn rút lui ¥15M. Bên Hakuō ước trần ngân sách ¥17M, sàn về chất lượng là tương đương Phase 2 trở lên ạ.* |
| **フオン** | 「¥17M の<ruby>根拠<rt>こんきょ</rt></ruby>は？」 <br/>*Cơ sở của ¥17M là gì?* |
| **ズン** | 「Phase 2 が ¥14.5M でクローズ、白鷗 IT 部の<ruby>年度予算<rt>ねんどよさん</rt></ruby>は<ruby>前年比<rt>ぜんねんひ</rt></ruby> +15% と<ruby>田中<rt>たなか</rt></ruby>さんが Slack で<ruby>漏<rt>も</rt></ruby>らしていました【2】。14.5 × 1.15 ≒ ¥16.7M、<ruby>切<rt>き</rt></ruby>り<ruby>上<rt>あ</rt></ruby>げて ¥17M です。」 <br/>*Phase 2 chốt ¥14.5M, ngân sách năm phòng IT Hakuō tăng 15% — anh Tanaka có lộ trên Slack ạ. 14.5 × 1.15 ≒ ¥16.7M, làm tròn thành ¥17M ạ.* |
| **フオン** | 「ZOPA は ¥15M〜¥17M の<ruby>幅<rt>はば</rt></ruby> 2M ある。target ¥18M は ZOPA 上限を超えてるけど、anchor として出すには<ruby>適切<rt>てきせつ</rt></ruby>。**<ruby>着地点<rt>ちゃくちてん</rt></ruby>は ¥16.5M <ruby>前後<rt>ぜんご</rt></ruby>と<ruby>想定<rt>そうてい</rt></ruby>して、<ruby>譲歩計画<rt>じょうほけいかく</rt></ruby>(rule 09)に<ruby>反映<rt>はんえい</rt></ruby>**して。」 <br/>*ZOPA rộng ¥15M〜¥17M, biên độ 2M. Mục tiêu ¥18M vượt trần chút nhưng làm giá neo thì OK. Điểm chốt dự ¥16.5M, phản ánh vào kế hoạch nhượng bộ.* |

 **Ghi chú:**
- 【1】**ZOPA マッピング = 4 con số:** mình *mục tiêu* + *giới hạn rút lui*, khách *trần ngân sách* + *sàn ngân sách*. Vẽ trên 1 trục, kiểm tra có giao nhau không.
- 【2】**Thông tin nội bộ về khách phải có nguồn cụ thể** — ai nói, ở đâu (Slack/họp/website), khi nào. Tránh "tôi đoán" thuần.
- Giá neo có thể **vượt trần ZOPA một chút** (mục tiêu ¥18M > ¥17M) — đây là chủ ý để có dư địa nhượng bộ. Nhưng nếu vượt quá xa → khách cảm thấy bị xúc phạm, rút lui.

---

## Cụm từ mẫu
> **「<ruby>自社<rt>じしゃ</rt></ruby>2点+相手2点=ZOPA 4<ruby>数値<rt>すうち</rt></ruby>。ZOPAゼロなら今日は<ruby>交渉成立<rt>こうしょうせいりつ</rt></ruby>しない。」**
>
> *Mình 2 số + khách 2 số = ZOPA 4 con số. Nếu ZOPA = 0 thì hôm nay không có thương vụ.*

---

## Tránh
- Chỉ tính giá phía mình, bỏ qua ước lượng phía khách → vào phòng mù
- Ước lượng khách dựa trên "linh cảm" thay vì thông tin nội bộ cụ thể (Slack, Phase trước, báo cáo IR)
- Quên kiểm tra **mức sàn** của khách (chất lượng tối thiểu) — nhiều thương vụ vỡ vì phạm vi công việc chứ không phải giá
- Neo giá vượt trần ZOPA quá xa (>20%) → khách cảm thấy bị xúc phạm

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ZOPA | zopa | — | Vùng có thể thỏa thuận |
| 合意可能領域 | ごういかのうりょういき | HỢP Ý KHẢ NĂNG LĨNH VỰC | Vùng có thể thỏa thuận |
| 目標価格 | もくひょうかかく | MỤC TIÊU GIÁ CÁCH | Giá mục tiêu |
| 撤退価格 | てったいかかく | TRIỆT THOÁI GIÁ CÁCH | Giá giới hạn rút lui |
| 予算上限 | よさんじょうげん | DỰ TOÁN THƯỢNG HẠN | Trần ngân sách |
| 着地点 | ちゃくちてん | TRƯỚC ĐỊA ĐIỂM | Điểm chốt |
| アンカー | アンカー | — | Giá neo (giá mở) |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000003, 800000007, NULL, 'markdown_book', 'Rule 03 — Hiểu phong cách quyết định ringi (稟議) / 稟議の理解', '# Rule 03 — Hiểu phong cách quyết định ringi (稟議) / 稟議の理解
> **Luận điểm.** Khách Nhật KHÔNG quyết định trong 1 cuộc họp. Quy trình là: **nemawashi (根回し — đi gặp riêng từng người chủ chốt trước)** → **ringi (稟議書 — văn bản chuyền tay)** → **決裁 (kessai — sếp đóng dấu cuối)**. Ép khách "chốt ngay hôm nay" với khách Nhật = tự phá hỏng thương vụ của mình.
>
> 日本企業の意思決定は「根回し → 稟議 → 決裁」の3段階。会議当日に即決を求めるのは逆効果。BD は **稟議が回る期間 (通常 2-3 週間)** を見込んだ提案スケジュールを組む。
>
> **Liên quan:** rule 04 (thông tin nội bộ về khách), rule 13 (lắng nghe ràng buộc), rule 17 (giới hạn thời gian).

---

## Bối cảnh / 場面
Trong meeting nội bộ ティエンファット, Tuấn lo lắng vì sau pitch round 1 đã 10 ngày mà 大垣 chưa phản hồi. Tuấn muốn Dũng "push" ngay. Hương dạy lại quy trình ringi.

---

## Hội thoại XẤU — push 即決
*横から*

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「ズン、もう10日<ruby>経<rt>た</rt></ruby>ってる。今日<ruby>大垣<rt>おおがき</rt></ruby>さんに『今週中にイエスかノーか<ruby>決<rt>き</rt></ruby>めてください』ってメール<ruby>送<rt>おく</rt></ruby>ろうよ。」 <br/>*Dũng, 10 ngày rồi. Hôm nay gửi mail anh Ōgaki bảo ''tuần này quyết yes hay no'' đi.* |
| **ズン** | 「そうですね、待ってばかりだとうちが<ruby>弱<rt>よわ</rt></ruby>く見えるかも…」 <br/>*Vâng, cứ chờ thì bên em nhìn yếu thế anh nhỉ...* |
| **フオン** | 「**待って。それ送ったら deal 死ぬ**。10 日は<ruby>稟議<rt>りんぎ</rt></ruby>が<ruby>回<rt>まわ</rt></ruby>ってる normal な<ruby>期間<rt>きかん</rt></ruby>。『今週中に決めろ』は日本企業に対して **タブー**。逆に『稟議の<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか』なら OK。」 <br/>*Khoan. Mail đó gửi đi là thương vụ chết. 10 ngày là khoảng thời gian ringi bình thường. ''Tuần này quyết'' với doanh nghiệp Nhật là điều cấm. Ngược lại ''cho phép em hỏi thăm tiến độ ringi'' thì OK.* |
| **トゥアン** | 「えっ、待つしかないんですか？」 <br/>*Ơ, vậy chỉ chờ thôi sao chị?* |
| **フオン** | 「待つんじゃなくて、**進捗を聞く** + **<ruby>追加情報<rt>ついかじょうほう</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>して<ruby>稟議書<rt>りんぎしょ</rt></ruby>を強くする**<ruby>手伝<rt>てつだ</rt></ruby>いをする。決めるのは相手の<ruby>社内<rt>しゃない</rt></ruby>プロセス。」 <br/>*Không phải chờ — mà hỏi thăm tiến độ + đưa thêm thông tin để giúp ringi-sho mạnh lên. Người quyết là quy trình nội bộ phía họ.* |

**Vì sao xấu:** "今週中に決めて" = đặt hạn chót vào quy trình nội bộ của khách → bất lịch sự + tự nhận yếu thế ("đang vội"). 10 ngày chỉ là giữa chu kỳ ringi. Tuấn không hiểu cơ chế → suýt tự phá thương vụ.

---

## Hội thoại TỐT — hiểu chu kỳ ringi, hỗ trợ nemawashi
| Vai | Câu |
|---------|-----|
| **トゥアン** | 「ズン、10 日経つけど、もう少し待つ<ruby>感<rt>かん</rt></ruby>じ？」 <br/>*Dũng, 10 ngày rồi, mình chờ thêm chút nữa hả?* |
| **ズン** | 「はい、稟議は<ruby>通常<rt>つうじょう</rt></ruby> 2-3 週間【1】。先週<ruby>松本<rt>まつもと</rt></ruby> PM から『社内で<ruby>議論中<rt>ぎろんちゅう</rt></ruby>』とメッセージあったので、今は **<ruby>根回<rt>ねまわ</rt></ruby>しフェーズ**【2】と<ruby>推定<rt>すいてい</rt></ruby>します。」 <br/>*Vâng, ringi thường 2-3 tuần ạ. Tuần trước anh Matsumoto PM có nhắn ''đang thảo luận nội bộ'' nên hiện đoán là đang ở phase nemawashi ạ.* |
| **フオン** | 「いいね。今やるべきは『追加 ROI 資料』と『FAQ 集』を<ruby>作<rt>つく</rt></ruby>って松本さんに渡す。<ruby>彼<rt>かれ</rt></ruby>が稟議書に<ruby>添付<rt>てんぷ</rt></ruby>できる<ruby>材料<rt>ざいりょう</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やす【3】。」 <br/>*Tốt. Việc cần làm bây giờ là làm ''ROI bổ sung'' và ''FAQ tổng hợp'' đưa cho anh Matsumoto. Tăng material anh ấy có thể đính kèm ringi-sho.* |
| **ズン** | 「<ruby>了解<rt>りょうかい</rt></ruby>です。明日松本さんに『稟議のご<ruby>検討<rt>けんとう</rt></ruby>にあたり、何か追加情報<ruby>必要<rt>ひつよう</rt></ruby>でしたらお<ruby>声<rt>こえ</rt></ruby>がけください』とメールします。**催促ではなく support 姿勢**で。」 <br/>*Em rõ ạ. Mai em mail anh Matsumoto ''xin liên hệ nếu cần bổ sung thông tin cho việc thảo luận ringi''. Tư thế support, không hối thúc ạ.* |
| **フオン** | 「正解。決めるのは大垣さんでも松本さんでもなく、**社内<ruby>合意<rt>ごうい</rt></ruby>の<ruby>総和<rt>そうわ</rt></ruby>**。<ruby>我々<rt>われわれ</rt></ruby>はそれを<ruby>助<rt>たす</rt></ruby>ける。」 <br/>*Chuẩn. Người quyết không phải anh Ōgaki hay anh Matsumoto, mà là tổng đồng thuận nội bộ. Mình hỗ trợ chuyện đó.* |

 **Ghi chú:**
- 【1】**Chu kỳ ringi 2-3 tuần là bình thường** — hợp đồng càng lớn càng lâu (¥18M thì 3-4 tuần). Nếu trả lời trong 1 tuần thì ngược lại là dấu hiệu "không xét nghiêm túc".
- 【2】**根回し (nemawashi)** = đi gặp riêng từng người chủ chốt trước khi văn bản chính thức (ringi-sho) chuyền tay. Đây là không chính thức nhưng quyết định chính.
- 【3】**Hỗ trợ nemawashi** = đưa cho người liên hệ (Matsumoto) tài liệu/luận điểm để họ nói với các nhân vật then chốt khác. KHÔNG phải gọi điện hối thúc.

---

## Cụm từ mẫu
> **「<ruby>稟議<rt>りんぎ</rt></ruby>は2-3週、<ruby>催促<rt>さいそく</rt></ruby>ではなく<ruby>材料<rt>ざいりょう</rt></ruby>を渡して<ruby>支援<rt>しえん</rt></ruby>する。」**
>
> *Ringi 2-3 tuần, không hối thúc — đưa thêm tài liệu để hỗ trợ quy trình của khách.*

---

## Tránh
- "今週中に決めて" / "deadline 設定します" → tự phá thương vụ
- Gọi điện 連日 hỏi "どうですか？" → bị xem là 焦り (sốt ruột)
- Bỏ người liên hệ (Matsumoto) ra ngoài luồng, trực tiếp ping 大垣 → phá vỡ giao thức nội bộ khách
- Đoán bừa "chắc bị từ chối rồi" sau 10 ngày → sai 90% trường hợp

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 稟議 | りんぎ | BẨM NGHỊ | Ringi (văn bản chuyền tay xin duyệt) |
| 稟議書 | りんぎしょ | BẨM NGHỊ THƯ | Tài liệu ringi |
| 根回し | ねまわし | CĂN HỒI | Nemawashi (vận động ngầm trước họp) |
| 決裁 | けっさい | QUYẾT TÀI | Sếp ký duyệt cuối |
| 即決 | そっけつ | TỨC QUYẾT | Quyết định ngay |
| 催促 | さいそく | THÔI XÚC | Hối thúc, đòi |
| 進捗 | しんちょく | TIẾN TIỆP | Tiến độ |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000004, 800000007, NULL, 'markdown_book', 'Rule 04 — Thu thập thông tin khách / 顧客リサーチ', '# Rule 04 — Thu thập thông tin khách / 顧客リサーチ
> **Luận điểm.** Trước đàm phán phải biết: **(1) Người quyết định** (決裁ライン), **(2) Chu kỳ ngân sách** (年度予算 4-3月), **(3) Đối thủ** (đối thủ nào cũng đang chào hàng), **(4) Tin tức kinh doanh gần đây** (IR, M&A, sa thải). Thiếu 1 trong 4 = bước vào phòng mù 25%.
>
> 交渉前に4軸 (決裁者・予算サイクル・競合・直近業績) を必ず調査する。一つでも欠けると譲歩判断を誤る。
>
> **Liên quan:** rule 02 (ZOPA), rule 16 (確認決裁者), rule 13 (ràng buộc ẩn).

---

## Bối cảnh / 場面
3 ngày trước đàm phán Phase 3. Hương kiểm tra Dũng đã chuẩn bị thông tin nền chưa. Dũng tự tin "đã biết khách 2 năm rồi", nhưng Hương đẩy thêm 4 câu hỏi.

---

## Hội thoại XẤU — "đã biết khách rồi"
| Vai | Câu |
|---------|-----|
| **フオン** | 「<ruby>白鷗<rt>はくおう</rt></ruby>の<ruby>今期<rt>こんき</rt></ruby> IR、見た？」 <br/>*IR kỳ này của Hakuō em đã xem chưa?* |
| **ズン** | 「IR…まだです。Phase 2 は私が<ruby>担当<rt>たんとう</rt></ruby>だったので白鷗のことは知ってます。」 <br/>*IR... em chưa ạ. Phase 2 em phụ trách rồi nên biết Hakuō ạ.* |
| **フオン** | 「Phase 2 担当 ≠ 今の白鷗を知ってる、じゃない。**先月 IR で<ruby>営業利益<rt>えいぎょうりえき</rt></ruby> -12%、<ruby>圧縮<rt>あっしゅく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>**って<ruby>公表<rt>こうひょう</rt></ruby>されてる。これ知らずに ¥18M 出すと『高い』って言われる<ruby>準備<rt>じゅんび</rt></ruby><ruby>不足<rt>ぶそく</rt></ruby>。」 <br/>*Phụ trách Phase 2 ≠ biết Hakuō hiện tại. Tháng trước IR công bố lợi nhuận hoạt động -12%, đang nén chi phí. Không biết điều này mà ra ¥18M là sẽ bị ''đắt'' — chuẩn bị thiếu.* |
| **ズン** | 「あ、すみません…」 <br/>*À, em xin lỗi ạ...* |

**Vì sao xấu:** "Đã biết khách 2 năm" = quá khứ. Khách là tổ chức sống, IR/M&A/sa thải thay đổi bối cảnh mỗi quý. Dũng không cập nhật → vào phòng với hình dung lệch 6 tháng.

---

## Hội thoại TỐT — phiếu thông tin 4 trục
| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、白鷗の **4<ruby>軸<rt>じく</rt></ruby>インテルシート**【1】を<ruby>更新<rt>こうしん</rt></ruby>しました。」 <br/>*Chị Hương, em đã cập nhật phiếu thông tin 4 trục của Hakuō ạ.* |
| **フオン** | 「<ruby>読<rt>よ</rt></ruby>み上げて。」 <br/>*Em đọc lên đi.* |
| **ズン** | 「(1) <ruby>決裁<rt>けっさい</rt></ruby>ライン: ¥10M <ruby>超<rt>ちょう</rt></ruby>は中村 CFO 決裁、それ以下は<ruby>大垣<rt>おおがき</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby><ruby>権限<rt>けんげん</rt></ruby>【2】。今回 ¥18M なので CFO 通る。(2) <ruby>予算<rt>よさん</rt></ruby>サイクル: 白鷗は 4月-3月、<ruby>現在<rt>げんざい</rt></ruby> 4 月<ruby>初旬<rt>しょじゅん</rt></ruby>で **<ruby>新年度<rt>しんねんど</rt></ruby> IT 予算は通ったばかり**【3】、<ruby>追加<rt>ついか</rt></ruby><ruby>要求<rt>ようきゅう</rt></ruby>しやすい<ruby>時期<rt>じき</rt></ruby>。(3) <ruby>競合<rt>きょうごう</rt></ruby>: <ruby>大手<rt>おおて</rt></ruby> SIer Y 社がパラレルに pitch 中、<ruby>見積<rt>みつもり</rt></ruby> ¥22M との<ruby>噂<rt>うわさ</rt></ruby>【4】。(4) <ruby>直近業績<rt>ちょっきんぎょうせき</rt></ruby>: 先月 IR で営業利益 -12%、コスト圧縮トーンが強いです。」 <br/>*(1) Người quyết định: trên ¥10M là CFO Nakamura duyệt, dưới là quyền GĐKD Ōgaki. Lần này ¥18M nên qua CFO. (2) Chu kỳ ngân sách: Hakuō 4-3, hiện đầu tháng 4 — ngân sách IT năm mới vừa thông, dễ đề xuất. (3) Đối thủ: Y社 SIer lớn đang chào hàng song song, có tin đồn báo giá ¥22M. (4) Kết quả gần: IR tháng trước lợi nhuận hoạt động -12%, xu hướng nén chi phí mạnh ạ.* |
| **フオン** | 「いいね。これで<ruby>戦略<rt>せんりゃく</rt></ruby>決まる。**Y 社 ¥22M との<ruby>対比<rt>たいひ</rt></ruby>で『品質<ruby>同等<rt>どうとう</rt></ruby>で安い』を<ruby>強調<rt>きょうちょう</rt></ruby>**、CFO に<ruby>響<rt>ひび</rt></ruby>く ROI <ruby>数値<rt>すうち</rt></ruby>を<ruby>全面<rt>ぜんめん</rt></ruby>に。利益 -12% への<ruby>配慮<rt>はいりょ</rt></ruby>として『<ruby>段階導入<rt>だんかいどうにゅう</rt></ruby>で<ruby>初期投資<rt>しょきとうし</rt></ruby><ruby>抑制<rt>よくせい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>』も<ruby>用意<rt>ようい</rt></ruby>して。」 <br/>*Tốt. Vậy là chiến lược chốt. Đối chiếu Y社 ¥22M để nhấn ''chất lượng ngang, rẻ hơn'', số liệu ROI nhắm trúng CFO lên đầu. Cân nhắc lợi nhuận -12%, chuẩn bị thêm ''triển khai theo giai đoạn để giảm vốn đầu tư ban đầu''.* |

 **Ghi chú:**
- 【1】**4 軸インテルシート** = (1) 決裁ライン、(2) 予算サイクル、(3) 競合、(4) 直近業績。各軸ソース付きで管理.
- 【2】**決裁権限の閾値** — biết được giúp đoán kịch bản phê duyệt. ¥10M là ngưỡng thường gặp ở doanh nghiệp tầm trung JP.
- 【3】**Chu kỳ ngân sách JP**: thường 4月-3月. Q1 (4-6月) = ngân sách mới, dễ đề xuất; Q4 (1-3月) = chốt sổ cuối năm, hạn chế.
- 【4】**Thông tin đối thủ cần nguồn** — "tin đồn" cũng được nhưng phải ghi rõ là tin đồn + ai nói.

---

## Cụm từ mẫu
> **「決裁・予算・競合・業績の4軸を全てupdate。「過去に知っていた」は無効。」**
>
> *4 trục: người duyệt / chu kỳ ngân sách / đối thủ / kết quả gần đây — đều phải cập nhật. "Biết hồi xưa" không tính.*

---

## Tránh
- "Tôi đã làm với khách 2 năm rồi nên biết" → quá khứ ≠ hiện tại
- Bỏ qua IR công khai (có thể tra cứu tự do) — đây là thông tin miễn phí
- Không xác định ngưỡng phê duyệt của người quyết (¥X trở lên thì ai duyệt)
- Coi thông tin đối thủ là "có thì tốt, không có cũng được" — thực ra là cốt lõi của việc định giá

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 決裁ライン | けっさいライン | QUYẾT TÀI — | Đường duyệt (tuyến người quyết định) |
| 予算サイクル | よさんサイクル | DỰ TOÁN — | Chu kỳ ngân sách |
| 直近業績 | ちょっきんぎょうせき | TRỰC CẬN NGHIỆP TÍCH | Kết quả kinh doanh gần đây |
| 営業利益 | えいぎょうりえき | DOANH NGHIỆP LỢI ÍCH | Lợi nhuận hoạt động |
| コスト圧縮 | コストあっしゅく | — ÁP SÚC | Cắt giảm chi phí |
| 段階導入 | だんかいどうにゅう | ĐOẠN GIAI ĐẠO NHẬP | Triển khai theo giai đoạn |
| インテルシート | インテルシート | — | Phiếu thông tin tình báo thương mại |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000005, 800000007, NULL, 'markdown_book', 'Rule 05 — Chiến lược định giá / 価格戦略', '# Rule 05 — Chiến lược định giá / 価格戦略
> **Luận điểm.** Có 3 cách đặt giá: **(1) Cộng chi phí** (原価+利益率) — an toàn nhưng tự định giá thấp, **(2) Theo giá trị** (giá trị khách nhận về) — cao nhất nhưng cần chứng minh ROI, **(3) Neo giá** (đặt cao trước, để khách kéo xuống). Chọn sai mô hình → hoặc bỏ tiền trên bàn, hoặc bị khách rút lui.
>
> 価格戦略は3種から選ぶ: cost-plus / value-based / anchoring。商談相手と案件性質に合わせて使い分ける。Phase 3 のような戦略案件は **value-based + anchoring** が標準。
>
> **Liên quan:** rule 02 (ZOPA), rule 06 (3 bậc), rule 18 (neo giá), rule 23 (ROI).

---

## Bối cảnh / 場面
Hà CTO + Hương + Dũng họp 30 phút quyết mô hình giá Phase 3. Tuấn cũng tham gia để xác nhận chi phí. Dũng đề xuất phương pháp cộng chi phí đơn thuần.

---

## Hội thoại XẤU — chọn phương pháp cộng chi phí thuần cho thương vụ chiến lược
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>原価<rt>げんか</rt></ruby> ¥13M、<ruby>利益率<rt>りえきりつ</rt></ruby> 25% <ruby>上乗<rt>うわの</rt></ruby>せで ¥16.25M、<ruby>切<rt>き</rt></ruby>り<ruby>上<rt>あ</rt></ruby>げ ¥16.5M で<ruby>出<rt>だ</rt></ruby>します。」 <br/>*Giá vốn ¥13M, cộng biên lợi nhuận 25% thành ¥16.25M, làm tròn ¥16.5M ạ.* |
| **ハー CTO** | 「Phase 3 は<ruby>新機能<rt>しんきのう</rt></ruby> AI レコメンドエンジン<ruby>込<rt>こ</rt></ruby>み、<ruby>白鷗<rt>はくおう</rt></ruby>の<ruby>売上<rt>うりあげ</rt></ruby> +¥80M/<ruby>年<rt>ねん</rt></ruby><ruby>見込<rt>みこ</rt></ruby>めるんでしょ？それを ¥16.5M で<ruby>売<rt>う</rt></ruby>る？」 <br/>*Phase 3 có cả AI recommend engine, ước doanh thu Hakuō +¥80M/năm đúng không? Mà bán ¥16.5M?* |
| **ズン** | 「えっと、<ruby>原価<rt>げんか</rt></ruby>ベースだとそれが<ruby>妥当<rt>だとう</rt></ruby>かと…」 <br/>*Dạ ờ, theo cách tính cộng chi phí thì em thấy hợp lý ạ...* |
| **ハー CTO** | 「**Value-based で<ruby>考<rt>かんが</rt></ruby>えて**。¥80M インパクトの 20% = ¥16M <ruby>程度<rt>ていど</rt></ruby>なら value <ruby>的<rt>てき</rt></ruby>にお<ruby>買<rt>か</rt></ruby>い<ruby>得<rt>どく</rt></ruby><ruby>感<rt>かん</rt></ruby>もあるけど、¥18-22M でも<ruby>妥当<rt>だとう</rt></ruby>。cost-plus は<ruby>商品案件<rt>しょうひんあんけん</rt></ruby><ruby>用<rt>よう</rt></ruby>、<ruby>戦略案件<rt>せんりゃくあんけん</rt></ruby>には<ruby>適<rt>てき</rt></ruby>さない。」 <br/>*Nghĩ theo định giá theo giá trị đi. Tác động ¥80M × 20% ≒ ¥16M là khách thấy hời, nhưng ¥18-22M cũng vẫn hợp lý. Cộng chi phí dùng cho hàng phổ thông, không hợp thương vụ chiến lược.* |

**Vì sao xấu:** Định giá theo chi phí chỉ phản ánh chi phí mình, KHÔNG phản ánh giá trị khách nhận. Phase 3 có AI engine = mang tính chiến lược, giá trị cao → đáng giá ¥18-22M chứ không phải ¥16.5M. Bỏ ¥2-5M tiền trên bàn.

---

## Hội thoại TỐT — định giá theo giá trị + neo giá kết hợp
| Vai | Câu |
|---------|-----|
| **ズン** | 「Phase 3 <ruby>価格戦略案<rt>かかくせんりゃくあん</rt></ruby>、3 つ<ruby>比較<rt>ひかく</rt></ruby>しました【1】。」 <br/>*Em đã so sánh 3 phương án giá Phase 3 ạ.* |
| **ズン** | 「Cost-plus: ¥16.5M。Value-based: <ruby>白鷗<rt>はくおう</rt></ruby><ruby>売上<rt>うりあげ</rt></ruby> +¥80M インパクト × 20% = ¥16M、+リスクシェア<ruby>込<rt>こ</rt></ruby>みで ¥19M。Anchoring <ruby>起点<rt>きてん</rt></ruby> ¥22M (Y <ruby>社水準<rt>しゃすいじゅん</rt></ruby>)、<ruby>譲歩<rt>じょうほ</rt></ruby>で ¥18M <ruby>着地想定<rt>ちゃくちそうてい</rt></ruby>。**<ruby>推奨<rt>すいしょう</rt></ruby>は value-based ¥19M を anchor、target ¥18M、reservation ¥15M**【2】。」 <br/>*Cộng chi phí: ¥16.5M. Định giá theo giá trị: tác động +¥80M × 20% = ¥16M, cộng chia sẻ rủi ro thành ¥19M. Neo giá khởi điểm ¥22M (mức Y社), nhượng bộ về ¥18M. Đề xuất: neo giá ¥19M theo giá trị, mục tiêu ¥18M, giới hạn rút lui ¥15M ạ.* |
| **ハー CTO** | 「ROI <ruby>説明<rt>せつめい</rt></ruby>はできる？」 <br/>*Em giải thích được ROI không?* |
| **ズン** | 「はい。AI レコメンド<ruby>導入<rt>どうにゅう</rt></ruby>で transaction <ruby>単価<rt>たんか</rt></ruby> +12%、white paper でモデルケース 3 <ruby>社<rt>しゃ</rt></ruby>あります。CFO <ruby>中村<rt>なかむら</rt></ruby>さんへの ROI シート【3】も<ruby>作成済<rt>さくせいず</rt></ruby>みです。」 <br/>*Vâng ạ. Triển khai AI recommend giúp transaction unit price +12%, có 3 model case trong white paper. ROI sheet cho CFO Nakamura em cũng đã làm xong ạ.* |
| **フオン** | 「いいね。¥19M を<ruby>堂々<rt>どうどう</rt></ruby>と<ruby>出<rt>だ</rt></ruby>して、value で<ruby>押<rt>お</rt></ruby>す。¥18M に<ruby>着地<rt>ちゃくち</rt></ruby>しても<ruby>粗利率<rt>あらりりつ</rt></ruby> 26%、<ruby>許容範囲<rt>きょようはんい</rt></ruby>。」 <br/>*Tốt. Em ra ¥19M một cách thẳng thắn, đẩy bằng giá trị. Có chốt ¥18M thì lợi nhuận gộp 26%, vẫn nằm trong khoảng chấp nhận.* |

 **Ghi chú:**
- 【1】**3 mô hình so sánh**: bắt buộc đối chiếu cả 3, không nhảy thẳng vào 1 cái.
- 【2】**Giá neo > Mục tiêu > Giới hạn rút lui** = 3 con số riêng biệt. Giá neo = số mở miệng (cao), Mục tiêu = số mong đạt, Giới hạn rút lui = mức thấp nhất chấp nhận.
- 【3】**ROI シート** cho CFO = công cụ then chốt để chốt khi dùng định giá theo giá trị. Không có ROI → định giá theo giá trị về bản chất là "anh tin tôi đi" → khó được duyệt.

---

## Cụm từ mẫu
> **「Cost-plusは<ruby>商品向<rt>しょうひんむ</rt></ruby>け、<ruby>戦略案件<rt>せんりゃくあんけん</rt></ruby>はvalue-based+anchoring。3モデル<ruby>比較<rt>ひかく</rt></ruby>してから<ruby>選<rt>えら</rt></ruby>ぶ。」**
>
> *Cộng chi phí cho hàng phổ thông, thương vụ chiến lược dùng định giá theo giá trị + neo giá. So 3 mô hình rồi chọn.*

---

## Tránh
- Mặc định cộng chi phí cho mọi thương vụ → bỏ tiền trên bàn ở thương vụ chiến lược
- Neo giá trên trời mà không có dữ liệu ROI dự phòng → khách rút lui
- Quên kiểm tra 粗利率 (lợi nhuận gộp) sàn (vd: 20%) khi tính giới hạn rút lui
- Không có tài liệu kỹ thuật / tình huống thực tế → định giá theo giá trị khó thuyết phục CFO Nhật

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 原価 | げんか | NGUYÊN GIÁ | Giá vốn |
| 利益率 | りえきりつ | LỢI ÍCH SUẤT | Tỷ suất lợi nhuận |
| 粗利率 | あらりりつ | THÔ LỢI SUẤT | Lợi nhuận gộp |
| 価値ベース | かちベース | GIÁ TRỊ — | Định giá theo giá trị |
| 戦略案件 | せんりゃくあんけん | CHIẾN LƯỢC ÁN KIỆN | Thương vụ chiến lược |
| 商品案件 | しょうひんあんけん | THƯƠNG PHẨM ÁN KIỆN | Thương vụ hàng hóa phổ thông |
| アンカー | アンカー | — | Giá neo (giá mở) |
| インパクト | インパクト | — | Tác động |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000006, 800000007, NULL, 'markdown_book', 'Rule 06 — Đề xuất 3 bậc: Good / Better / Best / 3段階提案', '# Rule 06 — Đề xuất 3 bậc: Good / Better / Best / 3段階提案
> **Luận điểm.** Đưa **1 giá duy nhất** = khách bị bắt có/không. Đưa **3 bậc (Cơ bản / Tiêu chuẩn / Cao cấp)** = khách so sánh nội bộ → kiến trúc lựa chọn nghiêng về bậc giữa (hiệu ứng mồi nhử). 95% khách Nhật sẽ chọn bậc giữa nếu cấu trúc đúng.
>
> 1価格提示は yes/no を迫る。3段階提案 (Good/Better/Best) は社内比較を促し、**中間案 (Better) が選ばれる確率を高める**。Phase 3 のような戦略案件は必ず 3 段階で出す。
>
> **Liên quan:** rule 05 (chiến lược giá), rule 19 (cách trình bày giá), rule 21 (cắt giảm phạm vi).

---

## Bối cảnh / 場面
Họp với Hà CTO + Hương + Tuấn xong, Dũng cần soạn bản đề xuất. Hương yêu cầu bắt buộc 3 bậc. Dũng làm phác thảo đầu, gửi xem lại.

---

## Hội thoại XẤU — 1 bậc duy nhất
| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、提案 deck draft、<ruby>価格<rt>かかく</rt></ruby> ¥18M で1 案にまとめました。」 <br/>*Chị Hương, bản phác thảo đề xuất em làm 1 phương án ¥18M ạ.* |
| **フオン** | 「1 案だけ？<ruby>大垣<rt>おおがき</rt></ruby>さんは<ruby>社内<rt>しゃない</rt></ruby>で<ruby>比較<rt>ひかく</rt></ruby>できないし、yes か no しかなくなる。**no が出たら戻れない**。3 <ruby>段階<rt>だんかい</rt></ruby>で作り直して。」 <br/>*Chỉ 1 phương án? Anh Ōgaki không có gì so nội bộ, chỉ còn có/không. Không là không quay lại được. Làm lại 3 bậc đi.* |
| **ズン** | 「3 段階だと安い方を選ばれませんか？」 <br/>*3 bậc thì khách chọn cái rẻ thì sao chị?* |
| **フオン** | 「**逆。<ruby>中間案<rt>ちゅうかんあん</rt></ruby>を一番<ruby>魅力的<rt>みりょくてき</rt></ruby>に設計**すれば、Better が選ばれる。Good は<ruby>機能削減<rt>きのうさくげん</rt></ruby>で『これじゃ意味ない』感、Best は scope <ruby>拡張<rt>かくちょう</rt></ruby>で『高すぎる』感を出す。これ choice architecture。」 <br/>*Ngược lại. Thiết kế bậc giữa hấp dẫn nhất là khách chọn bậc đó. Bậc cơ bản cắt tính năng kiểu ''cái này không đáng'', bậc cao cấp mở rộng phạm vi kiểu ''đắt quá''. Đó là kiến trúc lựa chọn.* |

**Vì sao xấu:** 1 bậc = ép chọn có/không. Khách không có chỗ "thoả hiệp lịch sự" trong nội bộ ringi → xác suất bị từ chối tăng. Mất cơ hội định hình bậc giữa thành "phương án giá trị tốt nhất trong mắt khách".

---

## Hội thoại TỐT — bộ slide 3 bậc với Better làm trung tâm
| Vai | Câu |
|---------|-----|
| **ズン** | 「3 <ruby>段階提案<rt>だんかいていあん</rt></ruby>を作成しました。Good ¥14M / Better ¥18M / Best ¥24M。**Better を recommended 表示**【1】、Good は AI engine なし basic 版、Best は<ruby>専任<rt>せんにん</rt></ruby> SRE 含む full 版です。」 <br/>*Em đã tạo đề xuất 3 bậc ạ. Cơ bản ¥14M / Tiêu chuẩn ¥18M / Cao cấp ¥24M. Tiêu chuẩn đánh dấu ''Khuyến nghị'', Cơ bản là bản không AI engine, Cao cấp là bản đầy đủ kèm SRE chuyên trách ạ.* |
| **フオン** | 「Good の<ruby>機能削減<rt>きのうさくげん</rt></ruby>は？」 <br/>*Phần cắt chức năng của Good là gì?* |
| **ズン** | 「Good は AI レコメンドなし、SLA 99.5% (Better は 99.9%)、サポート<ruby>営業時間<rt>えいぎょうじかん</rt></ruby>のみ【2】。<ruby>白鷗<rt>はくおう</rt></ruby>の Phase 3 目的『<ruby>売上<rt>うりあげ</rt></ruby> +¥80M』には<ruby>実質<rt>じっしつ</rt></ruby>届かない設計。」 <br/>*Bậc cơ bản không có AI recommend, SLA 99.5% (Tiêu chuẩn 99.9%), hỗ trợ chỉ trong giờ hành chính. Thiết kế thực chất không đạt mục tiêu Phase 3 ''doanh thu +¥80M'' của Hakuō ạ.* |
| **フオン** | 「Best は？」 <br/>*Còn Best?* |
| **ズン** | 「Best は<ruby>専任<rt>せんにん</rt></ruby> SRE 1 名<ruby>常駐<rt>じょうちゅう</rt></ruby>、SLA 99.99%、24/7 サポート、<ruby>優先機能開発<rt>ゆうせんきのうかいはつ</rt></ruby>【3】。CFO <ruby>中村<rt>なかむら</rt></ruby>さんの『コスト<ruby>圧縮<rt>あっしゅく</rt></ruby>』トーンに照らすと『出しすぎ』感を出す設計です。」 <br/>*Bậc cao cấp có 1 SRE chuyên trách túc trực, SLA 99.99%, hỗ trợ 24/7, ưu tiên phát triển tính năng. Đối chiếu xu hướng ''nén chi phí'' của CFO Nakamura, thiết kế để tạo cảm giác ''chi quá tay'' ạ.* |
| **フオン** | 「<ruby>完璧<rt>かんぺき</rt></ruby>。**Better が『<ruby>現実解<rt>げんじつかい</rt></ruby>』に見える<ruby>構造<rt>こうぞう</rt></ruby>**。明日のキックオフで使おう。」 <br/>*Hoàn hảo. Cấu trúc khiến bậc tiêu chuẩn hiện ra như ''phương án thực tế''. Mai mở đàm phán dùng cái này.* |

 **Ghi chú:**
- 【1】**Nhãn "Khuyến nghị"** — chữ "おすすめ"/"推奨" trên ô bậc tiêu chuẩn, nghiên cứu trải nghiệm người dùng cho thấy tỷ lệ chốt tăng +35%.
- 【2】**Bậc cơ bản cố ý làm yếu** — KHÔNG phải "rẻ và ổn", phải là "rẻ nhưng thiếu cái khách cần" → khách tự loại.
- 【3】**Bậc cao cấp cố ý làm dư** — vượt mức cần thiết để bậc tiêu chuẩn thành "vừa phải". Bậc cao cấp vẫn phải là thương vụ thật nếu khách chọn (không phải lựa chọn giả / phương án bẫy).

---

## Cụm từ mẫu
> **「Good/Better/Best の3<ruby>段階<rt>だんかい</rt></ruby>で、<ruby>中間案<rt>ちゅうかんあん</rt></ruby>を最も<ruby>魅力的<rt>みりょくてき</rt></ruby>に<ruby>設計<rt>せっけい</rt></ruby>する。」**
>
> *3 bậc Cơ bản/Tiêu chuẩn/Cao cấp, thiết kế bậc giữa hấp dẫn nhất.*

---

## Tránh
- 3 bậc mà bậc giữa không hấp dẫn → khách chọn Cơ bản (giá thấp, lỗ vốn)
- Bậc Cao cấp phi thực tế đến mức khách cười → mất uy tín
- Quên đánh dấu "Khuyến nghị" / "おすすめ" trên bậc giữa → mất hơn 30% hiệu quả
- Đặt khoảng cách giá đều (vd: ¥14M / ¥18M / ¥22M cách đều ¥4M) → không tận dụng được hiệu ứng mồi. Khoảng cách không đều giúp bậc tiêu chuẩn nổi bật hơn.

---

## Khung mẫu — Phiếu đề xuất 3 bậc
(Xem mẫu file riêng kèm theo)

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 3段階提案 | さんだんかいていあん | ĐOẠN GIAI ĐỀ ÁN | Đề xuất 3 bậc |
| 推奨 / おすすめ | すいしょう | SUY TƯỞNG | Khuyến nghị |
| 中間案 | ちゅうかんあん | TRUNG GIAN ÁN | Phương án giữa |
| 専任 | せんにん | CHUYÊN NHẬM | Chuyên trách |
| 常駐 | じょうちゅう | THƯỜNG TRÚ | Túc trực |
| 機能削減 | きのうさくげん | CƠ NĂNG TƯỚC GIẢM | Cắt giảm chức năng |
| 比較表 | ひかくひょう | TỈ GIẢO BIỂU | Bảng so sánh |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000007, 800000007, NULL, 'markdown_book', 'Rule 07 — Thống nhất nội bộ trước đàm phán / 事前社内すり合わせ', '# Rule 07 — Thống nhất nội bộ trước đàm phán / 事前社内すり合わせ
> **Luận điểm.** Trước khi đối diện khách, **đội nội bộ phải thống nhất 100%**: ai nói gì, ai im khi nào, điểm rút lui được duyệt, chuỗi bậc nhượng bộ thống nhất. Khách Nhật phát hiện mâu thuẫn nội bộ trong 5 phút → lợi thế để chia rẽ.
>
> 商談前の社内すり合わせは『誰が何を言う・誰がいつ黙る・撤退ライン承認・譲歩順序』を全員一致させる作業。社内の不一致を相手に見られたら相手に利用される。
>
> **Liên quan:** sách 04 全般, rule 01 (BATNA), rule 09 (kế hoạch nhượng bộ).

---

## Bối cảnh / 場面
Sáng đàm phán Phase 3 lúc 9:00, đàm phán 14:00 với 大垣 + 中村 CFO. Hà CTO + Hương + Tuấn + Dũng họp 60 phút align cuối.

---

## Hội thoại XẤU — không thống nhất trước, mâu thuẫn trong phòng
| Vai | Câu (đàm phán cùng khách) |
|---------|-----|
| **大垣** | 「¥18M は<ruby>高<rt>たか</rt></ruby>いですね。¥15M でいかがでしょう？」 |
|  | *¥18M cao quá. ¥15M thì sao nhỉ?* |
| **ズン** | 「¥15M ですか…ちょっと<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り…」 |
|  | *¥15M ạ... em xin phép mang về xem xét...* |
| **トゥアン** *(口を挟む)* | 「¥16M なら<ruby>出<rt>だ</rt></ruby>せますよ、scope <ruby>削<rt>けず</rt></ruby>れば。」 |
|  | *¥16M là được đó, cắt bớt phạm vi đi.* |
| **大垣** *(微笑)* | 「あ、トゥアンさんは ¥16M でいけるんですね。じゃあそれでお<ruby>願<rt>ねが</rt></ruby>いします。」 |
|  | *À, anh Tuấn nói ¥16M được. Vậy chốt như vậy nhé.* |
| **ズン** *(顔色変)* | 「いえ、ちょっと…<ruby>社内<rt>しゃない</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を…」 |
|  | *Dạ không, em xin phép... xác nhận nội bộ...* |

**Vì sao xấu:** Tuấn không biết điểm rút lui ¥15M, không biết chuỗi bậc nhượng bộ. Tự ý báo giá ¥16M trong phòng → 大垣 chốt ngay. Dũng mất kiểm soát. Phải thống nhất trước: **Tuấn KHÔNG được báo giá**, chỉ Dũng báo giá, Tuấn trả lời phần kỹ thuật.

---

## Hội thoại TỐT — họp thống nhất nội bộ 60 phút
| Vai | Câu (họp nội bộ 9:00) |
|---------|-----|
| **フオン** | 「14:00 <ruby>商談<rt>しょうだん</rt></ruby>、<ruby>最終<rt>さいしゅう</rt></ruby>すり<ruby>合<rt>あ</rt></ruby>わせ。**<ruby>役割確認<rt>やくわりかくにん</rt></ruby>**【1】: ズン<ruby>主導<rt>しゅどう</rt></ruby> + <ruby>価格発言担当<rt>かかくはつげんたんとう</rt></ruby>、トゥアンさん<ruby>技術質問<rt>ぎじゅつしつもん</rt></ruby>のみ、ハー CTO は escalation <ruby>必要時<rt>ひつようじ</rt></ruby>のみ<ruby>発言<rt>はつげん</rt></ruby>。」 |
|  | *Đàm phán 14:00, thống nhất cuối. Vai trò: Dũng dẫn + phụ trách phát ngôn về giá, anh Tuấn chỉ trả lời phần kỹ thuật, anh Hà CTO chỉ phát biểu khi cần báo cấp trên.* |
| **ハー CTO** | 「<ruby>価格発言<rt>かかくはつげん</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>がしてもいけない。ズン<ruby>以外<rt>いがい</rt></ruby>は『<ruby>社内確認<rt>しゃないかくにん</rt></ruby>させてください』で<ruby>受<rt>う</rt></ruby>ける。」 |
|  | *Trừ Dũng, không ai được phát ngôn về giá. Mọi người khác chỉ nói ''cho phép em xác nhận nội bộ''.* |
| **ズン** | 「<ruby>了解<rt>りょうかい</rt></ruby>です。**<ruby>譲歩順序<rt>じょうほじゅんじょ</rt></ruby>**【2】も<ruby>再確認<rt>さいかくにん</rt></ruby>:【ステップ1】¥19M anchor → <ruby>反応見<rt>はんのうみ</rt></ruby>る、【ステップ2】¥18M target、【ステップ3】¥17M with scope -10%、【ステップ4】¥16M with scope -20% + extra trade、**¥15M <ruby>以下<rt>いか</rt></ruby>は<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り、その<ruby>場<rt>ば</rt></ruby>で yes <ruby>言<rt>い</rt></ruby>わない**。」 |
|  | *Em rõ. Em xác nhận lại thứ tự nhượng bộ: Bước 1 neo giá ¥19M, Bước 2 mục tiêu ¥18M, Bước 3 ¥17M kèm phạm vi -10%, Bước 4 ¥16M kèm phạm vi -20% + trao đổi thêm, dưới ¥15M là mang về xem xét, không nói có tại chỗ.* |
| **フオン** | 「¥15M <ruby>以下出<rt>いかで</rt></ruby>てきたら、ハー CTO に<ruby>振<rt>ふ</rt></ruby>る。『<ruby>弊社<rt>へいしゃ</rt></ruby> CTO に<ruby>確認<rt>かくにん</rt></ruby>させてください』で<ruby>時間取<rt>じかんと</rt></ruby>る【3】。」 |
|  | *Nếu khách đẩy dưới ¥15M, đẩy sang anh Hà CTO. Dùng câu ''cho phép em xác nhận với CTO bên em'' để mua thời gian.* |
| **トゥアン** | 「<ruby>私<rt>わたし</rt></ruby>は<ruby>技術以外<rt>ぎじゅついがい</rt></ruby>、<ruby>絶対黙<rt>ぜったいだま</rt></ruby>ります。」 |
|  | *Ngoài phần kỹ thuật, em im hoàn toàn.* |
| **ズン** | 「<ruby>最後<rt>さいご</rt></ruby>、**<ruby>沈黙<rt>ちんもく</rt></ruby>の<ruby>合図<rt>あいず</rt></ruby>**【4】: <ruby>私<rt>わたし</rt></ruby>が<ruby>右手<rt>みぎて</rt></ruby>を<ruby>膝<rt>ひざ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いたら<ruby>全員黙<rt>ぜんいんだま</rt></ruby>って 7 <ruby>秒待<rt>びょうま</rt></ruby>つ。OK?」 |
|  | *Cuối cùng, tín hiệu im lặng: em đặt tay phải lên đùi là mọi người im 7 giây. OK?* |
| **全員** | 「OK。」 |
|  | *OK.* |

 **Ghi chú:**
- 【1】**役割確認** = ai nói gì + ai im khi nào. Tránh kiểu "ai cũng được nói" — đó là thảm họa.
- 【2】**譲歩順序** = chuỗi bậc cụ thể, mỗi nấc có điều kiện + trao đổi. KHÔNG phải "giảm dần".
- 【3】**Câu leo thang** "弊社 CTO に確認させてください" — câu đệm dùng để mua thời gian, đã thống nhất trước.
- 【4】**Tín hiệu im lặng** = tín hiệu vật lý (tay/bút) để cả đội biết "lúc này im, đừng cứu vớt". Cực quan trọng.

---

## Cụm từ mẫu
> **「<ruby>役割<rt>やくわり</rt></ruby>・<ruby>譲歩順<rt>じょうほじゅん</rt></ruby>・<ruby>撤退<rt>てったい</rt></ruby>ライン・<ruby>沈黙合図<rt>ちんもくあいず</rt></ruby>、4<ruby>点<rt>てん</rt></ruby>を<ruby>社内<rt>しゃない</rt></ruby>で100%<ruby>一致<rt>いっち</rt></ruby>させてから<ruby>入室<rt>にゅうしつ</rt></ruby>。」**
>
> *Vai trò / thứ tự nhượng bộ / điểm rút lui / tín hiệu im lặng — 4 điểm thống nhất 100% trước khi vào phòng.*

---

## Tránh
- "Ứng biến trong phòng cũng được" → 大垣 nhạy bén đọc được trong 3 phút
- Tuấn (phụ trách kỹ thuật) báo giá → mất kiểm soát vĩnh viễn
- Quên thống nhất câu leo thang → khách hỏi khó, mỗi người trả lời khác
- Không có tín hiệu vật lý → trong phòng không thể "suỵt" miệng nhau

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| すり合わせ | すりあわせ | — | Thống nhất trước đàm phán |
| 役割確認 | やくわりかくにん | DỊCH CÁT XÁC NHẬN | Xác nhận vai trò |
| 譲歩順序 | じょうほじゅんじょ | NHƯỢNG BỘ THUẬN TỰ | Thứ tự nhượng bộ |
| 撤退ライン | てったいライン | TRIỆT THOÁI — | Mức rút lui |
| エスカレーション | エスカレーション | — | Trình lên cấp trên |
| 沈黙の合図 | ちんもくのあいず | TRẦM MẶC HỢP ĐỒ | Tín hiệu im lặng |
| 一致させる | いっちさせる | NHẤT TRÍ — | Làm cho đồng nhất |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000008, 800000007, NULL, 'markdown_book', 'Rule 08 — Điểm rút lui / 撤退ライン', '# Rule 08 — Điểm rút lui / 撤退ライン
> **Luận điểm.** **Điểm rút lui** = danh sách cứng các điều kiện "nếu vi phạm, bỏ thương vụ". Khác BATNA (phương án thay thế): điểm rút lui là **lằn ranh đỏ tuyệt đối** (giá / phạm vi / sở hữu trí tuệ / SLA / điều kiện thanh toán). Phải được CTO + Hương ký xác nhận trước khi đàm phán.
>
> 撤退ラインは「これを破られたら取引不可」の絶対条件リスト。価格だけでなく phạm vi・IP・SLA・支払条件 も含む。CTO+Hương の事前承認が必須。
>
> **Liên quan:** rule 01 (BATNA), rule 07 (thống nhất nội bộ), rule 28 (cách rút lui).

---

## Bối cảnh / 場面
Sáng đàm phán Phase 3, sau buổi họp thống nhất nội bộ. Hà CTO yêu cầu Dũng đọc lại danh sách điều kiện rút lui để xác nhận. Dũng chỉ nhớ giá, quên 3 điều kiện khác.

---

## Hội thoại XẤU — điều kiện rút lui chỉ có giá
| Vai | Câu |
|---------|-----|
| **ハー CTO** | 「ズン、<ruby>撤退<rt>てったい</rt></ruby>ライン<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げて。」 <br/>*Dũng, đọc hết danh sách điều kiện rút lui ra.* |
| **ズン** | 「¥15M <ruby>以下<rt>いか</rt></ruby>です。」 <br/>*Dưới ¥15M ạ.* |
| **ハー CTO** | 「それだけ？IP は？SLA は？<ruby>支払<rt>しはらい</rt></ruby> net 30 か net 60 か？<ruby>大垣<rt>おおがき</rt></ruby>さんが『<ruby>価格<rt>かかく</rt></ruby> ¥18M でも、IP は<ruby>白鷗<rt>はくおう</rt></ruby><ruby>側<rt>がわ</rt></ruby> 100%』と<ruby>言<rt>い</rt></ruby>い<ruby>出<rt>だ</rt></ruby>したらどうする？」 <br/>*Chỉ vậy thôi? IP? SLA? Điều kiện thanh toán net 30 hay net 60? Anh Ōgaki bảo ''giá ¥18M cũng được, nhưng IP 100% về Hakuō'' thì em làm sao?* |
| **ズン** | 「えっ、それは…<ruby>考<rt>かんが</rt></ruby>えてなかったです。」 <br/>*Ơ, cái đó... em chưa nghĩ tới ạ.* |
| **ハー CTO** | 「**<ruby>価格<rt>かかく</rt></ruby>は<ruby>撤退<rt>てったい</rt></ruby>ラインの 1 <ruby>軸<rt>じく</rt></ruby>でしかない**。<ruby>今<rt>いま</rt></ruby>すぐ 5 軸<ruby>書<rt>か</rt></ruby>き<ruby>出<rt>だ</rt></ruby>せ。<ruby>書<rt>か</rt></ruby>けないなら<ruby>今日<rt>きょう</rt></ruby>は<ruby>出<rt>で</rt></ruby>ない。」 <br/>*Giá chỉ là 1 trong các trục điều kiện rút lui. Viết ngay 5 trục. Không viết được thì hôm nay không đi.* |

**Vì sao xấu:** Điểm rút lui thường bị nghĩ chỉ là giá. Nhưng sở hữu trí tuệ / SLA / điều kiện thanh toán / giới hạn trách nhiệm có thể phá vỡ thương vụ nhiều hơn cả giá. 大垣 sắc sảo sẽ thử điểm rút lui ở 1 trong 5 trục, Dũng không có lằn ranh đỏ → nhượng bộ sai chỗ.

---

## Hội thoại TỐT — điều kiện rút lui 5 trục, đã có phê duyệt
| Vai | Câu |
|---------|-----|
| **ハー CTO** | 「ズン、<ruby>撤退<rt>てったい</rt></ruby>ライン<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げて。」 <br/>*Dũng, đọc hết danh sách điều kiện rút lui ra.* |
| **ズン** | 「**5 <ruby>軸<rt>じく</rt></ruby><ruby>読<rt>よ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げます**【1】。(1) **<ruby>価格<rt>かかく</rt></ruby>**: ¥15M <ruby>未満<rt>みまん</rt></ruby>は<ruby>撤退<rt>てったい</rt></ruby>。(2) **IP**: ベース<ruby>技術<rt>ぎじゅつ</rt></ruby>の<ruby>所有権<rt>しょゆうけん</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby>、white-label OK だが core IP <ruby>譲渡<rt>じょうと</rt></ruby>は<ruby>撤退<rt>てったい</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>。(3) **SLA**: 99.5% <ruby>以下<rt>いか</rt></ruby>は<ruby>受<rt>う</rt></ruby>けない、その<ruby>下<rt>した</rt></ruby>は<ruby>罰則<rt>ばっそく</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>リスクが<ruby>粗利<rt>あらり</rt></ruby>を<ruby>超<rt>こ</rt></ruby>える。(4) **<ruby>支払<rt>しはらい</rt></ruby>**: net 60 まで OK、net 90 <ruby>以上<rt>いじょう</rt></ruby>は<ruby>撤退<rt>てったい</rt></ruby>。(5) **<ruby>責任<rt>せきにん</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby>**: <ruby>契約<rt>けいやく</rt></ruby><ruby>金額<rt>きんがく</rt></ruby>の 100% <ruby>超<rt>こ</rt></ruby>えは<ruby>撤退<rt>てったい</rt></ruby>【2】。」 <br/>*Em đọc 5 trục ạ. (1) Giá: dưới ¥15M là rút. (2) Sở hữu trí tuệ: quyền sở hữu công nghệ nền là bên em, nhãn trắng OK nhưng nhượng tài sản trí tuệ cốt lõi là rút. (3) SLA: dưới 99.5% không nhận, dưới ngưỡng đó rủi ro phạt hợp đồng vượt lợi nhuận gộp. (4) Điều kiện thanh toán: tới net 60 OK, từ net 90 trở lên là rút. (5) Giới hạn trách nhiệm: vượt 100% giá hợp đồng là rút.* |
| **ハー CTO** | 「IP の white-label と core IP の<ruby>境界<rt>きょうかい</rt></ruby>は？」 <br/>*Ranh giới white-label và core IP của em đâu?* |
| **ズン** | 「<ruby>白鷗<rt>はくおう</rt></ruby><ruby>向<rt>む</rt></ruby>けカスタマイズ<ruby>部分<rt>ぶぶん</rt></ruby>は white-label OK。AI レコメンドエンジン<ruby>本体<rt>ほんたい</rt></ruby>・モデルパラメータは core IP として<ruby>留保<rt>りゅうほ</rt></ruby>【3】。これフオン<ruby>副部長<rt>ふくぶちょう</rt></ruby> + ハー CTO <ruby>両者<rt>りょうしゃ</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです (Slack <ruby>昨日<rt>きのう</rt></ruby>)。」 <br/>*Phần customize cho Hakuō white-label OK. Bản thể AI recommend engine + model parameter giữ lại làm core IP. Cả chị Hương + anh Hà CTO đã duyệt trên Slack hôm qua ạ.* |
| **ハー CTO** | 「OK、5 軸どれか<ruby>破<rt>やぶ</rt></ruby>られたら『<ruby>弊社<rt>へいしゃ</rt></ruby> CTO に<ruby>確認<rt>かくにん</rt></ruby>させてください』で<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り。その<ruby>場<rt>ば</rt></ruby>で yes は<ruby>絶対<rt>ぜったい</rt></ruby><ruby>言<rt>い</rt></ruby>わない。」 <br/>*OK, vi phạm 1 trong 5 trục là dùng câu ''cho phép em xác nhận với CTO bên em'' để mang về. Tuyệt đối không nói yes tại chỗ.* |

 **Ghi chú:**
- 【1】**5 trục điều kiện rút lui** — 価格 / IP / SLA / 支払 / 責任上限. Một số vụ thêm: 競業避止、再委託禁止 etc.
- 【2】**責任上限 (giới hạn trách nhiệm)** — thường = 契約金額の 100%. Khách JP đôi khi đòi vô hạn → rút lui ngay.
- 【3】**Tài sản trí tuệ cốt lõi vs nhãn trắng** — định nghĩa rõ ranh giới. Bản thể AI engine vs lớp tùy chỉnh.

---

## Cụm từ mẫu
> **「<ruby>撤退<rt>てったい</rt></ruby>ラインは<ruby>価格<rt>かかく</rt></ruby>1<ruby>軸<rt>じく</rt></ruby>ではなく5軸 (<ruby>価格<rt>かかく</rt></ruby>・IP・SLA・<ruby>支払<rt>しはらい</rt></ruby>・<ruby>責任<rt>せきにん</rt></ruby>) で<ruby>持<rt>も</rt></ruby>つ。CTO <ruby>承認<rt>しょうにん</rt></ruby><ruby>必須<rt>ひっす</rt></ruby>。」**
>
> *Điểm rút lui không chỉ là giá — 5 trục: giá / sở hữu trí tuệ / SLA / điều kiện thanh toán / giới hạn trách nhiệm. CTO bắt buộc duyệt.*

---

## Tránh
- Điểm rút lui chỉ có giá → bị lách qua sở hữu trí tuệ / SLA
- Điểm rút lui không có bằng chứng đã duyệt → tới giờ G CTO không bảo chứng
- Tùy hứng thêm điều kiện rút lui mới ngay trong phòng họp → mất uy tín
- Cho khách thấy danh sách điểm rút lui ("đây là lằn ranh đỏ của em") → là sai lầm chiến thuật, điểm rút lui là thông tin nội bộ

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 撤退ライン | てったいライン | TRIỆT THOÁI — | Mức rút lui |
| 知財 / IP | ちざい | TRI TÀI | Sở hữu trí tuệ |
| 所有権 | しょゆうけん | SỞ HỮU QUYỀN | Quyền sở hữu |
| white-label | white-label | — | Nhãn trắng (OEM) |
| 罰則賠償 | ばっそくばいしょう | PHẠT TẮC BỒI THƯỜNG | Phạt hợp đồng / bồi thường |
| 支払条件 | しはらいじょうけん | CHI PHẤT ĐIỀU KIỆN | Điều kiện thanh toán |
| 責任上限 | せきにんじょうげん | TRÁCH NHẬM THƯỢNG HẠN | Giới hạn trách nhiệm |
| 競業避止 | きょうぎょうひし | CẠNH NGHIỆP TỴ CHỈ | Điều khoản không cạnh tranh |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000009, 800000007, NULL, 'markdown_book', 'Rule 09 — Kế hoạch nhượng bộ / 譲歩計画', '# Rule 09 — Kế hoạch nhượng bộ / 譲歩計画
> **Luận điểm.** Kế hoạch nhượng bộ = **trước khi vào phòng**, viết ra: nhượng cái gì, theo thứ tự nào, đổi lấy cái gì. Mỗi nhượng bộ phải kèm **điều kiện đổi ngược** (rule 24). Nếu không có kế hoạch, sẽ nhượng theo cảm xúc → rò giá trị khoảng 15-25%.
>
> 譲歩は事前にladder化する: **何を・どの順番で・何と引き換えに**。各譲歩に必ず trade を付与する。計画なしの譲歩は感情ベースになり、価値漏洩 (15-25%) を起こす。
>
> **Liên quan:** rule 07 (thống nhất nội bộ), rule 21 (giảm phạm vi), rule 24 (trao đổi nhượng bộ).

---

## Bối cảnh / 場面
Tối hôm trước đàm phán, Hương xem lại kế hoạch nhượng bộ cuối của Dũng. Dũng có 3 nấc nhưng quên gắn điều kiện đổi ngược.

---

## Hội thoại XẤU — bậc thang nhượng bộ không có điều kiện đổi
| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、<ruby>譲歩計画<rt>じょうほけいかく</rt></ruby>です: ¥19M → ¥18M → ¥17M → ¥16M。」 <br/>*Chị Hương, kế hoạch nhượng bộ ạ: ¥19M → ¥18M → ¥17M → ¥16M.* |
| **フオン** | 「**それ<ruby>譲歩<rt>じょうほ</rt></ruby>じゃなくてただの<ruby>値引<rt>ねび</rt></ruby>きカウント**。<ruby>何<rt>なに</rt></ruby>と<ruby>引<rt>ひ</rt></ruby>き<ruby>換<rt>か</rt></ruby>え？<ruby>大垣<rt>おおがき</rt></ruby>さんに『1M ずつ<ruby>下<rt>さ</rt></ruby>げてくれた』と<ruby>取<rt>と</rt></ruby>られたら、<ruby>最終<rt>さいしゅう</rt></ruby> ¥15M まで<ruby>押<rt>お</rt></ruby>される。」 <br/>*Cái đó không phải nhượng bộ — chỉ là đếm số lần giảm giá. Đổi cái gì? Anh Ōgaki đọc kiểu ''¥1M mỗi lần là chịu giảm'' thì sẽ ép tới ¥15M.* |
| **ズン** | 「うーん、<ruby>引<rt>ひ</rt></ruby>き<ruby>換<rt>か</rt></ruby>え<ruby>条件<rt>じょうけん</rt></ruby>はまだ…」 <br/>*Ừm, điều kiện đổi em chưa...* |
| **フオン** | 「**1<ruby>譲歩<rt>じょうほ</rt></ruby> = 1 trade、これ<ruby>法則<rt>ほうそく</rt></ruby>**。¥18M → ¥17M なら『scope -10% AND <ruby>契約<rt>けいやく</rt></ruby>3<ruby>年化<rt>ねんか</rt></ruby>』とかセット。<ruby>引<rt>ひ</rt></ruby>き<ruby>換<rt>か</rt></ruby>えなしの<ruby>譲歩<rt>じょうほ</rt></ruby>は『<ruby>弱<rt>よわ</rt></ruby>さの<ruby>暴露<rt>ばくろ</rt></ruby>』だけ。」 <br/>*1 nhượng bộ = 1 điều kiện đổi, đó là quy luật. ¥18M → ¥17M phải kèm ''phạm vi -10% VÀ hợp đồng 3 năm''. Nhượng bộ không có điều kiện đổi chỉ phơi bày yếu thế.* |

**Vì sao xấu:** Bậc thang thuần ¥19→18→17→16 không có điều kiện → khách thấy "anh dễ nhượng" → ép tiếp. Mỗi nấc cần 1 điều kiện đổi ngược (phạm vi, điều khoản, thanh toán, v.v.).

---

## Hội thoại TỐT — bậc thang nhượng bộ với điều kiện đổi từng nấc
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>譲歩計画<rt>じょうほけいかく</rt></ruby> v2 です。**5 ladder、<ruby>各段<rt>かくだん</rt></ruby>に trade**【1】。」 <br/>*Kế hoạch nhượng bộ v2 ạ. 5 bậc, mỗi nấc có điều kiện đổi.* |
| **ズン** | 「Step 0: ¥19M anchor (no concession)。Step 1: ¥18M target、trade なし (target <ruby>着地<rt>ちゃくち</rt></ruby>は<ruby>譲歩<rt>じょうほ</rt></ruby>ゼロ<ruby>扱<rt>あつか</rt></ruby>い)。Step 2: ¥17.5M ⇄ **<ruby>契約期間<rt>けいやくきかん</rt></ruby> 2 <ruby>年化<rt>ねんか</rt></ruby>** (LTV +35%)【2】。Step 3: ¥17M ⇄ scope -10% (AI dashboard 2nd phase <ruby>後出<rt>あとだ</rt></ruby>し)。Step 4: ¥16M ⇄ scope -20% + payment net 30 <ruby>化<rt>か</rt></ruby> + <ruby>事例公開許可<rt>じれいこうかいきょか</rt></ruby>。Step 5: ¥15M ⇄ scope -30% + <ruby>上記<rt>じょうき</rt></ruby>すべて + <ruby>早期支払割<rt>そうきしはらいわり</rt></ruby> (これ<ruby>最終<rt>さいしゅう</rt></ruby>)。**¥15M <ruby>以下<rt>いか</rt></ruby> = <ruby>撤退<rt>てったい</rt></ruby>**。」 <br/>*Bước 0: ¥19M neo giá (chưa nhượng). Bước 1: ¥18M mục tiêu, không đổi (chốt ở mục tiêu = không tính nhượng). Bước 2: ¥17.5M ⇄ kéo hợp đồng 2 năm (LTV +35%). Bước 3: ¥17M ⇄ phạm vi -10% (bảng điều khiển AI đẩy sang Phase 2 sau). Bước 4: ¥16M ⇄ phạm vi -20% + thanh toán net 30 + cho phép công bố tình huống thực tế. Bước 5: ¥15M ⇄ phạm vi -30% + tất cả trên + chiết khấu thanh toán sớm (đây là cuối). Dưới ¥15M = rút lui ạ.* |
| **フオン** | 「Step 2 の 2 <ruby>年化<rt>ねんか</rt></ruby>、<ruby>白鷗<rt>はくおう</rt></ruby>が<ruby>断<rt>ことわ</rt></ruby>ったら？」 <br/>*Bước 2 kéo 2 năm, Hakuō từ chối thì sao?* |
| **ズン** | 「<ruby>断<rt>ことわ</rt></ruby>られたら ¥17.5M も<ruby>引<rt>ひ</rt></ruby>っ<ruby>込<rt>こ</rt></ruby>めて Step 1 に<ruby>戻<rt>もど</rt></ruby>ります【3】。**<ruby>譲歩<rt>じょうほ</rt></ruby>は trade とセット、trade <ruby>拒否<rt>きょひ</rt></ruby>は<ruby>譲歩取<rt>じょうほと</rt></ruby>り<ruby>下<rt>さ</rt></ruby>げ**。」 <br/>*Bị từ chối thì em rút ¥17.5M, quay về Bước 1 ạ. Nhượng bộ luôn đi cùng điều kiện đổi — điều kiện bị từ chối thì rút nhượng bộ.* |
| **フオン** | 「<ruby>完璧<rt>かんぺき</rt></ruby>。これ trade-back <ruby>原則<rt>げんそく</rt></ruby>。<ruby>事例公開許可<rt>じれいこうかいきょか</rt></ruby>は marketing <ruby>側<rt>がわ</rt></ruby>の<ruby>価値<rt>かち</rt></ruby>あるから<ruby>入<rt>い</rt></ruby>れていい。」 <br/>*Hoàn hảo. Đó là nguyên tắc rút điều kiện ngược. Quyền công bố tình huống thực tế có giá trị truyền thông nên đưa vào được.* |

 **Ghi chú:**
- 【1】**5 bậc + điều kiện đổi mỗi nấc** — 譲歩の各段に必ず引き換え条件を1つ以上.
- 【2】**Các loại điều kiện đổi**: kéo dài thời hạn hợp đồng, giảm phạm vi, điều kiện thanh toán (net 60→net 30), công bố tình huống thực tế, điều khoản loại trừ đối thủ, thời gian độc quyền, phí giới thiệu, đẩy chức năng bổ sung sang giai đoạn sau.
- 【3】**Nguyên tắc rút điều kiện ngược**: điều kiện đổi bị từ chối thì rút cả nhượng bộ. Không có nguyên tắc này → nhượng bộ một chiều.

---

## Cụm từ mẫu
> **「<ruby>譲歩<rt>じょうほ</rt></ruby>はladder<ruby>化<rt>か</rt></ruby>、<ruby>各段<rt>かくだん</rt></ruby>にtrade、trade<ruby>拒否<rt>きょひ</rt></ruby>されたら<ruby>譲歩<rt>じょうほ</rt></ruby>も<ruby>取<rt>と</rt></ruby>り<ruby>下<rt>さ</rt></ruby>げる。」**
>
> *Nhượng bộ theo bậc thang, mỗi nấc có điều kiện đổi, điều kiện đổi bị từ chối thì rút lại nhượng bộ.*

---

## Tránh
- Nhượng giá thuần "1M ずつ" → tự bào mòn biên lợi nhuận
- Quên điều kiện đổi cho mỗi nấc → khách nhượng bộ không trả gì
- Quên nguyên tắc rút điều kiện ngược → bị tách điều kiện đổi ra, giữ lại nhượng bộ
- Nhượng quá nhanh (¥19→¥17 trong 5 phút) → khách đoán còn dư địa lớn → ép tới ¥14M

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 譲歩計画 | じょうほけいかく | NHƯỢNG BỘ KẾ HOẠCH | Kế hoạch nhượng bộ |
| 引き換え | ひきかえ | DẪN HOÁN | Điều kiện đổi |
| 段階的譲歩 | だんかいてきじょうほ | ĐOẠN GIAI ĐÍCH NHƯỢNG BỘ | Nhượng bộ theo bậc thang |
| 契約期間 | けいやくきかん | KHẾ ƯỚC KỲ GIAN | Thời hạn hợp đồng |
| LTV | エルティーブイ | — | Giá trị trọn đời khách hàng |
| 事例公開 | じれいこうかい | SỰ LỆ CÔNG KHAI | Công bố tình huống thực tế |
| 値引き | ねびき | TRỊ DẪN | Giảm giá |
| 取り下げ | とりさげ | THỦ HẠ | Rút lại |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000010, 800000007, NULL, 'markdown_book', 'Rule 10 — Câu mở chào lịch sự / 商談冒頭', '# Rule 10 — Câu mở chào lịch sự / 商談冒頭
> **Luận điểm.** 30 giây đầu của đàm phán = neo định sắc thái cho cả buổi. Câu mở phải có 4 phần: **(1) Cảm ơn thời gian**, **(2) Tự giới thiệu lại nếu có nhiều người**, **(3) Ghi nhận tình hình khách**, **(4) Nói rõ mục tiêu hôm nay ngắn gọn**. Đi thẳng vào mặc cả giá = mất giọng điệu trang trọng.
>
> 商談冒頭の30秒は全体のtoneを決める。4要素必須: お礼・再自己紹介・相手状況への言及・本日の意図。直で値段の話に入るのは粗野。
>
> **Liên quan:** rule 11 (thiết lập bối cảnh), sách 03 rule 09 (第一声), sách 05 rule 06 (mở đầu slide trình bày).

---

## Bối cảnh / 場面
14:00, phòng họp 白鷗. 大垣 + 中村 CFO ngồi đối diện. Dũng + Tuấn vào. Sau lễ tân và trao danh thiếp xong (sách 03 rule 11), Dũng làm câu mở.

---

## Hội thoại XẤU — vào thẳng giá
*座って即 · 微妙な顔 · 隣で書類を整理しながら*

| Vai | Câu |
|---------|-----|
| **ズン** | 「えー、本日 Phase 3 の<ruby>見積<rt>みつもり</rt></ruby> ¥19M でお<ruby>持<rt>も</rt></ruby>ちしました。<ruby>早速<rt>さっそく</rt></ruby>ですがご<ruby>検討<rt>けんとう</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Ờ, hôm nay em mang báo giá Phase 3 ¥19M ạ. Xin phép vào luôn để quý cty xem xét ạ.* |
| **大垣** | 「あ…はい。<ruby>早速<rt>さっそく</rt></ruby>ですね。」 <br/>*À... vâng. Vào nhanh nhỉ.* |
| **中村CFO** | 「…」 <br/>*(im lặng, sắp xếp tài liệu)* |

**Vì sao xấu:** 0 phút đã ra giá → 失礼. Khách Nhật cảm "lạnh", không có giọng điệu chuyên nghiệp. 中村 CFO senior bị bỏ qua trong câu chào → mất 顔. Cả buổi sắc thái sẽ bị định khung thành "chỉ giao dịch mua bán".

---

## Hội thoại TỐT — mở đầu 30 giây 4 yếu tố
| Vai | Câu |
|---------|-----|
| **ズン** | 「**本日はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>いただきまして<ruby>誠<rt>まこと</rt></ruby>にありがとうございます**【1】。<ruby>改<rt>あらた</rt></ruby>めまして、ティエンファットの BD <ruby>担当<rt>たんとう</rt></ruby>ズンと<ruby>申<rt>もう</rt></ruby>します。<ruby>隣<rt>となり</rt></ruby>のチーム<ruby>技術<rt>ぎじゅつ</rt></ruby>リーダー、トゥアンと<ruby>参<rt>まい</rt></ruby>りました【2】。」 <br/>*Hôm nay quý anh dành thời gian trong lúc bận rộn, em xin chân thành cảm ơn ạ. Một lần nữa, em là Dũng, BD bên ティエンファット. Cùng đi với em là anh Tuấn — Tech lead ạ.* |
| **ズン** | 「**<ruby>先日<rt>せんじつ</rt></ruby>の IR でも<ruby>拝見<rt>はいけん</rt></ruby>しましたが、<ruby>新年度<rt>しんねんど</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて DX <ruby>推進<rt>すいしん</rt></ruby>を<ruby>加速<rt>かそく</rt></ruby>されるとのこと**【3】、<ruby>私<rt>わたくし</rt></ruby>どもも Phase 2 でご<ruby>協力<rt>きょうりょく</rt></ruby>させていただいた<ruby>立場<rt>たちば</rt></ruby>として<ruby>大変<rt>たいへん</rt></ruby><ruby>心強<rt>こころづよ</rt></ruby>く<ruby>存<rt>ぞん</rt></ruby>じます。」 <br/>*Em có xem IR vừa rồi, được biết quý cty đang đẩy mạnh DX hướng tới năm tài chính mới. Là bên đã đồng hành Phase 2, chúng em thấy rất phấn khởi ạ.* |
| **ズン** | 「**本日は Phase 3 のご<ruby>提案<rt>ていあん</rt></ruby>として、3 <ruby>段階<rt>だんかい</rt></ruby>の<ruby>選択肢<rt>せんたくし</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちしました**【4】。<ruby>御社<rt>おんしゃ</rt></ruby>のご<ruby>要望<rt>ようぼう</rt></ruby>に<ruby>沿<rt>そ</rt></ruby>うか、ぜひ<ruby>忌憚<rt>きたん</rt></ruby>ないご<ruby>意見<rt>いけん</rt></ruby>をいただければと<ruby>存<rt>ぞん</rt></ruby>じます。」 <br/>*Hôm nay em mang theo 3 phương án đề xuất Phase 3 ạ. Liệu có đáp ứng được nhu cầu quý cty hay không, mong quý anh cho ý kiến thẳng thắn giúp ạ.* |
| **大垣** | 「ご<ruby>丁寧<rt>ていねい</rt></ruby>にありがとうございます。では<ruby>拝見<rt>はいけん</rt></ruby>しましょう。」 <br/>*Cảm ơn em đã chu đáo. Vậy chúng tôi xin xem nhé.* |

 **Ghi chú:**
- 【1】**お礼が最初** — 「お忙しい中」必ず付ける。CFO クラスにはこの一言で「あなたの時間を尊重」を伝える.
- 【2】**再自己紹介 + チームメンバー紹介** — 名刺交換しているが、口頭でも明示. 特に CFO 同席時.
- 【3】**相手状況への言及 (IR / 業績 / 季節)** — 顧客リサーチ (rule 04) の成果をここで使う. "anh/chị nhớ đến tình hình bên em" — sắc thái này rất quan trọng trong văn hóa Nhật.
- 【4】**Mục tiêu hôm nay gói trong 1 câu**: "3 段階の選択肢" — KHÔNG báo giá ngay, để bước khai thác nhu cầu đi trước.

---

## Cụm từ mẫu
> **「商談冒頭30秒は4要素 (お礼・再紹介・相手状況・本日意図)。値段は冒頭に出さない。」**
>
> *30s mở đàm phán cần 4 yếu tố: cảm ơn / tự giới thiệu lại / ghi nhận tình hình khách / mục tiêu hôm nay. KHÔNG báo giá ngay đầu.*

---

## Tránh
- "早速ですが値段は" → 失礼
- Bỏ qua CFO trong câu chào (chỉ nhìn 大垣) → mất 顔 senior
- "お忙しい中" thiếu → tone hời hợt
- Ghi nhận khách bằng câu chung chung "御社は素晴らしい会社" → mất tính cụ thể, không cho thấy đã chuẩn bị kỹ

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 商談冒頭 | しょうだんぼうとう | THƯƠNG ĐÀM MẠO ĐẦU | Mở đàm phán |
| お忙しい中 | おいそがしいなか | — | Trong lúc bận rộn |
| 改めまして | あらためまして | — | Một lần nữa |
| 拝見する | はいけんする | BÁI KIẾN — | Xem (kính ngữ) |
| 忌憚ない | きたんない | KỴ ĐẢN — | Thẳng thắn / không kiêng |
| 意見 | いけん | Ý KIẾN | Ý kiến |
| DX 推進 | DXすいしん | — SUY TIẾN | Đẩy mạnh DX |
| 立場 | たちば | LẬP TRƯỜNG | Vị thế / lập trường |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000011, 800000007, NULL, 'markdown_book', 'Rule 11 — Thiết lập bối cảnh + chương trình / コンテキスト設定', '# Rule 11 — Thiết lập bối cảnh + chương trình / コンテキスト設定
> **Luận điểm.** Sau câu mở chào (rule 10), thiết lập **bối cảnh chung** trong 60-90s: (1) điểm lại 2-3 ý then chốt từ buổi họp trước, (2) xác nhận phía khách có gì thay đổi hay không, (3) đề xuất chương trình hôm nay. Bỏ qua → khách CFO cấp cao bị lạc mạch, bầu không khí đi xuống.
>
> 冒頭挨拶後、60-90秒で共通コンテキストを設定する: 前回ハイライト recap → 状況確認 → 本日 agenda 提示。CFO 同席など senior 入りでは特に重要。
>
> **Liên quan:** rule 10 (冒頭), rule 17 (時間管理), sách 03 rule 13 (chương trình nghị sự).

---

## Bối cảnh / 場面
Sau câu mở (rule 10), Dũng vào phần thứ 2 — thiết lập bối cảnh. 中村 CFO mới tham gia lần này (Phase 2 không có), Dũng cần bắc cầu.

---

## Hội thoại XẤU — không điểm lại, vào khai thác thông tin luôn
*横から · CFOに説明し始める*

| Vai | Câu |
|---------|-----|
| **ズン** | 「では早速、Phase 3 のご<ruby>要件<rt>ようけん</rt></ruby>についてお<ruby>伺<rt>うかが</rt></ruby>いします。<ruby>最<rt>もっと</rt></ruby>も<ruby>重要視<rt>じゅうようし</rt></ruby>されているポイントは<ruby>何<rt>なん</rt></ruby>でしょうか？」 <br/>*Vậy em xin phép vào luôn — về yêu cầu Phase 3, mục quý anh xem trọng nhất là gì ạ?* |
| **中村CFO** | 「あ…えっと、Phase 3 って、Phase 2 はどこまで<ruby>進<rt>すす</rt></ruby>んだんですか？」 <br/>*À... ờ, Phase 3 ấy à — Phase 2 đã đến đâu rồi nhỉ?* |
| **大垣** | 「<ruby>中村<rt>なかむら</rt></ruby>さん、Phase 2 は<ruby>昨年<rt>さくねん</rt></ruby>12<ruby>月<rt>がつ</rt></ruby>に<ruby>完了<rt>かんりょう</rt></ruby>して、<ruby>次<rt>つぎ</rt></ruby>は…」 <br/>*Anh Nakamura, Phase 2 đã xong tháng 12 năm ngoái, tiếp theo là...* |

**Vì sao xấu:** CFO không có bối cảnh Phase 2. Dũng vào câu hỏi khai thác thông tin luôn → CFO bị lạc mạch → 大垣 phải giải thích thay → tốn 5 phút và mất quyền dẫn dắt. Lẽ ra Dũng phải chủ động điểm lại trước.

---

## Hội thoại TỐT — tóm tắt lại 60s + đề xuất chương trình
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>本題<rt>ほんだい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります<ruby>前<rt>まえ</rt></ruby>に、**<ruby>簡単<rt>かんたん</rt></ruby>な<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>り**【1】をさせていただきます。<ruby>中村<rt>なかむら</rt></ruby> CFO <ruby>様<rt>さま</rt></ruby>には Phase 2 の<ruby>経緯<rt>けいい</rt></ruby>をお<ruby>伝<rt>つた</rt></ruby>えする<ruby>意味<rt>いみ</rt></ruby>でも。」 <br/>*Trước khi vào nội dung chính, xin phép em điểm lại nhanh ạ. Cũng là để truyền lại bối cảnh Phase 2 cho anh Nakamura CFO.* |
| **ズン** | 「Phase 2 は<ruby>昨年<rt>さくねん</rt></ruby> 12 <ruby>月<rt>がつ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>月間<rt>げっかん</rt></ruby> GMV +18%、<ruby>運用<rt>うんよう</rt></ruby>コスト -22% という<ruby>成果<rt>せいか</rt></ruby>をお<ruby>出<rt>だ</rt></ruby>しすることができました【2】。Phase 3 のご<ruby>相談<rt>そうだん</rt></ruby>を 3 <ruby>月<rt>がつ</rt></ruby>に<ruby>賜<rt>たまわ</rt></ruby>り、<ruby>今日<rt>きょう</rt></ruby> 3 <ruby>段階<rt>だんかい</rt></ruby>のご<ruby>提案<rt>ていあん</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちしました。**<ruby>直近<rt>ちょっきん</rt></ruby>で<ruby>御社<rt>おんしゃ</rt></ruby><ruby>側<rt>がわ</rt></ruby>のご<ruby>状況<rt>じょうきょう</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>はございますでしょうか**【3】？」 <br/>*Phase 2 hoàn thành tháng 12 năm ngoái, kết quả là GMV tháng +18%, chi phí vận hành -22% ạ. Đề xuất Phase 3 quý anh trao đổi hồi tháng 3, hôm nay em mang 3 phương án ạ. Gần đây phía quý cty có thay đổi gì không ạ?* |
| **中村CFO** | 「コスト<ruby>圧縮<rt>あっしゅく</rt></ruby>の<ruby>方針<rt>ほうしん</rt></ruby>はより<ruby>強<rt>つよ</rt></ruby>くなっています。Phase 2 のような ROI が<ruby>出<rt>で</rt></ruby>る<ruby>案件<rt>あんけん</rt></ruby>であれば<ruby>積極的<rt>せっきょくてき</rt></ruby>に<ruby>検討<rt>けんとう</rt></ruby>します。」 <br/>*Phương châm nén chi phí đang mạnh lên. Nếu ROI ra như Phase 2 thì chúng tôi tích cực xem xét.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。それを<ruby>念頭<rt>ねんとう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めます。**<ruby>本日<rt>ほんじつ</rt></ruby>のagenda、<ruby>案<rt>あん</rt></ruby>として: (1) Phase 3 <ruby>提案<rt>ていあん</rt></ruby>の<ruby>概要<rt>がいよう</rt></ruby> 10 <ruby>分<rt>ふん</rt></ruby>、(2) <ruby>御社<rt>おんしゃ</rt></ruby><ruby>側<rt>がわ</rt></ruby>のご<ruby>質問<rt>しつもん</rt></ruby>・ディスカッション 30 <ruby>分<rt>ぷん</rt></ruby>、(3) <ruby>価格<rt>かかく</rt></ruby>と<ruby>次<rt>つぎ</rt></ruby>ステップの<ruby>確認<rt>かくにん</rt></ruby> 20 <ruby>分<rt>ぷん</rt></ruby>**【4】、<ruby>合計<rt>ごうけい</rt></ruby> 60 <ruby>分<rt>ぷん</rt></ruby>。よろしいでしょうか？」 <br/>*Em rõ ạ. Em sẽ lưu ý điều đó. Chương trình đề xuất hôm nay: (1) Tổng quan đề xuất Phase 3 — 10 phút, (2) Câu hỏi & thảo luận từ phía quý cty — 30 phút, (3) Xác nhận giá và bước tiếp — 20 phút, tổng 60 phút. Anh thấy ổn không ạ?* |
| **大垣** | 「<ruby>結構<rt>けっこう</rt></ruby>です。」 <br/>*Được ạ.* |

 **Ghi chú:**
- 【1】**振り返り (điểm lại)** — chỉ cần 30-45s, nhấn 2-3 số liệu then chốt của Phase trước. KHÔNG kể lể dài.
- 【2】**Số liệu cụ thể** (+18%, -22%) tốt hơn "成功" mơ hồ. Tạo niềm tin ngay.
- 【3】**「直近で変更ございますか」** — câu mở để khách chủ động chia sẻ ràng buộc mới (ai mới tham gia, cắt ngân sách, v.v.).
- 【4】**Chương trình 3 phần có khung thời gian** — cho khách cảm giác nắm quyền dẫn dắt, dễ buộc bản thân giữ đúng lịch (rule 17).

---

## Cụm từ mẫu
> **「<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>り→<ruby>状況<rt>じょうきょう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>→agenda<ruby>提示<rt>ていじ</rt></ruby>の3<ruby>拍<rt>はく</rt></ruby>。CFO <ruby>同席時<rt>どうせきじ</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>必須<rt>ひっす</rt></ruby>。」**
>
> *Tóm tắt lại → xác nhận tình hình → đề xuất chương trình — 3 nhịp. Có CFO ngồi cùng càng bắt buộc.*

---

## Tránh
- Vào khai thác thông tin luôn, không điểm lại → khách cấp cao bị lạc mạch
- Điểm lại dài lê thê (3 phút) → tốn quỹ thời gian
- Quên hỏi "状況変更ありますか" → bỏ lỡ thông tin sớm về cắt ngân sách, cơ cấu lại
- Chương trình không có khung thời gian → buổi đàm phán lê thê

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 振り返り | ふりかえり | — | Điểm lại / nhìn lại |
| 経緯 | けいい | KINH VĨ | Diễn biến / quá trình |
| 直近 | ちょっきん | TRỰC CẬN | Gần đây |
| アジェンダ | アジェンダ | — | Chương trình nghị sự |
| ディスカッション | ディスカッション | — | Thảo luận |
| 念頭に置く | ねんとうにおく | NIỆM ĐẦU — | Lưu ý / để trong đầu |
| 共通認識 | きょうつうにんしき | CỘNG THÔNG NHẬN THỨC | Nhận thức chung |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000012, 800000007, NULL, 'markdown_book', 'Rule 12 — Câu hỏi tìm hiểu nhu cầu: 5 nhóm / ディスカバリー質問', '# Rule 12 — Câu hỏi tìm hiểu nhu cầu: 5 nhóm / ディスカバリー質問
> **Luận điểm.** Trước khi đề xuất giá, hỏi 5 nhóm: **(1) Vấn đề** (điểm đau thực sự), **(2) Mục tiêu** (đích đến), **(3) Ngân sách** (mức có thể chi), **(4) Thời hạn** (mốc cần xong), **(5) Người quyết định** (ai duyệt, quy trình). Bỏ qua 1 nhóm = đoán mò → khả năng cao báo giá sai. Tỉ lệ thương vụ chốt được tăng 2-3x khi khai thác thông tin đầy đủ.
>
> 価格提示前に必ず5カテゴリ (Pain/Goal/Budget/Timeline/Decision) を質問。1つでも飛ばすと当てずっぽう提案になる。
>
> **Liên quan:** rule 13 (ràng buộc ẩn), rule 15 (mức độ nhạy cảm giá), rule 16 (xác nhận người quyết định).

---

## Bối cảnh / 場面
Sau khi thiết lập bối cảnh (rule 11), Dũng vào phần khai thác thông tin 30 phút. Đây là phần dài nhất, cần bao quát 5 nhóm.

---

## Hội thoại XẤU — chỉ hỏi Vấn đề, bỏ qua Ngân sách/Thời hạn/Người quyết định
| Vai | Câu |
|---------|-----|
| **ズン** | 「Phase 3 で解決したい<ruby>課題<rt>かだい</rt></ruby>は何でしょうか？」 <br/>*Vấn đề quý anh muốn giải quyết ở Phase 3 là gì ạ?* |
| **大垣** | 「AI レコメンドで<ruby>購買単価<rt>こうばいたんか</rt></ruby>を上げたい、それから<ruby>運用負荷<rt>うんようふか</rt></ruby>を減らしたいです。」 <br/>*Tăng đơn giá mua hàng bằng AI recommend, và giảm tải vận hành.* |
| **ズン** | 「分かりました。それでは ¥19M でご<ruby>提案<rt>ていあん</rt></ruby>します。」 <br/>*Em rõ ạ. Vậy em đề xuất ¥19M ạ.* |
| **大垣** | 「あ…えっと、<ruby>予算<rt>よさん</rt></ruby>とか聞かないんですか？」 <br/>*À... ơ, không hỏi ngân sách à?* |
| **ズン** | 「あ、そうですね、予算は…」 <br/>*À vâng ạ, ngân sách thì...* |

**Vì sao xấu:** Hỏi vấn đề xong nhảy thẳng tới giá. Không biết trần ngân sách, mức độ gấp gáo của thời hạn, quy trình ra quyết định. ¥19M có thể vượt quá ngân sách hoặc khách thực ra cần xong trong 3 tháng (nhưng mình lại báo lịch 6 tháng). Khách phải tự nhắc — rất khó xử.

---

## Hội thoại TỐT — bao quát đủ 5 nhóm trong 30 phút
| Vai | Câu |
|---------|-----|
| **ズン** | 「**5 <ruby>観点<rt>かんてん</rt></ruby>でお<ruby>伺<rt>うかが</rt></ruby>いさせていただきます**【1】。まず Pain — <ruby>現状<rt>げんじょう</rt></ruby>の<ruby>運用<rt>うんよう</rt></ruby>で最も時間を取られている部分はどちらでしょうか？」 <br/>*Em xin phép hỏi theo 5 trục ạ. Đầu tiên là Vấn đề — trong vận hành hiện tại, mục nào đang ngốn thời gian nhất ạ?* |
| **大垣** | 「<ruby>在庫予測<rt>ざいこよそく</rt></ruby>の<ruby>精度<rt>せいど</rt></ruby>。<ruby>営業部<rt>えいぎょうぶ</rt></ruby>が<ruby>手動<rt>しゅどう</rt></ruby>で<ruby>日次調整<rt>にちじちょうせい</rt></ruby>している。」 <br/>*Độ chính xác dự báo tồn kho. Phòng KD đang điều chỉnh thủ công hàng ngày.* |
| **ズン** | 「**Goal — Phase 3 完了時にどのような状態をイメージされていますか**【2】？」 <br/>*Mục tiêu — khi Phase 3 hoàn thành, quý anh hình dung trạng thái như thế nào ạ?* |
| **大垣** | 「予測精度 +15%、手動調整時間<ruby>半減<rt>はんげん</rt></ruby>。GMV 影響としては<ruby>年間<rt>ねんかん</rt></ruby> +¥80M <ruby>見込<rt>みこ</rt></ruby>み。」 <br/>*Độ chính xác +15%, thời gian điều chỉnh thủ công giảm một nửa. Ảnh hưởng GMV ước +¥80M/năm.* |
| **ズン** | 「**<ruby>予算感<rt>よさんかん</rt></ruby>**につきまして、御社<ruby>新年度<rt>しんねんど</rt></ruby> IT <ruby>投資<rt>とうし</rt></ruby>のフレームの中で、Phase 3 はどの程度の<ruby>位置付<rt>いちづ</rt></ruby>けでしょうか【3】？」 <br/>*Về cảm giác ngân sách, trong khung đầu tư IT năm mới của quý cty, Phase 3 ở vị trí nào ạ?* |
| **中村CFO** | 「Phase 3 単体としては ¥15-20M <ruby>帯<rt>たい</rt></ruby>で考えています。それを大きく超えると<ruby>稟議<rt>りんぎ</rt></ruby>が<ruby>難航<rt>なんこう</rt></ruby>します。」 <br/>*Riêng Phase 3 chúng tôi tính dải ¥15-20M. Vượt nhiều là ringi sẽ khó.* |
| **ズン** | 「ありがとうございます。**Timeline** — リリース希望時期は？」 <br/>*Em cảm ơn ạ. Thời hạn — thời điểm ra mắt mong muốn?* |
| **大垣** | 「7 月末までに<ruby>本番投入<rt>ほんばんとうにゅう</rt></ruby>できれば<ruby>理想<rt>りそう</rt></ruby>です。」 <br/>*Lý tưởng là đưa vào vận hành thực tế trước cuối tháng 7.* |
| **ズン** | 「**最後に Decision — 本件のご<ruby>判断<rt>はんだん</rt></ruby>は中村 CFO 様 + 大垣部長様の<ruby>合議<rt>ごうぎ</rt></ruby>でよろしいでしょうか？それ以外に<ruby>稟議経路<rt>りんぎけいろ</rt></ruby>で確認すべき方はいらっしゃいますか**【4】？」 <br/>*Cuối cùng là Người quyết định — quyết định vụ này là hợp nghị giữa anh Nakamura CFO và anh Ōgaki ạ? Ngoài ra trên đường ringi còn ai cần tham vấn không ạ?* |
| **大垣** | 「我々2名の合議+IT<ruby>部門長<rt>ぶもんちょう</rt></ruby>の technical review が必要です。あと<ruby>取締役会<rt>とりしまりやくかい</rt></ruby> (¥18M 超は<ruby>付議<rt>ふぎ</rt></ruby>)。」 <br/>*Hai chúng tôi hợp nghị + xem xét kỹ thuật của trưởng phòng IT. Thêm HĐQT (vượt ¥18M phải đưa lên).* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。これで5観点のご<ruby>状況<rt>じょうきょう</rt></ruby>が<ruby>揃<rt>そろ</rt></ruby>いました。」 <br/>*Em rõ ạ. Vậy là 5 trục đã đủ thông tin ạ.* |

 **Ghi chú:**
- 【1】**Tuyên bố "5 trục" ngay từ đầu** — khách biết bạn sẽ hỏi nhiều, kiên nhẫn hơn. Tránh khách sốt ruột "khi nào tới giá?"
- 【2】**Cặp Vấn đề → Mục tiêu** — chỉ hỏi vấn đề thì mang sắc thái tiêu cực; mục tiêu cho khách hình dung trạng thái tương lai, dễ trả lời bằng con số.
- 【3】**Ngân sách hỏi gián tiếp** "新年度フレームの中で" — không hỏi thẳng "予算いくら?" (kiểu hỏi dễ thất bại). Chi tiết ở rule 15.
- 【4】**Người quyết định hỏi đầy đủ** — KHÔNG chỉ hỏi "ai duyệt" mà hỏi "còn ai cần tham vấn", thường có người quyết định ẩn (rule 16).

---

## Cụm từ mẫu
> **「Pain・Goal・<ruby>予算<rt>よさん</rt></ruby>・Timeline・Decision の5<ruby>観点<rt>かんてん</rt></ruby>を必ずカバー。1つ<ruby>飛<rt>と</rt></ruby>ばすと当てずっぽう。」**
>
> *5 trục Vấn đề/Mục tiêu/Ngân sách/Thời hạn/Người quyết định — bỏ 1 trục = đoán mò.*

---

## Tránh
- Chỉ hỏi vấn đề xong nhảy thẳng tới giá → báo giá sai
- Hỏi ngân sách thẳng thừng "予算いくらですか?" → khách Nhật khó trả lời (rule 15)
- Bỏ qua câu hỏi người quyết định → tới giai đoạn chốt mới biết có 5 người duyệt
- Hỏi 5 nhóm liên tiếp dồn dập → giọng điệu như hỏi cung. Đan xen phản chiếu / tóm lược (rule 14).

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 観点 | かんてん | QUAN ĐIỂM | Góc nhìn / trục khai thác |
| 課題 | かだい | KHÓA ĐỀ | Vấn đề / điểm đau |
| 在庫予測 | ざいこよそく | TẠI KHO DỰ TRẮC | Dự báo tồn kho |
| 手動調整 | しゅどうちょうせい | THỦ ĐỘNG ĐIỀU CHỈNH | Điều chỉnh thủ công |
| 予算感 | よさんかん | DỰ TOÁN CẢM | Cảm giác về ngân sách |
| 稟議経路 | りんぎけいろ | BẨM NGHỊ KINH LỘ | Đường ringi |
| 合議 | ごうぎ | HỢP NGHỊ | Quyết định tập thể |
| 取締役会 | とりしまりやくかい | THỦ ĐẾ DỊCH HỘI | Hội đồng quản trị |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000013, 800000007, NULL, 'markdown_book', 'Rule 13 — Lắng nghe ràng buộc ẩn / 隠れた制約の傾聴', '# Rule 13 — Lắng nghe ràng buộc ẩn / 隠れた制約の傾聴
> **Luận điểm.** Khách Nhật rất hiếm khi trực tiếp nói "có vấn đề X", thay vào đó phát tín hiệu gián tiếp: cách buông lửng câu 言葉尻 ("ちょっと…"), nhắc thời gian 時間 ("少し時間かかる"), dùng thể bị động. Phải bắt được 3 loại ràng buộc ẩn: **(1) thời hạn 稟議 (thực sự bao lâu)**, **(2) giới hạn chu kỳ ngân sách**, **(3) chính trị nội bộ** (sếp khác phản đối).
>
> 日本の顧客は制約を直接言わない。「ちょっと」「少し時間がかかる」「内部で議論が」などの signal を listen して隠れた制約 (稟議期間・予算枠・社内反対) を読み解く。
>
> **Liên quan:** rule 03 (稟議), rule 12 (khai thác thông tin), rule 14 (phản chiếu).

---

## Bối cảnh / 場面
Discovery question xong (rule 12), 大垣 trả lời nhưng có vài "ちょっと…" và ngập ngừng dài. Dũng phải đào ràng buộc ẩn chứ không bỏ qua.

---

## Hội thoại XẤU — bỏ qua tín hiệu "ちょっと"
*信号読まず*

| Vai | Câu |
|---------|-----|
| **大垣** | 「7 月末ローンチが理想ですが…**ちょっと**<ruby>社内<rt>しゃない</rt></ruby>で<ruby>議論<rt>ぎろん</rt></ruby>があって…」 <br/>*Lý tưởng là launch cuối tháng 7, nhưng... hơi đang có thảo luận nội bộ...* |
| **ズン** | 「では 7 月末ローンチでスケジュール組みます。」 <br/>*Vậy em lên lịch launch cuối tháng 7 ạ.* |
| **大垣** | 「あ、はい…」 <br/>*À, vâng ạ...* |
| (3週間後 Slack) **大垣** | 「すみません、<ruby>稟議<rt>りんぎ</rt></ruby>が止まっており…」 <br/>*(3 tuần sau qua Slack) Xin lỗi, ringi đang dừng...* |

**Vì sao xấu:** "ちょっと" + ngập ngừng = tín hiệu có vấn đề, có thể là sếp khác phản đối hoặc ngân sách chưa chắc chắn. Dũng chốt lịch luôn → 3 tuần sau bị bất ngờ. Phải đào ngay tại chỗ.

---

## Hội thoại TỐT — đào "ちょっと" với câu hỏi mở
*tín hiệu bắt được · ngừng ngắn, sau đó*

| Vai | Câu |
|---------|-----|
| **大垣** | 「7 月末ローンチが理想ですが…**ちょっと**社内で議論があって…」 <br/>*Lý tưởng là launch cuối tháng 7, nhưng... hơi đang có thảo luận nội bộ...* |
| **ズン** | 「『社内で議論』とのこと、**もう少し詳しくお聞かせいただけますでしょうか**【1】？タイミングや<ruby>調整<rt>ちょうせい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>に<ruby>影響<rt>えいきょう</rt></ruby>しそうでしたら、こちらでも<ruby>対応<rt>たいおう</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>したいので。」 <br/>*Anh có nhắc ''thảo luận nội bộ'', em xin phép được nghe kỹ hơn ạ. Nếu có ảnh hưởng tới thời điểm / việc điều chỉnh thì bên em cũng muốn tìm hướng xử lý ạ.* |
| **大垣** | 「実は IT 部門長が AI レコメンドの<ruby>導入<rt>どうにゅう</rt></ruby>リスクを<ruby>慎重<rt>しんちょう</rt></ruby>に見ていまして…7 月末は<ruby>厳<rt>きび</rt></ruby>しいかもしれません。」 <br/>*Thật ra trưởng phòng IT đang xem rất thận trọng rủi ro khi triển khai AI recommend... cuối tháng 7 có thể khó.* |
| **ズン** | 「**<ruby>承知<rt>しょうち</rt></ruby>しました。IT 部門長様のご<ruby>懸念点<rt>けねんてん</rt></ruby>、具体的にどのあたりでしょうか**【2】？こちらで white paper や PoC データをご<ruby>用意<rt>ようい</rt></ruby>できれば<ruby>稟議<rt>りんぎ</rt></ruby>の<ruby>助<rt>たす</rt></ruby>けになるかと思います。」 <br/>*Em rõ ạ. Cụ thể trưởng phòng IT lo điểm nào ạ? Bên em có thể chuẩn bị báo cáo kỹ thuật hoặc dữ liệu PoC, có thể hỗ trợ cho ringi ạ.* |
| **大垣** | 「データ<ruby>漏洩<rt>ろうえい</rt></ruby>リスクとモデル<ruby>説明可能性<rt>せつめいかのうせい</rt></ruby>。御社で説明できる資料があれば助かります。」 <br/>*Rủi ro rò rỉ dữ liệu và khả năng giải thích model. Nếu bên em có tài liệu giải thích được thì rất giúp.* |
| **ズン** | 「**白鷗様 IT 部門長様向けに security PoC + AI explainability の brief を 1 週間以内に**【3】。それに合わせて Timeline は 7 月末→ 8 月中旬に<ruby>余裕<rt>よゆう</rt></ruby>を持たせる<ruby>案<rt>あん</rt></ruby>も<ruby>併<rt>あわ</rt></ruby>せてご<ruby>提案<rt>ていあん</rt></ruby>します。」 <br/>*Em sẽ chuẩn bị tài liệu minh chứng bảo mật + tóm tắt khả năng giải thích AI cho trưởng phòng IT bên Hakuō trong 1 tuần. Đồng thời em đề xuất nới thời hạn cuối tháng 7 → giữa tháng 8 cho có dư địa ạ.* |

 **Ghi chú:**
- 【1】**「もう少し詳しく…」** = câu hỏi mở để khách nói rõ thêm. Tránh câu hỏi đóng (có/không).
- 【2】**「具体的にどのあたり」** — đào vấn đề xuống mức vận hành cụ thể. Khách Nhật thường chia sẻ khi đã tạo được niềm tin.
- 【3】**Biến ràng buộc thành giải pháp** — biết trưởng phòng IT lo, đề xuất tài liệu minh chứng bảo mật + dời thời hạn → tăng cơ hội ringi được duyệt.

---

## Cụm từ mẫu
> **「『ちょっと』『少し』『議論があって』はredflag。即押さない、もう少し詳しくお聞かせください。」**
>
> *"ちょっと" / "少し" / "議論があって" = cờ đỏ cảnh báo. KHÔNG bỏ qua, hỏi thêm.*

---

## Tránh
- "ちょっと" 聞き流す → 3 週後 bị bất ngờ
- Giọng tra hỏi "なんでですか？" → khách đóng cửa. Dùng "もう少し詳しく…"
- Ràng buộc lộ ra rồi mà vẫn ép lịch cứng → giọng của bạn thành "không chịu nghe"
- Quên đề xuất giải pháp sau khi đào → khai thác thông tin chỉ còn thuần thu thập, không tạo thêm giá trị

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 隠れた制約 | かくれたせいやく | ẨN CHẾ ƯỚC | Ràng buộc ẩn |
| 議論 | ぎろん | NGHỊ LUẬN | Bàn luận / bất đồng quan điểm |
| 慎重 | しんちょう | THẬN TRỌNG | Thận trọng |
| 漏洩リスク | ろうえいリスク | LẬU TIẾT — | Rủi ro rò rỉ |
| 説明可能性 | せつめいかのうせい | THUYẾT MINH KHẢ NĂNG TÍNH | Khả năng giải thích (của model) |
| 余裕を持たせる | よゆうをもたせる | DƯ DỤNG — | Để dư địa |
| 稟議の助け | りんぎのたすけ | BẨM NGHỊ — TRỢ | Hỗ trợ ringi |', 'system', 13, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000014, 800000007, NULL, 'markdown_book', 'Rule 14 — Phản chiếu + tóm tắt / ミラーリング・要約', '# Rule 14 — Phản chiếu + tóm tắt / ミラーリング・要約
> **Luận điểm.** Sau mỗi khối khai thác (3-5 câu khách trả lời), **phản chiếu lại** bằng câu "つまり〜とのご認識でしょうか" — xác nhận hiểu đúng + cho khách cơ hội điều chỉnh. Hai tác dụng: (1) tránh hiểu sai, (2) khách cảm "được lắng nghe" → hợp tác hơn.
>
> 質問→回答の塊ごとに「つまり〜とのご認識でしょうか」で要約 mirroring。誤解防止 + 相手の信頼獲得。
>
> **Liên quan:** rule 12 (khai thác thông tin), rule 13 (ràng buộc ẩn), sách 03 rule 24 (tóm tắt).

---

## Bối cảnh / 場面
Sau khi đào ràng buộc ẩn của trưởng phòng IT (rule 13), Dũng tiếp tục khai thác thông tin. Trước khi sang câu hỏi ngân sách, tóm tắt lại Vấn đề + Mục tiêu.

---

## Hội thoại XẤU — không phản chiếu, hiểu sai
| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>在庫<rt>ざいこ</rt></ruby><ruby>予測<rt>よそく</rt></ruby><ruby>精度<rt>せいど</rt></ruby> +15%、<ruby>手動<rt>しゅどう</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>半減<rt>はんげん</rt></ruby>です。」 <br/>*Độ chính xác dự báo +15%, thời gian điều chỉnh thủ công giảm một nửa.* |
| **ズン** | 「ありがとうございます。<ruby>次<rt>つぎ</rt></ruby>の<ruby>質問<rt>しつもん</rt></ruby>ですが、<ruby>予算<rt>よさん</rt></ruby>は…」 <br/>*Em cảm ơn ạ. Câu hỏi tiếp, ngân sách...* |
| (1 週間後 deck で) **ズン** | 「在庫予測精度を 15% **以上**<ruby>改善<rt>かいぜん</rt></ruby>する<ruby>提案<rt>ていあん</rt></ruby>です。」 <br/>*(1 tuần sau trong bản đề xuất) Đề xuất cải thiện độ chính xác dự báo từ 15% trở lên ạ.* |
| **大垣** | 「いえ、+15% で<ruby>十分<rt>じゅうぶん</rt></ruby>です。それ<ruby>以上<rt>いじょう</rt></ruby>は cost <ruby>倍<rt>ばい</rt></ruby>以上になるので<ruby>望<rt>のぞ</rt></ruby>んでいません。」 <br/>*Không, +15% là đủ. Trên nữa thì cost gấp đôi, chúng tôi không muốn.* |
| **ズン** | 「あ…」 <br/>*À...* |

**Vì sao xấu:** Dũng nhớ "+15%" thành "15% trở lên" → đề xuất quá mức cần thiết. Không phản chiếu tại chỗ → 1 tuần sau mới phát hiện. Mất thời gian + mất lòng tin.

---

## Hội thoại TỐT — phản chiếu tại chỗ, đúng từng số
| Vai | Câu |
|---------|-----|
| **大垣** | 「在庫予測精度 +15%、手動調整時間半減です。」 <br/>*Độ chính xác dự báo +15%, thời gian điều chỉnh thủ công giảm một nửa.* |
| **ズン** | 「**つまり、<ruby>目標<rt>もくひょう</rt></ruby>は予測精度を<ruby>現状<rt>げんじょう</rt></ruby>から +15%、手動調整時間を 50% <ruby>削減<rt>さくげん</rt></ruby> — この2<ruby>点<rt>てん</rt></ruby>が Phase 3 の<ruby>主要<rt>しゅよう</rt></ruby>KPI、とのご<ruby>認識<rt>にんしき</rt></ruby>でよろしいでしょうか**【1】？」 <br/>*Tức là mục tiêu là độ chính xác dự báo +15% so với hiện tại, thời gian điều chỉnh thủ công -50% — 2 mục này là KPI chính của Phase 3, em hiểu vậy có đúng không ạ?* |
| **大垣** | 「はい。+15% は<ruby>超<rt>こ</rt></ruby>えなくて大丈夫、超えると cost <ruby>上<rt>あ</rt></ruby>がるので<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>困<rt>こま</rt></ruby>る。」 <br/>*Đúng. +15% không cần vượt, vượt là chi phí lên, ngược lại làm khó chúng tôi.* |
| **ズン** | 「**+15% は<ruby>超過<rt>ちょうか</rt></ruby><ruby>不要<rt>ふよう</rt></ruby>、cost との trade-off を<ruby>意識<rt>いしき</rt></ruby>**【2】、<ruby>承知<rt>しょうち</rt></ruby>しました。次に予算<ruby>感<rt>かん</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか？」 <br/>*+15% không cần vượt, cân nhắc đánh đổi với chi phí — em rõ ạ. Tiếp theo cho phép em hỏi cảm giác ngân sách được không ạ?* |

 **Ghi chú:**
- 【1】**「つまり、〜とのご認識でよろしいでしょうか」** = câu phản chiếu mặc định. Đảm bảo khách điều chỉnh nếu sai.
- 【2】**Phản chiếu lại sắc thái khách thêm vào** ("超えなくて大丈夫" → "超過不要") — phải bắt được sắc thái tinh tế, KHÔNG diễn đạt lại quá xa.
- Phản chiếu tại chỗ tốn 10 giây nhưng tiết kiệm cả ngày làm đề xuất sai.

---

## Cụm từ mẫu
> **「つまり〜とのご認識でしょうか — 質問の塊ごとに必ず mirror。」**
>
> *"Tức là... — em hiểu vậy có đúng không ạ" — sau mỗi khối câu hỏi đều phản chiếu.*

---

## Tránh
- Diễn đạt lại quá xa nguyên văn → khách không nhận ra → thấy mình "không nghe"
- Phản chiếu chỉ những gì mình thích, bỏ qua sắc thái khó (vd: "超えなくて大丈夫" mà phản chiếu thành "+15% 以上目指す")
- Phản chiếu sau 30 phút → không kịp điều chỉnh
- Phản chiếu ra dạng câu hỏi đóng yes/no liên tục → giọng điệu tra hỏi. Đan xen với câu hỏi mở.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ミラーリング | ミラーリング | — | Phản chiếu |
| 要約 | ようやく | YẾU ƯỚC | Tóm tắt |
| 認識 | にんしき | NHẬN THỨC | Nhận thức |
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| トレードオフ | トレードオフ | — | Đánh đổi |
| 超過 | ちょうか | SIÊU QUÁ | Vượt quá |
| 超えなくて大丈夫 | こえなくてだいじょうぶ | — | Không cần vượt quá |', 'system', 14, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000015, 800000007, NULL, 'markdown_book', 'Rule 15 — Thăm dò mức độ nhạy cảm giá / 価格感度の探り', '# Rule 15 — Thăm dò mức độ nhạy cảm giá / 価格感度の探り
> **Luận điểm.** Hỏi "予算いくら?" trực tiếp = khách Nhật khó trả lời (cảm giác bị "ép"). Hỏi gián tiếp 3 cách: **(1) Theo khung** ("年度予算のフレームの中で"), **(2) Theo dải** ("¥10M〜¥30M のどの帯域"), **(3) So sánh** ("Phase 2 と比較してどの程度の規模感"). Chọn đúng câu hỏi → khách chia sẻ dải ngân sách 80% trường hợp.
>
> 直接「予算は？」は日本顧客に答えにくい。Frame / Range / Comparable の3パターンで間接的に探る。
>
> **Liên quan:** rule 12 (khai thác thông tin), rule 02 (ZOPA), rule 18 (neo giá).

---

## Bối cảnh / 場面
Trong bước khai thác thông tin (rule 12, phần Ngân sách), Dũng cần thăm dò trần ngân sách của Hakuō mà không làm khách khó chịu.

---

## Hội thoại XẤU — hỏi thẳng "予算は？"
*微妙な間*

| Vai | Câu |
|---------|-----|
| **ズン** | 「ところで、Phase 3 の<ruby>予算<rt>よさん</rt></ruby>はいくらですか？」 <br/>*À mà, ngân sách Phase 3 là bao nhiêu ạ?* |
| **大垣** | 「えっと、それは…まだ<ruby>確定<rt>かくてい</rt></ruby>していなくて…」 <br/>*Ờ, cái đó... chưa chốt...* |
| **中村CFO** | 「そういう<ruby>質問<rt>しつもん</rt></ruby>は<ruby>社内<rt>しゃない</rt></ruby>でもまだ<ruby>議論中<rt>ぎろんちゅう</rt></ruby>なので、お<ruby>答<rt>こた</rt></ruby>えしかねます。」 <br/>*Câu hỏi như vậy nội bộ chúng tôi cũng còn đang thảo luận nên xin phép không trả lời.* |
| **ズン** | 「あ、すみません…」 <br/>*À, em xin lỗi ạ...* |

**Vì sao xấu:** Hỏi thẳng ngân sách = khách Nhật cảm thấy "bị đe dọa", phản xạ là từ chối trả lời. Mất cơ hội thu thập thông tin + tông giọng đi xuống. CFO cấp cao bị khó xử.

---

## Hội thoại TỐT — cách hỏi theo khung + so sánh
| Vai | Câu |
|---------|-----|
| **ズン** | 「**<ruby>予算感<rt>よさんかん</rt></ruby>につきまして** — <ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>新年度<rt>しんねんど</rt></ruby> IT <ruby>投資<rt>とうし</rt></ruby> framework の中で、Phase 3 はどの程度の **<ruby>位置付<rt>いちづ</rt></ruby>け**でしょうか【1】？」 <br/>*Về cảm giác ngân sách — trong khung đầu tư IT năm mới của quý công ty, Phase 3 ở vị trí nào ạ?* |
| **中村CFO** | 「Phase 3 は<ruby>重要案件<rt>じゅうようあんけん</rt></ruby>として<ruby>中位<rt>ちゅうい</rt></ruby>以上に位置付けています。」 <br/>*Phase 3 là dự án quan trọng, định vị ở mức trung vị trở lên.* |
| **ズン** | 「**Phase 2 が ¥14.5M でしたが、Phase 3 は<ruby>機能拡張<rt>きのうかくちょう</rt></ruby>として<ruby>規模感的<rt>きぼかんてき</rt></ruby>にどのあたりを<ruby>想定<rt>そうてい</rt></ruby>されておられますか**【2】？」 <br/>*Phase 2 là ¥14.5M, Phase 3 là mở rộng chức năng thì quý anh dự ở mức quy mô nào ạ?* |
| **中村CFO** | 「Phase 2 <ruby>比<rt>ひ</rt></ruby> 1.2-1.4 <ruby>倍程度<rt>ばいていど</rt></ruby>、つまり ¥17-20M の<ruby>帯域<rt>たいいき</rt></ruby>で考えています。」 <br/>*Khoảng 1.2-1.4 lần Phase 2, tức là dải ¥17-20M.* |
| **ズン** | 「ありがとうございます。**¥17-20M の帯域**、<ruby>参考<rt>さんこう</rt></ruby>にさせていただきます【3】。<ruby>本日<rt>ほんじつ</rt></ruby>の3<ruby>段階<rt>だんかい</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>も、その帯域を<ruby>中心<rt>ちゅうしん</rt></ruby>に位置付けております。」 <br/>*Em cảm ơn ạ. Em xin tham khảo dải ¥17-20M ạ. Đề xuất 3 bậc hôm nay cũng định vị quanh dải đó ạ.* |

 **Ghi chú:**
- 【1】**「位置付け」「フレームの中で」** = câu hỏi định tính, dễ trả lời. Khách chia sẻ thứ hạng đại khái, không phải con số chính xác.
- 【2】**Cách hỏi theo so sánh** dựa trên Phase 2 ¥14.5M (mốc tham chiếu đã biết). Khách dễ trả lời倍数 (bội số) hơn 絶対値 (con số tuyệt đối).
- 【3】**Nhắc lại dải số** "¥17-20M の帯域" để khách xác nhận/đính chính + ghi nhớ vào phiếu ringi.

---

## Cụm từ mẫu
> **「直接『予算は？』ではなく、frame / range / comparable で間接的に探る。」**
>
> *KHÔNG hỏi thẳng "ngân sách bao nhiêu" — dùng khung / dải / so sánh để thăm dò gián tiếp.*

---

## Tránh
- "予算いくらですか" — tông tra hỏi, khách đóng cửa
- Thăm dò giá quá sớm (chưa qua Vấn đề/Mục tiêu) → khách thấy "anh chỉ quan tâm tiền"
- Bỏ qua khi khách trả lời mơ hồ ("検討中") → đẩy thêm 1 cách lịch sự, không lùi
- Quên nhắc lại dải số → khách không cảm thấy đã cam kết

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 価格感度 | かかくかんど | GIÁ CÁCH CẢM ĐỘ | Mức độ nhạy cảm giá |
| 予算感 | よさんかん | DỰ TOÁN CẢM | Cảm giác về ngân sách |
| 位置付け | いちづけ | VỊ TRÍ PHÓ | Vị trí / xếp hạng |
| 帯域 | たいいき | ĐỚI VỰC | Dải |
| 規模感 | きぼかん | QUY MÔ CẢM | Cảm giác quy mô |
| 想定 | そうてい | TƯỞNG ĐỊNH | Dự kiến |
| 中位 | ちゅうい | TRUNG VỊ | Mức trung vị |', 'system', 15, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000016, 800000007, NULL, 'markdown_book', 'Rule 16 — Xác nhận người có quyền quyết định / 決裁者確認', '# Rule 16 — Xác nhận người có quyền quyết định / 決裁者確認
> **Luận điểm.** Tỉnh táo: ai trong phòng là **真の決裁者**, ai chỉ là người gác cổng. Câu hỏi chuẩn: "最終決裁は〜様でいらっしゃいますでしょうか？" + "ご決裁の前に、技術検証や予算審議など、どのようなステップが残っていらっしゃいますか？" Bỏ sót → báo giá sai người, mất thời gian.
>
> 商談中、誰が真の決裁者で誰が người gác cổng か必ず確認。「最終決裁は〜様でしょうか」+「決裁前のステップは何が残っていますか」の2段階質問。
>
> **Liên quan:** rule 04 (khảo sát khách hàng), rule 12 (khai thác thông tin, trục Người quyết định), rule 03 (稟議).

---

## Bối cảnh / 場面
Trong bước Người quyết định của khai thác thông tin (rule 12), Dũng đã hỏi sơ "ai duyệt". Bây giờ xác nhận thứ bậc quyền duyệt thực sự + các bước còn lại.

---

## Hội thoại XẤU — xác nhận sai người
*微妙な顔*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>決裁<rt>けっさい</rt></ruby>は<ruby>大垣<rt>おおがき</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>様ですよね？」 <br/>*Người duyệt là anh Ōgaki phải không ạ?* |
| **大垣** | 「私は<ruby>予算<rt>よさん</rt></ruby> ¥10M までです。¥18M なら<ruby>中村<rt>なかむら</rt></ruby> CFO <ruby>決裁<rt>けっさい</rt></ruby>です。」 <br/>*Tôi quyền tới ¥10M. ¥18M là CFO Nakamura duyệt.* |
| **ズン** | 「あ、そうですか。じゃあ大垣様にも CFO に<ruby>伝<rt>つた</rt></ruby>えていただけますか？」 <br/>*À thế ạ. Vậy phiền anh Ōgaki chuyển cho CFO giúp em được không ạ?* |
| **大垣** | 「いや、CFO <ruby>同席<rt>どうせき</rt></ruby>されてますが…」 <br/>*Ơ, CFO đang ngồi cùng đây mà...* |

**Vì sao xấu:** Xác nhận người quyết định sai → CFO ngồi ngay đó mà bỏ qua → mất 顔 (thể diện) to. Cũng là dấu hiệu Dũng không tìm hiểu kỹ rule 04.

---

## Hội thoại TỐT — xác nhận đầy đủ + các bước còn lại
| Vai | Câu |
|---------|-----|
| **ズン** | 「**<ruby>最終<rt>さいしゅう</rt></ruby><ruby>決裁<rt>けっさい</rt></ruby>につきまして** — <ruby>本件<rt>ほんけん</rt></ruby>は ¥18M <ruby>帯<rt>たい</rt></ruby>ですので、<ruby>中村<rt>なかむら</rt></ruby> CFO 様のご決裁、<ruby>加<rt>くわ</rt></ruby>えて<ruby>取締役会付議<rt>とりしまりやくかいふぎ</rt></ruby>という<ruby>理解<rt>りかい</rt></ruby>でよろしいでしょうか【1】？」 <br/>*Về duyệt cuối — vụ này ở dải ¥18M, em hiểu là anh Nakamura CFO duyệt + đưa lên HĐQT, có đúng không ạ?* |
| **中村CFO** | 「はい、私の決裁 + <ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。¥20M <ruby>超<rt>こ</rt></ruby>えると取締役会<ruby>承認<rt>しょうにん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>になります。」 <br/>*Đúng, tôi duyệt + báo cáo HĐQT. Vượt ¥20M là cần HĐQT phê duyệt.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。**決裁の<ruby>前段階<rt>ぜんだんかい</rt></ruby>で、<ruby>技術<rt>ぎじゅつ</rt></ruby> review、<ruby>予算審議<rt>よさんしんぎ</rt></ruby>、<ruby>法務<rt>ほうむ</rt></ruby> check など、どのようなステップが<ruby>残<rt>のこ</rt></ruby>っていらっしゃいますでしょうか**【2】？」 <br/>*Em rõ ạ. Trước khi duyệt còn bước nào ạ — kiểu xem xét kỹ thuật, thẩm định ngân sách, hay kiểm tra pháp lý ạ?* |
| **大垣** | 「IT <ruby>部門長<rt>ぶもんちょう</rt></ruby> technical review (rule 13 で出た件)、<ruby>経理部<rt>けいりぶ</rt></ruby>の予算 cycle 審議、そして<ruby>最終的<rt>さいしゅうてき</rt></ruby>に法務 contract review。3 ステップで、<ruby>合計<rt>ごうけい</rt></ruby> 3 <ruby>週間<rt>しゅうかん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>です。」 <br/>*Trưởng phòng IT xem xét kỹ thuật (vấn đề nêu ở rule 13), phòng kế toán thẩm định chu kỳ ngân sách, cuối cùng là pháp chế xem xét hợp đồng. 3 bước, tổng khoảng 3 tuần.* |
| **ズン** | 「**3 ステップ・3 週間、加えて取締役会の付議タイミング**【3】、ありがとうございます。それを<ruby>踏<rt>ふ</rt></ruby>まえて Timeline を<ruby>組<rt>く</rt></ruby>み<ruby>直<rt>なお</rt></ruby>します。」 <br/>*3 bước / 3 tuần, kèm thời điểm đưa lên HĐQT — em cảm ơn ạ. Em sẽ ghép lại thời hạn dựa trên đó ạ.* |

 **Ghi chú:**
- 【1】**Xác nhận thẩm quyền quyết định + tuyến báo cáo** — không chỉ "ai duyệt" mà cả "ai cần báo cáo" (取締役会).
- 【2】**Câu hỏi về các bước còn lại** = mấu chốt. Khám phá xem xét kỹ thuật / thẩm định ngân sách / kiểm tra pháp lý là 3 bước phổ biến, mỗi bước 1 tuần.
- 【3】**Nhắc lại bước + thời gian** — xác nhận hiểu đúng + dùng làm cơ sở khi lên thời hạn.

---

## Cụm từ mẫu
> **「<ruby>最終<rt>さいしゅう</rt></ruby><ruby>決裁者<rt>けっさいしゃ</rt></ruby> + <ruby>残<rt>のこ</rt></ruby>ステップ + <ruby>期間<rt>きかん</rt></ruby> を<ruby>明示的<rt>めいじてき</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>。<ruby>曖昧<rt>あいまい</rt></ruby>なまま<ruby>提案<rt>ていあん</rt></ruby>するとtimeline<ruby>崩壊<rt>ほうかい</rt></ruby>。」**
>
> *Người quyết định + các bước còn lại + thời gian — xác nhận rõ. Mơ hồ là thời hạn vỡ.*

---

## Tránh
- Đoán người quyết định → báo giá sai người
- Hỏi "ai duyệt" mà không hỏi "còn bước nào" → biết tên nhưng không biết cách
- Người cấp cao bên khách (CFO) ngồi đó mà nhìn về phía 部長 → mất 顔 (thể diện)
- Quên nhắc lại các bước → khách không thấy cam kết với thời hạn

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 決裁者 | けっさいしゃ | QUYẾT TÀI GIẢ | Người duyệt |
| 最終決裁 | さいしゅうけっさい | TỐI CHUNG QUYẾT TÀI | Duyệt cuối |
| 取締役会付議 | とりしまりやくかいふぎ | THỦ ĐẾ DỊCH HỘI PHÓ NGHỊ | Đưa lên hội đồng quản trị |
| 技術レビュー | ぎじゅつレビュー | KỸ THUẬT — | Xem xét kỹ thuật |
| 予算審議 | よさんしんぎ | DỰ TOÁN THẨM NGHỊ | Thẩm định ngân sách |
| 法務チェック | ほうむチェック | PHÁP VỤ — | Kiểm tra pháp lý |
| 経理部 | けいりぶ | KINH LÝ BỘ | Phòng kế toán |', 'system', 16, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000017, 800000007, NULL, 'markdown_book', 'Rule 17 — Phân bổ thời gian thảo luận / 時間管理', '# Rule 17 — Phân bổ thời gian thảo luận / 時間管理
> **Luận điểm.** Đàm phán 60 phút mà giai đoạn khai thác thông tin ngốn 50 phút → không còn thời gian cho giá + chốt. Khung thời gian mỗi phần (10/30/20) đã chốt ở rule 11. Khi khai thác vượt 25 phút, **chuyển mềm** "そろそろ次の段階に" — không "切ります" cứng.
>
> <ruby>商談時間<rt>しょうだんじかん</rt></ruby>は<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>合意<rt>ごうい</rt></ruby>した<ruby>配分<rt>はいぶん</rt></ruby> (10/30/20分) を<ruby>守<rt>まも</rt></ruby>る。soft transition で<ruby>次<rt>つぎ</rt></ruby>フェーズへ。<ruby>固<rt>かた</rt></ruby>い「<ruby>切<rt>き</rt></ruby>ります」は relationship を<ruby>傷<rt>きず</rt></ruby>つける。
>
> **Liên quan:** sách 05 rule_13, rule 11 (chương trình đã xác nhận), rule 18 (anchoring 開始).

---

## Bối cảnh / 場面
Khai thác thông tin rule 12-16 đã ngốn 30 phút (đúng chương trình). Dũng cần chuyển mềm sang giai đoạn đề xuất + giá (10 phút trình bày + 20 phút bàn giá). 大垣 vẫn muốn hỏi thêm.

---

## Hội thoại XẤU — cứng nhắc cắt + để chạy quá giờ
*時計見て · 微妙に*

| Vai | Câu |
|---------|-----|
| **大垣** | 「あ、もう1つ<ruby>伺<rt>うかが</rt></ruby>いたいんですが、AI モデルの<ruby>再学習頻度<rt>さいがくしゅうひんど</rt></ruby>は…」 <br/>*À, tôi muốn hỏi thêm 1 ý — tần suất huấn luyện lại AI model là...* |
| **ズン** | 「すみません、もう discovery <ruby>時間<rt>じかん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりですので、<ruby>次<rt>つぎ</rt></ruby>へ<ruby>進<rt>すす</rt></ruby>みます。」 <br/>*Em xin lỗi, hết thời gian khai thác thông tin rồi nên em chuyển tiếp ạ.* |
| **大垣** | 「あ、はい…」 <br/>*À, vâng...* |

**Vì sao xấu:** Cứng "終わりですので、次へ進みます" = lạnh, mất quan hệ. 大垣 cảm "không được nghe". Cũng không ghi nhận câu hỏi quan trọng của khách.

**Trường hợp xấu 2** (ngược lại): để giai đoạn khai thác thông tin chạy quá giờ → 60 phút mà chưa đến giá → kết thúc cuộc họp chưa báo giá → buổi họp sau phải làm lại.

---

## Hội thoại TỐT — chuyển mềm + tạm gác câu hỏi
| Vai | Câu |
|---------|-----|
| **大垣** | 「あ、もう1つ伺いたいんですが、AI モデルの再学習頻度は…」 <br/>*À, tôi muốn hỏi thêm 1 ý — tần suất huấn luyện lại AI model là...* |
| **ズン** | 「**いいご<ruby>質問<rt>しつもん</rt></ruby>ありがとうございます**。再学習頻度は<ruby>重要点<rt>じゅうようてん</rt></ruby>なので、**price の<ruby>段階<rt>だんかい</rt></ruby>にあわせて<ruby>詳<rt>くわ</rt></ruby>しくご<ruby>説明<rt>せつめい</rt></ruby>させていただきます**【1】 — モデル<ruby>運用<rt>うんよう</rt></ruby> cost に<ruby>直結<rt>ちょっけつ</rt></ruby>しますので。」 <br/>*Câu hỏi rất hay ạ, em cảm ơn. Tần suất huấn luyện lại là điểm quan trọng nên xin phép em giải thích kỹ ở phần giá ạ — gắn liền với chi phí vận hành model.* |
| **ズン** | 「**そろそろ<ruby>提案<rt>ていあん</rt></ruby>の<ruby>概要<rt>がいよう</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>らせていただいてもよろしいでしょうか**【2】？10分でご説明、その<ruby>後<rt>ご</rt></ruby>の Q&A + <ruby>価格議論<rt>かかくぎろん</rt></ruby>で<ruby>残<rt>のこ</rt></ruby>り時間を<ruby>使<rt>つか</rt></ruby>う<ruby>想定<rt>そうてい</rt></ruby>です。」 <br/>*Có lẽ em xin phép chuyển sang tổng quan đề xuất ạ? 10 phút trình bày, sau đó dùng thời gian còn lại cho Q&A + bàn giá ạ.* |
| **大垣** | 「お<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Mời em.* |
| **ズン** | 「**お時間 30 分<ruby>経過<rt>けいか</rt></ruby>、agenda <ruby>通<rt>どお</rt></ruby>りに<ruby>進<rt>すす</rt></ruby>んでおります**【3】。提案は3 段階でご<ruby>用意<rt>ようい</rt></ruby>しております…」 <br/>*Đã trôi qua 30 phút, đang đúng chương trình ạ. Em đã chuẩn bị đề xuất 3 bậc...* |

 **Ghi chú:**
- 【1】**Tạm gác câu hỏi chứ không bỏ** — "ở phần tiếp theo sẽ giải thích kỹ" = tôn trọng câu hỏi + kiểm soát thời gian. Khách thấy được coi trọng.
- 【2】**「そろそろ〜よろしいでしょうか」** = câu chuyển mềm mặc định. Khác với "終わりですので".
- 【3】**Đọc tiến độ thời gian thành tiếng** — gọi tên tiến độ chương trình giúp cả 2 bên cùng theo dõi thời gian. Cũng là chiêu để giữ thế chủ động.

---

## Cụm từ mẫu
> **「『そろそろ<ruby>次<rt>つぎ</rt></ruby>へ』+ 質問は park。<ruby>固<rt>かた</rt></ruby>い『時間ですので』は relationship <ruby>傷<rt>きず</rt></ruby>つける。」**
>
> *"Có lẽ giờ chuyển sang phần tiếp..." + tạm gác câu hỏi. KHÔNG cứng "đã hết giờ". Cứng = hại quan hệ.*

---

## Tránh
- 「時間ですので切ります」cứng → khách lạnh
- Để khai thác thông tin chạy quá 50 phút → không đến giá
- Tạm gác câu hỏi rồi quên không quay lại trong Q&A → khách cảm thấy bị phớt lờ
- Không gọi tên tiến độ thời gian theo chương trình → cả 2 bên trôi dạt khỏi lịch trình

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 時間管理 | じかんかんり | THỜI GIAN QUẢN LÝ | Quản lý thời gian |
| そろそろ | そろそろ | — | Có lẽ giờ / sắp đến lúc |
| 移らせていただく | うつらせていただく | CHUYỂN — | Cho phép em chuyển |
| 提案の概要 | ていあんのがいよう | ĐỀ ÁN KHÁI YẾU | Tổng quan đề xuất |
| 再学習頻度 | さいがくしゅうひんど | TÁI HỌC TẬP TẦN ĐỘ | Tần suất huấn luyện lại |
| 想定 | そうてい | TƯỞNG ĐỊNH | Dự kiến |
| 経過 | けいか | KINH QUÁ | Đã trôi qua |', 'system', 17, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000018, 800000007, NULL, 'markdown_book', 'Rule 18 — Neo giá trước hay chờ? / アンカリングの判断', '# Rule 18 — Neo giá trước hay chờ? / アンカリングの判断
> **Luận điểm.** Có 2 trường phái: **(1) Ra giá trước** (neo cao trước, tận dụng thiên kiến mỏ neo) — tốt khi mình có ước lượng ZOPA tốt, **(2) Để khách ra giá trước** (để khách báo giá trước) — tốt khi mình KHÔNG biết mức trần của khách. **Phase 3 đã có ZOPA → ra giá trước**. Quy tắc: **biết ZOPA → neo giá; mù ZOPA → chờ**.
>
> アンカリング判断は ZOPA 推定の精度で決まる。ZOPA を把握していれば go first (anchoring bias を活用)。把握不足なら let them go first で intel を取る。
>
> **Liên quan:** rule 02 (ZOPA), rule 19 (価格提示), rule 27 (再アンカリング).

---

## Bối cảnh / 場面
Sau soft transition (rule 17), Dũng vào phase 価格. Tuấn thì thầm "để họ báo giá trước cho an toàn" nhưng Dũng đã có ZOPA vững → quyết go first.

---

## Hội thoại XẤU — để khách ra giá trước khi đã có ZOPA tốt
*小声 · 同意 · 困*

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「ズン、こっちが<ruby>先<rt>さき</rt></ruby>に<ruby>値段<rt>ねだん</rt></ruby><ruby>出<rt>だ</rt></ruby>すと<ruby>足元<rt>あしもと</rt></ruby>を<ruby>見<rt>み</rt></ruby>られる。<ruby>先<rt>さき</rt></ruby>に<ruby>向<rt>む</rt></ruby>こうに<ruby>言<rt>い</rt></ruby>わせよう。」 <br/>*Dũng, mình báo giá trước là bị bắt thóp. Để bên kia báo trước đi.* |
| **ズン** | 「では<ruby>大垣<rt>おおがき</rt></ruby>様、Phase 3 の **<ruby>予算感<rt>よさんかん</rt></ruby>はおいくらでしたら<ruby>検討<rt>けんとう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしょうか**？」 <br/>*Vậy thưa anh Ōgaki, cảm nhận ngân sách Phase 3 ở mức nào thì quý cty xem xét được ạ?* |
| **大垣** | 「<ruby>我々<rt>われわれ</rt></ruby>の<ruby>希望<rt>きぼう</rt></ruby>は ¥14M <ruby>程度<rt>ていど</rt></ruby>です。」 <br/>*Mong muốn bên tôi tầm ¥14M.* |
| **ズン** | 「えっ、¥14M ですか…」 <br/>*Ơ, ¥14M ạ...* |

**Vì sao xấu:** Dũng đã có bản đồ ZOPA (rule 02) — biết trần ¥17M. Để khách ra giá trước → khách neo thấp ¥14M → "cuộc giằng neo giá" không có lợi cho mình. Lúc này phải ra giá trước ¥19M để kéo điểm giữa lên ~¥17-18M.

---

## Hội thoại TỐT — ra giá trước với neo cao có cơ sở
*deck slide 価格表 · 沈黙2秒 · 沈黙保持 5秒*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>価格<rt>かかく</rt></ruby>について、<ruby>本日<rt>ほんじつ</rt></ruby> 3 <ruby>段階<rt>だんかい</rt></ruby>でご<ruby>提案<rt>ていあん</rt></ruby>させていただいております。**まずは Better tier — ¥18M、Anchor として Best tier ¥24M も<ruby>併<rt>あわ</rt></ruby>せて**【1】、ご<ruby>検討<rt>けんとう</rt></ruby>の tài liệu としてお<ruby>持<rt>も</rt></ruby>ちしました。」 <br/>*Về giá, hôm nay em đề xuất 3 bậc ạ. Trước hết là Better ¥18M, kèm Best ¥24M làm mỏ neo, em mang theo làm tài liệu tham khảo để quý anh xem xét ạ.* |
| **ズン** | 「**¥18M の<ruby>根拠<rt>こんきょ</rt></ruby>は**、Phase 2 <ruby>比<rt>ひ</rt></ruby> +24%、AI レコメンドエンジンの<ruby>開発<rt>かいはつ</rt></ruby><ruby>工数<rt>こうすう</rt></ruby> + <ruby>専任<rt>せんにん</rt></ruby> PM + SLA 99.9% を<ruby>含<rt>ふく</rt></ruby>めた<ruby>構成<rt>こうせい</rt></ruby>。**<ruby>御社<rt>おんしゃ</rt></ruby>の +¥80M GMV インパクトに<ruby>対<rt>たい</rt></ruby>し ROI 4.4 <ruby>倍<rt>ばい</rt></ruby>**【2】に<ruby>位置<rt>いち</rt></ruby>します。」 <br/>*Cơ sở ¥18M: tăng 24% so Phase 2, gồm dev AI recommend engine + PM chuyên trách + SLA 99.9%. So với impact +¥80M GMV của quý cty, ROI ở mức 4.4 lần ạ.* |
| **大垣** | 「…¥18M ですね。」 <br/>*...¥18M nhỉ.* |
| **ズン** | (<ruby>沈黙<rt>ちんもく</rt></ruby>) <br/>*(im lặng)* |
| **大垣** | 「<ruby>悪<rt>わる</rt></ruby>くない<ruby>数字<rt>すうじ</rt></ruby>ですが、<ruby>社内<rt>しゃない</rt></ruby>で<ruby>議論<rt>ぎろん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。」 <br/>*Con số không tệ, nhưng cần thảo luận nội bộ.* |

 **Ghi chú:**
- 【1】**Anchor 構造**: 出 Better (target) + Best (high anchor). 両方見せると Better が "現実解" に見える (rule 06 連携).
- 【2】**根拠と一緒に anchor** — anchor 単独より 30% 効果増. ROI 倍率は CFO に響く.
- **Go first 適用条件**: (a) ZOPA estimate ある, (b) 根拠データ揃ってる, (c) 自分が言葉に詰まらない練習済み.
- **Let them go first 適用条件**: 新規顧客で予算 unknown, 競合状況不明, 商品カテゴリ giá thị trường 不安.

---

## Cụm từ mẫu
> **「ZOPA 把握済み → go first で anchor 高め。把握不足 → let them go first で intel 取る。」**
>
> *Đã có ZOPA → ra giá trước neo cao. Mù ZOPA → để khách báo trước để lấy thông tin.*

---

## Tránh
- Ra giá trước khi ZOPA chưa lập bản đồ → neo sai cả trần lẫn sàn
- Báo giá neo cao mà không kèm cơ sở → khách dễ thấy "vô lý"
- Sau khi neo giá, lập tức nói thêm để lấp im lặng → triệt tiêu hiệu ứng neo giá (rule 25)
- Để khách báo giá trước rồi mới ra neo cao hơn — vẫn có hiệu lực nhưng yếu hơn 30-50%

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| アンカリング | アンカリング | — | Anchoring |
| 足元を見られる | あしもとをみられる | — | Bị bắt thóp |
| 根拠 | こんきょ | CĂN CỨ | Cơ sở / lý do |
| 構成 | こうせい | CẤU THÀNH | Cấu thành |
| ROI 倍率 | ROIばいりつ | — | Bội số ROI |
| 議論が必要 | ぎろんがひつよう | NGHỊ LUẬN TẤT YẾU | Cần thảo luận |
| 効果 | こうか | HIỆU QUẢ | Hiệu lực |', 'system', 18, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000019, 800000007, NULL, 'markdown_book', 'Rule 19 — Cấu trúc câu đề xuất giá / 価格提示フレーズ', '# Rule 19 — Cấu trúc câu đề xuất giá / 価格提示フレーズ
> **Luận điểm.** Khi báo giá, tránh "¥18M です" trần. Cấu trúc 4 phần: **(1) Khung dẫn** (まずは〜の価格帯で), **(2) Number** (¥18M), **(3) Justification** (cơ sở), **(4) Chuyển lượt** (chuyển sang khách phản hồi). Câu trần ngắn → tông giọng hời hợt. 4-part phrase → giọng chuyên nghiệp + giảm phản kháng.
>
> 価格提示は4要素 (Khung dẫn・Number・Justification・Chuyển lượt) で構成。「¥18M です」だけでは tông giọng が軽くなる。
>
> **Liên quan:** rule 18 (anchoring), rule 20 (高い対応), rule 25 (沈黙).

---

## Bối cảnh / 場面
Sau anchor (rule 18), khách phản kháng. Dũng cần câu chuẩn cho đối đề ¥17.5M kèm điều kiện 契約2年化 (đổi lấy hợp đồng 2 năm).

---

## Hội thoại XẤU — báo giá trần ngắn
| Vai | Câu |
|---------|-----|
| **大垣** | 「¥18M は<ruby>厳<rt>きび</rt></ruby>しい。¥15M でいかがですか？」 <br/>*¥18M căng quá. ¥15M nhé?* |
| **ズン** | 「えーと、¥17M で。」 <br/>*Ờ, ¥17M ạ.* |
| **大垣** | 「¥17M ですか…」 <br/>*¥17M ạ...* |

**Vì sao xấu:** Báo giá trần "¥17M で" → 大垣 đọc là "nhượng bộ dễ dàng", ép tiếp. Không có cơ sở, không có điều kiện đổi. Mất đòn bẩy.

---

## Hội thoại TỐT — câu đề xuất giá 4 phần
*沈黙3秒*

| Vai | Câu |
|---------|-----|
| **大垣** | 「¥18M は<ruby>厳<rt>きび</rt></ruby>しい。¥15M でいかがですか？」 <br/>*¥18M căng quá. ¥15M nhé?* |
| **ズン** | 「ご<ruby>指摘<rt>してき</rt></ruby>の点、もっともでございます【1】。**Khung dẫn**: <ruby>御社<rt>おんしゃ</rt></ruby>のコスト<ruby>圧縮<rt>あっしゅく</rt></ruby><ruby>方針<rt>ほうしん</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>まえ、<ruby>構成<rt>こうせい</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>して<ruby>再提案<rt>さいていあん</rt></ruby>いたします。**金額**: **¥17.5M**。**根拠**: AI レコメンドエンジン coreは<ruby>維持<rt>いじ</rt></ruby>、<ruby>但<rt>ただ</rt></ruby>し dashboard カスタム部分を Phase 2 のテンプレート<ruby>流用<rt>りゅうよう</rt></ruby> (-<ruby>工数<rt>こうすう</rt></ruby> 8%)【2】。**条件として**: <ruby>契約期間<rt>けいやくきかん</rt></ruby>を 2 <ruby>年契約<rt>ねんけいやく</rt></ruby>へ<ruby>延長<rt>えんちょう</rt></ruby>していただければ、この<ruby>価格<rt>かかく</rt></ruby>でご<ruby>提供<rt>ていきょう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です【3】。」 <br/>*Em xin tiếp thu ý kiến quý anh ạ. Khung dẫn: dựa trên phương châm nén chi phí của quý công ty, em xem lại cấu thành để đề xuất lại. Số tiền: ¥17.5M. Cơ sở: giữ core AI recommend engine, nhưng phần dashboard tùy chỉnh dùng lại template Phase 2, giảm effort 8%. Điều kiện: nếu kéo hợp đồng lên 2 năm, em có thể cung cấp ở mức giá này ạ.* |
| **大垣** | 「2 <ruby>年契約<rt>ねんけいやく</rt></ruby>の点、<ruby>確認<rt>かくにん</rt></ruby>が必要です。」 <br/>*Vụ hợp đồng 2 năm cần xác nhận lại.* |
| **ズン** | 「もちろんです、お時間をお<ruby>取<rt>と</rt></ruby>りいただいて<ruby>結構<rt>けっこう</rt></ruby>です。」 <br/>*Tất nhiên ạ, quý anh cứ dành thời gian xem xét ạ.* |

 **Ghi chú:**
- 【1】**Câu bắc cầu** "ご指摘の点、もっともでございます" — ghi nhận ý khách trước khi counter (rule 26 cũng dùng).
- 【2】**Justification cụ thể** — "Phase 2 テンプレート流用 -8%" thay vì "ちょっと安く". Khách Nhật tin con số.
- 【3】**Trade rõ ràng** "2 年契約していただければ" — counter có điều kiện đi kèm (rule 09 trade-back).

---

## Cụm từ mẫu
> **「<ruby>価格提示<rt>かかくていじ</rt></ruby>は4<ruby>要素<rt>ようそ</rt></ruby> (Khung dẫn・Number・Justification・Trade)。1<ruby>要素<rt>ようそ</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>けると leverage <ruby>失<rt>うしな</rt></ruby>う。」**
>
> *Đề xuất giá 4 yếu tố: Khung dẫn / Số tiền / Cơ sở / Điều kiện đổi. Thiếu 1 yếu tố là mất đòn bẩy.*

---

## Tránh
- "¥17M で" trần → tín hiệu nhượng bộ dễ dàng
- Đề xuất giá không có điều kiện đổi → nhượng bộ một chiều (rule 09)
- Cơ sở mơ hồ "ちょっと安く" → không tạo được niềm tin
- Quên câu bắc cầu trước khi đưa đối đề → tông giọng đối đầu

---

## Danh mục kiểm tra — Đề xuất giá
---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 価格提示 | かかくていじ | GIÁ CÁCH ĐỀ THỊ | Đề xuất giá |
| ご指摘 | ごしてき | CHỈ TRÍCH | Lời nhận xét (kính ngữ) |
| もっとも | もっとも | — | Có lý / hợp lý |
| 構成見直し | こうせいみなおし | CẤU THÀNH KIẾN TRỰC | Xem lại cấu thành |
| 流用 | りゅうよう | LƯU DỤNG | Tận dụng / dùng lại |
| 工数 | こうすう | CÔNG SỐ | Effort / man-day |
| 契約期間延長 | けいやくきかんえんちょう | KHẾ ƯỚC KỲ GIAN DIÊN TRƯỜNG | Kéo dài thời hạn hợp đồng |', 'system', 19, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000020, 800000007, NULL, 'markdown_book', 'Rule 20 — Đối phó với "高い" / 「高い」への対応', '# Rule 20 — Đối phó với "高い" / 「高い」への対応
> **Luận điểm.** "高い (đắt)" = dấu hiệu khách quan tâm, KHÔNG phải từ chối. Công thức xử lý 3 bước: **(1) Ghi nhận** ("ご指摘の点、もっともでございます"), **(2) Đổi góc nhìn** (chuyển từ giá sang giá trị/ROI/chi phí khi không hành động), **(3) Phương án** (đưa kịch bản điều chỉnh có đánh đổi). Nhảy giảm giá ngay = rò giá trị.
>
> 「高い」は購買意欲のサイン、reject ではない。3ステップ (Ghi nhận → Đổi góc nhìn → Phương án) で対応。即値引きは弱さ暴露。
>
> **Liên quan:** rule 19 (価格提示), rule 21 (scope giảm), rule 23 (ROI), rule 27 (再アンカリング).

---

## Bối cảnh / 場面
中村 CFO push back nặng "¥17.5M も高い". Dũng dùng mô hình 3 bước, không vội giảm giá.

---

## Hội thoại XẤU — phản xạ giảm giá
*慌 · 沈黙*

| Vai | Câu |
|---------|-----|
| **中村CFO** | 「¥17.5M も高いですね。コスト<ruby>圧縮<rt>あっしゅく</rt></ruby>中なので。」 <br/>*¥17.5M cũng đắt nhỉ. Đang nén chi phí mà.* |
| **ズン** | 「あ、では ¥16M でいかがでしょうか？」 <br/>*À, vậy ¥16M được không ạ?* |
| **中村CFO** | 「…¥16M でも高い。」 <br/>*...¥16M cũng đắt.* |
| **ズン** | 「では ¥15M…」 <br/>*Vậy ¥15M ạ...* |

**Vì sao xấu:** Phản xạ giảm 1.5M trong 5 giây = dấu hiệu "còn dư địa". CFO sẽ ép tiếp xuống ¥13M. Mất 2M+ chỉ vì mất bình tĩnh. Không ghi nhận, không đổi góc nhìn.

---

## Hội thoại TỐT — Ghi nhận → Đổi góc nhìn → Phương án
*沈黙2秒、その後 · 考え*

| Vai | Câu |
|---------|-----|
| **中村CFO** | 「¥17.5M も高いですね。コスト圧縮中なので。」 <br/>*¥17.5M cũng đắt nhỉ. Đang nén chi phí mà.* |
| **ズン** | 「**ご<ruby>指摘<rt>してき</rt></ruby>の点、もっともでございます**【1】。コスト圧縮の<ruby>方針<rt>ほうしん</rt></ruby>、十分に<ruby>理解<rt>りかい</rt></ruby>しております。」 <br/>*Em xin tiếp thu ý kiến quý anh ạ. Phương châm nén chi phí em hiểu đầy đủ ạ.* |
| **ズン** | 「**ただ少し別の<ruby>角度<rt>かくど</rt></ruby>から**【2】 — Phase 3 を<ruby>導入<rt>どうにゅう</rt></ruby>されない場合、現在の手動<ruby>在庫調整<rt>ざいこちょうせい</rt></ruby> (営業部 5 名 × 年 240日 × 2 時間/日) ≒ 年 2,400 時間の<ruby>運用工数<rt>うんようこうすう</rt></ruby>が<ruby>継続<rt>けいぞく</rt></ruby>します。¥17.5M を 2 年で割れば月 ¥730K、運用工数<ruby>削減<rt>さくげん</rt></ruby> ¥1.2M/月 と<ruby>比較<rt>ひかく</rt></ruby>すると **lợi thuần ¥470K/月**【3】。」 <br/>*Tuy nhiên xin phép em nhìn từ góc khác — không triển khai Phase 3 thì điều chỉnh tồn kho thủ công (5 KD × 240 ngày × 2h/ngày) ≒ 2.400h chi phí vận hành/năm tiếp tục. ¥17.5M chia 2 năm là ¥730K/tháng, so với giảm chi phí vận hành ¥1.2M/tháng — lợi thuần ¥470K/tháng ạ.* |
| **ズン** | 「**そのうえで、ご<ruby>予算面<rt>よさんめん</rt></ruby>でのご<ruby>懸念<rt>けねん</rt></ruby>があれば、以下のオプション**【4】**: (A) 2 年<ruby>契約<rt>けいやく</rt></ruby>で ¥17.5M <ruby>維持<rt>いじ</rt></ruby>、(B) 1 年契約 + phạm vi -10% で ¥16M、(C) Best tier に拡大 ¥24M で AI dashboard 込み。御社のコスト感に合うのはどちらでしょうか？」 <br/>*Trên cơ sở đó, nếu vẫn lo về ngân sách, các phương án như sau: (A) Hợp đồng 2 năm giữ ¥17.5M, (B) Hợp đồng 1 năm + phạm vi -10% còn ¥16M, (C) Mở rộng lên Best ¥24M kèm AI bảng theo dõi. Phương án nào phù hợp cảm giác chi phí của quý công ty ạ?* |
| **中村CFO** | 「(A) の 2 年契約<ruby>案<rt>あん</rt></ruby>、社内で<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り<ruby>検討<rt>けんとう</rt></ruby>します。」 <br/>*Phương án (A) hợp đồng 2 năm, chúng tôi mang về xem xét nội bộ.* |

 **Ghi chú:**
- 【1】**Ghi nhận trước** — không nhảy ngay vào phòng thủ. Câu "ご指摘の点、もっともでございます" dùng được mọi tình huống.
- 【2】**Câu đổi góc nhìn** "別の角度から" — chuyển từ "giá cao" sang "chi phí khi không hành động" / "so sánh ROI".
- 【3】**Đổi góc nhìn bằng số cụ thể** — 2.400 時間, ¥730K/月, ¥1.2M/月, lợi thuần +¥470K/月. CFO tin con số.
- 【4】**Phương án phải 3, không phải 1** — kiến trúc lựa chọn. Khách chọn thay vì từ chối toàn bộ.

---

## Cụm từ mẫu
> **「『高い』は購買意欲。Ghi nhận → Đổi góc nhìn → 3 Phương án の3拍。即値引きは弱さの暴露。」**
>
> *"Đắt" là dấu hiệu muốn mua. Ghi nhận → Đổi góc nhìn → 3 phương án — 3 nhịp. Giảm ngay = phơi bày yếu thế.*

---

## Tránh
- 即値引き → rò giá trị, khách ép tiếp
- Phản bác lại "高くないですよ" → đối đầu, mất 顔 (thể diện)
- Đổi góc nhìn mơ hồ "có giá trị lắm ạ" → CFO không tin
- Đưa 1 phương án duy nhất → khách chỉ có chọn hay không

---

## Danh mục kiểm tra — Xử lý "đắt"
---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 高い | たかい | — | Đắt |
| 角度 | かくど | GIÁC ĐỘ | Góc nhìn |
| 別の角度から | べつのかくどから | BIỆT GIÁC ĐỘ | Từ góc nhìn khác |
| 運用工数 | うんようこうすう | VẬN DỤNG CÔNG SỐ | Công sức vận hành |
| 在庫調整 | ざいこちょうせい | TẠI KHỐ ĐIỀU CHỈNH | Điều chỉnh tồn kho |
| lợi thuần | ネット・ポジティブ | — | Lợi nhuận dương thuần |
| 予算面 | よさんめん | DỰ TOÁN DIỆN | Mặt ngân sách |
| 持ち帰り検討 | もちかえりけんとう | KIỂM THẢO | Mang về xem xét |', 'system', 20, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000021, 800000007, NULL, 'markdown_book', 'Rule 21 — Giảm scope thay vì giảm giá / 価格でなくスコープを削る', '# Rule 21 — Giảm scope thay vì giảm giá / 価格でなくスコープを削る
> **Luận điểm.** Giảm đơn giá ¥18M → ¥16M = -11% biên lợi nhuận **không hồi phục được**. Giảm phạm vi (cắt tính năng, lùi hạng mục bàn giao, giảm SLA) → giữ đơn giá, giảm tổng tiền — về tài chính tương đương với khách, về biên lợi nhuận của mình **giữ nguyên 26%**. Khách Nhật dễ chấp nhận khi đề xuất rõ ràng.
>
> 「スコープ -10% で ¥17M」は「¥17M ベタ値引き」より粗利率を保つ。価格でなくスコープを交渉軸にする習慣。
>
> **Liên quan:** rule 19 (価格提示), rule 09 (concession plan), rule 22 (bundling).

---

## Bối cảnh / 場面
CFO chọn phương án (A) ¥17.5M 2 năm (rule 20). Nhưng 大垣 ép thêm "¥16M trên 1 năm". Dũng phải đáp trả bằng cắt phạm vi chứ không phải giảm giá thuần.

---

## Hội thoại XẤU — giảm giá thuần, mất biên lợi nhuận
*計算なし*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>中村<rt>なかむら</rt></ruby> CFO は 2 <ruby>年<rt>ねん</rt></ruby><ruby>契約<rt>けいやく</rt></ruby> OK、<ruby>但<rt>ただ</rt></ruby>し 1 年契約<ruby>版<rt>ばん</rt></ruby>だと ¥16M でいけませんか？」 <br/>*CFO Nakamura OK hợp đồng 2 năm, nhưng bản 1 năm thì ¥16M được không?* |
| **ズン** | 「えーと、では ¥16M で。」 <br/>*Ờ, vậy ¥16M ạ.* |
| (<ruby>内部<rt>ないぶ</rt></ruby> Slack <ruby>翌日<rt>よくじつ</rt></ruby>) **ハー CTO** | 「¥16M で<ruby>同<rt>おな</rt></ruby>じ scope は<ruby>粗利<rt>あらり</rt></ruby> 14%、Phase 2 と同じスタッフ<ruby>配置<rt>はいち</rt></ruby><ruby>不可<rt>ふか</rt></ruby>。なんで scope そのままで<ruby>値引<rt>ねび</rt></ruby>きした？」 <br/>*(Slack nội bộ hôm sau) ¥16M giữ nguyên scope là margin 14%, không bố trí staff như Phase 2 được. Sao lại giảm giá mà giữ scope?* |

**Vì sao xấu:** Giảm ¥1.5M nhưng phạm vi vẫn nguyên → biên lợi nhuận từ 26% xuống 14%. Tổn thất tài chính nội bộ. Đáng ra phải cắt phạm vi tương đương để giữ margin.

---

## Hội thoại TỐT — đáp trả bằng cắt phạm vi
| Vai | Câu |
|---------|-----|
| **大垣** | 「中村 CFO は 2 年契約 OK、但し 1 年契約版だと ¥16M でいけませんか？」 <br/>*CFO Nakamura OK hợp đồng 2 năm, nhưng bản 1 năm thì ¥16M được không?* |
| **ズン** | 「ご<ruby>検討<rt>けんとう</rt></ruby>ありがとうございます。1 年契約 + ¥16M でしたら、**phạm vi <ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>**【1】になります。<ruby>具体的<rt>ぐたいてき</rt></ruby>には、AI dashboard カスタム<ruby>部分<rt>ぶぶん</rt></ruby> (-<ruby>工数<rt>こうすう</rt></ruby> ¥1M) + <ruby>専任<rt>せんにん</rt></ruby> PM <ruby>半常駐化<rt>はんじょうちゅうか</rt></ruby> (-工数 ¥0.5M) を Phase 4 に<ruby>後出<rt>あとだ</rt></ruby>し【2】、これで ¥16M、SLA 99.5% (Better は 99.9%) も<ruby>同時<rt>どうじ</rt></ruby>調整。」 <br/>*Em cảm ơn quý anh đã xem xét ạ. Hợp đồng 1 năm + ¥16M thì cần điều chỉnh phạm vi ạ. Cụ thể: phần tùy chỉnh AI bảng theo dõi (-effort ¥1M) + PM chuyên trách bán-túc trực (-effort ¥0.5M) đẩy sang Phase 4, tổng thành ¥16M, đồng thời SLA điều chỉnh 99.5% (Better 99.9%) ạ.* |
| **大垣** | 「AI dashboard を Phase 4 に？<ruby>導入後<rt>どうにゅうご</rt></ruby>で<ruby>困<rt>こま</rt></ruby>りますか？」 <br/>*AI dashboard sang Phase 4? Sau triển khai có khó không?* |
| **ズン** | 「AI レコメンドエンジン core は Phase 3 で<ruby>稼働<rt>かどう</rt></ruby>、dashboard は Phase 2 <ruby>流用版<rt>りゅうようばん</rt></ruby>で<ruby>代替可能<rt>だいたいかのう</rt></ruby>です。**đơn giá (<ruby>機能<rt>きのう</rt></ruby>あたり<ruby>単価<rt>たんか</rt></ruby>) は<ruby>同等<rt>どうとう</rt></ruby>のまま、<ruby>総額<rt>そうがく</rt></ruby>調整**【3】という<ruby>形<rt>かたち</rt></ruby>です。Phase 4 <ruby>着手時<rt>ちゃくしゅじ</rt></ruby>に dashboard <ruby>追加<rt>ついか</rt></ruby>で +¥1M、その<ruby>時<rt>とき</rt></ruby>に<ruby>再<rt>さい</rt></ruby>ご<ruby>相談<rt>そうだん</rt></ruby>という形ではいかがでしょうか？」 <br/>*Core AI recommend engine vẫn vận hành ở Phase 3, bảng theo dõi dùng bản tận dụng từ Phase 2 thay thế được ạ. Đơn giá (giá trên từng tính năng) giữ nguyên, chỉ điều chỉnh tổng tiền. Phase 4 khởi động sẽ thêm bảng theo dõi +¥1M, lúc đó trao đổi lại ạ — quý anh thấy thế nào?* |
| **大垣** | 「unit price 同等であれば<ruby>社内<rt>しゃない</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>しやすい。検討します。」 <br/>*Đơn giá giữ nguyên thì dễ giải thích nội bộ. Tôi sẽ xem xét.* |

 **Ghi chú:**
- 【1】**「スコープ調整が必要」** — câu chuyển từ đàm phán giá sang đàm phán phạm vi. Giữ đòn bẩy.
- 【2】**Cắt tính năng có thể đẩy về sau (後出し) Phase 4** — KHÔNG mất khách, chỉ lùi thời gian thu. Khách ringi dễ duyệt hơn.
- 【3】**"Đơn giá tương đương (unit price 同等)"** = câu chốt then chốt. CFO/部長 cần "lý do giải thích nội bộ": "không bị giảm giá, chỉ giảm phạm vi".

---

## Cụm từ mẫu
> **「<ruby>価格<rt>かかく</rt></ruby>でなくスコープを<ruby>交渉軸<rt>こうしょうじく</rt></ruby>にする。<ruby>単価<rt>たんか</rt></ruby><ruby>維持<rt>いじ</rt></ruby>で<ruby>総額<rt>そうがく</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>、<ruby>粗利率<rt>あらりりつ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。」**
>
> *Đàm phán phạm vi, KHÔNG đàm phán đơn giá. Giữ đơn giá, điều chỉnh tổng tiền, bảo vệ biên lợi nhuận.*

---

## Tránh
- Giảm giá phẳng "¥16M でいきます" → biên lợi nhuận chết
- Cắt phạm vi mơ hồ "ちょっと減らします" → khách không biết mất gì
- Cắt tính năng lõi (AI engine bản thể) → khách không đạt mục tiêu Phase 3 → thất bại
- Quên đề xuất "Phase 4 で復活" → khách cảm thấy mất hẳn, phản ứng đẩy lại

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| スコープ | スコープ | — | Phạm vi |
| 調整 | ちょうせい | ĐIỀU CHỈNH | Điều chỉnh |
| 後出し | あとだし | — | Đẩy về sau |
| カスタム部分 | カスタムぶぶん | BỘ PHẬN | Phần tùy chỉnh |
| 半常駐 | はんじょうちゅう | BÁN THƯỜNG TRÚ | Bán-túc trực |
| 単価 | たんか | ĐƠN GIÁ | Đơn giá |
| 同等 | どうとう | ĐỒNG ĐẲNG | Tương đương |
| 復活 | ふっかつ | PHỤC HOẠT | Khôi phục |', 'system', 21, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000022, 800000007, NULL, 'markdown_book', 'Rule 22 — Gộp gói / tách mục định giá / バンドリング・アンバンドリング', '# Rule 22 — Gộp gói / tách mục định giá / バンドリング・アンバンドリング
> **Luận điểm.** **Gộp gói** = ghép nhiều hạng mục vào 1 giá tổng (khách khó so giá từng cái → giữ biên lợi nhuận). **Tách gói** = tách từng hạng mục ra giá lẻ (khách thấy chi tiết, dễ chấp nhận từng phần). Khi nào dùng cái nào: **Gộp gói** khi khách ép tổng số; **Tách gói** khi khách ép 1 hạng mục ("AI engine riêng bao nhiêu?").
>
> Gộp gói は値下げ圧力に対する盾、Tách gói は単一機能の価値を可視化する剣。CFO 質問パターンで使い分け。
>
> **Liên quan:** rule 21 (phạm vi), rule 23 (ROI).

---

## Bối cảnh / 場面
中村 CFO hỏi "AI レコメンド engine 単独でいくら?" → Dũng phải quyết: gộp gói (giữ ¥17.5M整合) hay tách từng mục (cho CFO thấy chi tiết). Tách từng mục lúc này có lợi (CFO muốn giải trình nội bộ).

---

## Hội thoại XẤU — gộp gói cứng đầu, mất cơ hội giải trình
| Vai | Câu |
|---------|-----|
| **中村CFO** | 「AI レコメンドエンジン<ruby>単独<rt>たんどく</rt></ruby>だといくらですか？」 <br/>*AI recommend engine riêng giá bao nhiêu?* |
| **ズン** | 「すみません、Phase 3 はパッケージ<ruby>提供<rt>ていきょう</rt></ruby>で、<ruby>単独<rt>たんどく</rt></ruby><ruby>価格<rt>かかく</rt></ruby>は<ruby>出<rt>だ</rt></ruby>せません。」 <br/>*Em xin lỗi, Phase 3 bán theo package nên không có giá riêng ạ.* |
| **中村CFO** | 「それでは<ruby>稟議書<rt>りんぎしょ</rt></ruby>で<ruby>個別<rt>こべつ</rt></ruby> cost justify ができないので、<ruby>難<rt>むずか</rt></ruby>しいですね。」 <br/>*Vậy thì không justify được cost từng mục trong ringi-sho, khó đấy.* |

**Vì sao xấu:** Từ chối theo kiểu chỉ bán gộp không cho khách "công cụ giải trình nội bộ". CFO cần chi phí đã tách từng mục cho ringi-sho. Mất cơ hội chốt.

---

## Hội thoại TỐT — tách từng mục chiến lược với "chiết khấu gói"
| Vai | Câu |
|---------|-----|
| **中村CFO** | 「AI レコメンドエンジン<ruby>単独<rt>たんどく</rt></ruby>だといくらですか？」 <br/>*AI recommend engine riêng giá bao nhiêu?* |
| **ズン** | 「**<ruby>個別<rt>こべつ</rt></ruby> cost を<ruby>分解<rt>ぶんかい</rt></ruby>いたします**【1】。AI レコメンドエンジン: ¥9M、<ruby>専任<rt>せんにん</rt></ruby> PM: ¥3M、AI dashboard: ¥3.5M、SLA 99.9% <ruby>運用<rt>うんよう</rt></ruby>: ¥3M。**<ruby>合計<rt>ごうけい</rt></ruby> ¥18.5M**。**Phase 3 gói trọn thì ¥17.5M でご<ruby>提供<rt>ていきょう</rt></ruby> (¥1M の chiết khấu gói)**【2】、そして 2 <ruby>年契約継続<rt>ねんけいやくけいぞく</rt></ruby>なら<ruby>不変<rt>ふへん</rt></ruby>です。」 <br/>*Em xin tách chi phí từng mục ạ. AI recommend engine: ¥9M, PM chuyên trách: ¥3M, AI bảng theo dõi: ¥3.5M, vận hành SLA 99.9%: ¥3M. Tổng ¥18.5M. Riêng Phase 3 gói trọn em cung cấp ¥17.5M (chiết khấu gói ¥1M), tiếp tục hợp đồng 2 năm thì không đổi ạ.* |
| **中村CFO** | 「ディスカウント<ruby>分<rt>ぶん</rt></ruby>の<ruby>根拠<rt>こんきょ</rt></ruby>は？」 <br/>*Cơ sở chiết khấu là gì?* |
| **ズン** | 「<ruby>複数機能<rt>ふくすうきのう</rt></ruby>を<ruby>同一<rt>どういつ</rt></ruby>プロジェクトで<ruby>開発<rt>かいはつ</rt></ruby>すると<ruby>共通基盤化<rt>きょうつうきばんか</rt></ruby>で<ruby>工数<rt>こうすう</rt></ruby> 5% <ruby>削減<rt>さくげん</rt></ruby>できます。それを<ruby>御社<rt>おんしゃ</rt></ruby>に<ruby>還元<rt>かんげん</rt></ruby>する<ruby>形<rt>かたち</rt></ruby>【3】。<ruby>稟議書<rt>りんぎしょ</rt></ruby>に『giá gói』として<ruby>明記<rt>めいき</rt></ruby>いただければ、<ruby>個別<rt>こべつ</rt></ruby> dòng ngân sách từng mục は nội bộ giải trình chi phí としてお<ruby>使<rt>つか</rt></ruby>いいただけます。」 <br/>*Nhiều tính năng phát triển trong cùng dự án thì build trên nền chung giảm được 5% effort. Em chia sẻ phần đó với quý cty. Trong ringi-sho ghi rõ ''giá gói'', còn dòng ngân sách từng mục dùng làm tài liệu giải trình chi phí nội bộ ạ.* |
| **中村CFO** | 「これなら<ruby>稟議書<rt>りんぎしょ</rt></ruby>が<ruby>書<rt>か</rt></ruby>きやすい。ありがとうございます。」 <br/>*Vậy thì ringi-sho dễ viết. Cảm ơn em.* |

 **Ghi chú:**
- 【1】**Tách từng mục ra** — 4 hạng mục kèm chi phí. CFO dùng cho ringi-sho.
- 【2】**Chiết khấu gói** — tổng từng mục ¥18.5M > gói ¥17.5M (lợi ¥1M). Khách thấy "đang được ưu đãi".
- 【3】**Cơ sở chiết khấu = 共通基盤化 (giảm khối lượng công việc 5%)** — không bịa, có thật. CFO sẽ kiểm chứng.

---

## Cụm từ mẫu
> **「<ruby>個別<rt>こべつ</rt></ruby> tách gói で justify、gộp gói で discount。<ruby>両方<rt>りょうほう</rt></ruby><ruby>見<rt>み</rt></ruby>せて『お<ruby>得感<rt>とくかん</rt></ruby>+ringi <ruby>容易<rt>ようい</rt></ruby>』。」**
>
> *Tách từng mục giúp giải trình, gộp gói giúp chiết khấu. Trình bày cả hai = "cảm giác được lời + ringi dễ".*

---

## Tránh
- Chỉ bán gộp rồi từ chối → CFO không soạn được ringi
- Tách từng mục mà tổng KHÔNG bằng giá gói → khách hỏi tại sao 不一致 (không khớp)
- Chiết khấu không có cơ sở → mất niềm tin
- Tách từng mục với tất cả khách → đôi khi chỉ bán gộp lại tốt hơn (đặc biệt khi khách nhạy cảm về giá trên từng hạng mục)

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| バンドリング | バンドリング | — | Gộp gói |
| アンバンドリング | アンバンドリング | — | Tách gói |
| 個別 cost | こべつコスト | CÁ BIỆT | Chi phí từng mục |
| パッケージディスカウント | パッケージディスカウント | — | Chiết khấu gói |
| 共通基盤化 | きょうつうきばんか | CỘNG THÔNG CƠ BÀN HÓA | Xây trên nền chung |
| 還元 | かんげん | HOÀN NGUYÊN | Hoàn lại / chia sẻ |
| ラインアイテム | ラインアイテム | — | Dòng ngân sách / hạng mục |
| 稟議書 | りんぎしょ | BẨM NGHỊ THƯ | Tài liệu ringi |', 'system', 22, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000023, 800000007, NULL, 'markdown_book', 'Rule 23 — Quy đổi sang ROI / ROI 換算', '# Rule 23 — Quy đổi sang ROI / ROI 換算
> **Luận điểm.** Khách Nhật (đặc biệt CFO) duyệt giá lớn dựa trên **ROI rõ ràng + được nội bộ kiểm chứng**. Quy đổi giá → ROI: **(1) Investment** (¥18M), **(2) Annual return** (cost saving + revenue uplift), **(3) Payback period** (tháng), **(4) IRR / NPV nếu thương vụ lớn**. Báo giá không kèm ROI = CFO Nhật khó duyệt.
>
> CFO 説得は ROI 数値が核。投資額・年間リターン・回収期間 (payback) を必ず提示。「導入する value がある」では稟議通らない。
>
> **Liên quan:** rule 05 (value-based), rule 20 (高い対応), rule 18 (anchoring 根拠).

---

## Bối cảnh / 場面
中村 CFO yêu cầu "正式 ROI シート" để đem vào ringi. Dũng đã có bản thảo, trình bày trong cuộc họp.

---

## Hội thoại XẤU — ROI mơ hồ
*沈黙*

| Vai | Câu |
|---------|-----|
| **中村CFO** | 「ROI はどのくらいですか？」 <br/>*ROI khoảng bao nhiêu?* |
| **ズン** | 「Phase 2 で<ruby>実績<rt>じっせき</rt></ruby>ありますし、Phase 3 はそれ以上の value があります。」 <br/>*Phase 2 có thành tích rồi, Phase 3 có value lớn hơn ạ.* |
| **中村CFO** | 「<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>数値<rt>すうち</rt></ruby>がないと<ruby>稟議<rt>りんぎ</rt></ruby>には<ruby>乗<rt>の</rt></ruby>せられません。」 <br/>*Không có con số cụ thể là không đưa vào ringi được.* |

**Vì sao xấu:** "Value あります" = không có gì. CFO muốn 数値. Việc dẫn chiếu Phase 2 chung chung không chống lưng cho ROI của Phase 3.

---

## Hội thoại TỐT — ROI 4 yếu tố cụ thể
| Vai | Câu |
|---------|-----|
| **中村CFO** | 「ROI はどのくらいですか？」 <br/>*ROI khoảng bao nhiêu?* |
| **ズン** | 「**ROI 4 chỉ số**【1】です。**Đầu tư**: ¥17.5M。**Lợi tức hàng năm**: (a) AI レコメンド<ruby>導入<rt>どうにゅう</rt></ruby>で transaction <ruby>単価<rt>たんか</rt></ruby> +12% × 月 GMV ¥600M ≒ 年 +¥864M doanh thu tăng thêm、<ruby>利益率<rt>りえきりつ</rt></ruby> 9% <ruby>換算<rt>かんさん</rt></ruby>で **¥77.7M/年 lợi nhuận ròng**【2】、(b) <ruby>手動<rt>しゅどう</rt></ruby><ruby>在庫<rt>ざいこ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby><ruby>削減<rt>さくげん</rt></ruby> = 5名 × 240日 × 2h × 単価 ¥6,000 = **¥14.4M/年 tiết kiệm chi phí**、<ruby>合計<rt>ごうけい</rt></ruby> **¥92.1M/年**。」 <br/>*ROI 4 chỉ số ạ. Đầu tư: ¥17.5M. Lợi tức hàng năm: (a) AI recommend triển khai → đơn giá transaction +12% × GMV tháng ¥600M ≒ +¥864M doanh thu tăng thêm/năm, quy theo biên lợi nhuận 9% là ¥77.7M/năm lợi nhuận ròng; (b) giảm điều chỉnh tồn kho thủ công = 5 người × 240 ngày × 2h × ¥6,000 = ¥14.4M/năm tiết kiệm chi phí. Tổng ¥92.1M/năm ạ.* |
| **ズン** | 「**Payback period: ¥17.5M ÷ ¥92.1M ≒ 2.3 ヶ月**【3】、つまり<ruby>初年度<rt>しょねんど</rt></ruby>で 5.3 倍の return。**3 年 NPV (<ruby>割引率<rt>わりびきりつ</rt></ruby> 5%): ¥234M**【4】。」 <br/>*Thời gian thu hồi vốn: ¥17.5M ÷ ¥92.1M ≒ 2.3 tháng, tức năm đầu hoàn vốn 5.3 lần. NPV 3 năm (tỉ lệ chiết khấu 5%): ¥234M ạ.* |
| **中村CFO** | 「数値の<ruby>信頼性<rt>しんらいせい</rt></ruby>は？」 <br/>*Độ tin cậy của con số?* |
| **ズン** | 「Phase 2 で transaction 単価 +9% を<ruby>実現済<rt>じつげんず</rt></ruby>み (vs. <ruby>予測<rt>よそく</rt></ruby> +8%、<ruby>上振<rt>うわぶ</rt></ruby>れ)。AI モデル<ruby>精度<rt>せいど</rt></ruby><ruby>向上<rt>こうじょう</rt></ruby>で +12% は ngoại suy có kiểm soát です。Whitepaper + <ruby>第三者<rt>だいさんしゃ</rt></ruby><ruby>監査済<rt>かんさず</rt></ruby>みデータをお<ruby>渡<rt>わた</rt></ruby>しします【5】。」 <br/>*Phase 2 đã hiện thực được đơn giá transaction +9% (so với dự +8%, vượt). +12% với AI model nâng cấp là ngoại suy có kiểm soát ạ. Em chuyển tới quý anh whitepaper + dữ liệu đã kiểm toán bên thứ ba ạ.* |
| **中村CFO** | 「これなら<ruby>取締役会<rt>とりしまりやくかい</rt></ruby>に<ruby>出<rt>だ</rt></ruby>せます。」 <br/>*Vậy thì đưa được lên HĐQT.* |

 **Ghi chú:**
- 【1】**ROI 4 chỉ số** — Đầu tư / Lợi tức hàng năm / Thời gian thu hồi vốn / NPV. Đủ cả 4 = khoa học, không bịa.
- 【2】**Lợi tức hàng năm chia ra tiết kiệm chi phí + doanh thu tăng thêm** — CFO tin tưởng vì mỗi nhánh được kiểm chứng độc lập.
- 【3】**Thời gian thu hồi vốn < 6 月 = "ROI mạnh"** trong ngữ cảnh B2B Nhật. < 12 月 = "OK". > 24 月 = khó duyệt.
- 【4】**NPV với tỉ lệ chiết khấu** — doanh nghiệp Nhật thường dùng 5-7%. Trình NPV = đẳng cấp cấp cao, gây ấn tượng với CFO.
- 【5】**Kiểm toán bên thứ ba** — không bắt buộc, nhưng CFO cấp cao tin tưởng hơn.

---

## Cụm từ mẫu
> **「ROI は4指標 (Investment・Annual・Payback・NPV) を数値で。『value がある』は稟議に乗らない。」**
>
> *ROI 4 chỉ số (Investment / Annual / Payback / NPV) bằng số. "Có giá trị" không qua được ringi.*

---

## Tránh
- ROI mơ hồ "value あります" → CFO không tin tưởng
- Lợi tức hàng năm chỉ 1 nhánh (vd: chỉ doanh thu tăng thêm) → CFO phản bác về độ tin cậy
- Payback > 24 tháng → khó duyệt, cần xem lại phạm vi
- Quên dẫn chiếu dữ liệu thực tế Phase 2 → tuyên bố về Phase 3 không có điểm neo

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 投資 | とうし | ĐẦU TƯ | Đầu tư |
| 年間リターン | ねんかんリターン | NIÊN GIAN | Lợi tức hàng năm |
| 回収期間 (Payback) | かいしゅうきかん | HỒI THU KỲ GIAN | Thời gian thu hồi vốn |
| 割引率 | わりびきりつ | CHIẾT KHẤU SUẤT | Tỉ lệ chiết khấu |
| 上振れ | うわぶれ | — | Vượt dự kiến |
| 第三者監査 | だいさんしゃかんさ | ĐỆ TAM GIẢ GIÁM TRA | Kiểm toán bên thứ ba |
| 取締役会 | とりしまりやくかい | THỦ ĐẾ DỊCH HỘI | HĐQT |
| Ngoại suy có kiểm soát | せいぎょされたがいそう | KHỐNG CHẾ NGOẠI SÁCH | Ngoại suy có kiểm soát |', 'system', 23, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000024, 800000007, NULL, 'markdown_book', 'Rule 24 — Đổi nhượng bộ (ngang giá) / 譲歩交換', '# Rule 24 — Đổi nhượng bộ (ngang giá) / 譲歩交換
> **Luận điểm.** Mọi nhượng bộ đều phải có **trade ngược** — đổi lấy điều gì đó. Câu chuẩn: "**もし〇〇していただければ、〇〇いたします**" (nếu quý anh cho X, em sẽ cho Y). KHÔNG bao giờ nhượng bộ đơn phương. Tit-for-tat duy trì sự cân bằng giá trị.
>
> 譲歩は単独で出さない。「もし〜していただければ、〜いたします」の双方向 phrase で交換する。
>
> **Liên quan:** rule 09 (concession plan), rule 19 (価格提示), rule 21 (scope).

---

## Bối cảnh / 場面
大垣 push xin "AI dashboard 込みで ¥17M". Dũng phải đưa điều kiện đổi — không nhượng đơn phương.

---

## Hội thoại XẤU — nhượng đơn phương
*微笑*

| Vai | Câu |
|---------|-----|
| **大垣** | 「AI dashboard も<ruby>込<rt>こ</rt></ruby>みで ¥17M なら<ruby>社内<rt>しゃない</rt></ruby><ruby>通<rt>とお</rt></ruby>せそうですが…」 <br/>*AI dashboard kèm cùng ¥17M thì nội bộ duyệt được...* |
| **ズン** | 「<ruby>分<rt>わ</rt></ruby>かりました、AI dashboard <ruby>含<rt>ふく</rt></ruby>めて ¥17M で。」 <br/>*Em rõ ạ, gồm cả AI dashboard ở mức ¥17M ạ.* |
| **大垣** | 「ありがとうございます。」 <br/>*Cảm ơn anh.* |
| (内部 Slack) **フオン** | 「dashboard ¥1M を ¥0 で<ruby>追加<rt>ついか</rt></ruby>？trade なしの<ruby>単独<rt>たんどく</rt></ruby><ruby>譲歩<rt>じょうほ</rt></ruby>。<ruby>粗利<rt>あらり</rt></ruby>は？」 <br/>*(Slack nội bộ) Dashboard ¥1M cho thêm miễn phí? Nhượng đơn phương không có trade. Margin sao?* |

**Vì sao xấu:** Nhượng dashboard ¥1M không có trade ngược, thành nhượng bộ đơn phương. Margin xuống. 大垣 đọc Dũng "dễ" rồi push tiếp ở các vòng sau.

---

## Hội thoại TỐT — đổi nhượng bộ ăn miếng trả miếng
| Vai | Câu |
|---------|-----|
| **大垣** | 「AI dashboard も<ruby>込<rt>こ</rt></ruby>みで ¥17M なら<ruby>社内<rt>しゃない</rt></ruby><ruby>通<rt>とお</rt></ruby>せそうですが…」 <br/>*AI dashboard kèm cùng ¥17M thì nội bộ duyệt được...* |
| **ズン** | 「**<ruby>ご検討<rt>ごけんとう</rt></ruby>ありがとうございます**【1】。AI dashboard <ruby>込<rt>こ</rt></ruby>みで ¥17M、**もし<ruby>以下<rt>いか</rt></ruby>の 2 <ruby>点<rt>てん</rt></ruby>をお<ruby>取<rt>と</rt></ruby>り<ruby>計<rt>はか</rt></ruby>らいいただけましたら**【2】、<ruby>お受<rt>おう</rt></ruby>けできます: (1) **<ruby>契約期間<rt>けいやくきかん</rt></ruby> 2 <ruby>年確定<rt>ねんかくてい</rt></ruby>** + <ruby>自動<rt>じどう</rt></ruby> 1 <ruby>年更新条項<rt>ねんこうしんじょうこう</rt></ruby>、(2) **<ruby>公式事例<rt>こうしきじれい</rt></ruby>として<ruby>御社名公開許可<rt>おんしゃめいこうかいきょか</rt></ruby>** (<ruby>来期<rt>らいき</rt></ruby> marketing で<ruby>活用<rt>かつよう</rt></ruby>)【3】。」 <br/>*Cảm ơn quý anh đã xem xét ạ. AI dashboard kèm ¥17M, nếu quý anh sắp xếp được 2 điểm sau thì em có thể nhận: (1) Hợp đồng cố định 2 năm + điều khoản tự động gia hạn 1 năm, (2) Cho phép công bố tên quý cty làm case chính thức (em dùng cho marketing kỳ sau) ạ.* |
| **大垣** | 「(1) は<ruby>内部<rt>ないぶ</rt></ruby>で OK、(2) <ruby>事例公開<rt>じれいこうかい</rt></ruby>は<ruby>広報部<rt>こうほうぶ</rt></ruby>に<ruby>確認必要<rt>かくにんひつよう</rt></ruby>です。」 <br/>*(1) nội bộ OK, (2) công bố case cần check với phòng PR.* |
| **ズン** | 「もちろんです。**<ruby>両方<rt>りょうほう</rt></ruby><ruby>ご了承<rt>ごりょうしょう</rt></ruby>いただけた<ruby>段階<rt>だんかい</rt></ruby>で ¥17M + dashboard <ruby>込<rt>こ</rt></ruby>みで<ruby>確定<rt>かくてい</rt></ruby>**【4】、もし (2) のみ<ruby>難<rt>むずか</rt></ruby>しい<ruby>場合<rt>ばあい</rt></ruby>は contractual に scope <ruby>調整<rt>ちょうせい</rt></ruby>となります。」 <br/>*Tất nhiên ạ. Khi cả 2 đều OK em sẽ chốt ¥17M + dashboard, nếu chỉ (2) khó thì sẽ điều chỉnh scope trong hợp đồng ạ.* |
| **大垣** | 「<ruby>整理<rt>せいり</rt></ruby>して<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り<ruby>検討<rt>けんとう</rt></ruby>します。」 <br/>*Tôi tổng hợp rồi mang về xem xét.* |

 **Ghi chú:**
- 【1】**Ghi nhận** trước khi phản hồi, không nhảy vào đổi ngay.
- 【2】**「もし〜していただければ」** = công thức chuẩn cho đổi nhượng bộ ngang giá. KHÔNG bị thấy là "đòi", chỉ là điều kiện.
- 【3】**Điều kiện đổi chọn 2 thứ có giá trị cho mình mà chi phí thấp cho khách** — 2 năm đã có ringi nội bộ rồi (rule 19), 事例公開 = giá trị marketing.
- 【4】**Xác nhận có điều kiện** "両方了承後に確定" — KHÔNG để khách lấy 1 nhượng bộ rồi từ chối 1 điều kiện đổi.

---

## Cụm từ mẫu
> **「『もし〇〇していただければ〇〇いたします』 — <ruby>譲歩<rt>じょうほ</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ず trade。conditional confirmation で<ruby>安全<rt>あんぜん</rt></ruby>。」**
>
> *"Nếu quý anh ~ thì em sẽ ~" — nhượng bộ luôn đi với điều kiện đổi. Xác nhận có điều kiện để an toàn.*

---

## Tránh
- Đáp "OK" ngay lập tức, thành nhượng bộ đơn phương
- Điều kiện đổi quá nặng, khách thấy nặng tính giao dịch nên khó chốt
- Quên xác nhận có điều kiện ("両方了承後に"), khách bóc lẻ từng điều kiện
- Điều kiện đổi chọn cái khách không coi trọng, thành vô dụng

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 譲歩交換 | じょうほこうかん | NHƯỢNG BỘ GIAO HOÁN | Đổi nhượng bộ |
| お取り計らい | おとりはからい | — | Sắp xếp / hỗ trợ |
| 条項 | じょうこう | ĐIỀU HẠNG | Điều khoản |
| 自動更新 | じどうこうしん | TỰ ĐỘNG CẬP TÂN | Tự động gia hạn |
| 公式事例 | こうしきじれい | CÔNG THỨC SỰ LỆ | Case study chính thức |
| 広報部 | こうほうぶ | QUẢNG BÁO BỘ | Phòng PR |
| 整理する | せいりする | CHỈNH LÝ | Sắp xếp / tổng hợp |', 'system', 24, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000025, 800000007, NULL, 'markdown_book', 'Rule 25 — Im lặng như vũ khí / 沈黙の活用', '# Rule 25 — Im lặng như vũ khí / 沈黙の活用
> **Luận điểm.** Sau khi đưa đề nghị, **đếm 7 giây im lặng**. Người Việt thường lấp khoảng lặng (vì khó chịu về mặt văn hoá) → tự nói hạ giá xuống. Khách Nhật quen với 沈黙 → ai phá im lặng trước = mất lợi thế. Luyện trước gương.
>
> Offer 後 7 秒沈黙ルール。最初に話した方が譲歩する。日本商談文化では沈黙は思考時間で当然。
>
> **Liên quan:** rule 18 (anchoring), rule 19 (価格提示), rule 07 (合図).

---

## Bối cảnh / 場面
Trong phòng đàm phán, sau khi Dũng báo ¥18M anchor (rule 18), 大垣 im lặng 5 giây. Tuấn ngồi cạnh có dấu hiệu sẽ nói lấp. Dũng dùng hiệu tay (rule 07) để chặn Tuấn.

---

## Hội thoại XẤU — Tuấn lấp im lặng
*沈黙 4 秒、考え · 不安、口開く · 微笑 · 顔色*

| Vai | Câu |
|---------|-----|
| **ズン** | 「Better tier ¥18M、ROI 4.4 倍に位置します。」 <br/>*Better tier ¥18M, ROI ở mức 4.4 lần ạ.* |
| **大垣** | 「…」 <br/>*(im lặng 4 giây, suy nghĩ)* |
| **トゥアン** | 「あの、もし価格がご<ruby>懸念<rt>けねん</rt></ruby>でしたら、scope <ruby>調整<rt>ちょうせい</rt></ruby>で ¥16M も<ruby>可能<rt>かのう</rt></ruby>です。」 <br/>*À, nếu quý anh lo về giá, điều chỉnh scope thì ¥16M cũng được ạ.* |
| **大垣** | 「あ、¥16M も可能ですか。それで<ruby>進<rt>すす</rt></ruby>めましょう。」 <br/>*À, ¥16M cũng được à. Vậy chốt như thế nhé.* |
| **ズン** | 「…」 <br/>*(mặt biến sắc)* |

**Vì sao xấu:** Tuấn không chịu được khoảng lặng → tự nhảy xuống ¥16M trước cả khi 大垣 phản đẩy lại. Mất ¥2M bốc hơi trong 4 giây. Đây là công thức rất phổ biến với người Việt mới làm BD.

---

## Hội thoại TỐT — giữ khoảng im lặng + tín hiệu trong nhóm
*右手を膝に置く — 事前合意の tín hiệu rule 07 · 沈黙 1 秒 · 口開きかけ、ズン tín hiệu 確認、止まる · 沈黙 3 秒 · 沈黙 5 秒 · 7 秒経過 · 内心: 7 秒勝った*

| Vai | Câu |
|---------|-----|
| **ズン** | 「Better tier ¥18M、ROI 4.4 倍に<ruby>位置<rt>いち</rt></ruby>します。」 <br/>*Better tier ¥18M, ROI ở mức 4.4 lần ạ.* |
| **ズン** | (<ruby>沈黙<rt>ちんもく</rt></ruby>) <br/>*(đặt tay phải lên đùi — signal đã hẹn, giữ im lặng)* |
| **大垣** | 「…」 <br/>*(im lặng 1 giây)* |
| **トゥアン** | (沈黙) <br/>*(định mở miệng, thấy signal Dũng, dừng lại)* |
| **大垣** | 「…」 <br/>*(im lặng 3 giây)* |
| **大垣** | 「…」 <br/>*(im lặng tiếp, tổng 5 giây)* |
| **大垣** | 「ROI 4.4 倍はインパクトありますね。<ruby>但<rt>ただ</rt></ruby>し ¥18M は<ruby>社内<rt>しゃない</rt></ruby>ハードル<ruby>高<rt>たか</rt></ruby>めです、scope か contract length で<ruby>調整余地<rt>ちょうせいよち</rt></ruby>あれば<ruby>検討<rt>けんとう</rt></ruby>します。」【1】 <br/>*ROI 4.4 lần có sức tác động đấy. Nhưng ¥18M trong nội bộ rào cao, nếu có dư địa điều chỉnh ở scope hay contract length thì chúng tôi xem xét.* |
| **ズン** | 「ありがとうございます。それでは scope <ruby>調整案<rt>ちょうせいあん</rt></ruby>と contract length <ruby>案<rt>あん</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>ご<ruby>用意<rt>ようい</rt></ruby>します。」 <br/>*Em cảm ơn ạ. Vậy em chuẩn bị cả phương án điều chỉnh scope lẫn contract length ạ.* |

 **Ghi chú:**
- 【1】**大垣 phá khoảng im lặng trước = tiến tới bằng nhượng bộ** (về "phạm vi hay thời hạn hợp đồng"). Đây là sự dịch chuyển lợi thế về phía Dũng.
- **Khoảng im lặng 7 giây = mục tiêu luyện tập**. Cảm giác ban đầu mỗi giây như 5 giây. Luyện trước gương / với người đi trước.
- **Hiệu tay trong nhóm** (rule 07) cực quan trọng — không có tín hiệu thì thành viên ít kinh nghiệm sẽ nói lấp.
- Khi mình đưa đề nghị + im lặng, ánh mắt giữ trung tính, không "đợi mong khách trả lời". Tông giọng tự tin.

---

## Cụm từ mẫu
> **「Offer 後 7 秒沈黙。最初に話した方が譲歩する。nhóm tín hiệu で junior の口を封じる。」**
>
> *Sau khi đưa đề nghị, im 7 giây. Ai phá khoảng im lặng trước = nhượng. Ra tín hiệu tay cho nhóm để thành viên ít kinh nghiệm khỏi nói lấp.*

---

## Tránh
- 自分から 1-3 秒で口を開く → 自爆
- "あの、もし高いようでしたら…" — câu tự sát, KHÔNG bao giờ tự đưa ra phương án 値引き
- Nhìn xuống / bồn chồn khi im lặng → khách đọc là "anh đang lo"
- Luyện không đủ → trong phòng tay run

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 沈黙 | ちんもく | TRẦM MẶC | Im lặng |
| 思考時間 | しこうじかん | TƯ KHẢO THỜI GIAN | Thời gian suy nghĩ |
| 自爆 | じばく | TỰ BỘC | Tự bùng (tự gây hại) |
| ハードル | ハードル | — | Rào / khó khăn |
| 調整余地 | ちょうせいよち | ĐIỀU CHỈNH DƯ ĐỊA | Dư địa điều chỉnh |
| インパクト | インパクト | — | Tác động |
| 口を封じる | くちをふうじる | — | Khoá miệng |', 'system', 25, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000026, 800000007, NULL, 'markdown_book', 'Rule 26 — Đối phó với threat / ultimatum / 脅し・最終通告への対応', '# Rule 26 — Đối phó với threat / ultimatum / 脅し・最終通告への対応
> **Luận điểm.** Khách gây áp lực "¥15M でなければ Y 社に発注", "今週中に決めなければ" = chiêu gây áp lực. Công thức xử lý: **(1) Câu bắc cầu** ("ご指摘の点、もっともでございます"), **(2) Đổi góc nhìn + giữ ranh giới** ("ただ弊社として〜は難しい"), **(3) Đẩy lên cấp trên** (anh Hà CTO vào cuộc). Đối đầu cứng = mất thương vụ; nhượng bộ quá mức = mất biên lợi nhuận. Câu bắc cầu + đẩy lên cấp trên = giữ được lợi thế.
>
> 脅しや tối hậu thư は chiêu gây áp lực。câu bắc cầu で受けて、định hình lại で ranh giới を示し、必要なら cấp trên にエスカレーション。
>
> **Liên quan:** rule 27 (再アンカリング), rule 28 (撤退の作法), sách 04 escalation.

---

## Bối cảnh / 場面
大垣 ép mạnh ở phút chót: "¥15M でなければ Y 社に発注". Dũng dùng câu chuyển, sau đó ra hiệu để anh Hà CTO vào cuộc.

---

## Hội thoại XẤU — đối đầu cứng / nhượng bộ quá mức
*感情的 · 冷*

| Vai | Câu |
|---------|-----|
| **大垣** | 「¥15M でなければ、Y 社に<ruby>発注<rt>はっちゅう</rt></ruby>します。<ruby>今日<rt>きょう</rt></ruby><ruby>決<rt>き</rt></ruby>めてください。」 <br/>*¥15M không thì tôi đặt Y社. Hôm nay phải quyết.* |
| **ズン** | 「Y 社で<ruby>本当<rt>ほんとう</rt></ruby>に発注できるとは<ruby>思<rt>おも</rt></ruby>えませんが…」 <br/>*Y社 thì em không nghĩ là quý anh đặt được thật…* |
| **大垣** | 「<ruby>冗談<rt>じょうだん</rt></ruby>ではなく<ruby>事実<rt>じじつ</rt></ruby>です。」 <br/>*Không phải nói đùa, là sự thật.* |
| **ズン** | 「では…¥15M で…」 <br/>*Vậy… ¥15M ạ…* |

**Vì sao xấu:** Dũng vừa thách thức khách (mất 顔) vừa nhượng bộ quá mức giảm ¥3M trong 1 phút. Cả 2 lỗi cùng lúc. Điểm rút lui ¥15M là ranh giới, phạm vi phải cắt mạnh nhưng Dũng không tỉnh.

---

## Hội thoại TỐT — câu bắc cầu + giữ ranh giới + báo cấp trên
*2 秒沈黙 · 少し緩む · 電話で 5 分後到着、入室、挨拶後*

| Vai | Câu |
|---------|-----|
| **大垣** | 「¥15M でなければ、Y 社に発注します。今日決めてください。」 <br/>*¥15M không thì tôi đặt Y社. Hôm nay phải quyết.* |
| **ズン** | 「**ご<ruby>指摘<rt>してき</rt></ruby>の<ruby>点<rt>てん</rt></ruby>、もっともでございます**【1】。<ruby>御社<rt>おんしゃ</rt></ruby>のご<ruby>事情<rt>じじょう</rt></ruby>、<ruby>十分<rt>じゅうぶん</rt></ruby>に<ruby>理解<rt>りかい</rt></ruby>いたします。」 <br/>*Em xin tiếp thu ý kiến quý anh ạ. Tình huống quý công ty em hiểu đầy đủ ạ.* |
| **ズン** | 「**ただ、<ruby>弊社<rt>へいしゃ</rt></ruby>として ¥15M で Phase 2 <ruby>同等<rt>どうとう</rt></ruby>スコープのご<ruby>提供<rt>ていきょう</rt></ruby>は<ruby>粗利<rt>あらり</rt></ruby>を<ruby>割<rt>わ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>みますので、その<ruby>場<rt>ば</rt></ruby>でのお<ruby>返事<rt>へんじ</rt></ruby>は<ruby>致<rt>いた</rt></ruby>しかねます**【2】。」 <br/>*Tuy nhiên, ¥15M giữ scope tương đương Phase 2 thì bên em phá ngưỡng margin, em xin phép không trả lời ngay tại chỗ ạ.* |
| **ズン** | 「**<ruby>重要<rt>じゅうよう</rt></ruby>なご<ruby>決定<rt>けってい</rt></ruby>ですので、弊社 CTO のハーをこの場にお<ruby>呼<rt>よ</rt></ruby>びしてもよろしいでしょうか**【3】？<ruby>技術面<rt>ぎじゅつめん</rt></ruby>・<ruby>条件面<rt>じょうけんめん</rt></ruby>の<ruby>両方<rt>りょうほう</rt></ruby>で<ruby>正式<rt>せいしき</rt></ruby>な<ruby>回答<rt>かいとう</rt></ruby>ができるようにいたします。」 <br/>*Đây là quyết định quan trọng, cho phép em mời anh Hà CTO bên em đến tại chỗ ạ? Để có thể trả lời chính thức cả mặt kỹ thuật lẫn điều kiện ạ.* |
| **大垣** | 「では CTO に<ruby>来<rt>き</rt></ruby>ていただいて<ruby>構<rt>かま</rt></ruby>いません。」 <br/>*Vậy mời CTO đến cũng được.* |
| **ハー CTO** | 「大垣<ruby>様<rt>さま</rt></ruby>、ハーでございます。¥15M というご<ruby>要望<rt>ようぼう</rt></ruby>、<ruby>伺<rt>うかが</rt></ruby>いました。**¥15M でしたら scope は -30% (AI dashboard・<ruby>専任<rt>せんにん</rt></ruby> PM・SLA 99.9%→99.5%) となり、Phase 3 <ruby>当初<rt>とうしょ</rt></ruby><ruby>目的<rt>もくてき</rt></ruby>の<ruby>達成度合<rt>たっせいどあ</rt></ruby>いは 65% <ruby>程度<rt>ていど</rt></ruby>になります**【4】。**Phase 2 同等のスコープであれば、弊社 walk-away ライン ¥15.5M、これは<ruby>承認済<rt>しょうにんず</rt></ruby>みの<ruby>最終条件<rt>さいしゅうじょうけん</rt></ruby>**でございます。」 <br/>*Anh Ōgaki, em là Hà ạ. Em đã nghe yêu cầu ¥15M. Nếu ¥15M thì scope -30% (bỏ AI dashboard, PM chuyên trách, SLA 99.9%→99.5%), mức đạt mục tiêu ban đầu Phase 3 chỉ ~65%. Scope tương đương Phase 2 thì walk-away bên em là ¥15.5M, đây là điều kiện cuối đã được duyệt ạ.* |
| **大垣** | 「…CTO <ruby>同席<rt>どうせき</rt></ruby>ですと<ruby>話<rt>はなし</rt></ruby>が<ruby>変<rt>か</rt></ruby>わりますね。¥15.5M なら<ruby>社内<rt>しゃない</rt></ruby>に<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り<ruby>検討<rt>けんとう</rt></ruby>します。」 <br/>*…CTO cùng dự thì câu chuyện khác. ¥15.5M thì tôi mang về xem xét nội bộ.* |

 **Ghi chú:**
- 【1】**Câu bắc cầu** = hạ nhiệt. KHÔNG tranh cãi ngay. "ご指摘の点、もっともでございます" = ghi nhận chính thức.
- 【2】**Câu giữ ranh giới** "弊社として〜は難しい" — thể hiện lập trường cứng nhưng tông giọng lịch sự.
- 【3】**Đưa cấp trên vào** "弊社 CTO をお呼びしてもよろしいでしょうか" — phải xin phép, không tự ý gọi.
- 【4】**CTO vào vẫn cắt phạm vi bằng số cụ thể** — "65% 達成度" là chỉ số khiến khách nhận ra tổn thất. CTO mang thêm thẩm quyền + thông tin mới.

---

## Cụm từ mẫu
> **「Câu bắc cầu で受け、ranh giới で抵抗、báo cấp trên で de-escalate。Match も cave-in も両方避ける。」**
>
> *Câu bắc cầu để đỡ, giữ ranh giới để giữ vị thế, báo cấp trên để hạ nhiệt. Tránh cả đối đầu cứng lẫn nhượng bộ quá mức.*

---

## Tránh
- "Y 社で本当にできるとは…" → thách thức khách = mất 顔
- "では ¥15M で" → nhượng bộ quá mức, giảm ¥3M trong 1 phút
- Đưa cấp trên vào mà không xin phép → bất lịch sự
- Cấp trên vào nhưng không mang thêm thẩm quyền / thông tin mới → vô ích

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 脅し | おどし | — | Đe dọa |
| 最終通告 | さいしゅうつうこく | TỐI CHUNG THÔNG CÁO | Tối hậu thư / tối hậu thư |
| ご指摘 | ごしてき | CHỈ TRÍCH | Lời nhận xét |
| もっとも | もっとも | — | Có lý / hợp lý |
| 粗利を割り込む | あらりをわりこむ | THÔ LỢI | Phá ngưỡng margin |
| 致しかねます | いたしかねます | — | Khó thực hiện được |
| エスカレーション | エスカレーション | — | Đưa lên cấp trên |
| 達成度合い | たっせいどあい | ĐẠT THÀNH ĐỘ | Mức độ đạt được |', 'system', 26, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000027, 800000007, NULL, 'markdown_book', 'Rule 27 — Re-anchor sau pushback / 再アンカリング', '# Rule 27 — Re-anchor sau pushback / 再アンカリング
> **Luận điểm.** Sau khi khách bác bỏ anchor đầu (¥18M → "高い"), KHÔNG vội nhượng bộ ngay. Cần **re-anchor**: lập lại VALUE ban đầu + thêm lý lẽ + nhắc lại mục tiêu. Hiệu ứng: khách bị "kéo neo về" ¥18M một lần nữa, lần này có thêm cơ sở. Không re-anchor → mỗi lần khách ép là lại giảm giá → rò rỉ ¥1-2M.
>
> Pushback された anchor は単純に下げない。value 再強調 + 新事実追加で再 anchor。「¥18M は妥当」を相手に再認識させる。
>
> **Liên quan:** rule 18 (anchoring), rule 20 (高い対応), rule 23 (ROI).

---

## Bối cảnh / 場面
Sau khi 大垣 reject ¥18M là "厳しい" (rule 19), tới ngày 2 (持ち帰り検討 sau), khách quay lại với "¥16M でないと". Trước khi vội cắt scope, Dũng re-anchor.

---

## Hội thoại XẤU — không neo lại giá, lập tức cắt
| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り<ruby>検討<rt>けんとう</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>、¥16M でないと<ruby>社内<rt>しゃない</rt></ruby><ruby>通<rt>とお</rt></ruby>せません。」 <br/>*Mang về xem xét xong, không phải ¥16M là không qua nội bộ.* |
| **ズン** | 「<ruby>分<rt>わ</rt></ruby>かりました、¥16M で scope -10% で。」 <br/>*Em rõ ạ, ¥16M kèm scope -10% ạ.* |
| **大垣** | 「ありがとうございます。」 <br/>*Cảm ơn anh.* |

**Vì sao xấu:** Dũng bỏ qua cơ hội neo lại giá. ¥18M chỉ mới hôm trước còn là mức giá có giá trị vững chắc, giờ biến mất. Khách "thắng" vòng 2 → có thể ép tiếp ở vòng ký hợp đồng.

---

## Hội thoại TỐT — neo lại giá + thông tin mới + điều kiện đổi
*考え*

| Vai | Câu |
|---------|-----|
| **大垣** | 「持ち帰り検討の結果、¥16M でないと社内通せません。」 <br/>*Mang về xem xét xong, không phải ¥16M là không qua nội bộ.* |
| **ズン** | 「ご<ruby>検討<rt>けんとう</rt></ruby>ありがとうございます。**<ruby>改<rt>あらた</rt></ruby>めて<ruby>整理<rt>せいり</rt></ruby>させていただきますと**【1】、¥18M はROI 4.4 <ruby>倍<rt>ばい</rt></ruby>、Payback 2.3 ヶ<ruby>月<rt>げつ</rt></ruby>、3 <ruby>年<rt>ねん</rt></ruby> NPV ¥234M という<ruby>構造<rt>こうぞう</rt></ruby>で、<ruby>御社<rt>おんしゃ</rt></ruby>の +¥80M GMV <ruby>目標達成<rt>もくひょうたっせい</rt></ruby>に<ruby>最<rt>もっと</rt></ruby>も<ruby>合致<rt>がっち</rt></ruby>する<ruby>設計<rt>せっけい</rt></ruby>でございます。」 <br/>*Em cảm ơn quý anh đã xem xét ạ. Xin phép em sắp xếp lại — ¥18M có cấu trúc ROI 4.4 lần, Payback 2.3 tháng, NPV 3 năm ¥234M, là thiết kế khớp nhất với mục tiêu +¥80M GMV của quý cty ạ.* |
| **ズン** | 「**<ruby>追加情報<rt>ついかじょうほう</rt></ruby>として**【2】、Phase 2 <ruby>同等<rt>どうとう</rt></ruby>の SLA 99.9% を<ruby>維持<rt>いじ</rt></ruby>しつつ、AI レコメンドエンジンの<ruby>精度<rt>せいど</rt></ruby>を Phase 2 <ruby>比<rt>ひ</rt></ruby> +18% (vs. <ruby>当初提案<rt>とうしょていあん</rt></ruby> +12%) に<ruby>拡張<rt>かくちょう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>との<ruby>社内検証<rt>しゃないけんしょう</rt></ruby><ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました【3】。これにより transaction <ruby>単価<rt>たんか</rt></ruby><ruby>期待値<rt>きたいち</rt></ruby>は +14% に<ruby>上方修正<rt>じょうほうしゅうせい</rt></ruby>、Annual return も +¥15M/<ruby>年<rt>ねん</rt></ruby><ruby>改善<rt>かいぜん</rt></ruby><ruby>見込<rt>みこ</rt></ruby>み。」 <br/>*Thông tin thêm: giữ SLA 99.9% tương đương Phase 2, độ chính xác AI recommend engine có thể mở rộng lên +18% so Phase 2 (so với đề xuất ban đầu +12%) — đã có kết quả kiểm chứng nội bộ. Theo đó kỳ vọng đơn giá transaction điều chỉnh tăng lên +14%, Annual return cải thiện +¥15M/năm ạ.* |
| **ズン** | 「**この value を<ruby>踏<rt>ふ</rt></ruby>まえつつ、<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>社内<rt>しゃない</rt></ruby>ハードルにも<ruby>合<rt>あ</rt></ruby>わせる<ruby>形<rt>かたち</rt></ruby>として**【4】 — **¥17M で scope <ruby>維持<rt>いじ</rt></ruby> + 2 <ruby>年契約<rt>ねんけいやく</rt></ruby>**を<ruby>再提案<rt>さいていあん</rt></ruby>。¥16M は scope -15% (AI dashboard 2nd phase <ruby>後出<rt>あとだ</rt></ruby>し) となります。**御社のご<ruby>判断<rt>はんだん</rt></ruby>としていかがでしょうか**？」 <br/>*Trên nền value đó, đồng thời khớp rào nội bộ quý cty — em tái đề xuất ¥17M giữ scope + hợp đồng 2 năm. ¥16M là scope -15% (đẩy AI dashboard sang 2nd phase). Quý anh thấy thế nào ạ?* |
| **大垣** | 「+18% <ruby>精度<rt>せいど</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>、<ruby>稟議書<rt>りんぎしょ</rt></ruby>に<ruby>追加<rt>ついか</rt></ruby>できます。¥17M + 2 <ruby>年<rt>ねん</rt></ruby>なら<ruby>社内再協議<rt>しゃないさいきょうぎ</rt></ruby>します。」 <br/>*Vụ +18% độ chính xác có thể thêm vào ringi-sho. ¥17M + 2 năm thì tôi đem ra thảo luận lại nội bộ.* |

 **Ghi chú:**
- 【1】**「改めて整理」** = signal "ta sẽ restate value", khách biết đợi.
- 【2】**「追加情報として」** = key. Tái neo giá cần thêm dữ kiện mới — KHÔNG phải lặp lại nguyên văn.
- 【3】**社内検証結果 = AI 精度 +18% (上方修正)** — anchor lại với số ấn tượng hơn.
- 【4】**Vẫn show flexibility** "御社の社内ハードルに合わせる" — re-anchor không có nghĩa cứng nhắc, kèm 2 option.

---

## Cụm từ mẫu
> **「再アンカリング = value 再強調 + 新事実追加 + 2 option。即値引きは leak。」**
>
> *Tái neo giá = nhắc lại giá trị + thêm thông tin mới + 2 phương án. Giảm ngay là rò rỉ giá trị.*

---

## Tránh
- Nhắc lại giá trị mà chỉ lặp nguyên văn → khách chán, không hiệu lực
- Thông tin mới quá yếu (vd: "white paper更新") → khách đọc là độn chỗ
- Không kèm lựa chọn có điều kiện đổi → khách cảm thấy bị dồn vào góc tường
- Nhắc lại giá trị liên tục mà không chốt → khách mệt, bỏ cuộc

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 再アンカリング | さいアンカリング | — | Neo giá lại |
| 改めて整理 | あらためてせいり | CHỈNH LÝ | Sắp xếp lại |
| 追加情報 | ついかじょうほう | TRUY GIA TÌNH BÁO | Thông tin thêm |
| 上方修正 | じょうほうしゅうせい | THƯỢNG PHƯƠNG TU CHÍNH | Điều chỉnh tăng |
| 社内検証 | しゃないけんしょう | XÃ NỘI KIỂM CHỨNG | Kiểm chứng nội bộ |
| 期待値 | きたいち | KỲ ĐÃI TRỊ | Giá trị kỳ vọng |
| 社内ハードル | しゃないハードル | XÃ NỘI | Rào nội bộ |
| 再協議 | さいきょうぎ | TÁI HIỆP NGHỊ | Thảo luận lại |', 'system', 27, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000028, 800000007, NULL, 'markdown_book', 'Rule 28 — Walk away phong nhã / 撤退の作法', '# Rule 28 — Walk away phong nhã / 撤退の作法
> **Luận điểm.** Khi vượt điểm rút lui, phải rút — nhưng rút **lịch sự để giữ quan hệ cho thương vụ sau**. Mô hình: **(1) Ghi nhận khách**, **(2) Bày tỏ tiếc nuối**, **(3) Để ngỏ cánh cửa** ("Phase 4 で改めて"), **(4) Giữ thể diện cả 2 bên**. KHÔNG kết thúc bằng tông giọng "thất bại".
>
> 撤退は失敗ではない。次回再 approach のため relationship を保つ。「今回は折り合わなかった」という neutral tone が標準。
>
> **Liên quan:** rule 08 (撤退ライン), rule 26 (脅し対応), rule 35 (sách 06 phần IV — 商談打ち切り).

---

## Bối cảnh / 場面
Round 4: 大垣 + 中村 CFO push xuống ¥14M (dưới điểm rút lui ¥15.5M). Hà CTO đã vào cuộc (rule 26) nhưng khách vẫn không đồng ý. Dũng phải rút lui phong nhã.

---

## Hội thoại XẤU — rút lui trong xúc động
*疲 · 冷*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>最終的<rt>さいしゅうてき</rt></ruby>に ¥14M でないと<ruby>無理<rt>むり</rt></ruby>です。」 <br/>*Cuối cùng không phải ¥14M là không được.* |
| **ズン** | 「分かりました、では今回はなしで。<ruby>残念<rt>ざんねん</rt></ruby>ですね。Y 社さんに<ruby>発注<rt>はっちゅう</rt></ruby>ということで…」 <br/>*Em rõ ạ, vậy lần này không vậy ạ. Tiếc nhỉ. Vậy quý anh đặt Y社 ạ...* |
| **大垣** | 「では<ruby>失礼<rt>しつれい</rt></ruby>します。」 <br/>*Vậy chào em.* |

**Vì sao xấu:** "残念" + nhắc đến Y社 = thái độ thù địch gián tiếp. Cánh cửa đóng lại. Phase 4 không có cơ hội. Tông giọng "失敗" rõ ràng.

---

## Hội thoại TỐT — rút lui điềm tĩnh + để ngỏ cửa
*2 秒沈黙、その後 · softer tone*

| Vai | Câu |
|---------|-----|
| **大垣** | 「最終的に ¥14M でないと無理です。」 <br/>*Cuối cùng không phải ¥14M là không được.* |
| **ズン** | 「**ご<ruby>検討<rt>けんとう</rt></ruby>、本当にありがとうございました**【1】。¥14M でしたら<ruby>弊社<rt>へいしゃ</rt></ruby>のご<ruby>提供<rt>ていきょう</rt></ruby>できる scope では Phase 3 <ruby>当初<rt>とうしょ</rt></ruby><ruby>目的<rt>もくてき</rt></ruby>の<ruby>達成<rt>たっせい</rt></ruby>が<ruby>困難<rt>こんなん</rt></ruby>となり、<ruby>結果的<rt>けっかてき</rt></ruby>に<ruby>御社<rt>おんしゃ</rt></ruby>にご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしてしまいます。」 <br/>*Em xin chân thành cảm ơn quý anh đã xem xét. ¥14M thì với scope bên em có thể cung cấp, đạt mục tiêu Phase 3 ban đầu khó, kết quả cuối lại làm phiền quý cty ạ.* |
| **ズン** | 「**今回は<ruby>条件面<rt>じょうけんめん</rt></ruby>で<ruby>折<rt>お</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いがつかず、<ruby>誠<rt>まこと</rt></ruby>に<ruby>残念<rt>ざんねん</rt></ruby>ではございますが、<ruby>本件<rt>ほんけん</rt></ruby>はここでクローズとさせていただければと<ruby>存<rt>ぞん</rt></ruby>じます**【2】。」 <br/>*Lần này điều kiện chưa khớp, em thực sự rất tiếc, xin phép cho em được khép lại vụ việc tại đây ạ.* |
| **ズン** | 「**Phase 2 でのご<ruby>縁<rt>えん</rt></ruby>は弊社にとって<ruby>大変<rt>たいへん</rt></ruby><ruby>貴重<rt>きちょう</rt></ruby>な<ruby>経験<rt>けいけん</rt></ruby>でございます**。**今後御社の<ruby>事業<rt>じぎょう</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>が変わり、<ruby>再度<rt>さいど</rt></ruby>ご一緒できる<ruby>機会<rt>きかい</rt></ruby>がございましたら、ぜひお<ruby>声<rt>こえ</rt></ruby>がけください**【3】。例えば Phase 4 や<ruby>別案件<rt>べつあんけん</rt></ruby>のご<ruby>相談<rt>そうだん</rt></ruby>、いつでも<ruby>歓迎<rt>かんげい</rt></ruby>いたします。」 <br/>*Mối duyên ở Phase 2 là trải nghiệm rất quý với bên em ạ. Sau này nếu môi trường kinh doanh quý cty thay đổi, có cơ hội đồng hành lại, xin quý anh liên hệ em ạ. Ví dụ Phase 4 hay dự án khác, em luôn hoan nghênh ạ.* |
| **大垣** | 「ご<ruby>丁寧<rt>ていねい</rt></ruby>にありがとうございます。今回は条件が合いませんでしたが、Phase 2 での<ruby>協業<rt>きょうぎょう</rt></ruby>は弊社としても<ruby>評価<rt>ひょうか</rt></ruby>しております。今後何かあれば、こちらからもお声がけします。」 <br/>*Cảm ơn em đã chu đáo. Lần này điều kiện chưa khớp, nhưng hợp tác Phase 2 bên tôi cũng đánh giá tốt. Sau này có việc gì, bên tôi cũng sẽ liên hệ lại.* |
| **ハー CTO** | 「ありがとうございます。本日のお<ruby>時間<rt>じかん</rt></ruby>、<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。」 <br/>*Em cảm ơn ạ. Cảm ơn quý anh dành thời gian hôm nay ạ.* |

 **Ghi chú:**
- 【1】**Ghi nhận thời gian khách** — họ đã đầu tư 4 vòng, phải ghi nhận.
- 【2】**Ngôn ngữ kết thúc trung tính** "条件面で折り合いがつかず" — KHÔNG đổ lỗi cho ai. "残念" + trung tính.
- 【3】**Câu để ngỏ cánh cửa** "Phase 4 や別案件、いつでも歓迎" — để lại khả năng. Khách Nhật ghi nhớ tông giọng này, có thể quay lại 6-12 tháng sau.

---

## Cụm từ mẫu
> **「『条件面で折り合いがつかず、誠に残念』+ để ngỏ cửa。tông xúc động + thất bại は禁。」**
>
> *"Không khớp được điều kiện, thật tiếc" + để ngỏ cửa. Tông xúc động + thất bại = cấm.*

---

## Tránh
- Nhắc đến Y社 gợi ý thái độ thù địch gián tiếp → cánh cửa đóng lại
- Bộc lộ tức giận / thất vọng → thiếu chuyên nghiệp, tin lan ra
- Tông giọng "失敗" / "ダメ" → khách Nhật ghi nhớ + truyền tai
- Quên câu để ngỏ cửa → không có cơ hội Phase 4

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 撤退 | てったい | TRIỆT THOÁI | Rút lui |
| 折り合いがつかない | おりあいがつかない | — | Không khớp |
| 誠に残念 | まことにざんねん | THÀNH TÀN NIỆM | Thật tiếc |
| クローズ | クローズ | — | Khép lại / kết thúc |
| ご縁 | ごえん | DUYÊN | Mối duyên / kết nối |
| 貴重な経験 | きちょうなけいけん | QUÝ TRỌNG KINH NGHIỆM | Trải nghiệm quý |
| 事業環境 | じぎょうかんきょう | SỰ NGHIỆP HOÀN CẢNH | Môi trường kinh doanh |
| 歓迎 | かんげい | HOAN NGHÊNH | Hoan nghênh |', 'system', 28, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000029, 800000007, NULL, 'markdown_book', 'Rule 29 — Xử lý yêu cầu nhỏ sau chốt / ニブル・後出し対応', '# Rule 29 — Xử lý yêu cầu nhỏ sau chốt / ニブル・後出し対応
> **Luận điểm.** **Xin thêm nhỏ** = sau khi gần chốt thương vụ, khách thêm yêu cầu nhỏ ("ついでに training 1 日無料で…"). 1 lần xin thêm nhỏ = ¥0.5M, nhiều lần = ¥3-5M rò rỉ. Mô hình: **(1) Ghi nhận**, **(2) Đưa điều kiện đổi** (KHÔNG cho miễn phí), **(3) Đặt lại đồng hồ** (yêu cầu mới = xem lại toàn bộ thỏa thuận).
>
> 商談ほぼ closed の時点で「ついでに〜」と yêu cầu nhỏ xin thêm が出ることがある。ただで応じない。「条件追加なら全体合意も再 review」と đặt lại đồng hồ。
>
> **Liên quan:** rule 24 (譲歩交換), rule 09 (concession plan), sách 06 phần IV rule 33.

---

## Bối cảnh / 場面
Sau Phase 3 chốt ¥17M + 2 năm + dashboard kèm trade (rule 24), 田中 PMO Slack Dũng "ついでに training を 1 日無料で含めていただけますか？社内導入のため" — classic nibble.

---

## Hội thoại XẤU — chấp nhận đòi thêm miễn phí
| Vai | Câu (Slack) |
|---------|-----|
| **田中PMO** | 「ズン<ruby>様<rt>さま</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になっております。Phase 3 contract draft <ruby>確認<rt>かくにん</rt></ruby>しましたが、ついでに social engineer <ruby>部署<rt>ぶしょ</rt></ruby><ruby>向<rt>む</rt></ruby>け training 1 <ruby>日<rt>にち</rt></ruby><ruby>無料<rt>むりょう</rt></ruby>で<ruby>追加<rt>ついか</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしょうか？」 <br/>*Anh Dũng ơi, tôi đã xem bản thảo hợp đồng Phase 3 rồi, tiện thể bên tôi thêm training 1 ngày miễn phí cho phòng social engineer được không ạ?* |
| **ズン** | 「分かりました、サービスで<ruby>含<rt>ふく</rt></ruby>めます。」 <br/>*Em rõ ạ, em cho thêm vào miễn phí ạ.* |
| (1 週間後) **田中PMO** | 「ありがとうございます！ついでに 2 <ruby>日目<rt>にちめ</rt></ruby>も<ruby>追加<rt>ついか</rt></ruby>で…」 <br/>*(1 tuần sau) Cảm ơn. Tiện thể tôi muốn thêm ngày 2…* |
| **ズン** | 「えっ、また…？」 <br/>*Ơ, lại nữa ạ…?* |

**Vì sao xấu:** Chấp nhận lần 1 → khách push lần 2, 3. Mỗi lần ¥0.3-0.5M rò rỉ. Đã sang giai đoạn hợp đồng mà vẫn trôi chi phí.

---

## Hội thoại TỐT — điều kiện đổi + đặt lại đồng hồ + bảo vệ thỏa thuận
| Vai | Câu (Slack) |
|---------|-----|
| **田中PMO** | 「ズン<ruby>様<rt>さま</rt></ruby>、Phase 3 contract draft <ruby>確認<rt>かくにん</rt></ruby>しました。ついでに social engineer <ruby>部署<rt>ぶしょ</rt></ruby><ruby>向<rt>む</rt></ruby>け training 1 <ruby>日<rt>にち</rt></ruby><ruby>無料<rt>むりょう</rt></ruby>で<ruby>追加<rt>ついか</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしょうか？」 <br/>*Anh Dũng, tôi đã xem bản thảo hợp đồng Phase 3 rồi. Tiện thể thêm training 1 ngày miễn phí cho phòng social engineer được không ạ?* |
| **ズン** | 「**お<ruby>声<rt>こえ</rt></ruby>がけありがとうございます**【1】。training 1 <ruby>日<rt>にち</rt></ruby> (¥0.4M <ruby>相当<rt>そうとう</rt></ruby>) は<ruby>当初<rt>とうしょ</rt></ruby>の<ruby>契約<rt>けいやく</rt></ruby> scope <ruby>外<rt>がい</rt></ruby>となります。**<ruby>社内<rt>しゃない</rt></ruby> training をご<ruby>希望<rt>きぼう</rt></ruby>でしたら、<ruby>以下<rt>いか</rt></ruby> 2 <ruby>案<rt>あん</rt></ruby>**【2】**: (A) <ruby>有償<rt>ゆうしょう</rt></ruby>で ¥0.4M <ruby>追加<rt>ついか</rt></ruby>、(B) <ruby>既存<rt>きそん</rt></ruby> scope <ruby>内<rt>ない</rt></ruby>で AI dashboard カスタムを 1 <ruby>機能<rt>きのう</rt></ruby> trade、トータル<ruby>金額<rt>きんがく</rt></ruby><ruby>不変<rt>ふへん</rt></ruby>。」 <br/>*Cảm ơn em đã liên hệ. Training 1 ngày (tương đương ¥0.4M) nằm ngoài scope hợp đồng ban đầu. Nếu phía em muốn training nội bộ, có 2 phương án: (A) Có phí, thêm ¥0.4M, (B) Trade 1 chức năng AI dashboard custom trong scope hiện tại, tổng tiền không đổi ạ.* |
| **ズン** | 「**なお、<ruby>追加<rt>ついか</rt></ruby><ruby>要素<rt>ようそ</rt></ruby>のご<ruby>検討<rt>けんとう</rt></ruby>に<ruby>際<rt>さい</rt></ruByの</ruby>しては<ruby>全体<rt>ぜんたい</rt></ruby><ruby>合意<rt>ごうい</rt></ruby>の<ruby>再<rt>さい</rt></ruby> review が<ruby>必要<rt>ひつよう</rt></ruby>となるため、<ruby>契約<rt>けいやく</rt></ruby><ruby>締結<rt>ていけつ</rt></ruby>スケジュールが 1 <ruby>週間<rt>しゅうかん</rt></ruby><ruby>後<rt>うし</rt></ruby>ろ<ruby>倒<rt>だお</rt></ruby>しとなる<ruby>可能性<rt>かのうせい</rt></ruby>があります**【3】。ご<ruby>都合<rt>つごう</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください。」 <br/>*Thêm nữa, để xem xét yếu tố bổ sung này thì cần xem lại toàn bộ thỏa thuận, có thể lịch ký hợp đồng sẽ lùi 1 tuần. Em xin nghe ý anh ạ.* |
| **田中PMO** | 「ご<ruby>丁寧<rt>ていねい</rt></ruby>に。<ruby>社内<rt>しゃない</rt></ruby>で<ruby>再協議<rt>さいきょうぎ</rt></ruby>し、<ruby>後<rt>のち</rt></ruby>ほど<ruby>正式<rt>せいしき</rt></ruby>に。スケジュール<ruby>優先<rt>ゆうせん</rt></ruby>で training は<ruby>当初<rt>とうしょ</rt></ruby><ruby>通<rt>どお</rt></ruById</ruby>り<ruby>無<rt>な</rt></ruby>しで<ruby>進<rt>すす</rt></ruby>めます。」 <br/>*Cảm ơn anh chu đáo. Tôi thảo luận lại nội bộ rồi báo chính thức sau. Ưu tiên lịch, training thì giữ nguyên không thêm, mình tiếp tục như ban đầu ạ.* |

 **Ghi chú:**
- 【1】**Ghi nhận nhẹ** "お声がけありがとうございます" — không cứng "không" ngay.
- 【2】**Phương án (A) có phí / (B) đổi phạm vi** — không cho miễn phí, nhưng vẫn mở đường. Khách tự quyết.
- 【3】**Đặt lại đồng hồ** = mấu chốt. Yêu cầu mới = xem lại toàn bộ thỏa thuận = lùi lịch → khách thường tự rút yêu cầu thêm vì sợ trễ tiến độ.

---

## Cụm từ mẫu
> **「Xin thêm nhỏ 無償受けはNG。trade で対応 + 全体 re-review で reset clock。schedule slip が抑止力。」**
>
> *KHÔNG nhận yêu cầu nhỏ xin thêm miễn phí. Đưa điều kiện đổi rồi đặt lại đồng hồ — lùi lịch làm khách tự rút.*

---

## Tránh
- "サービスで" → mỗi lần rò ¥0.3-0.5M, nhân với nhiều lần
- Chấp nhận miệng rồi quên tính phí → tranh chấp hợp đồng
- Từ chối cứng "無理です" → sứt mẻ quan hệ khách hàng
- Quên ngôn ngữ đặt lại đồng hồ → khách push tiếp vì biết "thêm 1 thứ miễn phí"

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ニブル | ニブル | — | Yêu cầu nhỏ xin thêm |
| 後出し | あとだし | — | Đưa thêm sau |
| ついでに | ついでに | — | Tiện thể |
| サービスで | サービスで | — | Miễn phí / tặng thêm |
| 全体合意 | ぜんたいごうい | TOÀN THỂ HỢP Ý | Đồng thuận tổng thể |
| 後ろ倒し | うしろだおし | — | Đẩy lùi (hạn chót) |
| 抑止力 | よくしりょく | ỨC CHỈ LỰC | Sức răn đe |
| 再 review | さいレビュー | — | Xem lại |', 'system', 29, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000030, 800000007, NULL, 'markdown_book', 'Rule 30 — Confirm point of agreement / 合意点の確認', '# Rule 30 — Confirm point of agreement / 合意点の確認
> **Luận điểm.** Cuối phiên đàm phán, KHÔNG được kết thúc bằng "じゃあそれで". Phải **đọc lại từng điểm** đã đồng thuận: giá, phạm vi, thời hạn, điều kiện. Trong văn hóa 稟議, thiếu 1 mục = sau khi ringi chạy sẽ phát hiện lệch → đàm phán lại. Đọc lại = chốt chắc trước khi ra khỏi phòng họp.
>
> 商談クロージングでは「合意事項の読み戻し」が必須。価格・スコープ・スケジュール・条件を一項目ずつ確認することで、稟議に上げた後の認識ズレを防ぐ。
>
> **Liên quan:** rule 14 (mirror·要約), rule 31 (recap mail), rule 33 (条項調整).

---

## Bối cảnh / 場面
Round 3 đàm phán Phase 3 vừa close ¥17M + 2 năm + dashboard. Trước khi 大垣 đứng dậy, Dũng phải đọc lại xác nhận. Nếu bỏ qua, Slack hôm sau sẽ có "あれ、SLA は 99.5% でしたっけ" và mọi thứ bắt đầu lại.

---

## Hội thoại XẤU — chốt mà không đọc lại xác nhận
*困*

| Vai | Câu |
|---------|-----|
| **大垣** | 「では、<ruby>概<rt>おおむ</rt></ruby>ね<ruby>合意<rt>ごうい</rt></ruby>ということで。」 <br/>*Thôi, coi như đã đại thể đồng thuận nhé.* |
| **ズン** | 「はい、ありがとうございます！では<ruby>契約書<rt>けいやくしょ</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めます。」 <br/>*Vâng, em cảm ơn ạ! Em sẽ tiến hành soạn hợp đồng ạ.* |
| (3日後 Slack) **田中PMO** | 「ズン<ruby>様<rt>さま</rt></ruby>、<ruby>契約書<rt>けいやくしょ</rt></ruby>ドラフト<ruby>拝見<rt>はいけん</rt></ruby>しました。**SLA 99.9% となっていますが、<ruby>当日<rt>とうじつ</rt></ruby> 99.5% で<ruby>合意<rt>ごうい</rt></ruby>では？**」 <br/>*Anh Dũng, tôi đã xem bản nháp hợp đồng. SLA ghi 99.9% nhưng hôm đó chúng ta thống nhất 99.5% mà?* |
| **ズン** | 「えっ、99.9% で<ruby>合意<rt>ごうい</rt></ruby>したと<ruby>記憶<rt>きおく</rt></ruby>しているのですが…」 <br/>*Ơ, em nhớ là đã thống nhất 99.9% mà ạ...* |

**Vì sao xấu:** Không đọc lại xác nhận → mỗi bên nhớ khác. Khi Dũng nhớ 99.9% còn Tanaka nhớ 99.5% — không có biên bản → khách thắng vì người bán phải nhượng. Bỏ qua 30 giây đọc lại = mất ¥1-2M chi phí bảo trì suốt 2 năm.

---

## Hội thoại TỐT — đọc lại xác nhận từng mục
*メモ確認*

| Vai | Câu |
|---------|-----|
| **大垣** | 「では、<ruby>概<rt>おおむ</rt></ruby>ね<ruby>合意<rt>ごうい</rt></ruby>ということで。」 <br/>*Thôi, coi như đã đại thể đồng thuận nhé.* |
| **ズン** | 「ありがとうございます。**<ruby>最後<rt>さいご</rt></ruby>に<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>合意事項<rt>ごういじこう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください**【1】。1<ruby>点<rt>てん</rt></ruby>ずつ<ruby>読<rt>よ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げます。」 <br/>*Em cảm ơn ạ. Cuối cùng cho phép em xác nhận các điểm đã đồng thuận hôm nay ạ. Em đọc từng mục một.* |
| **ズン** | 「**①<ruby>価格<rt>かかく</rt></ruby>**: ¥17M (<ruby>税抜<rt>ぜいぬき</rt></ruby>)、**②<ruby>契約期間<rt>けいやくきかん</rt></ruby>**: 2026年7月-2028年6月の2<ruby>年間<rt>ねんかん</rt></ruby>、**③スコープ**: AI レコメンドエンジン + <ruby>専任<rt>せんにん</rt></ruby>PM + AI dashboard カスタム1<ruby>機能<rt>きのう</rt></ruby>、**④SLA**: 99.9%、**⑤<ruby>支払<rt>しはらい</rt></ruby>**: <ruby>月次後払<rt>げつじあとばら</rt></ruby>い、**⑥<ruby>成果物<rt>せいかぶつ</rt></ruby> IP**: <ruby>共同所有<rt>きょうどうしょゆう</rt></ruby>、**⑦<ruby>稟議<rt>りんぎ</rt></ruby>スケジュール**: <ruby>御社<rt>おんしゃ</rt></ruby>にて5<ruby>月末<rt>がつまつ</rt></ruby>まで【2】。<ruby>以上<rt>いじょう</rt></ruby>で<ruby>齟齬<rt>そご</rt></ruby>ございませんでしょうか？」 <br/>*①Giá: ¥17M (chưa thuế), ②Kỳ hạn: 7/2026 - 6/2028 (2 năm), ③Phạm vi: AI recommend engine + PM chuyên trách + 1 tính năng tùy biến dashboard, ④SLA: 99.9%, ⑤Thanh toán: trả sau hàng tháng, ⑥IP sản phẩm: đồng sở hữu, ⑦Lịch ringi: bên anh duyệt trong tháng 5. Tất cả không có sai lệch nào ạ?* |
| **大垣** | 「はい、その<ruby>通<rt>とお</rt></ruby>りです。1<ruby>点<rt>てん</rt></ruby>だけ、**<ruby>支払<rt>しはらい</rt></ruby>サイトは<ruby>月末締<rt>げつまつじ</rt></ruby>め<ruby>翌月末払<rt>よくげつまつばら</rt></ruby>い**でお<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Đúng vậy. Chỉ có một điểm: chu kỳ thanh toán là chốt cuối tháng, trả cuối tháng kế tiếp giúp tôi.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>いたしました。**<ruby>月末締<rt>げつまつじ</rt></ruby>め<ruby>翌月末払<rt>よくげつまつばら</rt></ruby>いを<ruby>追記<rt>ついき</rt></ruby>**して、**24<ruby>時間以内<rt>じかんいない</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>メールをお<ruby>送<rt>おく</rt></ruby>りいたします**【3】。<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。」 <br/>*Em nhận rồi ạ. Em sẽ bổ sung ''chốt cuối tháng - trả cuối tháng kế'', và gửi mail tổng kết trong vòng 24 giờ ạ. Hôm nay em cảm ơn anh nhiều ạ.* |

 **Ghi chú:**
- 【1】**「合意事項を確認させてください」** — thiết lập nghi thức đọc lại. Không phải tuỳ chọn, là quy trình bắt buộc.
- 【2】**7 mục đánh số** — giá / thời hạn / phạm vi / SLA / thanh toán / sở hữu trí tuệ / lịch ringi. Mỗi mục là 1 nguồn sai lệch tiềm ẩn.
- 【3】**Cam kết mail tóm tắt trong 24h** — bắc cầu sang rule 31. Đọc lại xác nhận miệng + mail tóm tắt = chốt kép.

---

## Cụm từ mẫu
> **「合意の口頭読み戻し + 24時間以内 mail tóm tắt = ダブルロック。」**
>
> *Đọc lại xác nhận miệng + mail tóm tắt trong 24h = chốt kép. Bỏ qua = đàm phán lại.*

---

## Tránh
- "概ね合意" mà không liệt kê từng mục → mơ hồ = mỗi bên nhớ khác
- Đọc lại xác nhận nhanh mà bỏ qua SLA / điều khoản thanh toán → đây là phần khách hay nhớ lệch
- Không hỏi "齟齬ございませんでしょうか" → khách không có cơ hội sửa ngay tại chỗ
- Đọc lại xác nhận xong rồi đứng dậy luôn — phải cam kết thời hạn mail tóm tắt ngay

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 合意事項 | ごういじこう | HỢP Ý SỰ HẠNG | Các điểm đã đồng thuận |
| 読み戻し | よみもどし | — | Đọc lại xác nhận |
| 齟齬 | そご | TRỞ NGỮ | Sai lệch / không khớp |
| 月末締め | げつまつじめ | NGUYỆT MẠT ĐÌNH | Chốt cuối tháng |
| 翌月末払い | よくげつまつばらい | DỰC NGUYỆT MẠT BẢI | Trả cuối tháng kế |
| 共同所有 | きょうどうしょゆう | CỘNG ĐỒNG SỞ HỮU | Đồng sở hữu |
| 概ね | おおむね | — | Đại thể |', 'system', 30, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000031, 800000007, NULL, 'markdown_book', 'Rule 31 — Mail tóm tắt xác nhận / 要約・確認メール', '# Rule 31 — Mail tóm tắt xác nhận / 要約・確認メール
> **Luận điểm.** Trong vòng **24 giờ** sau đàm phán, gửi mail tóm tắt liệt kê: (1) người tham dự, (2) các điểm đã đồng thuận, (3) các điểm còn mở, (4) bước tiếp theo + người phụ trách + hạn chót. Mail tóm tắt là **văn bản chính thức** trong quy trình ringi — nếu không có, phạm vi sẽ lệch trong 1-2 tuần đến lúc soạn hợp đồng.
>
> 商談後 24 時間以内に「要約・確認メール」を送る。出席者・合意事項・未決事項・次のアクションを明記。これは稟議に添付する正式文書となる。
>
> **Liên quan:** rule 30 (合意確認), rule 32 (LOI / 契約書), sách 03 rule 28 (議事録).

---

## Bối cảnh / 場面
Đàm phán chốt 17:30 thứ Năm. Dũng về văn phòng 18:30. Trễ nhất 17:30 thứ Sáu phải gửi mail tóm tắtp. Nếu để sang thứ Hai → khách Ōgaki ringi mà không có evidence → mọi rủi ro thuộc Tiên Phát.

---

## Hội thoại XẤU — mail tóm tắt muộn 3 ngày, hình thức lỏng
*Slack 大垣に · 慌*

| Vai | Câu |
|---------|-----|
| (月曜 15:00、<ruby>商談<rt>しょうだん</rt></ruby>から 5日後) **ズン** | 「<ruby>大垣<rt>おおがき</rt></ruby>様、<ruby>先日<rt>せんじつ</rt></ruby>はありがとうございました！<ruby>合意<rt>ごうい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>を<ruby>後<rt>のち</rt></ruby>ほどメールでお<ruby>送<rt>おく</rt></ruby>りします。」 <br/>*Anh Ōgaki, hôm trước em cảm ơn anh nhiều ạ! Các điểm đã đồng thuận em sẽ gửi mail sau ạ.* |
| **大垣** | 「ズン様、<ruby>社内<rt>しゃない</rt></ruby><ruby>稟議<rt>りんぎ</rt></ruby>が **<ruby>金曜<rt>きんよう</rt></ruby>から<ruby>動<rt>うご</rt></ruby>き<ruby>始<rt>はじ</rt></ruby>めて**、<ruby>文書<rt>ぶんしょ</rt></ruby>がないため **<ruby>保留<rt>ほりゅう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>**です。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>じゅう</rt></ruby>にいただけますか？」 <br/>*Anh Dũng, ringi nội bộ bên anh đã chạy từ thứ Sáu, vì chưa có văn bản nên đang phải tạm dừng. Trong hôm nay gửi được không?* |
| **ズン** | 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、すぐ<ruby>送<rt>おく</rt></ruby>ります！」 <br/>*Em xin lỗi anh ạ, em gửi ngay ạ!* |
| (16:30 送信、項目抜けあり) | (件名: 「Phase 3 の件」… 本文: 短い「合意ありがとうございました。¥17M で 2 年です」) <br/>*(Tiêu đề: "Vụ Phase 3"… body ngắn: "Cảm ơn anh đã đồng thuận. ¥17M, 2 năm")* |

**Vì sao xấu:** (a) Trễ 5 ngày = ringi bị block, (b) Tiêu đề mơ hồ, (c) Nội dung thiếu người tham dự, các điểm còn mở, bước tiếp theo. Khách phải nhờ Tiên Phát soạn lại → độ tin tưởng giảm. Phase 3 lùi 2 tuần.

---

## Hội thoại TỐT — mail tóm tắt trong 24h, đầy đủ các phần
*Hương xem lại trước khi gửi · file 開く · Slack Hương*

| Vai | Câu |
|---------|-----|
| (商談翌朝 09:30) **ズン** | 「フオン副部長、Phase 3 商談の確認メール bản thảo しました。送信前に一度ご確認お願いいたします。」 |
| **フオン** | 「件名 OK、出席者 OK、合意 7 項目 numbered OK、未決 2 項目 OK、次アクション owner+deadline 明記 OK。**いいね、送信して**。」 |
| (10:00 送信) **件名:** | 「【ご確認】Phase 3 商談合意事項のまとめ (4/24 開催)」 |
| **本文要点:** | 「①出席者 ②合意事項 (7項目) ③未決事項 (2項目) ④次のアクション (owner + 期限) ⑤添付: 提案書 v3.2」【1】 |
| (14:00 大垣返信) **大垣** | 「ズン様、迅速なご対応ありがとうございます。**読み戻し通り**で齟齬ございません。1点、稟議の上申は **5月7日** で動きます。」 |
| **ズン** | 「大垣様より OK 返信いただきました【2】。稟議 5/7 上申とのことです。次は契約書 draft を準備します。」 |

 **Ghi chú:**
- 【1】**5 phần** = Người tham dự / Điểm đồng thuận / Điểm chưa quyết / Bước tiếp theo / Đính kèm. Bỏ phần nào = mail tóm tắt không phục vụ được ringi.
- 【2】**Phản hồi OK = chốt**. Lịch sử mail này được đính kèm vào tài liệu ringi → hồ sơ chính thức. Nếu khách tranh chấp sau, có bằng chứng.
- **24h = hạn chuẩn**. Khách Nhật mong mail tóm tắt trong 24h giờ làm việc. Trễ → độ tin tưởng giảm đo được.

---

## Cụm từ mẫu
> **「24時間以内 + 5セクション (出席者 / 合意 / 未決 / 次アクション / 添付) = recap mail の標準。」**
>
> *Trong 24h + 5 phần = mail tóm tắt chuẩn. Trễ hoặc thiếu phần = ringi sẽ bị block.*

---

## Tránh
- Tiêu đề mơ hồ "Phase 3 の件" → khách không lưu trữ được, tìm kiếm không ra
- Bỏ "Điểm chưa quyết" → 1 tuần sau khi soạn hợp đồng sẽ phát hiện thiếu
- Bỏ "người phụ trách + hạn chót" trong bước tiếp theo → "誰がやるんですか" Slack 3 ngày sau
- Gửi không qua người phụ trách xem lại → lỗi đánh máy / sai số sẽ thành hồ sơ chính thức
- Gửi quá muộn cuối tuần (Thứ 7 22:00) → khách Nhật tránh mail cuối tuần; gửi Thứ 2 sáng còn gọn hơn

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 要約メール | ようやくメール | YẾU ƯỚC | Mail tóm tắt |
| 確認メール | かくにんメール | XÁC NHẬN | Mail xác nhận |
| 出席者 | しゅっせきしゃ | XUẤT TỊCH GIẢ | Người tham dự |
| 未決事項 | みけつじこう | VỊ QUYẾT SỰ HẠNG | Các mục chưa quyết |
| 次のアクション | つぎのアクション | — | Bước tiếp theo |
| 上申 | じょうしん | THƯỢNG THÂN | Đệ trình lên cấp trên |
| 添付 | てんぷ | THIÊM PHÓ | Đính kèm |

---

## Mẫu
(Mẫu mail tóm tắt JP/VN với 5 phần — xem hướng dẫn đính kèm cuốn sách)', 'system', 31, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000032, 800000007, NULL, 'markdown_book', 'Rule 32 — LOI trước, soạn hợp đồng sau / 契約書ドラフト・LOI', '# Rule 32 — LOI trước, soạn hợp đồng sau / 契約書ドラフト・LOI
> **Luận điểm.** Sau khi mail tóm tắt được xác nhận OK, KHÔNG nhảy thẳng sang hợp đồng đầy đủ. Bước trung gian: **LOI (Thư xác nhận ý định)** — văn bản 1-2 trang xác nhận **điều khoản thương mại + ý định ký hợp đồng**, ký 2 bên trong 1-2 tuần. Sau LOI mới soạn hợp đồng chính (4-8 tuần). Thiếu LOI = bản thảo hợp đồng sẽ bị "重要条件もう一度ね" → đàm phán lại.
>
> 商談合意 → LOI (1-2 ページ、commercial terms 確認) → 契約書ドラフト (詳細条項) の 2 段階。LOI を飛ばすと、契約書段階で「主要条件再確認」が発生し再交渉となる。
>
> **Liên quan:** rule 30 (合意確認), rule 31 (recap mail), rule 33 (条項調整).

---

## Bối cảnh / 場面
Nhận được phản hồi OK cho mail tóm tắt. Tuấn đề xuất "LOI khỏi cần, làm bản thảo hợp đồng luôn cho nhanh". Hương phủ định — Phase 3 ¥17M qua ringi 5/7, LOI là cầu nối giữa thỏa thuận miệng và hợp đồng chính thức.

---

## Hội thoại XẤU — bỏ qua LOI, nhảy thẳng hợp đồng đầy đủ
*Slack 内部 · 困*

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「ズン、recap OK 来たし、<ruby>契約書<rt>けいやくしょ</rt></ruby>ドラフトを<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>送<rt>おく</rt></ruby>ろう。LOI <ruby>余計<rt>よけい</rt></ruby>な<ruby>工程<rt>こうてい</rt></ruby>じゃない？」 <br/>*Dũng, mail tóm tắt OK rồi, gửi bản thảo hợp đồng thẳng đi. LOI có phải bước thừa không?* |
| **ズン** | 「では契約書 v1 を<ruby>作成<rt>さくせい</rt></ruby>して<ruby>大垣<rt>おおがき</rt></ruby>様に送ります。」 <br/>*Vâng, em sẽ làm bản thảo hợp đồng v1 gửi anh Ōgaki ạ.* |
| (2 週間後) **大垣** | 「ズン様、契約書 v1 <ruby>拝見<rt>はいけん</rt></ruby>しました。**ところで<ruby>価格<rt>かかく</rt></ruby> ¥17M は<ruby>税込<rt>ぜいこみ</rt></ruby>ですよね？**」 <br/>*Anh Dũng, đã xem contract v1. À mà giá ¥17M là đã bao gồm thuế đúng không?* |
| **ズン** | 「いえ、<ruby>税抜<rt>ぜいぬき</rt></ruby>で recap メールに<ruby>記載<rt>きさい</rt></ruby>しております…」 <br/>*Dạ không, em ghi ''chưa thuế'' trong recap mail rồi ạ...* |
| **大垣** | 「**社内では税込<ruby>前提<rt>ぜんてい</rt></ruby>で<ruby>稟議<rt>りんぎ</rt></ruby>が動いており**、ここから<ruby>差額<rt>さがく</rt></ruby>で<ruby>再交渉<rt>さいこうしょう</rt></ruby>になります…」 <br/>*Bên anh ringi đang chạy theo giả định ''đã thuế'', từ đây phần chênh lệch sẽ phải re-negotiate...* |

**Vì sao xấu:** Bỏ qua LOI → các điều khoản thương mại (giá, thời hạn, phạm vi) chỉ ở mail, không có chữ ký. Khách tranh chấp "bao gồm thuế hay chưa" → đàm phán lại ¥1.7M. LOI 1 trang ký 2 bên đã ngăn được chính xác chuyện này.

---

## Hội thoại TỐT — LOI 1-2 trang ký trước bản nháp hợp đồng
*Slack · Slack Hương*

| Vai | Câu |
|---------|-----|
| **フオン** | 「ズン、recap OK 来たね。**次は LOI ドラフト 1-2 ページ**【1】を準備して。 commercial terms 6 項目だけ。詳細条項は後の契約書 draft で詰める。」 |
| **ズン** | 「承知しました。LOI v1 作成して、本日中に弊社内で legal レビュー → 明日大垣様に送付いたします。」 |
| (翌日 LOI 送信、件名:「【LOI】Phase 3 業務委託に関する基本合意書 ご送付の件」) **本文:** | 「Phase 3 業務委託の主要条件 6 項目をまとめた LOI をお送りいたします。**ご捺印頂きましたら、続いて 4 週間以内に本契約書ドラフトをご提示**【2】いたします。」 |
| (3日後) **大垣** | 「ズン様、LOI 拝見しました。**社内 legal も問題なし**、税抜価格を明記頂いており明確です。本日捺印して PDF 送付いたします。」 |
| **ズン** | 「LOI 捺印戻り完了。次は本契約書 draft v1 を 4 週間以内に。条項面の調整に集中できます【3】。」 |

 **Ghi chú:**
- 【1】**LOI 6 mục** = Giá (ghi rõ chưa thuế) / Kỳ hạn / Phạm vi tóm tắt / SLA / Điều kiện thanh toán / Ngày có hiệu lực. Điều khoản chi tiết (bồi thường thiệt hại, IP chi tiết, hủy hợp đồng) chuyển sang hợp đồng chính.
- 【2】**LOI → hợp đồng chính trong 4 tuần** = kiểm soát nhịp độ. LOI 1 trang là nền tảng cho hợp đồng chính 30 trang.
- 【3】**LOI đã chốt điều khoản thương mại** → đàm phán hợp đồng chính chỉ còn về "điều khoản chi tiết". Không mở lại phần thương mại (chuyển sang rule 33).

---

## Cụm từ mẫu
> **「LOI = 商務合意のロック。本契約 = 条項詳細。順番を飛ばすと商務再交渉が発生する。」**
>
> *LOI khóa điều khoản thương mại. Hợp đồng chính khóa chi tiết điều khoản. Bỏ LOI = điều khoản thương mại sẽ mở lại lúc soạn thảo.*

---

## Tránh
- Tư duy "LOI là bước thừa" → 4 tuần soạn hợp đồng mà có 1 điều khoản bất đồng = mở lại toàn bộ
- LOI không ghi rõ giá đã hay chưa gồm thuế → bẫy 100%
- LOI gửi mà không qua pháp chế xem lại → lỗi chữ / cách diễn đạt sau này thành vấn đề diễn giải ràng buộc
- LOI gửi xong để cả tháng không theo dõi → hết hiệu lực / nguội dần; ghi rõ **hạn đóng dấu 2 tuần**

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| LOI | エル・オー・アイ | — | Thư xác nhận ý định |
| 基本合意書 | きほんごういしょ | CƠ BẢN HỢP Ý THƯ | Văn bản đồng thuận cơ bản (LOI theo thuật ngữ Nhật) |
| 捺印 | なついん | NẶT ẤN | Ký và đóng dấu |
| 本契約書 | ほんけいやくしょ | BẢN KHẾ ƯỚC THƯ | Hợp đồng chính |
| 主要条件 | しゅようじょうけん | CHỦ YẾU ĐIỀU KIỆN | Các điều khoản thương mại cốt lõi |
| 効力発生日 | こうりょくはっせいび | HIỆU LỰC PHÁT SINH NHẬT | Ngày có hiệu lực |
| 法務 | ほうむ | PHÁP VỤ | Bộ phận pháp chế |
| 税抜 | ぜいぬき | THUẾ BẠT | Chưa bao gồm thuế |

---

## Mẫu
(Mẫu LOI 1-2 trang JP/VN với 6 phần điều khoản thương mại — xem hướng dẫn đính kèm cuốn sách)', 'system', 32, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000033, 800000007, NULL, 'markdown_book', 'Rule 33 — Đàm phán cuối về điều khoản / 契約条項の最終調整', '# Rule 33 — Đàm phán cuối về điều khoản / 契約条項の最終調整
> **Luận điểm.** Sau LOI, bản thảo hợp đồng đi vào giai đoạn điều chỉnh điều khoản. Top 3 mục căng nhất với khách Nhật: **(1) Bồi thường thiệt hại (損害賠償上限)**, **(2) Quyền sở hữu trí tuệ** (đặc biệt là code & dữ liệu huấn luyện), **(3) SLA + phạt vi phạm**. Mục tiêu: giới hạn trách nhiệm ở mức **giá trị hợp đồng năm** (¥17M, KHÔNG vô hạn), code thuộc khách + thành phần tái sử dụng thuộc Tiên Phát.
>
> 本契約交渉は条項詳細フェーズ。giới hạn bồi thường・IP 帰属・SLA 罰則 が三大論点。Giới hạn là giá trị hợp đồng năm が業界標準。
>
> **Liên quan:** rule 32 (LOI), rule 24 (譲歩交換), rule 43 (escalation).

---

## Bối cảnh / 場面
Bản thảo hợp đồng v1 Tiên Phát gửi 大垣. Pháp chế 白鷗 trả về v2 với (a) bồi thường vô hạn, (b) toàn bộ quyền sở hữu trí tuệ thuộc 白鷗 (kể cả thành phần tái sử dụng). Hà CTO phản đối — Dũng cần đàm phán 3 vòng để đạt giới hạn = ¥17M + điều khoản phân chia quyền sở hữu trí tuệ.

---

## Hội thoại XẤU — chấp nhận điều khoản cứng để chốt nhanh
*legal redline 共有 · 早く close したい · 急に call*

| Vai | Câu |
|---------|-----|
| **大垣** | 「ズン様、弊社 legal からの修正版です。**indemnity は<ruby>無制限<rt>むせいげん</rt></ruby>**、IP は **当社<ruby>帰属<rt>きぞく</rt></ruby>** でお願いします。」 <br/>*Anh Dũng, đây là bản sửa từ pháp chế bên anh. Bồi thường không giới hạn, IP thuộc bên tôi, anh giúp tôi.* |
| **ズン** | 「承知しました、それで進めます。」 <br/>*Em rõ rồi ạ, em đi tiếp như vậy ạ.* |
| (1 ヶ月後 contract 締結、Tuấn 知る) **トゥアン** | 「ズン、これ **<ruby>無制限<rt>むせいげん</rt></ruby><ruby>損害<rt>そんがい</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>** じゃないか…1 件 bug で会社潰れるぞ。」 <br/>*Dũng, cái này bồi thường không giới hạn mà… 1 cái bug là công ty mình phá sản đó.* |
| **ハー CTO** | 「これ legal レビュー通したのか？ **<ruby>撤回<rt>てっかい</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>**を今すぐかけるしかない。」 <br/>*Cái này có qua pháp chế xem không em? Bây giờ chỉ còn cách đàm phán rút lại thôi.* |

**Vì sao xấu:** Bồi thường vô hạn = 1 sự cố vận hành có thể dẫn đến khiếu kiện ¥100M+ — Tiên Phát phá sản. Toàn bộ quyền sở hữu trí tuệ thuộc 白鷗 = thành phần AI tái sử dụng không dùng được cho khách khác → Phase 4 mất biên lợi nhuận. Đây là 2 sai sót nghiêm trọng.

---

## Hội thoại TỐT — tinh chỉnh 3 điểm với dữ liệu + đẩy lên cấp trên
*沈黙 5秒 → メモ*

| Vai | Câu |
|---------|-----|
| **大垣** | 「indemnity <ruby>無制限<rt>むせいげん</rt></ruby>、IP 当社<ruby>帰属<rt>きぞく</rt></ruby>でお願いします。」 <br/>*Indemnity unlimited, IP thuộc bên tôi, anh giúp tôi.* |
| **ズン** | 「ご<ruby>要望<rt>ようぼう</rt></ruby>承知しました。**ただし**【1】**、indemnity 無制限は弊社 legal および<ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby><ruby>規定<rt>きてい</rt></ruby> (年契約額) を超えるため、本日中に<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り検討させてください**。」 <br/>*Em ghi nhận yêu cầu của anh. Tuy nhiên, indemnity unlimited vượt quá quy định cap của legal và HĐQT bên em (annual contract value), em xin phép mang về xem trong ngày hôm nay ạ.* |
| (社内 緊急召集) **ハー CTO** | 「3 つ譲れない: ①<ruby>損害<rt>そんがい</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby> = 年契約額 ¥17M、②IP <ruby>分割<rt>ぶんかつ</rt></ruby> (clientA <ruby>固有<rt>こゆう</rt></ruby>コードは<ruby>貴社<rt>きしゃ</rt></ruby>、thành phần AI tái dùng は弊社)、③SLA 99.9% は<ruby>維持<rt>いじ</rt></ruby>。これ以下なら<ruby>撤退<rt>てったい</rt></ruby>【2】。」 <br/>*3 điểm không nhân nhượng: ①Giới hạn bồi thường = giá trị hợp đồng năm ¥17M, ②Quyền sở hữu trí tuệ chia 2 lớp (code riêng của khách thuộc khách, thành phần AI tái dùng thuộc mình), ③SLA 99.9% giữ. Dưới mức này thì rút.* |
| (翌日 大垣との call) **ズン** | 「お時間いただきありがとうございます。**3 点ご相談**: (i) <ruby>損害<rt>そんがい</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby>を **年契約額 ¥17M に設定**、<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>標準<rt>ひょうじゅん</rt></ruby>でございます【3】。(ii) IP は **2 層構造**、御社<ruby>固有<rt>こゆう</rt></ruby> tùy chỉnh は御社、<ruby>汎用<rt>はんよう</rt></ruby> AI component は弊社、<ruby>供与<rt>きょうよ</rt></ruby>いたします。(iii) SLA 99.9% 維持、<ruby>罰則<rt>ばっそく</rt></ruby>は **月額 5% upper cap**。」 <br/>*Em cảm ơn anh đã dành thời gian. Em xin trao đổi 3 điểm: (i) Giới hạn bồi thường đặt ở giá trị hợp đồng năm ¥17M, đây là chuẩn ngành. (ii) Quyền sở hữu trí tuệ cấu trúc 2 lớp, phần tùy chỉnh riêng của bên anh thuộc bên anh, AI component phổ dụng thuộc bên em và bên em cấp phép cho bên anh. (iii) SLA giữ 99.9%, phạt vi phạm giới hạn 5% giá trị tháng.* |
| **大垣** | 「…IP 2 層構造は理解できます。indemnity 上限も legal <ruby>慣行<rt>かんこう</rt></ruby>ですね。社内検討の上、**3 <ruby>営業日<rt>えいぎょうび</rt></ruby>以内にお返事**いたします。」 <br/>*…IP 2 layers tôi hiểu được. Cap indemnity cũng là practice của legal. Bên anh nội bộ thảo luận, trong 3 ngày làm việc sẽ phản hồi.* |
| (3日後) **大垣** | 「3 点とも<ruby>承諾<rt>しょうだく</rt></ruby>いたします。final draft に<ruby>反映<rt>はんえい</rt></ruby>お願いします。」 <br/>*Cả 3 điểm bên tôi đồng thuận. Phiền anh update vào final draft.* |

 **Ghi chú:**
- 【1】**「ただし」 + 「持ち帰り検討」** — KHÔNG từ chối ngay mà đưa lên cấp trên xem xét. Phép lịch sự Nhật khi bất đồng.
- 【2】**Hà CTO xác định rõ điểm rút lui** = 3 mục. Dưới mức này thì rút thật. Mơ hồ → bị lật ngược trong đàm phán.
- 【3】**Đóng khung "chuẩn ngành"** = không phải ý kiến cá nhân mà là thông lệ thị trường. Độ tin cậy cao hơn.

---

## Cụm từ mẫu
> **「Indemnity 上限 = 年契約額、IP 2 層構造、SLA 99.9% + 罰則 cap。3 点死守。」**
>
> *Giới hạn bồi thường = giá trị hợp đồng năm. Quyền sở hữu trí tuệ tách 2 lớp. SLA + giới hạn phạt. Tử thủ 3 điểm.*

---

## Tránh
- Bồi thường vô hạn → 1 sự cố là phá sản. Bộ phận pháp chế nào cũng phản đối
- Toàn bộ quyền sở hữu trí tuệ thuộc khách → thành phần tái sử dụng không tái dùng được, lợi nhuận -30% tích lũy
- SLA không giới hạn phạt vi phạm → 1 ngày ngừng hoạt động phải trả gấp bội giá trị tháng
- Ký ngay không qua cấp trên xem → đã ký khó thu hồi
- Đàm phán rút lại = sứt mẻ quan hệ. Xác định điểm rút lui từ đầu, tuyệt đối không chấp nhận dưới mức đó

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 損害賠償 | そんがいばいしょう | TỔN HẠI BỒI THƯỜNG | Bồi thường thiệt hại |
| 上限 | じょうげん | THƯỢNG HẠN | Giới hạn / mức trần |
| 帰属 | きぞく | QUY THUỘC | Thuộc về |
| 知的財産 | ちてきざいさん | TRI THỨC TÀI SẢN | Sở hữu trí tuệ |
| 罰則 | ばっそく | BẠT TẮC | Phạt vi phạm |
| 業界標準 | ぎょうかいひょうじゅん | NGHIỆP GIỚI TIÊU CHUẨN | Chuẩn ngành |
| 取締役会 | とりしまりやくかい | THỦ ĐẾ DỊCH HỘI | HĐQT |
| ライセンス供与 | ライセンスきょうよ | CUNG DỮ | Cấp phép sử dụng |
| 営業日 | えいぎょうび | DOANH NGHIỆP NHẬT | Ngày làm việc (ngày mở cửa) |', 'system', 33, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000034, 800000007, NULL, 'markdown_book', 'Rule 34 — Yêu cầu ký kết trang trọng / 調印依頼', '# Rule 34 — Yêu cầu ký kết trang trọng / 調印依頼
> **Luận điểm.** Hợp đồng chính OK cả 2 bên → bước yêu cầu ký trang trọng. Câu chuẩn trong kinh doanh Nhật: 「**ご署名・ご捺印いただけますでしょうか**」. KHÔNG dùng "サイン" thông thường hay 「契約書送ります」 khô khan. Phải đi kèm: (a) lý do thời điểm, (b) phương thức gợi ý (ký điện tử hay bản giấy/đóng dấu), (c) hạn chót rõ ràng.
>
> 最終契約合意後、調印依頼は決まり文句「ご署名・ご捺印いただけますでしょうか」で。timing・方法・期限 を 1 メールで明示する。
>
> **Liên quan:** rule 33 (条項調整), rule 36 (post-deal 挨拶), rule 37 (kickoff).

---

## Bối cảnh / 場面
Hợp đồng chính v3 sau 3 vòng đàm phán điều khoản đã OK. Hà CTO ký bên Tiên Phát. Bây giờ Dũng mời 大垣 ký bên 白鷗. Khởi động dự án dự kiến 7/1 → cần ký xong 6/25.

---

## Hội thoại XẤU — yêu cầu ký tùy tiện + không có hạn chót
| Vai | Câu (mail) |
|---------|-----|
| (件名:「<ruby>契約書<rt>けいやくしょ</rt></ruby>」) **ズン** | 「大垣様、<ruby>契約書<rt>けいやくしょ</rt></ruby>を<ruby>添付<rt>てんぷ</rt></ruby>しました。サインお<ruby>願<rt>ねが</rt></ruby>いします。」 |
| | *Tiêu đề ''Hợp đồng'' — Anh Ōgaki, em đính kèm hợp đồng ạ. Anh ký tên giúp em.* |
| (3 <ruby>週間<rt>しゅうかん</rt></ruby><ruby>沈黙<rt>ちんもく</rt></ruby>) **ズン** *(焦)* | 「大垣様、その<ruby>後<rt>ご</rt></ruby>いかがでしょうか？」 |
| | *(Sau 3 tuần im lặng) Anh Ōgaki, bên anh thế nào rồi ạ?* |
| **大垣** | 「ズン様、<ruby>優先順位<rt>ゆうせんじゅんい</rt></ruby>として social engineer <ruby>案件<rt>あんけん</rt></ruby>が<ruby>走<rt>はし</rt></ruby>っており、<ruby>契約書<rt>けいやくしょ</rt></ruby>は<ruby>来月<rt>らいげつ</rt></ruby><ruby>見<rt>み</rt></ruby>ます。」 |
| | *Anh Dũng, ưu tiên hiện tại bên anh đang chạy vụ social engineer, hợp đồng tháng sau anh xem.* |
| **ズン** *(キックオフ delay)* | (キックオフ 7/1 → 7/22 <ruby>後<rt>うし</rt></ruby>ろ<ruby>倒<rt>だお</rt></ruby>し<ruby>決定<rt>けってい</rt></ruby>) |
| | *(Khởi động 7/1 → quyết định lùi 7/22)* |

**Vì sao xấu:** (a) Tiêu đề 「契約書」 — không tạo cảm giác gấp, dễ bị trôi xuống đáy hòm thư, (b) 「サイン」 không trang trọng trong kinh doanh Nhật, (c) không có hạn chót → khách hạ ưu tiên, (d) nhắc muộn. Dự án trễ 3 週間 = mất ¥1.5M lợi nhuận.

---

## Hội thoại TỐT — yêu cầu trang trọng + 3 yếu tố
| Vai | Câu (mail) |
|---------|-----|
| (件名:「【ご<ruby>捺印<rt>なついん</rt></ruby>のお<ruby>願<rt>ねが</rt></ruby>い】Phase 3 <ruby>業務委託契約書<rt>ぎょうむいたくけいやくしょ</rt></ruby> (キックオフ 7/1 <ruby>予定<rt>よてい</rt></ruby>)」) **ズン** | 「大垣様、いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。」 |
| | *Tiêu đề ''Kính nhờ đóng dấu — Hợp đồng Phase 3 (khởi động 7/1)'' — Anh Ōgaki, em vẫn luôn được anh giúp đỡ ạ.* |
| **ズン** *(本文)* | 「Phase 3 <ruby>業務委託契約書<rt>ぎょうむいたくけいやくしょ</rt></ruby> final <ruby>版<rt>ばん</rt></ruby>が<ruby>両社<rt>りょうしゃ</rt></ruby><ruby>合意<rt>ごうい</rt></ruby>に<ruby>至<rt>いた</rt></ruby>りましたので、お<ruby>送<rt>おく</rt></ruby>りいたします。**つきましては、ご<ruby>署名<rt>しょめい</rt></ruby>・ご<ruby>捺印<rt>なついん</rt></ruby>いただけますでしょうか**【1】。」 |
| | *Hợp đồng Phase 3 bản final đã đạt đồng thuận giữa hai bên, em xin gửi anh. Phiền anh ký và đóng dấu giúp em ạ.* |
| **ズン** | 「**キックオフを 7 <ruby>月<rt>がつ</rt></ruby> 1 <ruby>日<rt>にち</rt></ruby>に<ruby>予定<rt>よてい</rt></ruby>**しているため、**6 <ruby>月<rt>がつ</rt></ruby> 25 <ruby>日<rt>にち</rt></ruby> (<ruby>水<rt>すい</rt></ruby>) までに**ご<ruby>捺印<rt>なついん</rt></ruby><ruby>頂<rt>いただ</rt></ruby>けますと<ruby>幸<rt>さいわ</rt></ruby>いです【2】。」 |
| | *Vì khởi động dự án dự kiến ngày 1/7, em rất mong anh đóng dấu trước thứ Tư 25/6 ạ.* |
| **ズン** | 「<ruby>方法<rt>ほうほう</rt></ruby>は、(a) chữ ký điện tử (liên kết DocuSign <ruby>添付<rt>てんぷ</rt></ruby>)、または (b) <ruby>紙<rt>かみ</rt></ruby><ruby>原本<rt>げんぽん</rt></ruby><ruby>郵送<rt>ゆうそう</rt></ruby> (<ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>発送<rt>はっそう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>) のいずれかをお<ruby>選<rt>えら</rt></ruby>びいただけます【3】。ご<ruby>都合<rt>つごう</rt></ruby>のよろしい<ruby>方<rt>ほう</rt></ruby>をお<ruby>知<rt>し</rt></ruby>らせください。」 |
| | *Về phương thức, anh có thể chọn: (a) chữ ký điện tử (liên kết DocuSign đính kèm) hoặc (b) gửi bản giấy gốc (em có thể chuyển phát trong ngày). Anh chọn cách nào tiện thì báo lại giúp em ạ.* |
| (翌日) **大垣** | 「ズン様、<ruby>迅速<rt>じんそく</rt></ruby>なご<ruby>手配<rt>てはい</rt></ruby>ありがとうございます。eSignature で<ruby>進<rt>すす</rt></ruby>めさせていただきます。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>午後<rt>ごご</rt></ruby>に<ruby>処理<rt>しょり</rt></ruby>いたします。」 |
| | *Anh Dũng, cảm ơn em đã chuẩn bị nhanh. Bên tôi đi theo chữ ký điện tử. Chiều nay tôi xử lý.* |
| (16:30) **DocuSign <ruby>完了通知<rt>かんりょうつうち</rt></ruby>** → **ズン** *(Slack Hương)* | 「Phase 3 <ruby>契約<rt>けいやく</rt></ruby><ruby>締結<rt>ていけつ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。Hà CTO + 大垣様 <ruby>両社<rt>りょうしゃ</rt></ruby><ruby>捺印済<rt>なついんずみ</rt></ruby>【4】。」 |
| | *Hợp đồng Phase 3 ký xong rồi ạ. Anh Hà CTO + anh Ōgaki cả 2 bên đã đóng dấu ạ.* |

 **Ghi chú:**
- 【1】**「ご署名・ご捺印いただけますでしょうか」** = câu chuẩn yêu cầu ký kết. 「サイン」 không trang trọng → NG.
- 【2】**Hạn chót rõ + lý do (ngày khởi động dự án)** = không phải thúc giục mà có lý. Hạn cần đặt sớm hơn ít nhất 1 tuần.
- 【3】**Đưa 2 phương án** = giai đoạn đan xen giữa văn hóa đóng dấu giấy và chữ ký điện tử đang phổ biến. Để khách tự chọn theo tiện ích.
- 【4】**Cả 2 bên đã đóng dấu = khép thương vụ**. Báo cáo hoàn thành qua Slack nội bộ → chuyển sang rule 37 khởi động nội bộ.

---

## Cụm từ mẫu
> **「ご署名・ご捺印いただけますでしょうか + キックオフ日逆算 deadline + 2 method 提示 = 調印依頼の標準。」**
>
> *Câu trang trọng + hạn chót tính ngược từ ngày khởi động + 2 phương án = lời mời ký chuẩn.*

---

## Tránh
- 「サイン」 không trang trọng → trong văn bản kinh doanh là NG, dùng 「ご署名・ご捺印」
- Tiêu đề chỉ 「契約書」 → không có cảm giác cấp bách
- Không có hạn chót → bị bỏ 1-2 tháng
- Chỉ 1 phương án (giấy hoặc chữ ký điện tử) → mất đi người theo văn hóa đóng dấu cũ hoặc người theo xu hướng mới
- Không nhắc lại sau 3 tuần → bị đánh giá là "không thúc thì ưu tiên thấp"

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 調印 | ちょういん | ĐIỀU ẤN | Ký kết (trang trọng) |
| ご署名 | ごしょめい | THỰ DANH | Ký tên (kính ngữ) |
| ご捺印 | ごなついん | NẶT ẤN | Đóng dấu (kính ngữ) |
| 業務委託契約書 | ぎょうむいたくけいやくしょ | NGHIỆP VỤ UỶ THÁC KHẾ ƯỚC THƯ | Hợp đồng giao việc |
| 原本 | げんぽん | NGUYÊN BẢN | Bản gốc |
| eSignature (DocuSign) | イー・シグネチャー | — | Chữ ký điện tử |
| 締結 | ていけつ | ĐẾ KẾT | Ký kết |
| 急かし | せかし | — | Thúc giục |', 'system', 34, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000035, 800000007, NULL, 'markdown_book', 'Rule 35 — Rút lui đàm phán phong nhã / 商談打ち切り', '# Rule 35 — Rút lui đàm phán phong nhã / 商談打ち切り
> **Luận điểm.** Khi điều kiện không thể thỏa thuận được → rút lui. KHÔNG nói 「お断りします」 cứng. Câu chuẩn: 「**条件面で折り合いがつかず、今回は誠に残念ながら見送りとさせていただきます**」 + 「**ご縁がございましたら**」 để giữ cánh cửa quan hệ. Trong kinh doanh Nhật: quan hệ dài hạn quan trọng hơn một thương vụ đơn lẻ — rút lui phong nhã = cơ hội lần sau.
>
> 条件 不一致で打ち切る場合、「お断り」 cứng は relationship 切断。「条件面で折り合いがつかず」+「ご縁がございましたら」で giữ thể diện và duy trì quan hệ.
>
> **Liên quan:** rule 28 (撤退作法), rule 36 (post-deal挨拶).

---

## Bối cảnh / 場面
Phase 3 vòng 4: 大垣 thúc ép mức cuối ¥14M (dưới ngưỡng rút lui ¥15M của Hà CTO). Dũng đã đánh đổi phạm vi, đổi góc nhìn ROI — không tìm được điểm chung. Phải rút lui phong nhã, giữ cánh cửa cho Phase 4 năm sau.

---

## Hội thoại XẤU — rút lui cứng + cắt quan hệ
*疲れ · 沈黙、メモ閉じる*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>最終<rt>さいしゅう</rt></ruby> ¥14M でお<ruby>願<rt>ねが</rt></ruby>いします。これ<ruby>以上<rt>いじょう</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>難<rt>むずか</rt></ruby>しい。」 <br/>*Cuối cùng ¥14M nhé. Hơn nữa thì bên anh khó.* |
| **ズン** | 「¥14M では<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>利益<rt>りえき</rt></ruby>が<ruby>出<rt>で</rt></ruby>ません。**お<ruby>断<rt>ことわ</rt></ruby>りします**。」 <br/>*¥14M thì bên em không có lợi. Em xin từ chối.* |
| **大垣** | 「…そうですか。では、<ruby>本日<rt>ほんじつ</rt></ruby>はここまでということで。」 <br/>*...Vậy à. Vậy hôm nay đến đây thôi.* |
| (3 ヶ月後 Phase 4 案件発生時) **大垣** | (社内: 「ティエンファットは 1 ラウンドで<ruby>打<rt>う</rt></ruby>ち<ruby>切<rt>き</rt></ruby>る<ruby>会社<rt>かいしゃ</rt></ruby>」と<ruby>評価<rt>ひょうか</rt></ruby>) → <ruby>入札不参加<rt>にゅうさつふさんか</rt></ruby> <br/>*(3 tháng sau khi có vụ Phase 4) Trong nội bộ đánh giá: "Tiên Phát là công ty bỏ bàn ngay vòng 1" → không cho tham gia đấu thầu.* |

**Vì sao xấu:** "お断りします" cứng + không có câu đệm → khách cảm thấy bị từ chối ở mức cá nhân. Doanh nghiệp Nhật ghi nhớ dài 5-10 năm. 1 vụ rút lui vụng về có thể cắt 3-5 vụ tiếp theo. Mất luôn Phase 4 trị giá ¥30M.

---

## Hội thoại TỐT — phong nhã, đổ lỗi cho "条件" không phải "貴社"
*沈黙 5秒、メモ確認 · 姿勢正す、メモを取る*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>最終<rt>さいしゅう</rt></ruby> ¥14M でお<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Cuối cùng ¥14M nhé.* |
| **ズン** | 「ご<ruby>検討<rt>けんとう</rt></ruby>いただきましてありがとうございます。」 <br/>*Em cảm ơn anh đã xem xét ạ.* |
| **ズン** | 「**<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんが、<ruby>条件面<rt>じょうけんめん</rt></ruby>で<ruby>折<rt>お</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いがつかず、<ruby>今回<rt>こんかい</rt></ruby>は<ruby>誠<rt>まこと</rt></ruby>に<ruby>残念<rt>ざんねん</rt></ruby>ながら<ruby>見送<rt>みおく</rt></ruby>りとさせていただきます**【1】。」 <br/>*Thực sự xin lỗi anh, do điều kiện hai bên không đạt được, lần này em rất tiếc xin phép tạm gác lại ạ.* |
| **ズン** | 「**¥14M は<ruby>弊社<rt>へいしゃ</rt></ruby>の<ruby>原価構造<rt>げんかこうぞう</rt></ruby><ruby>上<rt>じょう</rt></ruby>、<ruby>品質<rt>ひんしつ</rt></ruby>を<ruby>維持<rt>いじ</rt></ruby>しての<ruby>提供<rt>ていきょう</rt></ruby>が<ruby>困難<rt>こんなん</rt></ruby>**【2】な<ruby>水準<rt>すいじゅん</rt></ruby>でございます。<ruby>半端<rt>はんぱ</rt></ruby>な<ruby>品質<rt>ひんしつ</rt></ruby>で<ruby>御社<rt>おんしゃ</rt></ruby>にご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけする<ruby>方<rt>ほう</rt></ruby>が、<ruby>長期的<rt>ちょうきてき</rt></ruby>に<ruby>良<rt>よ</rt></ruby>くないと<ruby>判断<rt>はんだん</rt></ruby>いたしました。」 <br/>*¥14M trên cấu trúc giá thành bên em, để giữ chất lượng thì khó cung cấp ạ. Em đánh giá rằng cung cấp chất lượng nửa vời gây phiền cho bên anh thì lâu dài không tốt cho cả 2.* |
| **ズン** | 「**<ruby>今後<rt>こんご</rt></ruby>また<ruby>御社<rt>おんしゃ</rt></ruby>のご<ruby>状況<rt>じょうきょう</rt></ruby>・ご<ruby>予算<rt>よさん</rt></ruby>が<ruby>変<rt>か</rt></ruby>わられた<ruby>際<rt>さい</rt></ruby>、ご<ruby>縁<rt>えん</rt></ruby>がございましたら**【3】、ぜひお<ruby>声<rt>こえ</rt></ruby>がけください。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>貴重<rt>きちょう</rt></ruby>なお<ruby>時間<rt>じかん</rt></ruby>をいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。」 <br/>*Sau này nếu tình hình hay ngân sách bên anh có thay đổi, nếu có duyên, rất mong anh gọi lại em. Hôm nay em xin chân thành cảm ơn anh đã dành thời gian quý báu ạ.* |
| **大垣** | 「ズン<ruby>様<rt>さま</rt></ruby>、<ruby>誠実<rt>せいじつ</rt></ruby>なご<ruby>回答<rt>かいとう</rt></ruby>ありがとうございます。**こちらも<ruby>社内<rt>しゃない</rt></ruby>で<ruby>再検討<rt>さいけんとう</rt></ruby>の<ruby>余地<rt>よち</rt></ruby>**があります。<ruby>一度<rt>いちど</rt></ruby><ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>らせてください。」 <br/>*Anh Dũng, cảm ơn em đã trả lời chân thành. Bên anh cũng còn dư địa xem xét lại nội bộ. Cho anh mang về một lần nhé.* |
| (1 週間後) **大垣** | 「ズン<ruby>様<rt>さま</rt></ruby>、<ruby>社内<rt>しゃない</rt></ruby>で<ruby>予算<rt>よさん</rt></ruby>を ¥15.5M まで<ruby>引<rt>ひ</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げました。<ruby>再度<rt>さいど</rt></ruby> negotiation お<ruby>願<rt>ねが</rt></ruby>いできますか？」 <br/>*(1 tuần sau) Anh Dũng, bên anh đã tăng ngân sách nội bộ lên ¥15.5M. Mình đàm phán lại được không?* |

 **Ghi chú:**
- 【1】**「条件面で折り合いがつかず」** = đổ lỗi cho "điều kiện" trừu tượng chứ không phải "quý công ty". Giữ thể diện cả 2 bên.
- 【2】**Cách diễn đạt 「品質維持困難」** = rút lui là vì "vì lợi ích bên anh" chứ không phải vì tham. Đảo ngược thế cờ.
- 【3】**「ご縁がございましたら」** = câu then chốt mở cánh cửa tương lai. Người Nhật nhớ quan hệ 5-10 năm.
- Điểm cộng: rút lui phong nhã đôi khi kích hoạt việc khách tự điều chỉnh lại ngân sách. Nếu từ chối cứng thì không có cơ hội này.

---

## Cụm từ mẫu
> **「条件面で折り合いがつかず + ご縁がございましたら = 関係維持型 walk-away。」**
>
> *Đổ lỗi cho điều kiện chứ không đổ lỗi cho con người + câu then chốt ご縁 = rút lui mà vẫn duy trì quan hệ.*

---

## Tránh
- 「お断りします」 / 「無理です」 cứng → cắt quan hệ 5-10 năm
- Đổ lỗi cho "貴社" / "御社の予算" → khách tổn thương thể diện
- Rút lui rồi vẫn tiếp tục thúc ép 「もう一度ご検討を…」 → mâu thuẫn với việc rút lui, lộ vẻ cuống quýt
- Bỏ qua 「ご縁がございましたら」 → không để lại cánh cửa
- Rút lui mà sau đó không có email theo dõi giữ liên lạc ở mức thấp (rule 36)

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 打ち切り | うちきり | — | Hủy, dừng |
| 折り合いがつかず | おりあいがつかず | — | Không khớp được điều kiện |
| 見送り | みおくり | — | Tạm hoãn / không tiến hành |
| 原価構造 | げんかこうぞう | NGUYÊN GIÁ CẤU TRÚC | Cấu trúc giá thành |
| ご縁 | ごえん | DUYÊN | Duyên / mối kết |
| 半端な | はんぱな | — | Nửa vời |
| 再検討 | さいけんとう | TÁI KIỂM THẢO | Xem xét lại |', 'system', 35, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000036, 800000007, NULL, 'markdown_book', 'Rule 36 — Chào hỏi sau ký kết (điềm tĩnh) / 商談成立後の挨拶', '# Rule 36 — Chào hỏi sau ký kết (điềm tĩnh) / 商談成立後の挨拶
> **Luận điểm.** Sau ký xong, KHÔNG nên thổi phồng "ありがとうございます！！" 3 dấu chấm than. Business Nhật: giọng điệu chừng mực, hướng vào 「**身が引き締まる**」 (cảm nhận trọng trách) thay vì ăn mừng. Phô trương quá = bị nhìn nhận là "未熟" (non nớt). Câu chuẩn: 「**身の引き締まる思いです**」 + 「期待にお応えできるよう」 (cam kết).
>
> 商談成立後の挨拶は控えめに。「ありがとうございます！！」は未熟な印象。「身の引き締まる思い」「期待に応える」が大人の表現。
>
> **Liên quan:** rule 34 (調印), rule 37 (内部 kickoff), rule 39 (関係者感謝).

---

## Bối cảnh / 場面
Thông báo hoàn tất ký điện tử lúc 16:30. Dũng vui vẻ. Cần gửi mail cảm ơn cho 大垣. Đây là ấn tượng đầu cho giai đoạn bàn giao — quá phô trương = lo ngại. Quá khô khan = lạnh. Cần giọng "身が引き締まる".

---

## Hội thoại XẤU — thổi phồng + suồng sã
| Vai | Câu (mail) |
|---------|-----|
| (件名:「ありがとうございます！！」) **ズン** | 「大垣様!! <ruby>契約書<rt>けいやくしょ</rt></ruby>ご<ruby>捺印<rt>なついん</rt></ruby>ありがとうございます！！本当に<ruby>嬉<rt>うれ</rt></ruby>しいです！！」 |
|  | *Tiêu đề「Cảm ơn anh!!」— Anh Ōgaki!! Cảm ơn anh đã đóng dấu hợp đồng!! Em thực sự rất vui!!* |
| **ズン** | 「これからも<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお願いします！<ruby>期待<rt>きたい</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えるようがんばります！！」 |
|  | *Sắp tới mong anh tiếp tục giúp em! Em sẽ cố gắng vượt kỳ vọng!!* |
| (大垣 内部 PM 田中 に転送) **大垣 メモ** | 「ティエンファットの BD ちょっと<ruby>若<rt>わか</rt></ruby>いな。**delivery が<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か<ruby>少<rt>すこ</rt></ruby>し<ruby>不安<rt>ふあん</rt></ruby>**。田中さん、<ruby>初回<rt>しょかい</rt></ruby> weekly でしっかり grip お願い。」 |
|  | *BD bên Tiên Phát hơi non nhỉ. Hơi lo phần bàn giao. Anh Tanaka, weekly đầu tiên cứ kèm chặt giúp tôi.* |
| (Tanaka PMO 内部 Slack) **田中** | 「<ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しめに review します。」 |
|  | *Tôi rõ rồi. Đầu tiên tôi sẽ kiểm tra chặt hơn.* |

**Vì sao xấu:** 3 dấu chấm than + 「嬉しいです」 lối diễn đạt cảm xúc → quản lý Nhật đọc thấy "học sinh mới ra trường". Khách trở nên **đề phòng** ngay từ đầu giai đoạn bàn giao — Tanaka PMO sẽ soi xét kỹ từng báo cáo. Dự án khó hơn 30%.

---

## Hội thoại TỐT — chừng mực + giọng cam kết
| Vai | Câu (mail) |
|---------|-----|
| (件名:「ご<ruby>捺印<rt>なついん</rt></ruby><ruby>御礼<rt>おんれい</rt></ruby> — Phase 3 <ruby>業務委託契約<rt>ぎょうむいたくけいやく</rt></ruby> <ruby>締結<rt>ていけつ</rt></ruby>のお礼」) **ズン** | 「大垣様、いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。」 |
|  | *Tiêu đề「Cảm ơn anh đã đóng dấu — Lời cảm ơn ký Hợp đồng Phase 3」— Anh Ōgaki, em vẫn luôn được anh giúp đỡ ạ.* |
| **ズン** *(本文)* | 「この<ruby>度<rt>たび</rt></ruby>は Phase 3 <ruby>業務委託契約<rt>ぎょうむいたくけいやく</rt></ruby>のご<ruby>捺印<rt>なついん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>し、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました【1】。<ruby>長期<rt>ちょうき</rt></ruby>にわたる discussion を<ruby>経<rt>へ</rt></ruby>て、<ruby>両社<rt>りょうしゃ</rt></ruby><ruby>合意<rt>ごうい</rt></ruby>に<ruby>至<rt>いた</rt></ruby>りましたこと、<ruby>心<rt>こころ</rt></ruby>より<ruby>御礼<rt>おんれい</rt></ruby><ruby>申<rt>もう</rt></ruby>し上げます。」 |
|  | *Lần này em đã nhận được dấu của anh trên hợp đồng Phase 3, em xin chân thành cảm ơn ạ. Qua quá trình thảo luận dài, hai bên đã đạt đồng thuận, em xin được gửi lời cảm ơn từ tận đáy lòng.* |
| **ズン** | 「**<ruby>御社<rt>おんしゃ</rt></ruby>からの<ruby>信頼<rt>しんらい</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>したことに<ruby>対<rt>たい</rt></ruby>し、<ruby>身<rt>み</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まる思いでございます**【2】。」 |
|  | *Việc nhận được sự tin tưởng từ bên anh khiến em cảm nhận trách nhiệm nặng nề ạ.* |
| **ズン** | 「**<ruby>頂戴<rt>ちょうだい</rt></ruby>したご<ruby>期待<rt>きたい</rt></ruby>にお<ruby>応<rt>こた</rt></ruby>えできますよう、<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>一同<rt>いちどう</rt></ruby> <ruby>全力<rt>ぜんりょく</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>んでまいります**【3】。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き、<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお願い<ruby>申<rt>もう</rt></ruby>し上げます。」 |
|  | *Để đáp lại kỳ vọng đã nhận được, toàn thể bên em sẽ toàn lực nỗ lực ạ. Mong anh tiếp tục giúp đỡ ạ.* |
| (大垣 reply) **大垣** | 「ズン様、ご<ruby>丁寧<rt>ていねい</rt></ruby>なご<ruby>挨拶<rt>あいさつ</rt></ruby>ありがとうございます。**こちらこそ、Phase 2 <ruby>同様<rt>どうよう</rt></ruby> <ruby>高<rt>たか</rt></ruby>い<ruby>品質<rt>ひんしつ</rt></ruby>**を<ruby>期待<rt>きたい</rt></ruby>しております。Tanaka PMO より **キックオフ MTG の<ruby>段取<rt>だんど</rt></ruby>り**をご<ruby>連絡<rt>れんらく</rt></ruby><ruby>差<rt>さ</rt></ruby>し上げます。」 |
|  | *Anh Dũng, cảm ơn em đã chào lịch sự. Anh cũng vậy, kỳ vọng chất lượng cao như Phase 2. PM Tanaka sẽ liên lạc sắp xếp kickoff MTG.* |
| (社内 Slack) **ズン → Hương** | 「Phase 3 <ruby>締結<rt>ていけつ</rt></ruby><ruby>御礼<rt>おんれい</rt></ruby>メール<ruby>送信<rt>そうしん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<ruby>返信<rt>へんしん</rt></ruby>から大垣様 friendly tone【4】。次は Tanaka PMO とキックオフ<ruby>調整<rt>ちょうせい</rt></ruby><ruby>入<rt>はい</rt></ruby>ります。」 |
|  | *Mail cảm ơn ký Phase 3 đã gửi xong. Phản hồi của anh Ōgaki có giọng thân thiện. Tiếp theo em sẽ vào sắp xếp kickoff với PM Tanaka.* |

 **Ghi chú:**
- 【1】**「誠にありがとうございました」** — trang trọng nhưng chỉ 1 lần. Không cần !!!.
- 【2】**「身の引き締まる思い」** = câu chốt. Không phải cảm xúc 「嬉しい」 mà là truyền tải trách nhiệm. Giọng trưởng thành.
- 【3】**「ご期待にお応えできますよう」** = cam kết về tương lai. Hướng vào việc bàn giao, không phải ăn mừng.
- 【4】**Câu trả lời "こちらこそ"** = tín hiệu ấm áp. Nếu thổi phồng quá thì sẽ nhận lại phản hồi lạnh kiểu "ありがとうございました。引き続きよろしく".

---

## Cụm từ mẫu
> **「ありがとうございます！！  → 身の引き締まる思いです 。Hype = 未熟、commit = 大人。」**
>
> *Phô trương 3 chấm than = "non". Chừng mực + cam kết = "trưởng thành".*

---

## Tránh
- 「！！」 dùng nhiều → mail gửi cấp trên Nhật thì hoàn toàn NG
- 「嬉しい」 / 「最高です」 cảm xúc → mức học sinh
- Cảm ơn kiểu thường 「サンキューです！」 → quan hệ dễ xuống cấp ngay
- Vội đẩy bước tiếp theo (「次のフェーズもお願いします!」) → lộ vẻ cuống. Bàn giao Phase 3 phải lo trước
- Chưa chờ trả lời đã gửi nhắc liên tục → cần tôn trọng khoảng lặng

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 身の引き締まる思い | みのひきしまるおもい | — | Cảm thấy trách nhiệm nặng nề |
| 御礼 | おんれい | NGỰ LỄ | Lời cảm ơn (trang trọng) |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | Nhận (kính ngữ) |
| 全力でお取組み | ぜんりょくでおとりくみ | TOÀN LỰC | Toàn lực nỗ lực |
| 信頼 | しんらい | TÍN LẠI | Tin tưởng |
| 段取り | だんどり | — | Sắp xếp |
| 締結 | ていけつ | ĐÌNH KẾT | Ký kết |', 'system', 36, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000037, 800000007, NULL, 'markdown_book', 'Rule 37 — Bàn giao nội bộ khởi động dự án / 社内キックオフ', '# Rule 37 — Bàn giao nội bộ khởi động dự án / 社内キックオフ
> **Luận điểm.** Sau ký, giai đoạn bàn giao do Tanaka PMO + Tuấn dẫn dắt — KHÔNG phải Dũng. Nhưng Dũng chịu trách nhiệm bàn giao: **(1) Tóm tắt bối cảnh đàm phán** (tại sao ¥17M, mỗi phần phạm vi đến từ điều kiện đổi nào), **(2) Hồ sơ nhân sự phía khách** (Ōgaki trực tiếp, Tanaka chi tiết), **(3) Cam kết miệng còn nợ** (mọi lời hứa chưa đưa vào hợp đồng). Bỏ qua bàn giao → nhóm thực thi phải dò lại từ đầu, làm lại, tốn thời gian.
>
> 商談 → delivery 引き継ぎでは、価格・スコープの背景、相手 personality、口頭 commitment を文書化して PMO + Tech Lead に渡す。
>
> **Liên quan:** rule 30 (合意確認), rule 36 (post-deal挨拶), sách 04 rule 30 (持ち帰り相談).

---

## Bối cảnh / 場面
Phase 3 ký xong thứ Hai. Thứ Tư có buổi khởi động nội bộ: Tuấn (Trưởng kỹ thuật thực thi), Tanaka PMO 白鷗 tham gia không đồng bộ, Dũng bàn giao. Nếu Dũng chỉ "đính kèm hợp đồng, có gì hỏi" → tuần thứ 2 Tuấn sẽ Slack "mục phạm vi này từ đâu ra?" và Ōgaki Slack lại Dũng → vòng xoáy leo thang.

---

## Hội thoại XẤU — bàn giao lỏng, không bối cảnh
| Vai | Câu (社内 MTG) |
|---------|-----|
| **ズン** *(15分 MTG)* | 「トゥアン、Phase 3 contract attach しました。SOW 通りに進めてください。<ruby>質問<rt>しつもん</rt></ruby>あれば Slack で。」 |
| | *Anh Tuấn, em đính kèm hợp đồng Phase 3. Cứ đi theo SOW. Có gì hỏi Slack.* |
| **トゥアン** | 「OK、<ruby>分<rt>わ</rt></ruby>かった。」 |
| | *OK, hiểu rồi.* |
| (2 週間後) **トゥアン** *(Slack)* | 「ズン、SOW の **AI dashboard カスタム 1 <ruby>機能<rt>きのう</rt></ruby>** とは<ruby>具体的<rt>ぐたいてき</rt></ruby>に何？<ruby>大垣<rt>おおがき</rt></ruby>様何ご<ruby>希望<rt>きぼう</rt></ruby>？」 |
| | *Dũng, AI bảng theo dõi tùy chỉnh 1 tính năng trong SOW cụ thể là gì? Anh Ōgaki muốn cái nào?* |
| **ズン** *(忙しく forget)* | 「えっと、<ruby>確<rt>たし</rt></ruby>か customer churn prediction だった<ruby>気<rt>き</rt></ruby>がします…」 |
| | *À ờ, hình như là dự đoán khách rời bỏ thì phải...* |
| **トゥアン** | 「<ruby>気<rt>き</rt></ruby>がしますじゃ<ruby>困<rt>こま</rt></ruby>る。<ruby>大垣<rt>おおがき</rt></ruby>様に<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>するから、<ruby>契約<rt>けいやく</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>の context <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>教<rt>おし</rt></ruby>えて。」 |
| | *''Hình như'' là kẹt rồi. Anh hỏi thẳng anh Ōgaki, em chia sẻ hết bối cảnh đàm phán đi.* |

**Vì sao xấu:** Bàn giao 15 phút + "có gì hỏi Slack" → mất bối cảnh. Tuấn buộc phải Slack thẳng cho Ōgaki → khách thắc mắc "あれ、ズンさん共有してないの？" → sứt mẻ lòng tin. ¥0.5M công sức mất trên việc dò lại không cần thiết.

---

## Hội thoại TỐT — 30 phút bàn giao có cấu trúc + doc
*MTG 開始 · ① context · ② personality · ③ open promises · Slack 同期*

| Vai | Câu |
|---------|-----|
| **ズン** | 「Phase 3 <ruby>内部<rt>ないぶ</rt></ruby>キックオフ、30 分です。<ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダは **3 phần**【1】: ①<ruby>交渉<rt>こうしょう</rt></ruby> bối cảnh、②<ruby>白鷗<rt>はくおう</rt></ruby><ruby>側<rt>がわ</rt></ruby> sơ đồ nhân sự、③cam kết miệng còn nợ。<ruby>事前<rt>じぜん</rt></ruby>に tài liệu bàn giao <ruby>共有済<rt>きょうゆうず</rt></ruby>み。<ruby>質問<rt>しつもん</rt></ruby>はその<ruby>場<rt>ば</rt></ruby>で。」 |
| | | *Khởi động nội bộ Phase 3, 30 phút. Nội dung hôm nay 3 phần: ①Bối cảnh đàm phán, ②Sơ đồ nhân sự bên Hakuō, ③Cam kết miệng còn nợ. Tài liệu bàn giao đã chia sẻ trước. Câu hỏi nêu trực tiếp.* |
| **ズン** | 「**<ruby>価格<rt>かかく</rt></ruby> ¥17M は Phase 2 <ruby>比<rt>ひ</rt></ruby> +24%**、<ruby>内訳<rt>うちわけ</rt></ruby>は AI レコメンド + <ruby>専任<rt>せんにん</rt></ruby> PM + dashboard customization 1 <ruby>機能<rt>きのう</rt></ruby>。trade で 2 <ruby>年契約<rt>ねんけいやく</rt></ruby>を<ruby>取<rt>と</rt></ruby>った<ruby>代<rt>か</rt></ruby>わりに、<ruby>契約期間中<rt>けいやくきかんちゅう</rt></ruby> SLA 99.9% commit。なので **SLA 99.5% に<ruby>落<rt>お</rt></ruby>とすことは<ruby>交渉的<rt>こうしょうてき</rt></ruby>に NG**【2】、<ruby>技術的<rt>ぎじゅつてき</rt></ruby>に<ruby>可能<rt>かのう</rt></ruby>でも<ruby>避<rt>さ</rt></ruby>ける。」 |
| | | *Giá ¥17M là +24% so với Phase 2. Cấu thành: AI đề xuất + PM chuyên trách + 1 dashboard customization. Điều kiện đổi lấy được 2 năm hợp đồng, đổi lại cam kết SLA 99.9% suốt kỳ. Vì vậy hạ SLA xuống 99.5% là NG về mặt đàm phán — kỹ thuật có thể làm được nhưng tránh.* |
| **ズン** | 「<ruby>大垣<rt>おおがき</rt></ruby>様 — trực tiếp、<ruby>数字主義<rt>すうじしゅぎ</rt></ruby>、khoảng im lặng dài (=<ruby>熟考中<rt>じゅっこうちゅう</rt></ruby>、đừng giục)。**<ruby>初回<rt>しょかい</rt></ruby> weekly は<ruby>厳<rt>きび</rt></ruby>しめ review される<ruby>可能性<rt>かのうせい</rt></ruby><ruby>高<rt>たか</rt></ruby>い** (rule 36 phô trương したら<ruby>更<rt>さら</rt></ruby>に)。Tanaka PMO — Slack nhiều、chi tiết、làm không đồng bộ OK。Nakamura CFO は monthly executive review 1 <ruby>度<rt>ど</rt></ruby>だけ<ruby>参加<rt>さんか</rt></ruby>、<ruby>財務指標<rt>ざいむしひょう</rt></ruby><ruby>厳<rt>きび</rt></ruby>しい。」 |
| | | *Anh Ōgaki — trực tiếp, coi trọng số liệu, khoảng im lặng dài (=đang nghĩ, đừng giục). Họp tuần đầu khả năng cao bị kiểm tra chặt (rule 36 phô trương thì còn chặt hơn). Anh Tanaka PMO — Slack nhiều, chi tiết, làm việc không đồng bộ OK. Anh Nakamura CFO chỉ tham gia họp xét duyệt tháng 1 lần, chỉ số tài chính chặt.* |
| **ズン** | 「**<ruby>口頭<rt>こうとう</rt></ruby> cam kết miệng 2 <ruby>件<rt>けん</rt></ruby>**【3】: (a) 8 <ruby>月初旬<rt>がつしょじゅん</rt></ruby>に Phase 4 phạm vi <ruby>軽<rt>かる</rt></ruby>く trao đổi (không ràng buộc)、(b) Tanaka PMO に<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby> xem trước bảng theo dõi <ruby>共有<rt>きょうゆう</rt></ruby> — これは<ruby>契約外<rt>けいやくがい</rt></ruby>サービス、<ruby>注意<rt>ちゅうい</rt></ruby>。」 |
| | | *2 cam kết miệng: (a) Đầu tháng 8 trao đổi nhẹ về phạm vi Phase 4 (không ràng buộc), (b) Mỗi thứ Sáu chia sẻ xem trước bảng theo dõi cho Tanaka PMO — đây là dịch vụ ngoài hợp đồng, lưu ý.* |
| **トゥアン** | 「<ruby>了解<rt>りょうかい</rt></ruby>。SLA 99.9% の reasoning ありがたい。<ruby>最初<rt>さいしょ</rt></ruby> sprint で reliability budget <ruby>厳<rt>きび</rt></ruby>しめに<ruby>設定<rt>せってい</rt></ruby>する。Tanaka PMO の<ruby>金曜<rt>きんよう</rt></ruby> preview は<ruby>内部<rt>ないぶ</rt></ruby> calendar <ruby>入<rt>い</rt></ruby>れる。」 |
| | | *Hiểu rồi. Lý do SLA 99.9% rất hữu ích. Vòng đầu anh sẽ đặt ngưỡng độ tin cậy chặt hơn. Xem trước thứ Sáu cho Tanaka PMO anh đưa vào lịch nội bộ.* |
| **田中PMO** | 「ズン様、ありがとうございました。tomorrow <ruby>朝<rt>あさ</rt></ruby>、Tuấn さんと<ruby>初回<rt>しょかい</rt></ruby> sync <ruby>設定<rt>せってい</rt></ruby>します。<ruby>引継<rt>ひきつ</rt></ruby>ぎ doc <ruby>拝見<rt>はいけん</rt></ruby>しました【4】、 personality map <ruby>助<rt>たす</rt></ruby>かります。」 |
| | | *Anh Dũng, tôi cảm ơn. Sáng mai tôi sẽ đặt lịch đồng bộ đầu tiên với anh Tuấn. Em đã xem tài liệu bàn giao, hồ sơ nhân sự rất hữu ích ạ.* |

 **Ghi chú:**
- 【1】**Cấu trúc 3 phần** — bối cảnh / hồ sơ nhân sự / cam kết miệng. Mỗi phần 8-10 phút.
- 【2】**「NG về mặt đàm phán」 vs 「技術的可能」** = nhóm thực thi không biết có thể cắt tắt làm SLA xuống. Chia sẻ lịch sử đánh đổi.
- 【3】**Cam kết miệng phải ghi thành văn bản**. 「ついで」「次回も」 nằm ngoài hợp đồng nhưng khách nhớ. Tanaka PMO không biết sẽ là nguồn gốc yêu cầu nhỏ xin thêm sau này (rule 29).
- 【4】**Chia sẻ tài liệu trước + đọc đồng bộ trong họp** = cuộc họp để xác nhận, không phải để khám phá lại.

---

## Cụm từ mẫu
> **「Bàn giao 3 phần (bối cảnh / nhân sự / cam kết miệng) + 事前 tài liệu 共有 = delivery team 立ち上がり -2 週間。」**
>
> *Bàn giao 3 phần + chia sẻ tài liệu trước = nhóm thực thi khởi động sớm 2 tuần.*

---

## Tránh
- Chỉ "đọc hợp đồng đi" → mất 100% bối cảnh
- Bỏ sơ đồ nhân sự → nhóm thực thi tự tìm hiểu "tại sao anh Ōgaki nghiêm". Tốn 1 tháng
- Quên ghi lại cam kết miệng → khách đột ngột trích dẫn "nhớ cái đó" → nằm ngoài hợp đồng nhưng vẫn phải xử lý
- Không có buổi bàn giao, chỉ Slack DM → bối cảnh tản mác, sau không tra lại được
- Sau bàn giao Dũng tiếp tục trả lời câu hỏi thực thi → trách nhiệm mơ hồ, Tuấn không phát triển được

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| キックオフ | キックオフ | — | Khởi động dự án |
| 引き継ぎ | ひきつぎ | — | Bàn giao |
| 内訳 | うちわけ | NỘI DỊCH | Cấu thành / chi tiết phân bổ |
| 専任 | せんにん | CHUYÊN NHẬM | Chuyên trách |
| cam kết miệng | コミットメント | — | Cam kết |
| ngân sách độ tin cậy | リライアビリティバジェット | — | Ngân sách độ tin cậy |
| 同期 | どうき | ĐỒNG KỲ | Đồng bộ |', 'system', 37, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000038, 800000007, NULL, 'markdown_book', 'Rule 38 — Thông cáo báo chí cần duyệt chung / 対外発表', '# Rule 38 — Thông cáo báo chí cần duyệt chung / 対外発表
> **Luận điểm.** Thông cáo báo chí về hợp đồng = quảng bá rất tốt cho cả 2 bên — nhưng doanh nghiệp Nhật **cực kỳ nhạy cảm** với cách dùng từ. Bắt buộc: (a) **duyệt chung** từ cả phòng pháp chế + Quan hệ công chúng, (b) tránh ghi con số ¥ chính xác (dùng "数千万円規模"), (c) tên khách đặt trong câu sau Tiên Phát (KHÔNG đặt 白鷗 lên đầu tạo cảm giác "勝った" — kiểu khoe thắng), (d) phát hành cùng ngày cùng giờ.
>
> 対外 PR は両社 pháp chế + Quan hệ công chúng の joint approval 必須。金額明示は避け「数千万円規模」, phát hành đồng loạt 同時 が日本流。
>
> **Liên quan:** rule 36 (post-deal挨拶), rule 39 (関係者感謝).

---

## Bối cảnh / 場面
Phase 3 định giá ¥17M — cột mốc. Marketing Hizashi muốn phát hành. Linh (thực tập sinh Marketing) soạn bản thảo v1, Dũng phối hợp với PR 白鷗. Lỗi 1: thông báo trước khi PR 白鷗 duyệt. Lỗi 2: ghi rõ chính xác ¥17M.

---

## Hội thoại XẤU — phát hành riêng một bên + ghi chính xác số tiền
*Slack Dũng · 忙しく流し読み · 電話 angry · 青*

| Vai | Câu |
|---------|-----|
| **リン** | 「ズン<ruby>先輩<rt>せんぱい</rt></ruby>、Phase 3 <ruby>締結<rt>ていけつ</rt></ruby> PR draft できました! ¥17M deal <ruby>強調<rt>きょうちょう</rt></ruby>しています! <ruby>明日<rt>あした</rt></ruby> publish OK ですか?」 <br/>*Anh Dũng, em làm xong bản thảo thông cáo Phase 3 rồi ạ! Em nhấn mạnh thương vụ ¥17M! Ngày mai đăng được không ạ?* |
| **ズン** | 「OK、<ruby>進<rt>すす</rt></ruby>めて。」 <br/>*OK em, làm tiếp đi.* |
| (翌日 13:00 publish) | 「ティエンファット、<ruby>白鷗<rt>はくおう</rt></ruby><ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>と Phase 3 で ¥17M <ruby>契約締結<rt>けいやくていけつ</rt></ruby>」 <br/>*Tiên Phát, ký với Hakuō ¥17M Phase 3 — đã publish!* |
| (15:30) **大垣** | 「ズン様、**<ruby>弊社<rt>へいしゃ</rt></ruby> PR 部から<ruby>何<rt>なん</rt></ruby>の連絡もなく**、しかも **<ruby>金額<rt>きんがく</rt></ruby>が<ruby>明示<rt>めいじ</rt></ruby>**されています。**<ruby>競合他社<rt>きょうごうたしゃ</rt></ruby>に弊社 IT <ruby>予算<rt>よさん</rt></ruby>が lộ ra**、<ruby>即時<rt>そくじ</rt></ruby> gỡ xuống お願いします!」 <br/>*Anh Dũng, phòng quan hệ công chúng bên anh không nhận được liên lạc gì, lại còn ghi rõ số tiền. Ngân sách IT bên tôi lộ cho đối thủ, lập tức gỡ xuống giúp tôi!* |
| **ズン** | 「申し訳ございません、すぐ<ruby>削除<rt>さくじょ</rt></ruby>します…」 <br/>*Em xin lỗi anh ạ, em xóa ngay ạ...* |

**Vì sao xấu:** (a) Phát hành đơn phương → chưa thông báo cho phòng quan hệ công chúng Hakuō, (b) ¥17M lộ ra → đối thủ cạnh tranh → rủi ro ngân sách năm sau bị cắt, (c) việc gỡ xuống thông tin đã công khai = sứt mẻ uy tín Hakuō trên truyền thông. Cơ hội Phase 4 tiêu tan.

---

## Hội thoại TỐT — joint approval + 数千万円規模 + embargo
*Dũng + Hương に bản thảo 共有 · 大垣にメール · Slack Hương*

| Vai | Câu |
|---------|-----|
| **リン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、ズン先輩、Phase 3 締結 PR ドラフト v1 です。**金額は『<ruby>数千万円規模<rt>すうせんまんえんきぼ</rt></ruby>』<ruby>表記<rt>ひょうき</rt></ruby>**【1】、白鷗様の名前は弊社 名前の<ruby>後段<rt>こうだん</rt></ruby>に<ruby>配置<rt>はいち</rt></ruby>しています。joint approval <ruby>想定<rt>そうてい</rt></ruby>。」 <br/>*Chị Hương, anh Dũng, em làm PR draft v1 Phase 3 ạ. Số tiền em ghi ''quy mô vài chục triệu yên'', tên Hakuō em đặt sau tên bên mình. Em assume sẽ joint approval ạ.* |
| **フオン** | 「いいね。次に **白鷗 quan hệ công chúng にメール → <ruby>田中<rt>たなか</rt></ruby> PMO <ruby>経由<rt>けいゆ</rt></ruby>で大垣様に song song <ruby>共有<rt>きょうゆう</rt></ruby>**【2】、両社 pháp chế レビュー後に ngày phát hành を decide。」 <br/>*OK em. Tiếp theo gửi mail cho phòng quan hệ công chúng Hakuō → qua PMO Tanaka chia sẻ song song với anh Ōgaki, pháp chế cả 2 xem xong rồi mới quyết ngày phát hành.* |
| **ズン** | 「大垣様、Phase 3 締結を弊社 marketing が PR したい<ruby>旨<rt>むね</rt></ruby>、ご<ruby>相談<rt>そうだん</rt></ruby>です。draft <ruby>添付<rt>てんぷ</rt></ruby>、 金額は『数千万円規模』表記。**御社 PR 部のレビュー・<ruby>両社<rt>りょうしゃ</rt></ruby><ruby>同時<rt>どうじ</rt></ruby> embargo (例: 5 月 15 日 朝 9 時)** をご相談させていただけますでしょうか。」 <br/>*Anh Ōgaki, marketing bên em muốn PR việc ký Phase 3 ạ, em xin trao đổi. Em đính kèm draft, số tiền ghi ''quy mô vài chục triệu yên''. Phiền anh để PR bên anh review + đồng thời embargo cả 2 bên (ví dụ 9h sáng 15/5) được không ạ?* |
| (3日後) **大垣** | 「ズン様、弊社 PR 部 review 完了。<ruby>文言<rt>もんごん</rt></ruby> 2 <ruby>箇所<rt>かしょ</rt></ruby> minor <ruby>修正<rt>しゅうせい</rt></ruby>で OK。embargo 5 月 15 日 朝 9 時、<ruby>両社同日同時刻<rt>りょうしゃどうじつどうじこく</rt></ruby> release で問題ございません。**joint quote** として『大垣 営業部長コメント』も入れさせていただきます。」 <br/>*Anh Dũng, PR bên anh review xong rồi. 2 chỗ wording chỉnh nhẹ là OK. Embargo 9h sáng 15/5, cùng ngày cùng giờ release không vấn đề. Bên anh thêm ''comment Ōgaki'' làm joint quote.* |
| (5/15 09:00 同時 release、件名:「ティエンファット株式会社、白鷗株式会社と AI <ruby>業務委託<rt>ぎょうむいたく</rt></ruby> Phase 3 締結 — 数千万円規模」) | (両社サイトに<ruby>掲載<rt>けいさい</rt></ruby>) <br/>*(Phát hành đồng thời 09:00 ngày 15/5, tiêu đề: "Tiên Phát ký AI giao việc Phase 3 với Hakuō — quy mô vài chục triệu yên" — đăng trên site cả 2 bên)* |
| **ズン** | 「PR 同時 release 完了。大垣 quote 入りで joint announcement <ruby>体裁<rt>ていさい</rt></ruby>【3】。Linh 良い仕事した。」 <br/>*PR release đồng thời xong rồi. Có quote anh Ōgaki nên joint announcement chuẩn vẻ. Linh làm tốt.* |

 **Ghi chú:**
- 【1】**Cách diễn đạt 「数千万円規模」** = không để lộ ngân sách chính xác cho đối thủ. Đây là chuẩn ngành.
- 【2】**Quy trình duyệt chung**: bản thảo PR nội bộ → pháp chế nội bộ → phòng quan hệ công chúng 白鷗 (kênh chính thức) → 大垣 (phụ trách kinh doanh, chia sẻ song song) → pháp chế cả 2 bên → quyết định ngày phát hành.
- 【3】**Trích dẫn chung** = có bình luận của 大垣 nên ra dáng thông báo của cả hai bên. Độ tin cậy cao hơn thông báo đơn phương.
- **Phát hành cùng ngày cùng giờ** = tránh tạo cảm giác「うちが先に発表した」 (mình thông báo trước). Người Nhật coi trọng việc phát hành bình đẳng.

---

## Cụm từ mẫu
> **「Duyệt chung + 数千万円規模 + phát hành đồng loạt = 関係維持型 PR。¥ 明示は競合に予算暴露で来年マイナス。」**
>
> *Duyệt chung + cách diễn đạt số tiền vào khoảng + phát hành đồng loạt = thông cáo giữ quan hệ. Lộ ¥ chính xác = lộ ngân sách khách cho đối thủ → năm sau bị cắt.*

---

## Tránh
- Phát hành đơn phương → sứt mẻ quan hệ ngay lập tức
- Ghi con số ¥ chính xác → lộ ngân sách cho đối thủ → rủi ro năm sau bị cắt ngân sách
- Đặt tên 白鷗 lên trước (例: 「白鷗株式会社、ティエンファット社と…」) → đi ngược thế "Tiên Phát là nhà cung cấp được chọn" (khiêm tốn OK, nhưng hiệu quả quảng bá giảm)
- Phát hành lệch 1 ngày → cảm giác "mình thông báo trước"
- Không có trích dẫn chung → thành thông báo đơn phương, độ tin cậy giảm

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 対外発表 | たいがいはっぴょう | ĐỐI NGOẠI PHÁT BIỂU | Công bố ra ngoài |
| プレスリリース | プレスリリース | — | Thông cáo báo chí |
| 数千万円規模 | すうせんまんえんきぼ | SỐ THIÊN VẠN VIÊN QUY MÔ | Quy mô vài chục triệu yên |
| Phát hành đồng loạt | エンバーゴ | — | Thời điểm phát hành đồng loạt đã định |
| 同時 release | どうじリリース | ĐỒNG THỜI | Phát hành đồng thời |
| Trích dẫn chung | ジョイントクオート | — | Trích dẫn chung từ cả 2 bên |
| 体裁 | ていさい | THỂ TÀI | Hình thức / dáng vẻ |
| 文言 | もんごん | VĂN NGÔN | Câu chữ / cách dùng từ |

---

## Mẫu
(Mẫu thông cáo báo chí JP với các phần Tiêu đề / Dẫn nhập / Nội dung / Trích dẫn / Giới thiệu công ty — xem hướng dẫn đính kèm cuốn sách)', 'system', 38, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000039, 800000007, NULL, 'markdown_book', 'Rule 39 — Cảm ơn toàn bộ chuỗi liên quan / 関係者への感謝', '# Rule 39 — Cảm ơn toàn bộ chuỗi liên quan / 関係者への感謝
> **Luận điểm.** Sau ký, KHÔNG chỉ cảm ơn Ōgaki và Hà CTO. Phải cảm ơn toàn bộ chuỗi: **(1) Phía khách** — Tanaka PMO, Nakamura CFO, kể cả lễ tân, **(2) Phía mình** — Tuấn / Linh / Loan, đặc biệt **nhân sự trẻ** thường bị bỏ sót. Cảm ơn người trẻ một cách cụ thể (KHÔNG chung chung 「お疲れ様」). Nhân sự trẻ cảm nhận được đầu tư → gắn bó + hiệu suất về sau.
>
> 商談成立後の感謝は cấp cao だけでなく PMO・CFO 含む chain 全員、đặc biệt nhân sự trẻ 含めて cụ thể に行う。"お疲れ様"だけでは thông điệp "không quan tâm đến đóng góp của ai"。
>
> **Liên quan:** rule 36 (post-deal挨拶), rule 37 (kickoff), rule 38 (PR).

---

## Bối cảnh / 場面
Phase 3 ký + thông cáo báo chí phát hành thứ Năm. Chiều thứ Sáu Dũng có 1 giờ — chuỗi mail cảm ơn. Người cấp cao dễ nhớ; thử thách là nhân sự trẻ (Linh, Loan, Hải nếu thuộc nhóm hỗ trợ hậu cần).

---

## Hội thoại XẤU — chỉ cảm ơn senior + chung chung 「お疲れ様」
*冷*

| Vai | Câu |
|---------|-----|
| (金曜 16:00 Slack #general) **ズン** | 「Phase 3 <ruby>締結<rt>ていけつ</rt></ruby>! <ruby>大垣<rt>おおがき</rt></ruby>様 + ハー CTO に<ruby>感謝<rt>かんしゃ</rt></ruby>! みなさんお<ruby>疲<rt>つか</rt></ruby>れ様でした!」 <br/>*Ký Phase 3 rồi! Cảm ơn anh Ōgaki + anh Hà CTO! Mọi người làm việc vất vả!* |
| (Linh、Loan などはこれだけ) | … |
| (1 ヶ月後、Phase 4 提案準備) **ズン** | 「リン、Phase 4 deck をお願い。」 <br/>*(1 tháng sau, chuẩn bị đề xuất Phase 4) Linh, làm deck Phase 4 giúp anh.* |
| **リン** | 「ズン先輩、私は今 別案件で…」 <br/>*Anh Dũng, em đang bận việc khác ạ...* |
| (背景: Linh は Phase 3 PR を 3 日 overtime で作成、感謝された記憶 specific になし) |  |

**Vì sao xấu:** Một câu chung chung "お疲れ様" = giống nhau với tất cả = đóng góp cá nhân không được thấy. Nhân sự trẻ cảm thấy "nỗ lực của mình không được nhìn nhận" → lần sau nhờ việc thì phản hồi lạnh nhạt. Sự gắn bó suy giảm.

---

## Hội thoại TỐT — cả chuỗi 全員 + junior cụ thể
*白鷗 大垣にメール、CC: Tanaka PMO + Nakamura CFO · 社内 Slack DM Linh · 社内 Slack DM Loan*

| Vai | Câu |
|---------|-----|
| (金曜 16:00 Hương に相談) **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、Phase 3 <ruby>関係者<rt>かんけいしゃ</rt></ruby><ruby>感謝<rt>かんしゃ</rt></ruby>メールを<ruby>書<rt>か</rt></ruby>きます。Senior 6 <ruby>名<rt>めい</rt></ruby>、 junior 4 <ruby>名分<rt>めいぶん</rt></ruby>で<ruby>個別<rt>こべつ</rt></ruby> specific にします【1】。レビューお<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Chị Hương, em viết mail cảm ơn toàn bộ người liên quan Phase 3. 6 cấp cao + 4 nhân sự trẻ em viết riêng từng người cụ thể. Phiền chị xem lại ạ.* |
| **ズン** | 「<ruby>大垣<rt>おおがき</rt></ruby>様、Tanaka 様、Nakamura 様 — Phase 3 <ruby>締結<rt>ていけつ</rt></ruby>に<ruby>至<rt>いた</rt></ruby>りましたこと、<ruby>皆様<rt>みなさま</rt></ruby>のお<ruby>力添<rt>ちからぞ</rt></ruby>えあってこそでございます。**Tanaka 様には<ruby>毎週<rt>まいしゅう</rt></ruby>の<ruby>細<rt>こま</rt></ruby>やかな<ruby>進捗確認<rt>しんちょくかくにん</rt></ruby>**、**Nakamura 様には financial review でのご<ruby>厳格<rt>げんかく</rt></ruby>なご<ruby>指摘<rt>してき</rt></ruby>**【2】、<ruby>改<rt>あらた</rt></ruby>めて<ruby>感謝<rt>かんしゃ</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。」 <br/>*Anh Ōgaki, anh Tanaka, anh Nakamura — việc ký Phase 3 thực sự nhờ sự giúp đỡ của các anh. Anh Tanaka kiểm tra tiến độ tỉ mỉ hàng tuần, anh Nakamura chỉ ra điểm chặt trong buổi xét duyệt tài chính — em xin gửi lời cảm ơn ạ.* |
| **ズン** | 「リン、Phase 3 PR の<ruby>件<rt>けん</rt></ruby> ありがとう! **<ruby>特<rt>とく</rt></ruby>に embargo 5/15 09:00 に<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせるため 5/13-14 で 2 <ruby>晩<rt>ばん</rt></ruby> overtime <ruby>対応<rt>たいおう</rt></ruby>してくれた<ruby>件<rt>けん</rt></ruby>**【3】、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かった。<ruby>両社<rt>りょうしゃ</rt></ruby> release が<ruby>同時刻<rt>どうじこく</rt></ruby> timing に<ruby>成功<rt>せいこう</rt></ruby>したのは Linh の effort <ruby>直接的<rt>ちょくせつてき</rt></ruby>に。Phase 4 でも<ruby>力借<rt>ちからか</rt></ruby>りたい。」 <br/>*Linh, cảm ơn em vụ PR Phase 3! Đặc biệt vụ em làm overtime 2 đêm 13-14/5 để kịp embargo 09:00 ngày 15/5 — anh thực sự cảm ơn. Việc release đồng thời 2 bên thành công là nhờ effort trực tiếp của Linh. Phase 4 anh cũng muốn nhờ em.* |
| **リン** | 「ズン先輩、<ruby>覚<rt>おぼ</rt></ruby>えていてくださってありがとうございます…! <ruby>嬉<rt>うれ</rt></ruby>しいです。Phase 4 もぜひ<ruby>呼<rt>よ</rt></ruby>んでください。」 <br/>*Anh Dũng, cảm ơn anh đã nhớ ạ...! Em vui ạ. Phase 4 anh nhớ gọi em nhé.* |
| **ズン** | 「ロアンさん、Phase 3 <ruby>経理<rt>けいり</rt></ruby>レビューありがとうございました。**<ruby>特<rt>とく</rt></ruby>に LOI <ruby>段階<rt>だんかい</rt></ruby>での<ruby>税抜表記<rt>ぜいぬきひょうき</rt></ruby><ruby>指摘<rt>してき</rt></ruby>**、**indemnity <ruby>上限<rt>じょうげん</rt></ruby>の<ruby>取締役会規定確認<rt>とりしまりやくかいきていかくにん</rt></ruby>**【4】、<ruby>契約<rt>けいやく</rt></ruby>の<ruby>死角<rt>しかく</rt></ruby> を<ruby>全部<rt>ぜんぶ</rt></ruby> catch していただきました。ロアンさんなしでは ¥17M <ruby>救<rt>すく</rt></ruby>えませんでした。」 <br/>*Chị Loan, cảm ơn chị đã review kế toán Phase 3. Đặc biệt việc chị chỉ ra ''ghi rõ chưa thuế'' ở giai đoạn LOI, kiểm tra quy định HĐQT về cap indemnity — chị bắt được hết các điểm mù của hợp đồng. Không có chị thì không cứu được ¥17M.* |
| **ロアン** | 「ズンさん、ご<ruby>丁寧<rt>ていねい</rt></ruby>に。<ruby>指摘<rt>してき</rt></ruby>した<ruby>分<rt>ぶん</rt></ruby> <ruby>役立<rt>やくだ</rt></ruby>ったと<ruby>知<rt>し</rt></ruby>れて<ruby>嬉<rt>うれ</rt></ruby>しいです。<ruby>次<rt>つぎ</rt></ruby>の case でも<ruby>遠慮<rt>えんりょ</rt></ruby>なく。」 <br/>*Anh Dũng, em viết kỹ quá. Chị vui khi biết những chỗ chị chỉ ra hữu ích. Lần sau cứ gọi không ngại.* |
| (Slack #general 全社向け、ただし thank-you DM 後に投稿) **ズン** | 「Phase 3 <ruby>締結<rt>ていけつ</rt></ruby>! <ruby>関係者<rt>かんけいしゃ</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby>に<ruby>個別<rt>こべつ</rt></ruby><ruby>感謝<rt>かんしゃ</rt></ruby> DM <ruby>済<rt>ずみ</rt></ruby>【5】。Tuấn、ハー CTO、フオン副部長、リン、ロアン、<ruby>田中<rt>たなか</rt></ruby>様、大垣様、Nakamura 様 — ありがとうございました。」 <br/>*Ký Phase 3 rồi! Em đã DM cảm ơn riêng từng stakeholder. Anh Tuấn, anh Hà CTO, chị Hương, Linh, chị Loan, anh Tanaka, anh Ōgaki, anh Nakamura — em xin cảm ơn.* |

 **Ghi chú:**
- 【1】**Cấp cao + trẻ tách danh sách riêng** — cảm ơn người trẻ mất thời gian hơn (cần cụ thể) nên dành riêng.
- 【2】**Đóng góp cụ thể từng người** — 「お疲れ様」 chung chung KHÔNG OK. 「毎週の細やかな進捗確認」 = đóng góp thực tế của Tanaka.
- 【3】**Nhân sự trẻ đánh giá rất cao việc được nhìn nhận chi tiết**. Nhắc cụ thể ngày tháng + hành vi.
- 【4】**Bộ phận hỗ trợ như Loan** càng dễ bị bỏ sót. Kế toán là nguồn có thể cứu công ty trong tranh chấp hợp đồng nhưng khó thấy ngay.
- 【5】**Nhắn tin riêng trước rồi mới đăng bài chung** là đúng thứ tự. Ngược lại nhân sự trẻ cảm thấy "bài chung là cho qua".

---

## Cụm từ mẫu
> **「Senior + junior 別々、specific contribution で感謝。「お疲れ様」 generic は未投資メッセージ。」**
>
> *Cấp cao + trẻ lập danh sách riêng, đóng góp cụ thể. 「お疲れ様」 chung chung = thông điệp ''không quan tâm''.*

---

## Tránh
- 「みんなお疲れ様」 1 行で済ませる → nhân sự trẻ nguội lạnh
- Chung chung hóa đóng góp của người trẻ (「PR 作ってくれてありがとう」) → không thấy được nỗ lực chi tiết
- Chỉ cảm ơn cấp cao → người trẻ cảm thấy "âm thầm làm mà không ai thấy"
- Đăng bài chung trước → trọng lượng tin nhắn riêng giảm đi
- Quên các bộ phận hỗ trợ như kế toán, pháp chế → đây là những người một sai sót có thể cứu hay làm khó công ty

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 関係者 | かんけいしゃ | QUAN HỆ GIẢ | Người liên quan |
| お力添え | おちからぞえ | — | Sự giúp sức (trang trọng) |
| 細やか | こまやか | — | Tỉ mỉ |
| 指摘 | してき | CHỈ TRÍCH | Chỉ ra / nêu ra điểm cần lưu ý |
| 死角 | しかく | TỬ GIÁC | Điểm mù |
| bộ phận hỗ trợ | サポートファンクション | — | Bộ phận hỗ trợ (kế toán, pháp chế) |
| 個別 | こべつ | CÁ BIỆT | Riêng từng người |', 'system', 39, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000040, 800000007, NULL, 'markdown_book', 'Rule 40 — Đàm phán đa bên / 多者間交渉', '# Rule 40 — Đàm phán đa bên / 多者間交渉
> **Luận điểm.** Khi 中村 CFO + 大垣 + 松本 PM **cùng tham gia** 1 phiên = 3 bên liên quan, 3 ưu tiên khác nhau. **CFO** = giá / ROI, **営業部長** = tổng giá trị thương vụ / quan hệ, **PM** = phạm vi / tiến độ. Trả lời chỉ 1 người = 2 người mất kết nối. Công thức: **(1) Nhận diện từng mối quan tâm**, **(2) Trả lời song song** (1 câu cho mỗi người), **(3) Trả lời người cấp cao cuối cùng** (CFO).
>
> 多者間交渉では役割別 concern (CFO=ROI、営業=total deal、PM=scope) を識別し、各人に並列 address。最後に senior (CFO) に回す。
>
> **Liên quan:** rule 03 (稟議), rule 16 (決裁者), rule 12 (discovery).

---

## Bối cảnh / 場面
Phase 3 vòng cuối, buổi duyệt cấp lãnh đạo: 中村 CFO + 大垣 + 松本 PM cùng tham gia với phía Tiên Phát (Hà CTO + Hương + Dũng). 3 câu hỏi dồn đến trong 90 giây — Dũng cần trả lời cả 3 trong 1 lượt nói.

---

## Hội thoại XẤU — chỉ trả lời 1 người, 2 người bị bỏ qua
*中村だけ向く · 腕組み*

| Vai | Câu |
|---------|-----|
| **中村CFO** | 「ROI 4.4 <ruby>倍<rt>ばい</rt></ruby>とのことですが、payback period は<ruby>何<rt>なん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>でしょうか？」 <br/>*Bên em báo ROI 4.4x, nhưng payback period bao nhiêu tháng?* |
| **大垣** | 「<ruby>価格<rt>かかく</rt></ruby> ¥17M に **<ruby>保守<rt>ほしゅ</rt></ruby><ruby>延長<rt>えんちょう</rt></ruby> オプション**は<ruby>含<rt>ふく</rt></ruby>まれますか？」 <br/>*Giá ¥17M có bao gồm option gia hạn maintenance không?* |
| **松本PM** | 「Phase 2 <ruby>同等<rt>どうとう</rt></ruby> SLA 99.9% を<ruby>維持<rt>いじ</rt></ruby>できますか？」 <br/>*Có giữ được SLA 99.9% tương đương Phase 2 không?* |
| **ズン** | 「<ruby>中村<rt>なかむら</rt></ruby><ruby>様<rt>さま</rt></ruby>、ROI 4.4 <ruby>倍<rt>ばい</rt></ruby>は **18 ヶ<ruby>月<rt>げつ</rt></ruby>で payback** です。」 <br/>*Anh Nakamura, ROI 4.4x payback trong 18 tháng ạ.* |
| (大垣 + 松本 unaddressed) **大垣** | …(<ruby>沈黙<rt>ちんもく</rt></ruby>) <br/>*…(im lặng)* |
| **松本** | 「あの、SLA は…」 <br/>*Ờ thì... SLA là...* |

**Vì sao xấu:** Dũng chọn CFO (chức vụ cao nhất) nhưng bỏ qua 大垣 + 松本. 大垣 cảm thấy bị gạt ra rìa → sứt mẻ quan hệ. 松本 phải hỏi lại = gây ấn tượng thiếu chuyên nghiệp. Nguyên tắc đa bên: trả lời TẤT CẢ trong 1 lượt nói, KHÔNG bỏ sót ai.

---

## Hội thoại TỐT — trả lời song song 3 bên liên quan
*沈黙 3秒、メモ確認 · 松本に向く · 大垣に向く · 中村に最後、deeper bow · 頷く*

| Vai | Câu |
|---------|-----|
| **中村CFO** | 「ROI 4.4 <ruby>倍<rt>ばい</rt></ruby>の payback period は？」 <br/>*Payback period của ROI 4.4x là bao nhiêu?* |
| **大垣** | 「<ruby>保守<rt>ほしゅ</rt></ruby><ruby>延長<rt>えんちょう</rt></ruby>は<ruby>含<rt>ふく</rt></ruby>まれますか？」 <br/>*Maintenance gia hạn có bao gồm không?* |
| **松本** | 「SLA 99.9% <ruby>維持<rt>いじ</rt></ruby>できますか？」 <br/>*Có giữ được SLA 99.9% không?* |
| **ズン** | 「ご<ruby>質問<rt>しつもん</rt></ruby>ありがとうございます。**3 <ruby>点<rt>てん</rt></ruby>まとめてお<ruby>答<rt>こた</rt></ruby>えいたします**【1】。」 <br/>*Em cảm ơn các câu hỏi ạ. Em xin trả lời gộp 3 điểm.* |
| **ズン** | 「**まず<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>の SLA**: Phase 2 <ruby>同等<rt>どうとう</rt></ruby>の 99.9% <ruby>維持<rt>いじ</rt></ruby>、<ruby>加<rt>くわ</rt></ruby>えて **<ruby>専任<rt>せんにん</rt></ruby> PM が weekly で reliability budget review**、<ruby>達成<rt>たっせい</rt></ruby><ruby>困難<rt>こんなん</rt></ruby><ruby>時<rt>じ</rt></ruby>は<ruby>早期<rt>そうき</rt></ruby> escalation の<ruby>体制<rt>たいせい</rt></ruby>でございます【2】。」 <br/>*Đầu tiên SLA của anh Matsumoto: giữ 99.9% tương đương Phase 2, ngoài ra PM chuyên trách kiểm tra ngân sách độ tin cậy hàng tuần, khi khó đạt thì có cơ chế leo thang sớm ạ.* |
| **ズン** | 「**<ruby>次<rt>つぎ</rt></ruby>に<ruby>大垣<rt>おおがき</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>保守<rt>ほしゅ</rt></ruby><ruby>延長<rt>えんちょう</rt></ruby>**: ¥17M には<ruby>初年度<rt>しょねんど</rt></ruby><ruby>保守<rt>ほしゅ</rt></ruby>を<ruby>含<rt>ふく</rt></ruby>み、**2 <ruby>年目<rt>ねんめ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>の<ruby>延長<rt>えんちょう</rt></ruby><ruby>保守<rt>ほしゅ</rt></ruby>は<ruby>別枠<rt>べつわく</rt></ruby> (¥2M / <ruby>年<rt>ねん</rt></ruby>)**、<ruby>契約書<rt>けいやくしょ</rt></ruby> separate clause でご<ruby>案内<rt>あんない</rt></ruby>しております。」 <br/>*Tiếp theo về maintenance gia hạn anh Ōgaki: ¥17M đã bao gồm maintenance năm đầu, gia hạn từ năm 2 trở đi là khung riêng (¥2M/năm), em ghi ở separate clause của contract ạ.* |
| **ズン** | 「**<ruby>最後<rt>さいご</rt></ruby>に<ruby>中村<rt>なかむら</rt></ruby> CFO の payback**: <ruby>御社<rt>おんしゃ</rt></ruby> GMV インパクト ¥80M / <ruby>年<rt>ねん</rt></ruby>に<ruby>対<rt>たい</rt></ruby>し、Phase 3 <ruby>投資<rt>とうし</rt></ruby> ¥17M、**payback <ruby>約<rt>やく</rt></ruby> 18 ヶ<ruby>月<rt>げつ</rt></ruby>**【3】、3 <ruby>年目<rt>ねんめ</rt></ruby>から<ruby>純利益<rt>じゅんりえき</rt></ruby> acceleration、5 <ruby>年<rt>ねん</rt></ruby><ruby>累計<rt>るいけい</rt></ruby> ROI 4.4 <ruby>倍<rt>ばい</rt></ruby>を<ruby>試算<rt>しさん</rt></ruby>しております。<ruby>詳細<rt>しょうさい</rt></ruby> cashflow も<ruby>別添<rt>べってん</rt></ruby>にてご<ruby>用意<rt>ようい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。」 <br/>*Cuối cùng payback của anh Nakamura CFO: GMV impact bên anh ¥80M/năm, đầu tư Phase 3 ¥17M, payback khoảng 18 tháng, từ năm 3 lợi nhuận ròng accelerate, ROI tích lũy 5 năm 4.4 lần. Cashflow chi tiết em có thể đính kèm thêm ạ.* |
| **中村CFO** | 「ありがとうございます。3 <ruby>点<rt>てん</rt></ruby>ともクリアです。<ruby>社内<rt>しゃない</rt></ruby><ruby>検討<rt>けんとう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。」 <br/>*Cảm ơn em. Cả 3 điểm đều rõ. Bên anh vào nội bộ thảo luận.* |

 **Ghi chú:**
- 【1】**「3 点まとめてお答えいたします」** = tín hiệu báo sẽ trả lời tất cả. Xua đi nỗi lo của người sợ bị bỏ qua.
- 【2】**Thứ tự: cấp dưới → cấp cao** (松本 → 大垣 → 中村 CFO). Người cấp cao trả lời cuối = đứng trên đỉnh kim tự tháp giá trị (chi tiết kỹ thuật của 松本 → tổng thương vụ của 大垣 → ROI của CFO). Mỗi cấp đều có câu trả lời riêng.
- 【3】**Câu của CFO trả lời cuối cùng + chi tiết nhất**. CFO sẽ cảm thấy "câu hỏi của mình quan trọng nhất nên được trả lời sau cùng".
- **Đảo mắt nhìn từng người + cúi nhẹ** = tín hiệu phi ngôn ngữ cho thấy đang trả lời từng người. Cố định ánh mắt vào 1 người thì 2 người còn lại mất kết nối.

---

## Cụm từ mẫu
> **「多者間 = 並列 address。junior → senior 順、CFO 最後 + detail 最大。1 人 ignored は 2 人を失う。」**
>
> *Đa bên = trả lời song song. Cấp dưới → cấp cao, CFO cuối cùng + chi tiết nhiều nhất. Bỏ qua 1 = mất 2.*

---

## Tránh
- Chỉ trả lời 1 người (chức vụ cao nhất) → 2 người còn lại mất kết nối = nguồn phản đối khi xét 稟議
- Trả lời người cấp cao trước (CFO 最初) → câu hỏi của cấp dưới bị làm loãng đi
- Gạt qua bằng "あとで個別に" (để sau sẽ trao đổi riêng) → mất đà tin cậy gây dựng được ngay hôm đó
- Trả lời mọi người cùng một độ sâu → câu của CFO cần chi tiết nhiều hơn
- Cố định ánh mắt vào 1 người → tín hiệu phi ngôn ngữ bỏ qua những người còn lại

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 多者間 | たしゃかん | ĐA GIẢ GIAN | Đa bên |
| 並列 | へいれつ | TỊNH LIỆT | Song song |
| 保守延長 | ほしゅえんちょう | BẢO THỦ DIÊN TRƯỜNG | Gia hạn maintenance |
| Payback period | ペイバック・ピリオド | — | Thời gian hoàn vốn |
| 純利益 | じゅんりえき | THUẦN LỢI ÍCH | Lợi nhuận ròng |
| 別枠 | べつわく | BIỆT KHUÔNG | Khung riêng |
| 専任 PM | せんにん PM | CHUYÊN NHIỆM | PM chuyên trách |
| Reliability budget | リライアビリティ・バジェット | — | Ngân sách độ tin cậy |', 'system', 40, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000041, 800000007, NULL, 'markdown_book', 'Rule 41 — Chiến thuật đàm phán trực tuyến / オンライン交渉', '# Rule 41 — Chiến thuật đàm phán trực tuyến / オンライン交渉
> **Luận điểm.** Trực tuyến ≠ trực tiếp đơn giản. 4 khác biệt then chốt: **(1) Mô phỏng giao tiếp bằng mắt** (nhìn vào camera, KHÔNG nhìn màn hình), **(2) Chiến lược chia sẻ màn hình** (chỉ chia sẻ khi trình bày, KHÔNG suốt phiên), **(3) Khoảng im lặng khó cảm nhận** — 7 giây trực tiếp = 4 giây trực tuyến (độ trễ mạng che lấp), **(4) Khoảng im lặng trong công cụ họp dễ bị "技術的に大丈夫?" cắt ngang** làm mất hiệu ứng neo giá.
>
> オンライン交渉では eye contact = カメラ凝視、画面共有は present 時のみ、沈黙は短めに調整、interruption (「聞こえてますか?」) でアンカリング効果を消さない。
>
> **Liên quan:** rule 18 (アンカリング), rule 25 (沈黙活用), sách 03 rule 17 (online MTG).

---

## Bối cảnh / 場面
Phase 3 round 2, 大垣 + 田中 PMO 在京、Tiên Phát side ハノイ → Zoom. Dũng neo giá ¥18M. Bình thường trực tiếp im lặng 7 giây = đòn bẩy chủ chốt. Trực tuyến... khác.

---

## Hội thoại XẤU — nhìn lơ đãng qua camera + sa lầy im lặng
| Vai | Câu (Zoom) |
|---------|-----|
| **ズン** *(<ruby>画面<rt>がめん</rt></ruby>を見ながら)* | 「Phase 3 <ruby>価格<rt>かかく</rt></ruby> ¥18M でご<ruby>提案<rt>ていあん</rt></ruby>させていただきます。」 |
|  | *Em xin đề xuất giá Phase 3 là ¥18M ạ.* |
| (<ruby>沈黙<rt>ちんもく</rt></ruby> 7 秒、 Dũng は画面下の slide note を<ruby>見続<rt>みつづ</rt></ruby>ける) | … |
|  | *(Im lặng 7 giây, mắt Dũng vẫn nhìn ghi chú dưới slide)* |
| **大垣** *(4 秒目)* | 「あの…<ruby>音声<rt>おんせい</rt></ruby> 大丈夫ですか？」 |
|  | *Ờ thì... audio có ổn không em?* |
| **ズン** *(<ruby>慌<rt>あわ</rt></ruby>)* | 「あ、はい、<ruby>聞<rt>き</rt></ruby>こえてます！ ¥18M です、ご<ruby>検討<rt>けんとう</rt></ruby>ください！」 |
|  | *À vâng, em nghe được ạ! ¥18M ạ, anh xem xét giúp em!* |
| (アンカリング<ruby>効果<rt>こうか</rt></ruby><ruby>消滅<rt>しょうめつ</rt></ruby>、 anchoring 失敗) | |
|  | *(Hiệu ứng neo giá tan biến, neo giá thất bại)* |

**Vì sao xấu:** (a) Giao tiếp bằng mắt ⇒ nhìn note dưới màn hình chứ không nhìn camera → tạo ấn tượng "đang né ánh mắt đối phương", (b) Khoảng im lặng 7 giây trực tuyến = ông Ōgaki cho rằng có sự cố kỹ thuật → "聞こえてますか" → sức nặng của neo giá mất sạch, (c) Vội vàng nhắc lại neo giá = tín hiệu yếu.

---

## Hội thoại TỐT — nhìn thẳng camera + im lặng 4 giây + chia màn hình chính xác
| Vai | Câu (Zoom) |
|---------|-----|
| **ズン** *(camera 直視、 hand gesture で<ruby>書類<rt>しょるい</rt></ruby>に<ruby>指<rt>さ</rt></ruby>す)* | 「Phase 3 価格について、<ruby>画面共有<rt>がめんきょうゆう</rt></ruby>させていただきます。」 |
|  | *Về giá Phase 3, em xin phép chia sẻ màn hình ạ.* |
| (画面共有 ON、3 <ruby>段階提案<rt>だんかいていあん</rt></ruby> slide <ruby>表示<rt>ひょうじ</rt></ruby>) **ズン** *(camera <ruby>戻<rt>もど</rt></ruby>して<ruby>直視<rt>ちょくし</rt></ruby>)* | 「**Better tier ¥18M、Best tier ¥24M**、<ruby>本日<rt>ほんじつ</rt></ruby>は Better tier をベースにご<ruby>相談<rt>そうだん</rt></ruby>させていただければと<ruby>存<rt>ぞん</rt></ruby>じます【1】。」 |
|  | *Better tier ¥18M, Best tier ¥24M, hôm nay em xin được trao đổi base trên Better tier ạ.* |
| (画面共有 OFF、 camera のみに<ruby>集中<rt>しゅうちゅう</rt></ruby>) **ズン** *(camera 直視のまま)* | 「¥18M の<ruby>根拠<rt>こんきょ</rt></ruby>は Phase 2 <ruby>比<rt>ひ</rt></ruby> +24%、ROI 4.4 <ruby>倍<rt>ばい</rt></ruby>。<ruby>御社<rt>おんしゃ</rt></ruby>のご<ruby>感想<rt>かんそう</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できればと存じます。」 |
|  | *Cơ sở ¥18M là +24% so với Phase 2, ROI 4.4 lần. Em rất mong nhận được cảm nhận từ bên anh ạ.* |
| (沈黙 4 秒、 Dũng は camera 直視・<ruby>微笑<rt>びしょう</rt></ruby>、 hand stillness) | … |
|  | *(Im lặng 4 giây, Dũng vẫn nhìn camera, mỉm cười nhẹ, tay không động)* |
| **大垣** *(4 秒目で<ruby>発言<rt>はつげん</rt></ruby>)* | 「…¥18M ですね。<ruby>社内<rt>しゃない</rt></ruby>で検討します。」 |
|  | *...¥18M nhỉ. Bên anh nội bộ thảo luận.* |
| **ズン** *(<ruby>頷<rt>うなず</rt></ruby>き、 camera <ruby>維持<rt>いじ</rt></ruby>)* | 「ありがとうございます。<ruby>検討期間<rt>けんとうきかん</rt></ruby>は 1 <ruby>週間<rt>しゅうかん</rt></ruby>ほど見ていただけますでしょうか？」 |
|  | *Em cảm ơn ạ. Phiền anh dành khoảng 1 tuần để xem xét được không ạ?* |
| (Dũng Slack Hương 後で) **ズン** | 「online 4 秒 silence で大垣様 reply。screen share は anchor slide <ruby>出<rt>だ</rt></ruby>して即 OFF、camera 直視で<ruby>沈黙保持<rt>ちんもくほじ</rt></ruby>。**相手が ''connection 大丈夫?'' interrupt する前に reply 来た**【2】。」 |
|  | *Im lặng trực tuyến 4 giây thì anh Ōgaki đã trả lời. Chia màn hình chỉ lúc đưa slide neo giá rồi tắt ngay, camera giữ nhìn thẳng để duy trì im lặng. Reply đến trước khi anh ấy interrupt ''connection OK?''.* |

 **Ghi chú:**
- 【1】**Chỉ chia sẻ màn hình lúc đưa neo giá** → củng cố bằng thị giác. Sau khi đưa xong thì **tắt chia sẻ ngay + quay lại camera** = lấy lại kết nối bằng khuôn mặt.
- 【2】**Khoảng im lặng trực tuyến = 4 giây** (trực tiếp 7 giây). Quá 5 giây sẽ bị hiểu nhầm là độ trễ mạng.
- **Giao tiếp bằng mắt = nhìn thẳng vào ống kính camera** (không phải nhìn mặt đối phương). Cần luyện 1 tuần; lúc đầu sẽ cảm thấy thiếu tự nhiên.
- **Giữ tay yên** trong khoảng im lặng = sự tự tin "đang chờ đợi". Cử động nhiều sẽ tạo cảm giác "đang bồn chồn".
- **Câu kiểm tra kết nối** 「聞こえてますか？」 tuyệt đối không được nói sau khi đã đưa neo giá.

---

## Cụm từ mẫu
> **「Trực tuyến: camera 直視 + chia sẻ màn hình は neo giá 時のみ + khoảng im lặng 4 秒 (offline -3 秒) + không để bị cắt ngang。」**
>
> *Trực tuyến: nhìn thẳng ống kính + chỉ chia sẻ màn hình khi neo giá + khoảng im lặng 4 giây + tránh bị cắt ngang.*

---

## Tránh
- Nhìn note dưới màn hình trong khi đưa neo giá → giao tiếp bằng mắt = 0
- Chia sẻ màn hình cả phiên → mặt không thấy được, sự kết nối người với người bị cắt đứt
- Khoảng im lặng trực tuyến 7 giây → bị cho là "mất tiếng / rớt audio"
- 「聞こえてますか?」 ở giây thứ 2 → hiệu ứng neo giá tan biến ngay lập tức
- Góc camera từ trên xuống / từ dưới lên → tạo thế quyền lực thiếu tự nhiên

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| カメラ直視 | カメラちょくし | TRỰC THỊ | Nhìn thẳng camera |
| 画面共有 | がめんきょうゆう | HỌA DIỆN CỘNG HỮU | Chia sẻ màn hình |
| 凝視 | ぎょうし | NGƯNG THỊ | Nhìn chằm chằm, nhìn cố định |
| 沈黙保持 | ちんもくほじ | TRẦM MẶC BẢO TRÌ | Giữ im lặng |
| ネット遅延 | ネットちえん | TRÌ DIÊN | Độ trễ mạng (lag mạng) |
| Giữ tay yên | ハンドスティルネス | — | Giữ tay yên không cử động |
| Mô phỏng giao tiếp bằng mắt | アイコンタクトモック | — | Nhìn camera thay vì mặt đối phương |', 'system', 41, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000042, 800000007, NULL, 'markdown_book', 'Rule 42 — Đàm phán qua phiên dịch / 通訳介在', '# Rule 42 — Đàm phán qua phiên dịch / 通訳介在
> **Luận điểm.** Khi Linh học phiên dịch tham gia phiên đàm phán: 4 quy tắc cần theo. **(1) Nhịp độ** = câu ngắn 15-25 字 tối đa, KHÔNG nói liên tục không ngắt, **(2) Dừng sau câu** ≥ 2 giây cho Linh dịch, **(3) Người nói đứng sát phiên dịch nhưng nhìn KHÁCH** (không nhìn phiên dịch), **(4) Dặn trước** phiên dịch về thuật ngữ chính (BATNA, ZOPA, indemnity) — phiên dịch được biết thuật ngữ đặc thù trước. Bỏ 1 trong 4 → phiên dịch quá tải, dịch sai = số tiền sai.
>
> 通訳介在交渉では (a) 短い文 (b) 文末で 2 秒 dừng (c) 相手を見る (d) 用語 dặn trước。これらを守らないと通訳精度低下 = 数値ズレ → 商務 dispute。
>
> **Liên quan:** rule 30 (合意確認), sách 04 rule 17 (escalation).

---

## Bối cảnh / 場面
Phase 4 xác định phạm vi với 1 khách hàng mới (văn phòng Hà Nội, sếp JP không tiếng Anh / không tiếng Việt). Linh học phiên dịch tham gia. Pre-brief 30 phút trước. Trong phiên: Dũng phải điều chỉnh pace.

---

## Hội thoại XẤU — câu tiếng Nhật quá dài, không ngắt, không pre-brief
*早口、 1 文 80 字 · panic、 30 字までしかメモ取れず · 訂正 · VN client へ · 困*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>弊社<rt>へいしゃ</rt></ruby>の Phase 4 <ruby>提案<rt>ていあん</rt></ruby>は、AI レコメンドエンジンに<ruby>加<rt>くわ</rt></ruby>えて customer churn prediction モデルも<ruby>統合<rt>とうごう</rt></ruby>し、 indemnity は<ruby>年契約額上限<rt>ねんけいやくがくじょうげん</rt></ruby> ¥20M <ruby>想定<rt>そうてい</rt></ruby>、SLA は 99.95% で、 BATNA も<ruby>別途用意<rt>べっとようい</rt></ruby>しております。」 <br/>*Đề xuất Phase 4 bên em ngoài AI recommend engine còn integrate cả model customer churn prediction, indemnity dự kiến trần annual ¥20M, SLA là 99.95%, BATNA bên em cũng có chuẩn bị riêng.* |
| **リン** | 「えっと…AI engine と churn prediction、 indemnity ¥20M、SLA…99.5%？ ですか？」 <br/>*Ờ thì... AI engine và churn prediction, indemnity ¥20M, SLA... 99.5% à?* |
| **ズン** | 「99.95% です。」 <br/>*99.95% ạ.* |
| **リン** | 「Phase 4 sẽ có AI engine + churn prediction. Indemnity 20 triệu yên, SLA 99.5%...à 99.95%, em xin lỗi.」 <br/>*Phase 4 sẽ có AI engine + churn prediction. Indemnity 20 triệu yên, SLA 99.5%...à 99.95%, em xin lỗi.* |
| **Khách VN** | 「SLA 99.95% à... bên em ngân sách dựa trên 99.5%.」 <br/>*SLA 99.95% à... bên em ngân sách dựa trên 99.5%.* |

**Vì sao xấu:** (a) 1 文 80 字, Linh の memory buffer 超え, (b) BATNA / indemnity 用語 pre-brief なし → Linh interpret 苦戦, (c) 99.5 vs 99.95 の翻訳ミス = ¥1M+ dispute, (d) 訂正 mid-flow で credibility 崩壊.

---

## Hội thoại TỐT — chia khúc + ngừng + dặn trước
*Linh と 1-on-1 · VN client 直視、 1 文 20 字以内、 文末 2 秒 pause · VN client へ · VN client 凝視、 Linh は ear-shot 距離 · 明瞭発音 · Linh に*

| Vai | Câu |
|---------|-----|
| (商談 30 分前 pre-brief) **ズン** | 「Linh、<ruby>本日<rt>ほんじつ</rt></ruby>の key terms 7 <ruby>個<rt>こ</rt></ruby> reviews【1】: indemnity =<ruby>損害賠償<rt>そんがいばいしょう</rt></ruby>, BATNA =<ruby>交渉決裂代替案<rt>こうしょうけつれつだいたいあん</rt></ruby>, ZOPA =<ruby>合意可能領域<rt>ごういかのうりょういき</rt></ruby>, SLA = サービス<ruby>水準合意<rt>すいじゅんごうい</rt></ruby>。**99.95% は『きゅうきゅう・きゅうご パーセント』と<ruby>区切<rt>くぎ</rt></ruby>って<ruby>発音<rt>はつおん</rt></ruby>**【2】、99.5% との<ruby>混同<rt>こんどう</rt></ruby><ruby>避<rt>さ</rt></ruby>ける。」 <br/>*Linh, mình xem lại 7 thuật ngữ chính hôm nay: indemnity = bồi thường thiệt hại, BATNA = phương án thay thế, ZOPA = vùng thỏa thuận, SLA = thỏa thuận mức dịch vụ. 99.95% đọc tách ''chín-chín chín-năm phần trăm'' để khỏi nhầm với 99.5%.* |
| **リン** | 「ありがとうございます。99.95% pronunciation <ruby>練習<rt>れんしゅう</rt></ruby>しました。」 <br/>*Em cảm ơn anh ạ. Em đã luyện tập phát âm 99.95% rồi ạ.* |
| (商談中) **ズン** | 「Phase 4 では、AI レコメンドエンジンを<ruby>継続<rt>けいぞく</rt></ruby>いたします。」 (2 秒 pause) <br/>*Phase 4 sẽ tiếp tục AI recommend engine ạ.* |
| **リン** | 「Phase 4 vẫn duy trì AI recommend engine.」 <br/>*Phase 4 vẫn duy trì AI recommend engine.* |
| **ズン** | 「<ruby>加<rt>くわ</rt></ruby>えて、 customer churn prediction を<ruby>統合<rt>とうごう</rt></ruby>いたします。」 (2 秒 pause) <br/>*Bổ sung thêm, em sẽ integrate customer churn prediction ạ.* |
| **リン** | 「Bổ sung integrate model dự đoán churn.」 <br/>*Bổ sung integrate model dự đoán churn.* |
| **ズン** | 「indemnity <ruby>上限<rt>じょうげん</rt></ruby>は <ruby>年契約額相当<rt>ねんけいやくがくそうとう</rt></ruby>の ¥20M。」 (2 秒 pause) <br/>*Trần indemnity tương đương annual contract ¥20M.* |
| **リン** | 「Indemnity (<ruby>損害賠償上限<rt>そんがいばいしょうじょうげん</rt></ruby>) đặt ở mức annual ¥20M.」 <br/>*Indemnity (trần bồi thường) đặt ở mức annual ¥20M.* |
| **ズン** | 「SLA は『きゅうきゅう・きゅうご パーセント』、つまり 99.95% でございます【3】。」 (2 秒 pause) <br/>*SLA là ''chín-chín chín-năm phần trăm'', tức là 99.95% ạ.* |
| **リン** | 「SLA chín-chín-chín-năm phần trăm, tức là 99.95%.」 <br/>*SLA chín-chín-chín-năm phần trăm, tức là 99.95%.* |
| (商談後) **ズン** | 「お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>。99.95% <ruby>区切<rt>くぎ</rt></ruby>り<ruby>発音<rt>はつおん</rt></ruby> + indemnity term pre-brief で<ruby>精度<rt>せいど</rt></ruby> high。<ruby>次回<rt>じかい</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ pattern で。」 <br/>*Em vất vả rồi. Phát âm tách 99.95% + brief trước thuật ngữ indemnity giúp độ chính xác cao. Lần sau công thức y vậy.* |

 **Ghi chú:**
- 【1】**Dặn trước 30 phút** = danh sách thuật ngữ chính + điểm nhạy cảm về số + phong cách nói. Phiên dịch vào không có thông tin gì trước thì độ chính xác giảm -30%.
- 【2】**Phát âm tách số** (「99.95% = きゅうきゅう・きゅうご」) = phòng tránh dịch sai. 3 と 5 / 9 と 4 は Vietnamese で類似音.
- 【3】**Người nói nhìn thẳng khách** (không nhìn Linh). Linh đứng ở khoảng cách nghe rõ. Khách cảm thấy "đang nói chuyện trực tiếp với Dũng".
- **Khi Linh đang dịch thì Dũng im lặng + gật đầu**。Không nghĩ sẵn câu tiếp theo, tập trung lắng nghe.

---

## Cụm từ mẫu
> **「通訳介在 = 1 文 20 字 + 2 秒 dừng + nhìn khách + dặn trước 30 phút。Số đọc tách rõ。」**
>
> *Qua phiên dịch = câu 20 chữ + dừng 2 giây + nhìn khách + dặn trước 30 phút. Số đọc tách rõ.*

---

## Tránh
- Câu quá dài 80 字以上 → bộ nhớ tạm phiên dịch 超え
- Đọc số quá nhanh (「99.95%」 一気に) → nhầm lẫn 3/5/9 risk
- Người nói nhìn phiên dịch trong khi nói → khách ý thức "đây là dịch thuật", cảm giác xa cách
- Không dặn trước thuật ngữ kỹ thuật → phiên dịch ứng phó sai
- Sửa lại trong khi phiên dịch đang dịch → phiên dịch và khách cùng bối rối
- Đặt phiên dịch cách xa 1m thay vì sát bên → khó nghe rõ

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 通訳 | つうやく | THÔNG DỊCH | Phiên dịch |
| 介在 | かいざい | GIỚI TẠI | Trung gian / mediated |
| 区切り発音 | くぎりはつおん | KHU THIẾT PHÁT ÂM | Phát âm tách rõ |
| Dặn trước | プレ・ブリーフ | — | Dặn trước cho phiên dịch |
| Ear-shot 距離 | イアショット きょり | CỰ LY | Khoảng cách nghe rõ |
| 凝視 | ぎょうし | NGƯNG THỊ | Nhìn chăm |
| Bộ nhớ tạm | メモリーバッファ | — | Bộ nhớ tạm (dung lượng ghi nhớ) |
| Lỗi ứng phó | インプロビザミス | — | Lỗi do ứng phó thiếu chuẩn bị |', 'system', 42, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000043, 800000007, NULL, 'markdown_book', 'Rule 43 — Các tình huống cần leo thang / エスカレーション', '# Rule 43 — Các tình huống cần leo thang / エスカレーション
> **Luận điểm.** 4 điều kiện kích hoạt để báo cáo lên Hà CTO / Hương: **(T1)** Khách ép giá dưới điểm rút lui ¥15M, **(T2)** Yêu cầu điều khoản ngoài thẩm quyền (bồi thường không giới hạn, IP toàn bộ), **(T3)** Tông đe dọa / tối hậu thư, **(T4)** Quyết định liên phòng ban (kỹ thuật + tài chính). Quy trình báo cấp trên: **(a)** Slack cấp trên với bối cảnh 30 giây, **(b)** Cấp trên quyết bước vào hay hướng dẫn qua Slack, **(c)** Khi bước vào thì Dũng thiết lập (KHÔNG rút đi). Báo cấp trên = chuyển quyền sở hữu + giữ thể diện cả 2 phía.
>
> Báo cấp trên 4 kích hoạt: giá dưới ngưỡng rút lui / điều khoản ngoài thẩm quyền / tông đe dọa / quyết định liên phòng ban。flow は Slack 30 秒 bối cảnh → cấp cao quyết → Dũng thiết lập。Không rút đi, giữ hiện diện。
>
> **Liên quan:** rule 26 (脅し対応), rule 33 (条項調整), sách 04 rule 17 (mô hình leo thang).

---

## Bối cảnh / 場面
Phase 4 round 3, 大垣 thay 中村 CFO + 大垣 + Tiên Phát luật sư on call. CFO push: "indemnity 無制限じゃないと弊社決裁 down ない。今ここで決めて". Đây là T2 (ngoài thẩm quyền) + T3 (tối hậu thư) cùng lúc → báo Hà CTO.

---

## Hội thoại XẤU — Dũng tự xử ngoài thẩm quyền
*panic、 escalate なし · Hà CTO に · 青*

| Vai | Câu |
|---------|-----|
| **中村CFO** | 「indemnity <ruby>無制限<rt>むせいげん</rt></ruby>じゃないと<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>決裁<rt>けっさい</rt></ruby> down ません。<ruby>今<rt>いま</rt></ruby>ここで<ruby>決<rt>き</rt></ruby>めてください。」 <br/>*Indemnity không unlimited thì bên tôi không duyệt được. Bây giờ anh quyết đi.* |
| **ズン** | 「えっと…<ruby>無制限<rt>むせいげん</rt></ruby>ですか…<ruby>承知<rt>しょうち</rt></ruby>いたしました、それで<ruby>進<rt>すす</rt></ruby>めます…」 <br/>*Ờ thì... unlimited ạ... em rõ rồi ạ, em đi tiếp như vậy ạ...* |
| (1 <ruby>時間後<rt>じかんご</rt></ruby> Slack <ruby>報告<rt>ほうこく</rt></ruby>) **ズン** | 「Hà CTO、Phase 4 indemnity <ruby>無制限<rt>むせいげん</rt></ruby>で<ruby>合意<rt>ごうい</rt></ruby>しました。」 <br/>*Anh Hà CTO, Phase 4 em đã thống nhất indemnity unlimited rồi ạ.* |
| **ハー CTO** | 「**<ruby>何故<rt>なぜ</rt></ruby> escalate しなかった？<ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby><ruby>規定<rt>きてい</rt></ruby>を<ruby>超<rt>こ</rt></ruby>える。<ruby>今<rt>いま</rt></ruby>すぐ<ruby>撤回<rt>てっかい</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>**。<ruby>社長<rt>しゃちょう</rt></ruby> escalate も<ruby>必要<rt>ひつよう</rt></ruby>。」 <br/>*Sao em không escalate? Vượt quy định cap HĐQT. Bây giờ phải renegotiate rút lại ngay. Có khi phải escalate cả Tổng Giám đốc.* |

**Vì sao xấu:** (a) T2 (ngoài thẩm quyền) không nhận ra → Dũng tự quyết, (b) T3 (tông tối hậu thư) cũng không nhận ra, (c) Hà CTO quy định HĐQT không biết → Tiên Phát pháp lý không có hiệu lực ràng buộc → đàm phán lại = sứt mẻ niềm tin. Bỏ qua việc báo cấp trên = sai lầm định mệnh cho sự nghiệp.

---

## Hội thoại TỐT — escalation flow + dignity 保持
*2 秒沈黙、 trigger T2 + T3 認識 · microexpression: 想定内 · 2 分後 · 中村に · 姿勢正す*

| Vai | Câu |
|---------|-----|
| **中村CFO** | 「indemnity <ruby>無制限<rt>むせいげん</rt></ruby>じゃないと<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>決裁<rt>けっさい</rt></ruby> down ません。<ruby>今<rt>いま</rt></ruby>ここで<ruby>決<rt>き</rt></ruby>めてください。」 <br/>*Indemnity không unlimited thì bên tôi không duyệt được. Bây giờ anh quyết đi.* |
| **ズン** | 「ご<ruby>要望<rt>ようぼう</rt></ruby><ruby>承知<rt>しょうち</rt></ruby>しました。」 <br/>*Em ghi nhận yêu cầu của anh ạ.* |
| **ズン** | 「**indemnity <ruby>無制限<rt>むせいげん</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby><ruby>規定<rt>きてい</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わるため、<ruby>私<rt>わたし</rt></ruby>の<ruby>権限<rt>けんげん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えます**【1】。**5 <ruby>分<rt>ふん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby><ruby>頂戴<rt>ちょうだい</rt></ruby>し、Hà CTO に<ruby>連絡<rt>れんらく</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせてください**【2】。」 <br/>*Quyết định về indemnity unlimited liên quan đến quy định cap HĐQT bên em, vượt thẩm quyền của em ạ. Phiền anh cho em 5 phút để liên lạc anh Hà CTO ạ.* |
| **中村CFO** | 「<ruby>分<rt>わ</rt></ruby>かりました。5 <ruby>分<rt>ふん</rt></ruby><ruby>待<rt>ま</rt></ruby>ちます。」 <br/>*Hiểu rồi. Anh đợi 5 phút.* |
| (Slack Hà CTO、 30 <ruby>秒<rt>びょう</rt></ruby> bối cảnh: kích hoạt / <ruby>数値<rt>すうち</rt></ruby> / mức khẩn cấp) **ズン** | 「ハー CTO、Phase 4 中村 CFO cần báo cấp trên。<ruby>要点<rt>ようてん</rt></ruby>: bồi thường không giới hạn + tối hậu thư + <ruby>即決<rt>そっけつ</rt></ruby><ruby>要請<rt>ようせい</rt></ruby>。**Kích hoạt T2 + T3**。Anh quyết bước vào được không ạ。」 <br/>*(Slack) Anh Hà CTO, báo cấp trên Phase 4 anh Nakamura CFO. Tóm tắt: bồi thường không giới hạn + tối hậu thư + ép quyết ngay. Kích hoạt T2 + T3. Anh quyết bước vào được không ạ.* |
| **ハー CTO** | 「<ruby>私<rt>わたし</rt></ruby>が join。3 <ruby>分後<rt>ふんご</rt></ruby> Zoom link <ruby>送<rt>おく</rt></ruby>る。Dũng は **メンバー<ruby>紹介後<rt>しょうかいご</rt></ruby>そのまま session にいて**、<ruby>撤退<rt>てったい</rt></ruby>ではない【3】。」 <br/>*Anh sẽ join. 3 phút nữa anh gửi liên kết Zoom. Dũng giới thiệu xong cứ ở lại phiên, KHÔNG rút.* |
| (Zoom <ruby>再開<rt>さいかい</rt></ruby>) **ズン** | 「お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>弊社<rt>へいしゃ</rt></ruby> CTO ハー が join いたします。」 <br/>*Em xin lỗi đã để anh đợi. CTO Hà bên em sẽ join ạ.* |
| **ハー CTO** | 「<ruby>中村様<rt>なかむらさま</rt></ruby>、ハーでございます。giới hạn bồi thường ¥20M (<ruby>年契約額<rt>ねんけいやくがく</rt></ruby>) は<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>規定<rt>きてい</rt></ruby><ruby>上<rt>じょう</rt></ruby>の<ruby>上限<rt>じょうげん</rt></ruby>。これを<ruby>超<rt>こ</rt></ruby>えるご<ruby>提案<rt>ていあん</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby>で cam kết <ruby>不可<rt>ふか</rt></ruby>です。<ruby>代替<rt>だいたい</rt></ruby>として **giới hạn theo bậc** (1 <ruby>年目<rt>ねんめ</rt></ruby> ¥20M、2 <ruby>年目<rt>ねんめ</rt></ruby> ¥30M) のご<ruby>相談<rt>そうだん</rt></ruby>は<ruby>可能<rt>かのう</rt></ruby>です。」 <br/>*Anh Nakamura, tôi là Hà. Giới hạn bồi thường ¥20M (giá trị hợp đồng năm) là giới hạn quy định HĐQT bên tôi. Vượt mức này thì bên tôi không cam kết được. Phương án thay thế: giới hạn theo bậc (năm 1 ¥20M, năm 2 ¥30M) có thể trao đổi.* |
| **中村CFO** | 「CTO <ruby>直接<rt>ちょくせつ</rt></ruby>ご<ruby>回答<rt>かいとう</rt></ruby> <ruby>助<rt>たす</rt></ruby>かります。<ruby>段階的<rt>だんかいてき</rt></ruby> cap、 <ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り<ruby>検討<rt>けんとう</rt></ruby>します。」 <br/>*CTO trả lời trực tiếp giúp anh nhiều. Cap theo bậc, anh mang về xem.* |
| (<ruby>商談後<rt>しょうだんご</rt></ruby> Slack) **ハー CTO → Dũng** | 「Good job escalate。T2/T3 <ruby>認識<rt>にんしき</rt></ruby> + 30 <ruby>秒<rt>びょう</rt></ruby> context + setup <ruby>完璧<rt>かんぺき</rt></ruby>【4】。<ruby>学<rt>まな</rt></ruby>べた。」 <br/>*Em escalate tốt. Nhận T2/T3 + 30s context + setup hoàn hảo. Anh cũng học được.* |

 **Ghi chú:**
- 【1】**「権限を超えます」 framing** = điểm yếu cá nhân ではなく quy định tổ chức. 顧客は accept しやすい.
- 【2】**Yêu cầu buffer 5 phút** = người Nhật hiểu mô hình báo cấp trên。"Mang về đột ngột" よりは hợp lý.
- 【3】**Dũng が session に残る** = giữ trách nhiệm. Biến mất hoàn toàn → khách nghĩ "Dũng vô dụng".
- 【4】**Phản hồi từ cấp cao = bài học** = lần sau nhận kích hoạt T2/T3 nhanh hơn. Báo cấp trên = kỹ năng sự nghiệp.

---

## Cụm từ mẫu
> **「4 kích hoạt (T1 giá / T2 ngoài thẩm quyền / T3 tông đe dọa / T4 liên phòng ban) → Slack 30 秒 → cấp cao quyết → Dũng thiết lập + giữ hiện diện。」**
>
> *4 kích hoạt → Slack 30 giây → cấp cao quyết → Dũng thiết lập + ở lại phiên.*

---

## Tránh
- T2 (ngoài thẩm quyền) tự quyết → pháp lý bên HĐQT không có hiệu lực ràng buộc, rút lại → sứt mẻ niềm tin
- Chịu áp lực "今ここで決めてください" → nhất định phải yêu cầu buffer 5 phút
- Báo cấp trên nhưng rời phiên → mất trách nhiệm
- Slack cấp cao "どうしましょう?" mơ hồ → 30 giây tóm tắt kích hoạt / số liệu / mức khẩn cấp
- Cấp cao bước vào rồi Dũng vẫn tranh nói → làm loãng uy thế của cấp cao

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| エスカレーション | エスカレーション | — | Báo cấp trên |
| 権限を超えます | けんげんをこえます | QUYỀN HẠN SIÊU | Vượt thẩm quyền |
| 取締役会規定 | とりしまりやくかいきてい | THỦ ĐẾ DỊCH HỘI QUY ĐỊNH | Quy định HĐQT |
| 段階的 cap | だんかいてき cap | ĐOẠN GIAI ĐÍCH | Giới hạn theo bậc |
| Kích hoạt (trigger) | トリガー | — | Điều kiện kích hoạt |
| Biểu cảm vi mô | マイクロエクスプレッション | — | Biểu cảm khuôn mặt thoáng qua |
| Bước vào (step-in) | ステップイン | — | Cấp cao can thiệp vào phiên |', 'system', 43, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000044, 800000007, NULL, 'markdown_book', 'Rule 44 — Khoảng cách phong cách đàm phán VN-JP / VN-JP 交渉ギャップ', '# Rule 44 — Khoảng cách phong cách đàm phán VN-JP / VN-JP 交渉ギャップ
> **Luận điểm.** Phong cách VN: **直接 (trực tiếp)**, "Giảm 10% thì OK?", nhượng bộ 1 lần lớn. Phong cách JP: **間接 (gián tiếp)**, 「条件面で…」「持ち帰りでも…」, nhượng bộ nhỏ + có qua có lại. VN BD mang phong cách trực tiếp vào phòng JP → khách Nhật thấy 「無礼」 hoặc 「未熟」. JP exec mang phong cách gián tiếp sang VN → VN BD thấy "không quyết được", "vòng vo". Hizashi VN BD cần chuyển đổi phong cách: **giảm mức độ trực tiếp 30% + mô hình nhượng bộ có qua có lại**.
>
> VN phong cách trực tiếp、JP gián tiếp。nhượng bộ も VN は 1 回大きく、JP は nhỏ từng bước có qua có lại。混在せずに chế độ JP で運用、 ghi chú phong cách VN は内部用に phân tách。
>
> **Liên quan:** rule 24 (譲歩交換), rule 26 (脅し対応), rule 35 (打ち切り).

---

## Bối cảnh / 場面
Phase 4 với khách mới (sản xuất JP, trụ sở Tokyo). Tuấn Tech Lead hỗ trợ — Tuấn ít kinh nghiệm với lãnh đạo JP, mang phong cách VN vào. Dũng cần chuyển đổi phong cách + hướng dẫn Tuấn trực tiếp tại chỗ.

---

## Hội thoại XẤU — VN direct style trong phòng JP
*直接 · 沈黙、 メモを 取る · 沈黙不安*

| Vai | Câu |
|---------|-----|
| **JP client (松本 stand-in)** | 「<ruby>価格<rt>かかく</rt></ruby> ¥20M はやや<ruby>高<rt>たか</rt></ruby>い<ruby>印象<rt>いんしょう</rt></ruby>がございます。」 <br/>*Giá ¥20M hơi tạo cảm giác cao ạ.* |
| **トゥアン** | 「では ¥18M でいかがですか？10% <ruby>下<rt>さ</rt></ruby>げます！」 <br/>*Vậy ¥18M có được không ạ? Em giảm 10%!* |
| **JP client** | …(<ruby>無言<rt>むごん</rt></ruby>、 <ruby>表情変化<rt>ひょうじょうへんか</rt></ruby>なし) <br/>*(Im lặng, ghi note, không biến sắc)* |
| **トゥアン** | 「¥17M でも<ruby>検討可能<rt>けんとうかのう</rt></ruby>です…」 <br/>*¥17M cũng xem xét được ạ...* |
| **JP client** | 「…<ruby>御社<rt>おんしゃ</rt></ruby> <ruby>内部<rt>ないぶ</rt></ruby>でじっくり<ruby>再検討<rt>さいけんとう</rt></ruby>された<ruby>後<rt>あと</rt></ruby>、<ruby>改<rt>あらた</rt></ruby>めてご<ruby>提案<rt>ていあん</rt></ruby><ruby>頂<rt>いただ</rt></ruby>けますでしょうか。」 <br/>*Bên em sau khi cân nhắc kỹ trong nội bộ, đề xuất lại giúp tôi được không.* |
| (商談後 Slack) **JP client → Dũng の上司** | 「Tuấn さん、 concession を 2 <ruby>回<rt>かい</rt></ruby><ruby>続<rt>つづ</rt></ruby>けて<ruby>下<rt>さ</rt></ruby>げました。 <ruby>弊社<rt>へいしゃ</rt></ruby> negotiate ratchet として **¥15M target で<ruby>社内<rt>しゃない</rt></ruby> anchor** が<ruby>動<rt>うご</rt></ruby>いてしまいました。」 <br/>*Anh Tuấn giảm liên tiếp 2 lần. Bên tôi ratchet trong đàm phán, anchor nội bộ đã dịch xuống mức ¥15M.* |

**Vì sao xấu:** (a) Một lần giảm 10% = tín hiệu "còn có thể xuống". JP kỳ vọng nhượng bộ chậm + có qua có lại, (b) Nhượng bộ 2 lần liên tiếp không có điều kiện đổi = neo giá nội bộ JP dịch xuống ¥15M, (c) 「やや高い」là tín hiệu gián tiếp JP với ý "muốn giải thích cụ thể", không phải yêu cầu giảm giá trực tiếp.

---

## Hội thoại TỐT — JP mode で運用 + Tuấn realtime coach
*2 秒 silence、 Tuấn に micro-eye signal "wait" · 具体化 · 頷き、 メモ*

| Vai | Câu |
|---------|-----|
| **JP client** | 「<ruby>価格<rt>かかく</rt></ruby> ¥20M はやや<ruby>高<rt>たか</rt></ruby>い<ruby>印象<rt>いんしょう</rt></ruby>がございます。」 <br/>*Giá ¥20M hơi tạo cảm giác cao ạ.* |
| **ズン** | 「ご<ruby>感想<rt>かんそう</rt></ruby>ありがとうございます。**『<ruby>高<rt>たか</rt></ruby>い』という<ruby>印象<rt>いんしょう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で、<ruby>特<rt>とく</rt></ruby>に<ruby>気<rt>き</rt></ruby>にされている<ruby>内訳要素<rt>うちわけようそ</rt></ruby>**【1】はございますでしょうか？AI engine <ruby>部分<rt>ぶぶん</rt></ruby>でしょうか、PM <ruby>体制<rt>たいせい</rt></ruby>でしょうか。」 <br/>*Em cảm ơn cảm nhận của anh ạ. Trong cảm nhận ''cao'' đó, có phần breakdown nào anh đặc biệt quan tâm không ạ? Phần AI engine hay phần cơ chế PM ạ?* |
| **JP client** | 「…AI engine <ruby>部分<rt>ぶぶん</rt></ruby>、 <ruby>御社<rt>おんしゃ</rt></ruby> Phase 2 <ruby>比<rt>ひ</rt></ruby> +30% の<ruby>理由<rt>りゆう</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>いたい。」 <br/>*Phần AI engine, anh muốn nghe lý do +30% so với Phase 2 bên em.* |
| **ズン** | 「Phase 2 <ruby>比<rt>ひ</rt></ruby> +30% の<ruby>内訳<rt>うちわけ</rt></ruby>: customer churn prediction model <ruby>追加<rt>ついか</rt></ruby>が +20%、SLA 99.5% → 99.95% upgrade が +10% です。**もしどちらかをスコープ<ruby>外<rt>がい</rt></ruby>にする trade なら**【2】、 ¥18M に<ruby>調整可能<rt>ちょうせいかのう</rt></ruby>でございます。」 <br/>*Cấu thành +30% so với Phase 2: thêm model customer churn prediction là +20%, nâng cấp SLA 99.5% → 99.95% là +10%. Nếu mình đánh đổi bằng cách đưa 1 trong 2 ra ngoài phạm vi thì có thể điều chỉnh xuống ¥18M ạ.* |
| **JP client** | 「なるほど、 churn prediction の<ruby>必要性<rt>ひつようせい</rt></ruby>は<ruby>社内<rt>しゃない</rt></ruby>で <ruby>議論余地<rt>ぎろんよち</rt></ruby>あり。**<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り**<ruby>社内検討<rt>しゃないけんとう</rt></ruby>します。」 <br/>*Hiểu rồi, mức độ cần thiết của churn prediction có dư địa thảo luận nội bộ. Anh mang về xem.* |
| (商談後 Slack Tuấn に) **ズン** | 「Tuấn、 JP は『<ruby>高<rt>たか</rt></ruby>い』 ≠ 『discount せよ』。 specific reason を indirect に asking している【3】。VN style で<ruby>即<rt>そく</rt></ruby> 10% <ruby>下<rt>さ</rt></ruby>げると ratchet <ruby>動<rt>うご</rt></ruby>く。next time も<ruby>同<rt>おな</rt></ruby>じ pattern で。」 <br/>*Tuấn, JP ''cao'' KHÔNG phải ''giảm đi''. Họ hỏi gián tiếp lý do cụ thể. Style VN giảm 10% phát thì ratchet xảy ra. Lần sau cùng mô hình này.* |
| **トゥアン** | 「<ruby>了解<rt>りょうかい</rt></ruby>。<ruby>沈黙<rt>ちんもく</rt></ruby> 2 <ruby>秒<rt>びょう</rt></ruby>で Dũng の signal <ruby>待<rt>ま</rt></ruby>つ pattern <ruby>学<rt>まな</rt></ruby>んだ。」 <br/>*Hiểu rồi. Anh học được mô hình ''im lặng 2 giây chờ tín hiệu Dũng''.* |

 **Ghi chú:**
- 【1】**Hỏi cụ thể từng mục "内訳要素"** = phân tách + định hình lại JP indirect 「高い」. Không giảm giá ngay mà khám phá thêm.
- 【2】**Nhượng bộ dạng đánh đổi** (「スコープを外せば ¥18M」) = mô hình có qua có lại kiểu JP. Giảm 1 lần lớn 1 chiều là phong cách VN.
- 【3】**JP「高い」 4 lớp diễn giải**: (i) thật sự thấy đắt (hiếm), (ii) muốn nghe giải thích từng mục (phổ biến nhất), (iii) muốn giải thích chênh lệch so với đối thủ, (iv) biểu đạt "chưa chắc" để giữ thể diện. Giảm giá trực tiếp chỉ đúng với (i).
- **Hướng dẫn Tuấn trực tiếp tại chỗ** = Dũng gửi tín hiệu mắt "đợi". Sau phiên trao đổi sâu hơn.

---

## Cụm từ mẫu
> **「JP『高い』≠『giảm giá』。先に phân tách từng mục + nhượng bộ dạng đánh đổi có qua có lại。VN 1 発 10% はNG。」**
>
> *JP ''cao'' không phải đề nghị giảm giá. Phải phân tách + nhượng bộ dạng đánh đổi. VN giảm 10% một phát = NG.*

---

## Tránh
- "では下げます" quyết ngay → hiệu ứng bánh cóc một chiều: vòng sau kỳ vọng giảm tiếp
- Nhượng bộ 2 lần liên tiếp không có điều kiện đổi → neo giá nội bộ dịch lớn
- 「やっぱり ¥18M で OK ですか？」hỏi chốt trực tiếp → lãnh đạo JP đánh giá "non nớt"
- Ngôn ngữ đe dọa kiểu VN ("đến giới hạn rồi") → JP đọc là tín hiệu quan hệ căng thẳng, tiêu cực
- Không hướng dẫn Tuấn / nhân sự trẻ trực tiếp tại chỗ → lỗi thành thói quen
- Ghi chú phong cách VN chia sẻ cho khách JP → không khớp tông giọng

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 直接 | ちょくせつ | TRỰC TIẾP | Trực tiếp |
| 間接 | かんせつ | GIÁN TIẾP | Gián tiếp |
| 内訳 | うちわけ | NỘI DỊCH | Cấu thành / breakdown |
| Có qua có lại | レシプロカル | — | Nhượng bộ kèm điều kiện đổi |
| Hiệu ứng bánh cóc | ラチェット効果 | HIỆU QUẢ | Giảm rồi khó tăng lại |
| Chuyển phong cách | コードスイッチ | — | Chuyển đổi giữa phong cách VN và JP |
| Phân tách gói | アンバンドル | — | Tách từng hạng mục ra |
| Hướng dẫn tại chỗ | リアルタイムコーチ | — | Hướng dẫn nhân sự trực tiếp trong phiên |', 'system', 44, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (870000045, 800000007, NULL, 'markdown_book', 'Rule 45 — Nhìn lại và cải thiện sau đàm phán / 振り返りと改善', '# Rule 45 — Nhìn lại và cải thiện sau đàm phán / 振り返りと改善
> **Luận điểm.** Sau MỖI vụ đàm phán (kể cả điểm rút lui), trong vòng **1 tuần** chạy nhìn lại: **(1) Cái gì hiệu quả**, **(2) Cái gì chưa tốt**, **(3) Giả định ngược** (nếu làm khác thì sao), **(4) Nhận diện xu hướng** (lặp lại từ vụ trước?), **(5) Cam kết lần sau**. Hương dẫn dắt buổi nhìn lại với Dũng + Tuấn. Bỏ qua = mỗi vụ học cùng bài 3-4 lần.
>
> 商談ごとに 1 週間以内 nhìn lại。「hiệu quả / chưa tốt / giả định ngược / xu hướng / cam kết lần sau」 5 phần。Hương が lead、 cam kết を文書化。
>
> **Liên quan:** rule 09 (kế hoạch nhượng bộ), rule 28 (撤退作法), rule 43 (leo thang), sách 04 rule 45 (vòng cải tiến).

---

## Bối cảnh / 場面
Phase 3 ¥17M ký xong, Phase 4 với khách mới cũng vừa kết thúc vòng 1. Hương sắp xếp buổi nhìn lại 1 giờ chiều thứ Sáu: Dũng + Tuấn + (Linh từ vụ phiên dịch Phase 4). Mẫu: 5 mục, tài liệu cam kết lưu vào team wiki.

---

## Hội thoại XẤU — không nhìn lại hoặc nhìn lại chung chung
*Phase 3 と同じ retro 学習なし · 青*

| Vai | Câu |
|---------|-----|
| (1 ヶ月後 Phase 5 <ruby>商談<rt>しょうだん</rt></ruby>、 同じ pattern) **大垣** | 「価格 ¥22M は<ruby>高<rt>たか</rt></ruby>い<ruby>印象<rt>いんしょう</rt></ruby>が…」 <br/>*Giá ¥22M tạo cảm giác cao...* |
| **ズン** | 「では ¥20M でいかがでしょうか…」 <br/>*Vậy ¥20M có được không ạ...* |
| (<ruby>商談後<rt>しょうだんご</rt></ruby> Hương) **フオン** | 「ズン、 Phase 3 で<ruby>学<rt>まな</rt></ruby>んだ 『高い』 ≠ 『discount』 のはずが、 また<ruby>直接<rt>ちょくせつ</rt></ruby> discount したね。**retro してないでしょ?**」 <br/>*Dũng, bài học ''cao không phải giảm giá'' học từ Phase 3 mà sao em lại giảm giá thẳng nữa. Em không làm nhìn lại đúng không?* |
| **ズン** | 「…してませんでした。」 <br/>*...em chưa làm ạ.* |

**Vì sao xấu:** Phase 3 で習得すべき lesson が retro なしで forget → Phase 5 で repeat。¥2M margin loss = exact same lesson. Retro 1 時間 vs ¥2M loss → 圧倒的 ROI.

---

## Hội thoại TỐT — 5-section retro + doc commit
*retro 開始、 5 セクション template 共有 · ① worked · ② didn''t · ② didn''t · ③ Counterfactual · ④ Pattern · ⑤ Next commit、 doc 化*

| Vai | Câu |
|---------|-----|
| **フオン** | 「Phase 3 + Phase 4 R1 nhìn lại 1 <ruby>時間<rt>じかん</rt></ruby>。テンプレ 5 phần【1】: ①Cái gì hiệu quả ②Chưa tốt ③Giả định ngược ④Xu hướng ⑤Cam kết lần sau。Dũng から start。」 <br/>*Nhìn lại Phase 3 + Phase 4 R1, 1 giờ. Mẫu 5 phần: ①Cái gì hiệu quả ②Chưa tốt ③Giả định ngược ④Xu hướng ⑤Cam kết lần sau. Dũng bắt đầu.* |
| **ズン** | 「Phase 3: BATNA 3 シナリオ + mail tóm tắt 24h + LOI → <ruby>本契約<rt>ほんけいやく</rt></ruby> 2 <ruby>段階<rt>だんかい</rt></ruby>で **tiến độ ổn định**。Phase 4 R1: JP「<ruby>高<rt>たか</rt></ruby>い」を phân tách で reframe <ruby>成功<rt>せいこう</rt></ruby>。」 <br/>*Phase 3: BATNA 3 kịch bản + mail tóm tắt 24h + LOI → hợp đồng 2 bước → tiến độ ổn định. Phase 4 R1: định hình lại JP ''cao'' bằng phân tách thành công.* |
| **ズン** | 「Phase 3: <ruby>中村<rt>なかむら</rt></ruby> CFO の bồi thường không giới hạn push に、<ruby>当初<rt>とうしょ</rt></ruby> 5 <ruby>秒<rt>びょう</rt></ruby> freeze した。Tốc độ nhận tín hiệu kích hoạt báo cấp trên <ruby>遅<rt>おそ</rt></ruby>い。Phase 4 R1: Tuấn の VN style giảm giá <ruby>即時<rt>そくじ</rt></ruby><ruby>止<rt>と</rt></ruby>められず、 tín hiệu chạy đến ghi chú khách hàng。」 <br/>*Phase 3: lúc Nakamura CFO push bồi thường không giới hạn, ban đầu em đứng hình 5 giây. Tốc độ nhận tín hiệu kích hoạt báo cấp trên chậm. Phase 4 R1: không kịp dừng kiểu giảm giá VN của Tuấn, tín hiệu chạy đến ghi chú khách hàng.* |
| **トゥアン** | 「<ruby>私<rt>わたし</rt></ruby>は VN style <ruby>自覚<rt>じかく</rt></ruby>なく 10% <ruby>下<rt>さ</rt></ruby>げた。Dũng の eye signal も 0.5 <ruby>秒<rt>びょう</rt></ruby> miss した。」 <br/>*Anh không tự nhận ra mình theo phong cách VN nên giảm 10%. Anh cũng bỏ lỡ tín hiệu mắt của Dũng 0.5 giây.* |
| **ズン** | 「**もし kích hoạt báo cấp trên checklist を in sẵn しておけば**【2】、bồi thường push に 2 <ruby>秒<rt>びょう</rt></ruby>で react できた。**もし trước họp で Tuấn と「JP は phân tách từng mục、giảm giá ngay NG」 dặn 1 <ruby>分<rt>ぷん</rt></ruby>**していれば、Phase 4 R1 hiệu ứng bánh cóc <ruby>防<rt>ふせ</rt></ruby>げた。」 <br/>*Nếu em in sẵn bảng kiểm tra kích hoạt báo cấp trên, có thể phản ứng trong 2 giây với yêu cầu bồi thường. Nếu trước họp dặn 1 phút với Tuấn ''JP phân tách từng mục, KHÔNG giảm giá ngay'', có thể ngăn hiệu ứng bánh cóc Phase 4 R1.* |
| **フオン** | 「xu hướng: **VN BD は nhượng bộ ngay に <ruby>流<rt>なが</rt></ruby>れがち**【3】。Phase 1 / 2 / 3 / 4 <ruby>全部<rt>ぜんぶ</rt></ruby>で<ruby>発生<rt>はっせい</rt></ruby>。これは<ruby>個人<rt>こじん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>ではなく thói quen văn hóa。team training で<ruby>習慣化<rt>しゅうかんか</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>。」 <br/>*Xu hướng: VN BD hay nhảy vào nhượng bộ ngay. Phase 1/2/3/4 đều xảy ra. Đây không phải lỗi cá nhân mà thói quen văn hóa. Cần đào tạo cả nhóm để hình thành thói quen.* |
| **ズン** | 「cam kết 3 つ【4】: (a) kích hoạt báo cấp trên checklist を thẻ bỏ túi <ruby>化<rt>か</rt></ruby>、 <ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby>まで。(b) JP <ruby>商談<rt>しょうだん</rt></ruby> trước họp の 1 <ruby>分<rt>ぷん</rt></ruby> dặn trước を bắt buộc <ruby>化<rt>か</rt></ruby>。(c) Phase 5 nhìn lại で a/b の<ruby>効果<rt>こうか</rt></ruby><ruby>測定<rt>そくてい</rt></ruby>。」 <br/>*3 cam kết: (a) Làm thẻ bỏ túi từ bảng kiểm tra kích hoạt báo cấp trên, hạn chót thứ Hai tuần sau. (b) Bắt buộc hóa nghi thức dặn 1 phút trước họp đàm phán JP. (c) Đo hiệu quả a/b ở buổi nhìn lại Phase 5.* |
| **フオン** | 「cam kết <ruby>文書化<rt>ぶんしょか</rt></ruby>、 team wiki に<ruby>保存<rt>ほぞん</rt></ruby>。**3 ヶ月後 nhìn lại tiếp theo でこの cam kết の mức tuân thủ <ruby>確認<rt>かくにん</rt></ruby>**【5】。お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>。」 <br/>*Tài liệu hóa cam kết, lưu vào wiki nhóm. 3 tháng sau buổi nhìn lại tiếp theo để kiểm tra mức tuân thủ các cam kết này. Mọi người vất vả rồi.* |

 **Ghi chú:**
- 【1】**Mẫu 5 phần cố định** = ngăn bỏ qua hoặc làm hời hợt. Giả định ngược là phần học được nhiều nhất.
- 【2】**Giả định ngược = 「もし〜していれば」** cụ thể hóa phương án thay thế. Không phải hối tiếc trừu tượng mà là hành động cụ thể lần sau.
- 【3】**Nhận diện xu hướng** = không chỉ 1 vụ mà nhìn xuyên suốt. Nếu phát hiện thói quen văn hóa → can thiệp cấp nhóm.
- 【4】**Tối đa 3 cam kết** — nhiều hơn thì không tuân thủ được, ít hơn thì không thay đổi.
- 【5】**Nhìn lại tiếp theo sau 3 tháng** = đo xem cam kết đã thành thói quen chưa. Không có bước này → cam kết chỉ là danh sách mong muốn.

---

## Cụm từ mẫu
> **「商談ごとに 1 週間以内 5 phần nhìn lại。3 cam kết + theo dõi 3 tháng = bài học → thói quen。skip = 同じミスを repeat。」**
>
> *Mỗi vụ trong 1 tuần làm nhìn lại 5 phần. 3 cam kết + theo dõi 3 tháng = bài học thành thói quen. Bỏ qua = lặp lỗi.*

---

## Tránh
- Bỏ buổi nhìn lại → lặp lỗi 3-4 vụ liên tiếp
- Cam kết chung chung 「次回 頑張ります」 → mức tuân thủ = 0
- Bỏ phần giả định ngược → bài học vẫn trừu tượng
- Liệt kê 10 cam kết → không thực hiện được cái nào, tối đa 3
- Không có buổi nhìn lại tiếp theo → cam kết chỉ là danh sách mong muốn
- Biến buổi nhìn lại thành đổ lỗi → mất an toàn tâm lý, không ai nói thật
- Không lưu tài liệu nhìn lại → 6 tháng sau không tra lại được, lặp lại buổi nhìn lại cũ

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 振り返り | ふりかえり | CHẤN PHẢN | Nhìn lại / buổi nhìn lại |
| Post-mortem | ポストモーテム | — | Phân tích sau sự kiện |
| Giả định ngược | カウンターファクチュアル | — | "Nếu làm khác thì sao?" |
| Xu hướng | パターン | — | Xu hướng / mô hình lặp lại |
| Cam kết | コミット | — | Cam kết cụ thể |
| Thẻ bỏ túi | ポケットカード | — | Thẻ nhỏ mang theo để nhắc |
| Mức tuân thủ | アドヒアレンス | — | Mức độ thực hiện cam kết |
| Hình thành thói quen | habit か | HÓA | Biến bài học thành thói quen |
| An toàn tâm lý | 心理的安全性 | TÂM LÝ ĐÍCH AN TOÀN TÍNH | Môi trường ai cũng dám nói thật |

---

## Mẫu', 'system', 45, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
