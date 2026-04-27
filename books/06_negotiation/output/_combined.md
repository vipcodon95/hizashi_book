---
title: "Hizashi — Đàm phán·Đề xuất / 商談・交渉 v1.1"
author: "Hizashi Teams"
date: "2026"
lang: vi
---

# Hizashi — Đàm phán·Đề xuất / 商談・交渉

*Hizashi Teams. 2026. Phiên bản 1.1.*

45 rules dạy đàm phán B2B với khách Nhật: BATNA/ZOPA, discovery, đàm phán giá+scope, closing+hợp đồng. Đặc thù JP: 稟議 (ringi) decision, silence as tool, concession reciprocity.

**Đối tượng:** BD/Account Manager VN đàm phán hợp đồng với khách Nhật. BJT J2-J1.

## Cấu trúc

| Phần | Tên | Số rule |
|------|-----|---------|
| I | Trước đàm phán (準備) | 9 |
| II | Mở đàm phán + Discovery | 8 |
| III | Đàm phán giá + scope | 12 |
| IV | Closing + Hợp đồng | 10 |
| V | Tình huống đặc biệt + Self-improve | 6 |

**Phụ lục:** A (script), B (vocab), C (BJT 45 câu), D (templates 7 mẫu).

## Cast nâng cấp

- **Ōgaki 営業部長** sharp negotiator chủ đạo (28 rules)
- **Nakamura CFO** join cho final pricing rounds quan trọng
- **Linh interpret learning** — rule 42

## ⚖️ Bản quyền

© 2026 Hizashi Teams.

---

*Bản 1.1 — 2026.*


---

# Phần I — Nền tảng trước nhấc máy / 受電前の基本姿勢

# Rule 01 — BATNA: Phương án thay thế tốt nhất / BATNA — 交渉決裂時の代替案

> **Luận điểm.** Vào đàm phán mà KHÔNG có **BATNA** (Best Alternative To Negotiated Agreement) = vào với 0 leverage. Khách Nhật cảm nhận được người không có "lựa chọn khác" qua tone giọng → push hard. Định nghĩa BATNA cụ thể TRƯỚC khi vào phòng đàm phán: con số, thời điểm, đối tác thay thế.
>
> 交渉に入る前に **BATNA**(交渉決裂時の代替案) を必ず数値化する。曖昧なBATNAを持って交渉に入ると、相手はこちらに代替案がないことを声色で察知し、攻めに転じる。
>
> **Liên quan:** rule 02 (ZOPA), rule 08 (walk-away point), rule 09 (concession plan).
> Sách 05 Rule 01 — checklist 7 câu.

---

## Bối cảnh / 場面

Tháng 5/2026, Phase 3 với 白鷗 vào round đàm phán giá lần 1. Anh Hà CTO giao Dũng + Tuấn pitch giá ¥18M cho Phase 3. Khách 大垣 sẽ counter — Dũng cần định nghĩa BATNA trước khi bước vào phòng. Sáng thứ Hai, Dũng đến văn phòng chị Hương xin tham vấn.

---

## ❌ Hội thoại XẤU — vào đàm phán không có BATNA

*Slack 9:00, hỏi Hương*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、明日 Phase 3 の価格交渉です。¥18M で出すんですが、もし大垣さんが下げてと言ったらどこまで下げますか？」 |
| **フオン** | 「BATNA は？」 |
| **ズン** | 「BATNA…えっと、まだ考えてないです。譲歩は¥17Mぐらいまでかなと…」 |
| **フオン** | 「**ダメ。BATNA がないなら、明日交渉に行かないで**。¥17M も曖昧で根拠がない。今夜中に BATNA 3 シナリオ書いて、明日朝レビューしよう。」 |

**Vì sao xấu:** Dũng vào đàm phán mà không có BATNA → không biết walk-away point. ¥17M chỉ là cảm giác, không có cơ sở. Khách Nhật sharp như 大垣 sẽ test → đẩy Dũng đến ¥15M dễ dàng. Hương từ chối let Dũng vào phòng — đây là correct mentor decision.

---

## ✅ Hội thoại TỐT — BATNA định nghĩa rõ + 3 scenario

*Slack 9:00 · file 開く*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、Phase 3 価格交渉の **BATNA 3 シナリオ**を作成しました【1】。レビューいただけますでしょうか？」 |
| **フオン** | 「シナリオA(成立): ¥18M、target、shake hand。シナリオB(再交渉): ¥16.5M + scope -10%、ハー CTO 承認済。シナリオC(walk-away): ¥15M 以下なら撤退、別案件 X 社の話進める。これは具体的でいいね。」 |
| **ズン** | 「シナリオB の根拠は、**Phase 2 同等スコープなら ¥16.5M で利益率 22% 維持可能**【2】、ハー CTO に確認済みです。シナリオC は **3月にX社から ¥17M の MoU 受領** が走っているので、こちらに切り替え可能です【3】。」 |
| **フオン** | 「完璧。明日大垣さんが ¥15M 以下を出してきたら、シナリオ C を堂々と提示。『弊社にも他のオプションがある』ことを声に出さなくても tone で伝わる。それが BATNA の力。」 |

📝 **Ghi chú:**
- 【1】**「BATNA 3 シナリオ」** — A (deal as-is), B (counter-offer prepared), C (walk-away). Mỗi scenario phải có **con số + điều kiện + người đã approve**.
- 【2】**シナリオB phải có internal financial validation** — không chỉ "cảm giác". Profit margin maintained ≥ 20% là internal threshold.
- 【3】**シナリオC walk-away cần real alternative** — không phải bluff. X 社 MoU thật → Dũng vào phòng với confidence.

---

## 🎯 Câu chốt

> **「BATNAなしで交渉に入らない。3シナリオ(成立／再交渉／撤退)を数値で持つ。」**
>
> *Không vào đàm phán khi chưa có BATNA. 3 scenario (deal / counter / walk-away) phải có con số.*

---

## ⚠ Tránh

- BATNA mơ hồ ("nếu không thì cũng OK") → khách Nhật sharp đọc được trong 5 phút
- Không có scenario C (walk-away real) → mọi concession của bạn = bottomless
- BATNA không có internal approval → đến giờ G phát hiện scenario B vượt quyền
- Nói trực tiếp "我々には他のオプションがあります" → JP business kỵ threat-talk; thay bằng tone confidence (sound trong giọng) + body language

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| BATNA | batna | Best Alternative To Negotiated Agreement |
| 撤退 | てったい | Rút lui / walk away |
| 譲歩 | じょうほ | Nhượng bộ / concession |
| 利益率 | りえきりつ | Profit margin |
| 内部承認 | ないぶしょうにん | Internal approval |
| シナリオ | shinario | Scenario |
| MoU | em-o-yū | Memorandum of Understanding |


# Rule 02 — ZOPA: Vùng có thể thỏa thuận / ZOPA — 合意可能領域

> **Luận điểm.** **ZOPA** (Zone Of Possible Agreement) là khoảng giao giữa "reservation price" của bên mình và "reservation price" của khách. Nếu hai khoảng KHÔNG giao nhau → no-deal. Trước đàm phán phải ước lượng cả 4 con số: *target* + *reservation* của mình, *budget ceiling* + *budget floor* của khách.
>
> 交渉に入る前に、自社の **目標価格・撤退価格** だけでなく相手の **予算上限・最低期待品質** も推定し、**ZOPA**(合意可能領域) が存在するか確認する。ZOPAがゼロなら、その日の交渉は成立しない。
>
> **Liên quan:** rule 01 (BATNA), rule 08 (walk-away), rule 18 (anchoring).

---

## Bối cảnh / 場面

Sau khi review BATNA xong (rule 01), Hương yêu cầu Dũng thêm **ZOPA mapping** — ước lượng budget ceiling của 白鷗 dựa trên Phase 2 actual + intel từ Tanaka PMO. Dũng vào meeting room nhỏ với Hương sáng thứ Ba.

---

## ❌ Hội thoại XẤU — chỉ tính giá phía mình, không estimate phía khách

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、目標 ¥18M、撤退 ¥15M で行きます。」 |
| **フオン** | 「相手の予算上限は？」 |
| **ズン** | 「分かりません。とりあえず ¥18M 出して反応見ます。」 |
| **フオン** | 「それは博打。¥18M が相手上限 ¥16M を超えていたら、その時点で ZOPA ゼロ。**こっちが anchor を出す前に、相手の budget 帯を推定して。**」 |

**Vì sao xấu:** Chỉ tính một phía → không biết ZOPA có tồn tại hay không. Nếu khách budget ceiling là ¥16M mà mình anchor ¥18M, có thể bị walk-away ngay từ đầu hoặc bị ép giảm sâu. "Reaction を見る" là cách lười, không có data.

---

## ✅ Hội thoại TỐT — ZOPA mapping 4 số + cross-check intel

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、ZOPA マッピングを作りました【1】。弊社 target ¥18M、reservation ¥15M。白鷗側は推定 budget ceiling ¥17M、最低期待品質ライン Phase 2 同等以上。」 |
| **フオン** | 「¥17M の根拠は？」 |
| **ズン** | 「Phase 2 が ¥14.5M でクローズ、白鷗 IT 部の年度予算は前年比 +15% と田中さんが Slack で漏らしていました【2】。14.5 × 1.15 ≒ ¥16.7M、切り上げて ¥17M です。」 |
| **フオン** | 「ZOPA は ¥15M〜¥17M の幅 2M ある。target ¥18M は ZOPA 上限を超えてるけど、anchor として出すには適切。**着地点は ¥16.5M 前後と想定して、譲歩計画(rule 09)に反映**して。」 |

📝 **Ghi chú:**
- 【1】**ZOPA マッピング = 4 con số:** mình *target* + *reservation*, khách *ceiling* + *floor*. Vẽ trên 1 trục, kiểm tra có giao nhau không.
- 【2】**Intel khách phải có nguồn cụ thể** — ai nói, ở đâu (Slack/họp/website), khi nào. Tránh "tôi đoán" thuần.
- Anchor giá có thể **vượt ZOPA ceiling một chút** (target ¥18M > ¥17M) — đây là chủ ý để có dư địa nhượng bộ. Nhưng nếu vượt quá xa → khách offended, walk-away.

---

## 🎯 Câu chốt

> **「自社2点+相手2点=ZOPA 4数値。ZOPAゼロなら今日は交渉成立しない。」**
>
> *Mình 2 số + khách 2 số = ZOPA 4 con số. Nếu ZOPA = 0 thì hôm nay không có deal.*

---

## ⚠ Tránh

- Chỉ tính giá phía mình, bỏ qua estimate phía khách → vào phòng mù
- Estimate khách dựa trên "linh cảm" thay vì intel cụ thể (Slack, Phase trước, IR report)
- Quên kiểm tra **floor** khách (chất lượng tối thiểu) — nhiều deal vỡ vì scope chứ không phải giá
- Anchor vượt ZOPA ceiling quá xa (>20%) → khách cảm thấy bị xúc phạm

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ZOPA | zopa | Zone Of Possible Agreement |
| 合意可能領域 | ごういかのうりょういき | Vùng có thể thỏa thuận |
| 目標価格 | もくひょうかかく | Target price |
| 撤退価格 | てったいかかく | Reservation / walk-away price |
| 予算上限 | よさんじょうげん | Budget ceiling |
| 着地点 | ちゃくちてん | Landing point / điểm chốt |
| アンカー | ankā | Anchor (giá mở) |


# Rule 03 — Hiểu phong cách quyết định ringi (稟議) / 稟議の理解

> **Luận điểm.** Khách Nhật KHÔNG quyết định trong 1 cuộc họp. Quy trình là: **nemawashi (根回し — đi gặp riêng từng key person trước)** → **ringi (稟議書 — văn bản chuyền tay)** → **決裁 (kessai — sếp đóng dấu cuối)**. Push for "decision today" với khách Nhật = self-sabotage.
>
> 日本企業の意思決定は「根回し → 稟議 → 決裁」の3段階。会議当日に即決を求めるのは逆効果。BD は **稟議が回る期間 (通常 2-3 週間)** を見込んだ提案スケジュールを組む。
>
> **Liên quan:** rule 04 (intel khách), rule 13 (lắng nghe constraints), rule 17 (time-box).

---

## Bối cảnh / 場面

Trong meeting nội bộ ティエンファット, Tuấn lo lắng vì sau pitch round 1 đã 10 ngày mà 大垣 chưa phản hồi. Tuấn muốn Dũng "push" ngay. Hương dạy lại quy trình ringi.

---

## ❌ Hội thoại XẤU — push 即決

*横から*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、もう10日経ってる。今日大垣さんに『今週中にイエスかノーか決めてください』ってメール送ろうよ。」 |
| **ズン** | 「そうですね、待ってばかりだとうちが弱く見えるかも…」 |
| **フオン** | 「**待って。それ送ったら deal 死ぬ**。10 日は稟議が回ってる normal な期間。『今週中に決めろ』は日本企業に対して **タブー**。逆に『稟議の進捗を伺ってもよろしいでしょうか』なら OK。」 |
| **トゥアン** | 「えっ、待つしかないんですか？」 |
| **フオン** | 「待つんじゃなくて、**進捗を聞く** + **追加情報を渡して稟議書を強くする**手伝いをする。決めるのは相手の社内プロセス。」 |

**Vì sao xấu:** "今週中に決めて" = đặt deadline vào quy trình nội bộ của khách → bất lịch sự + tự nhận yếu thế ("đang vội"). 10 ngày chỉ là middle of ringi cycle. Tuấn không hiểu mechanism → suýt giết deal.

---

## ✅ Hội thoại TỐT — hiểu ringi cycle, support nemawashi

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、10 日経つけど、もう少し待つ感じ？」 |
| **ズン** | 「はい、稟議は通常 2-3 週間【1】。先週松本 PM から『社内で議論中』とメッセージあったので、今は **根回しフェーズ**【2】と推定します。」 |
| **フオン** | 「いいね。今やるべきは『追加 ROI 資料』と『FAQ 集』を作って松本さんに渡す。彼が稟議書に添付できる材料を増やす【3】。」 |
| **ズン** | 「了解です。明日松本さんに『稟議のご検討にあたり、何か追加情報必要でしたらお声がけください』とメールします。**催促ではなく support 姿勢**で。」 |
| **フオン** | 「正解。決めるのは大垣さんでも松本さんでもなく、**社内合意の総和**。我々はそれを助ける。」 |

📝 **Ghi chú:**
- 【1】**Ringi cycle 2-3 週間 normal** —契約金額が大きいほど長い (¥18M なら 3-4 週). 1 週で返ってきたら逆に「真剣に検討してない」サイン.
- 【2】**根回し (nemawashi)** = đi gặp riêng từng key person trước khi văn bản chính thức (ringi-sho) chuyền tay. Đây là không chính thức nhưng quyết định chính.
- 【3】**Support nemawashi** = đưa cho contact (Matsumoto) tài liệu/argument để họ nói với key persons khác. KHÔNG phải gọi điện hối thúc.

---

## 🎯 Câu chốt

> **「稟議は2-3週、催促ではなく材料を渡して支援する。」**
>
> *Ringi 2-3 tuần, không hối thúc — đưa thêm material để support quy trình của khách.*

---

## ⚠ Tránh

- "今週中に決めて" / "deadline 設定します" → tự kill deal
- Gọi điện 連日 hỏi "どうですか？" → bị xem là 焦り
- Bỏ contact (Matsumoto) ra khỏi loop, trực tiếp ping 大垣 → phá vỡ giao thức nội bộ khách
- Đoán bừa "chắc bị reject rồi" sau 10 ngày → sai 90% trường hợp

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 稟議 | りんぎ | Ringi (văn bản chuyền tay xin duyệt) |
| 稟議書 | りんぎしょ | Tài liệu ringi |
| 根回し | ねまわし | Nemawashi (vận động ngầm trước họp) |
| 決裁 | けっさい | Sếp ký duyệt cuối |
| 即決 | そっけつ | Quyết định ngay |
| 催促 | さいそく | Hối thúc, đòi |
| 進捗 | しんちょく | Tiến độ |


# Rule 04 — Thu thập intel khách / 顧客リサーチ

> **Luận điểm.** Trước đàm phán phải biết: **(1) Decision-makers** (決裁ライン), **(2) Budget cycle** (年度予算 4-3月), **(3) Competitor presence** (đối thủ nào cũng pitch), **(4) Recent business news** (IR, M&A, layoffs). Thiếu 1 trong 4 = bước vào phòng mù 25%.
>
> 交渉前に4軸 (決裁者・予算サイクル・競合・直近業績) を必ず調査する。一つでも欠けると譲歩判断を誤る。
>
> **Liên quan:** rule 02 (ZOPA), rule 16 (確認決裁者), rule 13 (constraints).

---

## Bối cảnh / 場面

3 ngày trước đàm phán Phase 3. Hương kiểm tra Dũng đã chuẩn bị intel chưa. Dũng tự tin "đã biết khách 2 năm rồi", nhưng Hương đẩy thêm 4 câu hỏi.

---

## ❌ Hội thoại XẤU — "đã biết khách rồi"

| Speaker | Câu |
|---------|-----|
| **フオン** | 「白鷗の今期 IR、見た？」 |
| **ズン** | 「IR…まだです。Phase 2 は私が担当だったので白鷗のことは知ってます。」 |
| **フオン** | 「Phase 2 担当 ≠ 今の白鷗を知ってる、じゃない。**先月 IR で営業利益 -12%、コスト圧縮中**って公表されてる。これ知らずに ¥18M 出すと『高い』って言われる準備不足。」 |
| **ズン** | 「あ、すみません…」 |

**Vì sao xấu:** "Đã biết khách 2 năm" = quá khứ. Khách là tổ chức sống, IR/M&A/layoff thay đổi context mỗi quý. Dũng không cập nhật → vào phòng với mental model lệch 6 tháng.

---

## ✅ Hội thoại TỐT — 4-axis intel sheet

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、白鷗の **4軸インテルシート**【1】を更新しました。」 |
| **フオン** | 「読み上げて。」 |
| **ズン** | 「(1) 決裁ライン: ¥10M 超は中村 CFO 決裁、それ以下は大垣部長権限【2】。今回 ¥18M なので CFO 通る。(2) 予算サイクル: 白鷗は 4月-3月、現在 4 月初旬で **新年度 IT 予算は通ったばかり**【3】、追加要求しやすい時期。(3) 競合: 大手 SIer Y 社がパラレルに pitch 中、見積 ¥22M との噂【4】。(4) 直近業績: 先月 IR で営業利益 -12%、コスト圧縮トーンが強い。」 |
| **フオン** | 「いいね。これで戦略決まる。**Y 社 ¥22M との対比で『品質同等で安い』を強調**、CFO に響く ROI 数値を全面に。利益 -12% への配慮として『段階導入で初期投資抑制可能』も用意して。」 |

📝 **Ghi chú:**
- 【1】**4 軸インテルシート** = (1) 決裁ライン、(2) 予算サイクル、(3) 競合、(4) 直近業績。各軸ソース付きで管理.
- 【2】**決裁権限の閾値** — biết được giúp đoán scenario approval. ¥10M là threshold thường gặp ở mid-cap JP.
- 【3】**Budget cycle JP**: thường 4月-3月. Q1 (4-6月) = budget mới, dễ propose; Q4 (1-3月) = closeout, hạn chế.
- 【4】**Competitor intel cần source** — "tin đồn" cũng được nhưng phải ghi rõ là rumor + ai nói.

---

## 🎯 Câu chốt

> **「決裁・予算・競合・業績の4軸を全てupdate。「過去に知っていた」は無効。」**
>
> *4 trục: người duyệt / chu kỳ ngân sách / đối thủ / kết quả gần đây — đều phải update. "Biết hồi xưa" không tính.*

---

## ⚠ Tránh

- "Tôi đã làm với khách 2 năm rồi nên biết" → quá khứ ≠ hiện tại
- Bỏ qua IR công khai (publicly available) — đây là free intel
- Không xác định decision-maker threshold (¥X trở lên thì ai duyệt)
- Coi competitor intel là "nice to have" — thực ra là core của định giá

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 決裁ライン | けっさいライン | Đường duyệt / decision-maker line |
| 予算サイクル | よさんサイクル | Chu kỳ ngân sách |
| 直近業績 | ちょっきんぎょうせき | Kết quả kinh doanh gần đây |
| 営業利益 | えいぎょうりえき | Lợi nhuận hoạt động |
| コスト圧縮 | コストあっしゅく | Cắt giảm chi phí |
| 段階導入 | だんかいどうにゅう | Triển khai theo giai đoạn |
| インテル | interu | Intel (intelligence) |


# Rule 05 — Định giá strategy / 価格戦略

> **Luận điểm.** Có 3 cách đặt giá: **(1) Cost-plus** (原価+利益率) — an toàn nhưng rẻ phía mình, **(2) Value-based** (giá trị khách nhận về) — cao nhất nhưng cần chứng minh ROI, **(3) Anchoring** (đặt cao trước, để khách kéo xuống). Chọn sai mô hình → hoặc bỏ tiền trên bàn, hoặc bị walk-away.
>
> 価格戦略は3種から選ぶ: cost-plus / value-based / anchoring。商談相手と案件性質に合わせて使い分ける。Phase 3 のような戦略案件は **value-based + anchoring** が標準。
>
> **Liên quan:** rule 02 (ZOPA), rule 06 (3-tier), rule 18 (anchoring 判断), rule 23 (ROI).

---

## Bối cảnh / 場面

Hà CTO + Hương + Dũng họp 30 phút quyết mô hình giá Phase 3. Tuấn cũng tham gia để confirm chi phí. Dũng đề xuất cost-plus đơn thuần.

---

## ❌ Hội thoại XẤU — chọn cost-plus thuần cho deal chiến lược

| Speaker | Câu |
|---------|-----|
| **ズン** | 「原価 ¥13M、利益率 25% 上乗せで ¥16.25M、切り上げ ¥16.5M で出します。」 |
| **ハー CTO** | 「Phase 3 は新機能 AI レコメンドエンジン込み、白鷗の売上 +¥80M/年見込めるんでしょ？それを ¥16.5M で売る？」 |
| **ズン** | 「えっと、原価ベースだとそれが妥当かと…」 |
| **ハー CTO** | 「**Value-based で考えて**。¥80M インパクトの 20% = ¥16M 程度なら value 的にお買い得感もあるけど、¥18-22M でも妥当。cost-plus は商品案件用、戦略案件には適さない。」 |

**Vì sao xấu:** Cost-plus chỉ phản ánh chi phí mình, KHÔNG phản ánh giá trị khách nhận. Phase 3 có AI engine = strategic, value cao → đáng giá ¥18-22M chứ không phải ¥16.5M. Bỏ ¥2-5M tiền trên bàn.

---

## ✅ Hội thoại TỐT — value-based + anchoring kết hợp

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Phase 3 価格戦略案、3 つ比較しました【1】。」 |
| **ズン** | 「Cost-plus: ¥16.5M。Value-based: 白鷗売上 +¥80M インパクト × 20% = ¥16M、+リスクシェア込みで ¥19M。Anchoring 起点 ¥22M (Y 社水準)、譲歩で ¥18M 着地想定。**推奨は value-based ¥19M を anchor、target ¥18M、reservation ¥15M**【2】。」 |
| **ハー CTO** | 「ROI 説明はできる？」 |
| **ズン** | 「はい。AI レコメンド導入で transaction 単価 +12%、white paper でモデルケース 3 社あります。CFO 中村さんへの ROI シート【3】も作成済みです。」 |
| **フオン** | 「いいね。¥19M を堂々と出して、value で押す。¥18M に着地しても粗利率 26%、許容範囲。」 |

📝 **Ghi chú:**
- 【1】**3 mô hình so sánh**: 必ず benchmark cả 3, không jump straight vào 1 cái.
- 【2】**Anchor > Target > Reservation** = 3 con số riêng biệt. Anchor = số mở miệng (cao), Target = số mong đạt, Reservation = walk-away.
- 【3】**ROI シート** cho CFO = key conversion tool khi value-based. Không có ROI → value-based về bản chất là "anh tin tôi đi" → khó approve.

---

## 🎯 Câu chốt

> **「Cost-plusは商品向け、戦略案件はvalue-based+anchoring。3モデル比較してから選ぶ。」**
>
> *Cost-plus cho commodity, deal chiến lược dùng value-based + anchoring. So 3 mô hình rồi chọn.*

---

## ⚠ Tránh

- Mặc định cost-plus cho mọi deal → bỏ tiền trên bàn ở deal chiến lược
- Anchor giá trên trời mà không có ROI backup → khách walk
- Quên validate粗利率 floor (vd: 20%) khi tính reservation
- Không có whitepaper / case study → value-based khó thuyết phục CFO Nhật

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 原価 | げんか | Giá vốn / cost |
| 利益率 | りえきりつ | Tỷ suất lợi nhuận |
| 粗利率 | あらりりつ | Gross margin |
| 価値ベース | かちベース | Value-based |
| 戦略案件 | せんりゃくあんけん | Deal chiến lược |
| 商品案件 | しょうひんあんけん | Commodity deal |
| アンカー | ankā | Anchor (giá mở) |
| インパクト | impakuto | Impact (tác động) |


# Rule 06 — 3-tier proposal: Good / Better / Best / 3段階提案

> **Luận điểm.** Đưa **1 giá duy nhất** = khách bị bắt yes/no. Đưa **3 tier (Good / Better / Best)** = khách compare nội bộ → choice architecture nghiêng về Better (decoy effect). 95% khách Nhật sẽ chọn middle tier nếu cấu trúc đúng.
>
> 1価格提示は yes/no を迫る。3段階提案 (Good/Better/Best) は社内比較を促し、**中間案 (Better) が選ばれる確率を高める**。Phase 3 のような戦略案件は必ず 3 段階で出す。
>
> **Liên quan:** rule 05 (価格戦略), rule 19 (価格提示フレーズ), rule 21 (scope削り).

---

## Bối cảnh / 場面

Họp với Hà CTO + Hương + Tuấn xong, Dũng cần soạn proposal deck. Hương yêu cầu bắt buộc 3-tier. Dũng làm draft đầu, gửi review.

---

## ❌ Hội thoại XẤU — 1 tier duy nhất

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、提案 deck draft、価格 ¥18M で1 案にまとめました。」 |
| **フオン** | 「1 案だけ？大垣さんは社内で比較できないし、yes か no しかなくなる。**no が出たら戻れない**。3 段階で作り直して。」 |
| **ズン** | 「3 段階だと安い方を選ばれませんか？」 |
| **フオン** | 「**逆。中間案を一番魅力的に設計**すれば、Better が選ばれる。Good は機能削減で『これじゃ意味ない』感、Best は scope 拡張で『高すぎる』感を出す。これ choice architecture。」 |

**Vì sao xấu:** 1 tier = forced binary. Khách không có chỗ "thoả hiệp lịch sự" trong nội bộ ringi → reject probability tăng. Mất cơ hội định khung Better làm "perceived best value".

---

## ✅ Hội thoại TỐT — 3-tier deck với Better làm trung tâm

| Speaker | Câu |
|---------|-----|
| **ズン** | 「3 段階提案を作成しました。Good ¥14M / Better ¥18M / Best ¥24M。**Better を recommended 表示**【1】、Good は AI engine なし basic 版、Best は専任 SRE 含む full 版です。」 |
| **フオン** | 「Good の機能削減は？」 |
| **ズン** | 「Good は AI レコメンドなし、SLA 99.5% (Better は 99.9%)、サポート営業時間のみ【2】。白鷗の Phase 3 目的『売上 +¥80M』には実質届かない設計。」 |
| **フオン** | 「Best は？」 |
| **ズン** | 「Best は専任 SRE 1 名常駐、SLA 99.99%、24/7 サポート、優先機能開発【3】。CFO 中村さんの『コスト圧縮』トーンに照らすと『出しすぎ』感を出す設計です。」 |
| **フオン** | 「完璧。**Better が『現実解』に見える構造**。明日のキックオフで使おう。」 |

📝 **Ghi chú:**
- 【1】**Recommended 表示** — chữ "おすすめ"/"推奨" trên Better tile, nghiên cứu UX cho thấy +35% conversion.
- 【2】**Good intentional weakness** — KHÔNG phải Good là "rẻ và OK", phải là "rẻ nhưng thiếu cái khách cần" → khách tự loại.
- 【3】**Best intentional excess** — overspec để Better thành "vừa phải". Best vẫn phải là deal nếu khách chọn (không phải fake option).

---

## 🎯 Câu chốt

> **「Good/Better/Best の3段階で、中間案を最も魅力的に設計する。」**
>
> *3 tier Good/Better/Best, design Better đẹp nhất.*

---

## ⚠ Tránh

- 3 tier mà tier giữa không hấp dẫn → khách chọn Good (giá thấp, lose money)
- Best phi thực tế đến mức khách cười → mất uy tín
- Quên mark "Recommended" / "おすすめ" trên Better → mất 30%+ effect
- Đặt giá gap đều (vd: ¥14M / ¥18M / ¥22M cách đều ¥4M) → không tận dụng decoy. Gap không đều giúp Better nổi bật hơn.

---

## 📐 Template — 3-tier Proposal Sheet

(xem conversation.json field `templates` → `rule_06_tpl_01` cho full format)

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 3段階提案 | さんだんかいていあん | 3-tier proposal |
| 推奨 / おすすめ | すいしょう | Recommended |
| 中間案 | ちゅうかんあん | Phương án giữa |
| 専任 | せんにん | Chuyên trách / dedicated |
| 常駐 | じょうちゅう | Túc trực / on-site |
| 機能削減 | きのうさくげん | Cắt giảm chức năng |
| 比較表 | ひかくひょう | Bảng so sánh |


# Rule 07 — Pre-meeting alignment nội bộ / 事前社内すり合わせ

> **Luận điểm.** Trước khi đối diện khách, **internal team phải align 100%**: ai nói gì, ai im khi nào, walk-away được approve, concession ladder thống nhất. Khách Nhật phát hiện disagreement nội bộ trong 5 phút → leverage để chia rẽ.
>
> 商談前の社内すり合わせは『誰が何を言う・誰がいつ黙る・撤退ライン承認・譲歩順序』を全員一致させる作業。社内の不一致を相手に見られたら leverage 取られる。
>
> **Liên quan:** sách 04 全般, rule 01 (BATNA), rule 09 (concession plan).

---

## Bối cảnh / 場面

Sáng đàm phán Phase 3 lúc 9:00, đàm phán 14:00 với 大垣 + 中村 CFO. Hà CTO + Hương + Tuấn + Dũng họp 60 phút align cuối.

---

## ❌ Hội thoại XẤU — không align trước, mâu thuẫn trong phòng

| | Speaker | Câu (in-meeting với khách) |
|--|---------|-----|
| **L1** | **大垣** | 「¥18M は高いですね。¥15M でいかがでしょう？」 |
| **L2** | **ズン** | 「¥15M ですか…ちょっと持ち帰り…」 |
| **L3** | **トゥアン** *(口を挟む)* | 「¥16M なら出せますよ、scope 削れば。」 |
| **L4** | **大垣** *(微笑)* | 「あ、トゥアンさんは ¥16M でいけるんですね。じゃあそれでお願いします。」 |
| **L5** | **ズン** *(顔色変)* | 「いえ、ちょっと…社内確認を…」 |

**Vì sao xấu:** Tuấn không biết walk-away ¥15M, không biết concession ladder. Tự ý quote ¥16M trong phòng → 大垣 chốt ngay. Dũng mất control. Phải align trước: **Tuấn KHÔNG được quote giá**, chỉ Dũng quote, Tuấn answer technical.

---

## ✅ Hội thoại TỐT — pre-meeting alignment 60 phút

| | Speaker | Câu (in-meeting nội bộ 9:00) |
|--|---------|-----|
| **L1** | **フオン** | 「14:00 商談、最終すり合わせ。**役割確認**【1】: ズン主導 + 価格発言担当、トゥアンさん技術質問のみ、ハー CTO は escalation 必要時のみ発言。」 |
| **L2** | **ハー CTO** | 「価格発言は誰がしてもいけない。ズン以外は『社内確認させてください』で受ける。」 |
| **L3** | **ズン** | 「了解です。**譲歩順序**【2】も再確認:【ステップ1】¥19M anchor → 反応見る、【ステップ2】¥18M target、【ステップ3】¥17M with scope -10%、【ステップ4】¥16M with scope -20% + extra trade、**¥15M 以下は持ち帰り、その場で yes 言わない**。」 |
| **L4** | **フオン** | 「¥15M 以下出てきたら、ハー CTO に振る。『弊社 CTO に確認させてください』で時間取る【3】。」 |
| **L5** | **トゥアン** | 「私は技術以外、絶対黙ります。」 |
| **L6** | **ズン** | 「最後、**沈黙の合図**【4】: 私が右手を膝に置いたら全員黙って 7 秒待つ。OK?」 |
| **L7** | **全員** | 「OK。」 |

📝 **Ghi chú:**
- 【1】**役割確認** = ai nói gì + ai im khi nào. Tránh "everyone can speak" — đó là disaster.
- 【2】**譲歩順序** = ladder cụ thể, mỗi nấc có condition + trade. KHÔNG phải "giảm dần".
- 【3】**Escalation phrase** "弊社 CTO に確認させてください" — câu trống dùng để mua thời gian, đã agree trước.
- 【4】**Sinh hiệu im lặng** = signal vật lý (tay/bút) để team biết "lúc này im, đừng cứu vớt". Cực quan trọng.

---

## 🎯 Câu chốt

> **「役割・譲歩順・撤退ライン・沈黙合図、4点を社内で100%一致させてから入室。」**
>
> *Vai trò / thứ tự nhượng bộ / walk-away / signal im lặng — 4 điểm align 100% trước khi vào phòng.*

---

## ⚠ Tránh

- "Improvise trong phòng cũng được" → 大垣 sharp đọc được trong 3 phút
- Tuấn (technical) quote giá → mất control vĩnh viễn
- Quên thống nhất escalation phrase → khách hỏi khó, mỗi người trả lời khác
- Không có physical signal → trong phòng không thể "ssh" miệng nhau

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| すり合わせ | すりあわせ | Align / pre-meeting alignment |
| 役割確認 | やくわりかくにん | Xác nhận vai trò |
| 譲歩順序 | じょうほじゅんじょ | Thứ tự nhượng bộ |
| 撤退ライン | てったいライン | Walk-away line |
| エスカレーション | esukarēshon | Escalation |
| 沈黙の合図 | ちんもくのあいず | Signal im lặng |
| 一致させる | いっちさせる | Đồng nhất |


# Rule 08 — Walk-away point / 撤退ライン

> **Luận điểm.** **Walk-away** = list cứng các điều kiện "nếu vi phạm, bỏ deal". Khác BATNA (alternative): walk-away là **ranking đỏ tuyệt đối** (giá / scope / IP / SLA / payment terms). Phải được CTO + Hương ký xác nhận trước khi đàm phán.
>
> 撤退ラインは「これを破られたら deal 不可」の絶対条件リスト。価格だけでなく scope・IP・SLA・支払条件 も含む。CTO+Hương の事前承認が必須。
>
> **Liên quan:** rule 01 (BATNA), rule 07 (alignment), rule 28 (撤退の作法).

---

## Bối cảnh / 場面

Sáng đàm phán Phase 3, sau alignment meeting. Hà CTO yêu cầu Dũng đọc lại walk-away list để confirm. Dũng chỉ nhớ giá, quên 3 điều kiện khác.

---

## ❌ Hội thoại XẤU — walk-away chỉ có giá

| Speaker | Câu |
|---------|-----|
| **ハー CTO** | 「ズン、撤退ライン全部読み上げて。」 |
| **ズン** | 「¥15M 以下です。」 |
| **ハー CTO** | 「それだけ？IP は？SLA は？支払 net 30 か net 60 か？大垣さんが『価格 ¥18M でも、IP は白鷗側 100%』と言い出したらどうする？」 |
| **ズン** | 「えっ、それは…考えてなかったです。」 |
| **ハー CTO** | 「**価格は撤退ラインの 1 軸でしかない**。今すぐ 5 軸書き出せ。書けないなら今日は出ない。」 |

**Vì sao xấu:** Walk-away thường nghĩ chỉ là giá. Nhưng IP / SLA / payment / liability cap có thể destroy deal nhiều hơn giá. 大垣 sharp sẽ test walk-away ở 1 trong 5 trục, Dũng không có ranking đỏ → conceded sai chỗ.

---

## ✅ Hội thoại TỐT — walk-away 5 軸 với approval

| Speaker | Câu |
|---------|-----|
| **ハー CTO** | 「ズン、撤退ライン全部読み上げて。」 |
| **ズン** | 「**5 軸読み上げます**【1】。(1) **価格**: ¥15M 未満は撤退。(2) **IP**: ベース技術の所有権は弊社、white-label OK だが core IP 譲渡は撤退条件。(3) **SLA**: 99.5% 以下は受けない、その下は罰則賠償リスクが粗利を超える。(4) **支払**: net 60 まで OK、net 90 以上は撤退。(5) **責任上限**: 契約金額の 100% 超えは撤退【2】。」 |
| **ハー CTO** | 「IP の white-label と core IP の境界は？」 |
| **ズン** | 「白鷗向けカスタマイズ部分は white-label OK。AI レコメンドエンジン本体・モデルパラメータは core IP として留保【3】。これフオン副部長 + ハー CTO 両者承認済みです (Slack 昨日)。」 |
| **ハー CTO** | 「OK、5 軸どれか破られたら『弊社 CTO に確認させてください』で持ち帰り。その場で yes は絶対言わない。」 |

📝 **Ghi chú:**
- 【1】**5 軸 walk-away** — 価格 / IP / SLA / 支払 / 責任上限. Một số vụ thêm: 競業避止、再委託禁止 etc.
- 【2】**責任上限 (liability cap)** — thường = 契約金額の 100%. Khách JP đôi khi đòi unlimited → walk-away ngay.
- 【3】**Core IP vs white-label** — định nghĩa rõ ranh giới. AI engine bản thể vs customization layer.

---

## 🎯 Câu chốt

> **「撤退ラインは価格1軸ではなく5軸 (価格・IP・SLA・支払・責任) で持つ。CTO 承認必須。」**
>
> *Walk-away không chỉ là giá — 5 trục: giá / IP / SLA / payment / liability. CTO bắt buộc duyệt.*

---

## ⚠ Tránh

- Walk-away chỉ có giá → bị bypass qua IP / SLA
- Walk-away không có evidence approval → tới giờ G CTO không backup
- Đàm phán ad-hoc thêm walk-away mới trong phòng → mất uy tín
- Cho khách thấy walk-away list ("đây là red lines của em") → là tactical mistake, walk-away là internal info

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 撤退ライン | てったいライン | Walk-away line |
| 知財 / IP | ちざい | Intellectual Property |
| 所有権 | しょゆうけん | Quyền sở hữu |
| white-label | howaitorēberu | OEM / nhãn trắng |
| 罰則賠償 | ばっそくばいしょう | Penalty / damages |
| 支払条件 | しはらいじょうけん | Điều kiện thanh toán |
| 責任上限 | せきにんじょうげん | Liability cap |
| 競業避止 | きょうぎょうひし | Non-compete |


# Rule 09 — Concession plan / 譲歩計画

> **Luận điểm.** Concession plan = **trước khi vào phòng**, viết ra: nhượng cái gì, theo thứ tự nào, đổi lấy cái gì. Mỗi nhượng bộ phải kèm **trade ngược** (rule 24). Nếu không có plan, sẽ nhượng theo cảm xúc → leak value khoảng 15-25%.
>
> 譲歩は事前にladder化する: **何を・どの順番で・何と引き換えに**。各譲歩に必ず trade を付与する。計画なしの譲歩は感情ベースになり、価値漏洩 (15-25%) を起こす。
>
> **Liên quan:** rule 07 (alignment), rule 21 (scope giảm), rule 24 (譲歩交換).

---

## Bối cảnh / 場面

Tối hôm trước đàm phán, Hương review concession plan cuối của Dũng. Dũng có 3 nấc nhưng quên trade ngược.

---

## ❌ Hội thoại XẤU — concession ladder không có trade

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、譲歩計画です: ¥19M → ¥18M → ¥17M → ¥16M。」 |
| **フオン** | 「**それ譲歩じゃなくてただの値引きカウント**。何と引き換え？大垣さんに『1M ずつ下げてくれた』と取られたら、最終 ¥15M まで押される。」 |
| **ズン** | 「うーん、引き換え条件はまだ…」 |
| **フオン** | 「**1譲歩 = 1 trade、これ法則**。¥18M → ¥17M なら『scope -10% AND 契約3年化』とかセット。引き換えなしの譲歩は『弱さの暴露』だけ。」 |

**Vì sao xấu:** Plain ladder ¥19→18→17→16 không có condition → khách thấy "anh dễ nhượng" → push tiếp. Mỗi nấc cần 1 trade ngược (scope, term, payment, etc).

---

## ✅ Hội thoại TỐT — concession ladder với trade từng nấc

| Speaker | Câu |
|---------|-----|
| **ズン** | 「譲歩計画 v2 です。**5 ladder、各段に trade**【1】。」 |
| **ズン** | 「Step 0: ¥19M anchor (no concession)。Step 1: ¥18M target、trade なし (target 着地は譲歩ゼロ扱い)。Step 2: ¥17.5M ⇄ **契約期間 2 年化** (LTV +35%)【2】。Step 3: ¥17M ⇄ scope -10% (AI dashboard 2nd phase 後出し)。Step 4: ¥16M ⇄ scope -20% + payment net 30 化 + 事例公開許可。Step 5: ¥15M ⇄ scope -30% + 上記すべて + 早期支払割 (これ最終)。**¥15M 以下 = 撤退**。」 |
| **フオン** | 「Step 2 の 2 年化、白鷗が断ったら？」 |
| **ズン** | 「断られたら ¥17.5M も引っ込めて Step 1 に戻ります【3】。**譲歩は trade とセット、trade 拒否は譲歩取り下げ**。」 |
| **フオン** | 「完璧。これ trade-back 原則。事例公開許可は marketing 側の価値あるから入れていい。」 |

📝 **Ghi chú:**
- 【1】**5 ladder + trade per step** — 譲歩の各段に必ず引き換え条件を1つ以上.
- 【2】**Trade options 例**: 契約期間延長, scope giảm, payment terms (net 60→net 30), 事例公開, 競合排除条項, 専属期間, 紹介料, 追加機能後出し.
- 【3】**Trade-back 原則**: trade 拒否されたら譲歩も取り下げる. これがないと unilateral concession になる.

---

## 🎯 Câu chốt

> **「譲歩はladder化、各段にtrade、trade拒否されたら譲歩も取り下げる。」**
>
> *Nhượng bộ ladder, mỗi nấc có trade, trade bị từ chối thì rút lại nhượng bộ.*

---

## ⚠ Tránh

- Nhượng giá thuần "1M ずつ" → tự kill margin
- Trade quên cho mỗi step → khách lấy không
- Quên "trade-back" rule → bị bóc trade riêng, giữ lại nhượng bộ
- Concession quá nhanh (¥19→¥17 trong 5 phút) → khách đoán còn dư địa lớn → push tới ¥14M

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 譲歩計画 | じょうほけいかく | Concession plan |
| 引き換え | ひきかえ | Trade / đổi |
| 段階的譲歩 | だんかいてきじょうほ | Ladder concession |
| 契約期間 | けいやくきかん | Thời hạn hợp đồng |
| LTV | エルティーブイ | Lifetime Value |
| 事例公開 | じれいこうかい | Công bố case study |
| 値引き | ねびき | Giảm giá |
| 取り下げ | とりさげ | Rút lại |



---

# Phần II — Mở đàm phán + Discovery

# Rule 10 — Câu mở chào lịch sự / 商談冒頭

> **Luận điểm.** 30 giây đầu của đàm phán = anchor cho cả buổi. Câu mở phải có 4 phần: **(1) Cảm ơn thời gian**, **(2) Tự giới thiệu lại nếu có đa người**, **(3) Acknowledge tình hình khách**, **(4) Nói rõ today's intent ngắn**. Đi thẳng vào bargain = mất tone formal.
>
> 商談冒頭の30秒は全体のtoneを決める。4要素必須: お礼・再自己紹介・相手状況への言及・本日の意図。直で値段の話に入るのは粗野。
>
> **Liên quan:** rule 11 (context setting), sách 03 rule 09 (第一声), sách 05 rule 06 (deck opening).

---

## Bối cảnh / 場面

14:00, phòng họp 白鷗. 大垣 + 中村 CFO ngồi đối diện. Dũng + Tuấn vào. Sau lễ tân và trao danh thiếp xong (sách 03 rule 11), Dũng làm câu mở.

---

## ❌ Hội thoại XẤU — vào thẳng giá

*座って即 · 微妙な顔 · 隣で書類を整理しながら*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「えー、本日 Phase 3 の見積 ¥19M でお持ちしました。早速ですがご検討お願いします。」 |
| **大垣** | 「あ…はい。早速ですね。」 |
| **中村CFO** | 「…」 |

**Vì sao xấu:** 0 phút đã ra giá → 失礼. Khách Nhật cảm "lạnh", không có tone professional. 中村 CFO senior bị "skip" trong câu chào → mất 顔. Cả buổi tone sẽ bị set là "transactional only".

---

## ✅ Hội thoại TỐT — 30s opening 4 yếu tố

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**本日はお忙しい中、お時間いただきまして誠にありがとうございます**【1】。改めまして、ティエンファットの BD 担当ズンと申します。隣のチーム技術リーダー、トゥアンと参りました【2】。」 |
| **ズン** | 「**先日の IR でも拝見しましたが、新年度に向けて DX 推進を加速されるとのこと**【3】、私どもも Phase 2 でご協力させていただいた立場として大変心強く存じます。」 |
| **ズン** | 「**本日は Phase 3 のご提案として、3 段階の選択肢をお持ちしました**【4】。御社のご要望に沿うか、ぜひ忌憚ないご意見をいただければと存じます。」 |
| **大垣** | 「ご丁寧にありがとうございます。では拝見しましょう。」 |

📝 **Ghi chú:**
- 【1】**お礼が最初** — 「お忙しい中」必ず付ける。CFO クラスにはこの一言で「あなたの時間を尊重」を伝える.
- 【2】**再自己紹介 + チームメンバー紹介** — 名刺交換しているが、口頭でも明示. 特に CFO 同席時.
- 【3】**相手状況への言及 (IR / 業績 / 季節)** — 顧客リサーチ (rule 04) の成果をここで使う. "anh/chị nhớ đến tình hình bên em" tone Nhật quan trọng.
- 【4】**本日の意図を1文で**: "3 段階の選択肢" — KHÔNG quote giá ngay, để discovery đi trước.

---

## 🎯 Câu chốt

> **「商談冒頭30秒は4要素 (お礼・再紹介・相手状況・本日意図)。値段は冒頭に出さない。」**
>
> *30s mở đàm phán cần 4 yếu tố: cảm ơn / tự giới thiệu lại / acknowledge khách / today's intent. KHÔNG quote giá ngay đầu.*

---

## ⚠ Tránh

- "早速ですが値段は" → 失礼
- Bỏ qua CFO trong câu chào (chỉ nhìn 大垣) → mất 顔 senior
- "お忙しい中" thiếu → tone hời hợt
- Acknowledge khách bằng câu chung chung "御社は素晴らしい会社" → mất specificity, không show prep

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 商談冒頭 | しょうだんぼうとう | Mở đàm phán |
| お忙しい中 | おいそがしいなか | Trong lúc bận rộn |
| 改めまして | あらためまして | Một lần nữa |
| 拝見する | はいけんする | Xem (kính ngữ) |
| 忌憚ない | きたんない | Thẳng thắn / không kiêng |
| 意見 | いけん | Ý kiến |
| DX 推進 | DXすいしん | Đẩy mạnh DX |
| 立場 | たちば | Vị thế / lập trường |


# Rule 11 — Set context + agenda / コンテキスト設定

> **Luận điểm.** Sau câu mở chào (rule 10), set **shared context** trong 60-90s: (1) recap 2-3 điểm key từ meeting trước, (2) confirm nothing changed/something changed phía khách, (3) đề xuất agenda hôm nay. Bỏ qua → khách CFO senior bị "lost", tone xuống.
>
> 冒頭挨拶後、60-90秒で共通コンテキストを設定する: 前回ハイライト recap → 状況確認 → 本日 agenda 提示。CFO 同席など senior 入りでは特に重要。
>
> **Liên quan:** rule 10 (冒頭), rule 17 (時間管理), sách 03 rule 13 (agenda).

---

## Bối cảnh / 場面

Sau câu mở (rule 10), Dũng vào phần thứ 2 — set context. 中村 CFO mới join lần này (Phase 2 không có), Dũng cần bridge.

---

## ❌ Hội thoại XẤU — không recap, vào discovery luôn

*横から · CFOに説明し始める*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では早速、Phase 3 のご要件についてお伺いします。最も重要視されているポイントは何でしょうか？」 |
| **中村CFO** | 「あ…えっと、Phase 3 って、Phase 2 はどこまで進んだんですか？」 |
| **大垣** | 「中村さん、Phase 2 は昨年12月に完了して、次は…」 |

**Vì sao xấu:** CFO không có context Phase 2. Dũng vào discovery question luôn → CFO bị lost → 大垣 phải bridge thay → tốn 5 phút và mất control. Lý ra Dũng phải proactively recap.

---

## ✅ Hội thoại TỐT — recap 60s + agenda đề xuất

| Speaker | Câu |
|---------|-----|
| **ズン** | 「本題に入ります前に、**簡単な振り返り**【1】をさせていただきます。中村 CFO 様には Phase 2 の経緯をお伝えする意味でも。」 |
| **ズン** | 「Phase 2 は昨年 12 月完了、月間 GMV +18%、運用コスト -22% という成果をお出しすることができました【2】。Phase 3 のご相談を 3 月に賜り、今日 3 段階のご提案をお持ちしました。**直近で御社側のご状況に変更はございますでしょうか**【3】？」 |
| **中村CFO** | 「コスト圧縮の方針はより強くなっています。Phase 2 のような ROI が出る案件であれば積極的に検討します。」 |
| **ズン** | 「承知しました。それを念頭に進めます。**本日のagenda、案として: (1) Phase 3 提案の概要 10 分、(2) 御社側のご質問・ディスカッション 30 分、(3) 価格と次ステップの確認 20 分**【4】、合計 60 分。よろしいでしょうか？」 |
| **大垣** | 「結構です。」 |

📝 **Ghi chú:**
- 【1】**振り返り (recap)** — chỉ cần 30-45s, key 2-3 số liệu của Phase trước. KHÔNG kể lể dài.
- 【2】**Số liệu cụ thể** (+18%, -22%) tốt hơn "成功" mơ hồ. Tạo trust ngay.
- 【3】**「直近で変更ございますか」** — câu mở để khách proactively share constraint mới (ai mới join, budget cut, etc).
- 【4】**Agenda 3 phần với time-box** — cho khách feel control, dễ buộc bản thân giữ schedule (rule 17).

---

## 🎯 Câu chốt

> **「振り返り→状況確認→agenda提示の3拍。CFO 同席時は特に必須。」**
>
> *Recap → confirm tình hình → đề xuất agenda — 3 nhịp. Có CFO ngồi cùng càng bắt buộc.*

---

## ⚠ Tránh

- Vào discovery luôn không recap → senior khách bị lost
- Recap dài lê thê (3 phút) → tốn budget time
- Quên hỏi "状況変更ありますか" → bỏ lỡ early intel về budget cut, restructuring
- Agenda không có time-box → buổi đàm phán lê thê

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 振り返り | ふりかえり | Recap / nhìn lại |
| 経緯 | けいい | Diễn biến / quá trình |
| 直近 | ちょっきん | Gần đây |
| アジェンダ | ajenda | Agenda |
| ディスカッション | disukasshon | Discussion |
| 念頭に置く | ねんとうにおく | Lưu ý / để trong đầu |
| 共通認識 | きょうつうにんしき | Nhận thức chung |


# Rule 12 — Discovery questions: 5 categories / ディスカバリー質問

> **Luận điểm.** Trước khi đề xuất giá, hỏi 5 category: **(1) Pain** (vấn đề thực sự), **(2) Goal** (đích đến), **(3) Budget**, **(4) Timeline**, **(5) Decision** (ai duyệt, quy trình). Bỏ qua 1 category = đoán → khả năng cao quote sai. Tỉ lệ deal won tăng 2-3x với discovery đầy đủ.
>
> 価格提示前に必ず5カテゴリ (Pain/Goal/Budget/Timeline/Decision) を質問。1つでも飛ばすと当てずっぽう提案になる。
>
> **Liên quan:** rule 13 (hidden constraints), rule 15 (price sensitivity), rule 16 (decision maker).

---

## Bối cảnh / 場面

Sau context setting (rule 11), Dũng vào discovery 30 phút. Đây là phần dài nhất, cần bao quát 5 category.

---

## ❌ Hội thoại XẤU — chỉ hỏi Pain, bỏ qua Budget/Timeline/Decision

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Phase 3 で解決したい課題は何でしょうか？」 |
| **大垣** | 「AI レコメンドで購買単価を上げたい、それから運用負荷を減らしたいです。」 |
| **ズン** | 「分かりました。それでは ¥19M でご提案します。」 |
| **大垣** | 「あ…えっと、予算とか聞かないんですか？」 |
| **ズン** | 「あ、そうですね、予算は…」 |

**Vì sao xấu:** Hỏi Pain xong jump straight tới giá. Không biết budget ceiling, timeline urgency, decision flow. ¥19M có thể vượt quá ngân sách hoặc khách thực ra cần xong trong 3 tháng (nhưng mình quote lịch 6 tháng). Khách phải tự nhắc — embarrassing.

---

## ✅ Hội thoại TỐT — 5 category covered trong 30 phút

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**5 観点でお伺いさせていただきます**【1】。まず Pain — 現状の運用で最も時間を取られている部分はどちらでしょうか？」 |
| **大垣** | 「在庫予測の精度。営業部が手動で日次調整している。」 |
| **ズン** | 「**Goal — Phase 3 完了時にどのような状態をイメージされていますか**【2】？」 |
| **大垣** | 「予測精度 +15%、手動調整時間半減。GMV 影響としては年間 +¥80M 見込み。」 |
| **ズン** | 「**予算感**につきまして、御社新年度 IT 投資のフレームの中で、Phase 3 はどの程度の位置付けでしょうか【3】？」 |
| **中村CFO** | 「Phase 3 単体としては ¥15-20M 帯で考えています。それを大きく超えると稟議が難航します。」 |
| **ズン** | 「ありがとうございます。**Timeline** — リリース希望時期は？」 |
| **大垣** | 「7 月末までに本番投入できれば理想です。」 |
| **ズン** | 「**最後に Decision — 本件のご判断は中村 CFO 様 + 大垣部長様の合議でよろしいでしょうか？それ以外に稟議経路で確認すべき方はいらっしゃいますか**【4】？」 |
| **大垣** | 「我々2名の合議+IT部門長の technical review が必要です。あと取締役会 (¥18M 超は付議)。」 |
| **ズン** | 「承知しました。これで5観点のご状況が揃いました。」 |

📝 **Ghi chú:**
- 【1】**「5 観点」と最初に宣言** — khách biết bạn sẽ hỏi nhiều, kiên nhẫn. Tránh khách "khi nào tới giá?"
- 【2】**Pain → Goal pair** — Pain alone là negative; Goal cho khách imagine future state, dễ trả lời con số.
- 【3】**Budget hỏi gián tiếp** "新年度フレームの中で" — không hỏi thẳng "予算いくら?" (failure pattern). Rule 15 detail.
- 【4】**Decision hỏi đầy đủ** — KHÔNG chỉ hỏi "ai duyệt" mà hỏi "ai cần consult", thường có hidden person (rule 16).

---

## 🎯 Câu chốt

> **「Pain・Goal・Budget・Timeline・Decision の5観点を必ずカバー。1つ飛ばすと当てずっぽう。」**
>
> *5 trục Pain/Goal/Budget/Timeline/Decision — bỏ 1 trục = đoán mò.*

---

## ⚠ Tránh

- Chỉ hỏi Pain xong jump tới giá → quote sai
- Hỏi Budget thẳng thừng "予算いくらですか?" → khách Nhật khó trả lời (rule 15)
- Skip Decision question → tới giai đoạn closing mới biết có 5 người duyệt
- Hỏi 5 category liên tiếp thành rapid-fire → tone interrogation. Đan xen mirror/summary (rule 14).

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 観点 | かんてん | Perspective / góc nhìn |
| 課題 | かだい | Vấn đề / pain |
| 在庫予測 | ざいこよそく | Dự báo tồn kho |
| 手動調整 | しゅどうちょうせい | Điều chỉnh thủ công |
| 予算感 | よさんかん | Cảm giác về budget |
| 稟議経路 | りんぎけいろ | Đường ringi |
| 合議 | ごうぎ | Quyết định tập thể |
| 取締役会 | とりしまりやくかい | HĐQT / board |


# Rule 13 — Listen for hidden constraints / 隠れた制約の傾聴

> **Luận điểm.** Khách Nhật rất hiếm khi trực tiếp nói "có vấn đề X", thay vào đó signals indirect: 言葉尻 ("ちょっと…"), 時間 ("少し時間かかる"), passive voice. Phải bắt được 3 loại constraint ẩn: **(1) 稟議 timeline (~ thực sự bao lâu)**, **(2) Budget cycle limit**, **(3) Internal politics** (sếp khác phản đối).
>
> 日本の顧客は制約を直接言わない。「ちょっと」「少し時間がかかる」「内部で議論が」などの signal を listen して隠れた制約 (稟議期間・予算枠・社内反対) を読み解く。
>
> **Liên quan:** rule 03 (稟議), rule 12 (discovery), rule 14 (mirroring).

---

## Bối cảnh / 場面

Discovery question xong (rule 12), 大垣 trả lời nhưng có vài "ちょっと…" và pause dài. Dũng phải đào hidden constraint chứ không bỏ qua.

---

## ❌ Hội thoại XẤU — bỏ qua signal "ちょっと"

*信号読まず*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「7 月末ローンチが理想ですが…**ちょっと**社内で議論があって…」 |
| **ズン** | 「では 7 月末ローンチでスケジュール組みます。」 |
| **大垣** | 「あ、はい…」 |
| (3週間後 Slack) **大垣** | 「すみません、稟議が止まっており…」 |

**Vì sao xấu:** "ちょっと" + pause = signal có vấn đề, có thể là sếp khác phản đối hoặc budget chưa sure. Dũng push schedule luôn → 3 tuần sau bị surprise. Phải đào ngay tại chỗ.

---

## ✅ Hội thoại TỐT — đào "ちょっと" với câu hỏi mở

*signal キャッチ · 少し沈黙、その後*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「7 月末ローンチが理想ですが…**ちょっと**社内で議論があって…」 |
| **ズン** | 「『社内で議論』とのこと、**もう少し詳しくお聞かせいただけますでしょうか**【1】？タイミングや調整事項に影響しそうでしたら、こちらでも対応を検討したいので。」 |
| **大垣** | 「実は IT 部門長が AI レコメンドの導入リスクを慎重に見ていまして…7 月末は厳しいかもしれません。」 |
| **ズン** | 「**承知しました。IT 部門長様のご懸念点、具体的にどのあたりでしょうか**【2】？こちらで white paper や PoC データをご用意できれば稟議の助けになるかと思います。」 |
| **大垣** | 「データ漏洩リスクとモデル説明可能性。御社で説明できる資料があれば助かります。」 |
| **ズン** | 「**白鷗様 IT 部門長様向けに security PoC + AI explainability の brief を 1 週間以内に**【3】。それに合わせて Timeline は 7 月末→ 8 月中旬に余裕を持たせる案も併せてご提案します。」 |

📝 **Ghi chú:**
- 【1】**「もう少し詳しく…」** = câu open-ended để khách elaborate. Tránh closed question (yes/no).
- 【2】**「具体的にどのあたり」** — đào pain xuống level operational. Khách Nhật thường share khi đã build trust.
- 【3】**Quay constraint thành solution** — biết IT lead lo, đề xuất security brief + dời timeline → tăng cơ hội稟議 pass.

---

## 🎯 Câu chốt

> **「『ちょっと』『少し』『議論があって』はredflag。即押さない、もう少し詳しくお聞かせください。」**
>
> *"ちょっと" / "少し" / "議論があって" = red flag. KHÔNG bỏ qua, hỏi thêm.*

---

## ⚠ Tránh

- "ちょっと" 聞き流す → 3 週後 surprise
- 詰問 tone "なんでですか？" → khách close down. Dùng "もう少し詳しく…"
- Constraint ra rồi mà push schedule cứng → tone của bạn thành "không nghe"
- Quên propose solution sau khi đào → discovery thuần info gathering, không value-add

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 隠れた制約 | かくれたせいやく | Constraint ẩn |
| 議論 | ぎろん | Bàn luận / disagreement |
| 慎重 | しんちょう | Thận trọng |
| 漏洩リスク | ろうえいリスク | Risk rò rỉ |
| 説明可能性 | せつめいかのうせい | Explainability |
| 余裕を持たせる | よゆうをもたせる | Để dư địa |
| 稟議の助け | りんぎのたすけ | Hỗ trợ ringi |


# Rule 14 — Mirror + summarize / ミラーリング・要約

> **Luận điểm.** Sau mỗi khối discovery (3-5 câu khách trả lời), **mirror back** bằng câu "つまり〜とのご認識でしょうか" — confirm hiểu đúng + cho khách cơ hội correct. Hai tác dụng: (1) tránh misinterpretation, (2) khách cảm "được lắng nghe" → cooperative hơn.
>
> 質問→回答の塊ごとに「つまり〜とのご認識でしょうか」で要約 mirroring。誤解防止 + 相手の信頼獲得。
>
> **Liên quan:** rule 12 (discovery), rule 13 (hidden constraints), sách 03 rule 24 (要約).

---

## Bối cảnh / 場面

Sau khi đào constraint của IT lead (rule 13), Dũng tiếp tục discovery. Trước khi sang Budget question, summary lại Pain + Goal.

---

## ❌ Hội thoại XẤU — không mirror, hiểu sai

| Speaker | Câu |
|---------|-----|
| **大垣** | 「在庫予測精度 +15%、手動調整時間半減です。」 |
| **ズン** | 「ありがとうございます。次の質問ですが、予算は…」 |
| (1 週間後 deck で) **ズン** | 「在庫予測精度を 15% **以上**改善する提案です。」 |
| **大垣** | 「いえ、+15% で十分です。それ以上は cost 倍以上になるので望んでいません。」 |
| **ズン** | 「あ…」 |

**Vì sao xấu:** Dũng nhớ "+15%" thành "15% trở lên" → over-design proposal. Không mirror tại chỗ → 1 tuần sau mới phát hiện. Mất thời gian + lost trust.

---

## ✅ Hội thoại TỐT — mirror tại chỗ, đúng từng số

| Speaker | Câu |
|---------|-----|
| **大垣** | 「在庫予測精度 +15%、手動調整時間半減です。」 |
| **ズン** | 「**つまり、目標は予測精度を現状から +15%、手動調整時間を 50% 削減 — この2点が Phase 3 の主要KPI、とのご認識でよろしいでしょうか**【1】？」 |
| **大垣** | 「はい。+15% は超えなくて大丈夫、超えると cost 上がるので逆に困る。」 |
| **ズン** | 「**+15% は超過不要、cost との trade-off を意識**【2】、承知しました。次に予算感を伺ってもよろしいでしょうか？」 |

📝 **Ghi chú:**
- 【1】**「つまり、〜とのご認識でよろしいでしょうか」** = mặc định mirror phrase. Đảm bảo khách correct nếu sai.
- 【2】**Mirror back nuance khách thêm vào** ("超えなくて大丈夫" → "超過不要") — phải bắt được nuance, KHÔNG paraphrase quá.
- Mirror tại chỗ tốn 10 giây nhưng tiết kiệm ngày làm proposal sai.

---

## 🎯 Câu chốt

> **「つまり〜とのご認識でしょうか — 質問の塊ごとに必ず mirror。」**
>
> *"Tức là... — em hiểu vậy có đúng không ạ" — sau mỗi khối câu hỏi đều mirror.*

---

## ⚠ Tránh

- Paraphrase quá xa nguyên văn → khách không recognize → thấy mình "không nghe"
- Mirror chỉ những gì mình thích, bỏ qua nuance khó (vd: "超えなくて大丈夫" mà mirror thành "+15% 以上目指す")
- Mirror sau 30 phút → không kịp correct
- Mirror ra dạng câu hỏi đóng yes/no liên tục → tone interrogation. Đan với open question.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ミラーリング | mirāringu | Mirroring |
| 要約 | ようやく | Tóm tắt |
| 認識 | にんしき | Nhận thức |
| 確認 | かくにん | Xác nhận |
| trade-off | torēdoofu | Đánh đổi |
| 超過 | ちょうか | Vượt quá |
| 超えなくて大丈夫 | こえなくてだいじょうぶ | Không cần vượt quá |


# Rule 15 — Probe price sensitivity / 価格感度の探り

> **Luận điểm.** Hỏi "予算いくら?" trực tiếp = khách Nhật khó trả lời (cảm giác bị "ép"). Hỏi gián tiếp 3 cách: **(1) Frame** ("年度予算のフレームの中で"), **(2) Range** ("¥10M〜¥30M のどの帯域"), **(3) Comparable** ("Phase 2 と比較してどの程度の規模感"). Chọn đúng câu hỏi → khách share range 80% trường hợp.
>
> 直接「予算は？」は日本顧客に答えにくい。Frame / Range / Comparable の3パターンで間接的に探る。
>
> **Liên quan:** rule 12 (discovery), rule 02 (ZOPA), rule 18 (anchoring).

---

## Bối cảnh / 場面

Trong discovery (rule 12 step Budget), Dũng cần probe budget ceiling của Hakuō mà không offended.

---

## ❌ Hội thoại XẤU — hỏi thẳng "予算は？"

*微妙な間*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ところで、Phase 3 の予算はいくらですか？」 |
| **大垣** | 「えっと、それは…まだ確定していなくて…」 |
| **中村CFO** | 「そういう質問は社内でもまだ議論中なので、お答えしかねます。」 |
| **ズン** | 「あ、すみません…」 |

**Vì sao xấu:** Direct câu hỏi budget = khách Nhật cảm "đe dọa", phản xạ là từ chối trả lời. Mất cơ hội intel + tone xuống. CFO senior bị uncomfortable.

---

## ✅ Hội thoại TỐT — frame + comparable approach

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**予算感につきまして** — 御社の新年度 IT 投資 framework の中で、Phase 3 はどの程度の **位置付け**でしょうか【1】？」 |
| **中村CFO** | 「Phase 3 は重要案件として中位以上に位置付けています。」 |
| **ズン** | 「**Phase 2 が ¥14.5M でしたが、Phase 3 は機能拡張として規模感的にどのあたりを想定されておられますか**【2】？」 |
| **中村CFO** | 「Phase 2 比 1.2-1.4 倍程度、つまり ¥17-20M の帯域で考えています。」 |
| **ズン** | 「ありがとうございます。**¥17-20M の帯域**、参考にさせていただきます【3】。本日の3段階提案も、その帯域を中心に位置付けております。」 |

📝 **Ghi chú:**
- 【1】**「位置付け」「フレームの中で」** = câu hỏi qualitative, dễ trả lời. Khách share rough rank, không phải con số chính xác.
- 【2】**Comparable approach** dựa trên Phase 2 ¥14.5M (anchor đã biết). Khách dễ trả lời倍数 hơn 絶対値.
- 【3】**Repeat back range** "¥17-20M の帯域" để khách confirm/correct + ghi nhớ vào ringi sheet.

---

## 🎯 Câu chốt

> **「直接『予算は？』ではなく、frame / range / comparable で間接的に探る。」**
>
> *KHÔNG hỏi thẳng "ngân sách bao nhiêu" — dùng frame / range / comparable để probe gián tiếp.*

---

## ⚠ Tránh

- "予算いくらですか" — tone interrogation, khách đóng cửa
- Probe price quá sớm (chưa qua Pain/Goal) → khách thấy "anh chỉ quan tâm tiền"
- Bỏ qua khi khách trả lời mơ hồ ("検討中") → push thêm 1 cách lịch sự, không lùi
- Quên repeat back range → khách không feel committed

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 価格感度 | かかくかんど | Price sensitivity |
| 予算感 | よさんかん | Cảm giác budget |
| 位置付け | いちづけ | Vị thế / positioning |
| 帯域 | たいいき | Dải / range |
| 規模感 | きぼかん | Cảm giác quy mô |
| 想定 | そうてい | Giả định / dự kiến |
| 中位 | ちゅうい | Trung vị / middle rank |


# Rule 16 — Confirm decision authority / 決裁者確認

> **Luận điểm.** Tỉnh táo: ai trong phòng là **真の決裁者**, ai chỉ là gatekeeper. Câu hỏi chuẩn: "最終決裁は〜様でいらっしゃいますでしょうか？" + "ご決裁の前に、技術検証や予算審議など、どのようなステップが残っていらっしゃいますか？" Bỏ sót → quote sai người, mất thời gian.
>
> 商談中、誰が真の決裁者で誰が gatekeeper か必ず確認。「最終決裁は〜様でしょうか」+「決裁前のステップは何が残っていますか」の2段階質問。
>
> **Liên quan:** rule 04 (顧客リサーチ), rule 12 (discovery Decision), rule 03 (稟議).

---

## Bối cảnh / 場面

Trong discovery Decision step (rule 12), Dũng đã hỏi sơ "ai duyệt". Bây giờ confirm ranking thực sự + steps remaining.

---

## ❌ Hội thoại XẤU — confirm sai người

*微妙な顔*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「決裁は大垣部長様ですよね？」 |
| **大垣** | 「私は予算 ¥10M までです。¥18M なら中村 CFO 決裁です。」 |
| **ズン** | 「あ、そうですか。じゃあ大垣様にも CFO に伝えていただけますか？」 |
| **大垣** | 「いや、CFO 同席されてますが…」 |

**Vì sao xấu:** Confirm decision sai → CFO ngay đó mà ignore → mất 顔 to. Cũng là dấu hiệu Dũng không research kỹ rule 04.

---

## ✅ Hội thoại TỐT — confirm đầy đủ + remaining steps

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**最終決裁につきまして** — 本件は ¥18M 帯ですので、中村 CFO 様のご決裁、加えて取締役会付議という理解でよろしいでしょうか【1】？」 |
| **中村CFO** | 「はい、私の決裁 + 取締役会報告です。¥20M 超えると取締役会承認が必要になります。」 |
| **ズン** | 「承知しました。**決裁の前段階で、技術 review、予算審議、法務 check など、どのようなステップが残っていらっしゃいますでしょうか**【2】？」 |
| **大垣** | 「IT 部門長 technical review (rule 13 で出た件)、経理部の予算 cycle 審議、そして最終的に法務 contract review。3 ステップで、合計 3 週間程度です。」 |
| **ズン** | 「**3 ステップ・3 週間、加えて取締役会の付議タイミング**【3】、ありがとうございます。それを踏まえて Timeline を組み直します。」 |

📝 **Ghi chú:**
- 【1】**Confirm decision authority + reporting line** — không chỉ "ai duyệt" mà cả "ai cần báo cáo" (取締役会).
- 【2】**Remaining steps question** = key. Khám phá technical / budget / legal review là 3 step phổ biến, mỗi step 1 tuần.
- 【3】**Repeat back ステップ + 期間** — confirm hiểu đúng + dùng làm cơ sở khi tính timeline.

---

## 🎯 Câu chốt

> **「最終決裁者 + 残ステップ + 期間 を明示的に確認。曖昧なまま提案するとtimeline崩壊。」**
>
> *Decision-maker + remaining steps + thời gian — confirm rõ. Mơ hồ là timeline vỡ.*

---

## ⚠ Tránh

- Đoán decision-maker → quote sai người
- Hỏi "ai duyệt" mà không hỏi "còn step gì" → biết tên nhưng không biết cách
- Senior khách (CFO) ngồi đó mà nhìn về phía 部長 → mất 顔
- Quên repeat back ステップ → khách không feel committed timeline

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 決裁者 | けっさいしゃ | Người duyệt |
| 最終決裁 | さいしゅうけっさい | Duyệt cuối |
| 取締役会付議 | とりしまりやくかいふぎ | Đưa lên HĐQT |
| 技術 review | ぎじゅつレビュー | Review kỹ thuật |
| 予算審議 | よさんしんぎ | Thẩm định ngân sách |
| 法務 check | ほうむチェック | Pháp chế kiểm tra |
| 経理部 | けいりぶ | Phòng kế toán |


# Rule 17 — Time-box discussion / 時間管理

> **Luận điểm.** Đàm phán 60 phút mà discovery ngốn 50 phút → không còn budget cho price + closing. Time-box mỗi phần (10/30/20) đã agreed ở rule 11. Khi discovery vượt 25 phút, **soft transition** "そろそろ次の段階に" — không "切ります" cứng.
>
> 商談時間は最初に合意した配分 (10/30/20分) を守る。soft transition で次フェーズへ。固い「切ります」は relationship を傷つける。
>
> **Liên quan:** sách 05 rule_13, rule 11 (agenda agreed), rule 18 (anchoring 開始).

---

## Bối cảnh / 場面

Discovery rule 12-16 đã ngốn 30 phút (đúng agenda). Dũng cần soft transition sang phase 提案+価格 (10 phút deck + 20 phút price). 大垣 vẫn muốn hỏi thêm.

---

## ❌ Hội thoại XẤU — cứng nhắc cắt + để overrun

*時計見て · 微妙に*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「あ、もう1つ伺いたいんですが、AI モデルの再学習頻度は…」 |
| **ズン** | 「すみません、もう discovery 時間が終わりですので、次へ進みます。」 |
| **大垣** | 「あ、はい…」 |

**Vì sao xấu:** Cứng "終わりですので、次へ進みます" = lạnh, mất relationship. 大垣 cảm "không được nghe". Cũng không acknowledge câu hỏi quan trọng của khách.

**Pattern XẤU 2** (ngược lại): để discovery overrun → 60 phút mà chưa đến giá → kết thúc deals chưa quote → next meeting cần lại.

---

## ✅ Hội thoại TỐT — soft transition + park question

| Speaker | Câu |
|---------|-----|
| **大垣** | 「あ、もう1つ伺いたいんですが、AI モデルの再学習頻度は…」 |
| **ズン** | 「**いいご質問ありがとうございます**。再学習頻度は重要点なので、**price の段階にあわせて詳しくご説明させていただきます**【1】 — モデル運用 cost に直結しますので。」 |
| **ズン** | 「**そろそろ提案の概要に移らせていただいてもよろしいでしょうか**【2】？10分でご説明、その後の Q&A + 価格議論で残り時間を使う想定です。」 |
| **大垣** | 「お願いします。」 |
| **ズン** | 「**お時間 30 分経過、agenda 通りに進んでおります**【3】。提案は3 段階でご用意しております…」 |

📝 **Ghi chú:**
- 【1】**Park question chứ không bỏ** — "next phaseで詳しく" = honor question + control time. Khách feel respected.
- 【2】**「そろそろ〜よろしいでしょうか」** = soft transition phrase. Khác với "終わりですので".
- 【3】**Time check vocal** — gọi tên agenda progress giúp cả 2 bên track time. Cũng là tactic để control.

---

## 🎯 Câu chốt

> **「『そろそろ次へ』+ 質問は park。固い『時間ですので』は relationship 傷つける。」**
>
> *"Có lẽ giờ chuyển sang phần tiếp..." + park câu hỏi. KHÔNG cứng "đã hết giờ". Cứng = hại relationship.*

---

## ⚠ Tránh

- 「時間ですので切ります」cứng → khách lạnh
- Để discovery overrun 50 phút → không đến giá
- Park question rồi quên không quay lại trong Q&A → khách feel fobbed off
- Không gọi tên agenda time check → cả 2 bên drift

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 時間管理 | じかんかんり | Time management |
| そろそろ | sorosoro | Có lẽ giờ / sắp đến lúc |
| 移らせていただく | うつらせていただく | Cho phép em chuyển |
| 提案の概要 | ていあんのがいよう | Tổng quan đề xuất |
| 再学習頻度 | さいがくしゅうひんど | Tần suất re-train |
| 想定 | そうてい | Dự kiến |
| 経過 | けいか | Đã trôi qua |



---

# Phần III — Đàm phán giá + scope

# Rule 18 — Anchor first hay wait? / アンカリングの判断

> **Luận điểm.** Có 2 trường phái: **(1) Go first** (anchor cao trước, tận dụng anchoring bias) — tốt khi mình có ZOPA estimate tốt, **(2) Let them go first** (để khách quote) — tốt khi mình KHÔNG biết ceiling khách. **Phase 3 đã có ZOPA → go first**. Quy tắc: **biết ZOPA → anchor; mù ZOPA → wait**.
>
> アンカリング判断は ZOPA 推定の精度で決まる。ZOPA を把握していれば go first (anchoring bias を活用)。把握不足なら let them go first で intel を取る。
>
> **Liên quan:** rule 02 (ZOPA), rule 19 (価格提示), rule 27 (再アンカリング).

---

## Bối cảnh / 場面

Sau soft transition (rule 17), Dũng vào phase 価格. Tuấn whisper "để họ quote trước cho an toàn" nhưng Dũng đã có ZOPA solid → quyết go first.

---

## ❌ Hội thoại XẤU — let them go first khi đã có ZOPA tốt

*小声 · 同意 · 困*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、こっちが先に値段出すと足元見られる。先に向こうに言わせよう。」 |
| **ズン** | 「では大垣様、Phase 3 の **予算感はおいくらでしたら検討可能でしょうか**？」 |
| **大垣** | 「我々の希望は ¥14M 程度です。」 |
| **ズン** | 「えっ、¥14M ですか…」 |

**Vì sao xấu:** Dũng đã có ZOPA mapping (rule 02) — biết ceiling ¥17M. Để khách go first → khách anchor low ¥14M → "anchor war" không có lợi cho mình. Lúc này phải go first ¥19M để pull median lên ~¥17-18M.

---

## ✅ Hội thoại TỐT — go first với anchor cao có cơ sở

*deck slide 価格表 · 沈黙2秒 · 沈黙保持 5秒*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「価格について、本日 3 段階でご提案させていただいております。**まずは Better tier — ¥18M、Anchor として Best tier ¥24M も併せて**【1】、ご検討の materialとしてお持ちしました。」 |
| **ズン** | 「**¥18M の根拠は**、Phase 2 比 +24%、AI レコメンドエンジンの開発工数 + 専任 PM + SLA 99.9% を含めた構成。**御社の +¥80M GMV インパクトに対し ROI 4.4 倍**【2】に位置します。」 |
| **大垣** | 「…¥18M ですね。」 |
| **ズン** | (沈黙) |
| **大垣** | 「悪くない数字ですが、社内で議論が必要です。」 |

📝 **Ghi chú:**
- 【1】**Anchor 構造**: 出 Better (target) + Best (high anchor). 両方見せると Better が "現実解" に見える (rule 06 連携).
- 【2】**根拠と一緒に anchor** — anchor 単独より 30% 効果増. ROI 倍率は CFO に響く.
- **Go first 適用条件**: (a) ZOPA estimate ある, (b) 根拠データ揃ってる, (c) 自分が言葉に詰まらない練習済み.
- **Let them go first 適用条件**: 新規顧客で予算 unknown, 競合状況不明, 商品カテゴリ market price 不安.

---

## 🎯 Câu chốt

> **「ZOPA 把握済み → go first で anchor 高め。把握不足 → let them go first で intel 取る。」**
>
> *Đã có ZOPA → go first anchor cao. Mù ZOPA → để khách quote trước để lấy intel.*

---

## ⚠ Tránh

- Go first khi ZOPA chưa map → anchor sai cả ceiling lẫn floor
- Quote anchor mà không kèm root cause → khách dễ thấy "vô lý"
- Sau anchor, lập tức nói thêm để lấp im lặng → kill anchoring effect (rule 25)
- Để khách quote trước rồi mới ra anchor cao hơn — vẫn có hiệu lực nhưng yếu hơn 30-50%

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| アンカリング | ankaringu | Anchoring |
| 足元を見られる | あしもとをみられる | Bị bắt thóp |
| 根拠 | こんきょ | Cơ sở / lý do |
| 構成 | こうせい | Cấu thành |
| ROI 倍率 | ROIばいりつ | Bội số ROI |
| 議論が必要 | ぎろんがひつよう | Cần thảo luận |
| 効果 | こうか | Hiệu lực |


# Rule 19 — Cấu trúc câu đề xuất giá / 価格提示フレーズ

> **Luận điểm.** Khi quote giá, tránh "¥18M です" trần. Cấu trúc 4 phần: **(1) Frame** (まずは〜の価格帯で), **(2) Number** (¥18M), **(3) Justification** (cơ sở), **(4) Hand-off** (chuyển sang khách phản hồi). Câu trần ngắn → tone hời hợt. 4-part phrase → tone professional + giảm pushback.
>
> 価格提示は4要素 (Frame・Number・Justification・Hand-off) で構成。「¥18M です」だけでは tone が軽くなる。
>
> **Liên quan:** rule 18 (anchoring), rule 20 (高い対応), rule 25 (沈黙).

---

## Bối cảnh / 場面

Sau anchor (rule 18), khách push back. Dũng cần phrase chuẩn cho counter offer ¥17.5M kèm trade契約2年化.

---

## ❌ Hội thoại XẤU — quote trần ngắn

| Speaker | Câu |
|---------|-----|
| **大垣** | 「¥18M は厳しい。¥15M でいかがですか？」 |
| **ズン** | 「えーと、¥17M で。」 |
| **大垣** | 「¥17M ですか…」 |

**Vì sao xấu:** Quote trần "¥17M で" → 大垣 đọc là "easy concession", push tiếp. Không có justification, không có trade. Mất leverage.

---

## ✅ Hội thoại TỐT — 4-part pricing phrase

*沈黙3秒*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「¥18M は厳しい。¥15M でいかがですか？」 |
| **ズン** | 「ご指摘の点、もっともでございます【1】。**フレーム**: 御社のコスト圧縮方針を踏まえ、構成を見直して再提案いたします。**金額**: **¥17.5M**。**根拠**: AI レコメンドエンジン coreは維持、但し dashboard カスタム部分を Phase 2 のテンプレート流用 (-工数 8%)【2】。**条件として**: 契約期間を 2 年契約へ延長していただければ、この価格でご提供可能です【3】。」 |
| **大垣** | 「2 年契約の点、確認が必要です。」 |
| **ズン** | 「もちろんです、お時間をお取りいただいて結構です。」 |

📝 **Ghi chú:**
- 【1】**Bridge phrase** "ご指摘の点、もっともでございます" — acknowledge khách trước khi counter (rule 26 cũng dùng).
- 【2】**Justification cụ thể** — "Phase 2 テンプレート流用 -8%" thay vì "ちょっと安く". Khách Nhật trust số.
- 【3】**Trade rõ ràng** "2 年契約していただければ" — counter có condition (rule 09 trade-back).

---

## 🎯 Câu chốt

> **「価格提示は4要素 (Frame・Number・Justification・Trade)。1要素抜けると leverage 失う。」**
>
> *Quote giá 4 yếu tố: Frame / Number / Justification / Trade. Thiếu 1 yếu tố là mất leverage.*

---

## ⚠ Tránh

- "¥17M で" trần → easy concession signal
- Quote không có Trade → unilateral concession (rule 09)
- Justification mơ hồ "ちょっと安く" → không trust
- Forget bridge phrase trước counter → tone confrontational

---

## 📐 Template — Pricing Phrase Checklist

(xem `rule_19_tpl_01` trong conversation.json — full checklist + 5 scenarios)

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 価格提示 | かかくていじ | Quote giá |
| ご指摘 | ごしてき | Lời nhận xét (kính ngữ) |
| もっとも | もっとも | Có lý / hợp lý |
| 構成見直し | こうせいみなおし | Xem lại cấu thành |
| 流用 | りゅうよう | Tận dụng / dùng lại |
| 工数 | こうすう | Effort / man-day |
| 契約期間延長 | けいやくきかんえんちょう | Kéo dài thời hạn hợp đồng |


# Rule 20 — Đối phó với "高い" / 「高い」への対応

> **Luận điểm.** "高い (đắt)" = signal khách quan tâm, KHÔNG phải reject. Pattern xử lý 3 bước: **(1) Acknowledge** ("ご指摘の点、もっともでございます"), **(2) Reframe** (chuyển từ price sang value/ROI/cost-of-inaction), **(3) Option** (đưa scenario điều chỉnh có trade). Nhảy giảm giá ngay = leak value.
>
> 「高い」は購買意欲のサイン、reject ではない。3ステップ (Acknowledge → Reframe → Option) で対応。即値引きは弱さ暴露。
>
> **Liên quan:** rule 19 (価格提示), rule 21 (scope giảm), rule 23 (ROI), rule 27 (再アンカリング).

---

## Bối cảnh / 場面

中村 CFO push back nặng "¥17.5M も高い". Dũng dùng 3-step pattern, không vội giảm giá.

---

## ❌ Hội thoại XẤU — phản xạ giảm giá

*慌 · 沈黙*

| Speaker | Câu |
|---------|-----|
| **中村CFO** | 「¥17.5M も高いですね。コスト圧縮中なので。」 |
| **ズン** | 「あ、では ¥16M でいかがでしょうか？」 |
| **中村CFO** | 「…¥16M でも高い。」 |
| **ズン** | 「では ¥15M…」 |

**Vì sao xấu:** Phản xạ giảm 1.5M trong 5 giây = signal "còn dư địa". CFO sẽ push tiếp xuống ¥13M. Mất 2M+ chỉ vì panic. Không acknowledge, không reframe.

---

## ✅ Hội thoại TỐT — Acknowledge → Reframe → Option

*沈黙2秒、その後 · 考え*

| Speaker | Câu |
|---------|-----|
| **中村CFO** | 「¥17.5M も高いですね。コスト圧縮中なので。」 |
| **ズン** | 「**ご指摘の点、もっともでございます**【1】。コスト圧縮の方針、十分に理解しております。」 |
| **ズン** | 「**ただ少し別の角度から**【2】 — Phase 3 を導入されない場合、現在の手動在庫調整 (営業部 5 名 × 年 240日 × 2 時間/日) ≒ 年 2,400 時間の運用工数が継続します。¥17.5M を 2 年で割れば月 ¥730K、運用工数削減 ¥1.2M/月 と比較すると **net positive ¥470K/月**【3】。」 |
| **ズン** | 「**そのうえで、ご予算面でのご懸念があれば、以下のオプション**【4】**: (A) 2 年契約で ¥17.5M 維持、(B) 1 年契約 + scope -10% で ¥16M、(C) Best tier に拡大 ¥24M で AI dashboard 込み。御社のコスト感に合うのはどちらでしょうか？」 |
| **中村CFO** | 「(A) の 2 年契約案、社内で持ち帰り検討します。」 |

📝 **Ghi chú:**
- 【1】**Acknowledge first** — không jump vào defense. Câu "ご指摘の点、もっともでございます" universal.
- 【2】**Reframe phrase** "別の角度から" — chuyển từ "high price" sang "cost of inaction" / "ROI compare".
- 【3】**Reframe bằng số cụ thể** — 2,400 時間, ¥730K/月, ¥1.2M/月, net +¥470K/月. CFO trust số.
- 【4】**Option phải 3, không phải 1** — choice architecture. Khách chọn thay vì reject toàn bộ.

---

## 🎯 Câu chốt

> **「『高い』は購買意欲。Acknowledge → Reframe → 3 Option の3拍。即値引きは弱さの暴露。」**
>
> *"Đắt" là dấu mua. Acknowledge → Reframe → 3 Option — 3 nhịp. Giảm ngay = phơi bày yếu thế.*

---

## ⚠ Tránh

- 即値引き → leak value, push tiếp
- Argue lại "高くないですよ" → confrontational, mất 顔
- Reframe mơ hồ "value があります" → CFO không trust
- Đưa 1 option duy nhất → khách chỉ có yes/no

---

## 📐 Template — "高い" Response Checklist

(xem `rule_20_tpl_01` trong conversation.json)

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 高い | たかい | Đắt |
| 角度 | かくど | Góc nhìn |
| 別の角度から | べつのかくどから | Từ góc nhìn khác |
| 運用工数 | うんようこうすう | Effort vận hành |
| 在庫調整 | ざいこちょうせい | Điều chỉnh tồn kho |
| net positive | netto-pojitibu | Net dương |
| 予算面 | よさんめん | Mặt ngân sách |
| 持ち帰り検討 | もちかえりけんとう | Mang về xem xét |


# Rule 21 — Giảm scope thay vì giảm giá / 価格でなくスコープを削る

> **Luận điểm.** Giảm giá đơn ¥18M → ¥16M = -11% margin **không hồi phục được**. Giảm scope (cắt feature, lùi deliverable, giảm SLA) → giữ unit price, giảm tổng tiền — về tài chính tương đương khách, về margin của mình **giữ nguyên 26%**. Khách Nhật accept tốt khi đề xuất rõ.
>
> 「scope -10% で ¥17M」は「¥17M ベタ値引き」より粗利率を保つ。価格でなく scope を交渉軸にする習慣。
>
> **Liên quan:** rule 19 (価格提示), rule 09 (concession plan), rule 22 (bundling).

---

## Bối cảnh / 場面

CFO chọn option (A) ¥17.5M 2-year (rule 20). Nhưng 大垣 push thêm "¥16M trên 1 năm". Dũng phải counter bằng scope cut chứ không phải giảm giá thuần.

---

## ❌ Hội thoại XẤU — giảm giá thuần, mất margin

*計算なし*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「中村 CFO は 2 年契約 OK、但し 1 年契約版だと ¥16M でいけませんか？」 |
| **ズン** | 「えーと、では ¥16M で。」 |
| (内部 Slack 翌日) **ハー CTO** | 「¥16M で同じ scope は粗利 14%、Phase 2 と同じスタッフ配置不可。なんで scope そのままで値引きした？」 |

**Vì sao xấu:** Giảm ¥1.5M nhưng scope vẫn nguyên → margin từ 26% xuống 14%. Internal financial pain. Đáng ra phải cắt scope tương đương để giữ margin.

---

## ✅ Hội thoại TỐT — counter bằng scope cut

| Speaker | Câu |
|---------|-----|
| **大垣** | 「中村 CFO は 2 年契約 OK、但し 1 年契約版だと ¥16M でいけませんか？」 |
| **ズン** | 「ご検討ありがとうございます。1 年契約 + ¥16M でしたら、**スコープ調整が必要**【1】になります。具体的には、AI dashboard カスタム部分 (-工数 ¥1M) + 専任 PM 半常駐化 (-工数 ¥0.5M) を Phase 4 に後出し【2】、これで ¥16M、SLA 99.5% (Better は 99.9%) も同時調整。」 |
| **大垣** | 「AI dashboard を Phase 4 に？導入後で困りますか？」 |
| **ズン** | 「AI レコメンドエンジン core は Phase 3 で稼働、dashboard は Phase 2 流用版で代替可能です。**unit price (機能あたり単価) は同等のまま、総額調整**【3】という形です。Phase 4 着手時に dashboard 追加で +¥1M、その時に再ご相談という形ではいかがでしょうか？」 |
| **大垣** | 「unit price 同等であれば社内説明しやすい。検討します。」 |

📝 **Ghi chú:**
- 【1】**「スコープ調整が必要」** — câu chuyển từ price negotiation sang scope negotiation. Giữ leverage.
- 【2】**Cắt feature có thể "後出し" Phase 4** — KHÔNG mất khách, chỉ delay revenue. Khách ringi dễ pass hơn.
- 【3】**"Unit price 同等"** = key sentence. CFO/部長 cần "internal explanation": "không bị giảm giá, chỉ giảm scope".

---

## 🎯 Câu chốt

> **「価格でなく scope を交渉軸にする。Unit price 維持で総額調整、粗利率を守る。」**
>
> *Đàm phán scope, KHÔNG đàm phán giá đơn vị. Giữ unit price, điều chỉnh tổng tiền, bảo vệ margin.*

---

## ⚠ Tránh

- Giảm giá phẳng "¥16M でいきます" → margin chết
- Cắt scope mơ hồ "ちょっと減らします" → khách không biết mất gì
- Cắt core feature (AI engine bản thể) → khách không đạt mục tiêu Phase 3 → fail
- Quên đề xuất "Phase 4 で復活" → khách feel lose forever, push back

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| スコープ | sukōpu | Scope |
| 調整 | ちょうせい | Điều chỉnh |
| 後出し | あとだし | Đẩy về sau / defer |
| カスタム部分 | kasutamuぶぶん | Phần custom |
| 半常駐 | はんじょうちゅう | Bán-túc trực |
| 単価 | たんか | Unit price |
| 同等 | どうとう | Tương đương |
| 復活 | ふっかつ | Khôi phục |


# Rule 22 — Bundle / unbundle pricing / バンドリング・アンバンドリング

> **Luận điểm.** **Bundle** = ghép nhiều item vào 1 giá tổng (khách khó so giá từng cái → giữ margin). **Unbundle** = tách từng item ra giá lẻ (khách thấy detail, dễ chấp nhận từng phần). Khi nào dùng cái nào: **Bundle** khi khách push tổng số; **Unbundle** khi khách push 1 item ("AI engine alone bao nhiêu?").
>
> Bundle は値下げ圧力に対する盾、Unbundle は単一機能の価値を可視化する剣。CFO 質問パターンで使い分け。
>
> **Liên quan:** rule 21 (scope), rule 23 (ROI).

---

## Bối cảnh / 場面

中村 CFO request "AI レコメンド engine 単独でいくら?" → Dũng phải quyết: bundle keep (giữ ¥17.5M整合) hay unbundle (show từng phần). Unbundle lúc này có lợi (CFO muốn justify nội bộ).

---

## ❌ Hội thoại XẤU — bundle cứng đầu, mất cơ hội justify

| Speaker | Câu |
|---------|-----|
| **中村CFO** | 「AI レコメンドエンジン単独だといくらですか？」 |
| **ズン** | 「すみません、Phase 3 はパッケージ提供で、単独価格は出せません。」 |
| **中村CFO** | 「それでは稟議書で個別 cost justify ができないので、難しいですね。」 |

**Vì sao xấu:** Bundle-only rejection không cho khách "internal explanation tool". CFO cần unbundled cost cho ringi-sho. Mất cơ hội close.

---

## ✅ Hội thoại TỐT — strategic unbundle với "package discount"

| Speaker | Câu |
|---------|-----|
| **中村CFO** | 「AI レコメンドエンジン単独だといくらですか？」 |
| **ズン** | 「**個別 cost を分解いたします**【1】。AI レコメンドエンジン: ¥9M、専任 PM: ¥3M、AI dashboard: ¥3.5M、SLA 99.9% 運用: ¥3M。**合計 ¥18.5M**。**Phase 3 パッケージとしては ¥17.5M でご提供 (¥1M のパッケージディスカウント)**【2】、そして 2 年契約継続なら不変。」 |
| **中村CFO** | 「ディスカウント分の根拠は？」 |
| **ズン** | 「複数機能を同一プロジェクトで開発すると共通基盤化で工数 5% 削減できます。それを御社に還元する形【3】。稟議書に『パッケージ価格』として明記いただければ、個別 line item は internal cost justification としてお使いいただけます。」 |
| **中村CFO** | 「これなら稟議書が書きやすい。ありがとうございます。」 |

📝 **Ghi chú:**
- 【1】**Unbundle 開示** — 4 line items với cost. CFO dùng cho ringi-sho.
- 【2】**Package discount** — 個別合計 ¥18.5M > package ¥17.5M (¥1M lợi). Khách thấy "đang được khuyến mãi".
- 【3】**Discount 根拠 = 共通基盤化 (-工数 5%)** — không bịa, có thật. CFO sẽ verify.

---

## 🎯 Câu chốt

> **「個別 unbundle で justify、package で discount。両方見せて『お得感+ringi 容易』。」**
>
> *Unbundle giúp justify, package giúp discount. Show cả hai = "お得感 + ringi dễ".*

---

## ⚠ Tránh

- Bundle-only refuse → CFO không write được ringi
- Unbundle mà tổng KHÔNG bằng package → khách hỏi tại sao 不一致
- Discount không có 根拠 → trust mất
- Unbundle với tất cả khách → sometimes bundle-only better (đặc biệt khi client price-sensitive trên line items)

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| バンドリング | bandoringu | Bundling |
| アンバンドリング | anbandoringu | Unbundling |
| 個別 cost | こべつコスト | Cost từng mục |
| パッケージディスカウント | pakkēji disukaunto | Package discount |
| 共通基盤化 | きょうつうきばんか | Build trên nền chung |
| 還元 | かんげん | Hoàn lại / chia sẻ |
| ラインアイテム | rain'aitemu | Line item |
| 稟議書 | りんぎしょ | Tài liệu ringi |


# Rule 23 — Quy đổi sang ROI / ROI 換算

> **Luận điểm.** Khách Nhật (đặc biệt CFO) approve giá lớn dựa trên **ROI rõ ràng + được nội bộ verify**. Convert giá → ROI: **(1) Investment** (¥18M), **(2) Annual return** (cost saving + revenue uplift), **(3) Payback period** (tháng), **(4) IRR / NPV nếu deal lớn**. Quote không kèm ROI = CFO Nhật khó approve.
>
> CFO 説得は ROI 数値が核。投資額・年間リターン・回収期間 (payback) を必ず提示。「導入する value がある」では稟議通らない。
>
> **Liên quan:** rule 05 (value-based), rule 20 (高い対応), rule 18 (anchoring 根拠).

---

## Bối cảnh / 場面

中村 CFO request "正式 ROI シート" để đem vào ringi. Dũng đã có draft, present trong meeting.

---

## ❌ Hội thoại XẤU — ROI mơ hồ

*沈黙*

| Speaker | Câu |
|---------|-----|
| **中村CFO** | 「ROI はどのくらいですか？」 |
| **ズン** | 「Phase 2 で実績ありますし、Phase 3 はそれ以上の value があります。」 |
| **中村CFO** | 「具体的な数値がないと稟議には乗せられません。」 |

**Vì sao xấu:** "Value あります" = không có gì. CFO muốn 数値. Phase 2 reference chung chung không support Phase 3 ROI.

---

## ✅ Hội thoại TỐT — ROI 4 yếu tố cụ thể

| Speaker | Câu |
|---------|-----|
| **中村CFO** | 「ROI はどのくらいですか？」 |
| **ズン** | 「**ROI 4 indicators**【1】です。**Investment**: ¥17.5M。**Annual return**: (a) AI レコメンド導入で transaction 単価 +12% × 月 GMV ¥600M ≒ 年 +¥864M revenue uplift、利益率 9% 換算で **¥77.7M/年 net 利益**【2】、(b) 手動在庫調整削減 = 5名 × 240日 × 2h × 単価 ¥6,000 = **¥14.4M/年 cost saving**、合計 **¥92.1M/年**。」 |
| **ズン** | 「**Payback period: ¥17.5M ÷ ¥92.1M ≒ 2.3 ヶ月**【3】、つまり初年度で 5.3 倍の return。**3 年 NPV (割引率 5%): ¥234M**【4】。」 |
| **中村CFO** | 「数値の信頼性は？」 |
| **ズン** | 「Phase 2 で transaction 単価 +9% を実現済み (vs. 予測 +8%、上振れ)。AI モデル精度向上で +12% は controlled extrapolation です。Whitepaper + 第三者監査済みデータをお渡しします【5】。」 |
| **中村CFO** | 「これなら取締役会に出せます。」 |

📝 **Ghi chú:**
- 【1】**ROI 4 indicators** — Investment / Annual Return / Payback / NPV. Đủ cả 4 = khoa học, không bịa.
- 【2】**Annual return chia ra cost saving + revenue uplift** — CFO trust mỗi nhánh được verified độc lập.
- 【3】**Payback period < 6 月 = "強い ROI"** trong context JP B2B. < 12 月 = "OK". > 24 月 = khó approve.
- 【4】**NPV với discount rate** — JP firms thường dùng 5-7%. Show NPV = level senior, gây ấn tượng senior CFO.
- 【5】**Third-party audit** — không bắt buộc, nhưng senior CFO trust hơn.

---

## 🎯 Câu chốt

> **「ROI は4指標 (Investment・Annual・Payback・NPV) を数値で。『value がある』は稟議に乗らない。」**
>
> *ROI 4 chỉ số (Investment / Annual / Payback / NPV) bằng số. "Có value" không qua được ringi.*

---

## ⚠ Tránh

- ROI mơ hồ "value あります" → CFO không trust
- Annual return chỉ 1 nhánh (vd: chỉ revenue uplift) → CFO push back về reliability
- Payback > 24 tháng → khó approve, suy nghĩ lại scope
- Quên reference Phase 2 actual data → claim Phase 3 không có anchor

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 投資 | とうし | Đầu tư |
| 年間リターン | ねんかんリターン | Annual return |
| 回収期間 | かいしゅうきかん | Payback period |
| 割引率 | わりびきりつ | Discount rate |
| 上振れ | うわぶれ | Vượt dự kiến |
| 第三者監査 | だいさんしゃかんさ | Third-party audit |
| 取締役会 | とりしまりやくかい | HĐQT |
| 控制された外挿 | せいぎょされたがいそう | Controlled extrapolation |


# Rule 24 — Trade concession (tit-for-tat) / 譲歩交換

> **Luận điểm.** Mọi nhượng bộ đều phải có **trade ngược** — đổi lấy điều gì đó. Phrase chuẩn: "**もし〇〇していただければ、〇〇いたします**" (if you give X, I'll give Y). KHÔNG bao giờ nhượng bộ đơn phương. Tit-for-tat duy trì equilibrium of value.
>
> 譲歩は単独で出さない。「もし〜していただければ、〜いたします」の双方向 phrase で交換する。
>
> **Liên quan:** rule 09 (concession plan), rule 19 (価格提示), rule 21 (scope).

---

## Bối cảnh / 場面

大垣 push xin "AI dashboard 込みで ¥17M". Dũng phải counter với trade — không nhượng đơn phương.

---

## ❌ Hội thoại XẤU — nhượng đơn phương

*微笑*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「AI dashboard も込みで ¥17M なら社内通せそうですが…」 |
| **ズン** | 「分かりました、AI dashboard 含めて ¥17M で。」 |
| **大垣** | 「ありがとうございます。」 |
| (内部 Slack) **フオン** | 「dashboard ¥1M を ¥0 で追加？trade なしの単独譲歩。粗利は？」 |

**Vì sao xấu:** Nhượng dashboard ¥1M không có trade ngược → unilateral concession. Margin xuống. 大垣 đọc Dũng "easy" → push tiếp ở rounds sau.

---

## ✅ Hội thoại TỐT — tit-for-tat trade

| Speaker | Câu |
|---------|-----|
| **大垣** | 「AI dashboard も込みで ¥17M なら社内通せそうですが…」 |
| **ズン** | 「**ご検討ありがとうございます**【1】。AI dashboard 込みで ¥17M、**もし以下の 2 点をお取り計らいいただけましたら**【2】、お受けできます: (1) **契約期間 2 年確定** + 自動 1 年更新条項、(2) **公式事例として御社名公開許可** (来期 marketing で活用)【3】。」 |
| **大垣** | 「(1) は内部で OK、(2) 事例公開は広報部に確認必要です。」 |
| **ズン** | 「もちろんです。**両方ご了承いただけた段階で ¥17M + dashboard 込みで確定**【4】、もし (2) のみ難しい場合は contractual に scope 調整となります。」 |
| **大垣** | 「整理して持ち帰り検討します。」 |

📝 **Ghi chú:**
- 【1】**Acknowledge** trước khi counter — không jump vào trade ngay.
- 【2】**「もし〜していただければ」** = phrase chuẩn cho tit-for-tat. KHÔNG bị thấy là "đòi", chỉ là điều kiện.
- 【3】**Trade chọn 2 thứ value cho mình mà cost thấp cho khách** — 2 năm đã có ringi nội bộ rồi (rule 19), 事例公開 = marketing value.
- 【4】**Conditional confirmation** "両方了承後に確定" — KHÔNG để khách lấy 1 nhượng bộ + từ chối 1 trade.

---

## 🎯 Câu chốt

> **「『もし〇〇していただければ〇〇いたします』 — 譲歩には必ず trade。conditional confirmation で安全。」**
>
> *"Nếu quý anh ~ thì em sẽ ~" — nhượng bộ luôn đi với trade. Conditional confirmation để an toàn.*

---

## ⚠ Tránh

- 即 "OK" → unilateral concession
- Trade quá nặng → khách feel transactional, không close
- Quên conditional confirmation ("両方了承後に") → khách bóc trade riêng
- Trade chọn cái khách không value → useless

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 譲歩交換 | じょうほこうかん | Trade nhượng bộ |
| お取り計らい | おとりはからい | Sắp xếp / hỗ trợ |
| 条項 | じょうこう | Điều khoản |
| 自動更新 | じどうこうしん | Tự động gia hạn |
| 公式事例 | こうしきじれい | Case study chính thức |
| 広報部 | こうほうぶ | Phòng PR |
| 整理する | せいりする | Sắp xếp / tổng hợp |


# Rule 25 — Silence as tool / 沈黙の活用

> **Luận điểm.** Sau khi đưa offer, **đếm 7 giây im lặng**. Người Việt thường lấp khoảng lặng (cultural discomfort) → tự talk down giá. Khách Nhật quen với 沈黙 → ai phá im lặng trước = mất leverage. Practice trước gương.
>
> Offer 後 7 秒沈黙ルール。最初に話した方が譲歩する。日本商談文化では沈黙は思考時間で当然。
>
> **Liên quan:** rule 18 (anchoring), rule 19 (価格提示), rule 07 (合図).

---

## Bối cảnh / 場面

Trong phòng đàm phán, sau khi Dũng quote ¥18M anchor (rule 18), 大垣 im lặng 5 giây. Tuấn ngồi cạnh có signal sẽ nói lấp. Dũng dùng signal tay (rule 07) để stop Tuấn.

---

## ❌ Hội thoại XẤU — Tuấn lấp im lặng

*沈黙 4 秒、考え · 不安、口開く · 微笑 · 顔色*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Better tier ¥18M、ROI 4.4 倍に位置します。」 |
| **大垣** | 「…」 |
| **トゥアン** | 「あの、もし価格がご懸念でしたら、scope 調整で ¥16M も可能です。」 |
| **大垣** | 「あ、¥16M も可能ですか。それで進めましょう。」 |
| **ズン** | 「…」 |

**Vì sao xấu:** Tuấn không chịu được khoảng lặng → tự nhảy xuống ¥16M trước cả khi 大垣 push back. Mất ¥2M bốc hơi trong 4 giây. Đây là pattern rất phổ biến với người Việt mới làm BD.

---

## ✅ Hội thoại TỐT — sustained silence + signal trong team

*右手を膝に置く — 事前合意の signal rule 07 · 沈黙 1 秒 · 口開きかけ、ズン signal 確認、止まる · 沈黙 3 秒 · 沈黙 5 秒 · 7 秒経過 · 内心: 7 秒勝った*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Better tier ¥18M、ROI 4.4 倍に位置します。」 |
| **ズン** | (沈黙) |
| **大垣** | 「…」 |
| **トゥアン** | (沈黙) |
| **大垣** | 「…」 |
| **大垣** | 「…」 |
| **大垣** | 「ROI 4.4 倍はインパクトありますね。但し ¥18M は社内ハードル高めです、scope か contract length で調整余地あれば検討します。」【1】 |
| **ズン** | 「ありがとうございます。それでは scope 調整案と contract length 案、両方ご用意します。」 |

📝 **Ghi chú:**
- 【1】**大垣 phá im lặng trước = move forward bằng compromise** ("scope か contract length"). Đây là leverage shift về Dũng.
- **沈黙 7 秒 = practice goal**. Cảm giác ban đầu mỗi giây như 5 giây. Practice trước gương / với senior.
- **Team signal** (rule 07) cực quan trọng — không có signal thì junior member sẽ nói lấp.
- Khi mình đưa offer + im lặng, ánh mắt giữ neutral, không "đợi mong khách trả lời". Tone confidence.

---

## 🎯 Câu chốt

> **「Offer 後 7 秒沈黙。最初に話した方が譲歩する。team signal で junior の口を封じる。」**
>
> *Sau offer im 7 giây. Ai phá im lặng trước = nhượng. Signal team để junior khỏi nói lấp.*

---

## ⚠ Tránh

- 自分から 1-3 秒で口を開く → 自爆
- "あの、もし高いようでしたら…" — suicide phrase, KHÔNG bao giờ tự cung cấp 値引き option
- Nhìn xuống / fidget khi im lặng → khách đọc là "anh đang lo"
- Practice không đủ → trong phòng tay run

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 沈黙 | ちんもく | Im lặng |
| 思考時間 | しこうじかん | Thời gian suy nghĩ |
| 自爆 | じばく | Tự bùng (tự gây hại) |
| ハードル | hādoru | Rào / khó khăn |
| 調整余地 | ちょうせいよち | Dư địa điều chỉnh |
| インパクト | impakuto | Tác động |
| 口を封じる | くちをふうじる | Khoá miệng |


# Rule 26 — Đối phó với threat / ultimatum / 脅し・最終通告への対応

> **Luận đischuyển. Khách hard "¥15M でなければ Y 社に発注", "今週中に決めなければ" = pressure tactic. Pattern xử lý: **(1) Bridge phrase** ("ご指摘の点、もっともでございます"), **(2) Reframe + boundary** ("ただ弊社として〜は難しい"), **(3) Escalate to senior** (anh Hà CTO step in). Match cứng = lose deal; cave in = lose margin. Bridge + escalate = win-stay.
>
> 脅しや ultimatum は pressure tactic。Bridge phrase で受けて、reframe で boundary を示し、必要なら senior にエスカレーション。
>
> **Liên quan:** rule 27 (再アンカリング), rule 28 (撤退の作法), sách 04 escalation.

---

## Bối cảnh / 場面

大垣 push hard cuối: "¥15M でなければ Y 社に発注". Dũng dùng bridge phrase, sau đó signal anh Hà CTO step in.

---

## ❌ Hội thoại XẤU — match cứng / cave-in

*感情的 · 冷*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「¥15M でなければ、Y 社に発注します。今日決めてください。」 |
| **ズン** | 「Y 社で本当に発注できるとは思えませんが…」 |
| **大垣** | 「冗談ではなく事実です。」 |
| **ズン** | 「では…¥15M で…」 |

**Vì sao xấu:** Dũng vừa challenge khách (mất 顔) vừa cave-in giảm ¥3M trong 1 phút. Cả 2 lỗi cùng lúc. Walk-away ¥15M là biên, scope phải cắt mạnh nhưng Dũng không tỉnh.

---

## ✅ Hội thoại TỐT — bridge + boundary + senior escalation

*2 秒沈黙 · 少し緩む · 電話で 5 分後到着、入室、挨拶後*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「¥15M でなければ、Y 社に発注します。今日決めてください。」 |
| **ズン** | 「**ご指摘の点、もっともでございます**【1】。御社のご事情、十分に理解いたします。」 |
| **ズン** | 「**ただ、弊社として ¥15M で Phase 2 同等スコープのご提供は粗利を割り込みますので、その場でのお返事は致しかねます**【2】。」 |
| **ズン** | 「**重要なご決定ですので、弊社 CTO のハーをこの場にお呼びしてもよろしいでしょうか**【3】？技術面・条件面の両方で正式な回答ができるようにいたします。」 |
| **大垣** | 「では CTO に来ていただいて構いません。」 |
| **ハー CTO** | 「大垣様、ハーでございます。¥15M というご要望、伺いました。**¥15M でしたら scope は -30% (AI dashboard・専任 PM・SLA 99.9%→99.5%) となり、Phase 3 当初目的の達成度合いは 65% 程度になります**【4】。**Phase 2 同等のスコープであれば、弊社 walk-away ライン ¥15.5M、これは承認済みの最終条件**でございます。」 |
| **大垣** | 「…CTO 同席ですと話が変わりますね。¥15.5M なら社内に持ち帰り検討します。」 |

📝 **Ghi chú:**
- 【1】**Bridge phrase** = de-escalation. KHÔNG argue ngay. "ご指摘の点、もっともでございます" = formal acknowledgment.
- 【2】**Boundary phrase** "弊社として〜は難しい" — show position cứng nhưng tone polite.
- 【3】**Senior escalation** "弊社 CTO をお呼びしてもよろしいでしょうか" — phải xin phép, không tự ý gọi.
- 【4】**CTO 来ても scope-cut bằng số cụ thể** — "65% 達成度" là metric khiến khách nhận pain. CTO bring authority + new info.

---

## 🎯 Câu chốt

> **「Bridge phrase で受け、boundary で抵抗、senior escalation で deescalate。Match も cave-in も両方避ける。」**
>
> *Bridge để đỡ, boundary để giữ vị thế, senior step in để de-escalate. Tránh cả match cứng lẫn cave-in.*

---

## ⚠ Tránh

- "Y 社で本当にできるとは…" → challenge khách = mất 顔
- "では ¥15M で" → cave-in giảm ¥3M trong 1 phút
- Senior escalation không xin phép → bất lịch sự
- Senior step in nhưng không bring new authority/info → useless escalation

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 脅し | おどし | Đe dọa |
| 最終通告 | さいしゅうつうこく | Tối hậu thư |
| ご指摘 | ごしてき | Lời nhận xét |
| もっとも | もっとも | Có lý / hợp lý |
| 粗利を割り込む | あらりをわりこむ | Phá ngưỡng margin |
| 致しかねます | いたしかねます | Khó thực hiện được |
| エスカレーション | esukarēshon | Escalation |
| 達成度合い | たっせいどあい | Mức độ đạt được |


# Rule 27 — Re-anchor sau pushback / 再アンカリング

> **Luận điểm.** Sau khi khách reject anchor đầu (¥18M → "高い"), KHÔNG immediate cave-in. Cần **re-anchor**: lập lại VALUE ban đầu + extra justification + restate target. Effect: khách bị "anchor reset" về ¥18M một lần nữa, lần này có thêm cơ sở. Không re-anchor → mỗi pushback giảm giá → leak ¥1-2M.
>
> Pushback された anchor は単純に下げない。value 再強調 + 新事実追加で再 anchor。「¥18M は妥当」を相手に再認識させる。
>
> **Liên quan:** rule 18 (anchoring), rule 20 (高い対応), rule 23 (ROI).

---

## Bối cảnh / 場面

Sau khi 大垣 reject ¥18M là "厳しい" (rule 19), tới ngày 2 (持ち帰り検討 sau), khách quay lại với "¥16M でないと". Trước khi vội cắt scope, Dũng re-anchor.

---

## ❌ Hội thoại XẤU — không re-anchor, lập tức cắt

| Speaker | Câu |
|---------|-----|
| **大垣** | 「持ち帰り検討の結果、¥16M でないと社内通せません。」 |
| **ズン** | 「分かりました、¥16M で scope -10% で。」 |
| **大垣** | 「ありがとうございます。」 |

**Vì sao xấu:** Dũng bỏ qua cơ hội re-anchor. ¥18M chỉ ngày trước còn solid value, giờ disappear. Khách "won" round 2 → có thể push tiếp ở contract round.

---

## ✅ Hội thoại TỐT — re-anchor + new info + tit-for-tat

*考え*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「持ち帰り検討の結果、¥16M でないと社内通せません。」 |
| **ズン** | 「ご検討ありがとうございます。**改めて整理させていただきますと**【1】、¥18M はROI 4.4 倍、Payback 2.3 ヶ月、3 年 NPV ¥234M という構造で、御社の +¥80M GMV 目標達成に最も合致する設計でございます。」 |
| **ズン** | 「**追加情報として**【2】、Phase 2 同等の SLA 99.9% を維持しつつ、AI レコメンドエンジンの精度を Phase 2 比 +18% (vs. 当初提案 +12%) に拡張可能との社内検証結果が出ました【3】。これにより transaction 単価期待値は +14% に上方修正、Annual return も +¥15M/年改善見込み。」 |
| **ズン** | 「**この value を踏まえつつ、御社の社内ハードルにも合わせる形として**【4】 — **¥17M で scope 維持 + 2 年契約**を再提案。¥16M は scope -15% (AI dashboard 2nd phase 後出し) となります。**御社のご判断としていかがでしょうか**？」 |
| **大垣** | 「+18% 精度の話、稟議書に追加できます。¥17M + 2 年なら社内再協議します。」 |

📝 **Ghi chú:**
- 【1】**「改めて整理」** = signal "ta sẽ restate value", khách biết đợi.
- 【2】**「追加情報として」** = key. Re-anchor cần 新事実 (new info) — KHÔNG phải lặp lại nguyên văn.
- 【3】**社内検証結果 = AI 精度 +18% (上方修正)** — anchor lại với số ấn tượng hơn.
- 【4】**Vẫn show flexibility** "御社の社内ハードルに合わせる" — re-anchor không có nghĩa cứng nhắc, kèm 2 option.

---

## 🎯 Câu chốt

> **「再アンカリング = value 再強調 + 新事実追加 + 2 option。即値引きは leak。」**
>
> *Re-anchor = nhắc lại value + thêm thông tin mới + 2 option. Giảm ngay là leak value.*

---

## ⚠ Tránh

- Re-anchor mà chỉ lặp lại nguyên văn → khách boredom, không hiệu lực
- 新事実 quá yếu (vd: "white paper更新") → khách đọc là filler
- Không kèm tit-for-tat option → khách feel walled off
- Re-anchor liên tục mà không close → khách mệt, walk

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 再アンカリング | さいアンカリング | Re-anchoring |
| 改めて整理 | あらためてせいり | Sắp xếp lại |
| 追加情報 | ついかじょうほう | Thông tin thêm |
| 上方修正 | じょうほうしゅうせい | Điều chỉnh tăng |
| 社内検証 | しゃないけんしょう | Kiểm chứng nội bộ |
| 期待値 | きたいち | Giá trị kỳ vọng |
| 社内ハードル | しゃないハードル | Rào nội bộ |
| 再協議 | さいきょうぎ | Thảo luận lại |


# Rule 28 — Walk away phong nhã / 撤退の作法

> **Luận điểm.** Khi vượt walk-away line, phải walk — nhưng walk **lịch sự để giữ relationship cho deal sau**. Pattern: **(1) Acknowledge khách**, **(2) Express regret**, **(3) Leave door open** ("Phase 4 で改めて"), **(4) Maintain dignity cả 2 bên**. KHÔNG kết thúc bằng "失敗" tone.
>
> 撤退は失敗ではない。次回再 approach のため relationship を保つ。「今回は折り合わなかった」という neutral tone が標準。
>
> **Liên quan:** rule 08 (撤退ライン), rule 26 (脅し対応), rule 35 (sách 06 phần IV — 商談打ち切り).

---

## Bối cảnh / 場面

Round 4: 大垣 + 中村 CFO push xuống ¥14M (dưới walk-away ¥15.5M). Hà CTO đã step in (rule 26) nhưng khách vẫn không đồng ý. Dũng phải walk away phong nhã.

---

## ❌ Hội thoại XẤU — emotional walk

*疲 · 冷*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「最終的に ¥14M でないと無理です。」 |
| **ズン** | 「分かりました、では今回はなしで。残念ですね。Y 社さんに発注ということで…」 |
| **大垣** | 「では失礼します。」 |

**Vì sao xấu:** "残念" + reference Y社 = passive aggressive. Door closed. Phase 4 không có cơ hội. Tone "失敗" rõ ràng.

---

## ✅ Hội thoại TỐT — neutral walk + door open

*2 秒沈黙、その後 · softer tone*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「最終的に ¥14M でないと無理です。」 |
| **ズン** | 「**ご検討、本当にありがとうございました**【1】。¥14M でしたら弊社のご提供できる scope では Phase 3 当初目的の達成が困難となり、結果的に御社にご迷惑をおかけしてしまいます。」 |
| **ズン** | 「**今回は条件面で折り合いがつかず、誠に残念ではございますが、本件はここでクローズとさせていただければと存じます**【2】。」 |
| **ズン** | 「**Phase 2 でのご縁は弊社にとって大変貴重な経験でございます**。**今後御社の事業環境が変わり、またご縁がございましたら、ぜひお声がけください。再度ご一緒できる機会、ぜひお声がけください**【3】。例えば Phase 4 や別案件のご相談、いつでも歓迎いたします。」 |
| **大垣** | 「ご丁寧にありがとうございます。今回は条件が合いませんでしたが、Phase 2 での協業は弊社としても評価しております。今後何かあれば、こちらからもお声がけします。」 |
| **ハー CTO** | 「ありがとうございます。本日のお時間、感謝いたします。」 |

📝 **Ghi chú:**
- 【1】**Acknowledge thời gian khách** — họ đã invest 4 round, phải acknowledge.
- 【2】**Neutral closing language** "条件面で折り合いがつかず" — KHÔNG đổ lỗi cho ai. "残念" + neutral.
- 【3】**Door open phrase** "Phase 4 や別案件、いつでも歓迎" — leave possibility. Khách Nhật ghi nhớ tone này, có thể quay lại 6-12 tháng sau.

---

## 🎯 Câu chốt

> **「『条件面で折り合いがつかず、誠に残念』+door open。emotional + 失敗 tone は禁。」**
>
> *"Không khớp được điều kiện, thật tiếc" + door open. Tone tình cảm + thất bại = cấm.*

---

## ⚠ Tránh

- "Y 社さんに" reference passive-aggressive → door closed
- Express anger/frustration → unprofessional, tin lan ra
- "失敗" / "ダメ" tone → khách Nhật ghi nhớ + truyền tai
- Quên door-open phrase → không có Phase 4 chance

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 撤退 | てったい | Rút lui |
| 折り合いがつかない | おりあいがつかない | Không khớp |
| 誠に残念 | まことにざんねん | Thật tiếc |
| クローズ | kurōzu | Close / kết thúc |
| ご縁 | ごえん | Mối duyên / kết nối |
| 貴重な経験 | きちょうなけいけん | Trải nghiệm quý |
| 事業環境 | じぎょうかんきょう | Môi trường kinh doanh |
| 歓迎 | かんげい | Hoan nghênh |


# Rule 29 — Nibble & late demand handling / ニブル・後出し対応

> **Luận điểm.** **Nibble** = sau khi gần đóng deal, khách thêm yêu cầu nhỏ ("ついでに training 1 日無料で…"). 1 nibble = ¥0.5M, nhiều nibble = ¥3-5M leak. Pattern: **(1) Acknowledge**, **(2) Trade ngược** (KHÔNG cho miễn phí), **(3) Reset clock** (yêu cầu mới = revisit toàn bộ agreement).
>
> 商談ほぼ closed の時点で「ついでに〜」と追加要求 (nibble) が出ることがある。ただで応じない。「条件追加なら全体合意も再 review」と reset clock。
>
> **Liên quan:** rule 24 (譲歩交換), rule 09 (concession plan), sách 06 phần IV rule 33.

---

## Bối cảnh / 場面

Sau Phase 3 chốt ¥17M + 2 năm + dashboard kèm trade (rule 24), 田中 PMO Slack Dũng "ついでに training を 1 日無料で含めていただけますか？社内導入のため" — classic nibble.

---

## ❌ Hội thoại XẤU — accept nibble miễn phí

| | Speaker | Câu (Slack) |
|--|---------|-----|
| **L1** | **田中PMO** | 「ズン様、お世話になっております。Phase 3 contract draft 確認しましたが、ついでに social engineer 部署向け training 1 日無料で追加可能でしょうか？」 |
| **L2** | **ズン** | 「分かりました、サービスで含めます。」 |
| **L3** | (1 週間後) **田中PMO** | 「ありがとうございます！ついでに 2 日目も追加で…」 |
| **L4** | **ズン** | 「えっ、また…？」 |

**Vì sao xấu:** Accept lần 1 → khách push lần 2, 3. Mỗi lần ¥0.3-0.5M leak. Đã sang phase contract mà vẫn drift cost.

---

## ✅ Hội thoại TỐT — trade reset + protect agreement

| | Speaker | Câu (Slack) |
|--|---------|-----|
| **L1** | **田中PMO** | 「ズン様、Phase 3 contract draft 確認しました。ついでに social engineer 部署向け training 1 日無料で追加可能でしょうか？」 |
| **L2** | **ズン** | 「**お声がけありがとうございます**【1】。training 1 日 (¥0.4M 相当) は当初の契約 scope 外となります。**社内 training をご希望でしたら、以下 2 案**【2】**: (A) 有償で ¥0.4M 追加、(B) 既存 scope 内で AI dashboard カスタムを 1 機能 trade、トータル金額不変。」 |
| **L3** | **ズン** | 「**なお、追加要素のご検討に際しては全体合意の再 review が必要となるため、契約締結スケジュールが 1 週間後ろ倒しとなる可能性があります**【3】。ご都合をお聞かせください。」 |
| **L4** | **田中PMO** | 「ご丁寧に。社内で再協議し、後ほど正式に。スケジュール優先で training は当初通り無しで進めます。」 |

📝 **Ghi chú:**
- 【1】**Acknowledge nhẹ** "お声がけありがとうございます" — không cứng "no" ngay.
- 【2】**Trade option (A) 有償 / (B) scope swap** — không cho free, nhưng cho path. Khách tự decide.
- 【3】**Reset clock** = key. Yêu cầu mới = whole agreement re-review = schedule slip → khách thường self-rescind nibble vì timing.

---

## 🎯 Câu chốt

> **「Nibble 無償受けはNG。trade で対応 + 全体 re-review で reset clock。schedule slip が抑止力。」**
>
> *KHÔNG nhận nibble miễn phí. Trade rồi reset clock — schedule slip làm khách tự rút.*

---

## ⚠ Tránh

- "サービスで" → mỗi lần leak ¥0.3-0.5M, nhân với nhiều lần
- Accept verbally rồi quên charge → contract dispute
- Reject cứng "無理です" → khách relationship đau
- Quên reset clock language → khách push tiếp vì biết "tăng 1 thứ free"

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ニブル | niburu | Nibble (gặm thêm) |
| 後出し | あとだし | Đưa thêm sau |
| ついでに | ついでに | Tiện thể |
| サービスで | サービスで | Khuyến mãi miễn phí |
| 全体合意 | ぜんたいごうい | Đồng thuận tổng thể |
| 後ろ倒し | うしろだおし | Đẩy lùi (deadline) |
| 抑止力 | よくしりょく | Sức răn đe |
| 再 review | さいレビュー | Review lại |



---

# Phần IV — Closing + Hợp đồng

# Rule 30 — Confirm point of agreement / 合意点の確認

> **Luận điểm.** Cuối phiên đàm phán, KHÔNG được kết thúc bằng "じゃあそれで". Phải **read back** từng item agreed: giá, scope, timeline, condition. Trong văn hóa 稟議, missing 1 item = sau ringi sẽ phát hiện gap → renegotiate. Read back = lock-in trước khi out of room.
>
> 商談クロージングでは「合意事項の読み戻し」が必須。価格・スコープ・スケジュール・条件を一項目ずつ確認することで、稟議に上げた後の認識ズレを防ぐ。
>
> **Liên quan:** rule 14 (mirror·要約), rule 31 (recap mail), rule 33 (条項調整).

---

## Bối cảnh / 場面

Round 3 đàm phán Phase 3 vừa close ¥17M + 2 năm + dashboard. Trước khi 大垣 đứng dậy, Dũng phải read back. Nếu skip, Slack hôm sau sẽ có "あれ、SLA は 99.5% でしたっけ" và mọi thứ start lại.

---

## ❌ Hội thoại XẤU — close mà không read back

*困*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「では、概ね合意ということで。」 |
| **ズン** | 「はい、ありがとうございます！では契約書を進めます。」 |
| (3日後 Slack) **田中PMO** | 「ズン様、契約書ドラフト拝見しました。**SLA 99.9% となっていますが、当日 99.5% で合意では？**」 |
| **ズン** | 「えっ、99.9% で合意したと記憶しているのですが…」 |

**Vì sao xấu:** Không read back → memory mismatch giữa 2 bên. Khi Dũng nhớ 99.9% còn Tanaka nhớ 99.5% — không có biên bản → khách win because seller phải back down. Skip 30 giây read back = mất ¥1-2M maintenance cost over 2 năm.

---

## ✅ Hội thoại TỐT — read back từng item

*メモ確認*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「では、概ね合意ということで。」 |
| **ズン** | 「ありがとうございます。**最後に本日の合意事項を確認させてください**【1】。1点ずつ読み上げます。」 |
| **ズン** | 「**①価格**: ¥17M (税抜)、**②契約期間**: 2026年7月-2028年6月の2年間、**③スコープ**: AI レコメンドエンジン + 専任PM + AI dashboard カスタム1機能、**④SLA**: 99.9%、**⑤支払**: 月次後払い、**⑥成果物 IP**: 共同所有、**⑦稟議スケジュール**: 御社にて5月末まで【2】。以上で齟齬ございませんでしょうか？」 |
| **大垣** | 「はい、その通りです。1点だけ、**支払サイトは月末締め翌月末払い**でお願いします。」 |
| **ズン** | 「承知いたしました。**月末締め翌月末払いを追記**して、**24時間以内に確認メールをお送りいたします**【3】。本日はありがとうございました。」 |

📝 **Ghi chú:**
- 【1】**「合意事項を確認させてください」** — set up read-back ritual. Không phải optional, là procedure.
- 【2】**7 items numbered** — giá / period / scope / SLA / payment / IP / ringi schedule. Mỗi item là 1 potential gap source.
- 【3】**24h recap mail commit** — bridge sang rule 31. Read back miệng + recap mail = double lock.

---

## 🎯 Câu chốt

> **「合意の口頭読み戻し + 24時間以内 recap メール = ダブルロック。」**
>
> *Read back miệng + recap mail trong 24h = khóa kép. Skip = renegotiate.*

---

## ⚠ Tránh

- "概ね合意" mà không list item → ambiguous = mỗi bên nhớ khác
- Read back nhanh mà skip SLA / payment terms → đây là phần khách hay nhớ khác
- Không hỏi "齟齬ございませんでしょうか" → khách không có cơ hội correct on the spot
- Read back rồi đứng dậy luôn — phải commit recap mail timeline ngay

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 合意事項 | ごういじこう | Items đã đồng thuận |
| 読み戻し | よみもどし | Read back |
| 齟齬 | そご | Sự sai lệch / mismatch |
| 月末締め | げつまつじめ | Chốt cuối tháng |
| 翌月末払い | よくげつまつばらい | Trả cuối tháng kế |
| 共同所有 | きょうどうしょゆう | Đồng sở hữu |
| 概ね | おおむね | Đại thể |


# Rule 31 — Summary recap email / 要約・確認メール

> **Luận điểm.** Trong vòng **24 giờ** sau đàm phán, gửi recap mail liệt kê: (1) attendees, (2) agreed items, (3) open items, (4) next steps + owner + deadline. Recap mail là **văn bản chính thức** trong ringi process — nếu không có, scope sẽ drift trong 1-2 tuần đến lúc contract draft.
>
> 商談後 24 時間以内に「要約・確認メール」を送る。出席者・合意事項・未決事項・次のアクションを明記。これは稟議に添付する正式文書となる。
>
> **Liên quan:** rule 30 (合意確認), rule 32 (LOI / 契約書), sách 03 rule 28 (議事録).

---

## Bối cảnh / 場面

Đàm phán chốt 17:30 thứ Năm. Dũng về văn phòng 18:30. Trễ nhất 17:30 thứ Sáu phải gửi recap. Nếu để sang thứ Hai → khách Ōgaki ringi mà không có evidence → mọi rủi ro thuộc Tiên Phát.

---

## ❌ Hội thoại XẤU — recap mail muộn 3 ngày, format lỏng

*Slack 大垣に · 慌*

| Speaker | Câu |
|---------|-----|
| (月曜 15:00、商談から 5日後) **ズン** | 「大垣様、先日はありがとうございました！合意事項を後ほどメールでお送りします。」 |
| **大垣** | 「ズン様、社内稟議が **金曜から動き始めて**、文書がないため **保留中**です。本日中にいただけますか？」 |
| **ズン** | 「申し訳ございません、すぐ送ります！」 |
| (16:30 送信、 fields 抜けあり) | (件名: 「Phase 3 の件」… body: 短い「合意ありがとうございました。¥17M で 2 年です」) |

**Vì sao xấu:** (a) 5日遅延 = ringi blocked, (b) 件名 vague, (c) body thiếu attendees, open items, next steps. Khách phải nhờ Tiên Phát draft lại → trust降下. Phase 3 lùi 2 tuần.

---

## ✅ Hội thoại TỐT — recap mail trong 24h, format đầy đủ

*Hương review trước khi gửi · file 開く · Slack Hương*

| Speaker | Câu |
|---------|-----|
| (商談翌朝 09:30) **ズン** | 「フオン副部長、Phase 3 商談の確認メール drafts しました。送信前に一度ご確認お願いいたします。」 |
| **フオン** | 「件名 OK、出席者 OK、合意 7 項目 numbered OK、未決 2 項目 OK、次アクション owner+deadline 明記 OK。**いいね、送信して**。」 |
| (10:00 送信) **件名:** | 「【ご確認】Phase 3 商談合意事項のまとめ (4/24 開催)」 |
| **本文要点:** | 「①出席者 ②合意事項 (7項目) ③未決事項 (2項目) ④次のアクション (owner + 期限) ⑤添付: 提案書 v3.2」【1】 |
| (14:00 大垣返信) **大垣** | 「ズン様、迅速なご対応ありがとうございます。**読み戻し通り**で齟齬ございません。1点、稟議の上申は **5月7日** で動きます。」 |
| **ズン** | 「大垣様より OK 返信いただきました【2】。稟議 5/7 上申とのことです。次は契約書 draft を準備します。」 |

📝 **Ghi chú:**
- 【1】**5 sections** = 出席者 / 合意事項 / 未決事項 / 次のアクション / 添付. Skip section nào = recap mail không phục vụ ringi.
- 【2】**OK 返信 = lock**. Mail history này được attach vào ringi document → official record. Nếu khách dispute sau, có proof.
- **24h = SLA**. Khách Nhật mong recap trong 24h business hour. Trễ → trust降下 đo được.

---

## 🎯 Câu chốt

> **「24時間以内 + 5セクション (出席者 / 合意 / 未決 / 次アクション / 添付) = recap mail の標準。」**
>
> *Trong 24h + 5 sections = recap mail chuẩn. Trễ hoặc thiếu section = ringi sẽ block.*

---

## ⚠ Tránh

- 件名 vague "Phase 3 の件" → khách không archive được, search không ra
- Skip "未決事項" → 1 tuần sau contract draft sẽ phát hiện gap
- Skip "owner + deadline" trong next actions → "誰がやるんですか" Slack 3 ngày sau
- Gửi không qua senior review → typo / wrong number sẽ trở thành official record
- Gửi quá muộn cuối tuần (Sat 22:00) → khách Nhật tránh weekend mail; gửi Mon AM còn sạch hơn

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 要約メール | ようやくメール | Recap email |
| 確認メール | かくにんメール | Confirmation email |
| 出席者 | しゅっせきしゃ | Người tham dự |
| 未決事項 | みけつじこう | Items chưa quyết |
| 次のアクション | つぎのアクション | Next actions |
| 上申 | じょうしん | Đệ trình lên cấp trên |
| 添付 | てんぷ | Đính kèm |

---

## 📐 Template

Xem `conversation.json` → `templates[0]` (`format: "email_followup"`) cho recap mail JP/VN với 5 sections.


# Rule 32 — LOI first, contract draft next / 契約書ドラフト・LOI

> **Luận điểm.** Sau recap mail OK, KHÔNG nhảy thẳng sang full contract. Bước trung gian: **LOI (Letter of Intent)** — văn bản 1-2 trang xác nhận **commercial terms + intent to enter contract**, ký 2 bên trong 1-2 tuần. Sau LOI mới là contract draft (4-8 tuần). LOI thiếu = contract draft sẽ bị "重要条件もう一度ね" → re-negotiation.
>
> 商談合意 → LOI (1-2 ページ、commercial terms 確認) → 契約書ドラフト (詳細条項) の 2 段階。LOI を飛ばすと、契約書段階で「主要条件再確認」が発生し再交渉となる。
>
> **Liên quan:** rule 30 (合意確認), rule 31 (recap mail), rule 33 (条項調整).

---

## Bối cảnh / 場面

Recap mail OK reply nhận được. Tuấn đề xuất "LOI khỏi cần, làm contract draft luôn cho nhanh". Hương phủ định — Phase 3 ¥17M qua ringi 5/7, LOI là cây cầu giữa miệng và contract.

---

## ❌ Hội thoại XẤU — skip LOI, jump to full contract

*Slack 内部 · 困*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、recap OK 来たし、契約書ドラフトを直接送ろう。LOI 余計な工程じゃない？」 |
| **ズン** | 「では契約書 v1 を作成して大垣様に送ります。」 |
| (2 週間後) **大垣** | 「ズン様、契約書 v1 拝見しました。**ところで価格 ¥17M は税込ですよね？**」 |
| **ズン** | 「いえ、税抜で recap メールに記載しております…」 |
| **大垣** | 「**社内では税込前提で稟議が動いており**、ここから差額で再交渉になります…」 |

**Vì sao xấu:** Skip LOI → commercial terms (giá, term, scope) chỉ ở mail, không có chữ ký. Khách dispute "tax inclusive vs exclusive" → re-negotiation ¥1.7M. LOI 1 trang ký 2 bên đã ngăn được chính xác chuyện này.

---

## ✅ Hội thoại TỐT — LOI 1-2 trang ký trước contract draft

*Slack · Slack Hương*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「ズン、recap OK 来たね。**次は LOI ドラフト 1-2 ページ**【1】を準備して。 commercial terms 6 項目だけ。詳細条項は後の契約書 draft で詰める。」 |
| **ズン** | 「承知しました。LOI v1 作成して、本日中に弊社内で legal レビュー → 明日大垣様に送付いたします。」 |
| (翌日 LOI 送信、件名:「【LOI】Phase 3 業務委託に関する基本合意書 ご送付の件」) **本文:** | 「Phase 3 業務委託の主要条件 6 項目をまとめた LOI をお送りいたします。**ご捺印頂きましたら、続いて 4 週間以内に本契約書ドラフトをご提示**【2】いたします。」 |
| (3日後) **大垣** | 「ズン様、LOI 拝見しました。**社内 legal も問題なし**、税抜価格を明記頂いており明確です。本日捺印して PDF 送付いたします。」 |
| **ズン** | 「LOI 捺印戻り完了。次は本契約書 draft v1 を 4 週間以内に。条項面の調整に集中できます【3】。」 |

📝 **Ghi chú:**
- 【1】**LOI 6 項目** = 価格 (税抜明記) / 期間 / スコープ summary / SLA / 支払条件 / 効力発生日. 詳細条項 (indemnity, IP detail, termination) は本契約へ.
- 【2】**LOI → 本契約書 4 週間 commitment** = pace control. 1 ページ LOI が 30 ページ本契約の foundation.
- 【3】**LOI 段階で commercial が lock 済み** → 本契約 negotiation は "条項" だけ。商務的 re-open しない (rule 33 へブリッジ).

---

## 🎯 Câu chốt

> **「LOI = 商務合意のロック。本契約 = 条項詳細。順番を飛ばすと商務再交渉が発生する。」**
>
> *LOI khóa commercial. Contract khóa terms. Skip LOI = commercial sẽ re-open lúc draft.*

---

## ⚠ Tránh

- "LOI 余計な工程" mindset → 4 週間 contract draft 中 1 つ条件異見 = 全体 re-open
- LOI に税込/税抜の表記なし → trap 100%
- LOI を法務レビューなしで送付 → typo / wording が後で binding interpretation 問題に
- LOI 送付して 1 ヶ月放置 → 失効 / 関心冷め; **捺印期限 2 週間** 明記

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| LOI | エル・オー・アイ | Letter of Intent |
| 基本合意書 | きほんごういしょ | Basic agreement (LOI JP terminology) |
| 捺印 | なついん | Đóng dấu (sign + seal) |
| 本契約書 | ほんけいやくしょ | Main contract |
| 主要条件 | しゅようじょうけん | Commercial terms cốt lõi |
| 効力発生日 | こうりょくはっせいび | Ngày có hiệu lực |
| 法務 | ほうむ | Bộ phận pháp chế / Legal |
| 税抜 | ぜいぬき | Chưa bao gồm thuế |

---

## 📐 Template

Xem `conversation.json` → `templates[0]` (`format: "report"`) cho LOI 1-2 trang JP/VN với 6 commercial term sections.


# Rule 33 — Final negotiation on terms / 契約条項の最終調整

> **Luận điểm.** Sau LOI, contract draft đi vào phase 条項調整. Top 3 mục căng nhất với khách Nhật: **(1) Indemnity (損害賠償上限)**, **(2) IP ownership** (đặc biệt là code & training data), **(3) SLA + penalty**. Mục tiêu: cap liability ở mức **annual contract value** (¥17M, KHÔNG unlimited), IP code thuộc client + reusable component thuộc Tiên Phát.
>
> 本契約交渉は条項詳細フェーズ。indemnity 上限・IP 帰属・SLA 罰則 が三大論点。Cap は年契約額相当が業界標準。
>
> **Liên quan:** rule 32 (LOI), rule 24 (譲歩交換), rule 43 (escalation).

---

## Bối cảnh / 場面

Contract draft v1 Tiên Phát gửi 大垣. Bên 白鷗 legal trả về v2 với (a) indemnity cap unlimited, (b) IP toàn bộ thuộc 白鷗 (kể cả reusable component). Hà CTO phản đối — Dũng cần đàm phán 3 vòng để đạt cap = ¥17M + IP split clause.

---

## ❌ Hội thoại XẤU — accept terms cứng để close nhanh

*legal redline 共有 · 早く close したい · 急に call*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「ズン様、弊社 legal からの修正版です。**indemnity は無制限**、IP は **当社帰属** でお願いします。」 |
| **ズン** | 「承知しました、それで進めます。」 |
| (1 ヶ月後 contract 締結、Tuấn 知る) **トゥアン** | 「ズン、これ **無制限損害賠償** じゃないか…1 件 bug で会社潰れるぞ。」 |
| **ハー CTO** | 「これ legal レビュー通したのか？ **撤回交渉**を今すぐかけるしかない。」 |

**Vì sao xấu:** Indemnity unlimited = 1 production incident có thể dẫn đến ¥100M+ claim — Tiên Phát phá sản. IP toàn bộ thuộc 白鷗 = reusable AI component không thể dùng cho khách khác → Phase 4 mất margin. Đây là 2 fatal mistakes.

---

## ✅ Hội thoại TỐT — fine-tune 3 điểm với data + escalation

*沈黙 5秒 → メモ*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「indemnity 無制限、IP 当社帰属でお願いします。」 |
| **ズン** | 「ご要望承知しました。**ただし**【1】**、indemnity 無制限は弊社 legal および取締役会上限規定 (年契約額) を超えるため、本日中に持ち帰り検討させてください**。」 |
| (社内 緊急召集) **ハー CTO** | 「3 つ譲れない: ①損害賠償上限 = 年契約額 ¥17M、②IP 分割 (clientA 固有コードは貴社、reusable AI component は弊社)、③SLA 99.9% は維持。これ以下なら撤退【2】。」 |
| (翌日 大垣との call) **ズン** | 「お時間いただきありがとうございます。**3 点ご相談**: (i) 損害賠償上限を **年契約額 ¥17M に設定**、業界標準でございます【3】。(ii) IP は **2 層構造**、御社固有 customization は御社、汎用 AI component は弊社、ライセンス供与いたします。(iii) SLA 99.9% 維持、罰則は **月額 5% upper cap**。」 |
| **大垣** | 「…IP 2 層構造は理解できます。indemnity 上限も legal 慣行ですね。社内検討の上、**3 営業日以内にお返事**いたします。」 |
| (3日後) **大垣** | 「3 点とも承諾いたします。final draft に反映お願いします。」 |

📝 **Ghi chú:**
- 【1】**「ただし」 + 「持ち帰り検討」** — 即決 NO ではなく escalation バッファ。日本流 disagree 礼儀.
- 【2】**Hà CTO walk-away line 明確** = 3 点。これ未満なら本当に撤退。曖昧なら negotiation で flip される.
- 【3】**「業界標準」 framing** = 個人主張ではなく市場 norm. 受け入れ confidence 高い.

---

## 🎯 Câu chốt

> **「Indemnity 上限 = 年契約額、IP 2 層構造、SLA 99.9% + 罰則 cap。3 点死守。」**
>
> *Indemnity cap = annual contract value. IP split 2 layers. SLA + penalty cap. Tử thủ 3 điểm.*

---

## ⚠ Tránh

- Indemnity 無制限 → 1 件で会社潰れる. ALL legal は disagree
- IP 全帰属 → reusable component が再利用不可、利益 -30% 累積
- SLA 罰則 cap なし → downtime 1 日で月額の数倍払う羽目に
- 即決 OK → senior レビューなしで signed = 取消困難
- 撤回交渉 = relationship dent。最初に walk-away line を明確にし、絶対に accept しない

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 損害賠償 | そんがいばいしょう | Bồi thường thiệt hại / indemnity |
| 上限 | じょうげん | Cap / mức trần |
| 帰属 | きぞく | Thuộc về |
| 知的財産 | ちてきざいさん | IP (sở hữu trí tuệ) |
| 罰則 | ばっそく | Penalty |
| 業界標準 | ぎょうかいひょうじゅん | Industry standard |
| 取締役会 | とりしまりやくかい | HĐQT |
| ライセンス供与 | ライセンスきょうよ | Cấp license |
| 営業日 | えいぎょうび | Ngày làm việc |


# Rule 34 — Formal signature request / 調印依頼

> **Luận điểm.** Final contract OK 2 bên → bước formal request signature. Câu chuẩn JP business: 「**ご署名・ご捺印いただけますでしょうか**」. KHÔNG được dùng "サイン" casual hay 「契約書送ります」 dry. Phải đi kèm: (a) lý do timing, (b) suggested method (eSignature vs print/seal), (c) deadline rõ.
>
> 最終契約合意後、調印依頼は決まり文句「ご署名・ご捺印いただけますでしょうか」で。timing・方法・期限 を 1 メールで明示する。
>
> **Liên quan:** rule 33 (条項調整), rule 36 (post-deal 挨拶), rule 37 (kickoff).

---

## Bối cảnh / 場面

Final contract v3 sau 3 round terms negotiation đã OK. Hà CTO ký bên Tiên Phát. Bây giờ Dũng request 大垣 ký bên 白鷗. Kickoff dự kiến 7/1 → cần ký xong 6/25.

---

## ❌ Hội thoại XẤU — request signature casual + không deadline

| | Speaker | Câu (mail) |
|--|---------|-----|
| **L1** | (件名:「契約書」) **ズン** | 「大垣様、契約書を添付しました。サインお願いします。」 |
| **L2** | (3 週間沈黙) **ズン** *(焦)* | 「大垣様、その後いかがでしょうか？」 |
| **L3** | **大垣** | 「ズン様、優先順位として social engineer 案件が走っており、契約書は来月見ます。」 |
| **L4** | **ズン** *(キックオフ delay)* | (キックオフ 7/1 → 7/22 後ろ倒し決定) |

**Vì sao xấu:** (a) 件名 「契約書」 — không urgency, archive bottom, (b) 「サイン」 casual với business JP, (c) không deadline → khách de-prioritize, (d) follow-up muộn. Project delay 3 週間 = ¥1.5M margin loss.

---

## ✅ Hội thoại TỐT — formal request + 3 elements

| | Speaker | Câu (mail) |
|--|---------|-----|
| **L1** | (件名:「【ご捺印のお願い】Phase 3 業務委託契約書 (キックオフ 7/1 予定)」) **ズン** | 「大垣様、いつもお世話になっております。」 |
| **L2** | **ズン** *(本文)* | 「Phase 3 業務委託契約書 final 版が両社合意に至りましたので、お送りいたします。**つきましては、ご署名・ご捺印いただけますでしょうか**【1】。」 |
| **L3** | **ズン** | 「**キックオフを 7 月 1 日に予定**しているため、**6 月 25 日 (水) までに**ご捺印頂けますと幸いです【2】。」 |
| **L4** | **ズン** | 「方法は、(a) eSignature (DocuSign リンク添付)、または (b) 紙原本郵送 (本日中に発送可能) のいずれかをお選びいただけます【3】。ご都合のよろしい方をお知らせください。」 |
| **L5** | (翌日) **大垣** | 「ズン様、迅速なご手配ありがとうございます。eSignature で進めさせていただきます。本日午後に処理いたします。」 |
| **L6** | (16:30) **DocuSign 完了通知** → **ズン** *(Slack Hương)* | 「Phase 3 契約締結完了しました。Hà CTO + 大垣様 両社捺印済【4】。」 |

📝 **Ghi chú:**
- 【1】**「ご署名・ご捺印いただけますでしょうか」** = 調印依頼の決まり文句. 「サイン」 casual NG.
- 【2】**Deadline 明示 + 理由 (キックオフ日)** = 急かしではなく合理的. 期限 1 週間以上余裕を持つ.
- 【3】**2 method 提示** = 紙印鑑文化と eSignature 普及の混在期。選ばせると自分の都合で動ける.
- 【4】**両社捺印済 = closure**. 内部 Slack で完了報告 → rule 37 internal kickoff へ.

---

## 🎯 Câu chốt

> **「ご署名・ご捺印いただけますでしょうか + キックオフ日逆算 deadline + 2 method 提示 = 調印依頼の標準。」**
>
> *Câu formal + deadline logic ngược từ kickoff + 2 phương án = signature request chuẩn.*

---

## ⚠ Tránh

- 「サイン」 casual → 商務文書では NG, 「ご署名・ご捺印」を使う
- 件名「契約書」のみ → urgency 0
- Deadline なし → 1-2 ヶ月放置
- Single method (紙のみ / eSignature のみ) → 古い印鑑文化 or 新派どちらも逃す
- Follow-up なし 3 週間 → "プッシュもしてないから優先度低いんだ" と判断される

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 調印 | ちょういん | Signing (formal) |
| ご署名 | ごしょめい | Sign (kính ngữ) |
| ご捺印 | ごなついん | Đóng dấu (kính ngữ) |
| 業務委託契約書 | ぎょうむいたくけいやくしょ | Hợp đồng giao việc / SOW contract |
| 原本 | げんぽん | Bản gốc |
| eSignature | イー・シグネチャー | eSignature |
| 締結 | ていけつ | Ký kết |
| 急かし | せかし | Thúc giục |


# Rule 35 — Negotiation walk-away gracefully / 商談打ち切り

> **Luận điểm.** Khi terms không thể bridge → walk away. KHÔNG nói 「お断りします」 cứng. Câu chuẩn: 「**条件面で折り合いがつかず、今回は誠に残念ながら見送りとさせていただきます**」 + 「**ご縁がございましたら**」 maintain relationship door. JP business: relationship dài hạn quan trọng hơn deal đơn lẻ — walk away phong nhã = next opportunity.
>
> 条件 bridge 不可で打ち切る場合、「お断り」 cứng は relationship 切断。「条件面で折り合いがつかず」+「ご縁がございましたら」で dignity 保持し関係維持。
>
> **Liên quan:** rule 28 (撤退作法), rule 36 (post-deal挨拶).

---

## Bối cảnh / 場面

Phase 3 round 4: 大垣 push final ¥14M (dưới walk-away ¥15M của Hà CTO). Dũng đã trade scope, ROI reframe — không bridge được. Phải walk-away phong nhã, giữ door cho Phase 4 năm sau.

---

## ❌ Hội thoại XẤU — walk-away cứng + relationship cắt

*疲れ · 沈黙、メモ閉じる*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「最終 ¥14M でお願いします。これ以上は弊社難しい。」 |
| **ズン** | 「¥14M では弊社利益が出ません。**お断りします**。」 |
| **大垣** | 「…そうですか。では、本日はここまでということで。」 |
| (3 ヶ月後 Phase 4 案件発生時) **大垣** | (社内: 「ティエンファットは 1 ラウンドで打ち切る会社」と評価) → 入札不参加 |

**Vì sao xấu:** "お断りします" cứng + không buffer phrase → khách felt rejected on personal level. JP business memory dài 5-10 năm. 1 vụ walk-away vụng có thể cắt 3-5 vụ tiếp theo. Phase 4 ¥30M lost.

---

## ✅ Hội thoại TỐT — phong nhã, blame "条件" không "貴社"

*沈黙 5秒、メモ確認 · 姿勢正す、メモを取る*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「最終 ¥14M でお願いします。」 |
| **ズン** | 「ご検討いただきましてありがとうございます。」 |
| **ズン** | 「**誠に申し訳ございませんが、条件面で折り合いがつかず、今回は誠に残念ながら見送りとさせていただきます**【1】。」 |
| **ズン** | 「**¥14M は弊社の原価構造上、品質を維持しての提供が困難**【2】な水準でございます。半端な品質で御社にご迷惑をおかけする方が、長期的に良くないと判断いたしました。」 |
| **ズン** | 「**今後また御社のご状況・ご予算が変わられた際、ご縁がございましたら**【3】、ぜひお声がけください。本日は貴重なお時間をいただき、誠にありがとうございました。」 |
| **大垣** | 「ズン様、誠実なご回答ありがとうございます。**こちらも社内で再検討の余地**があります。一度持ち帰らせてください。」 |
| (1 週間後) **大垣** | 「ズン様、社内で予算を ¥15.5M まで引き上げました。再度 negotiation お願いできますか？」 |

📝 **Ghi chú:**
- 【1】**「条件面で折り合いがつかず」** = blame "条件" abstract chứ không "貴社". Face保持 cả 2 bên.
- 【2】**「品質維持困難」 framing** = walk-away là vì "御社のため" không phải tham. Reverses dynamic.
- 【3】**「ご縁がございましたら」** = magic phrase mở door tương lai. JP relationship 5-10 năm memory.
- L6-L7 bonus: walk-away phong nhã có khi trigger khách re-budget. Hard "no" thì không có cơ hội này.

---

## 🎯 Câu chốt

> **「条件面で折り合いがつかず + ご縁がございましたら = 関係維持型 walk-away。」**
>
> *Blame condition không blame people + magic phrase ご縁 = walk-away maintain relationship.*

---

## ⚠ Tránh

- 「お断りします」 / 「無理です」 cứng → relationship cắt 5-10 năm
- Blame "貴社" / "御社の予算" → khách face đau
- Walk-away rồi tiếp tục push 「もう一度ご検討を…」 → contradicts walk-away, lộ desperate
- Skip 「ご縁がございましたら」 → không leave door
- Walk-away mà không sau email follow-up giữ liên lạc level low (rule 36)

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 打ち切り | うちきり | Hủy, dừng |
| 折り合いがつかず | おりあいがつかず | Không bridge được điều kiện |
| 見送り | みおくり | Tạm hoãn / không tiến hành |
| 原価構造 | げんかこうぞう | Cấu trúc giá thành |
| ご縁 | ごえん | Duyên / connection |
| 半端な | はんぱな | Nửa vời |
| 再検討 | さいけんとう | Xem xét lại |


# Rule 36 — Post-deal greeting (conservative) / 商談成立後の挨拶

> **Luận điểm.** Sau ký xong, KHÔNG nên hype "ありがとうございます！！" 3 dấu chấm than. JP business: tone conservative, focus 「**身が引き締まる**」 (cảm nhận trọng trách) thay vì celebration. Hype = "未熟" perception. Câu chuẩn: 「**身の引き締まる思いです**」 + 「期待にお応えできるよう」 commit.
>
> 商談成立後の挨拶は控えめに。「ありがとうございます！！」は未熟な印象。「身の引き締まる思い」「期待に応える」が大人の表現。
>
> **Liên quan:** rule 34 (調印), rule 37 (内部 kickoff), rule 39 (関係者感謝).

---

## Bối cảnh / 場面

DocuSign 完了通知 16:30。Dũng vui vẻ. Cần gửi thank-you mail cho 大垣. Đây là first impression cho phase delivery — quá hype = lo. Quá dry = lạnh. Cần "身が引き締まる" tone.

---

## ❌ Hội thoại XẤU — hype + casual

| | Speaker | Câu (mail) |
|--|---------|-----|
| **L1** | (件名:「ありがとうございます！！」) **ズン** | 「大垣様!! 契約書ご捺印ありがとうございます！！本当に嬉しいです！！」 |
| **L2** | **ズン** | 「これからも何卒よろしくお願いします！期待を超えるようがんばります！！」 |
| **L3** | (大垣 内部 PM 田中 に転送) **大垣 メモ** | 「ティエンファットの BD ちょっと若いな。**delivery が大丈夫か少し不安**。田中さん、初回 weekly でしっかり grip お願い。」 |
| **L4** | (Tanaka PMO 内部 Slack) **田中** | 「了解しました。最初は厳しめに review します。」 |

**Vì sao xấu:** 3 dấu chấm than + 「嬉しいです」 emotional expression → JP exec đọc thấy "学生っぽい". Khách trở nên **defensive** ngay từ đầu phase delivery — Tanaka PMO sẽ scrutinize mỗi report. Project khó hơn 30%.

---

## ✅ Hội thoại TỐT — conservative + commit tone

| | Speaker | Câu (mail) |
|--|---------|-----|
| **L1** | (件名:「ご捺印御礼 — Phase 3 業務委託契約 締結のお礼」) **ズン** | 「大垣様、いつもお世話になっております。」 |
| **L2** | **ズン** *(本文)* | 「この度は Phase 3 業務委託契約のご捺印を頂戴し、誠にありがとうございました【1】。長期にわたる discussion を経て、両社合意に至りましたこと、心より御礼申し上げます。」 |
| **L3** | **ズン** | 「**御社からの信頼を頂戴したことに対し、身の引き締まる思いでございます**【2】。」 |
| **L4** | **ズン** | 「**頂戴したご期待にお応えできますよう、弊社一同 全力で取り組んでまいります**【3】。引き続き、何卒よろしくお願い申し上げます。」 |
| **L5** | (大垣 reply) **大垣** | 「ズン様、ご丁寧なご挨拶ありがとうございます。**こちらこそ、Phase 2 同様 高い品質**を期待しております。Tanaka PMO より **キックオフ MTG の段取り**をご連絡差し上げます。」 |
| **L6** | (社内 Slack) **ズン → Hương** | 「Phase 3 締結御礼メール送信完了。返信から大垣様 friendly tone【4】。次は Tanaka PMO とキックオフ調整入ります。」 |

📝 **Ghi chú:**
- 【1】**「誠にありがとうございました」** — formal だが 1 つだけ. !!! 不要.
- 【2】**「身の引き締まる思い」** = magic phrase. 「嬉しい」 emotion ではなく responsibility。Adult tone.
- 【3】**「ご期待にお応えできますよう」** = 未来 commit. focused on delivery, not celebration.
- 【4】**Reply の "こちらこそ"** = warm sign. Hype だと "ありがとうございました。引き続きよろしく" cold reply に終わる.

---

## 🎯 Câu chốt

> **「ありがとうございます！！ ❌ → 身の引き締まる思いです ✅。Hype = 未熟、commit = 大人。」**
>
> *Hype 3 chấm than = "non". Conservative + commit = "trưởng thành".*

---

## ⚠ Tránh

- 「！！」 多用 → JP exec mail で完全 NG
- 「嬉しい」 / 「最高です」 emotional → 学生レベル
- Casual な感謝 「サンキューです！」 → 即終了 relationship
- 即 next step push (「次のフェーズも is お願いします!」) → desperate. Phase 3 delivery が先
- Reply 待たずに follow-up 連発 → 静寂を尊重

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 身の引き締まる思い | みのひきしまるおもい | Cảm thấy trách nhiệm nặng nề |
| 御礼 | おんれい | Lời cảm ơn (formal) |
| 頂戴 | ちょうだい | Nhận (kính ngữ) |
| 全力でお取組み | ぜんりょくでおとりくみ | Toàn lực cam kết |
| 信頼 | しんらい | Tin tưởng |
| 段取り | だんどり | Sắp xếp |
| 締結 | ていけつ | Ký kết |


# Rule 37 — Internal kickoff hand-off / 社内キックオフ

> **Luận điểm.** Sau ký, phase delivery do Tanaka PMO + Tuấn drive — KHÔNG phải Dũng. Nhưng Dũng owns hand-off: **(1) Negotiation context summary** (tại sao ¥17M, scope mỗi phần đến từ trade nào), **(2) Khách side personality map** (Ōgaki direct, Tanaka detail), **(3) Open promises** (mọi commitment miệng còn nợ). Skip hand-off → delivery team rediscover, redo work, cost time.
>
> 商談 → delivery 引き継ぎでは、価格・スコープの背景、相手 personality、口頭 commitment を文書化して PMO + Tech Lead に渡す。
>
> **Liên quan:** rule 30 (合意確認), rule 36 (post-deal挨拶), sách 04 rule 30 (持ち帰り相談).

---

## Bối cảnh / 場面

Phase 3 ký xong thứ Hai. Thứ Tư có internal kickoff: Tuấn (Tech Lead delivery), Tanaka PMO 白鷗 join async, Dũng hand-off. Nếu Dũng chỉ "contract attach, có gì hỏi" → tuần thứ 2 Tuấn sẽ Slack "scope item này từ đâu ra?" và Ōgaki Slack lại Dũng → spiral.

---

## ❌ Hội thoại XẤU — hand-off lỏng, không context

| | Speaker | Câu (社内 MTG) |
|--|---------|-----|
| **L1** | **ズン** *(15分 MTG)* | 「トゥアン、Phase 3 contract attach しました。SOW 通りに進めてください。質問あれば Slack で。」 |
| **L2** | **トゥアン** | 「OK、分かった。」 |
| **L3** | (2 週間後) **トゥアン** *(Slack)* | 「ズン、SOW の **AI dashboard カスタム 1 機能** とは具体的に何？大垣様何ご希望？」 |
| **L4** | **ズン** *(忙しく forget)* | 「えっと、確か customer churn prediction だった気がします…」 |
| **L5** | **トゥアン** | 「気がしますじゃ困る。大垣様に直接確認するから、契約交渉の context 全部教えて。」 |

**Vì sao xấu:** Hand-off 15 phút + "質問あれば Slack" → context loss. Tuấn buộc phải Slack Ōgaki direct → khách wonder "あれ、ズンさん共有してないの？" → trust dent. ¥0.5M effort lost trên unnecessary discovery.

---

## ✅ Hội thoại TỐT — 30 phút structured hand-off + doc

*MTG 開始 · ① context · ② personality · ③ open promises · Slack 同期*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Phase 3 内部キックオフ、30 分です。本日のアジェンダは **3 セクション**【1】: ①交渉 context、②白鷗側 personality map、③open promises。事前に hand-off doc 共有済み。質問はその場で。」 |
| **ズン** | 「**価格 ¥17M は Phase 2 比 +24%**、内訳は AI レコメンド + 専任 PM + dashboard customization 1 機能。trade で 2 年契約を取った代わりに、契約期間中 SLA 99.9% commit。なので **SLA 99.5% に落とすことは交渉的に NG**【2】、技術的に可能でも避ける。」 |
| **ズン** | 「大垣様 — direct、数字主義、沈黙が長い (=熟考中、急かさない)。**初回 weekly は厳しめ review される可能性高い** (rule 36 hype したら更に)。Tanaka PMO — Slack-heavy、detail-oriented、async OK。Nakamura CFO は monthly executive review 1 度だけ参加、財務指標厳しい。」 |
| **ズン** | 「**口頭 commitment 2 件**【3】: (a) 8 月初旬に Phase 4 scope 軽く discussion (binding 無し)、(b) Tanaka PMO に毎週金曜 dashboard preview 共有 — これは契約外サービス、注意。」 |
| **トゥアン** | 「了解。SLA 99.9% の reasoning ありがたい。最初 sprint で reliability budget 厳しめに設定する。Tanaka PMO の金曜 preview は内部 calendar 入れる。」 |
| **田中PMO** | 「ズン様、ありがとうございました。tomorrow 朝、Tuấn さんと初回 sync 設定します。引継ぎ doc 拝見しました【4】、 personality map 助かります。」 |

📝 **Ghi chú:**
- 【1】**3 セクション structure** — context / personality / promises. それぞれ 8-10 分.
- 【2】**「交渉的 NG」 vs 「技術的可能」** = delivery team が知らないと shortcut で SLA 落とす可能性. Tradeoff の歴史を共有.
- 【3】**口頭 commitment 必ず文書化**. 「ついで」「次回も」 は契約外でも顧客記憶。Tanaka PMO 知らないと将来 nibble (rule 29) source.
- 【4】**Pre-share doc + 同期 read** = MTG が確認の場になる、 discovery の場ではない.

---

## 🎯 Câu chốt

> **「ハンドオフ 3 セクション (context / personality / open promises) + 事前 doc 共有 = delivery team 立ち上がり -2 週間。」**
>
> *Hand-off 3 sections + pre-share doc = delivery team start sớm 2 tuần.*

---

## ⚠ Tránh

- 「contract 読んでください」 only → context loss 100%
- Personality map skip → delivery team が "なぜ Ōgaki さん厳しい" 自学。1 ヶ月コスト
- 口頭 commitment 文書化忘れ → 顧客から急に "あれは" 引用 → contract 外なのに対応せざるを得ず
- Hand-off MTG なし、Slack DM のみ → 文脈が search でき even retrievable
- Hand-off 後も Dũng が delivery 質問対応続ける → ownership が曖昧, Tuấn 育たず

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| キックオフ | kickoff | Kickoff |
| 引き継ぎ | ひきつぎ | Hand-off |
| 内訳 | うちわけ | Cấu thành / breakdown |
| 専任 | せんにん | Chuyên trách |
| commitment | コミットメント | Cam kết |
| reliability budget | リライアビリティバジェット | Reliability budget |
| 同期 | どうき | Đồng bộ / sync |


# Rule 38 — Public PR release joint approval / 対外発表

> **Luận điểm.** PR release announce contract = excellent marketing for cả 2 bên — nhưng JP business **cực kỳ sensitive** với wording. Bắt buộc: (a) **joint approval** từ both legal + PR depts, (b) tránh exact ¥ figure (dùng "数千万円規模"), (c) tên client trong câu sau Tiên Phát (KHÔNG đặt 白鷗 đầu giả "勝った" tone), (d) embargo 同日同時刻 release.
>
> 対外 PR は両社 legal + PR の joint approval 必須。金額明示は避け「数千万円規模」, embargo 同時 release が日本流。
>
> **Liên quan:** rule 36 (post-deal挨拶), rule 39 (関係者感謝).

---

## Bối cảnh / 場面

Phase 3 Pricing ¥17M — milestone. Marketing Hizashi muốn release. Linh (Marketing intern) draft v1, Dũng phối hợp với 白鷗 PR. Mistake # 1: announce trước khi 白鷗 PR approve. Mistake # 2: include exact ¥17M.

---

## ❌ Hội thoại XẤU — solo release + exact figure

*Slack Dũng · 忙しく流し読み · 電話 angry · 青*

| Speaker | Câu |
|---------|-----|
| **リン** | 「ズン先輩、Phase 3 締結 PR draft できました! ¥17M deal 強調しています! 明日 publish OK ですか?」 |
| **ズン** | 「OK、進めて。」 |
| (翌日 13:00 publish) | 「ティエンファット、白鷗株式会社と Phase 3 で ¥17M 契約締結」 |
| (15:30) **大垣** | 「ズン様、**弊社 PR 部から何の連絡もなく**、しかも **金額が明示**されています。**競合他社に弊社 IT 予算が exposed**、即時 take-down お願いします!」 |
| **ズン** | 「申し訳ございません、すぐ削除します…」 |

**Vì sao xấu:** (a) Solo release → 白鷗 PR 未通知, (b) ¥17M exposed → 競合 → 来年予算 削減 risk, (c) Take-down が公開された fact = 白鷗 social reputation dent. Phase 4 機会消滅.

---

## ✅ Hội thoại TỐT — joint approval + 数千万円規模 + embargo

*Dũng + Hương に draft 共有 · 大垣にメール · Slack Hương*

| Speaker | Câu |
|---------|-----|
| **リン** | 「フオン副部長、ズン先輩、Phase 3 締結 PR ドラフト v1 です。**金額は『数千万円規模』表記**【1】、白鷗様の名前は弊社 名前の後段に配置しています。joint approval 想定。」 |
| **フオン** | 「いいね。次に **白鷗 PR 部にメール → 田中 PMO 経由で大垣様に paralel 共有**【2】、両社 legal レビュー後に embargo date を decide。」 |
| **ズン** | 「大垣様、Phase 3 締結を弊社 marketing が PR したい旨、ご相談です。draft 添付、 金額は『数千万円規模』表記。**御社 PR 部のレビュー・両社同時 embargo (例: 5 月 15 日 朝 9 時)** をご相談させていただけますでしょうか。」 |
| (3日後) **大垣** | 「ズン様、弊社 PR 部 review 完了。文言 2 箇所 minor 修正で OK。embargo 5 月 15 日 朝 9 時、両社同日同時刻 release で問題ございません。**joint quote** として『大垣 営業部長コメント』も入れさせていただきます。」 |
| (5/15 09:00 同時 release、件名:「ティエンファット株式会社、白鷗株式会社と AI 業務委託 Phase 3 締結 — 数千万円規模」) | (両社サイトに掲載) |
| **ズン** | 「PR 同時 release 完了。大垣 quote 入りで joint announcement 体裁【3】。Linh 良い仕事した。」 |

📝 **Ghi chú:**
- 【1】**「数千万円規模」 framing** = 競合に正確 budget exposed しない. Industry norm.
- 【2】**Joint approval flow**: 自社 PR draft → 自社 legal → 白鷗 PR (formal channel) → 大垣 (営業窓口 parallel) → 両社 legal → embargo decide.
- 【3】**Joint quote** = 「大垣コメント」入りで両社 announcement 体裁。一方的 announcement より trust 高.
- **Embargo 同日同時刻** = 「うちが先に発表した」感を avoid. JP は 平等 release を重視.

---

## 🎯 Câu chốt

> **「Joint approval + 数千万円規模 + 同時 embargo = 関係維持型 PR。¥ 明示は競合に予算暴露で来年マイナス。」**
>
> *Joint approval + framing số tiền + embargo simultaneous = PR giữ relationship. Lộ ¥ chính xác = lộ budget khách → năm sau bị cắt.*

---

## ⚠ Tránh

- Solo release → relationship dent immediate
- ¥ exact figure → 競合に予算 exposed → 来年 budget cut risk
- 白鷗 名前先 (例: 「白鷗株式会社、ティエンファット社と…」) → 「ティエンファットが selected vendor」 dynamic に逆 (謙虚さ的 OK だが embedded marketing 効果 reduced)
- Embargo 1 日ズレ → "うちが先" 感
- Joint quote なし → unilateral announcement, 信頼度 down

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 対外発表 | たいがいはっぴょう | Công bố ra ngoài |
| プレスリリース | プレスリリース | Press release |
| 数千万円規模 | すうせんまんえんきぼ | Quy mô vài chục triệu yên |
| Embargo | エンバーゴ | Embargo (thời điểm phát hành) |
| 同時 release | どうじリリース | Cùng lúc release |
| Joint quote | ジョイントクオート | Trích dẫn chung |
| 体裁 | ていさい | Hình thức / dáng vẻ |
| 文言 | もんごん | Câu chữ / wording |

---

## 📐 Template

Xem `conversation.json` → `templates[0]` (`format: "report"`) cho PR release JP với Tiêu đề / Lead / Body / Quote / Boilerplate sections.


# Rule 39 — Stakeholder thank-you / 関係者への感謝

> **Luận điểm.** Sau ký, KHÔNG chỉ thank Ōgaki và Hà CTO. Phải thank toàn bộ chuỗi: **(1) Khách side** — Tanaka PMO, Nakamura CFO, even reception, **(2) Mình side** — Tuấn / Linh / Loan, đặc biệt **junior staff** thường bị overlook. Thank junior bằng cách specific (KHÔNG generic 「お疲れ様」). Junior cảm nhận đầu tư → loyalty + future performance.
>
> 商談成立後の感謝は senior だけでなく PMO・CFO 含む chain 全員、特に junior 含めて specific に行う。"お疲れ様"だけでは未投資メッセージ。
>
> **Liên quan:** rule 36 (post-deal挨拶), rule 37 (kickoff), rule 38 (PR).

---

## Bối cảnh / 場面

Phase 3 ký + PR release thứ Năm. Chiều thứ Sáu Dũng có 1 giờ — sequence thank-you mail. Senior dễ nhớ; thử thách là junior staff (Linh, Loan, Hải nếu support background).

---

## ❌ Hội thoại XẤU — chỉ thank senior + generic 「お疲れ様」

*冷*

| Speaker | Câu |
|---------|-----|
| (金曜 16:00 Slack #general) **ズン** | 「Phase 3 締結! 大垣様 + ハー CTO に感謝! みなさんお疲れ様でした!」 |
| (Linh、Loan などはこれだけ) | … |
| (1 ヶ月後、Phase 4 提案準備) **ズン** | 「リン、Phase 4 deck をお願い。」 |
| **リン** | 「ズン先輩、私は今 別案件で…」 |
| (背景: Linh は Phase 3 PR を 3 日 overtime で作成、感謝された記憶 specific になし) |  |

**Vì sao xấu:** Generic "お疲れ様" = 全員に同じ = 個別貢献 invisible。Junior は「自分の effort 認識されてない」と感じる → 次のお願い時に冷たい response。Loyalty drift。

---

## ✅ Hội thoại TỐT — chain 全員 + junior specific

*白鷗 大垣にメール、CC: Tanaka PMO + Nakamura CFO · 社内 Slack DM Linh · 社内 Slack DM Loan*

| Speaker | Câu |
|---------|-----|
| (金曜 16:00 Hương に相談) **ズン** | 「フオン副部長、Phase 3 関係者感謝メールを書きます。Senior 6 名、 junior 4 名分で個別 specific にします【1】。レビューお願いします。」 |
| **ズン** | 「大垣様、Tanaka 様、Nakamura 様 — Phase 3 締結に至りましたこと、皆様のお力添えあってこそでございます。**Tanaka 様には毎週の細やかな進捗確認**、**Nakamura 様には financial review でのご厳格なご指摘**【2】、改めて感謝申し上げます。」 |
| **ズン** | 「リン、Phase 3 PR の件 ありがとう! **特に embargo 5/15 09:00 に間に合わせるため 5/13-14 で 2 晩 overtime 対応してくれた件**【3】、本当に助かった。両社 release が同時刻 timing に成功したのは Linh の effort 直接的に。Phase 4 でも力借りたい。」 |
| **リン** | 「ズン先輩、覚えていてくださってありがとうございます…! 嬉しいです。Phase 4 もぜひ呼んでください。」 |
| **ズン** | 「ロアンさん、Phase 3 経理レビューありがとうございました。**特に LOI 段階での税抜表記指摘**、**indemnity 上限の取締役会規定確認**【4】、契約の死角 を全部 catch していただきました。ロアンさんなしでは ¥17M 救えませんでした。」 |
| **ロアン** | 「ズンさん、ご丁寧に。指摘した分 役立ったと知れて嬉しいです。次の case でも遠慮なく。」 |
| (Slack #general 全社向け、ただし thank-you DM 後に投稿) **ズン** | 「Phase 3 締結! 関係者全員に個別感謝 DM 済【5】。Tuấn、ハー CTO、フオン副部長、リン、ロアン、田中様、大垣様、Nakamura 様 — ありがとうございました。」 |

📝 **Ghi chú:**
- 【1】**Senior + junior 別々 list** — junior thank の方が時間かかる (specific 必要) なので別 budget.
- 【2】**Specific contribution 各人** — 「お疲れ様」 generic NG. 「毎週の細やかな進捗確認」 = Tanaka の actual contribution.
- 【3】**Junior は effort detail を見られていることに重い価値**. Specific date + behavior 言及。
- 【4】**Loan のような support function** はもっと忘れられがち. 経理は contract dispute で会社を救う sourceだが見えにくい.
- 【5】**個別 DM 後に general post** が順序. 逆だと junior は "全体 post で済まされた" 感.

---

## 🎯 Câu chốt

> **「Senior + junior 別々、specific contribution で感謝。「お疲れ様」 generic は未投資メッセージ。」**
>
> *Senior + junior list riêng, specific contribution. 「お疲れ様」 chung chung = thông điệp 'không đầu tư'.*

---

## ⚠ Tránh

- 「みんなお疲れ様」 1 行で済ませる → junior 心が冷める
- Junior の貢献を generic 化 (「PR 作ってくれてありがとう」) → 詳細な effort が見えない
- Senior だけ thank → junior は "自分は invisible" と感じる
- 全体 post 先 → 個別 DM の重みが減る
- 経理・法務 などの support function 忘れ → これら 1 mistake で会社が潰れる職種

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 関係者 | かんけいしゃ | Stakeholder / người liên quan |
| お力添え | おちからぞえ | Sự giúp sức (formal) |
| 細やか | こまやか | Tỉ mỉ |
| 指摘 | してき | Chỉ ra / point out |
| 死角 | しかく | Điểm mù |
| support function | サポートファンクション | Bộ phận hỗ trợ (kế toán, legal) |
| 個別 | こべつ | Riêng từng người |



---

# Phần V — Tình huống đặc biệt + Self-improve

# Rule 40 — Multi-party negotiation / 多者間交渉

> **Luận điểm.** Khi 中村 CFO + 大垣 + 松本 PM **cùng tham gia** 1 phiên = 3 stakeholders, 3 priorities. **CFO** = giá / ROI, **営業部長** = total deal / relationship, **PM** = scope / timeline. Trả lời chỉ 1 người = 2 người disengage. Pattern: **(1) Identify từng concern**, **(2) Address parallel** (1 câu cho mỗi role), **(3) Address senior cuối cùng** (CFO).
>
> 多者間交渉では役割別 concern (CFO=ROI、営業=total deal、PM=scope) を識別し、各人に並列 address。最後に senior (CFO) に回す。
>
> **Liên quan:** rule 03 (稟議), rule 16 (決裁者), rule 12 (discovery).

---

## Bối cảnh / 場面

Phase 3 final round, executive review: 中村 CFO + 大垣 + 松本 PM joined Tiên Phát side (Hà CTO + Hương + Dũng). 3 questions came in 90 giây — Dũng cần address all 3 trong 1 reply.

---

## ❌ Hội thoại XẤU — chỉ trả lời 1 người, 2 người ignored

*中村だけ向く · 腕組み*

| Speaker | Câu |
|---------|-----|
| **中村CFO** | 「ROI 4.4 倍とのことですが、payback period は何ヶ月でしょうか？」 |
| **大垣** | 「価格 ¥17M に **保守延長 オプション**は含まれますか？」 |
| **松本PM** | 「Phase 2 同等 SLA 99.9% を維持できますか？」 |
| **ズン** | 「中村様、ROI 4.4 倍は **18 ヶ月で payback** です。」 |
| (大垣 + 松本 unaddressed) **大垣** | …(沈黙) |
| **松本** | 「あの、SLA は…」 |

**Vì sao xấu:** Dũng chọn CFO (highest title) nhưng skip 大垣 + 松本. 大垣 felt sidelined → relationship dent. 松本 phải repeat question = unprofessional impression. Multi-party rule: address ALL trong 1 lượt nói, KHÔNG turn-by-turn.

---

## ✅ Hội thoại TỐT — parallel address 3 stakeholders

*沈黙 3秒、メモ確認 · 松本に向く · 大垣に向く · 中村に最後、deeper bow · 頷く*

| Speaker | Câu |
|---------|-----|
| **中村CFO** | 「ROI 4.4 倍の payback period は？」 |
| **大垣** | 「保守延長は含まれますか？」 |
| **松本** | 「SLA 99.9% 維持できますか？」 |
| **ズン** | 「ご質問ありがとうございます。**3 点まとめてお答えいたします**【1】。」 |
| **ズン** | 「**まず松本様の SLA**: Phase 2 同等の 99.9% 維持、加えて **専任 PM が weekly で reliability budget review**、達成困難時は早期 escalation の体制でございます【2】。」 |
| **ズン** | 「**次に大垣様の保守延長**: ¥17M には初年度保守を含み、**2 年目以降の延長保守は別枠 (¥2M / 年)**、契約書 separate clause でご案内しております。」 |
| **ズン** | 「**最後に中村 CFO の payback**: 御社 GMV インパクト ¥80M / 年に対し、Phase 3 投資 ¥17M、**payback 約 18 ヶ月**【3】、3 年目から純利益 acceleration、5 年累計 ROI 4.4 倍を試算しております。詳細 cashflow も別添にてご用意可能です。」 |
| **中村CFO** | 「ありがとうございます。3 点ともクリアです。社内検討に入ります。」 |

📝 **Ghi chú:**
- 【1】**「3 点まとめてお答えいたします」** = signal 全部 address. 1 人 ignored 不安を解消.
- 【2】**Order: junior → senior** (松本 → 大垣 → 中村 CFO). Senior 最後 = "trumps the pyramid" of value (松本の technical detail → 大垣の total deal → CFO の ROI). 各層に response.
- 【3】**CFO 質問は最後 + most detailed**. CFO は「自分の質問が most important で answered last」 と feel する.
- **目線移動 + 浅い bow** = 各人に address している nonverbal signal. 1 人 fixed gaze は他 2 人 disengage.

---

## 🎯 Câu chốt

> **「多者間 = 並列 address。junior → senior 順、CFO 最後 + detail 最大。1 人 ignored は 2 人を失う。」**
>
> *Multi-party = address parallel. Junior → senior, CFO cuối cùng + detail nhiều nhất. Skip 1 = mất 2.*

---

## ⚠ Tránh

- 1 人 (highest title) chỉ trả lời → 2 人 disengage = ringi 反対 source
- Senior 先 (CFO 最初) → junior の質問は dilute される
- "あとで個別に" 流す → 当日の trust momentum lost
- 全員に同じ depth で答える → CFO 質問は detail 多めにすべき
- 目線固定 → nonverbal で sideline 感

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 多者間 | たしゃかん | Đa bên |
| 並列 | へいれつ | Song song |
| 保守延長 | ほしゅえんちょう | Gia hạn maintenance |
| Payback period | ペイバック・ピリオド | Thời gian hoàn vốn |
| 純利益 | じゅんりえき | Lợi nhuận ròng |
| 別枠 | べつわく | Khung riêng |
| 専任 PM | せんにん PM | PM chuyên trách |
| Reliability budget | リライアビリティ・バジェット | Reliability budget |


# Rule 41 — Online negotiation tactics / オンライン交渉

> **Luận điểm.** Online ≠ offline đơn giản. 4 differences key: **(1) Eye contact mock** (look at camera, KHÔNG screen), **(2) Screen share strategy** (chỉ share khi present, KHÔNG suốt phiên), **(3) Silence khó cảm nhận** — 7 giây offline = 4 giây online (network lag mask), **(4) 沈黙 trong meeting tools dễ bị "技術的に大丈夫?" interruption** kill anchoring effect.
>
> オンライン交渉では eye contact = カメラ凝視、画面共有は present 時のみ、沈黙は短めに調整、interruption (「聞こえてますか?」) でアンカリング効果を消さない。
>
> **Liên quan:** rule 18 (アンカリング), rule 25 (沈黙活用), sách 03 rule 17 (online MTG).

---

## Bối cảnh / 場面

Phase 3 round 2, 大垣 + 田中 PMO 在京、Tiên Phát side ハノイ → Zoom. Dũng anchor ¥18M. Bình thường offline silence 7 giây = trump card. Online... khác.

---

## ❌ Hội thoại XẤU — eye contact lỏng + sa lầy silence

| | Speaker | Câu (Zoom) |
|--|---------|-----|
| **L1** | **ズン** *(画面を見ながら)* | 「Phase 3 価格 ¥18M でご提案させていただきます。」 |
| **L2** | (沈黙 7 秒、 Dũng は画面下の slide note を見続ける) | … |
| **L3** | **大垣** *(4 秒目)* | 「あの…音声 大丈夫ですか？」 |
| **L4** | **ズン** *(慌)* | 「あ、はい、聞こえてます！ ¥18M です、ご検討ください！」 |
| **L5** | (アンカリング効果消滅、 anchoring 失敗) | |

**Vì sao xấu:** (a) Eye contact ⇒ camera ではなく screen note → 「相手の目を avoid している」印象, (b) Online silence 7 giây = 大垣 が "technical issue" assume → "聞こえてますか" → anchor の重みが lost, (c) 慌てた reply で anchor を repeat = weak signal.

---

## ✅ Hội thoại TỐT — camera eye + 4 giây silence + screen share precise

| | Speaker | Câu (Zoom) |
|--|---------|-----|
| **L1** | **ズン** *(camera 直視、 hand gesture で書類に指す)* | 「Phase 3 価格について、画面共有させていただきます。」 |
| **L2** | (画面共有 ON、3 段階提案 slide 表示) **ズン** *(camera 戻して直視)* | 「**Better tier ¥18M、Best tier ¥24M**、本日は Better tier をベースにご相談させていただければと存じます【1】。」 |
| **L3** | (画面共有 OFF、 camera のみに集中) **ズン** *(camera 直視のまま)* | 「¥18M の根拠は Phase 2 比 +24%、ROI 4.4 倍。御社のご感想を頂戴できればと存じます。」 |
| **L4** | (沈黙 4 秒、 Dũng は camera 直視・微笑、 hand stillness) | … |
| **L5** | **大垣** *(4 秒目で発言)* | 「…¥18M ですね。社内で検討します。」 |
| **L6** | **ズン** *(頷き、 camera 維持)* | 「ありがとうございます。検討期間は 1 週間ほど見ていただけますでしょうか？」 |
| **L7** | (Dũng Slack Hương 後で) **ズン** | 「online 4 秒 silence で大垣様 reply。screen share は anchor slide 出して即 OFF、camera 直視で沈黙保持。**相手が 'connection 大丈夫?' interrupt する前に reply 来た**【2】。」 |

📝 **Ghi chú:**
- 【1】**Anchor 提示時に screen share** → 視覚 reinforce. 提示後は **即 share OFF + camera back** = 顔で connection を取り戻す.
- 【2】**Online silence = 4 giây** (offline 7 giây). 5 giây超えるとネット遅延と勘違いされる.
- **Eye contact = camera lens 直視** (相手の顔ではない). 練習 1 週間必要; 最初は不自然.
- **Hand gesture stillness** in silence = 「待っている」 confidence. 動くと "焦っている" 感.
- **Connection check phrase** 「聞こえてますか？」 を anchor 後に発言は absolute NG.

---

## 🎯 Câu chốt

> **「Online: camera 直視 + screen share は anchor 時のみ + 沈黙 4 秒 (offline -3 秒) + interruption 自重。」**
>
> *Online: nhìn lens + screen share chỉ khi anchor + silence 4 giây + nén interruption.*

---

## ⚠ Tránh

- 画面下の note を見ながら anchor 提示 → eye contact 0
- 画面共有を session 全部 ON → 顔が見えず human connection 切れる
- Online silence 7 giây 維持 → "audio disconnect" assume される
- 「聞こえてますか?」 を 2 秒目で connect-check → anchor effect 即消滅
- カメラ角度上から下 / 下から上 → 不自然 power dynamic

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| カメラ直視 | カメラちょくし | Nhìn thẳng camera |
| 画面共有 | がめんきょうゆう | Screen share |
| 凝視 | ぎょうし | Gaze fixed |
| 沈黙保持 | ちんもくほじ | Giữ im lặng |
| ネット遅延 | ネットちえん | Network lag |
| Hand stillness | ハンドスティルネス | Tay không động |
| Eye contact mock | アイコンタクトモック | Mô phỏng eye contact |


# Rule 42 — Translator-mediated negotiation / 通訳介在

> **Luận điểm.** Khi Linh học interpret join phiên đàm phán: 4 rules cần follow. **(1) Pace** = câu ngắn 15-25 字 max, KHÔNG run-on, **(2) Pause sau câu** ≥ 2 giây cho Linh dịch, **(3) Speaker đứng sát translator nhưng nhìn KHÁCH** (không nhìn translator), **(4) Pre-brief** translator về key terms (BATNA, ZOPA, indemnity) trước phiên — translator được biết term đặc thù trước. Skip 1 trong 4 → translator overload, mistranslation = số tiền sai.
>
> 通訳介在交渉では (a) 短い文 (b) 文末で 2 秒 pause (c) 相手を見る (d) 用語事前 brief。これらを守らないと通訳精度低下 = 数値ズレ → 商務 dispute。
>
> **Liên quan:** rule 30 (合意確認), sách 04 rule 17 (escalation).

---

## Bối cảnh / 場面

Phase 4 scoping với 1 client mới (Hà Nội office, JP exec không tiếng Anh / không tiếng Việt). Linh học interpret join. Pre-brief 30 phút trước. Trong phiên: Dũng phải điều chỉnh pace.

---

## ❌ Hội thoại XẤU — run-on Japanese, no pause, no pre-brief

*早口、 1 文 80 字 · panic、 30 字までしかメモ取れず · 訂正 · VN client へ · 困*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「弊社の Phase 4 提案は、AI レコメンドエンジンに加えて customer churn prediction モデルも統合し、 indemnity は年契約額上限 ¥20M 想定、SLA は 99.95% で、 BATNA も別途用意しております。」 |
| **リン** | 「えっと…AI engine と churn prediction、 indemnity ¥20M、SLA…99.5%? ですか?」 |
| **ズン** | 「99.95% です。」 |
| **リン** | 「Phase 4 sẽ có AI engine + churn prediction. Indemnity 20 triệu yên, SLA 99.5%...à 99.95%, em xin lỗi.」 |
| **VN client** | 「SLA 99.95% à... bên em ngân sách dựa trên 99.5%.」 |

**Vì sao xấu:** (a) 1 文 80 字, Linh の memory buffer 超え, (b) BATNA / indemnity 用語 pre-brief なし → Linh interpret 苦戦, (c) 99.5 vs 99.95 の翻訳ミス = ¥1M+ dispute, (d) 訂正 mid-flow で credibility 崩壊.

---

## ✅ Hội thoại TỐT — chunked + pause + pre-brief

*Linh と 1-on-1 · VN client 直視、 1 文 20 字以内、 文末 2 秒 pause · VN client へ · VN client 凝視、 Linh は ear-shot 距離 · 明瞭発音 · Linh に*

| Speaker | Câu |
|---------|-----|
| (商談 30 分前 pre-brief) **ズン** | 「Linh、本日の key terms 7 個 reviews【1】: indemnity =損害賠償, BATNA =交渉決裂代替案, ZOPA =合意可能領域, SLA = サービス水準合意。**99.95% は『きゅうきゅう・きゅうご パーセント』と区切って発音**【2】、99.5% との混同避ける。」 |
| **リン** | 「ありがとうございます。99.95% pronunciation 練習しました。」 |
| (商談中) **ズン** | 「Phase 4 では、AI レコメンドエンジンを継続いたします。」 (2 秒 pause) |
| **リン** | 「Phase 4 vẫn duy trì AI recommend engine.」 |
| **ズン** | 「加えて、 customer churn prediction を統合いたします。」 (2 秒 pause) |
| **リン** | 「Bổ sung integrate model dự đoán churn.」 |
| **ズン** | 「indemnity 上限は 年契約額相当の ¥20M。」 (2 秒 pause) |
| **リン** | 「Indemnity (損害賠償上限) đặt ở mức annual ¥20M.」 |
| **ズン** | 「SLA は『きゅうきゅう・きゅうご パーセント』、つまり 99.95% でございます【3】。」 (2 秒 pause) |
| **リン** | 「SLA chín-chín-chín-năm phần trăm, tức là 99.95%.」 |
| (商談後) **ズン** | 「お疲れ様。99.95% 区切り発音 + indemnity term pre-brief で精度 high。次回も同じ pattern で。」 |

📝 **Ghi chú:**
- 【1】**Pre-brief 30 分** = key terms list + 数値 sensitive points + speaker style. Translator が cold start で interpret する精度は -30%.
- 【2】**数値の区切り発音** (「99.95% = きゅうきゅう・きゅうご」) = mistranslation prevention. 3 と 5 / 9 と 4 は Vietnamese で類似音.
- 【3】**Speaker は client を直視** (Linh ではなく). Linh は ear-shot 距離で stand. 相手は "Dũng と直接話している" 感.
- **Linh の interpret 中は Dũng 沈黙 + 頷き**。 next sentence の preview を考えない、 listening focus.

---

## 🎯 Câu chốt

> **「通訳介在 = 1 文 20 字 + 2 秒 pause + 客凝視 + pre-brief 30 分。数値は区切り発音。」**
>
> *Translator-mediated = câu 20 chữ + pause 2 giây + nhìn khách + pre-brief 30 phút. Số đọc tách rõ.*

---

## ⚠ Tránh

- 1 文 80 字以上 → translator memory buffer 超え
- 数値早口 (「99.95%」 一気に) → 3/5/9 混同 risk
- Speaker が translator を見ながら話す → 客は "translation だ" と意識し心離れる
- Pre-brief なしで technical term 使用 → translator improv ミス
- 訂正を mid-translation で挟む → translator confused, client confused
- Translator を speaker のすぐ隣 (microphone 距離) ではなく 1m 離す → 音声 catch しにくい

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 通訳 | つうやく | Phiên dịch |
| 介在 | かいざい | Trung gian / mediated |
| 区切り発音 | くぎりはつおん | Phát âm tách rõ |
| Pre-brief | プレ・ブリーフ | Brief trước |
| Ear-shot 距離 | イアショット きょり | Khoảng cách nghe rõ |
| 凝視 | ぎょうし | Nhìn chăm |
| Memory buffer | メモリーバッファ | Bộ nhớ tạm |
| Improv ミス | インプロビザミス | Improv mistake |


# Rule 43 — Escalation triggers / エスカレーション

> **Luận điểm.** 4 trigger conditions để escalate Hà CTO / Hương step in: **(T1)** Khách push 価格 dưới walk-away ¥15M, **(T2)** Yêu cầu term ngoài thẩm quyền (indemnity unlimited, IP toàn bộ), **(T3)** Threat / ultimatum tone, **(T4)** Cross-functional decision (technical + financial). Escalation flow: **(a)** Slack senior với 30-second context, **(b)** Senior decide step-in hay Slack guidance, **(c)** Step-in時 Dũng setup (KHÔNG disappear). Escalation = ownership transfer + dignity preserved cả 2 phía.
>
> エスカレーション 4 trigger: 価格 walk-away 越え / 権限外条項 / threat tone / cross-functional 判断。flow は Slack 30 秒 context → senior 判断 → Dũng setup。逃げずに presence 保持。
>
> **Liên quan:** rule 26 (脅し対応), rule 33 (条項調整), sách 04 rule 17 (escalation pattern).

---

## Bối cảnh / 場面

Phase 4 round 3, 大垣 thay 中村 CFO + 大垣 + Tiên Phát luật sư on call. CFO push: "indemnity 無制限じゃないと弊社決裁 down ない。今ここで決めて". Đây là T2 (権限外) + T3 (ultimatum) cùng lúc → Hà CTO escalation.

---

## ❌ Hội thoại XẤU — Dũng tự xử ngoài thẩm quyền

*panic、 escalate なし · Hà CTO に · 青*

| Speaker | Câu |
|---------|-----|
| **中村CFO** | 「indemnity 無制限じゃないと弊社決裁 down ません。今ここで決めてください。」 |
| **ズン** | 「えっと…無制限ですか…承知いたしました、それで進めます…」 |
| (1 時間後 Slack 報告) **ズン** | 「Hà CTO、Phase 4 indemnity 無制限で合意しました。」 |
| **ハー CTO** | 「**何故 escalate しなかった？取締役会上限規定を超える。今すぐ撤回交渉**。社長 escalate も必要。」 |

**Vì sao xấu:** (a) T2 (権限外) recognize されず Dũng が即決, (b) T3 (ultimatum tone) も recognize されず, (c) Hà CTO 取締役会規定知らず → Tiên Phát 法的に bind 不可 → renegotiate = trust dent. Escalation skip = career-defining mistake.

---

## ✅ Hội thoại TỐT — escalation flow + dignity 保持

*2 秒沈黙、 trigger T2 + T3 認識 · microexpression: 想定内 · 2 分後 · 中村に · 姿勢正す*

| Speaker | Câu |
|---------|-----|
| **中村CFO** | 「indemnity 無制限じゃないと弊社決裁 down ません。今ここで決めてください。」 |
| **ズン** | 「ご要望承知しました。」 |
| **ズン** | 「**indemnity 無制限の判断は弊社取締役会上限規定に関わるため、私の権限を超えます**【1】。**5 分ほどお時間頂戴し、Hà CTO に連絡を取らせてください**【2】。」 |
| **中村CFO** | 「分かりました。5 分待ちます。」 |
| (Slack Hà CTO、 30 秒 context: trigger / 数値 / urgency) **ズン** | 「ハー CTO、Phase 4 中村 CFO escalation。要点: indemnity 無制限 + ultimatum + 即決要請。**T2 + T3 trigger**。step-in 可否 ご判断ください。」 |
| **ハー CTO** | 「私が join。3 分後 Zoom link 送る。Dũng は **メンバー紹介後そのまま session にいて**、撤退ではない【3】。」 |
| (Zoom 再開) **ズン** | 「お待たせいたしました。弊社 CTO ハー が join いたします。」 |
| **ハー CTO** | 「中村様、ハーでございます。indemnity 上限 ¥20M (年契約額) は弊社取締役会規定上の上限。これを超えるご提案は弊社で commit 不可です。代替として **段階的 cap** (1 年目 ¥20M、2 年目 ¥30M) のご相談は可能です。」 |
| **中村CFO** | 「CTO 直接ご回答 助かります。段階的 cap、 持ち帰り検討します。」 |
| (商談後 Slack) **ハー CTO → Dũng** | 「Good job escalate。T2/T3 認識 + 30 秒 context + setup 完璧【4】。学べた。」 |

📝 **Ghi chú:**
- 【1】**「権限を超えます」 framing** = personal weakness ではなく organizational rule. 顧客は accept しやすい.
- 【2】**5 分 buffer 要請** = JP は escalation を invitate する pattern を理解。"急に持ち帰り" よりは reasonable.
- 【3】**Dũng が session に残る** = ownership 保持. 完全 disappear すると「Dũng 役立たず」 perception.
- 【4】**Senior feedback で learning** = next time T2/T3 trigger 速くなる. Escalation = career skill.

---

## 🎯 Câu chốt

> **「4 trigger (T1 価格 / T2 権限外 / T3 threat / T4 cross-fn) → 30 秒 Slack → senior 判断 → Dũng setup + presence 保持。」**
>
> *4 trigger → Slack 30 giây → senior quyết → Dũng setup + ở lại session.*

---

## ⚠ Tránh

- 権限外 (T2) を即決 → 取締役会で法的に bind 不可、 撤回 → trust dent
- "今ここで決めてください" pressure に屈する → 5 分 buffer 必ず request
- Escalate するが session 退出 → ownership lost
- Slack で senior に "どうしましょう?" 漠然と → 30 秒で trigger / 数値 / urgency まとめる
- Senior step-in 後も Dũng が話を奪う → senior の authority dilute

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| エスカレーション | エスカレーション | Escalation |
| 権限を超えます | けんげんをこえます | Vượt thẩm quyền |
| 取締役会規定 | とりしまりやくかいきてい | Quy định HĐQT |
| 段階的 cap | だんかいてき cap | Cap theo bậc |
| Trigger | トリガー | Trigger |
| Microexpression | マイクロエクスプレッション | Biểu cảm vi mô |
| Step-in | ステップイン | Bước vào (senior intervene) |


# Rule 44 — VN-JP negotiation gap / VN-JP 交渉ギャップ

> **Luận điểm.** VN style: **直接 (direct)**, "Giảm 10% thì OK?", concession 1 lần lớn. JP style: **間接 (indirect)**, 「条件面で…」「持ち帰りでも…」, concession nhỏ + reciprocal. VN BD đem direct style vào phòng JP → khách Nhật thấy 「無礼」 hoặc 「未熟」. JP exec đem indirect style sang VN → VN BD thấy "không quyết được", "vòng vo". Hizashi VN BD cần code-switch: **directness 30% lower + concession reciprocal pattern**.
>
> VN は直接、JP は間接。concession も VN は 1 回大きく、JP は小刻み reciprocal。混在せずに JP mode で運用、 VN-style memo は内部用に分離。
>
> **Liên quan:** rule 24 (譲歩交換), rule 26 (脅し対応), rule 35 (打ち切り).

---

## Bối cảnh / 場面

Phase 4 với client mới (manufacturing JP, Tokyo HQ). Tuấn Tech Lead support — Tuấn ít kinh nghiệm với JP exec, bring VN style vào. Dũng cần code-switch chính mình + coach Tuấn realtime.

---

## ❌ Hội thoại XẤU — VN direct style trong phòng JP

*直接 · 沈黙、 メモを 取る · 沈黙不安*

| Speaker | Câu |
|---------|-----|
| **JP client (松本 stand-in)** | 「価格 ¥20M はやや高い印象がございます。」 |
| **トゥアン** | 「では ¥18M でいかがですか？10% 下げます！」 |
| **JP client** | …(無言、 表情変化なし) |
| **トゥアン** | 「¥17M でも検討可能です…」 |
| **JP client** | 「…御社 内部でじっくり再検討された後、改めてご提案頂けますでしょうか。」 |
| (商談後 Slack) **JP client → Dũng の上司** | 「Tuấn さん、 concession を 2 回続けて下げました。 弊社 negotiate ratchet として **¥15M target で社内 anchor** が動いてしまいました。」 |

**Vì sao xấu:** (a) 1 phát giảm 10% = "もっと下がる" signal. JP は concession を slow + reciprocal で expect, (b) 2 連続 concession なし trade = JP 内部 anchor が ¥15M に shift, (c) 「やや高い」は JP indirect signal で「具体的説明欲しい」意図、 直接 discount ではない.

---

## ✅ Hội thoại TỐT — JP mode で運用 + Tuấn realtime coach

*2 秒 silence、 Tuấn に micro-eye signal "wait" · 具体化 · 頷き、 メモ*

| Speaker | Câu |
|---------|-----|
| **JP client** | 「価格 ¥20M はやや高い印象がございます。」 |
| **ズン** | 「ご感想ありがとうございます。**『高い』という印象の中で、特に気にされている内訳要素**【1】はございますでしょうか？AI engine 部分でしょうか、PM 体制でしょうか。」 |
| **JP client** | 「…AI engine 部分、 御社 Phase 2 比 +30% の理由を伺いたい。」 |
| **ズン** | 「Phase 2 比 +30% の内訳: customer churn prediction model 追加が +20%、SLA 99.5% → 99.95% upgrade が +10% です。**もしどちらかをスコープ外にする trade なら**【2】、 ¥18M に調整可能でございます。」 |
| **JP client** | 「なるほど、 churn prediction の必要性は社内で 議論余地あり。**持ち帰り**社内検討します。」 |
| (商談後 Slack Tuấn に) **ズン** | 「Tuấn、 JP は『高い』 ≠ 『discount せよ』。 specific reason を indirect に asking している【3】。VN style で即 10% 下げると ratchet 動く。next time も同じ pattern で。」 |
| **トゥアン** | 「了解。沈黙 2 秒で Dũng の signal 待つ pattern 学んだ。」 |

📝 **Ghi chú:**
- 【1】**「内訳要素」 questioning** = JP indirect 「高い」 を unbundle + reframe. 即 discount せず discovery.
- 【2】**Trade 形 concession** (「if scope 外なら ¥18M」) = JP reciprocal pattern. 1 方向大幅 discount は VN style.
- 【3】**JP「高い」 4 layer 解釈**: (i) 真に高い (rare), (ii) 内訳説明欲しい (most common), (iii) 比較相手と差説明欲しい, (iv) face-saving "uncertainty" expression. Direct discount は (i) のみ正解.
- **Tuấn realtime coach** = micro-eye signal で Dũng が wait sign 送る. 商談後 debrief で深堀.

---

## 🎯 Câu chốt

> **「JP『高い』≠『discount』。先に内訳 unbundle + trade 形 reciprocal concession。VN 1 発 10% はNG。」**
>
> *JP 'cao' không phải đề nghị discount. Phải unbundle + concession dạng trade. VN giảm 10% phát = NG.*

---

## ⚠ Tránh

- 「では下げます」即決 → ratchet effect で next round もっと下げを期待される
- 2 連続 concession なし trade → 内部 anchor が大幅 shift
- 「やっぱり ¥18M で OK ですか？」直接 closing question → JP exec 「未熟」 perception
- VN style threat language ("もう limit です") → JP は relationship signal として読む、 negative
- Tuấn / junior staff coach せず realtime mistake 放置 → habit化
- VN-style memo を JP client 共有 → tone mismatch

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 直接 | ちょくせつ | Trực tiếp |
| 間接 | かんせつ | Gián tiếp |
| 内訳 | うちわけ | Cấu thành / breakdown |
| Reciprocal | レシプロカル | Có qua có lại |
| Ratchet effect | ラチェット効果 | Hiệu ứng bánh cóc (giảm rồi không lên lại) |
| Code-switch | コードスイッチ | Chuyển code |
| Unbundle | アンバンドル | Tách ra |
| Realtime coach | リアルタイムコーチ | Coach trực tiếp tại chỗ |


# Rule 45 — Self-review post-mortem / 振り返りと改善

> **Luận điểm.** Sau MỖI vụ đàm phán (kể cả walk-away), trong vòng **1 tuần** chạy retrospective: **(1) What worked**, **(2) What didn't**, **(3) Counterfactual** (nếu làm khác thì sao), **(4) Pattern recognition** (lặp lại từ vụ trước?), **(5) Next-time commit**. Hương lead retro với Dũng + Tuấn. Skip retro = mỗi vụ học cùng lesson 3-4 lần.
>
> 商談ごとに 1 週間以内 post-mortem。「うまくいった点 / 改善点 / counterfactual / pattern / next commit」 5 セクション。Hương が lead、 commit を文書化。
>
> **Liên quan:** rule 09 (concession plan), rule 28 (撤退作法), rule 43 (escalation), sách 04 rule 45 (improvement loop).

---

## Bối cảnh / 場面

Phase 3 ¥17M ký xong, Phase 4 với new client cũng vừa kết thúc round 1. Hương schedule retro 1 giờ thứ Sáu chiều: Dũng + Tuấn + (Linh trên 通訳 vụ Phase 4). Format: 5 sections, doc commit lưu vào team wiki.

---

## ❌ Hội thoại XẤU — không có retro hoặc retro generic

*Phase 3 と同じ retro 学習なし · 青*

| Speaker | Câu |
|---------|-----|
| (1 ヶ月後 Phase 5 商談、 同じ pattern) **大垣** | 「価格 ¥22M は高い印象が…」 |
| **ズン** | 「では ¥20M でいかがでしょうか…」 |
| (商談後 Hương) **フオン** | 「ズン、 Phase 3 で学んだ 『高い』 ≠ 『discount』 のはずが、 また直接 discount したね。**retro してないでしょ?**」 |
| **ズン** | 「…してませんでした。」 |

**Vì sao xấu:** Phase 3 で習得すべき lesson が retro なしで forget → Phase 5 で repeat。¥2M margin loss = exact same lesson. Retro 1 時間 vs ¥2M loss → 圧倒的 ROI.

---

## ✅ Hội thoại TỐT — 5-section retro + doc commit

*retro 開始、 5 セクション template 共有 · ① worked · ② didn't · ② didn't · ③ Counterfactual · ④ Pattern · ⑤ Next commit、 doc 化*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「Phase 3 + Phase 4 R1 retro 1 時間。テンプレ 5 セクション【1】: ①What worked ②What didn't ③Counterfactual ④Pattern ⑤Next commit。Dũng から start。」 |
| **ズン** | 「Phase 3: BATNA 3 シナリオ + recap mail 24h + LOI → 本契約 2 段階で **predictable progress**。Phase 4 R1: JP「高い」を unbundle で reframe 成功。」 |
| **ズン** | 「Phase 3: 中村 CFO の indemnity 無制限 push に、当初 5 秒 freeze した。escalation trigger 認識 速度遅い。Phase 4 R1: Tuấn の VN style discount 即時止められず、 client memo まで signal 流れた。」 |
| **トゥアン** | 「私は VN style 自覚なく 10% 下げた。Dũng の eye signal も 0.5 秒 miss した。」 |
| **ズン** | 「**もし escalation trigger checklist を pre-print しておけば**【2】、indemnity push に 2 秒で react できた。**もし pre-MTG で Tuấn と「JP は内訳 unbundle、即 discount NG」 brief 1 分**していれば、Phase 4 R1 ratchet 防げた。」 |
| **フオン** | 「pattern: **VN BD は immediate concession に 流れがち**【3】。Phase 1 / 2 / 3 / 4 全部で発生。これは個人問題ではなく cultural default。team training で習慣化必要。」 |
| **ズン** | 「commit 3 つ【4】: (a) escalation trigger checklist を pocket card 化、 来週月曜まで。(b) JP 商談 pre-MTG の 1 分 brief を mandatory ritual 化。(c) Phase 5 retro で a/b の効果測定。」 |
| **フオン** | 「commit 文書化、 team wiki に保存。**3 ヶ月後 follow-up retro でこの commit の adherence 確認**【5】。お疲れ様。」 |

📝 **Ghi chú:**
- 【1】**5 セクション固定 template** = retro skip / surface-level 防止. counterfactual は最も学習量多い.
- 【2】**Counterfactual = 「もし〜していれば」** で具体的 alternative を spell out. 抽象な反省ではなく concrete next-time action.
- 【3】**Pattern recognition** = 1 回ではなく across vụ. cultural default だと判明すれば team-level intervention.
- 【4】**3 commit max** — 多すぎると adhere できず, 少なすぎると change なし.
- 【5】**Follow-up retro 3 ヶ月後** = commit が habit 化したか測定. これがないと commit は wishlist.

---

## 🎯 Câu chốt

> **「商談ごとに 1 週間以内 5 セクション retro。3 commit + 3 ヶ月 follow-up = lesson が habit 化。skip = 同じミスを repeat。」**
>
> *Mỗi vụ trong 1 tuần làm retro 5 sections. 3 commit + follow-up 3 tháng = lesson thành habit. Skip = lặp lỗi.*

---

## ⚠ Tránh

- Retro skip → 同じ lesson 3-4 vụ で repeat
- Generic 「次回 頑張ります」 commit → adherence 0
- Counterfactual section skip → lesson が abstract
- Commit 10 個 list → 1 個も adhere できない、3 個 max
- Follow-up retro なし → commit は wishlist
- Retro が blame session 化 → psychological safety なくなり honest input 消失
- Retro doc を save しない → 半年後検索不可、 同じ retro 繰り返し

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 振り返り | ふりかえり | Retro / nhìn lại |
| Post-mortem | ポストモーテム | Post-mortem |
| Counterfactual | カウンターファクチュアル | Giả định ngược |
| Pattern | パターン | Pattern |
| Commit | コミット | Cam kết |
| Pocket card | ポケットカード | Card bỏ túi |
| Adherence | アドヒアレンス | Mức độ tuân thủ |
| Habit 化 | habit か | Habit hóa |
| Psychological safety | 心理的安全性 | An toàn tâm lý |

---

## 📐 Template

Xem `conversation.json` → `templates[0]` (`format: "checklist"`) cho retro 5-section template với JP/VN.



---

# Phụ lục A — Script Template Tổng Hợp / 場面別フレーズ集

*Tổng hợp `key_phrases` từ tất cả 60 rules. Sắp xếp theo phần để tiện tra cứu khi soạn / luyện.*

*Mỗi cụm có thể audio TTS — cấu trúc trong `conversation.json` của từng rule.*

---


## Phần I — Nền tảng trước nhấc máy

### Rule 01 — BATNA: Phương án thay thế tốt nhất / BATNA — 交渉決裂時の代替案

**ズン (em Dũng):**

> 🇯🇵 「BATNA 3シナリオを作成しました。レビューいただけますでしょうか？」
>
> 🇻🇳 *Em đã tạo BATNA 3 scenario ạ. Phiền chị review giúp em được không ạ?*
>
> 📝 _BATNA レビュー依頼の標準_

**フオン副部長 (chị Hương):**

> 🇯🇵 「BATNAなしで交渉に入らない。3シナリオ(成立/再交渉/撤退)を数値で持つ。」
>
> 🇻🇳 *Không vào đàm phán khi chưa có BATNA. 3 scenario (deal/counter/walk-away) phải có con số.*
>
> 📝 _BATNA原則_


### Rule 02 — ZOPA: Vùng có thể thỏa thuận / ZOPA — 合意可能領域

**ズン (em Dũng):**

> 🇯🇵 「ZOPA マッピングを作成しました。弊社 target は ¥18M、相手推定 ceiling は ¥17M です。」
>
> 🇻🇳 *Em đã tạo ZOPA mapping. Target bên em ¥18M, ceiling ước của khách ¥17M ạ.*
>
> 📝 _ZOPA レポートの標準_

**フオン副部長 (chị Hương):**

> 🇯🇵 「ZOPAゼロなら今日は交渉成立しない。4数値を必ず推定する。」
>
> 🇻🇳 *ZOPA bằng 0 thì hôm nay không có deal. Bắt buộc estimate đủ 4 con số.*
>
> 📝 _ZOPA原則_


### Rule 03 — Hiểu phong cách quyết định ringi / 稟議の理解

**ズン (em Dũng):**

> 🇯🇵 「稟議のご検討にあたり、何か追加情報必要でしたらお声がけください。」
>
> 🇻🇳 *Trong quá trình ringi, nếu cần bổ sung thông tin xin liên hệ em ạ.*
>
> 📝 _稟議サポートメールの定型_

**フオン副部長 (chị Hương):**

> 🇯🇵 「決めるのは社内合意の総和。我々はそれを助ける。」
>
> 🇻🇳 *Người quyết là tổng đồng thuận nội bộ. Mình chỉ hỗ trợ.*
>
> 📝 _稟議理解の原則_


### Rule 04 — Thu thập intel khách / 顧客リサーチ

**ズン (em Dũng):**

> 🇯🇵 「白鷗の4軸インテルシートを更新しました。決裁・予算・競合・業績の順でご報告します。」
>
> 🇻🇳 *Em đã update intel sheet 4 trục của Hakuō. Em báo cáo theo thứ tự decision/budget/đối thủ/business ạ.*
>
> 📝 _顧客インテル報告の標準_


### Rule 05 — Định giá strategy / 価格戦略

**ズン (em Dũng):**

> 🇯🇵 「Cost-plus / value-based / anchoring の3モデルを比較し、推奨は value-based です。」
>
> 🇻🇳 *Em đã so 3 mô hình cost-plus / value-based / anchoring, đề xuất là value-based ạ.*
>
> 📝 _価格戦略提案の標準_


### Rule 06 — 3-tier proposal: Good / Better / Best / 3段階提案

**ズン (em Dũng):**

> 🇯🇵 「本日は Good / Better / Best の3段階でご提案させていただきます。」
>
> 🇻🇳 *Hôm nay em xin được đề xuất 3-tier Good / Better / Best ạ.*
>
> 📝 _3段階提案の口頭イントロ_


### Rule 07 — Pre-meeting alignment nội bộ / 事前社内すり合わせ

**フオン副部長 (chị Hương):**

> 🇯🇵 「役割・譲歩順・撤退ライン・沈黙合図、4点を社内で100%一致させてから入室。」
>
> 🇻🇳 *Vai trò / thứ tự nhượng bộ / walk-away / signal im lặng — 4 điểm align 100% trước khi vào phòng.*
>
> 📝 _事前すり合わせ4点原則_


### Rule 08 — Walk-away point / 撤退ライン

**ズン (em Dũng):**

> 🇯🇵 「撤退ラインは価格・IP・SLA・支払・責任の5軸でCTO承認済みです。」
>
> 🇻🇳 *Walk-away là 5 trục: giá / IP / SLA / payment / liability — CTO đã duyệt ạ.*
>
> 📝 _撤退ライン読み上げ標準_


### Rule 09 — Concession plan / 譲歩計画

**ズン (em Dũng):**

> 🇯🇵 「譲歩は trade とセット、trade 拒否は譲歩取り下げ。」
>
> 🇻🇳 *Nhượng bộ luôn đi cùng trade, trade bị từ chối là rút nhượng bộ.*
>
> 📝 _trade-back 原則_



## Phần II — Nhận điện thoại

### Rule 10 — Câu mở chào lịch sự / 商談冒頭

**ズン (em Dũng):**

> 🇯🇵 「本日はお忙しい中、お時間いただきまして誠にありがとうございます。」
>
> 🇻🇳 *Hôm nay quý anh dành thời gian trong lúc bận rộn, em xin chân thành cảm ơn ạ.*
>
> 📝 _商談冒頭の定型お礼_

**ズン (em Dũng):**

> 🇯🇵 「本日は3段階の選択肢をお持ちしました。忌憚ないご意見をいただければと存じます。」
>
> 🇻🇳 *Hôm nay em mang 3 phương án ạ. Mong quý anh cho ý kiến thẳng thắn ạ.*
>
> 📝 _本日の意図表明_


### Rule 11 — Set context + agenda / コンテキスト設定

**ズン (em Dũng):**

> 🇯🇵 「簡単な振り返りをさせていただきます。直近で御社側のご状況に変更はございますでしょうか？」
>
> 🇻🇳 *Em xin phép điểm lại nhanh ạ. Gần đây phía quý cty có thay đổi gì không ạ?*
>
> 📝 _コンテキスト設定の標準_


### Rule 12 — Discovery questions: 5 categories / ディスカバリー質問

**ズン (em Dũng):**

> 🇯🇵 「5 観点でお伺いさせていただきます。Pain・Goal・予算感・Timeline・Decision の順で。」
>
> 🇻🇳 *Em xin hỏi theo 5 trục: Pain / Goal / cảm giác ngân sách / Timeline / Decision ạ.*
>
> 📝 _discovery 開始の宣言_

**ズン (em Dũng):**

> 🇯🇵 「稟議経路で確認すべき方はいらっしゃいますか？」
>
> 🇻🇳 *Trên đường ringi còn ai cần consult không ạ?*
>
> 📝 _隠れた決裁者の炙り出し_


### Rule 13 — Listen for hidden constraints / 隠れた制約の傾聴

**ズン (em Dũng):**

> 🇯🇵 「もう少し詳しくお聞かせいただけますでしょうか？」
>
> 🇻🇳 *Em xin phép được nghe kỹ hơn ạ?*
>
> 📝 _隠れ制約の掘り下げ open question_

**ズン (em Dũng):**

> 🇯🇵 「ご懸念点、具体的にどのあたりでしょうか？」
>
> 🇻🇳 *Cụ thể anh lo điểm nào ạ?*
>
> 📝 _operational掘り下げ_


### Rule 14 — Mirror + summarize / ミラーリング・要約

**ズン (em Dũng):**

> 🇯🇵 「つまり〜とのご認識でよろしいでしょうか？」
>
> 🇻🇳 *Tức là... em hiểu vậy có đúng không ạ?*
>
> 📝 _ミラーリング基本句_


### Rule 15 — Probe price sensitivity / 価格感度の探り

**ズン (em Dũng):**

> 🇯🇵 「御社の新年度 IT 投資 framework の中で、Phase 3 はどの程度の位置付けでしょうか？」
>
> 🇻🇳 *Trong khung đầu tư IT năm mới của quý cty, Phase 3 ở vị trí nào ạ?*
>
> 📝 _frame approach 予算探り_

**ズン (em Dũng):**

> 🇯🇵 「Phase 2 と比較して規模感的にどのあたりを想定されておられますか？」
>
> 🇻🇳 *So với Phase 2, quý anh dự ở mức quy mô nào ạ?*
>
> 📝 _comparable approach 予算探り_


### Rule 16 — Confirm decision authority / 決裁者確認

**ズン (em Dũng):**

> 🇯🇵 「最終決裁は〜様でいらっしゃいますでしょうか？」
>
> 🇻🇳 *Người duyệt cuối là anh/chị 〜 phải không ạ?*
>
> 📝 _決裁者確認の定型_

**ズン (em Dũng):**

> 🇯🇵 「決裁の前段階でどのようなステップが残っていらっしゃいますでしょうか？」
>
> 🇻🇳 *Trước khi duyệt còn step nào ạ?*
>
> 📝 _残ステップ確認_


### Rule 17 — Time-box discussion / 時間管理

**ズン (em Dũng):**

> 🇯🇵 「そろそろ提案の概要に移らせていただいてもよろしいでしょうか？」
>
> 🇻🇳 *Có lẽ em xin phép chuyển sang tổng quan đề xuất ạ?*
>
> 📝 _soft transition 定型_

**ズン (em Dũng):**

> 🇯🇵 「重要点ですので、price の段階にあわせて詳しくご説明させていただきます。」
>
> 🇻🇳 *Điểm quan trọng nên xin phép em giải thích kỹ ở phần giá ạ.*
>
> 📝 _park question 定型_



## Phần III — Gọi điện thoại đi

### Rule 18 — Anchor first hay wait / アンカリングの判断

**ズン (em Dũng):**

> 🇯🇵 「Better tier ¥18M、Anchor として Best tier ¥24M も併せてご検討材料としてお持ちしました。」
>
> 🇻🇳 *Better tier ¥18M, kèm Best tier ¥24M làm anchor, em mang theo làm material xem xét ạ.*
>
> 📝 _go first 二段anchor_


### Rule 19 — Cấu trúc câu đề xuất giá / 価格提示フレーズ

**ズン (em Dũng):**

> 🇯🇵 「ご指摘の点、もっともでございます。〜の条件でございましたら、〜でご提供可能でございます。」
>
> 🇻🇳 *Em tiếp thu ý kiến quý anh ạ. Nếu điều kiện ~ thì em có thể cung cấp ở mức ~ ạ.*
>
> 📝 _価格 counter の標準骨格_


### Rule 20 — Đối phó với 'đắt' / 「高い」への対応

**ズン (em Dũng):**

> 🇯🇵 「ご指摘の点、もっともでございます。ただ少し別の角度から…」
>
> 🇻🇳 *Em xin tiếp thu ý kiến quý anh ạ. Tuy nhiên xin phép em nhìn từ góc khác...*
>
> 📝 _「高い」3step pattern 開始_


### Rule 21 — Giảm scope thay vì giảm giá / 価格でなくスコープを削る

**ズン (em Dũng):**

> 🇯🇵 「ご予算に合わせるためには、スコープ調整が必要になります。」
>
> 🇻🇳 *Để khớp ngân sách quý cty, cần điều chỉnh scope ạ.*
>
> 📝 _scope転換 標準フレーズ_

**ズン (em Dũng):**

> 🇯🇵 「unit price は同等のまま、総額を調整する形になります。」
>
> 🇻🇳 *Giữ nguyên unit price, chỉ điều chỉnh tổng tiền ạ.*
>
> 📝 _unit price 維持説明_


### Rule 22 — Bundle / unbundle pricing / バンドリング・アンバンドリング

**ズン (em Dũng):**

> 🇯🇵 「個別 cost を分解いたします。合計 〇〇円、パッケージとしては 〇〇円でご提供。」
>
> 🇻🇳 *Em xin tách cost từng mục. Tổng 〇〇¥, theo package là 〇〇¥ ạ.*
>
> 📝 _unbundle + package 提示_


### Rule 23 — Quy đổi sang ROI / ROI 換算

**ズン (em Dũng):**

> 🇯🇵 「Investment は 〇〇円、Annual return は 〇〇円、Payback は 〇〇ヶ月、NPV は 〇〇円です。」
>
> 🇻🇳 *Investment 〇〇¥, Annual return 〇〇¥, Payback 〇〇 tháng, NPV 〇〇¥ ạ.*
>
> 📝 _ROI 4指標 提示_


### Rule 24 — Trade concession (tit-for-tat) / 譲歩交換

**ズン (em Dũng):**

> 🇯🇵 「もし〜していただければ、〜いたします。」
>
> 🇻🇳 *Nếu quý anh ~ thì em sẽ ~ ạ.*
>
> 📝 _tit-for-tat 標準_

**ズン (em Dũng):**

> 🇯🇵 「両方ご了承いただけた段階で確定とさせてください。」
>
> 🇻🇳 *Khi cả 2 OK xin phép em sẽ chốt ạ.*
>
> 📝 _conditional confirmation_


### Rule 25 — Silence as tool / 沈黙の活用

**ズン (em Dũng):**

> 🇯🇵 「(沈黙7秒)」
>
> 🇻🇳 *(Im lặng 7 giây)*
>
> 📝 _offer後の沈黙保持_


### Rule 26 — Đối phó với threat / ultimatum / 脅し・最終通告への対応

**ズン (em Dũng):**

> 🇯🇵 「ご指摘の点、もっともでございます。ただ弊社として〜は致しかねます。」
>
> 🇻🇳 *Em xin tiếp thu ạ. Tuy nhiên bên em xin phép không thực hiện được ~ ạ.*
>
> 📝 _脅し対応 bridge+boundary_

**ズン (em Dũng):**

> 🇯🇵 「弊社 CTO をこの場にお呼びしてもよろしいでしょうか？」
>
> 🇻🇳 *Cho phép em mời CTO bên em đến tại chỗ ạ?*
>
> 📝 _senior escalation 許可_


### Rule 27 — Re-anchor sau pushback / 再アンカリング

**ズン (em Dũng):**

> 🇯🇵 「改めて整理させていただきますと、〜は〜の構造で〜を実現する設計です。」
>
> 🇻🇳 *Xin phép em sắp xếp lại, ~ có cấu trúc ~ thực hiện ~ ạ.*
>
> 📝 _再anchor 開始_

**ズン (em Dũng):**

> 🇯🇵 「追加情報として、〜の社内検証結果が出ました。」
>
> 🇻🇳 *Thông tin thêm, đã có kết quả kiểm chứng nội bộ ~ ạ.*
>
> 📝 _新事実追加_


### Rule 28 — Walk away phong nhã / 撤退の作法

**ズン (em Dũng):**

> 🇯🇵 「今回は条件面で折り合いがつかず、誠に残念ではございますが、本件はここでクローズとさせていただきます。」
>
> 🇻🇳 *Lần này điều kiện chưa khớp, em rất tiếc, xin phép cho em được khép lại tại đây ạ.*
>
> 📝 _neutral walk-away closing_

**ズン (em Dũng):**

> 🇯🇵 「今後再度ご一緒できる機会がございましたら、ぜひお声がけください。」
>
> 🇻🇳 *Sau này có cơ hội đồng hành lại, xin quý anh liên hệ em ạ.*
>
> 📝 _door open phrase_


### Rule 29 — Nibble & late demand handling / ニブル・後出し対応

**ズン (em Dũng):**

> 🇯🇵 「ご希望の場合は (A) 有償追加、(B) 既存 scope 内で trade、いずれかの形でご対応可能です。」
>
> 🇻🇳 *Nếu phía em muốn, có (A) thêm có phí, (B) trade trong scope hiện tại — hai cách đều OK ạ.*
>
> 📝 _nibble対応 trade option_

**ズン (em Dũng):**

> 🇯🇵 「追加要素のご検討に際しては全体合意の再 review が必要となります。」
>
> 🇻🇳 *Xem xét yếu tố bổ sung thì cần review lại toàn bộ thỏa thuận ạ.*
>
> 📝 _reset clock 警告_



## Phần IV — Tình huống khó

### Rule 30 — Confirm point of agreement / 合意点の確認

**ズン (em Dũng):**

> 🇯🇵 「最後に本日の合意事項を確認させてください。」
>
> 🇻🇳 *Cuối cùng cho phép em xác nhận các điểm đã đồng thuận hôm nay ạ.*
>
> 📝 _クロージング読み戻し set-up_

**ズン (em Dũng):**

> 🇯🇵 「以上で齟齬ございませんでしょうか？」
>
> 🇻🇳 *Tất cả không có sai lệch nào ạ?*
>
> 📝 _認識合わせの最終確認_

**ズン (em Dũng):**

> 🇯🇵 「24時間以内に確認メールをお送りいたします。」
>
> 🇻🇳 *Em sẽ gửi recap mail trong vòng 24 giờ ạ.*
>
> 📝 _Recap mail commitment_


### Rule 31 — Recap email — tổng hợp xác nhận / 要約・確認メール

**ズン (em Dũng):**

> 🇯🇵 「【ご確認】Phase 3 商談合意事項のまとめ (4/24 開催)」
>
> 🇻🇳 *[Xác nhận] Tổng hợp items đã đồng thuận đàm phán Phase 3 (24/4)*
>
> 📝 _件名標準形_

**ズン (em Dũng):**

> 🇯🇵 「送信前に一度ご確認お願いいたします。」
>
> 🇻🇳 *Trước khi gửi, phiền chị xem giúp em một lần ạ.*
>
> 📝 _Senior レビュー依頼_


### Rule 32 — LOI rồi mới đến contract draft / 契約書ドラフト・LOI

**ズン (em Dũng):**

> 🇯🇵 「ご捺印頂きましたら、続いて 4 週間以内に本契約書ドラフトをご提示いたします。」
>
> 🇻🇳 *Sau khi anh đóng dấu, trong 4 tuần em sẽ gửi contract draft chính ạ.*
>
> 📝 _LOI → 本契約 pace control_

**フオン副部長 (chị Hương):**

> 🇯🇵 「LOI = 商務合意のロック、本契約 = 条項詳細。」
>
> 🇻🇳 *LOI khóa commercial. Contract khóa terms.*
>
> 📝 _2 段階契約フローの原則_


### Rule 33 — Điều chỉnh điều khoản cuối / 契約条項の最終調整

**ズン (em Dũng):**

> 🇯🇵 「本日中に持ち帰り検討させてください。」
>
> 🇻🇳 *Em xin phép mang về xem trong ngày hôm nay ạ.*
>
> 📝 _重要条項に対する即決回避_

**ズン (em Dũng):**

> 🇯🇵 「業界標準でございます。」
>
> 🇻🇳 *Đây là industry standard ạ.*
>
> 📝 _条項主張の framing_


### Rule 34 — Mời ký formal / 調印依頼

**ズン (em Dũng):**

> 🇯🇵 「ご署名・ご捺印いただけますでしょうか。」
>
> 🇻🇳 *Phiền anh ký và đóng dấu giúp em ạ.*
>
> 📝 _調印依頼の標準_

**ズン (em Dũng):**

> 🇯🇵 「6 月 25 日 (水) までにご捺印頂けますと幸いです。」
>
> 🇻🇳 *Em rất mong anh đóng dấu trước thứ Tư 25/6 ạ.*
>
> 📝 _Deadline 明示_


### Rule 35 — Walk-away phong nhã / 商談打ち切り

**ズン (em Dũng):**

> 🇯🇵 「条件面で折り合いがつかず、今回は誠に残念ながら見送りとさせていただきます。」
>
> 🇻🇳 *Do điều kiện hai bên không bridge được, lần này em rất tiếc xin phép tạm gác lại ạ.*
>
> 📝 _Walk-away 主語_

**ズン (em Dũng):**

> 🇯🇵 「ご縁がございましたら、ぜひお声がけください。」
>
> 🇻🇳 *Nếu có duyên, rất mong anh gọi lại em.*
>
> 📝 _関係維持の magic phrase_


### Rule 36 — Chào sau khi đàm phán thành công / 商談成立後の挨拶

**ズン (em Dũng):**

> 🇯🇵 「身の引き締まる思いでございます。」
>
> 🇻🇳 *Em cảm nhận trách nhiệm nặng nề ạ.*
>
> 📝 _Post-deal 大人 tone_

**ズン (em Dũng):**

> 🇯🇵 「頂戴したご期待にお応えできますよう、弊社一同 全力で取り組んでまいります。」
>
> 🇻🇳 *Để đáp lại kỳ vọng đã nhận được, toàn thể bên em sẽ toàn lực nỗ lực ạ.*
>
> 📝 _未来 commit phrase_


### Rule 37 — Internal kickoff sau ký / 社内キックオフ

**ズン (em Dũng):**

> 🇯🇵 「本日のアジェンダは 3 セクション: ①交渉 context、②相手 personality map、③open promises。」
>
> 🇻🇳 *Agenda hôm nay 3 sections: ①Context đàm phán, ②Personality map, ③Open promises.*
>
> 📝 _Internal kickoff structure_

**ズン (em Dũng):**

> 🇯🇵 「事前に hand-off doc 共有済み。質問はその場で。」
>
> 🇻🇳 *Hand-off doc đã share trước. Câu hỏi nêu trực tiếp.*
>
> 📝 _Pre-share + 同期 read 形式_


### Rule 38 — PR release joint approval / 対外発表

**ズン (em Dũng):**

> 🇯🇵 「御社 PR 部のレビュー・両社同時 embargo をご相談させていただけますでしょうか。」
>
> 🇻🇳 *Phiền anh để PR bên anh review + đồng thời embargo cả 2 bên được không ạ?*
>
> 📝 _PR joint approval リクエスト_

**リン (em Linh):**

> 🇯🇵 「金額は『数千万円規模』表記。」
>
> 🇻🇳 *Số tiền ghi 'quy mô vài chục triệu yên'.*
>
> 📝 _PR 金額 framing_


### Rule 39 — Cảm ơn stakeholders / 関係者への感謝

**ズン (em Dũng):**

> 🇯🇵 「皆様のお力添えあってこそでございます。」
>
> 🇻🇳 *Thực sự nhờ sự giúp đỡ của các anh ạ.*
>
> 📝 _Stakeholder formal opener_

**ズン (em Dũng):**

> 🇯🇵 「覚えていてくださってありがとうございます。」
>
> 🇻🇳 *Cảm ơn anh đã nhớ ạ.*
>
> 📝 _Junior が specific 感謝に reply する pattern_



## Phần V — Voicemail, Online & Best Practice

### Rule 40 — Đàm phán đa bên / 多者間交渉

**ズン (em Dũng):**

> 🇯🇵 「3 点まとめてお答えいたします。」
>
> 🇻🇳 *Em xin trả lời gộp 3 điểm.*
>
> 📝 _Multi-party 並列 address opener_

**ズン (em Dũng):**

> 🇯🇵 「まず〇〇様の…次に△△様の…最後に□□様の…」
>
> 🇻🇳 *Đầu tiên là của anh 〇〇... Tiếp theo của anh △△... Cuối cùng của anh □□...*
>
> 📝 _Junior → senior 順序の transition_


### Rule 41 — Đàm phán online / オンライン交渉

**ズン (em Dũng):**

> 🇯🇵 「画面共有させていただきます。」
>
> 🇻🇳 *Em xin phép share screen ạ.*
>
> 📝 _Screen share ON 宣言_

**ズン (em Dũng):**

> 🇯🇵 「御社のご感想を頂戴できればと存じます。」
>
> 🇻🇳 *Em rất mong nhận được cảm nhận từ bên anh ạ.*
>
> 📝 _Anchor 後の沈黙 hand-over_


### Rule 42 — Đàm phán qua phiên dịch / 通訳介在

**ズン (em Dũng):**

> 🇯🇵 「本日の key terms 7 個 reviews。」
>
> 🇻🇳 *Mình review 7 key terms hôm nay.*
>
> 📝 _Pre-brief opener_

**ズン (em Dũng):**

> 🇯🇵 「きゅうきゅう・きゅうご パーセント、つまり 99.95% でございます。」
>
> 🇻🇳 *Chín-chín chín-năm phần trăm, tức là 99.95% ạ.*
>
> 📝 _数値区切り発音_


### Rule 43 — Khi nào escalate senior / エスカレーション

**ズン (em Dũng):**

> 🇯🇵 「私の権限を超えます。5 分ほどお時間頂戴し、Hà CTO に連絡を取らせてください。」
>
> 🇻🇳 *Vượt thẩm quyền của em ạ. Phiền anh cho em 5 phút để liên lạc anh Hà CTO ạ.*
>
> 📝 _Escalation 要請の標準_

**ズン (em Dũng):**

> 🇯🇵 「T2 + T3 trigger。step-in 可否 ご判断ください。」
>
> 🇻🇳 *Trigger T2 + T3. Anh quyết step-in được không ạ.*
>
> 📝 _30 秒 Slack escalate format_


### Rule 44 — Khoảng cách phong cách đàm phán VN-JP / VN-JP 交渉ギャップ

**ズン (em Dũng):**

> 🇯🇵 「特に気にされている内訳要素はございますでしょうか？」
>
> 🇻🇳 *Có phần breakdown nào anh đặc biệt quan tâm không ạ?*
>
> 📝 _JP「高い」 unbundle reframe_

**ズン (em Dũng):**

> 🇯🇵 「もしどちらかをスコープ外にする trade なら、 ¥18M に調整可能でございます。」
>
> 🇻🇳 *Nếu mình trade bằng cách đưa 1 trong 2 ra ngoài scope thì có thể điều chỉnh xuống ¥18M ạ.*
>
> 📝 _Reciprocal trade concession_


### Rule 45 — Retro và cải tiến / 振り返りと改善

**フオン副部長 (chị Hương):**

> 🇯🇵 「5 セクション: worked / didn't / counterfactual / pattern / commit。」
>
> 🇻🇳 *5 sections: worked / didn't / counterfactual / pattern / commit.*
>
> 📝 _Retro template_

**ズン (em Dũng):**

> 🇯🇵 「もし〜していれば、〜できた。」
>
> 🇻🇳 *Nếu mình ~, có thể ~.*
>
> 📝 _Counterfactual phrasing_



---

# Phụ lục B — Từ vựng Tổng hợp / 語彙総合集

*Tổng hợp tất cả từ vựng phone-related từ 60 rules. Sắp xếp theo Phần.*

*Đọc romaji và nghĩa Việt giúp người Việt học JP business dễ tra cứu.*

---


## Phần I — Nền tảng trước nhấc máy

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 漢字 / Tiếng Nhật | よみ | Nghĩa | rule_01 |
| BATNA | batna | Best Alternative To Negotiated Agreement | rule_01 |
| 撤退 | てったい | Rút lui / walk away | rule_01 |
| 譲歩 | じょうほ | Nhượng bộ / concession | rule_01 |
| 利益率 | りえきりつ | Profit margin | rule_01 |
| 内部承認 | ないぶしょうにん | Internal approval | rule_01 |
| シナリオ | shinario | Scenario | rule_01 |
| MoU | em-o-yū | Memorandum of Understanding | rule_01 |
| ZOPA | zopa | Zone Of Possible Agreement | rule_02 |
| 合意可能領域 | ごういかのうりょういき | Vùng có thể thỏa thuận | rule_02 |
| 目標価格 | もくひょうかかく | Target price | rule_02 |
| 撤退価格 | てったいかかく | Reservation / walk-away price | rule_02 |
| 予算上限 | よさんじょうげん | Budget ceiling | rule_02 |
| 着地点 | ちゃくちてん | Landing point / điểm chốt | rule_02 |
| アンカー | ankā | Anchor (giá mở) | rule_02 |
| 稟議 | りんぎ | Ringi (văn bản chuyền tay xin duyệt) | rule_03 |
| 稟議書 | りんぎしょ | Tài liệu ringi | rule_03 |
| 根回し | ねまわし | Nemawashi (vận động ngầm trước họp) | rule_03 |
| 決裁 | けっさい | Sếp ký duyệt cuối | rule_03 |
| 即決 | そっけつ | Quyết định ngay | rule_03 |
| 催促 | さいそく | Hối thúc, đòi | rule_03 |
| 進捗 | しんちょく | Tiến độ | rule_03 |
| 決裁ライン | けっさいライン | Đường duyệt / decision-maker line | rule_04 |
| 予算サイクル | よさんサイクル | Chu kỳ ngân sách | rule_04 |
| 直近業績 | ちょっきんぎょうせき | Kết quả kinh doanh gần đây | rule_04 |
| 営業利益 | えいぎょうりえき | Lợi nhuận hoạt động | rule_04 |
| コスト圧縮 | コストあっしゅく | Cắt giảm chi phí | rule_04 |
| 段階導入 | だんかいどうにゅう | Triển khai theo giai đoạn | rule_04 |
| インテル | interu | Intel (intelligence) | rule_04 |
| 原価 | げんか | Giá vốn / cost | rule_05 |
| 粗利率 | あらりりつ | Gross margin | rule_05 |
| 価値ベース | かちベース | Value-based | rule_05 |
| 戦略案件 | せんりゃくあんけん | Deal chiến lược | rule_05 |
| 商品案件 | しょうひんあんけん | Commodity deal | rule_05 |
| インパクト | impakuto | Impact (tác động) | rule_05 |
| 3段階提案 | さんだんかいていあん | 3-tier proposal | rule_06 |
| 推奨 / おすすめ | すいしょう | Recommended | rule_06 |
| 中間案 | ちゅうかんあん | Phương án giữa | rule_06 |
| 専任 | せんにん | Chuyên trách / dedicated | rule_06 |
| 常駐 | じょうちゅう | Túc trực / on-site | rule_06 |
| 機能削減 | きのうさくげん | Cắt giảm chức năng | rule_06 |
| 比較表 | ひかくひょう | Bảng so sánh | rule_06 |
| すり合わせ | すりあわせ | Align / pre-meeting alignment | rule_07 |
| 役割確認 | やくわりかくにん | Xác nhận vai trò | rule_07 |
| 譲歩順序 | じょうほじゅんじょ | Thứ tự nhượng bộ | rule_07 |
| 撤退ライン | てったいライン | Walk-away line | rule_07 |
| エスカレーション | esukarēshon | Escalation | rule_07 |
| 沈黙の合図 | ちんもくのあいず | Signal im lặng | rule_07 |
| 一致させる | いっちさせる | Đồng nhất | rule_07 |
| 知財 / IP | ちざい | Intellectual Property | rule_08 |
| 所有権 | しょゆうけん | Quyền sở hữu | rule_08 |
| white-label | howaitorēberu | OEM / nhãn trắng | rule_08 |
| 罰則賠償 | ばっそくばいしょう | Penalty / damages | rule_08 |
| 支払条件 | しはらいじょうけん | Điều kiện thanh toán | rule_08 |
| 責任上限 | せきにんじょうげん | Liability cap | rule_08 |
| 競業避止 | きょうぎょうひし | Non-compete | rule_08 |
| 譲歩計画 | じょうほけいかく | Concession plan | rule_09 |
| 引き換え | ひきかえ | Trade / đổi | rule_09 |
| 段階的譲歩 | だんかいてきじょうほ | Ladder concession | rule_09 |
| 契約期間 | けいやくきかん | Thời hạn hợp đồng | rule_09 |
| LTV | エルティーブイ | Lifetime Value | rule_09 |
| 事例公開 | じれいこうかい | Công bố case study | rule_09 |
| 値引き | ねびき | Giảm giá | rule_09 |
| 取り下げ | とりさげ | Rút lại | rule_09 |


## Phần II — Nhận điện thoại

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 商談冒頭 | しょうだんぼうとう | Mở đàm phán | rule_10 |
| お忙しい中 | おいそがしいなか | Trong lúc bận rộn | rule_10 |
| 改めまして | あらためまして | Một lần nữa | rule_10 |
| 拝見する | はいけんする | Xem (kính ngữ) | rule_10 |
| 忌憚ない | きたんない | Thẳng thắn / không kiêng | rule_10 |
| 意見 | いけん | Ý kiến | rule_10 |
| DX 推進 | DXすいしん | Đẩy mạnh DX | rule_10 |
| 立場 | たちば | Vị thế / lập trường | rule_10 |
| 振り返り | ふりかえり | Recap / nhìn lại | rule_11 |
| 経緯 | けいい | Diễn biến / quá trình | rule_11 |
| 直近 | ちょっきん | Gần đây | rule_11 |
| アジェンダ | ajenda | Agenda | rule_11 |
| ディスカッション | disukasshon | Discussion | rule_11 |
| 念頭に置く | ねんとうにおく | Lưu ý / để trong đầu | rule_11 |
| 共通認識 | きょうつうにんしき | Nhận thức chung | rule_11 |
| 観点 | かんてん | Perspective / góc nhìn | rule_12 |
| 課題 | かだい | Vấn đề / pain | rule_12 |
| 在庫予測 | ざいこよそく | Dự báo tồn kho | rule_12 |
| 手動調整 | しゅどうちょうせい | Điều chỉnh thủ công | rule_12 |
| 予算感 | よさんかん | Cảm giác về budget | rule_12 |
| 稟議経路 | りんぎけいろ | Đường ringi | rule_12 |
| 合議 | ごうぎ | Quyết định tập thể | rule_12 |
| 取締役会 | とりしまりやくかい | HĐQT / board | rule_12 |
| 隠れた制約 | かくれたせいやく | Constraint ẩn | rule_13 |
| 議論 | ぎろん | Bàn luận / disagreement | rule_13 |
| 慎重 | しんちょう | Thận trọng | rule_13 |
| 漏洩リスク | ろうえいリスク | Risk rò rỉ | rule_13 |
| 説明可能性 | せつめいかのうせい | Explainability | rule_13 |
| 余裕を持たせる | よゆうをもたせる | Để dư địa | rule_13 |
| 稟議の助け | りんぎのたすけ | Hỗ trợ ringi | rule_13 |
| ミラーリング | mirāringu | Mirroring | rule_14 |
| 要約 | ようやく | Tóm tắt | rule_14 |
| 認識 | にんしき | Nhận thức | rule_14 |
| 確認 | かくにん | Xác nhận | rule_14 |
| trade-off | torēdoofu | Đánh đổi | rule_14 |
| 超過 | ちょうか | Vượt quá | rule_14 |
| 超えなくて大丈夫 | こえなくてだいじょうぶ | Không cần vượt quá | rule_14 |
| 価格感度 | かかくかんど | Price sensitivity | rule_15 |
| 位置付け | いちづけ | Vị thế / positioning | rule_15 |
| 帯域 | たいいき | Dải / range | rule_15 |
| 規模感 | きぼかん | Cảm giác quy mô | rule_15 |
| 想定 | そうてい | Giả định / dự kiến | rule_15 |
| 中位 | ちゅうい | Trung vị / middle rank | rule_15 |
| 決裁者 | けっさいしゃ | Người duyệt | rule_16 |
| 最終決裁 | さいしゅうけっさい | Duyệt cuối | rule_16 |
| 取締役会付議 | とりしまりやくかいふぎ | Đưa lên HĐQT | rule_16 |
| 技術 review | ぎじゅつレビュー | Review kỹ thuật | rule_16 |
| 予算審議 | よさんしんぎ | Thẩm định ngân sách | rule_16 |
| 法務 check | ほうむチェック | Pháp chế kiểm tra | rule_16 |
| 経理部 | けいりぶ | Phòng kế toán | rule_16 |
| 時間管理 | じかんかんり | Time management | rule_17 |
| そろそろ | sorosoro | Có lẽ giờ / sắp đến lúc | rule_17 |
| 移らせていただく | うつらせていただく | Cho phép em chuyển | rule_17 |
| 提案の概要 | ていあんのがいよう | Tổng quan đề xuất | rule_17 |
| 再学習頻度 | さいがくしゅうひんど | Tần suất re-train | rule_17 |
| 経過 | けいか | Đã trôi qua | rule_17 |


## Phần III — Gọi điện thoại đi

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| アンカリング | ankaringu | Anchoring | rule_18 |
| 足元を見られる | あしもとをみられる | Bị bắt thóp | rule_18 |
| 根拠 | こんきょ | Cơ sở / lý do | rule_18 |
| 構成 | こうせい | Cấu thành | rule_18 |
| ROI 倍率 | ROIばいりつ | Bội số ROI | rule_18 |
| 議論が必要 | ぎろんがひつよう | Cần thảo luận | rule_18 |
| 効果 | こうか | Hiệu lực | rule_18 |
| 価格提示 | かかくていじ | Quote giá | rule_19 |
| ご指摘 | ごしてき | Lời nhận xét (kính ngữ) | rule_19 |
| もっとも | もっとも | Có lý / hợp lý | rule_19 |
| 構成見直し | こうせいみなおし | Xem lại cấu thành | rule_19 |
| 流用 | りゅうよう | Tận dụng / dùng lại | rule_19 |
| 工数 | こうすう | Effort / man-day | rule_19 |
| 契約期間延長 | けいやくきかんえんちょう | Kéo dài thời hạn hợp đồng | rule_19 |
| 高い | たかい | Đắt | rule_20 |
| 角度 | かくど | Góc nhìn | rule_20 |
| 別の角度から | べつのかくどから | Từ góc nhìn khác | rule_20 |
| 運用工数 | うんようこうすう | Effort vận hành | rule_20 |
| 在庫調整 | ざいこちょうせい | Điều chỉnh tồn kho | rule_20 |
| net positive | netto-pojitibu | Net dương | rule_20 |
| 予算面 | よさんめん | Mặt ngân sách | rule_20 |
| 持ち帰り検討 | もちかえりけんとう | Mang về xem xét | rule_20 |
| スコープ | sukōpu | Scope | rule_21 |
| 調整 | ちょうせい | Điều chỉnh | rule_21 |
| 後出し | あとだし | Đẩy về sau / defer | rule_21 |
| カスタム部分 | kasutamuぶぶん | Phần custom | rule_21 |
| 半常駐 | はんじょうちゅう | Bán-túc trực | rule_21 |
| 単価 | たんか | Unit price | rule_21 |
| 同等 | どうとう | Tương đương | rule_21 |
| 復活 | ふっかつ | Khôi phục | rule_21 |
| バンドリング | bandoringu | Bundling | rule_22 |
| アンバンドリング | anbandoringu | Unbundling | rule_22 |
| 個別 cost | こべつコスト | Cost từng mục | rule_22 |
| パッケージディスカウント | pakkēji disukaunto | Package discount | rule_22 |
| 共通基盤化 | きょうつうきばんか | Build trên nền chung | rule_22 |
| 還元 | かんげん | Hoàn lại / chia sẻ | rule_22 |
| ラインアイテム | rain'aitemu | Line item | rule_22 |
| 投資 | とうし | Đầu tư | rule_23 |
| 年間リターン | ねんかんリターン | Annual return | rule_23 |
| 回収期間 | かいしゅうきかん | Payback period | rule_23 |
| 割引率 | わりびきりつ | Discount rate | rule_23 |
| 上振れ | うわぶれ | Vượt dự kiến | rule_23 |
| 第三者監査 | だいさんしゃかんさ | Third-party audit | rule_23 |
| 控制された外挿 | せいぎょされたがいそう | Controlled extrapolation | rule_23 |
| 譲歩交換 | じょうほこうかん | Trade nhượng bộ | rule_24 |
| お取り計らい | おとりはからい | Sắp xếp / hỗ trợ | rule_24 |
| 条項 | じょうこう | Điều khoản | rule_24 |
| 自動更新 | じどうこうしん | Tự động gia hạn | rule_24 |
| 公式事例 | こうしきじれい | Case study chính thức | rule_24 |
| 広報部 | こうほうぶ | Phòng PR | rule_24 |
| 整理する | せいりする | Sắp xếp / tổng hợp | rule_24 |
| 沈黙 | ちんもく | Im lặng | rule_25 |
| 思考時間 | しこうじかん | Thời gian suy nghĩ | rule_25 |
| 自爆 | じばく | Tự bùng (tự gây hại) | rule_25 |
| ハードル | hādoru | Rào / khó khăn | rule_25 |
| 調整余地 | ちょうせいよち | Dư địa điều chỉnh | rule_25 |
| 口を封じる | くちをふうじる | Khoá miệng | rule_25 |
| 脅し | おどし | Đe dọa | rule_26 |
| 最終通告 | さいしゅうつうこく | Tối hậu thư | rule_26 |
| 粗利を割り込む | あらりをわりこむ | Phá ngưỡng margin | rule_26 |
| 致しかねます | いたしかねます | Khó thực hiện được | rule_26 |
| 達成度合い | たっせいどあい | Mức độ đạt được | rule_26 |
| 再アンカリング | さいアンカリング | Re-anchoring | rule_27 |
| 改めて整理 | あらためてせいり | Sắp xếp lại | rule_27 |
| 追加情報 | ついかじょうほう | Thông tin thêm | rule_27 |
| 上方修正 | じょうほうしゅうせい | Điều chỉnh tăng | rule_27 |
| 社内検証 | しゃないけんしょう | Kiểm chứng nội bộ | rule_27 |
| 期待値 | きたいち | Giá trị kỳ vọng | rule_27 |
| 社内ハードル | しゃないハードル | Rào nội bộ | rule_27 |
| 再協議 | さいきょうぎ | Thảo luận lại | rule_27 |
| 折り合いがつかない | おりあいがつかない | Không khớp | rule_28 |
| 誠に残念 | まことにざんねん | Thật tiếc | rule_28 |
| クローズ | kurōzu | Close / kết thúc | rule_28 |
| ご縁 | ごえん | Mối duyên / kết nối | rule_28 |
| 貴重な経験 | きちょうなけいけん | Trải nghiệm quý | rule_28 |
| 事業環境 | じぎょうかんきょう | Môi trường kinh doanh | rule_28 |
| 歓迎 | かんげい | Hoan nghênh | rule_28 |
| ニブル | niburu | Nibble (gặm thêm) | rule_29 |
| ついでに | ついでに | Tiện thể | rule_29 |
| サービスで | サービスで | Khuyến mãi miễn phí | rule_29 |
| 全体合意 | ぜんたいごうい | Đồng thuận tổng thể | rule_29 |
| 後ろ倒し | うしろだおし | Đẩy lùi (deadline) | rule_29 |
| 抑止力 | よくしりょく | Sức răn đe | rule_29 |
| 再 review | さいレビュー | Review lại | rule_29 |


## Phần IV — Tình huống khó

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 合意事項 | ごういじこう | Items đã đồng thuận | rule_30 |
| 読み戻し | よみもどし | Read back | rule_30 |
| 齟齬 | そご | Sự sai lệch / mismatch | rule_30 |
| 月末締め | げつまつじめ | Chốt cuối tháng | rule_30 |
| 翌月末払い | よくげつまつばらい | Trả cuối tháng kế | rule_30 |
| 共同所有 | きょうどうしょゆう | Đồng sở hữu | rule_30 |
| 概ね | おおむね | Đại thể | rule_30 |
| 要約メール | ようやくメール | Recap email | rule_31 |
| 確認メール | かくにんメール | Confirmation email | rule_31 |
| 出席者 | しゅっせきしゃ | Người tham dự | rule_31 |
| 未決事項 | みけつじこう | Items chưa quyết | rule_31 |
| 次のアクション | つぎのアクション | Next actions | rule_31 |
| 上申 | じょうしん | Đệ trình lên cấp trên | rule_31 |
| 添付 | てんぷ | Đính kèm | rule_31 |
| LOI | エル・オー・アイ | Letter of Intent | rule_32 |
| 基本合意書 | きほんごういしょ | Basic agreement (LOI JP terminology) | rule_32 |
| 捺印 | なついん | Đóng dấu (sign + seal) | rule_32 |
| 本契約書 | ほんけいやくしょ | Main contract | rule_32 |
| 主要条件 | しゅようじょうけん | Commercial terms cốt lõi | rule_32 |
| 効力発生日 | こうりょくはっせいび | Ngày có hiệu lực | rule_32 |
| 法務 | ほうむ | Bộ phận pháp chế / Legal | rule_32 |
| 税抜 | ぜいぬき | Chưa bao gồm thuế | rule_32 |
| 損害賠償 | そんがいばいしょう | Bồi thường thiệt hại / indemnity | rule_33 |
| 上限 | じょうげん | Cap / mức trần | rule_33 |
| 帰属 | きぞく | Thuộc về | rule_33 |
| 知的財産 | ちてきざいさん | IP (sở hữu trí tuệ) | rule_33 |
| 罰則 | ばっそく | Penalty | rule_33 |
| 業界標準 | ぎょうかいひょうじゅん | Industry standard | rule_33 |
| ライセンス供与 | ライセンスきょうよ | Cấp license | rule_33 |
| 営業日 | えいぎょうび | Ngày làm việc | rule_33 |
| 調印 | ちょういん | Signing (formal) | rule_34 |
| ご署名 | ごしょめい | Sign (kính ngữ) | rule_34 |
| ご捺印 | ごなついん | Đóng dấu (kính ngữ) | rule_34 |
| 業務委託契約書 | ぎょうむいたくけいやくしょ | Hợp đồng giao việc / SOW contract | rule_34 |
| 原本 | げんぽん | Bản gốc | rule_34 |
| eSignature | イー・シグネチャー | eSignature | rule_34 |
| 締結 | ていけつ | Ký kết | rule_34 |
| 急かし | せかし | Thúc giục | rule_34 |
| 打ち切り | うちきり | Hủy, dừng | rule_35 |
| 折り合いがつかず | おりあいがつかず | Không bridge được điều kiện | rule_35 |
| 見送り | みおくり | Tạm hoãn / không tiến hành | rule_35 |
| 原価構造 | げんかこうぞう | Cấu trúc giá thành | rule_35 |
| 半端な | はんぱな | Nửa vời | rule_35 |
| 再検討 | さいけんとう | Xem xét lại | rule_35 |
| 身の引き締まる思い | みのひきしまるおもい | Cảm thấy trách nhiệm nặng nề | rule_36 |
| 御礼 | おんれい | Lời cảm ơn (formal) | rule_36 |
| 頂戴 | ちょうだい | Nhận (kính ngữ) | rule_36 |
| 全力でお取組み | ぜんりょくでおとりくみ | Toàn lực cam kết | rule_36 |
| 信頼 | しんらい | Tin tưởng | rule_36 |
| 段取り | だんどり | Sắp xếp | rule_36 |
| キックオフ | kickoff | Kickoff | rule_37 |
| 引き継ぎ | ひきつぎ | Hand-off | rule_37 |
| 内訳 | うちわけ | Cấu thành / breakdown | rule_37 |
| commitment | コミットメント | Cam kết | rule_37 |
| reliability budget | リライアビリティバジェット | Reliability budget | rule_37 |
| 同期 | どうき | Đồng bộ / sync | rule_37 |
| 対外発表 | たいがいはっぴょう | Công bố ra ngoài | rule_38 |
| プレスリリース | プレスリリース | Press release | rule_38 |
| 数千万円規模 | すうせんまんえんきぼ | Quy mô vài chục triệu yên | rule_38 |
| Embargo | エンバーゴ | Embargo (thời điểm phát hành) | rule_38 |
| 同時 release | どうじリリース | Cùng lúc release | rule_38 |
| Joint quote | ジョイントクオート | Trích dẫn chung | rule_38 |
| 体裁 | ていさい | Hình thức / dáng vẻ | rule_38 |
| 文言 | もんごん | Câu chữ / wording | rule_38 |
| 関係者 | かんけいしゃ | Stakeholder / người liên quan | rule_39 |
| お力添え | おちからぞえ | Sự giúp sức (formal) | rule_39 |
| 細やか | こまやか | Tỉ mỉ | rule_39 |
| 指摘 | してき | Chỉ ra / point out | rule_39 |
| 死角 | しかく | Điểm mù | rule_39 |
| support function | サポートファンクション | Bộ phận hỗ trợ (kế toán, legal) | rule_39 |
| 個別 | こべつ | Riêng từng người | rule_39 |


## Phần V — Voicemail, Online & Best Practice

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 多者間 | たしゃかん | Đa bên | rule_40 |
| 並列 | へいれつ | Song song | rule_40 |
| 保守延長 | ほしゅえんちょう | Gia hạn maintenance | rule_40 |
| Payback period | ペイバック・ピリオド | Thời gian hoàn vốn | rule_40 |
| 純利益 | じゅんりえき | Lợi nhuận ròng | rule_40 |
| 別枠 | べつわく | Khung riêng | rule_40 |
| 専任 PM | せんにん PM | PM chuyên trách | rule_40 |
| Reliability budget | リライアビリティ・バジェット | Reliability budget | rule_40 |
| カメラ直視 | カメラちょくし | Nhìn thẳng camera | rule_41 |
| 画面共有 | がめんきょうゆう | Screen share | rule_41 |
| 凝視 | ぎょうし | Gaze fixed | rule_41 |
| 沈黙保持 | ちんもくほじ | Giữ im lặng | rule_41 |
| ネット遅延 | ネットちえん | Network lag | rule_41 |
| Hand stillness | ハンドスティルネス | Tay không động | rule_41 |
| Eye contact mock | アイコンタクトモック | Mô phỏng eye contact | rule_41 |
| 通訳 | つうやく | Phiên dịch | rule_42 |
| 介在 | かいざい | Trung gian / mediated | rule_42 |
| 区切り発音 | くぎりはつおん | Phát âm tách rõ | rule_42 |
| Pre-brief | プレ・ブリーフ | Brief trước | rule_42 |
| Ear-shot 距離 | イアショット きょり | Khoảng cách nghe rõ | rule_42 |
| Memory buffer | メモリーバッファ | Bộ nhớ tạm | rule_42 |
| Improv ミス | インプロビザミス | Improv mistake | rule_42 |
| 権限を超えます | けんげんをこえます | Vượt thẩm quyền | rule_43 |
| 取締役会規定 | とりしまりやくかいきてい | Quy định HĐQT | rule_43 |
| 段階的 cap | だんかいてき cap | Cap theo bậc | rule_43 |
| Trigger | トリガー | Trigger | rule_43 |
| Microexpression | マイクロエクスプレッション | Biểu cảm vi mô | rule_43 |
| Step-in | ステップイン | Bước vào (senior intervene) | rule_43 |
| 直接 | ちょくせつ | Trực tiếp | rule_44 |
| 間接 | かんせつ | Gián tiếp | rule_44 |
| Reciprocal | レシプロカル | Có qua có lại | rule_44 |
| Ratchet effect | ラチェット効果 | Hiệu ứng bánh cóc (giảm rồi không lên lại) | rule_44 |
| Code-switch | コードスイッチ | Chuyển code | rule_44 |
| Unbundle | アンバンドル | Tách ra | rule_44 |
| Realtime coach | リアルタイムコーチ | Coach trực tiếp tại chỗ | rule_44 |
| Post-mortem | ポストモーテム | Post-mortem | rule_45 |
| Counterfactual | カウンターファクチュアル | Giả định ngược | rule_45 |
| Pattern | パターン | Pattern | rule_45 |
| Commit | コミット | Cam kết | rule_45 |
| Pocket card | ポケットカード | Card bỏ túi | rule_45 |
| Adherence | アドヒアレンス | Mức độ tuân thủ | rule_45 |
| Habit 化 | habit か | Habit hóa | rule_45 |
| Psychological safety | 心理的安全性 | An toàn tâm lý | rule_45 |


**Tổng:** 318 từ unique đã liệt kê trong sách.


---

# Phụ lục C — BJT Practice Tổng Hợp / BJT練習問題集

*Tổng hợp tất cả BJT practice questions từ 60 rules, sắp xếp theo level và skill.*

*Dùng để luyện thi BJT business Japanese — câu hỏi có audio prompt được link đến rule gốc.*

---


## Level J2 (21 câu)

### J2.1 (từ rule_01 — BATNA: Phương án thay thế tốt nhất)

**Skill:** 場面把握

**Q:** BATNAとして適切でないものは？

- A) 数値化された撤退ライン
- B) 実在する代替案件 (例: 他社からのMoU)
- **C) 「感覚的にこの辺で妥協できそう」という曖昧な判断**
- D) 内部承認済みの再交渉条件

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 BATNAは『数値+条件+承認者』が揃って初めて機能する。曖昧な感覚では交渉力にならない。
- 🇻🇳 BATNA cần 'con số + điều kiện + người duyệt' mới có hiệu lực. Cảm giác mơ hồ = không thành đòn bẩy đàm phán.

### J2.2 (từ rule_02 — ZOPA: Vùng có thể thỏa thuận)

**Skill:** 場面把握

**Q:** ZOPA マッピングに必要な4数値はどれ？

- A) 自社 target + 自社 reservation のみ
- **B) 自社 target + reservation + 相手 ceiling + 相手 floor**
- C) 自社 target + 相手 ceiling のみ
- D) 相手 ceiling + 競合価格 + 自社原価 + 利益率

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 ZOPA は両者の上下限4点で初めて存在を判定できる。自社側だけ・相手側だけでは不十分。
- 🇻🇳 ZOPA cần 4 điểm (2 mình + 2 khách) mới xác định được vùng giao. Chỉ một bên không đủ.

### J2.3 (từ rule_03 — Hiểu phong cách quyết định ringi)

**Skill:** 場面把握

**Q:** 稟議が10日進行中の段階で、相手 PM に送るのに最も適切なメールは？

- A) 「今週中にイエス・ノーをご回答ください」
- **B) 「稟議の進捗、追加情報あればご遠慮なくお声がけください」**
- C) 「ご返信ない場合は撤回いたします」
- D) 「他社からも引き合いがありますのでお急ぎください」

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 稟議中はサポート姿勢が正解。期限を切る・脅すのは日本企業との関係を破壊する。
- 🇻🇳 Khi đang ringi, tư thế support là đúng. Đặt deadline / dọa = phá quan hệ với doanh nghiệp Nhật.

### J2.4 (từ rule_04 — Thu thập intel khách)

**Skill:** 場面把握

**Q:** 顧客リサーチ4軸に含まれないものは？

- A) 決裁ライン (誰がいくらまで決裁できるか)
- B) 予算サイクル (年度予算のタイミング)
- **C) 顧客社員の家族構成**
- D) 直近業績 (IR・営業利益)

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 4軸は『決裁・予算・競合・業績』。家族構成は B2B 交渉に無関係でプライバシー侵害にもなる。
- 🇻🇳 4 trục: decision/budget/đối thủ/business. Gia đình nhân viên không liên quan B2B + xâm phạm riêng tư.

### J2.5 (từ rule_07 — Pre-meeting alignment nội bộ)

**Skill:** 場面把握

**Q:** 事前すり合わせで決めるべき4点に含まれないものは？

- A) 誰が何を発言するかの役割
- B) 譲歩の順序とトレード条件
- C) 撤退ライン (walk-away)
- **D) 商談後の打ち上げ会場**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 4点は『役割・譲歩順・撤退ライン・沈黙合図』。打ち上げは交渉戦略と無関係。
- 🇻🇳 4 điểm: vai trò / thứ tự nhượng bộ / walk-away / signal im lặng. Liên hoan không liên quan.

### J2.6 (từ rule_10 — Câu mở chào lịch sự)

**Skill:** 場面把握

**Q:** 商談冒頭30秒の4要素に含まれないものは？

- A) お時間をいただいたことへの感謝
- B) 再自己紹介とチーム紹介
- C) 相手状況への言及 (IR・業績など)
- **D) 値段と支払条件の即提示**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 値段は冒頭で出さない。冒頭は tone を作る30秒で、価格は discovery 後。
- 🇻🇳 Giá không ra ngay đầu. 30s đầu là set tone, giá ra sau discovery.

### J2.7 (từ rule_11 — Set context + agenda)

**Skill:** 場面把握

**Q:** コンテキスト設定の3拍として正しいものは？

- A) 値段提示→交渉→契約
- **B) 前回振り返り→状況確認→本日agenda提示**
- C) 雑談→自慢→値引き
- D) 謝罪→譲歩→約束

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 コンテキスト設定3拍は「振り返り・状況確認・agenda」。CFO 等 new joiner にも対応。
- 🇻🇳 3 nhịp set context: recap / confirm tình hình / đề xuất agenda. Bao gồm cả new joiner như CFO.

### J2.8 (từ rule_12 — Discovery questions: 5 categories)

**Skill:** 場面把握

**Q:** Discovery 5観点に含まれないものは？

- A) Pain (現状の課題)
- B) Goal (理想状態)
- C) Budget (予算感)
- **D) 競合社員の年収**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 5観点は Pain/Goal/Budget/Timeline/Decision。競合社員年収は無関係。
- 🇻🇳 5 trục: Pain/Goal/Budget/Timeline/Decision. Lương nhân viên đối thủ không liên quan.

### J2.9 (từ rule_14 — Mirror + summarize)

**Skill:** 場面把握

**Q:** Discovery 中の mirroring の主目的は？

- A) 相手を称賛するため
- **B) 誤解防止と相手に「聞かれている」感を与えるため**
- C) 時間を稼ぐため
- D) 値段を提示する前置き

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Mirroring は誤解防止 + trust 構築。1週間後に誤解が露呈して deal を失うリスクを防ぐ。
- 🇻🇳 Mirror để chống hiểu sai + xây trust. Tránh risk 1 tuần sau lộ hiểu lầm rồi mất deal.

### J2.10 (từ rule_16 — Confirm decision authority)

**Skill:** 場面把握

**Q:** 決裁者確認で必ず聞くべき2点は？

- A) 誰が duyệt + その人の年齢
- **B) 誰が duyệt + 残ステップと期間**
- C) 誰が duyệt + その人の出身大学
- D) 誰が duyệt + その人の競合経歴

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 決裁者本人 + 決裁前のステップ・期間。両方揃って初めてtimelineが組める。
- 🇻🇳 Người duyệt + step và thời gian trước duyệt. Đủ cả hai mới ghép được timeline.

### J2.11 (từ rule_17 — Time-box discussion)

**Skill:** 場面把握

**Q:** Discovery が予定30分を超えそうな時、相手が追加質問してきた場合の最適対応は？

- A) 「時間切れですので次へ」と固く切る
- **B) 重要質問として認め、次フェーズに park する**
- C) 30分追加して全部答える
- D) 質問を無視して提案に進む

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Park は質問を尊重しつつ time-box を守る両立解。固い切りも overrun も両方避ける。
- 🇻🇳 Park vừa tôn trọng câu hỏi vừa giữ time-box. Tránh cả cắt cứng lẫn overrun.

### J2.12 (từ rule_30 — Confirm point of agreement)

**Skill:** 場面把握

**Q:** 商談クロージングで読み戻しが必要な理由として最も適切なものは？

- A) 礼儀として形式上必要だから
- **B) 稟議後に認識ズレが発覚すると再交渉になり、口頭読み戻しがその予防策だから**
- C) 相手にプレッシャーをかけるため
- D) 通訳の練習のため

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 稟議プロセス中に認識ズレが発覚すると修正コストが大きい。読み戻しはそのリスクを当日に解消する手段。
- 🇻🇳 Trong quá trình ringi nếu phát hiện mismatch thì cost sửa cao. Read back giải quyết risk đó ngay trong ngày.

### J2.13 (từ rule_31 — Recap email — tổng hợp xác nhận)

**Skill:** 場面把握

**Q:** 商談後 recap メールを 24 時間以内に送る最大の理由は？

- A) 礼儀作法のため
- **B) クライアントの稟議文書に添付する正式な認識合わせ文書となるため**
- C) 上司に報告するため
- D) 翻訳に時間がかかるため

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 稟議は商談直後から動く。recap メールが添付されることで認識ズレを防ぎ、稟議が止まらない。
- 🇻🇳 Ringi chạy ngay sau đàm phán. Recap mail được attach làm tài liệu chính thức → ngăn mismatch + ringi không bị block.

### J2.14 (từ rule_32 — LOI rồi mới đến contract draft)

**Skill:** 場面把握

**Q:** LOI を本契約書の前に締結する最大の理由は？

- A) 本契約書を簡略化するため
- **B) 商務条件 (価格・期間・スコープ) を先にロックし、本契約交渉を条項詳細だけに絞るため**
- C) 支払を分割するため
- D) 翻訳費を節約するため

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 LOI で commercial がロック済みなら本契約交渉は条項詳細のみ。商務 re-open を防ぐ。
- 🇻🇳 LOI khóa commercial → contract negotiation chỉ về terms detail. Ngăn việc re-open thương mại.

### J2.15 (từ rule_34 — Mời ký formal)

**Skill:** 表現読解

**Q:** 商務メールで「サインお願いします」が不適切な理由は？

- A) 短すぎるから
- **B) 「サイン」はカジュアル表現で、商務文書では「ご署名・ご捺印」を用いる**
- C) 敬語が足りないから
- D) 送信時刻が遅いから

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 「サイン」は日常会話レベル。商務契約は「ご署名・ご捺印いただけますでしょうか」が標準。
- 🇻🇳 'サイン' ở mức hội thoại hàng ngày. Trong business contract phải dùng 「ご署名・ご捺印いただけますでしょうか」.

### J2.16 (từ rule_36 — Chào sau khi đàm phán thành công)

**Skill:** 表現読解

**Q:** 商談成立後の挨拶として最も適切なものは？

- A) ありがとうございます！！本当に嬉しいです！！
- **B) 身の引き締まる思いでございます。ご期待にお応えできますよう全力で取り組んでまいります。**
- C) サンキューです！次もよろしくお願いします！
- D) 契約書受領しました。

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 JP exec 向けは emotional hype ではなく responsibility + commit tone が大人。A は学生っぽい、C はカジュアル過ぎ、D は dry。
- 🇻🇳 Với JP exec không phải emotional hype mà là responsibility + commit tone mới chuyên nghiệp. A non, C casual quá, D khô.

### J2.17 (từ rule_37 — Internal kickoff sau ký)

**Skill:** 場面把握

**Q:** 営業 → delivery のハンドオフで最も漏れやすく、漏れると顧客 trust に響く要素は？

- A) 契約書 PDF
- **B) 口頭 commitment (例: 「次回も検討」「金曜 preview 共有」)**
- C) 請求書送付先
- D) オフィス住所

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 口頭 commitment は契約外でも顧客の記憶に残る。文書化されないと delivery 側が知らず、後から「あれはどうなったか」と問われる。
- 🇻🇳 Commitment miệng nằm ngoài contract nhưng khách nhớ. Không document hóa thì delivery không biết, khách hỏi 'cái đó sao rồi' sau đó.

### J2.18 (từ rule_39 — Cảm ơn stakeholders)

**Skill:** 場面把握

**Q:** junior staff への感謝として最も loyalty を高めるのは？

- A) 全社 Slack で「みんなお疲れ様」
- **B) 個別 DM で specific contribution (例: 「embargo 間に合わせの 2 晩 overtime」) に言及**
- C) ボーナスを出す
- D) 上司から代わりに伝える

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 junior は effort detail を覚えられていることに価値を感じる。generic は未投資 signal。
- 🇻🇳 Junior thấy giá trị khi effort detail được nhớ. Chung chung = signal 'không đầu tư'.

### J2.19 (từ rule_41 — Đàm phán online)

**Skill:** 場面把握

**Q:** オンライン交渉でアンカー提示後の沈黙の effective range は？

- A) オフライン同様 7-10 秒
- **B) online は 4 秒前後、5 秒超えるとネット遅延と勘違いされ interrupt される**
- C) 1 秒
- D) 沈黙はオンラインでは効果なし

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 online silence は network lag と区別がつきにくく、5 秒超えで「聞こえてますか?」 interrupt が出やすい。4 秒が安全な anchor 効果保持区間。
- 🇻🇳 Silence online khó phân biệt với lag mạng, quá 5 giây dễ bị 'có nghe không?' interrupt. 4 giây là vùng an toàn giữ anchoring effect.

### J2.20 (từ rule_42 — Đàm phán qua phiên dịch)

**Skill:** 場面把握

**Q:** 通訳介在交渉で「99.95%」を伝える時の最も安全な方法は？

- A) 通常 pace で「99.95%」と一気に言う
- **B) 「きゅうきゅう・きゅうご パーセント、つまり 99.95%」と区切り発音 + 数字 confirm**
- C) 通訳に任せる
- D) メモに書いて見せるだけ

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 数値は通訳の最大ミス source。区切り発音 + 数字 confirm で 99.5/99.95 の混同を防ぐ。
- 🇻🇳 Số là nguồn lỗi lớn nhất của phiên dịch. Đọc tách + đọc lại số để tránh nhầm 99.5/99.95.

### J2.21 (từ rule_45 — Retro và cải tiến)

**Skill:** 場面把握

**Q:** 商談 retro で「次回頑張ります」 commit が機能しない最大の理由は？

- A) 敬語が足りない
- **B) 具体的 action / deadline / measurable 効果がなく adhere できない**
- C) 上司に共有していない
- D) 翻訳されていない

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Commit は具体 action + deadline + 効果測定 (follow-up retro) で初めて機能。「頑張る」は wishlist。
- 🇻🇳 Commit chỉ hoạt động khi có action cụ thể + deadline + đo hiệu quả (follow-up retro). 'Cố gắng' là wishlist.


## Level J1 (22 câu)

### J1.1 (từ rule_05 — Định giá strategy)

**Skill:** 表現読解

**Q:** 戦略案件 (新機能込み・売上+¥80M インパクト) に最も適切な価格戦略は？

- A) Cost-plus 単独
- **B) Value-based + anchoring**
- C) 競合追随 (競合と同額)
- D) 市場最低価格

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 戦略案件は cost ではなく value で売る。Anchoring で交渉余地を確保しつつ ROI で正当化する。
- 🇻🇳 Deal chiến lược bán theo value, không theo cost. Anchoring để có chỗ đàm phán + ROI để biện minh.

### J1.2 (từ rule_06 — 3-tier proposal: Good / Better / Best)

**Skill:** 表現読解

**Q:** 3段階提案で「Good」案を意図的に弱体化させる目的は？

- A) 顧客に最安値を選ばせるため
- **B) 顧客が「これではニーズに届かない」と自覚し、Better を選ぶよう誘導するため**
- C) 競合に Good の価格を見せるため
- D) 原価を下げるため

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Good の弱体化は『安いだけでは足りない』を顧客に気づかせ、Better を相対的に魅力化する choice architecture。
- 🇻🇳 Làm Good yếu để khách tự nhận 'rẻ thôi không đủ', làm Better tương đối hấp dẫn — choice architecture.

### J1.3 (từ rule_08 — Walk-away point)

**Skill:** 表現読解

**Q:** 撤退ライン5軸の組み合わせとして正しいのは？

- A) 価格・社員数・オフィス位置・出張日数・福利厚生
- **B) 価格・IP・SLA・支払条件・責任上限**
- C) 価格・コーヒー予算・座席配置・服装規定・ランチ時間
- D) 価格・部長承認・部門予算・上司気分・天気

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 標準5軸は『価格・IP・SLA・支払・責任』。商務契約の主要リスク項目。
- 🇻🇳 5 trục chuẩn: giá / IP / SLA / payment / liability — các mục risk chính của hợp đồng thương mại.

### J1.4 (từ rule_09 — Concession plan)

**Skill:** 表現読解

**Q:** 譲歩計画でtrade-back原則とは？

- A) 譲歩したら必ず元に戻すこと
- **B) trade が拒否された場合、対応する譲歩も取り下げて前段階に戻すこと**
- C) 毎回譲歩額を倍にすること
- D) 譲歩のたびに上司に確認すること

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 trade-back: trade(引き換え) 拒否時は譲歩も取り下げ、前段階の価格に戻す。unilateral concession 防止策。
- 🇻🇳 Trade-back: nếu trade bị từ chối, rút nhượng bộ, quay lại giá nấc trước. Phòng tránh unilateral concession.

### J1.5 (từ rule_13 — Listen for hidden constraints)

**Skill:** 発言聴解

**Q:** 「ちょっと社内で議論があって…」と言う相手に最も適切な対応は？

- A) 「では予定通り進めましょう」とそのまま流す
- **B) 「もう少し詳しくお聞かせいただけますでしょうか」と open-end で掘る**
- C) 「なんで議論があるんですか？」と詰問する
- D) 「社内のことは関係ないので結論だけください」と切る

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 日本の顧客は直接言わず signal で示す。聞き流すと後で稟議停止に陥る。詰問tone も close downさせる。
- 🇻🇳 Khách Nhật không nói thẳng, dùng signal. Bỏ qua = sau bị ringi đứng. Tone tra hỏi cũng làm khách đóng cửa.

### J1.6 (từ rule_15 — Probe price sensitivity)

**Skill:** 表現読解

**Q:** 日本のCFOから予算帯域を引き出すのに最適な質問は？

- A) 「予算はいくらですか？」
- **B) 「Phase 2 と比較して規模感的にどのあたりを想定されていますか？」**
- C) 「予算が少ないと困りますが…」
- D) 「他社はもっと払っていますよ」

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Comparable approach は既知anchor から倍数を聞き、相手が答えやすい形に分解する。直接質問は日本顧客にとって失礼に近い。
- 🇻🇳 Comparable approach lấy anchor đã biết, hỏi bội số — dễ trả lời. Hỏi thẳng gần như bất lịch sự với khách Nhật.

### J1.7 (từ rule_18 — Anchor first hay wait)

**Skill:** 表現読解

**Q:** アンカリング判断 — 「先に値段を出すべき」場面はどれ？

- A) ZOPA 推定が不十分・新規顧客で competitor 状況も不明
- **B) ZOPA 推定が solid・根拠データが揃っている**
- C) 上司に値段の事前承認を取っていない
- D) 顧客が緊張している

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Go first は ZOPA を把握していて根拠が揃っている時のみ有効。条件未充足なら let them go first で intel を取る。
- 🇻🇳 Go first chỉ hữu hiệu khi đã có ZOPA + cơ sở dữ liệu. Chưa đủ điều kiện thì let them go first để lấy intel.

### J1.8 (từ rule_19 — Cấu trúc câu đề xuất giá)

**Skill:** 表現読解

**Q:** 価格 counter で抜けてはいけない4要素は？

- **A) Frame・Number・Justification・Trade**
- B) 謝罪・低姿勢・遠慮・撤回
- C) 脅し・期限・最終通告・ボーナス
- D) 感情・記憶・推測・希望

**Đáp án:** A

**Giải thích / 解説:**
- 🇯🇵 4要素はFrame(枠組み)・Number(数字)・Justification(根拠)・Trade(引き換え)。1つでも抜けるとleverage失う。
- 🇻🇳 4 yếu tố: Frame / Number / Justification / Trade. Thiếu 1 là mất leverage.

### J1.9 (từ rule_20 — Đối phó với 'đắt')

**Skill:** 発言聴解

**Q:** 顧客が「高い」と言った直後の最適行動は？

- A) 即値引きする
- **B) Acknowledge → Reframe (ROI/cost-of-inaction) → 3 Option を展開**
- C) 「高くないですよ」と反論
- D) 沈黙して何も言わない

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 「高い」は購買意欲のサイン。3step (Ack→Reframe→Option) で leverage を保ちつつ deal を進める。
- 🇻🇳 'Đắt' là sign quan tâm. 3 step (Ack→Reframe→Option) giữ leverage và đẩy deal.

### J1.10 (từ rule_21 — Giảm scope thay vì giảm giá)

**Skill:** 表現読解

**Q:** 顧客が値下げを求めた時、粗利率を守る最善のアプローチは？

- A) そのまま値下げして契約獲得を優先
- **B) スコープ削減 (deferable feature を後出し) で unit price 維持**
- C) 断って walk away
- D) 他社競合価格に合わせる

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 scope 削減で unit price 維持は粗利率を守りつつ顧客 budget に合わせる両立解。defer 機能は Phase n+1 で復活させる。
- 🇻🇳 Cắt scope giữ unit price = vừa giữ margin vừa khớp budget khách. Tính năng defer khôi phục ở Phase n+1.

### J1.11 (từ rule_22 — Bundle / unbundle pricing)

**Skill:** 表現読解

**Q:** CFO が「個別 line item の価格を出してほしい」と言った時の最適対応は？

- A) 「パッケージのみ」と拒否
- **B) unbundle 開示 + package discount で稟議書作成を支援**
- C) 言われた1機能だけ抜き出して値段提示
- D) 競合の line item を出す

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 CFO は稟議書 tools が必要。unbundle 開示しつつ package discount で「お得感」も保つ両立解。
- 🇻🇳 CFO cần tool viết ringi-sho. Unbundle show + package discount giữ 'お得感' = lời cả 2.

### J1.12 (từ rule_23 — Quy đổi sang ROI)

**Skill:** 表現読解

**Q:** 日本企業 CFO に提示する ROI に必須の指標は？

- A) Investment と Annual return のみ
- **B) Investment / Annual return / Payback period / NPV の4つ**
- C) 値段だけ
- D) 競合価格との差

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 4指標が稟議書 standard。1つでも欠けると CFO は取締役会に出せない。
- 🇻🇳 4 chỉ số là chuẩn ringi-sho. Thiếu 1 là CFO không đưa lên HĐQT được.

### J1.13 (từ rule_24 — Trade concession (tit-for-tat))

**Skill:** 表現読解

**Q:** 顧客が「dashboard 込みで ¥17M に」と要求した際の最適 phrase は？

- A) 「分かりました、¥17M で」
- **B) 「もし契約期間2年化と事例公開許可をいただけましたら、¥17M+dashboard でお受けできます」**
- C) 「dashboard は別料金です」と切る
- D) 「上司に聞きます」と保留

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 tit-for-tat は trade とセット。条件提示で leverage を保ち、unilateral concession を避ける。
- 🇻🇳 Tit-for-tat luôn đi với trade. Đưa điều kiện giữ leverage, tránh nhượng đơn phương.

### J1.14 (từ rule_25 — Silence as tool)

**Skill:** 発言聴解

**Q:** anchor を出した直後、相手が4秒間沈黙している。最適行動は？

- A) 「もし高いようでしたら…」と値引きを提示
- **B) そのまま沈黙を保つ (7秒目標)**
- C) 「ご質問ありませんか？」と詰問
- D) deck を次のページにめくる

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 沈黙は思考時間。最初に話した方が leverage を失う。日本商談では7秒は normal。
- 🇻🇳 Im lặng là thời gian suy nghĩ. Ai nói trước mất leverage. Đàm phán Nhật 7s là bình thường.

### J1.15 (từ rule_27 — Re-anchor sau pushback)

**Skill:** 表現読解

**Q:** 前日の anchor ¥18M に対し相手が ¥16M を要求。最適 response は？

- A) 即 ¥16M を受け入れる
- **B) value再強調 + 新事実 + 2 option (¥17M + 2年 / ¥16M scope-15%) を再anchor**
- C) 「¥18M でなければ撤退」と硬直
- D) 「上司に聞きます」と保留

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 再anchor は value再強調・新事実・flexibility (2 option) のセット。即値引きは leak、硬直は walk-away を呼ぶ。
- 🇻🇳 Re-anchor là combo: nhắc value + fact mới + flexibility (2 option). Giảm ngay là leak, cứng là khiến khách walk.

### J1.16 (từ rule_29 — Nibble & late demand handling)

**Skill:** 発言聴解

**Q:** 契約 closing 直前の nibble (「ついでに training 1 日無料で」) への最適対応は？

- A) 「サービスで含めます」と無償提供
- **B) trade option (有償 or scope swap) + 全体 re-review で reset clock**
- C) 「無理です」と一蹴
- D) 上司に丸投げ

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 trade で対応しつつ reset clock(全体再review+schedule slip)を伝えれば、相手は通常自ら撤回。無償受けは leak の連鎖。
- 🇻🇳 Trade rồi reset clock (review toàn bộ + slip schedule), khách thường tự rút. Nhận miễn phí là chuỗi leak.

### J1.17 (từ rule_33 — Điều chỉnh điều khoản cuối)

**Skill:** 場面把握

**Q:** クライアント側が「indemnity 無制限」を要求してきた時、最も適切な初動は？

- A) 即決で承諾し relationship を保つ
- **B) 「ただし、社内規定上限を超えるため持ち帰り検討させてください」と escalation バッファを作る**
- C) その場で「無理です」と断る
- D) 話題を変える

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 即決承諾は致命的リスク。即決拒否は relationship dent。「持ち帰り」が双方を救う日本流。
- 🇻🇳 Accept ngay = rủi ro chết. Từ chối ngay = relationship dent. 'Mang về' là cách JP cứu cả 2 bên.

### J1.18 (từ rule_35 — Walk-away phong nhã)

**Skill:** 表現読解

**Q:** 「条件面で折り合いがつかず、見送りとさせていただきます」が「お断りします」より優れている理由は？

- A) 敬語が多いから
- **B) blame 対象を「条件」(abstract) に置き、相手の face を保持しつつ関係維持の余地を残すから**
- C) 短いから
- D) 曖昧で逃げ場があるから

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 「お断り」は人格 reject。「条件面」は abstract で、相手・自分どちらの face も傷つけず、関係継続の magic phrase 「ご縁」を続けやすい。
- 🇻🇳 'お断り' reject ở mức cá nhân. 'Conditional' là abstract — không tổn thương face, dễ nối tiếp magic phrase 'ご縁' duy trì relationship.

### J1.19 (từ rule_38 — PR release joint approval)

**Skill:** 場面把握

**Q:** PR release で金額を「数千万円規模」と表記する最大の理由は？

- A) 数字を覚えにくいから
- **B) クライアントの IT 予算を競合他社に exposed するのを避け、来年の予算削減 risk を防ぐため**
- C) 計算が面倒だから
- D) 印象を強くするため

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 正確な金額の公開はクライアントの予算を競合に晒し、翌年の予算削減や競合 anchor に使われる。framing で防ぐ。
- 🇻🇳 Lộ số tiền chính xác = lộ budget khách cho competitor → năm sau bị cắt hoặc bị competitor anchor. Framing tránh điều này.

### J1.20 (từ rule_40 — Đàm phán đa bên)

**Skill:** 発言聴解

**Q:** CFO + 営業部長 + PM が同席する場面で 3 つの質問が来た時、最も適切な対応は？

- A) highest title (CFO) の質問だけ詳しく回答する
- **B) 「3 点まとめてお答えいたします」と宣言し、junior (PM) → 中堅 → senior (CFO) の順で並列 address**
- C) 「あとで個別に」と流す
- D) 全員に同じ短さで回答する

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 1 人 ignored は他 2 人 disengage = ringi 反対 source。junior → senior 順で CFO 最後 + detail 最大が standard。
- 🇻🇳 Bỏ qua 1 người = 2 người disengage = nguồn phản đối ringi. Junior → senior, CFO cuối cùng + detail nhiều nhất là chuẩn.

### J1.21 (từ rule_43 — Khi nào escalate senior)

**Skill:** 場面把握

**Q:** 「indemnity 無制限を今ここで決めて」と CFO に push された時、最も適切な対応は？

- A) 迅速さを優先し即決する
- **B) 「権限を超えるため 5 分頂戴し senior に escalate」と buffer 要請、Slack で 30 秒 context**
- C) 「無理です」と即拒否
- D) 話題を変えて時間稼ぎ

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 T2 (権限外) + T3 (ultimatum) は escalation trigger。即決は法的 bind 不可 risk。即拒否は relationship dent。5 分 buffer + Slack escalate が standard。
- 🇻🇳 T2 (vượt thẩm quyền) + T3 (ultimatum) = trigger escalation. Tự quyết = rủi ro không bind hợp pháp. Từ chối ngay = dent relationship. Buffer 5 phút + Slack escalate là chuẩn.

### J1.22 (từ rule_44 — Khoảng cách phong cách đàm phán VN-JP)

**Skill:** 表現読解

**Q:** JP exec の「価格 ¥20M はやや高い印象がございます」に対する最も適切な初動は？

- A) 「では ¥18M でいかがですか？」と直接 10% discount
- **B) 「特に気にされている内訳要素はございますでしょうか？」と unbundle + reciprocal trade を提示**
- C) 「これが市場価格です」と否定
- D) 話題を変える

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 JP「高い」は 4 layer 解釈 (内訳説明欲しいが most common)。即 discount は ratchet を動かす。unbundle + trade で JP reciprocal pattern に沿う。
- 🇻🇳 JP 'cao' có 4 layer (most common là 'muốn breakdown'). Discount ngay = kích ratchet. Unbundle + trade khớp với JP reciprocal pattern.


## Level J1+ (2 câu)

### J1+.1 (từ rule_26 — Đối phó với threat / ultimatum)

**Skill:** 発言聴解

**Q:** 「¥15M でなければY社に発注します」と言われた時の最適3step は？

- A) challenge → 値引き → 沈黙
- **B) Bridge phrase → boundary → senior escalation**
- C) 値引き → 値引き → 値引き
- D) 謝罪 → 撤回 → 再提案

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 脅しは pressure tactic。bridge で de-escalate、boundary でこちらの限度を示し、senior escalation で新権威を持ち込む。
- 🇻🇳 Threat là pressure tactic. Bridge để de-escalate, boundary show giới hạn, senior escalate đưa authority mới vào.

### J1+.2 (từ rule_28 — Walk away phong nhã)

**Skill:** 表現読解

**Q:** walk-away ライン以下の要求に直面した時の最適 closing は？

- A) 「Y 社さんに発注ということで」と passive-aggressive で終わる
- **B) 「条件面で折り合いがつかず、誠に残念」+ door open で neutral 撤退**
- C) 「失敗しました」と謝罪
- D) 「永遠に取引しません」と宣言

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 撤退も商談の一部。relationship を残すことで Phase 4 や別案件の chance を保つ。
- 🇻🇳 Rút cũng là một phần đàm phán. Giữ relationship để có cơ hội Phase 4 / dự án khác.


**Tổng số câu hỏi:** 45

---

*Tài liệu này có thể export thành quiz interactive — đọc data trực tiếp từ `bjt_practice` array trong mỗi `conversation.json`.*


---

# Phụ lục D — Template Tổng Hợp / テンプレート集

*Tổng hợp các template (agenda, biên bản, mail) đính kèm trong các rules. Copy-paste để dùng.*

---


## Email follow-up (1 mẫu)

### Rule 31 — Recap mail đàm phán (5 sections)

*JP: 商談後 確認メール (5セクション構成)*

```
宛先: 〇〇様 (To); △△様、□□様 (Cc 自社/先方関係者)
件名:【ご確認】〇〇 商談合意事項のまとめ (〇月〇日 開催)

〇〇株式会社
〇〇 部長
〇〇 様

お世話になっております。ティエンファットの〇〇です。
本日はお時間を頂戴し、誠にありがとうございました。
以下の通り、本日の合意事項をまとめましたのでご確認ください。

━━━ ① 出席者 ━━━
貴社: 〇〇 部長、〇〇 様
弊社: 〇〇、〇〇

━━━ ② 合意事項 ━━━
1. 価格: 〇〇円 (税抜)
2. 契約期間: 〇〇年〇月-〇〇年〇月
3. スコープ: 〇〇
4. SLA: 〇〇%
5. 支払条件: 月末締め翌月末払い
6. 成果物 IP: 〇〇
7. 稟議スケジュール: 〇月〇日まで

━━━ ③ 未決事項 ━━━
1. 〇〇 — 〇月〇日までに弊社より追加情報提供
2. 〇〇 — 貴社にて社内検討

━━━ ④ 次のアクション ━━━
| # | アクション | Owner | 期限 |
|---|-----------|-------|------|
| 1 | 契約書ドラフト送付 | 〇〇 (弊社) | 〇月〇日 |
| 2 | 稟議上申 | 〇〇 (貴社) | 〇月〇日 |
| 3 | キックオフ MTG 設定 | 〇〇 | 〇月〇日 |

━━━ ⑤ 添付 ━━━
- 提案書 v〇.〇
- 議事メモ

上記、認識齟齬ございましたら本メールにご返信いただけますと幸いです。
何卒よろしくお願い申し上げます。

ティエンファット社
〇〇 〇〇
Mail: 〇〇@tienphat.vn
Tel: 〇〇
```

**Bản Việt placeholder:**

```
To: anh/chị 〇〇; Cc: 〇〇, 〇〇
Subject:【Xác nhận】Tổng hợp items đã đồng thuận đàm phán 〇〇 (〇/〇)

Kính gửi anh/chị 〇〇 — Cty 〇〇,

Xin chào, em là 〇〇 (Tiên Phát).
Hôm nay em xin chân thành cảm ơn anh/chị đã dành thời gian.
Dưới đây là tổng hợp các điểm đã đồng thuận hôm nay, phiền anh/chị xác nhận giúp em.

━━━ ① Người tham dự ━━━
Bên anh/chị: 〇〇, 〇〇
Bên em: 〇〇, 〇〇

━━━ ② Items đã đồng thuận ━━━
1. Giá: 〇〇 ¥ (chưa thuế)
2. Kỳ hạn: 〇/〇 - 〇/〇
3. Scope: 〇〇
4. SLA: 〇〇%
5. Điều khoản thanh toán: chốt cuối tháng - trả cuối tháng kế
6. IP sản phẩm: 〇〇
7. Lịch ringi (稟議): trước 〇/〇

━━━ ③ Items chưa quyết ━━━
1. 〇〇 — bên em sẽ cung cấp info bổ sung trước 〇/〇
2. 〇〇 — bên anh/chị nội bộ thảo luận

━━━ ④ Next actions ━━━
| # | Action | Owner | Deadline |
|---|--------|-------|----------|
| 1 | Gửi contract draft | 〇〇 (Tiên Phát) | 〇/〇 |
| 2 | Đệ trình ringi | 〇〇 (bên anh/chị) | 〇/〇 |
| 3 | Set kickoff MTG | 〇〇 | 〇/〇 |

━━━ ⑤ Đính kèm ━━━
- Proposal v〇.〇
- Meeting note

Nếu có sai lệch nhận thức, phiền anh/chị reply lại mail này giúp em ạ.
Em rất mong nhận được phản hồi.

Cty Tiên Phát
〇〇 〇〇
Mail: 〇〇@tienphat.vn
Tel: 〇〇
```

📝 **Ghi chú VN:** Bắt buộc gửi trong 24h sau đàm phán. Phải qua senior review trước khi gửi. Reply OK = có thể attach vào ringi document.
📝 **Ghi chú JP:** 送信は商談から24時間以内必須。Senior レビューを通してから送信。OK 返信 = 稟議添付可能。


## Checklist (4 mẫu)

### Rule 01 — Template BATNA 3 Scenario

*JP: BATNA 3シナリオ・テンプレート*

```
【交渉案件】〇〇
【日時】〇〇年〇月〇日
【相手】〇〇 様

━━━ シナリオ A: 成立 (Deal as-is) ━━━
  価格: 〇〇円
  スコープ: 〇〇
  条件: 〇〇
  期待結果: shake hand 当日

━━━ シナリオ B: 再交渉 (Counter-offer) ━━━
  価格: 〇〇円 (target: 〇〇円)
  譲歩: 〇〇 (例: scope -10%)
  根拠: 利益率〇〇%維持可能
  内部承認者: 〇〇 (済 / 未済)
  反対 trade: 〇〇 を相手から得る

━━━ シナリオ C: 撤退 (Walk-away) ━━━
  撤退ライン: 〇〇円以下
  代替案件: 〇〇 (案件名 + ステータス)
  代替案件の数値: 〇〇円, 〇〇 締切
  撤退時の言い回し: 「本日は持ち帰りとさせてください…」

━━━ 当日チェックリスト ━━━
  □ シナリオ A/B/C を声に出して練習済み
  □ シナリオ C 撤退時の挨拶 練習済み
  □ 内部承認エビデンス (Slack/メール) 持参
  □ 代替案件証拠 (MoU等) 持参
  □ 沈黙 7秒 練習済み
```

**Bản Việt placeholder:**

```
[Vụ đàm phán] 〇〇
[Thời gian] 〇/〇/〇
[Đối tác] anh/chị 〇〇

━━━ Scenario A: Deal as-is ━━━
  Giá: 〇〇 ¥
  Scope: 〇〇
  Điều kiện: 〇〇
  Kết quả mong đợi: bắt tay trong ngày

━━━ Scenario B: Counter-offer ━━━
  Giá: 〇〇 ¥ (target: 〇〇 ¥)
  Nhượng bộ: 〇〇 (vd: scope -10%)
  Cơ sở: profit margin 〇〇% giữ được
  Người duyệt nội bộ: 〇〇 (đã / chưa)
  Trade ngược: lấy 〇〇 từ phía họ

━━━ Scenario C: Walk-away ━━━
  Walk-away line: dưới 〇〇 ¥
  Lựa chọn thay thế: 〇〇 (tên dự án + status)
  Số liệu lựa chọn TT: 〇〇 ¥, deadline 〇〇
  Câu rút lui: 「本日は持ち帰りとさせてください…」

━━━ Checklist ngày G ━━━
  □ Đã practice nói A/B/C ra miệng
  □ Câu chào rút lui scenario C đã practice
  □ Mang theo bằng chứng internal approval (Slack/mail)
  □ Mang theo MoU/proof của lựa chọn thay thế
  □ Đã practice 7-second silence
```

📝 **Ghi chú VN:** Bắt buộc tạo + practice tối hôm trước đàm phán. Số liệu mơ hồ thì KHÔNG vào đàm phán. Senior review bắt buộc.
📝 **Ghi chú JP:** 交渉前夜に必ず作成・練習。数値が曖昧なら交渉に行かない。Senior レビュー必須。

### Rule 19 — Pricing phrase checklist + 5 scenarios

*JP: 価格提示フレーズ チェックリスト + 5シナリオ*

```
━━━ 価格提示フレーズ 4要素チェック ━━━

【提示前チェック】
  □ Frame: 相手状況を踏まえた前置き準備済み
  □ Number: 具体的な金額確定 (anchor / target / current step どこ?)
  □ Justification: 数値根拠 (工数・SLA・ROI 倍率) 準備済み
  □ Trade: 引き換え条件1つ以上 (期間・scope・支払・事例)

【シナリオ別 phrase 集】

■ シナリオ1 — 初回 anchor (go first)
「価格について、3 段階でご提案します。Better tier 〇〇円、anchor として Best tier 〇〇円。¥〇〇M の根拠は〇〇、御社 ROI 〇倍に位置します。」

■ シナリオ2 — 「高い」への counter (rule 19 main)
「ご指摘の点、もっともでございます。〇〇 (frame)、金額 〇〇円。根拠は 〇〇 (-工数〇%)。条件として 〇〇 をいただければ、この価格で可能です。」

■ シナリオ3 — 譲歩取り下げ (rule 09 trade-back)
「先ほどの 〇〇円のご提案は、〇〇 という前提でしたので、その前提が変わる場合は元の 〇〇円に戻させていただきます。」

■ シナリオ4 — 最終 best offer
「これが弊社として可能な最終条件でございます。〇〇円 + 〇〇 (含む)。これ以上の譲歩は粗利を割り込みますので、お受けすることが難しいです。」

■ シナリオ5 — 持ち帰り (escalation)
「ご提案いただいた条件、その場で即答致しかねます。弊社 CTO 確認の上、〇曜日までに正式回答いたします。」

━━━ 当日チェック ━━━
  □ 4要素を声に出して練習済み
  □ 沈黙 7秒練習済み (rule 25)
  □ Trade-back trigger 確認済み (rule 09)
```

**Bản Việt placeholder:**

```
━━━ Checklist 4 yếu tố pricing phrase ━━━

[Trước khi quote]
  □ Frame: đã chuẩn bị câu mở dựa trên tình huống khách
  □ Number: số tiền cụ thể (anchor / target / step hiện tại?)
  □ Justification: cơ sở số (effort / SLA / bội số ROI) sẵn sàng
  □ Trade: ít nhất 1 điều kiện đổi (thời hạn / scope / payment / case)

[5 scenarios + phrase]

[1] Anchor mở đầu (go first)
'Về giá, em đề xuất 3-tier. Better tier 〇〇¥, kèm Best tier 〇〇¥ làm anchor. Cơ sở ¥〇〇M là 〇〇, ROI quý cty 〇 lần ạ.'

[2] Counter sau '高い' (chính của rule 19)
'Em xin tiếp thu ạ. 〇〇 (frame), số tiền 〇〇¥. Cơ sở 〇〇 (-effort 〇%). Điều kiện: nếu được 〇〇, em có thể cung cấp giá này ạ.'

[3] Rút lại nhượng bộ (trade-back ở rule 09)
'Đề xuất 〇〇¥ vừa rồi dựa trên tiền đề 〇〇, nếu tiền đề thay đổi thì xin phép em quay lại mức 〇〇¥ trước ạ.'

[4] Best offer cuối
'Đây là điều kiện cuối em có thể đưa ra. 〇〇¥ + 〇〇 (bao gồm). Vượt nữa là dưới mức gross margin, em không nhận được ạ.'

[5] Mang về xem xét (escalation)
'Điều kiện quý anh đề xuất em không trả lời ngay tại chỗ được. Em xin xác nhận với CTO bên em, trả lời chính thức trước thứ 〇 ạ.'

━━━ Check ngày G ━━━
  □ Đã practice 4 yếu tố ra miệng
  □ Đã practice im lặng 7 giây (rule 25)
  □ Confirm trigger trade-back (rule 09)
```

📝 **Ghi chú VN:** Đọc miệng 5 scenarios ít nhất 5 lần đêm trước. Practice cảm giác im lặng 7 giây.
📝 **Ghi chú JP:** 5シナリオを商談前夜に必ず音読 5回以上。沈黙7秒も体感練習。

### Rule 20 — Checklist phản hồi 'đắt' 3 bước

*JP: 「高い」対応 3-step チェックリスト*

```
━━━ Step 1: ACKNOWLEDGE (5-10秒) ━━━
  □ 即値引きを我慢 (沈黙2秒OK)
  □ 「ご指摘の点、もっともでございます」
  □ 相手の状況に共感: コスト圧縮 / 予算枠 / 業績圧力

━━━ Step 2: REFRAME (30-60秒) ━━━
  □ 「ただ少し別の角度から」
  □ 数値根拠を提示 (どれか or 複数):
    □ Cost-of-inaction (継続コスト計算)
    □ ROI 倍率 (投資対効果)
    □ Time-value (早期導入の機会損失)
    □ Risk-adjusted (失敗時のコスト)
  □ 月次・年次に分解 (大きい数字を小さく見せる)

━━━ Step 3: 3 OPTIONS (60-90秒) ━━━
  □ Option A: 元価格維持 + trade で価値追加
  □ Option B: scope 削減で価格下げ
  □ Option C: 拡大版 (decoy)
  □ 「御社のコスト感に合うのはどちらでしょうか？」で締める

━━━ ❌ NG リスト ━━━
  ✗ 即値引き「では ¥16M で…」
  ✗ 反論「高くないですよ」
  ✗ 1 option のみ
  ✗ 数値なしの reframe「value があります」
```

**Bản Việt placeholder:**

```
━━━ Step 1: ACKNOWLEDGE (5-10s) ━━━
  □ Nén phản xạ giảm giá (2s im lặng OK)
  □ 「ご指摘の点、もっともでございます」 (Em xin tiếp thu)
  □ Đồng cảm tình huống: nén chi phí / budget khung / áp lực kết quả

━━━ Step 2: REFRAME (30-60s) ━━━
  □ 「ただ少し別の角度から」 (Xin phép từ góc khác)
  □ Show cơ sở số (1 hoặc nhiều):
    □ Cost-of-inaction (tính chi phí giữ nguyên)
    □ Bội số ROI
    □ Time-value (tổn thất chậm trễ)
    □ Risk-adjusted (chi phí nếu fail)
  □ Chia ra tháng / năm (số lớn nhìn nhỏ)

━━━ Step 3: 3 OPTIONS (60-90s) ━━━
  □ Option A: giữ giá gốc + trade thêm value
  □ Option B: cắt scope hạ giá
  □ Option C: mở rộng (decoy)
  □ Chốt 'phương án nào hợp cảm giác chi phí của quý cty ạ?'

━━━ ❌ NG ━━━
  ✗ Giảm ngay 'vậy ¥16M ạ'
  ✗ Phản bác '不 không đắt đâu ạ'
  ✗ Chỉ 1 option
  ✗ Reframe không số 'có value lắm ạ'
```

📝 **Ghi chú VN:** Chuẩn bị trước phép tính Cost-of-inaction. KHÔNG tính trong phòng đàm phán.
📝 **Ghi chú JP:** 事前に Cost-of-inaction 計算を準備。商談中に計算しない。

### Rule 45 — Template Retro 5 sections cho đàm phán

*JP: 商談 Retro 5-section テンプレート*

```
【商談 Retro】〇〇案件 (round 〇)
【日時】〇〇年〇月〇日
【参加者】〇〇 (lead)、 〇〇、 〇〇
【retro 開催日】商談から 〇 日後

━━━ ① What Worked (うまくいった点) ━━━
  □ 〇〇 (例: BATNA 3 シナリオで walk-away 明確)
  □ 〇〇 (例: recap mail 24h 以内送付で稟議 block なし)
  □ 〇〇

━━━ ② What Didn't (改善点) ━━━
  □ 〇〇 (例: indemnity 無制限 push に 5 秒 freeze)
  □ 〇〇 (例: VN style discount を 0.5 秒 miss)
  □ 〇〇

━━━ ③ Counterfactual (もし〜していれば) ━━━
  □ もし 〇〇 していれば、〇〇 できた
  □ もし 〇〇 を pre-print していれば、〇〇 防げた
  □ もし pre-MTG で 〇〇 brief 1 分していれば、〇〇 …

━━━ ④ Pattern Recognition (across vụ で repeat?) ━━━
  □ 過去 〇 vụ で同じ pattern 観察 (例: VN BD immediate concession)
  □ Cultural default? 個人差? team-level intervention 必要?

━━━ ⑤ Next Commit (3 個 max) ━━━
  (a) 具体 action: 〇〇 / Owner: 〇〇 / Deadline: 〇月〇日 / 効果測定: 〇〇
  (b) 具体 action: 〇〇 / Owner: 〇〇 / Deadline: 〇月〇日 / 効果測定: 〇〇
  (c) 具体 action: 〇〇 / Owner: 〇〇 / Deadline: 〇月〇日 / 効果測定: 〇〇

━━━ Follow-up Retro 予定 ━━━
  □ 3 ヶ月後 (〇月〇日) に commit (a)/(b)/(c) adherence 確認 retro 開催
  □ team wiki に本 retro doc 保存済み
  □ 関係者に共有済み
```

**Bản Việt placeholder:**

```
[Retro Đàm Phán] vụ 〇〇 (round 〇)
[Thời gian] 〇/〇/〇
[Tham dự] 〇〇 (lead), 〇〇, 〇〇
[Ngày retro] 〇 ngày sau đàm phán

━━━ ① What Worked ━━━
  □ 〇〇 (vd: BATNA 3 scenario làm walk-away rõ)
  □ 〇〇 (vd: recap mail trong 24h khiến ringi không block)
  □ 〇〇

━━━ ② What Didn't ━━━
  □ 〇〇 (vd: freeze 5 giây với indemnity unlimited push)
  □ 〇〇 (vd: miss VN-style discount 0.5 giây)
  □ 〇〇

━━━ ③ Counterfactual (Nếu mình ~) ━━━
  □ Nếu 〇〇, có thể 〇〇
  □ Nếu pre-print 〇〇, có thể ngăn 〇〇
  □ Nếu pre-MTG brief 1 phút 〇〇, có thể 〇〇

━━━ ④ Pattern Recognition (lặp lại across vụ?) ━━━
  □ Quan sát cùng pattern ở 〇 vụ trước (vd: VN BD nhảy vào immediate concession)
  □ Cultural default? Cá biệt? Cần intervention cấp team?

━━━ ⑤ Next Commit (tối đa 3) ━━━
  (a) Action cụ thể: 〇〇 / Owner: 〇〇 / Deadline: 〇/〇 / Đo hiệu quả: 〇〇
  (b) Action cụ thể: 〇〇 / Owner: 〇〇 / Deadline: 〇/〇 / Đo hiệu quả: 〇〇
  (c) Action cụ thể: 〇〇 / Owner: 〇〇 / Deadline: 〇/〇 / Đo hiệu quả: 〇〇

━━━ Lịch Follow-up Retro ━━━
  □ 3 tháng sau (〇/〇) tổ chức retro check adherence của commit (a)/(b)/(c)
  □ Đã lưu retro doc trong team wiki
  □ Đã share cho stakeholder
```

📝 **Ghi chú VN:** Tổ chức trong 1 tuần sau mỗi vụ. Lưu doc trong team wiki. Commit không follow-up 3 tháng = wishlist. Tối đa 3 commit.
📝 **Ghi chú JP:** 商談ごとに 1 週間以内 開催。doc は team wiki 保存。3 ヶ月 follow-up なしの commit は wishlist。3 commit max。


## Báo cáo (3 mẫu)

### Rule 06 — 3-tier Proposal Sheet (Good / Better / Best)

*JP: 3段階提案シート (Good / Better / Best)*

```
━━━ 3段階ご提案 — 〇〇プロジェクト ━━━
御社名:〇〇 様
提案日:〇〇年〇月〇日
提案者:ティエンファット 〇〇

┌─────────────────────────────────────────────┐
│  【Good】 ¥〇〇M (basic)                                  │
│  • コア機能: 〇〇                                          │
│  • SLA: 〇〇% (営業時間サポート)                            │
│  • 含まれない: 〇〇 / 〇〇                                  │
│  • 適合先: PoC 用途・予算厳しい場合                           │
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│  【Better】 ¥〇〇M  ★おすすめ★                            │
│  • コア機能 + 〇〇 (key feature)                            │
│  • SLA: 〇〇.〇% (24/7サポート)                            │
│  • 含む: 〇〇 / 〇〇 / 〇〇                                  │
│  • 適合先: 御社の Phase 〇 目的「〇〇」に最適                  │
│  • 期待 ROI: 〇〇                                          │
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│  【Best】 ¥〇〇M (full)                                   │
│  • Better のすべて + 専任 SRE 常駐                          │
│  • SLA: 〇〇.〇〇%                                          │
│  • 含む: 優先開発枠・カスタムレポート                          │
│  • 適合先: 大規模・ミッションクリティカル運用                    │
└─────────────────────────────────────────────┘

■ 比較表 (主要項目のみ)
  項目        | Good   | Better | Best  
  AI機能      | ×      | ◎      | ◎      
  SLA         | 99.5%  | 99.9%  | 99.99% 
  サポート    | 営業時間| 24/7   | 24/7+専任
  価格         | ¥〇M   | ¥〇M   | ¥〇M   

※ Better をご選択の場合、〇月〇日着手可能
```

**Bản Việt placeholder:**

```
━━━ Đề xuất 3-tier — Dự án 〇〇 ━━━
Khách hàng: Quý công ty 〇〇
Ngày đề xuất: 〇/〇/〇
Người đề xuất: ティエンファット 〇〇

┌─────────────────────────────────────────────┐
│  [Good] ¥〇〇M (basic)                                    │
│  • Tính năng core: 〇〇                                   │
│  • SLA: 〇〇% (support trong giờ)                          │
│  • Không bao gồm: 〇〇 / 〇〇                              │
│  • Phù hợp: PoC, ngân sách hạn                             │
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│  [Better] ¥〇〇M  ★ ĐỀ XUẤT ★                          │
│  • Core + 〇〇 (key feature)                              │
│  • SLA: 〇〇.〇% (support 24/7)                            │
│  • Bao gồm: 〇〇 / 〇〇 / 〇〇                              │
│  • Phù hợp: Mục tiêu Phase 〇 '〇〇' của quý cty           │
│  • ROI kỳ vọng: 〇〇                                       │
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│  [Best] ¥〇〇M (full)                                     │
│  • Toàn bộ Better + SRE chuyên trách túc trực              │
│  • SLA: 〇〇.〇〇%                                          │
│  • Bao gồm: ưu tiên dev feature, báo cáo custom             │
│  • Phù hợp: vận hành quy mô lớn, mission-critical           │
└─────────────────────────────────────────────┘

■ Bảng so sánh (mục chính)
  Mục         | Good   | Better | Best   
  AI feature  | ×      | ◎      | ◎       
  SLA         | 99.5%  | 99.9%  | 99.99%  
  Support     | giờ HC | 24/7   | 24/7+SRE
  Giá         | ¥〇M   | ¥〇M   | ¥〇M    

* Chọn Better có thể khởi động từ 〇/〇.
```

📝 **Ghi chú VN:** Better bắt buộc đặt giữa + đánh dấu 'Đề xuất'. Good cố ý yếu, Best overspec. Gap giá KHÔNG cách đều (giữ decoy).
📝 **Ghi chú JP:** Better は「中央寄せ」「おすすめ」マーク必須。Good は意図的弱体化、Best は overspec。価格ギャップは均等にしない (decoy効果)。

### Rule 32 — Template LOI (basic agreement)

*JP: 基本合意書 (LOI) テンプレート*

```
基本合意書

〇〇株式会社 (以下「甲」) と ティエンファット社 (以下「乙」) は、〇〇 業務委託に関し、以下の通り基本合意する。

第1条 (目的)
甲乙は、〇〇 プロジェクト (以下「本件」) における業務委託契約 (以下「本契約」) の締結に向け、主要条件を本書面で確認する。

第2条 (主要条件)
(1) 価格: 金〇〇円 (消費税別)
(2) 契約期間: 〇〇年〇月〇日 〜 〇〇年〇月〇日
(3) スコープ要約: 〇〇
(4) SLA: 稼働率 〇〇%
(5) 支払条件: 月末締め翌月末払い
(6) 効力発生日: 本書面捺印日

第3条 (本契約締結期日)
甲乙は、本書面捺印後 4 週間以内に本契約書ドラフトを協議し、双方合意の上で本契約を締結することに努める。

第4条 (本書面の効力)
本書面は本契約締結までの commercial terms の確認文書であり、詳細条項は本契約書にて定める。

第5条 (秘密保持)
本件交渉に関連して入手した相手方の情報は、別途 NDA に基づき取扱う。

以上を証するため、本書 2 通を作成し、甲乙各 1 通を保有する。

〇〇年〇月〇日

甲: 〇〇株式会社  代表取締役 〇〇 〇〇  ㊞
乙: ティエンファット社  代表取締役 〇〇 〇〇  ㊞
```

**Bản Việt placeholder:**

```
BASIC AGREEMENT (LOI)

Cty 〇〇 (sau đây gọi 'Bên A') và Cty Tiên Phát (sau đây gọi 'Bên B') thống nhất các điểm cơ bản về việc giao việc 〇〇 như sau.

Điều 1 (Mục đích)
Bên A và B xác nhận các commercial terms cốt lõi cho việc ký contract chính 〇〇 (sau đây gọi 'Hợp đồng').

Điều 2 (Commercial terms)
(1) Giá: 〇〇 ¥ (chưa bao gồm thuế tiêu thụ)
(2) Kỳ hạn: 〇/〇/〇 - 〇/〇/〇
(3) Tóm tắt scope: 〇〇
(4) SLA: tỉ lệ uptime 〇〇%
(5) Điều khoản thanh toán: chốt cuối tháng - trả cuối tháng kế
(6) Ngày có hiệu lực: ngày đóng dấu LOI

Điều 3 (Thời hạn ký Hợp đồng chính)
Hai bên cam kết trong vòng 4 tuần kể từ ngày đóng dấu LOI sẽ thảo luận contract draft và ký Hợp đồng chính sau khi cả hai bên đồng thuận.

Điều 4 (Hiệu lực LOI)
LOI là văn bản xác nhận commercial terms trước khi ký Hợp đồng chính. Các điều khoản chi tiết (indemnity, IP, termination) sẽ quy định trong Hợp đồng chính.

Điều 5 (Bảo mật)
Thông tin đối tác có được trong quá trình đàm phán xử lý theo NDA riêng.

LOI lập thành 2 bản, mỗi bên giữ 1 bản.

Ngày 〇/〇/〇

Bên A: Cty 〇〇 — Đại diện pháp luật 〇〇 〇〇  (Dấu)
Bên B: Cty Tiên Phát — Đại diện pháp luật 〇〇 〇〇  (Dấu)
```

📝 **Ghi chú VN:** LOI gói gọn 1-2 trang. KHÔNG đưa detailed clauses. Bắt buộc legal review. Ghi rõ deadline đóng dấu 2 tuần.
📝 **Ghi chú JP:** LOI は 1-2 ページに収める。詳細条項を入れない。法務レビュー必須。捺印期限 2 週間明記。

### Rule 38 — Template Joint PR Release (số tiền dạng quy mô)

*JP: Joint PR Release テンプレート (数千万円規模 framing)*

```
報道関係者各位

〇〇年〇月〇日
ティエンファット社 / 〇〇株式会社

━━━━━━━━━━━━━━━━━━━━
【プレスリリース】
ティエンファット社、〇〇株式会社と AI 〇〇 Phase 〇 業務委託契約締結
— 数千万円規模、〇〇年〇月キックオフ —
━━━━━━━━━━━━━━━━━━━━

ティエンファット社 (本社: ハノイ、代表取締役: 〇〇 〇〇、以下「ティエンファット」) は、〇〇株式会社 (本社: 東京、代表取締役: 〇〇 〇〇、以下「〇〇社」) との間で、AI 〇〇 Phase 〇 業務委託契約を 〇〇年〇月〇日付で締結しましたのでお知らせいたします。

■ 契約概要
- 業務内容: AI 〇〇 開発 + 専任 PM + 〇〇 customization
- 期間: 〇〇年〇月 〜 〇〇年〇月 (〇 年間)
- 規模: 数千万円規模
- キックオフ: 〇〇年〇月

■ 背景
〇〇社は〇〇業界での〇〇課題に対し、ティエンファットの AI 〇〇 ソリューションを Phase 〇 から段階的に導入。今回 Phase 〇 にて 〇〇 を強化する。

■ 〇〇社 営業部長 〇〇 〇〇 コメント
「ティエンファット社の Phase 〇 における〇〇は、当社の〇〇に大きく寄与した。Phase 〇 では更に〇〇を期待している。」

■ ティエンファット社 副部長 〇〇 〇〇 コメント
「〇〇社からの信頼を頂戴し、身の引き締まる思いです。両社協働で〇〇を実現してまいります。」

■ 会社概要
[ティエンファット社] 〇〇
[〇〇株式会社] 〇〇

■ 本件に関するお問い合わせ
ティエンファット社 広報担当 〇〇
Mail: pr@tienphat.vn
〇〇株式会社 広報部
Mail: pr@〇〇.co.jp
```

**Bản Việt placeholder:**

```
Kính gửi báo chí

Ngày 〇/〇/〇
Cty Tiên Phát / Cty 〇〇

━━━━━━━━━━━━━━━━━━━━
[PRESS RELEASE]
Cty Tiên Phát ký Hợp đồng giao việc AI 〇〇 Phase 〇 với Cty 〇〇
— Quy mô vài chục triệu yên, kickoff 〇/〇 —
━━━━━━━━━━━━━━━━━━━━

Cty Tiên Phát (HQ: Hà Nội, Đại diện: 〇〇 〇〇, sau đây 'Tiên Phát') ký Hợp đồng giao việc AI 〇〇 Phase 〇 với Cty 〇〇 (HQ: Tokyo, Đại diện: 〇〇 〇〇, sau đây 'Cty 〇〇') vào ngày 〇/〇/〇.

■ Tổng quan hợp đồng
- Phạm vi: phát triển AI 〇〇 + PM chuyên trách + 〇〇 customization
- Kỳ hạn: 〇/〇 ~ 〇/〇 (〇 năm)
- Quy mô: vài chục triệu yên
- Kickoff: 〇/〇/〇

■ Bối cảnh
Cty 〇〇 đối mặt vấn đề 〇〇 trong ngành 〇〇 và đã từng bước áp dụng giải pháp AI 〇〇 của Tiên Phát từ Phase 〇. Phase 〇 sẽ tăng cường 〇〇.

■ Comment Giám đốc Kinh doanh Cty 〇〇
'〇〇 từ Phase 〇 đã đóng góp lớn cho 〇〇 bên tôi. Phase 〇 tôi mong tiếp tục 〇〇.'

■ Comment Phó phòng Kinh doanh Tiên Phát
'Việc nhận được sự tin tưởng từ Cty 〇〇 khiến chúng tôi cảm nhận trách nhiệm nặng nề. Hai bên sẽ phối hợp để hiện thực hóa 〇〇.'

■ Giới thiệu công ty
[Tiên Phát] 〇〇
[Cty 〇〇] 〇〇

■ Liên hệ
Tiên Phát PR 〇〇 — Mail: pr@tienphat.vn
Cty 〇〇 PR 〇〇 — Mail: pr@〇〇.co.jp
```

📝 **Ghi chú VN:** BẮT BUỘC qua joint approval PR + legal cả 2 bên. Embargo cùng ngày cùng giờ. Số tiền dùng framing 'quy mô vài chục triệu yên', 'quy mô vài tỷ đồng'...
📝 **Ghi chú JP:** 両社 PR + legal の joint approval 必須。embargo 同日同時刻 release。金額は『数千万円規模』『〇千万円規模』など framing。


**Tổng template:** 8
