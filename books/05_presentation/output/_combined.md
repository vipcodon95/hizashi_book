---
title: "Hizashi — Thuyết trình / プレゼンテーション v1.1"
author: "Hizashi Teams"
date: "2026"
lang: vi
---

# Hizashi — Thuyết trình / プレゼンテーション

*Hizashi Teams. 2026. Phiên bản 1.1.*

35 rules dạy thuyết trình business cho khách Nhật, từ chuẩn bị đến closing. Đặc thù JP: 1-slide-1-message, conservative tone, time-keeping promise.

**Đối tượng:** BD/PM VN pitch dự án/proposal cho khách Nhật. Ôn BJT J3-J2.

## Cấu trúc

| Phần | Tên | Số rule |
|------|-----|---------|
| I | Chuẩn bị / 準備 | 7 |
| II | Mở đầu / オープニング | 6 |
| III | Body / 本論 | 8 |
| IV | Q&A + Closing / 質疑応答・クロージング | 7 |
| V | Tình huống đặc biệt + Self-improve | 7 |

**Phụ lục:** A (script), B (vocab), C (BJT 35 câu), D (templates 6 mẫu).

## Cast mới

- **Linh học pitch lần đầu** — Dũng mentor đầy đủ arc (rule 11/12/18/20)
- **大垣 営業部長** đặt câu hỏi giá khó (rule 19, 24, 25)
- **田中 PMO recording** — rule 33

## ⚖️ Bản quyền

© 2026 Hizashi Teams.

---

*Bản 1.1 — 2026.*


---

# Phần I — Nền tảng trước nhấc máy / 受電前の基本姿勢

# Rule 01 — Checklist 7 câu hỏi trước khi soạn / プレゼン準備の7つの問い

> **Luận điểm.** Chưa trả lời được 7 câu hỏi này thì **chưa được mở PowerPoint**. Đa số presenter Việt nhảy thẳng vào thiết kế slide → ra deck đẹp nhưng sai message. Khách Nhật không tha cho deck "kỹ thuật cao, mục đích thấp".
>
> 7つの問い：①誰に ②何を決めたい ③時間 ④場所 ⑤期待アウトプット ⑥リスク ⑦バックアップ。これに答えられないうちは PowerPoint を開かない。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 07 (Plan B), rule 08 (hook 30s).
> Sách 04 Rule 01 — 報告の3原則 (kết luận trước).

---

## Bối cảnh / 場面

Tháng 5/2026, Phase 3 với 白鷗 sắp khởi động. Anh Hà CTO giao Dũng pitch Phase 3 cho 大垣 営業部長 + 松本 PM. Lần đầu Dũng pitch độc lập. Sáng thứ Hai, Dũng đã mở PowerPoint draft 15 slide → chị Hương cản lại trước khi đi xa hơn.

---

## ❌ Hội thoại XẤU — nhảy vào thiết kế

*Slack chị Hương 9:00 · 15分後*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、Phase 3 のプレゼン、もう15枚作りました。レビューお願いします！」 |
| **フオン** | 「えっと、これ誰向け？大垣さん？松本さん？両方？」 |
| **ズン** | 「えっ…両方かと…思います。」 |
| **フオン** | 「決めたいのは何？スコープ？金額？スケジュール？それも分かってない？じゃあスライド全部閉じて。**準備の7問**から始めよう。」 |

**Vì sao xấu:** Dũng nhảy vào thiết kế khi chưa trả lời được câu cốt lõi. 15 slide đẹp nhưng không có message thì cũng vứt — phải redo từ đầu, mất 1 ngày làm vô ích.

---

## ✅ Hội thoại TỐT — 7問 trước, PowerPoint sau

*Slack 9:00 · 5分後*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、Phase 3 プレゼンの **準備 7問**を埋めました【1】。レビューいただけますでしょうか？」 |
| **フオン** | 「いいね、let me see... ①対象=大垣・松本、②決めたい=Phase 3 スコープ合意、③時間=30分+15分Q&A、⑥リスク=価格反対、⑦バックアップ=PDF＋オフラインデモ。問題ない、これで設計開始していいよ。」 |
| **ズン** | 「ありがとうございます。⑤アウトプットを **『Phase 3 スコープ＋金額レンジ合意』** と書きましたが、合意までいかなくても **方向性決定**で十分でしょうか？【2】」 |
| **フオン** | 「いい質問。**方向性決定**の方が現実的。1回のプレゼンで金額完全合意は難しい。書き直して。」 |

📝 **Ghi chú:**
- 【1】**「準備の7問」** — checklist phải fill in TRƯỚC khi mở PowerPoint. Mỗi câu 1 dòng, total 5-10 phút.
- 【2】**「合意までいかなくても」** — Dũng tự kiểm tra realistic của output. JP business **kỵ** "over-promise" → Hương khen.

---

## 🎯 Câu chốt

> **「準備の7問に答えられないうちは PowerPoint を開かない。」**
>
> *Chưa trả lời được 7 câu thì chưa được mở PowerPoint. Slide đẹp + message sai = vứt.*

---

## 📐 Template Checklist 7 câu (đính kèm — `conversation.json:templates[0]`)

```
【プレゼン準備チェックリスト】

① 誰に？(Audience)
   - 主聴衆: ____  (役職・社名・関係性)
   - 副聴衆: ____
   - 不在の意思決定者: ____

② 何を決めたい？(Decision target)
   - 本日の合意ゴール: ____  (1文で)
   - 妥協可能ライン: ____
   - 絶対に譲れないライン: ____

③ 時間 (Time)
   - 持ち時間: ____ 分
   - うち Q&A: ____ 分
   - 1スライド当たり: ____ 秒(目安)

④ 場所 (Setting)
   - 対面 / オンライン / ハイブリッド
   - 機材: PC・プロジェクター・マイク
   - 接続テスト: ____ (時刻)

⑤ 期待されるアウトプット (Output)
   - 主アウトプット: ____  (例: スコープ合意 / 方向性決定 / 検討開始)
   - 副アウトプット: ____  (例: 次回会議日決定)
   - NG ライン: ____  (これ以下なら失敗)

⑥ リスク (Risk)
   - リスク1: ____ → 対策: ____
   - リスク2: ____ → 対策: ____
   - リスク3: ____ → 対策: ____

⑦ バックアップ (Backup)
   - スライド: PDF版 USB+クラウド
   - デモ: オフライン版
   - インターネット: モバイルテザリング
```

---

## ⚠ Tránh

- Mở PowerPoint trước khi fill 7問 → 90% sẽ phải redo
- Để trống ⑤ output → không biết success criteria
- Bỏ qua ⑥ risk + ⑦ backup → vào pitch với mind 100% optimistic
- Output quá tham vọng (vd "100% confirm contract trong 30 phút") → không realistic

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 準備 | じゅんび | Chuẩn bị |
| 聴衆 | ちょうしゅう | Audience |
| 決裁者 | けっさいしゃ | Decision maker |
| アウトプット | autoputto | Output |
| バックアップ | bakkuappu | Backup |
| 妥協 | だきょう | Thỏa hiệp / compromise |
| 譲れない | ゆずれない | Không thể nhượng bộ |


# Rule 02 — Quy tắc 1-slide-1-message / 1スライド1メッセージ

> **Luận điểm.** Mỗi slide chỉ tải **1 takeaway**. Title không phải topic ("売上について") mà là kết luận ("Q2売上はQ1比+18%"). Khán giả Nhật quét slide trong 3 giây — nếu không thấy ngay message, slide vô dụng.
>
> 1スライド＝1メッセージ。タイトルは「テーマ」ではなく「結論」を書く。聴衆は3秒でスキャンする — メッセージが見えなければそのスライドは無価値。
>
> **Liên quan:** rule 01 (準備7問), rule 03 (SCQA), rule 06 (10-20-30).
> Sách 04 Rule 01 — 結論先出し (kết luận trước).

---

## Bối cảnh / 場面

Sau khi fill xong 7問, Dũng quay lại với draft 15 slide. Mỗi slide có title kiểu "Phase 3 について", "システム構成について" — toàn topic, không có kết luận. Chị Hương review pre-rehearsal.

---

## ❌ Hội thoại XẤU — title là topic

*share screen*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、スライド10枚に絞りました。タイトルご確認ください。」 |
| **フオン** | 「『Phase 3 について』『システム構成について』… 全部『〜について』？それ**テーマ**でしょう？で、結局**何が言いたい**の？」 |
| **ズン** | 「えっと…Phase 3 ではこれをやるという…」 |
| **フオン** | 「だから『何を』をタイトルに書く。**1スライド1メッセージ**。タイトル＝結論。聴衆はタイトルだけ見て分かるべき。」 |

**Vì sao xấu:** Title kiểu 「〜について」 chỉ nêu chủ đề chứ không truyền message. Khách Nhật xem deck nhanh (3 giây/slide) — nếu title chỉ là chủ đề, họ phải đọc body text → mệt → mất focus.

---

## ✅ Hội thoại TỐT — title là kết luận

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、タイトルを全部**結論型**に書き直しました【1】。10枚お願いします。」 |
| **フオン** | 「『Phase 3 で在庫差異を月平均5%→1%に削減』… うん、これなら**タイトルだけ読めば結論が分かる**。本文は何？」 |
| **ズン** | 「本文は**根拠3点**だけ書きました。在庫管理ロジック、リアルタイム同期、アラート機構の3つです【2】。」 |
| **フオン** | 「いいね。1枚で1メッセージ＋根拠3点。これが基本フォーマット。残り9枚も同じパターンで通して。」 |

📝 **Ghi chú:**
- 【1】**「結論型タイトル」** — Pattern: 「〇〇により××を△△に改善」「〇〇により××%削減」。動詞+数字 を入れると一段強くなる。
- 【2】**「根拠3点」** — Title=結論、本文=根拠3点 (それ以上は別スライド)。3点ルールは認知負荷の上限。

---

## 🎯 Câu chốt

> **「タイトル＝結論。本文＝根拠3点。それ以外はカット。」**
>
> *Title = kết luận, body = 3 luận cứ. Còn lại cắt sang slide khác.*

---

## ⚠ Tránh

- Title 「〇〇について」「〇〇の件」 — đó là chủ đề, không phải message
- 1 slide chứa 5-7 bullet points — não chỉ giữ được 3 ± 1
- Title dài quá 25 chữ — đọc không kịp trong 3 giây
- Body có chữ nhỏ < 24pt để nhồi nội dung — vi phạm rule 06

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 結論 | けつろん | Kết luận |
| 根拠 | こんきょ | Luận cứ / căn cứ |
| 削減 | さくげん | Cắt giảm |
| 認知負荷 | にんちふか | Tải nhận thức (cognitive load) |
| 改善 | かいぜん | Cải thiện |
| スキャン | sukyan | Quét nhanh |


# Rule 03 — Đường mạch câu chuyện (SCQA) / ストーリーアーク

> **Luận điểm.** Pitch tốt = câu chuyện có mạch. Pattern **SCQA** (Situation → Complication → Question → Answer) là khung Minto Pyramid áp dụng cho prés. Khách Nhật conservative thích flow này vì nó **không spike kịch tính như US-style**, chỉ dẫn dắt logic từ "đã biết" sang "cần quyết".
>
> SCQA: 共通認識(Situation) → 問題発生(Complication) → 問い(Question) → 答え(Answer)。日本顧客向けには情緒煽りより論理誘導が刺さる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 10 (背景＋agenda), rule 11 (hook 3パターン).

---

## Bối cảnh / 場面

Slide đã có 1-slide-1-message nhưng order lộn xộn: bắt đầu bằng "弊社の強み" rồi mới đến "市場課題". Hương yêu cầu reorder theo SCQA — bắt đầu bằng những gì khách đã biết.

---

## ❌ Hội thoại XẤU — vendor-first order

*リハーサル*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「最初に弊社の強み3点をご紹介します。次にPhase 3 提案、最後に価格…」 |
| **フオン** | 「ストップ。**自社の強みから**入る？それ vendor-first 順。聴衆は『で、何の話？』ってなる。」 |
| **ズン** | 「あ…じゃあどう並べれば…」 |
| **フオン** | 「**SCQA**。① 共通認識: 白鷗様は在庫差異5%で困ってる、② 問題: Phase 2 で部分改善したが…、③ 問い: 残り課題は？、④ 答え: Phase 3。**自社の話は最後**。」 |

**Vì sao xấu:** Vendor-first order khiến khán giả không thấy "câu chuyện về mình" — chỉ thấy "vendor khoe". Khách Nhật particularly dị ứng với hard-sell mở đầu.

---

## ✅ Hội thoại TỐT — SCQA flow

| Speaker | Câu |
|---------|-----|
| **ズン** | 「組み直しました。**SCQA**で行きます【1】。Slide1: 白鷗様の在庫差異5%という現状(S)。Slide2: Phase 2 で1.8%まで改善したが、季節商品で再発(C)。Slide3: 残課題をどう解決するか(Q)。Slide4-9: Phase 3 提案(A)。」 |
| **フオン** | 「いいね、聴衆が**自分の話**として聞ける。Cで再発を素直に書いたのも良い、隠さない方が信頼される【2】。」 |
| **ズン** | 「Aパートが6枚は多いでしょうか？」 |
| **フオン** | 「Aは答えだから6枚OK。むしろSCQの導入は3枚に圧縮、Aで6枚使うのが正しいバランス。」 |

📝 **Ghi chú:**
- 【1】**SCQA pattern** — Situation (共通認識): khách đã biết. Complication (変化/問題): điều gì thay đổi. Question (問い): cần quyết gì. Answer (答え): đề xuất.
- 【2】**「再発を素直に書く」** — Phase 2 không hoàn hảo → JP business respect honesty. Hide weakness = lose trust.

---

## 🎯 Câu chốt

> **「SCQA: 聴衆が知っていること → 何が変わったか → 何を問うか → 答え。自社の話は最後。」**
>
> *Bắt đầu từ điều khán giả đã biết, kết thúc bằng đề xuất. Vendor-talk để cuối.*

---

## ⚠ Tránh

- Mở đầu bằng "弊社の強み" — vendor-first = lose attention
- Bỏ qua C (Complication) — không có "vấn đề" thì không có lý do nghe tiếp
- Q (Question) implicit — phải state rõ "本日決めたいのは」
- A quá ngắn (1-2 slide) — answer phải đủ chi tiết để decision

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 共通認識 | きょうつうにんしき | Nhận thức chung |
| 問題発生 | もんだいはっせい | Vấn đề phát sinh |
| 誘導 | ゆうどう | Dẫn dắt |
| 再発 | さいはつ | Tái phát |
| 隠す | かくす | Che giấu |
| 圧縮 | あっしゅく | Nén / cô đọng |


# Rule 04 — Visual hierarchy & font / 視覚階層・フォント

> **Luận điểm.** Slide tốt phải có **3 cấp visual**: (1) Title 32-40pt, (2) Sub-message 24-28pt, (3) Body 18-22pt. Font Nhật default: **Meiryo / 游ゴシック** (sans). Tránh MS明朝 (mảnh, khó đọc projector). Alignment phải **trái-trục** không center bừa.
>
> 視覚階層は3段階。タイトル(32-40pt) > サブメッセージ(24-28pt) > 本文(18-22pt)。日本語フォントはMeiryo/游ゴシック推奨、明朝は projector で潰れる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 05 (色彩心理), rule 06 (10-20-30).

---

## Bối cảnh / 場面

Dũng làm slide với mọi text 18pt + center alignment + font MS Mincho default. Hương xem rehearsal trên projector → nhìn từ hàng cuối thấy mờ + lộn xộn.

---

## ❌ Hội thoại XẤU — flat hierarchy

*後列から*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「ズン、後ろからタイトル読めない。何ポイント？」 |
| **ズン** | 「全部18ポイントです。情報を入れたかったので…」 |
| **フオン** | 「全部同じサイズ＝**階層がない**。聴衆はどこを見ればいいか分からない。それと**MS明朝**？プロジェクターで潰れる。」 |
| **ズン** | 「あ…デフォルトのまま使っていました…」 |

**Vì sao xấu:** Flat hierarchy = no visual guide. 18pt cho title quá nhỏ trên projector từ hàng cuối. MS明朝 (serif) bị mảnh, projector không đủ contrast.

---

## ✅ Hội thoại TỐT — 3-level hierarchy

*後列で確認*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**チェックリスト**で全スライド見直しました【1】。タイトル36pt、サブ24pt、本文20pt、フォントは**Meiryo**統一です。」 |
| **フオン** | 「うん、後ろからタイトル読める。本文はギリギリ。図表のラベルは何pt？」 |
| **ズン** | 「ラベル14pt でした…20pt以上に上げます【2】。」 |
| **フオン** | 「お願い。それと**alignment は左揃え**。中央揃えは見出しだけ、本文はNG。」 |

📝 **Ghi chú:**
- 【1】**チェックリスト** — 視覚階層チェックリスト (xem template). Apply trên TOÀN bộ deck trước khi rehearsal.
- 【2】**「ラベル14pt」** — Lỗi phổ biến: chart label nhỏ vì auto-default. Phải override lên 20pt+.

---

## 🎯 Câu chốt

> **「タイトル36-40pt、本文20-24pt、最小20pt。Meiryo / 游ゴシックで左揃え。」**
>
> *Title 36-40pt, body 20-24pt, không nhỏ hơn 20pt. Sans-serif Nhật, left-align.*

---

## 📐 Template Checklist 視覚階層 (đính kèm — `conversation.json:templates[0]`)

```
【視覚階層チェックリスト】

□ タイトル 32-40pt (Bold)
□ サブメッセージ 24-28pt
□ 本文 (Bullet/根拠) 20-24pt
□ 図表ラベル 18pt 以上 (NG: 14pt以下)
□ フッター/ページ番号 12-14pt

□ フォント統一: Meiryo / 游ゴシック / Noto Sans JP
□ MS明朝・MSゴシック使用禁止 (古い・潰れる)
□ 英数字フォント: Arial / Helvetica / Segoe UI

□ Alignment 左揃え (見出しのみ中央可)
□ 行間 1.3-1.5
□ 余白 上下左右 5%以上

□ コントラスト比: 文字vs背景 4.5:1 以上
□ 背景: 白 or 薄グレー (#F5F5F5)
□ 太字使用は1スライド3箇所以内

□ プロジェクター確認: 後列から読めるか実機テスト
```

---

## ⚠ Tránh

- 全 text cùng size → no hierarchy
- Center align body text → eye trace lộn xộn
- MS明朝 / Times New Roman trên projector → mảnh + mờ
- Chart label < 18pt → khán giả không đọc nổi
- Bold quá nhiều → hết tác dụng nhấn mạnh

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 視覚階層 | しかくかいそう | Visual hierarchy |
| フォント | fonto | Font |
| 揃え | そろえ | Alignment |
| 余白 | よはく | Margin / white space |
| 行間 | ぎょうかん | Line spacing |
| 潰れる | つぶれる | Bị bể / mờ (chữ) |
| プロジェクター | purojekutaa | Máy chiếu |


# Rule 05 — Color psychology JP business / 色彩心理

> **Luận điểm.** JP business deck = **conservative palette**: navy / charcoal / muted blue làm primary, light gray bg, một accent color **chỉ cho CTA**. Đỏ giành riêng cho cảnh báo / hành động khẩn — KHÔNG dùng làm trang trí. Quá nhiều màu → "vendor ồn", mất uy.
>
> 日本ビジネスは保守的色調。ネイビー・チャコール・薄グレーが基本。アクセント1色のみ(CTA用)。赤は警告／緊急のみ — 装飾には使わない。
>
> **Liên quan:** rule 04 (視覚階層), rule 19 (価格スライド), rule 20 (リスク).

---

## Bối cảnh / 場面

Dũng dùng template rực rỡ — title đỏ, body xanh lá, accent cam, biểu đồ 7 màu cầu vồng. Hương xem rehearsal → ngay lập tức cản. Khách Hakuō là 老舗 (cty lâu đời) → palette phải phù hợp.

---

## ❌ Hội thoại XẤU — palette sặc sỡ

*slide開いた瞬間*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「うわ、目が痛い。タイトル**赤**？」 |
| **ズン** | 「目立つかと思って…緑と橙でアクセント入れました。」 |
| **フオン** | 「白鷗様は**老舗**よ？派手な色使う相手じゃない。**赤は警告とCTA専用**。装飾に使うと『軽薄』に見える。」 |
| **ズン** | 「あ、すみません…」 |

**Vì sao xấu:** Đỏ làm title trên JP corporate slide = signal "amateur" hoặc "promotional spam". Khách 老舗 expect: navy / charcoal — màu của institution.

---

## ✅ Hội thoại TỐT — conservative palette

| Speaker | Câu |
|---------|-----|
| **ズン** | 「色を**3色制限**にしました【1】。プライマリ: ネイビー(#1E3A5F)、サブ: チャコール(#3A3A3A)、アクセント: 白鷗ブルー(#4A90C2)。背景は薄グレー。」 |
| **フオン** | 「いいね、白鷗ブランドカラーをアクセントに使うのは**気が利いてる**【2】。CTAボタンは何色？」 |
| **ズン** | 「**CTAだけオレンジ**(#E67E22)で目立たせます。それ以外オレンジは使いません。」 |
| **フオン** | 「正解。赤はリスクスライドの『高リスク』マークだけ。色に意味を持たせる。」 |

📝 **Ghi chú:**
- 【1】**「3色制限」** — Primary + Sub + 1 Accent. それ以上は noise.
- 【2】**「白鷗ブランドカラー」** — 顧客のコーポレートカラーをアクセントに使う = リサーチ済み の signal. 効果大.

---

## 🎯 Câu chốt

> **「3色制限。ネイビー＋チャコール＋アクセント1色。赤はリスクとCTAだけ。」**
>
> *Tối đa 3 màu. Navy + charcoal + 1 accent. Red dành riêng cho risk + CTA.*

---

## ⚠ Tránh

- 7-color rainbow chart → người xem không phân biệt được
- 赤 làm title color → JP corporate context = amateur
- Background color không phải white/light gray → khó in PDF, khó projector
- Accent color + Primary color tương phản thấp → không nổi
- Color-only encoding (vd "đỏ = bad, xanh = good") → bỏ qua audience colorblind. Phải có icon/text kèm

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 色彩 | しきさい | Màu sắc |
| 保守的 | ほしゅてき | Bảo thủ / conservative |
| 老舗 | しにせ | Công ty truyền thống lâu đời |
| 派手 | はで | Sặc sỡ / lòe loẹt |
| 警告 | けいこく | Cảnh báo |
| 装飾 | そうしょく | Trang trí |
| 軽薄 | けいはく | Nhẹ dạ / nông nổi |
| アクセント | akusento | Accent (màu nhấn) |


# Rule 06 — Density rule (10-20-30) / 密度ルール

> **Luận điểm.** Guy Kawasaki **10-20-30 rule**: tối đa **10 slide / 20 phút / font tối thiểu 30pt** (cho consumer pitch). Adapt cho B2B JP: **10-12 slide / 20-25 phút / 24pt min**. Quá đó = audience overload + slot Q&A bị bóp.
>
> 10-20-30ルール (川崎流)。10枚以内・20分以内・最小30pt。日本B2B版: 10-12枚 / 20-25分 / 最小24pt。これを超えると Q&A 時間が削られる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 04 (視覚階層), rule 13 (時間管理).

---

## Bối cảnh / 場面

Sau review của Hương, Dũng cộng thêm 4 slide phụ "for safety" → quay lại 14 slide. Anh Hà CTO co-presenter check trước final rehearsal → spot ngay overflow risk.

---

## ❌ Hội thoại XẤU — slide creep

| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、最終版14枚？前回10枚って言ってたよね？」 |
| **ズン** | 「あ、念のため4枚追加しました。バックアップ的に…」 |
| **ハーCTO** | 「30分プレゼン＋15分Q&Aで14枚？1枚2分超過。**Q&A時間が消える**。あと、追加4枚はどれも『話したい』だけで『決めるのに必要』じゃない。」 |
| **ズン** | 「えっと…」 |

**Vì sao xấu:** "念のため追加" = scope creep classic. Mỗi slide cần 1.5-2 phút (incl. transition + breathing) → 14 slide × 2 phút = 28 phút → còn 2 phút cho Q&A. Khách Nhật rất quý phần Q&A.

---

## ✅ Hội thoại TỐT — strict 10-12

| Speaker | Câu |
|---------|-----|
| **ズン** | 「10-20-30ルールで再 audit しました【1】。本編10枚、appendix 5枚は質問対応用（必要なら出す）。」 |
| **ハーCTO** | 「いいね、appendix 分離は正しい。本編10枚 × 2分 = 20分、自己紹介+背景3分、Q&A 7分の枠で30分内。」 |
| **ズン** | 「**フォントは最小24pt**で統一【2】、appendix も同じです。」 |
| **ハーCTO** | 「OK。本番で14枚出すと『準備不足』に見える、10枚 + appendix の構成は『きっちり感』が出る。」 |

📝 **Ghi chú:**
- 【1】**10-20-30ルール** — Original consumer用. JP B2B 版は 10-12 / 20-25 / 24pt min. Appendix 分離 = strong signal.
- 【2】**「最小24pt」** — Rule 04 と整合. Projector後列 + screen share 両方で読める.

---

## 🎯 Câu chốt

> **「本編10-12枚、20-25分、24pt以上。+ Appendix 分離。Q&A 時間を死守。」**
>
> *Body 10-12 slide, 20-25 phút, min 24pt. Appendix tách riêng. Bảo vệ slot Q&A.*

---

## 📐 計算公式 — Slide budget

```
利用時間 = 30分
- 自己紹介・挨拶: 2分
- 背景・アジェンダ: 3分
- Q&A: 7分 (確保)
─────────────
本編に使える時間: 18分

本編スライド数 = 18分 ÷ 1.5-2分/枚 = 9-12枚

→ 10枚が安全ゾーン
```

---

## ⚠ Tránh

- 「念のため追加」 → scope creep, 100% sẽ xảy ra nếu không strict
- 1 slide < 30 giây → audience không kịp absorb, vô nghĩa
- 1 slide > 3 phút → audience mất focus
- Bỏ Q&A budget → khách Nhật seen as "không có chỗ thảo luận = không tự tin"
- 24pt body trên projector vẫn hơi nhỏ → check thực tế

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 密度 | みつど | Mật độ |
| 念のため | ねんのため | Cho chắc / phòng hờ |
| 削られる | けずられる | Bị cắt giảm |
| 監査 / audit | かんさ | Kiểm tra / soát |
| 死守 | ししゅ | Bảo vệ tới cùng |
| 追加 | ついか | Thêm vào |


# Rule 07 — Backup plan (Plan B) / バックアップ計画

> **Luận điểm.** Pre-pitch checklist phải có **5 backup**: ① PDF deck (USB + cloud), ② demo offline (local DB / mock), ③ mobile hotspot, ④ HDMI / USB-C / VGA adapter trio, ⑤ printed handout 5 bản. Tech failure không phải "nếu" mà là "khi nào". Plan B chuẩn bị trước = recovery 2 phút thay vì 15 phút.
>
> プレゼン直前チェックリスト5点: ①PDFバックアップ、②オフラインデモ、③モバイルテザリング、④アダプタ3種、⑤印刷配布5部。トラブルは『if』ではなく『when』。準備済みなら2分で復旧。
>
> **Liên quan:** rule 01 (準備7問⑦), rule 31 (技術トラブル復旧), rule 29 (オンライン).

---

## Bối cảnh / 場面

Ngày trước pitch, Hải DevOps tình cờ ngang qua phòng họp lúc Dũng test → phát hiện: laptop chưa có HDMI adapter, deck chỉ ở Dropbox (cần internet), demo gọi API live. Một sự cố là toàn bộ bế tắc.

---

## ❌ Hội thoại XẤU — single point of failure

*覗いて*

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「ズン、明日プレゼン？スライドどこ？」 |
| **ズン** | 「Dropboxです。明日 Wi-Fi 借りて開きます。」 |
| **ハイ** | 「Dropbox オンリー？**Wi-Fi 落ちたら deck 開けない**よ。デモは？」 |
| **ズン** | 「ライブAPI呼ぶ実装で…」 |
| **ハイ** | 「**全部 single point of failure**。明日朝3時に起きて慌てる前に、今日Plan B 揃えよう。」 |

**Vì sao xấu:** Cloud-only deck + live API demo + 1 cable = 3 điểm rủi ro độc lập. Bất kỳ điểm nào fail là demo phá. Khách Nhật particularly không nương tay khi tech fail.

---

## ✅ Hội thoại TỐT — 5-point backup checklist

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ハイさん、ありがとう。**Plan Bチェックリスト**【1】で揃えました。①PDF版 USB+ローカル、②オフラインデモ準備、③テザリング有効、④HDMI+USB-C+VGAアダプタ持参、⑤印刷5部。」 |
| **ハイ** | 「いいね。USB は2本？1本紛失リスク。」 |
| **ズン** | 「2本持参します。**もう1本はトゥアンさんに渡します**【2】(co-presenter として保険)。」 |
| **ハイ** | 「正解。それと PDF はクライアント側にも事前共有しておくと、最悪『画面共有なしで紙ベース』に切り替えできる。」 |

📝 **Ghi chú:**
- 【1】**「Plan B チェックリスト」** — Pre-pitch 24h前に 1 round, pitch当日朝 final check. 5項目全部 ✅ で安心.
- 【2】**「トゥアンさんに渡します」** — Co-presenter があれば redundancy. 1人が遅刻/接続失敗でも他方がカバー.

---

## 🎯 Câu chốt

> **「Plan B 5点: PDF / オフラインデモ / テザリング / アダプタ3種 / 印刷5部。Tech failure は『when』であって『if』ではない。」**
>
> *5 điểm backup. Tech fail là chuyện khi nào, không phải có hay không.*

---

## 📐 Template Pre-Pitch Backup Checklist (đính kèm — `conversation.json:templates[0]`)

```
【プレゼン Plan B チェックリスト】(24時間前 + 当日朝)

■ スライド (Slides)
□ PowerPoint/Keynote 元ファイル: クラウド + ローカル
□ PDF版: USB×2本 + ローカル + クラウド
□ Google Slides Web版バックアップ
□ 印刷配布版: 主要スライドのみ 5-10部

■ デモ (Demo)
□ オフライン版デモ (local DB / mock data)
□ 録画版デモ (.mp4 USB+ローカル) — 最終の最終
□ デモ用 test account 動作確認

■ ネットワーク (Network)
□ モバイルテザリング有効 (4G/5G)
□ ポケットWi-Fi 充電済み (予備)
□ オフライン優先モード設定済み

■ 機材 (Equipment)
□ HDMI ケーブル
□ USB-C → HDMI / VGA アダプタ
□ Lightning → HDMI (iPad backup用)
□ 充電器 + 延長コード
□ レーザーポインター (電池予備)

■ 配布物 (Handout)
□ 名刺 20枚以上
□ 印刷スライド主要部 5部
□ 会社案内 / 過去事例集 5部

■ 担当者間 (Team redundancy)
□ Co-presenter にも USB 1本
□ Slack で deck PDF を相互送信
□ 万一の連絡先メモ (ホテル / タクシー会社 等)

■ 当日朝 final
□ 機材 全 connect テスト
□ 音声 / 画面共有 テスト
□ Q&A appendix スライド再確認
```

---

## ⚠ Tránh

- Cloud-only deck → no internet = no pitch
- Live API demo without offline fallback → 1 connection drop = total fail
- 1 USB only → 紛失 = panic
- Adapter chỉ 1 loại → khách dùng VGA/USB-C khác là toang
- Test ở văn phòng mình rồi tin → môi trường khách khác

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| バックアップ | bakkuappu | Backup |
| 復旧 | ふっきゅう | Khôi phục |
| 慌てる | あわてる | Hoảng loạn |
| 紛失 | ふんしつ | Thất lạc / mất |
| 保険 | ほけん | Bảo hiểm / dự phòng |
| 配布 | はいふ | Phát ra (handout) |
| テザリング | tezaringu | Tethering / phát Wi-Fi từ điện thoại |
| アダプタ | adaputa | Adapter |



---

# Phần II — Mở đầu / オープニング

# Rule 08 — Hook 30 giây mở / 30秒オープニング

> **Luận điểm.** 30 giây đầu **quyết định attention**. Audience Nhật quyết định "có nghe nghiêm túc hay zoning out" trong nửa phút đầu. Hook phải **chạm vào pain của khán giả**, không phải "今日はお時間いただきありがとうございます…" rồi đi vòng. Cấu trúc: **Hook (10s) → Stake (10s) → Promise (10s)**.
>
> 最初の30秒で聴衆の集中を確保。「Hook(10s)→Stake(10s)→Promise(10s)」の構造。聴衆の痛みに直接触れる。
>
> **Liên quan:** rule 09 (自己紹介), rule 11 (フック3パターン), rule 13 (時間管理).

---

## Bối cảnh / 場面

Pitch ngày D. Dũng đứng đầu phòng, Matsumoto + Ōgaki + Tanaka + 2 nhân viên Hakuō ngồi đối diện. 30 giây đầu — Dũng có 2 lựa chọn open.

---

## ❌ Hội thoại XẤU — generic intro 30 giây bay mất

*立ち上がって · 時計を見る · ノートを見つめる*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「皆様、本日はお忙しい中お時間をいただきまして、誠にありがとうございます。ティエンファットの**ズン**と申します。本日は Phase 3 のご提案をさせていただきます。それでは、まず弊社のご紹介から…」 |
| **大垣** | 「(……長いな)」 |
| **松本** | 「(……早く本題)」 |

**Vì sao xấu:** 30 giây của Dũng dùng hết cho lời chào generic + intro công ty → audience chưa nghe gì có giá trị, attention đã rớt. Hook = không có.

---

## ✅ Hội thoại TỐT — Hook → Stake → Promise

*姿勢を整え · 顔を上げる · ペン構える*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**Phase 2 で在庫差異5%を1.8%まで削減いたしました**【1】。(間2秒) しかし、季節商品で再発しております。本日30分で、その**残課題をどう解くか**【2】、Phase 3 の方向性を決めたく存じます。私、ティエンファットのズンと申します。」 |
| **大垣** | 「(……お、ちゃんと数字から入った)」 |
| **松本** | 「結構です、続けてください。」 |

📝 **Ghi chú:**
- 【1】**「Phase 2 で...削減」** — Hook = 数字 + 既知の事実. Audience 5秒 で 「自分の話」と認識.
- 【2】**「残課題をどう解くか」** — Stake (今日決めること) を明示. これで「聞く理由」が生まれる.

---

## 🎯 Câu chốt

> **「30秒 = Hook(数字 or 質問 or ストーリー) → Stake(今日決めること) → Promise(時間と output)。」**
>
> *30 giây = Hook (số liệu / câu hỏi / chuyện) → Stake (hôm nay quyết gì) → Promise (bao lâu + output).*

---

## ⚠ Tránh

- "本日はお忙しい中…" mở đầu generic — bắt buộc nhưng không phải HOOK
- Intro công ty trước Hook → audience không cảm thấy chuyện liên quan
- Hook dài >15s → đã rơi vào "story mode", không còn punch
- Đọc Hook từ slide → bị flat. Hook PHẢI nói thuộc lòng + eye contact

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 削減 | さくげん | Cắt giảm |
| 再発 | さいはつ | Tái phát |
| 残課題 | ざんかだい | Vấn đề còn lại |
| 方向性 | ほうこうせい | Hướng đi |
| 集中 | しゅうちゅう | Tập trung |
| 痛み | いたみ | Pain (point) |
| 構える | かまえる | Sẵn sàng (cầm bút etc) |


# Rule 09 — Tự giới thiệu khi pitch / プレゼン自己紹介

> **Luận điểm.** Khác với 名刺交換 (sách 03 rule 11), pitch self-intro phải có **why-me**: 1 câu credibility liên quan đến chủ đề. Cấu trúc 3 câu: ① Cty + tên, ② Vai trò trong dự án, ③ **Why-me** (kinh nghiệm liên quan, KHÔNG phải toàn bộ CV). Tổng 30 giây.
>
> 名刺交換と違い、プレゼンの自己紹介は『why-me』が必須。3文構成: ①社名＋氏名 ②本案件での役割 ③本テーマでの実績(1点)。30秒以内。
>
> **Liên quan:** rule 08 (30秒オープニング), sách 03 rule 10 (自己紹介), rule 32 (co-presenter handoff).

---

## Bối cảnh / 場面

Sau Hook, Dũng đến phần intro. Phòng có Matsumoto đã quen Dũng nhưng Ōgaki chỉ gặp 1 lần ở Sách 03. Dũng có 2 option: dài-CV-style hay 3-câu-tight.

---

## ❌ Hội thoại XẤU — full CV dump

*時計 · 40秒経過*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「私、ティエンファット社の Trần Văn Dũng と申します。2024年4月に新卒入社、最初の半年は研修、次に Phase 1 の調査…Phase 2 では松本様の指導の下…現在は…」 |
| **大垣** | 「(……いつ終わる)」 |
| **ズン** | 「…そして本日、Phase 3 の責任者を任されました。」 |

**Vì sao xấu:** 40 giây CV — listener không cần biết career timeline. Cần biết "tại sao em đang đứng đây pitch này". Phần history dài làm Ōgaki check time.

---

## ✅ Hội thoại TỐT — 3 câu tight

| Speaker | Câu |
|---------|-----|
| **ズン** | 「私、ティエンファットのズンと申します【1】。本日は **Phase 3 の主担当**としてご提案いたします【2】。Phase 2 で**在庫差異の削減ロジック**を担当しており、本案件はその継続でございます【3】。」 |
| **松本** | 「はい、よろしくお願いします。」 |
| **ズン** | 「右側のトゥアンが技術リード、後ほどデモパートを担当いたします。それでは本題に入ります。」 |

📝 **Ghi chú:**
- 【1】**「ティエンファットのズン」** — KHÔNG dùng "社" (ティエンファット社) khi tự xưng (ウチ rule).
- 【2】**「主担当としてご提案」** — Vai trò trong dự án này, không phải full job title.
- 【3】**Why-me** — 1 câu credibility relevant. "Phase 2 で〇〇を担当 → 本案件はその継続" là pattern mạnh.

---

## 🎯 Câu chốt

> **「3文構成: ① 社名＋名前 ② 本案件での役割 ③ Why-me 1点。30秒以内。」**
>
> *3 câu: tên cty + mình, vai trò dự án, 1 điểm credibility. Trong 30 giây.*

---

## ⚠ Tránh

- Full CV / career timeline → audience không quan tâm
- Liệt kê toàn bộ skill → why-me phải LIÊN QUAN topic
- Quên co-presenter intro → handoff không smooth (xem rule 32)
- "ティエンファット**社**のズン" — dùng "社" khi tự xưng = sai keigo
- Why-me overconfident ("私は専門家") → JP context = arrogant. Dùng 「担当しており」「経験がございます」

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 主担当 | しゅたんとう | Người phụ trách chính |
| 継続 | けいぞく | Tiếp tục / kế thừa |
| 任される | まかされる | Được giao trách nhiệm |
| 実績 | じっせき | Thành tích / kinh nghiệm |
| 信頼性 | しんらいせい | Độ tin cậy (credibility) |
| 専門家 | せんもんか | Chuyên gia |


# Rule 10 — Bối cảnh + agenda speech / 背景＋アジェンダ発話

> **Luận điểm.** Sau intro, dẫn audience qua **背景 (1分) → 課題 (30s) → アジェンダ (30s)**. Cấu trúc 2-min "set the stage". Đừng đọc agenda như mục lục — hãy nói "**今日は3つお話しします: A、B、最後にC**" rồi liệt số rõ ràng. Khán giả Nhật cần "biết trước cả deck dài bao nhiêu phần".
>
> イントロ後の2分で『背景→課題→アジェンダ』。アジェンダは『3つお話しします』と数を明示してから A/B/C を言う。
>
> **Liên quan:** rule 03 (SCQA), rule 14 (論理マーカー), rule 13 (時間管理).

---

## Bối cảnh / 場面

Sau self-intro, Dũng vào phần background. Slide 1 hiện 5 bullet "今日のアジェンダ" — Dũng có thể đọc list hoặc nói structure phrase.

---

## ❌ Hội thoại XẤU — agenda đọc list

*slideを見て*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「アジェンダです。1つ目、Phase 2 振り返り。2つ目、課題分析。3つ目、Phase 3 提案。4つ目、スケジュール。5つ目、価格。6つ目、リスク。以上です。次のスライドに行きます。」 |
| **大垣** | 「(……6項目もあるのか、長そうだな)」 |

**Vì sao xấu:** 6項目は多すぎ感. Đọc đều đều như list không cho audience priority. Không nói "本日決めたいこと" → không có anchor.

---

## ✅ Hội thoại TỐT — structure + anchor

*間*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**まず背景**を1分でお伝えします【1】。Phase 2 で在庫差異を5%→1.8%まで削減できましたが、季節商品で再発しております。**この再発をどう解くか**が本日の論点です。」 |
| **ズン** | 「本日は **大きく3部構成**でお話しします【2】。**第1部**: 残課題の分析(5分)、**第2部**: Phase 3 提案とデモ(15分)、**第3部**: スケジュール・価格・リスク(5分)。最後に **Q&A 7分**。本日のゴールは Phase 3 の **方向性決定**でございます【3】。」 |
| **松本** | 「分かりました、進めてください。」 |

📝 **Ghi chú:**
- 【1】**「まず〇〇を〇分で」** — Time stamp giúp audience track tiến độ.
- 【2】**「大きく3部構成で」** — Group 6 items thành 3 parts. 認知負荷 giảm dramatic.
- 【3】**「本日のゴールは...決定」** — Anchor の宣言. Connection với rule 13 (時間管理約束).

---

## 🎯 Câu chốt

> **「背景1分 → 論点1文 → 大きく〇部構成 → ゴール宣言。アジェンダは数字でグループ化。」**
>
> *Bối cảnh 1 phút → 1 câu vấn đề → "chia 〇 phần lớn" → tuyên bố goal. Group agenda thành số nhỏ.*

---

## ⚠ Tránh

- Đọc agenda như list 6-7 mục — overwhelming
- Bỏ qua "本日のゴール" — audience không biết success looks like gì
- Background dài quá 2 phút — bóp pitch budget
- Không có "間" giữa background và agenda — flow bị mash

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 背景 | はいけい | Bối cảnh |
| 論点 | ろんてん | Vấn đề / điểm bàn |
| 構成 | こうせい | Cấu trúc |
| 第1部 | だいいちぶ | Phần 1 |
| ゴール | gooru | Goal |
| 振り返り | ふりかえり | Nhìn lại / retrospective |
| 分析 | ぶんせき | Phân tích |


# Rule 11 — Hook 3 patterns / フックの3パターン (story / data / question)

> **Luận điểm.** 3 pattern hook chính: **(A) Story** (anecdote 30s), **(B) Data** (số shock), **(C) Question** (câu hỏi rhetorical). Pick 1 theo audience + topic. Khách Nhật conservative thường response best với **(B) Data** (an toàn) > (C) Question > (A) Story (rủi ro hơi US-style nếu không khéo).
>
> 3パターン: ストーリー/データ/質問。聴衆×テーマで選ぶ。日本顧客にはデータ型が一番安全、次に質問型、ストーリー型は技量次第。
>
> **Liên quan:** rule 08 (30秒オープニング), rule 12 (ムード作り), rule 18 (顧客の声).

---

## Bối cảnh / 場面

Tuần trước pitch, Linh (intern) sắp pitch lần đầu cho 1 SME khách nhỏ. Hỏi Dũng "anh dùng pattern nào?" Dũng giải thích 3 pattern + cách chọn.

---

## ❌ Hội thoại XẤU — pick wrong pattern

| Speaker | Câu |
|---------|-----|
| **リン** | 「ズン先輩、明日のプレゼン、ストーリー型でいきます。学生時代に手作業で在庫管理した話で…」 |
| **ズン** | 「相手 50代の中小企業オーナー？大丈夫？ストーリー型は**滑ったら30秒で終わる**。データはある？」 |
| **リン** | 「『手作業で1日3時間』みたいなデータは…」 |
| **ズン** | 「それ data 型でいけるじゃん。**『1日3時間の手作業を15分に圧縮』**って数字で入る方が安全。」 |

**Vì sao xấu:** Linh chọn story pattern cho audience không biết, không có rapport → risk cao. Story cần delivery skill cao + audience open.

---

## ✅ Hội thoại TỐT — match pattern to audience

| Speaker | Câu |
|---------|-----|
| **ズン** | 「3パターンの選び方を教えるね【1】。**(A) ストーリー型**: rapport ある相手 + 自分の delivery 自信ある時。**(B) データ型**: 初対面 + 保守的相手。**(C) 質問型**: 相手が議論モードに入ってる時。」 |
| **リン** | 「私の場合は B ですね。50代オーナー、初対面、保守的。」 |
| **ズン** | 「正解。Bは『**驚き数字 → だからこの話**』の流れ。**『手作業で1日3時間使っているこの作業、15分に圧縮できます』** で30秒成立【2】。」 |
| **リン** | 「シンプルですね…練習します。」 |

📝 **Ghi chú:**
- 【1】**3パターン選択基準** — Story = high skill + rapport. Data = safe default. Question = audience already engaged.
- 【2】**「驚き数字 → だからこの話」** — Data hook formula. 数字+pain で audience の「自分ごと」感を生む.

---

## 🎯 Câu chốt

> **「保守的相手・初対面 → データ型。Rapport あり → ストーリー型。議論モード → 質問型。」**
>
> *Khách bảo thủ / lần đầu = data. Có rapport = story. Đang muốn thảo luận = question.*

---

## 📐 3パターン Cheat Sheet

| Pattern | Khi dùng | 例 |
|---------|----------|-----|
| **Story** | Có rapport, audience open | 「3年前、中野倉庫で深夜2時に在庫が合わず…」 |
| **Data** | Conservative, lần đầu, B2B JP | 「在庫差異5%は、年間1.2億円のロスに相当します」 |
| **Question** | Audience đang muốn thảo luận | 「もし在庫差異がゼロになったら、御社の物流コストは何%下がるでしょうか？」 |

---

## ⚠ Tránh

- Story pattern + audience lạ + bạn nervous → 90% fail
- Data pattern + số không gây shock → flat
- Question pattern + câu hỏi yếu (Yes/No, obvious) → audience không engage
- Mix nhiều pattern trong 30 giây → loãng

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 滑る | すべる | Trượt (joke fail / không hấp dẫn) |
| 圧縮 | あっしゅく | Nén / cô đọng |
| 中小企業 | ちゅうしょうきぎょう | SME / doanh nghiệp vừa và nhỏ |
| 議論モード | ぎろんモード | Chế độ thảo luận |
| 驚き | おどろき | Sự ngạc nhiên |
| 修辞疑問 | しゅうじぎもん | Câu hỏi tu từ (rhetorical) |


# Rule 12 — Mood setting cho khách Nhật conservative / 日本顧客向けムード作り

> **Luận điểm.** Tone JP business pitch = **serious-but-warm**, KHÔNG phải US-style energetic / TED-talk. Tránh "ファンタスティック！" 「革命的」 「ゲームチェンジャー」. Dùng **「着実に」「確実に」「丁寧に」「安心して」**. Volume vừa phải, pace **chậm hơn 5-10%** so với khi nói với người Việt.
>
> 日本ビジネスのトーンはserious-but-warm。「革命的」「ゲームチェンジャー」より「着実」「確実」「丁寧」「安心」。話速は通常の5-10%遅め。
>
> **Liên quan:** rule 08 (オープニング), rule 18 (顧客の声), sách 02 rule 06 (声の高さ).

---

## Bối cảnh / 場面

Linh (intern) sau pitch trial (rule 11), Dũng review delivery. Tone Linh học từ YouTube US-style → quá hype. Dũng coach.

---

## ❌ Hội thoại XẤU — US-style hype

*練習*

| Speaker | Câu |
|---------|-----|
| **リン** | 「**この機能はゲームチェンジャー**です！皆様の業務を**革命的**に変えます！御社の未来は**ファンタスティック**になります！」 |
| **ズン** | 「ストップ。50代オーナーが『ゲームチェンジャー』『革命的』『ファンタスティック』って聞いて、どう思う？」 |
| **リン** | 「えっと…テンション高い？」 |
| **ズン** | 「**胡散臭い**って思う。日本ビジネスは『着実に』『確実に』『丁寧に』。テンション低めでも信頼が高い方が買ってくれる。」 |

**Vì sao xấu:** US-style hype words trong JP context = "vendor đang bán hàng" alarm. Khách Nhật đặc biệt 50代 thường thấy đó là cảnh báo amateur / 詐欺 (lừa). Trust dropped.

---

## ✅ Hội thoại TỐT — serious-but-warm

*練習し直し*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「言葉を**着実な**ものに置き換えよう【1】。『ゲームチェンジャー』→『**業務改善に確実に貢献**』。『革命的』→『**着実な改善**』。『ファンタスティック』→『**安心してお任せいただける**』。」 |
| **リン** | 「この機能は**御社の在庫管理に確実に貢献いたします**。3年運用実績があり、**安心してお任せいただける**仕組みでございます。」 |
| **ズン** | 「うん、いい。あと**話速は5-10%遅めに**。早口だと『売り急ぎ』に聞こえる【2】。」 |
| **リン** | 「分かりました。練習し直します。」 |

📝 **Ghi chú:**
- 【1】**JP positive lexicon** — 着実 / 確実 / 丁寧 / 安心 / 信頼 / 実績 / 堅実. Reach for these instead of hype words.
- 【2】**「話速5-10%遅め」** — 1分300字を280字程度に. 焦らず、間を取って話す.

---

## 🎯 Câu chốt

> **「着実・確実・丁寧・安心の4語族で語る。Pace 5-10% 遅め。低テンション + 高信頼 = 売れる。」**
>
> *Dùng nhóm từ "chắc chắn / chỉn chu / yên tâm". Pace chậm 5-10%. Tone trầm + tin cậy cao = bán được.*

---

## 📐 言葉置き換え表

| ❌ US-style hype | ✅ JP business |
|---|---|
| 革命的 | 着実な改善 |
| ゲームチェンジャー | 業務改善に確実に貢献 |
| ファンタスティック | 安心してお任せいただける |
| 圧倒的 | 大幅な (改善/削減) |
| 最強 | 信頼性の高い |
| 絶対 | 確実に / 間違いなく |
| 100%保証 | 〇年運用実績がございます |

---

## ⚠ Tránh

- "革命的" "ゲームチェンジャー" "ファンタスティック" — chuông báo amateur
- Volume to + pace nhanh → "売り急ぎ" perception
- 100% 保証 / 絶対 — JP business KỴ promise tuyệt đối (rủi ro pháp lý + cảm tính)
- Cười to / hyper energy → trẻ con
- Smile lạnh / không smile gì → cứng đờ. Smile NHẸ + warm voice.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 着実 | ちゃくじつ | Chắc chắn từng bước |
| 確実 | かくじつ | Chắc chắn |
| 丁寧 | ていねい | Cẩn thận / chỉn chu |
| 堅実 | けんじつ | Vững chắc |
| 胡散臭い | うさんくさい | Đáng ngờ / mờ ám |
| 売り急ぎ | うりいそぎ | Vội bán hàng |
| 革命的 | かくめいてき | Cách mạng (hype word) |
| 詐欺 | さぎ | Lừa đảo |


# Rule 13 — Time-keeping promise / 時間管理の約束

> **Luận điểm.** Trong phút thứ 2 của pitch, **promise rõ time budget**: "本日30分でPhase 3スコープを決めたく存じます。プレゼン20分、Q&A 10分の構成です。" Khách Nhật cực kỳ trân trọng người giữ giờ. Promise này = social contract — vỡ promise là vỡ trust.
>
> プレゼンの2分目までに『時間配分』を口頭宣言。「20分プレゼン+10分Q&A」とコミット。日本顧客は時間を守る人を信頼する。
>
> **Liên quan:** rule 10 (背景＋agenda), rule 06 (10-20-30), rule 26 (closing).

---

## Bối cảnh / 場面

Sau phần intro + agenda, Dũng đến phần promise time. 2 cách: implicit ("頑張ります") hoặc explicit ("〇分でやります").

---

## ❌ Hội thoại XẤU — vague time

*顔を上げる*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「えーと、なるべくコンパクトにお話しします。Q&Aの時間も**頑張って**残します。」 |
| **大垣** | 「(……『頑張って』って具体的に何分？)」 |
| **松本** | 「ズンさん、本日は何時までですか？」 |
| **ズン** | 「えっと…30分の予定で…」 |

**Vì sao xấu:** "なるべく" "頑張って" — không phải commitment, là wish. Khách Nhật cần time-budget cụ thể để track. Buộc Matsumoto phải hỏi → loss face cho Dũng.

---

## ✅ Hội thoại TỐT — explicit time promise

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**本日は30分の枠**でいただいております【1】。プレゼン20分、Q&A 10分の構成でございます。**20分経過した時点で必ず Q&A に切り替え**ます【2】、たとえ本編が途中でも。」 |
| **松本** | 「分かりました。」 |
| **ズン** | 「**スマホでタイマーをセット**しております【3】。残り時間は私の方で管理いたしますので、ご安心くださいませ。」 |
| **大垣** | 「(……時間管理を意識してるな、好印象)」 |

📝 **Ghi chú:**
- 【1】**「30分の枠でいただいております」** — Acknowledge time = recipient's gift, không phải bạn's right.
- 【2】**「必ず Q&A に切り替え」** — Hard commitment. たとえ prés chưa hết. JP business respect mạnh promise này.
- 【3】**「タイマーをセット」** — Visible signal of commitment. Có thể là phone trên bàn (silent) hoặc smartwatch.

---

## 🎯 Câu chốt

> **「30分の枠 → プレゼン20分 + Q&A 10分。20分で必ず切り替え。タイマー可視化。」**
>
> *30 phút = pitch 20 + Q&A 10. Bất kể bản thân pitch hết chưa, đến 20 phút là switch. Set timer hiện ra.*

---

## ⚠ Tránh

- "なるべく" "頑張って" — không phải promise
- Promise giờ rồi over-run → vỡ trust nặng. Thà cắt content
- Không acknowledge "枠でいただいております" → audience cảm thấy bị coi nhẹ
- Hỏi audience "あと10分いただけますか？" mid-pitch → very negative signal về preparation

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 枠 | わく | Khung / slot |
| 切り替え | きりかえ | Chuyển đổi |
| 経過 | けいか | Đã trôi qua |
| タイマー | taimaa | Timer |
| 可視化 | かしか | Visualization |
| 頑張って | がんばって | Cố gắng (vague — tránh khi commit) |
| 構成 | こうせい | Cấu trúc |
| 好印象 | こういんしょう | Ấn tượng tốt |



---

# Phần III — Body / 本論

# Rule 14 — Logical flow markers / 論理マーカー (まず／次に／最後に)

> **Luận điểm.** Body pitch phải có **landmark chữ** dắt audience. **「まず」「次に」「最後に」** là minimum. Audience Nhật listening trong môi trường thường xuyên multitask (laptop, note) — markers giúp họ tune lại flow trong 1 giây.
>
> 本論には『まず／次に／最後に』のランドマーク必須。聴衆は常時 multitask しており、マーカーで1秒で flow に戻れる。
>
> **Liên quan:** rule 03 (SCQA), rule 10 (アジェンダ), rule 15 (データ提示).

---

## Bối cảnh / 場面

Phần body của Dũng — 3 luận cứ cho Phase 3. Lần đầu rehearsal Dũng nói liền mạch không break — Hương yêu cầu thêm markers.

---

## ❌ Hội thoại XẤU — không markers

*rehearsal*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Phase 3 の中身ですが、在庫管理ロジックを高度化します。リアルタイム同期も入れます。アラート機構も追加します。3年で投資回収します。」 |
| **フオン** | 「待って。今いくつ言った？2つ？3つ？4つ？区切りがないと聴衆も**数えられない**。」 |
| **ズン** | 「えっと…3つで…投資回収は別の話で…」 |
| **フオン** | 「**まず／次に／最後に**を入れて。3秒の追加で flow が10倍 clear になる。」 |

**Vì sao xấu:** No marker = audience không track được "đang ở luận cứ thứ mấy". Đặc biệt khi nói tiếng Nhật — accent VN có thể làm audience lỡ 1-2 từ → mất hoàn toàn flow.

---

## ✅ Hội thoại TỐT — clear markers + numbering

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Phase 3 では **3点**を実装いたします【1】。**まず1点目**、在庫管理ロジックを高度化。**次に2点目**、リアルタイム同期。**最後の3点目**、アラート機構。**この3点で**、再発を予防いたします【2】。」 |
| **フオン** | 「うん、これなら聴衆が指折り数えられる。投資回収は別スライドね？」 |
| **ズン** | 「はい、**続いて**スケジュールと投資回収にまいります【3】。」 |
| **フオン** | 「『続いて』の transition も良い。スライドが切り替わる時必ず使って。」 |

📝 **Ghi chú:**
- 【1】**「3点を実装いたします」** — Number 宣言 が markers の前提. "X 点 / X つ" を最初に言う.
- 【2】**「この3点で」** — Recap maker: 言ったことを括る. リスナーが「まとめ part」と認識.
- 【3】**「続いて」** — Inter-section transition. 他に「次のテーマに移ります」「ここまでが〇〇、ここから〇〇」.

---

## 🎯 Câu chốt

> **「N 点宣言 → まず／次に／最後に → この N 点で... の3層マーカー。Section transition は『続いて』『次のテーマに』。」**
>
> *Tuyên bố số → "đầu tiên / tiếp theo / cuối cùng" → "với 3 điểm này...". Transition section dùng "tiếp theo / sang chủ đề mới".*

---

## 📐 マーカー語彙集

| Layer | 表現 |
|-------|------|
| **N 点宣言** | 〇点ございます／〇つに分けてご説明します／大きく〇つです |
| **Item enumerate** | まず／次に／最後に／第1に／第2に／第3に |
| **Recap** | この〇点で／以上の〇点が／まとめると |
| **Section transition** | 続いて／次のテーマに移ります／ここまでが〇〇、ここから〇〇 |
| **Sub-marker** | 補足ですが／ちなみに／なお |
| **Bridge to slide** | 次のスライドをご覧ください／スライドを切り替えます |

---

## ⚠ Tránh

- 言わずに3 luận cứ liên tục → audience đếm sai
- Quá nhiều markers ("まず...そして...それから...そして...") → cảm giác list lê thê
- Marker không nhất quán (まず...次に...そして3つ目) → audience confused
- Section transition bỏ qua → audience giật mình "ủa đang ở đâu"

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 論理マーカー | ろんりマーカー | Logical marker |
| 続いて | つづいて | Tiếp theo |
| まとめる | まとめる | Tổng kết / gói lại |
| 補足 | ほそく | Bổ sung / supplement |
| 高度化 | こうどか | Nâng cao / sophistication |
| 再発予防 | さいはつよぼう | Phòng ngừa tái phát |


# Rule 15 — Data presentation / データ提示

> **Luận điểm.** Chart đúng loại theo data type: **比較=棒グラフ / 推移=折れ線 / 構成比=積み上げ棒 (KHÔNG pie nếu >5項目)**. Source ghi rõ ở footer (出典・期間・N数). Highlight 1 takeaway/chart bằng 1 callout. Audience Nhật scrutinize numbers — accuracy + transparency > beauty.
>
> 比較=棒、推移=折れ線、構成比=積み上げ棒(円グラフは5項目以下のみ)。出典・期間・N数を必ず footer に明記。1チャート1テイクアウェイ。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 04 (視覚階層), rule 17 (比較マトリクス).

---

## Bối cảnh / 場面

Slide 5 của Dũng = chart so sánh Phase 1 vs Phase 2 vs Phase 3 forecast. Dũng dùng pie chart 3D + 7 màu + label 12pt. Hà CTO review.

---

## ❌ Hội thoại XẤU — wrong chart type + missing source

| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、これ**3D pie chart 7色**？比較なのに pie 使うのは間違い。」 |
| **ズン** | 「カラフルで目立つかと…」 |
| **ハーCTO** | 「Pie は構成比5項目以下用。**3 phase の比較は棒グラフ**。あと**出典・期間どこ**？『2024年Q3〜Q4社内集計、N=120』みたいな注記が必要。」 |
| **ズン** | 「あ、入れていません…」 |
| **ハーCTO** | 「松本さんとか大垣さん、データの**期間とサンプル数**必ず聞く。今のままだと『根拠不明』判定。」 |

**Vì sao xấu:** 3D pie + 7 màu = visual noise + perception distortion. Missing source = audience không xác minh được → trust drop. Nhật business cực coi trọng "出典明示".

---

## ✅ Hội thoại TỐT — right chart + clear source

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**水平棒グラフ**に変更【1】、3 phase 比較で `差異率` をX軸に。色は2色のみ(白鷗ブルー＋グレー)、Phase 3 のみアクセント。」 |
| **ハーCTO** | 「いい。Footer は？」 |
| **ズン** | 「**『出典: 2024年Q3〜Q4 弊社運用ログ集計、対象SKU=120、月次平均』** と入れました【2】。コールアウトは『**Phase 2 で64%削減、Phase 3 で90%削減見込み**』の1つだけ。」 |
| **ハーCTO** | 「Perfect。1 chart 1 takeaway は鉄則。複数 callout は noise。」 |

📝 **Ghi chú:**
- 【1】**Chart type 選択** — 比較=棒(横/縦), 推移=折れ線, 構成比=積み上げ棒/pie(≤5項目), 相関=散布図, 順位=横棒.
- 【2】**Footer source format** — 出典 + 期間 + N数 (sample size) の3点 minimum. 「弊社運用ログ」 / 「経済産業省2024白書」など.

---

## 🎯 Câu chốt

> **「Chart type は data type で決まる。Footer に出典・期間・N数。1 chart 1 takeaway。」**
>
> *Loại chart theo loại data. Footer: nguồn / kỳ / N. Mỗi chart 1 takeaway.*

---

## 📐 Chart Type Decision

| Data type | ✅ Chart | ❌ Avoid |
|-----------|----------|---------|
| 比較 (cùng metric, khác đối tượng) | 横棒 / 縦棒 | Pie, line |
| 推移 (over time) | 折れ線 | Pie, scatter |
| 構成比 (≤5項目) | Pie / Donut / 積み上げ棒 | 3D pie |
| 構成比 (>5項目) | 横棒 + % label / 積み上げ棒 | Pie |
| 相関 | 散布図 | Pie, line |
| 順位 (Top N) | 横棒 (降順) | Pie |
| 分布 | ヒストグラム / Box plot | Pie |

---

## ⚠ Tránh

- 3D chart bất kỳ → distort perception
- Pie >5 項目 → impossible to compare slices
- Missing source / period / N → "根拠不明" judge
- 7-color rainbow → visual noise
- Multiple callouts on 1 chart → no clear takeaway
- Y軸 cắt cụt (truncated axis) cho dramatic effect → JP audience phát hiện = mất trust

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 棒グラフ | ぼうグラフ | Biểu đồ cột |
| 折れ線グラフ | おれせんグラフ | Biểu đồ đường |
| 円グラフ | えんグラフ | Biểu đồ tròn (pie) |
| 散布図 | さんぷず | Biểu đồ phân tán |
| 出典 | しゅってん | Nguồn |
| 集計 | しゅうけい | Tổng hợp số liệu |
| 注記 | ちゅうき | Chú thích |
| 差異率 | さいりつ | Tỷ lệ sai lệch |


# Rule 16 — Demo flow / デモの流れ

> **Luận điểm.** Demo trong pitch ≠ feature tour. Cấu trúc 4-step: **Setup (誰が何をしようとしている、30s) → User journey (主操作、2分) → Key moment (決め手、30s) → Recap (何が起きたか、30s)**. Tổng 3-4 phút. Tránh "全機能ツアー" — chỉ show flow giải pain.
>
> デモ4ステップ: Setup→User journey→Key moment→Recap。3-4分以内。全機能ツアーは禁止、痛み解消の1フローだけ。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 07 (Plan B), rule 31 (技術トラブル).

---

## Bối cảnh / 場面

Tuấn (tech lead) sẽ chạy demo. Tuấn instinct là show toàn bộ feature menu (engineer mindset). Dũng coach trước rehearsal cuối.

---

## ❌ Hội thoại XẤU — feature tour

*rehearsal*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「では画面紹介します。これがダッシュボード、上に検索、左にメニュー、右にカード一覧、下にフッター…」 |
| **ズン** | 「兄さん、それ**ツアーガイド**になってる。客は**機能名を聞きに来てない**。在庫差異が解消する flow を見せたい。」 |
| **トゥアン** | 「えっと…じゃあどう？」 |
| **ズン** | 「**4ステップ**でやろう。Setup→User journey→Key moment→Recap。3分で。」 |

**Vì sao xấu:** Feature tour = engineer mindset, KHÔNG phải buyer mindset. Buyer hỏi "giải bài toán em không?" not "menu chỗ nào?". Khách Nhật phật ý vì cảm thấy "demo không tôn trọng pain mình".

---

## ✅ Hội thoại TỐT — 4-step storyline

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「**Setup**: 倉庫担当の田村さんが、季節商品の在庫差異に気づきました【1】。**User journey**: ダッシュボードでアラートを確認、原因SKUを drill-down、修正案を承認。**Key moment**【2】: 通常2時間の作業が**3分で完了**。**Recap**: 季節商品でも差異が month-end前 に検出・修正される。」 |
| **ズン** | 「Perfect。**ナレーションは私**【3】、操作はトゥアンが、で行きましょう。」 |
| **トゥアン** | 「了解。Key moment で2秒 pause 入れる？聴衆に効果実感させる用に。」 |
| **ズン** | 「いいアイデア。『**ここがポイントです**』って一言入れて、2秒間。」 |

📝 **Ghi chú:**
- 【1】**Setup =「人物 + 状況 + 目的」** — Persona名 (田村さん) を入れると immersion 強. 名前なし demo は弱い.
- 【2】**Key moment =「pain解消の瞬間」** — "通常X → 今Y" 数字対比. 1 demo 1 key moment.
- 【3】**「ナレーションは私」** — Co-presenter 役割分担. 操作担当 と narrator 分けると flow smooth. Sách 03 rule 32 cross-ref.

---

## 🎯 Câu chốt

> **「Setup → User journey → Key moment → Recap。3-4分。Persona 名前あり、Key moment は数字対比、ナレ＋操作は分担。」**
>
> *4 bước, 3-4 phút. Persona có tên, key moment có số đối chiếu, narrator + thao tác chia hai người.*

---

## 📐 Demo Script Template (per scenario)

```
【Setup】(30秒)
- 主人公: 〇〇さん (役職・部門)
- 状況: 〇〇という業務課題に直面
- 目的: 〇〇を達成したい

【User Journey】(2分)
- ステップ1: 画面〇〇でログイン → 〇〇を確認
- ステップ2: 〇〇を選択 → 〇〇を実行
- ステップ3: 結果が画面に反映 → 承認

【Key Moment】(30秒)
- 通常〇〇分かかる作業が、〇〇分で完了
- (2秒 pause + 「ここがポイントです」)

【Recap】(30秒)
- 「結果として、〇〇という効果が得られます」
- 元の課題への対応を再確認
- 次スライドへ繋ぐ: 「では、料金とスケジュールに移ります」
```

---

## ⚠ Tránh

- Feature tour ("メニューがここに、ボタンがここに")
- Persona không tên / không context — flow tan loãng
- Demo > 5 phút — audience zone out
- Live API call without offline backup (xem rule 07)
- Recap thiếu → audience không nắm "đã được gì"
- Co-presenter improv → tech term ngược / thiếu sync

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ナレーション | nareeshon | Narration / lồng tiếng |
| 操作 | そうさ | Thao tác |
| 承認 | しょうにん | Phê duyệt |
| 検出 | けんしゅつ | Phát hiện |
| 倉庫担当 | そうこたんとう | Phụ trách kho |
| 効果実感 | こうかじっかん | Cảm nhận hiệu quả |
| 対比 | たいひ | Đối chiếu |


# Rule 17 — So sánh phương án (matrix) / 比較マトリクス

> **Luận điểm.** Show **3 option** (A/B/C), KHÔNG phải 5+. Cấu trúc: hàng = tiêu chí (cost / time / risk / impact), cột = option. Mỗi cell có dữ liệu **đo lường được** (số, ◎○△×), không phải adjective ("いい" / "悪い"). Cuối có **dòng "弊社推奨"** chỉ 1 option **+ lý do 1 câu**.
>
> 比較マトリクスは3案 (A/B/C) まで。行=評価軸、列=案。セルは数字 or ◎○△×。最後に「弊社推奨」を1案＋1文の理由。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 19 (価格), rule 20 (リスク).

---

## Bối cảnh / 場面

Slide so sánh "Phase 3 のスコープ A=最小 / B=中規模 / C=フル". Dũng làm matrix 5 option × 8 tiêu chí = nhồi nhét. Hà CTO yêu cầu thu lại.

---

## ❌ Hội thoại XẤU — 5 options × 8 criteria

| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「**5案 × 8軸 = 40 cell**？スライド1枚で見せられない。客は決められない。」 |
| **ズン** | 「全部見せれば客が選べると思って…」 |
| **ハーCTO** | 「**選択肢が多いと選べないのが人間**【choice paradox】。**3案に絞って、推奨を明示**。客に『考える』労力じゃなくて『決める』労力を割いてもらう。」 |
| **ズン** | 「あ…はい、絞ります。」 |

**Vì sao xấu:** Choice paradox — 5 option = decision fatigue → khách defer decision. Pitch goal là DECIDE, không phải SHOW. 8 tiêu chí = audience không track nổi.

---

## ✅ Hội thoại TỐT — 3 option × 4 criteria + 推奨

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**3案 × 4軸**に絞り込みました【1】。軸: 投資額／期間／差異率改善／運用負荷。セルは数字と◎○△×。」 |
| **ハーCTO** | 「いいね。推奨は？」 |
| **ズン** | 「**最下行に『弊社推奨: B案』** + 1文理由【2】を入れました。『投資額対効果が最も高く、運用負荷も中程度のため』。」 |
| **ハーCTO** | 「Perfect。客は『B案で進めましょう』と言いやすい。**推奨なしの matrix は責任放棄**に見える。」 |

📝 **Ghi chú:**
- 【1】**3 × 4 = 12 cell** — 認知負荷の上限ライン. それ以上は別スライド.
- 【2】**「弊社推奨」 + 1文理由** — Vendor の責任明示. JP business は "推奨なし" を 「責任放棄」 と判断.

---

## 🎯 Câu chốt

> **「3案 × 4軸 = 12セル。セルは数字 or ◎○△×。最後に弊社推奨を1案 + 1文理由。」**
>
> *3 phương án, 4 tiêu chí. Cell có số / ký hiệu. Cuối có "khuyến nghị bên em" + 1 câu lý do.*

---

## 📐 Comparison Matrix Template

| 評価軸 | 案A (最小) | 案B (中規模) | 案C (フル) |
|-------|-----------|-------------|-----------|
| 投資額 | 〇〇万円 | 〇〇万円 | 〇〇万円 |
| 期間 | 〇ヶ月 | 〇ヶ月 | 〇ヶ月 |
| 差異率改善見込み | △ 1.0% | ◎ 0.3% | ◎ 0.2% |
| 運用負荷 | ◎ 低 | ○ 中 | △ 高 |
| **弊社推奨** | | **✅ B案** | |

**推奨理由**: 「投資額対効果が最も高く、運用負荷も中程度のため」

---

## ⚠ Tránh

- 5+ options → choice paradox
- 7+ criteria → cognitive overload
- Adjective cells ("いい" / "高い") → subjective
- Không có 弊社推奨 → "責任放棄" perception
- Recommend 案 đắt nhất → "vendor lobby" nghi ngờ. Recommend phải defendable
- 全部 ◎ ở cột推奨 → fake / không tin

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 比較マトリクス | ひかくマトリクス | Comparison matrix |
| 評価軸 | ひょうかじく | Tiêu chí đánh giá |
| 推奨 | すいしょう | Khuyến nghị |
| 運用負荷 | うんようふか | Tải vận hành |
| 投資額対効果 | とうしがくたいこうか | Hiệu quả trên đầu tư |
| 責任放棄 | せきにんほうき | Bỏ trách nhiệm |
| 絞り込む | しぼりこむ | Thu hẹp lại |


# Rule 18 — Customer voice / case study / 顧客の声・事例

> **Luận điểm.** Testimonial slide cần **3 yếu tố**: ① **Situation** (khách là ai + bài toán), ② **Result** (số liệu cụ thể), ③ **Quote** (1 câu trực tiếp + tên + chức vụ). Logo khách cần permission. Testimonial **giấu tên** ("某大手物流") = trust thấp dramatic. Quote phải **có số** trong đó.
>
> 顧客事例は3要素: 状況→結果(数字)→引用(氏名・役職付き)。匿名事例は信頼が下がる。引用文には数字を含める。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 11 (フック), rule 15 (データ).

---

## Bối cảnh / 場面

Slide 7 — case study cũ Phase 1/Phase 2. Linh giúp Dũng draft. Linh viết kiểu marketing copy ("お客様から大変ご好評をいただいております"). Dũng coach.

---

## ❌ Hội thoại XẤU — vague + anonymous

*draft show*

| Speaker | Câu |
|---------|-----|
| **リン** | 「『**某大手物流様**から大変ご好評をいただいております。在庫管理が**改善し、業務効率が向上**しました』としました！」 |
| **ズン** | 「うーん、**匿名 + 形容詞**だと客は信じない。『某大手物流』ってどこ？知らない。**改善**って何%？分からない。」 |
| **リン** | 「具体名出すには許可が…」 |
| **ズン** | 「許可取りに行こう。Phase 1 のお客様、**山田倉庫様**は事例公開OK のはず。**実名 + 数字 + 引用**の3点が揃って初めて testimonial。」 |

**Vì sao xấu:** 匿名 + 形容詞 = "marketing fluff". Khách Nhật scrutinize: "vendor có dám nêu tên? Có số cụ thể không?". 「某」 prefix particularly suspicious.

---

## ✅ Hội thoại TỐT — name + number + quote

*revised*

| Speaker | Câu |
|---------|-----|
| **リン** | 「**山田倉庫株式会社様** (許可取得済)。Phase 1 で在庫差異 **3.2%→0.8%**(75%削減)【1】。引用: **『月末締めの残業が月20時間→3時間に減りました』** 物流部 山田太郎部長【2】。」 |
| **ズン** | 「Perfect。引用に**数字**入っているのが効く。聴衆は『山田部長の声』としてイメージできる。」 |
| **リン** | 「ロゴも入れていいですか？」 |
| **ズン** | 「ロゴ permission も別途確認【3】。OK ならロゴ＋写真(本人 OK あれば)入れる。NG なら社名のみ。」 |

📝 **Ghi chú:**
- 【1】**「3.2%→0.8% (75%削減)」** — Before/after + % 改善 のセット. 1つだけ → 弱い.
- 【2】**「氏名 + 役職 + 部門」** — Quote は 信頼の3点セット. 「ある担当者様」は弱い.
- 【3】**Logo permission** — Quote permission ≠ logo permission. 別途取得.

---

## 🎯 Câu chốt

> **「実名 + 数字 (before/after %) + 引用 (氏名・役職付き)。匿名 testimonial は load cao 0。」**
>
> *Tên thật + số (before/after + %) + quote (có tên + chức vụ). Anonymous testimonial = trust 0.*

---

## 📐 Testimonial Slide Format

```
【スライド構成】

タイトル: 【顧客事例】〇〇様 (業界・規模)

■ 状況 (Before)
- 課題: 〇〇 (1文)
- 数字: 〇〇 (例: 在庫差異3.2%、月末残業20時間)

■ 結果 (After)
- 改善: 〇〇 → 〇〇 (例: 0.8%、3時間)
- 効果: 〇〇% 削減 / 〇〇% 改善

■ お客様の声 (Quote)
「〇〇 (具体的体験) + 〇〇 (数字)」
  — 〇〇株式会社 〇〇部 〇〇 〇〇 部長

[ロゴ (permission取得済)]
```

---

## ⚠ Tránh

- 「某大手」「ある〇〇」 — anonymous = trust 0
- "改善" "向上" "好評" — adjective không phải dữ liệu
- Quote không có speaker name → "marketing fake" 怪しい
- Logo dùng without permission → legal risk + lộ amateur
- Testimonial cũ > 3 năm → "最近のはないの？" hoài nghi
- Nhiều testimonial 1 slide (5-6 logo wall) → từng cái mất trọng lượng

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 顧客の声 | こきゃくのこえ | Customer voice / testimonial |
| 事例 | じれい | Case study |
| 引用 | いんよう | Trích dẫn |
| 匿名 | とくめい | Ẩn danh |
| 月末締め | げつまつじめ | Chốt cuối tháng |
| 残業 | ざんぎょう | Tăng ca |
| 削減 | さくげん | Cắt giảm |
| 大手 | おおて | Lớn / major |


# Rule 19 — Pricing slide tactful / 価格スライドの作り方

> **Luận điểm.** Cấu trúc 3 phần: **(1) Anchor** (industry / Phase 2 cost làm reference), **(2) Tier** (3 option matrix với mức giá), **(3) ROI** (投資回収期間 + cost saving数字). KHÔNG hiện giá trần trụi không context. Khách Nhật hỏi giá khó nhất — chuẩn bị **3 phản biện** cho object "高い".
>
> 価格スライドは3部構成: アンカー(基準値) → ティア(3案) → ROI(回収期間)。素の数字だけは出さない。「高い」反論への3答を準備。
>
> **Liên quan:** rule 17 (比較マトリクス), rule 20 (リスク), sách 03 rule 27 (根拠反論).

---

## Bối cảnh / 場面

Slide 8 = pricing. Trong rehearsal, Hà CTO simulate Ōgaki ("anh Ōgaki sẽ chắc chắn nói 高い") — Dũng phải có readiness.

---

## ❌ Hội thoại XẤU — bare number + no anchor

*slide opens · 役: 大垣*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Phase 3 のお見積りは **3,200万円**でございます。」 |
| **ハーCTO** | 「**高いね**。Phase 2 は1,800万だったよね？」 |
| **ズン** | 「えっと…機能が増えていますので…」 |
| **ハーCTO** | 「『機能が増えた』だけだと弱い。**ROI**は？投資回収期間？削減効果の金額換算は？答え3つ用意していないと、ここで折れるよ。」 |

**Vì sao xấu:** Bare number không có anchor → audience auto-compare với cái biết (Phase 2 = 1,800万). Không có ROI → giá nghe chỉ "cost". Không có "高い" rebuttal → Dũng bị stutter.

---

## ✅ Hội thoại TỐT — anchor + tier + ROI

*役: 大垣*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「価格の前に**3点ご説明**します。**(1) Anchor**: 業界平均 1案件4,000万、Phase 2 は1,800万でした【1】。**(2) Tier**: A案2,400万 / B案3,200万(推奨) / C案4,800万。**(3) ROI**: B案で**年間1.2億円のロス削減**【2】見込み、**8ヶ月で投資回収**。」 |
| **ハーCTO** | 「Phase 2 比で約2倍だね、なぜ？」 |
| **ズン** | 「3点理由がございます【3】。①リアルタイム同期インフラの新規構築、②機械学習アラートの実装、③24/7サポート3年付帯。Phase 2 は基本機能のみでした。」 |
| **ハーCTO** | 「うん、**3点回答**で説得力出る。Reherearsal 通った。本番もこの調子で。」 |

📝 **Ghi chú:**
- 【1】**Anchor** — 業界平均 + 自社過去 cùng đặt → "B案 3,200万 = bargain in context".
- 【2】**ROI = cost saving / pricing** — 年間ロス削減 ÷ 投資 = 回収月数. "1.2億÷3,200万 ≈ 8ヶ月".
- 【3】**「3点理由」** — 「高い」 rebuttal ALWAYS 3点 structure. Sách 03 rule 27 cross-ref.

---

## 🎯 Câu chốt

> **「価格の前にAnchor → Tier → ROI 3点。「高い」反論には3点理由で答える。」**
>
> *Trước số phải có Anchor → Tier → ROI. Phản biện "高い" cần sẵn 3 điểm lý do.*

---

## 📐 価格スライド3パート構成

```
■ Part 1 — Anchor (基準)
   ・業界平均: 〇〇万円
   ・弊社過去事例 (Phase 2 等): 〇〇万円
   ・他社相見積もり想定レンジ: 〇〇〜〇〇万円

■ Part 2 — Tier (3案)
   | 軸 | A案(最小) | B案(推奨) | C案(フル) |
   |---|---|---|---|
   | 価格 | 〇〇万 | 〇〇万 | 〇〇万 |
   | 機能 | 〇〇 | 〇〇 | 〇〇 |
   | サポート | 〇〇 | 〇〇 | 〇〇 |

■ Part 3 — ROI
   ・削減効果: 年間 〇〇万円
   ・投資回収期間: 〇〇ヶ月
   ・3年累計効果: 〇〇万円 (投資の〇倍)
```

---

## 「高い」反論への3答テンプレ

```
「ありがとうございます、3点ご説明させていただきます。
 (1) ① 〇〇 (新規インフラ / 機能拡張 等)
 (2) ② 〇〇 (運用・保守・サポート)
 (3) ③ 〇〇 (リスク・将来拡張性)
 〇〇までの追加投資が、長期的に〇〇のメリットを生みます。」
```

---

## ⚠ Tránh

- Bare number first → no anchor = sticker shock
- 1 tier only → audience cảm thấy "take it or leave it"
- ROI 抜け → "それ cost じゃなくて investment" nói không thuyết phục
- "高い" rebuttal không chuẩn bị → freeze on stage
- 値引き 即答 ("じゃあ 100万引きます") → "vendor giá phù phép"

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 見積り | みつもり | Báo giá |
| 投資回収 | とうしかいしゅう | Hoàn vốn |
| 削減効果 | さくげんこうか | Hiệu quả cắt giảm |
| 業界平均 | ぎょうかいへいきん | Trung bình ngành |
| 反論 | はんろん | Phản biện |
| 付帯 | ふたい | Đi kèm |
| 累計 | るいけい | Cộng dồn |
| 折れる | おれる | Bị bẻ / chùn (đàm phán) |


# Rule 20 — Risk & mitigation / リスクと対策

> **Luận điểm.** Show **3-5 risk** với **対策 cụ thể**. Vendor che giấu rủi ro = JP business cảnh báo lớn nhất. Cấu trúc table: **リスク** | **発生確率 (高/中/低)** | **影響度** | **対策**. Tránh "リスクはございません" — đó là lie + amateur signal. "リスク0" = "vendor未経験".
>
> 3-5 リスクを発生確率＋影響度＋対策付きで開示。『リスクなし』はlieであり信頼の決定的損失。「気づいてない vendor」と判断される。
>
> **Liên quan:** rule 17 (比較マトリクス), rule 19 (価格), rule 23 (難しい質問).

---

## Bối cảnh / 場面

Slide 9 = risk slide. Linh draft → ghi "リスクは特にございません" theo bản năng "đừng làm khách lo". Dũng correct ngay.

---

## ❌ Hội thoại XẤU — "リスクなし"

*slide draft*

| Speaker | Câu |
|---------|-----|
| **リン** | 「**リスク特になし**、安心してご利用いただけます！と書きました。」 |
| **ズン** | 「ストップ。それ**信頼の自殺行為**。**プロジェクトに『リスクなし』はあり得ない**。書いた瞬間、客は『この vendor 経験ない or 嘘ついてる』のどちらかと判断する。」 |
| **リン** | 「えっ、客が嫌がると思って…」 |
| **ズン** | 「**逆**。リスクを**正直に出す + 対策セット**で出す方が信頼される。**3-5個 + 各対策**が標準。」 |

**Vì sao xấu:** "リスクなし" = signal "未経験 / 嘘". Khách Nhật seasoned biết プロジェクトに必ずリスクある — vendor che giấu = "thiếu honesty / capability". Trust dropped immediate.

---

## ✅ Hội thoại TỐT — 4 risks + concrete mitigation

*revised*

| Speaker | Câu |
|---------|-----|
| **リン** | 「**4リスク**を出しました【1】。①インフラ移行 (確率中・影響大) → 対策: 旧環境 parallel 3ヶ月。②データ移行欠損 (中・大) → リコンサイル日次監査。③KPI未達 (低・中) → 月次見直し再計画権利。④保守要員依存 (低・中) → 2名以上の training。」 |
| **ズン** | 「Perfect。**確率と影響を別評価**してるのが良い【2】。確率低 + 影響大は別 column で highlight。」 |
| **リン** | 「**赤色マーク**は『確率高×影響大』のセル？」 |
| **ズン** | 「うん、**赤は『要警戒』マーク専用**【3】(rule 05 cross-ref)。ここなら赤の使い方として適切。」 |

📝 **Ghi chú:**
- 【1】**4-5 リスク** — 3個少ない、6個以上希薄化. 4-5個が sweet spot.
- 【2】**確率 × 影響** — 2軸 evaluation. 「確率低 + 影響大」 が一番見落とされがちで重要.
- 【3】**「赤は要警戒専用」** — Rule 05 (色彩) との整合. 装飾の赤は禁止だが warning の赤は OK.

---

## 🎯 Câu chốt

> **「3-5リスク × 確率 × 影響 × 対策。『リスクなし』は信頼の自殺。」**
>
> *3-5 rủi ro × xác suất × tác động × đối sách. "Không rủi ro" = tự sát trust.*

---

## 📐 Risk Matrix Template

| # | リスク | 発生確率 | 影響度 | 対策 |
|---|-------|---------|-------|------|
| 1 | インフラ移行失敗 | 中 | 大 | 旧環境 parallel 3ヶ月 |
| 2 | データ移行欠損 | 中 | 大 | 日次リコンサイル監査 |
| 3 | KPI未達 | 低 | 中 | 月次見直し + 再計画権利 |
| 4 | 保守要員依存 | 低 | 中 | 2名以上の cross-training |
| 5 | 季節商品再発 | 中 | 中 | ML model 月次再学習 |

---

## ⚠ Tránh

- "リスクなし" / "ご安心ください" → trust suicide
- Risk vague ("色々あります") → useless
- 対策 chỉ có 1 risk → looks selective
- 対策 vague ("適切に対応") → no commitment
- 6+ risks → audience overload
- Risk gồm "ベンダー側のリスク" only → cần balance + bao gồm "クライアント側" (e.g. data quality, decision延期)

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 発生確率 | はっせいかくりつ | Xác suất xảy ra |
| 影響度 | えいきょうど | Mức độ ảnh hưởng |
| 対策 | たいさく | Đối sách |
| 監査 | かんさ | Kiểm toán / audit |
| 並行 (parallel) | へいこう | Song song |
| 移行 | いこう | Di chuyển / migrate |
| 欠損 | けっそん | Thiếu / mất mát |
| 要警戒 | ようけいかい | Cần cảnh giác |


# Rule 21 — Roadmap visualization / ロードマップ可視化

> **Luận điểm.** Roadmap = horizontal timeline với **3-4 phase × milestones × owner**. Mỗi milestone phải có ① **日付** (年月), ② **アウトプット** (成果物), ③ **責任者** (cty名 + 名前). Tránh "TBD" — show estimate confident. **マイルストーン記号** (◆ 重要 / ● 通常 / ○ 任意) cho hierarchy.
>
> ロードマップは horizontal タイムライン×3-4フェーズ×マイルストーン×責任者。各マイルストーンに 日付＋成果物＋責任者の3点必須。「TBD」 は信頼を下げる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 17 (比較マトリクス), rule 26 (closing).

---

## Bối cảnh / 場面

Slide 10 = roadmap. Dũng draft đầu — mạch text "Phase 3 は2026年5月から12月まで実施" → flat, không có milestone visual. Tuấn yêu cầu visualize.

---

## ❌ Hội thoại XẤU — text-only timeline

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、roadmap がただのテキスト？『5月開始、12月完了』だけ？」 |
| **ズン** | 「文章の方が説明しやすいかと…」 |
| **トゥアン** | 「Roadmap は **visual で見せるもの**。Phase / milestone / owner / 日付 全部入る gantt-style。テキストだと客は **計画があるか半信半疑**。」 |
| **ズン** | 「あ…テンプレート使いますか？」 |

**Vì sao xấu:** Text-only roadmap = "vendor chưa thực sự plan". Khách Nhật scrutinize timeline cực kỳ nghiêm. Visual gantt + milestone marks = "đã thực sự nghĩ tới chi tiết".

---

## ✅ Hội thoại TỐT — gantt + milestones + owner

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Roadmap report テンプレで作りました【1】。**4 phase**: ①要件定義(5/15-6/30) ②設計開発(7/1-9/30) ③テスト(10/1-11/15) ④リリース移行(11/16-12/15)。**マイルストーン**: ◆要件 sign-off (6/30 / 弊社ズン＋御社松本)、◆UAT 完了 (11/15 / 弊社トゥアン＋御社田中) など5点【2】。」 |
| **トゥアン** | 「いいね、各 milestone に **owner ペア**書いてるのが良い【3】。Bottle neck どこ？」 |
| **ズン** | 「**8月の設計レビュー**(設計開発 phase 中盤)。ここで承認遅延すると全体遅れる。**buffer 1週間**を gantt に入れています。」 |
| **トゥアン** | 「Buffer 明示も重要。客は『ありえない』完璧 schedule を信じない。」 |

📝 **Ghi chú:**
- 【1】**Roadmap report テンプレ** — Gantt + milestone table + buffer note.
- 【2】**マイルストーン記号** — ◆ 重要 (sign-off, release) / ● 通常 (review, demo) / ○ 任意 (option).
- 【3】**「owner ペア」** — Vendor + client それぞれ 1名. シングル owner は責任分散できず詰まる.

---

## 🎯 Câu chốt

> **「Gantt 4 phase + 5 milestones × (日付 + 成果物 + owner pair) + buffer。TBD は信頼を下げる。」**
>
> *Gantt 4 phase + 5 milestone × (ngày + output + cặp owner) + buffer. Để TBD là mất trust.*

---

## 📐 Template Roadmap Report (đính kèm — `conversation.json:templates[0]`)

```
【プロジェクト ロードマップ】 (Phase X)

■ Gantt サマリ
                    5月  6月  7月  8月  9月  10月 11月 12月
①要件定義 (15日)    ███
②設計開発 (90日)         ████████████
③テスト (45日)                          ██████
④リリース移行(30日)                              ████

■ マイルストーン (◆重要 / ●通常 / ○任意)
| # | 記号 | 日付 | マイルストーン | 成果物 | 責任者 (vendor/client) |
|---|-----|------|--------------|--------|----------------------|
| 1 | ◆ | 6/30 | 要件定義 sign-off | 要件定義書 v1.0 | ズン / 松本 |
| 2 | ● | 8/15 | 設計レビュー | 設計書 v1.0 | トゥアン / 田中 |
| 3 | ● | 9/30 | コード完了 (feature freeze) | β版ビルド | トゥアン / 田中 |
| 4 | ◆ | 11/15 | UAT 完了 | UATレポート | トゥアン / 田中 |
| 5 | ◆ | 12/15 | 本番リリース | リリースノート | ズン / 松本 |

■ Buffer
- 設計レビュー後 1週間 (8/16-8/22) - スケジュール遅延吸収
- UAT 期間に 1週間予備 (11/8-11/15)

■ 前提条件 (Critical assumption)
- 御社のテストデータ提供は 9/15 までに
- セキュリティ監査は弊社主導で 10/1-10/15 実施
- 本番環境アクセス権限は 11/16 までに付与

■ Risk → 対策
- 要件変更時: change control プロセス (rule 20参照)
- 移行失敗時: 旧環境 parallel 3ヶ月
```

---

## ⚠ Tránh

- "TBD" / "後日連絡" trên milestone → "未準備" perception
- Single owner trên milestone → bottleneck risk
- Buffer 0 → audience không tin schedule realistic
- Milestone tất cả ◆ → hierarchy tan loãng
- Roadmap > 1 năm trên 1 slide → quá rộng, chia 2 slide
- 前提条件 (assumptions) bỏ qua → khách sau này dispute "hứa rồi"

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ロードマップ | roodomappu | Roadmap |
| マイルストーン | mairusutoon | Milestone |
| 成果物 | せいかぶつ | Output / sản phẩm |
| 要件定義 | ようけんていぎ | Định nghĩa yêu cầu |
| sign-off | sain offu | Phê duyệt cuối |
| 前提条件 | ぜんていじょうけん | Điều kiện tiên quyết |
| 移行 | いこう | Migrate |
| 半信半疑 | はんしんはんぎ | Bán tín bán nghi |



---

# Phần IV — Q&A + Closing / 質疑応答・クロージング

# Rule 22 — Mời Q&A formal / Q&A導入

> **Luận điểm.** Câu mở Q&A phải **formal + invite tone**, không phải "Có câu hỏi không?" cộc lốc. Pattern chuẩn: 「ご質問・ご意見をいただけますでしょうか」. Sau câu mời, **chờ 5-7 giây silence** (không lấp). Khách Nhật suy nghĩ kỹ trước khi giơ tay — break silence sớm = mất câu hỏi tốt.
>
> Q&A導入は formal + 招待トーン。「ご質問はありますか」は素っ気ない。「ご質問・ご意見をいただけますでしょうか」が標準。提示後5-7秒沈黙を待つ — 日本人は熟考してから挙手する。
>
> **Liên quan:** rule 23 (LASR), rule 25 (hostile Q), rule 26 (closing).

---

## Bối cảnh / 場面

Cuối pitch Phase 3 cho 大垣 + 松本 + 田中. Dũng vừa kết thúc body, chuyển sang Q&A. Chị Hương ngồi observer hàng cuối.

---

## ❌ Hội thoại XẤU — cụt + lấp silence

*slide cuối · 2秒沈黙 · 後で松本に小声*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「以上です。質問ありますか？」 |
|  | *(Dũng nervous, lấp ngay)* |
| **ズン** | 「ないですか？じゃあ次のステップに行きますね。」 |
| **大垣** | 「…質問する間もないな。」 |

**Vì sao xấu:** "質問ありますか" cộc + casual. 2 giây đã lấp = không cho khách Nhật suy nghĩ. Khách trong lòng có câu nhưng chưa kịp formulate → presenter chạy mất → impression "không welcome questions".

---

## ✅ Hội thoại TỐT — formal invite + chờ silence

*slide Q&A · 7秒沈黙、Dũng giữ eye contact với 3 người, không lấp · 挙手*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「以上で本論を終わらせていただきます。**ご質問・ご意見をいただけますでしょうか**【1】。**どんな点でも構いません**。」 |
| 【2】 |  |
| **松本** | 「では、Phase 2 との連携ポイントについて確認させてください…」 |
| **ズン** | 「松本様、ありがとうございます。Phase 2 連携の件ですね、〜」 |

📝 **Ghi chú:**
- 【1】**「ご質問・ご意見をいただけますでしょうか」** — formal invite chuẩn. "ご意見" mở rộng phạm vi (không chỉ question, cả opinion). 「いただけますでしょうか」 = humble request, formal nhất.
- 【2】**7秒沈黙** — quy tắc bất di bất dịch. Đếm thầm 1-Mississippi-2-Mississippi... Khách Nhật cần thời gian formulate câu hỏi politely.

---

## 🎯 Câu chốt

> **「ご質問・ご意見をいただけますでしょうか。どんな点でも構いません。」+ 7秒沈黙。**
>
> *Câu mời formal + mở rộng "ご意見" + 7 giây silence. Đừng lấp.*

---

## ⚠ Tránh

- "質問ありますか" cộc → casual, không welcome
- Lấp silence < 5 giây → mất câu hỏi tốt
- "何かありますか？" mơ hồ → khách không biết hỏi cái gì
- Chỉ nhìn 1 người khi mời → người khác không cảm thấy được mời
- "じゃあ無いみたいなので…" cắt quá sớm → impression né tránh Q&A

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 質疑応答 | しつぎおうとう | Q&A |
| 沈黙 | ちんもく | Silence |
| 挙手 | きょしゅ | Giơ tay |
| 構いません | かまいません | Không sao / không vấn đề |
| 承る | うけたまわる | (Khiêm) tiếp nhận, lắng nghe |
| ご意見 | ごいけん | Ý kiến (tôn kính) |


# Rule 23 — Trả lời câu hỏi khó / 難しい質問への対応

> **Luận điểm.** Câu khó không trả lời theo bản năng → dùng **LASR**: **L**isten (nghe hết, không cắt) → **A**cknowledge (xác nhận đã hiểu) → **S**olve (trả lời) → **R**edirect (chốt + chuyển). Mỗi bước có pattern Nhật cụ thể. Bỏ A = trả lời lệch ý; bỏ R = lê thê → time over.
>
> 難しい質問は LASR で対応。L=傾聴、A=「ご質問の趣旨は〜と理解しました」、S=回答、R=「他にご質問がございましたら〜」。Aを飛ばすと的外れ、Rを飛ばすと長引く。
>
> **Liên quan:** rule 22 (Q&A 開始), rule 24 (持ち帰り), rule 25 (hostile).

---

## Bối cảnh / 場面

Q&A pitch Phase 3. Anh Matsumoto hỏi câu phức tạp 2 vế: "scope phase 3 có chồng lên phase 2 không + nếu chồng thì xử lý đâu?"

---

## ❌ Hội thoại XẤU — bỏ A + bỏ R

*L1 chưa kết, đã trả lời · lê thê 2 phút · 困惑*

| Speaker | Câu |
|---------|-----|
| **松本** | 「Phase 3 のスコープは Phase 2 と重複しないか？重複したら誰が調整するのか？」 |
| **ズン** | 「えっと、重複しないと思います。設計の段階で…あ、いや、重複する部分は…うーんと、トゥアンさんが…」 |
| **ズン** | 「…と、まあ、そんな感じです。」 |
| **松本** | 「…結局どっちが調整するんでしょうか？」 |

**Vì sao xấu:** Cắt ngang câu hỏi (chưa nghe vế 2). Không acknowledge → trả lời lệch. Không redirect → 2 phút rambling, khách vẫn không hiểu.

---

## ✅ Hội thoại TỐT — LASR đầy đủ

*待つまで完了 — L*

| Speaker | Câu |
|---------|-----|
| **松本** | 「Phase 3 のスコープは Phase 2 と重複しないか？重複したら誰が調整するのか？」 |
| **ズン** | 「**ご質問ありがとうございます**【1】。**ご質問の趣旨は『Phase 2 / 3 のスコープ重複の有無』と『重複時の調整責任者』の2点と理解しました**【2】、よろしいでしょうか？」 — A |
| **松本** | 「はい、その通りです。」 |
| **ズン** | 「**まず1点目**、スライド12の比較表のとおり重複は **3機能** ございます。**2点目**、調整責任者は **弊社トゥアン＋御社田中様の合同レビュー**で月次調整いたします。」 — S 【3】 |
| **ズン** | 「**以上、お答えできておりますでしょうか**【4】？他にご不明な点がございましたら、続けてどうぞ。」 — R |
| **松本** | 「明確です。ありがとうございます。」 |

📝 **Ghi chú:**
- 【1】**「ご質問ありがとうございます」** — buffer phrase, mua 1 giây để format câu trả lời.
- 【2】**「ご質問の趣旨は〜と理解しました、よろしいでしょうか」** — A step. Reframe câu hỏi → khách confirm → tránh trả lời lệch.
- 【3】**「まず1点目／2点目」** — S step có cấu trúc số. Câu khó nhiều vế phải break thành numbered.
- 【4】**「お答えできておりますでしょうか」** — R step. Verify đã trả lời đúng → nhường turn về.

---

## 🎯 Câu chốt

> **L → A 「ご質問の趣旨は〜と理解しました」 → S 「1点目／2点目」 → R 「お答えできておりますでしょうか」**
>
> *Listen → Acknowledge với reframe → Solve numbered → Redirect verify.*

---

## ⚠ Tránh

- Cắt câu hỏi giữa chừng → mất vế 2/3
- Bỏ A step → trả lời lệch khi câu hỏi 2 nghĩa
- Bắt đầu bằng "えっと…うーんと…" rambling → mất authority
- Bỏ R step → time over + khách không biết khi nào hết turn
- "たぶん…と思います" mơ hồ → chuyển sang rule 24 (持ち帰り) tử tế thay vì đoán

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 趣旨 | しゅし | Ý chính / chủ đích |
| 重複 | ちょうふく | Trùng / overlap |
| 調整 | ちょうせい | Điều phối |
| 責任者 | せきにんしゃ | Người phụ trách |
| 傾聴 | けいちょう | Lắng nghe (active) |
| 月次 | げつじ | Hàng tháng |
| 不明な点 | ふめいなてん | Điểm chưa rõ |


# Rule 24 — Mang về xem xét cho câu chưa biết / 不明事項の持ち帰り

> **Luận điểm.** Câu hỏi không biết → **đừng đoán bừa**. Pattern Nhật chuẩn: 「申し訳ございません、その点は **持ち帰って確認** させていただきます。**〇日までに** ご回答いたします」. **Bắt buộc deadline cụ thể** + ghi chép tại chỗ + follow up đúng hẹn. Đoán bừa = mất uy tín trầm trọng hơn nói "không biết".
>
> 不明事項は推測せず「持ち帰って確認＋〇日まで回答」が標準。Deadline 必須。Honest 持ち帰り＞いい加減な推測。
>
> **Liên quan:** rule 23 (LASR), rule 28 (follow-up email). Sách 03 rule 35 (gijiroku — biên bản follow up), Sách 04 rule 30 (持ち帰り基本).

---

## Bối cảnh / 場面

Q&A Phase 3. Anh Ōgaki hỏi câu technical chi tiết về protocol API integration với hệ thống legacy của 白鷗. Dũng không nắm depth → 2 lựa chọn: đoán bừa hay 持ち帰り.

---

## ❌ Hội thoại XẤU — đoán bừa + không deadline

*không biết, đoán · impression: không reliable*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「弊社レガシーの SOAP API、Phase 3 で REST に統合できますか？認証は OAuth 2.0 ですが対応可能ですか？」 |
| **ズン** | 「えっと、たぶんできると思います。OAuth 2.0 は標準なので…」 |
| **大垣** | 「『たぶん』ですか？OAuth 2.0 のどのフロー対応ですか？」 |
| **ズン** | 「あ、それは…後で確認します…」 *(không deadline)* |
| **大垣** | 「…分かりました、回答お待ちします。」 |

**Vì sao xấu:** "たぶん" = guess không cơ sở. Khách technical đặt followup → lộ ngay. "後で確認" không deadline = vague promise → khách không biết khi nào có answer → ấn tượng "không reliable".

---

## ✅ Hội thoại TỐT — honest 持ち帰り + deadline + ghi chép

| Speaker | Câu |
|---------|-----|
| **大垣** | 「弊社レガシーの SOAP API、Phase 3 で REST に統合できますか？認証は OAuth 2.0 ですが対応可能ですか？」 |
| **ズン** | 「**ご質問ありがとうございます**。**正直に申し上げますと**、SOAP→REST 統合の technical detail は **私の方で即答できかねます**【1】。」 |
| **ズン** | 「**弊社 CTO ハー** に確認の上、**今週金曜 17時までに** メールで詳細回答させていただきます。**OAuth 2.0 のフロー** も併せて確認いたします【2】。」 — ghi chép vào notebook |
| **ズン** | 「**お時間 3営業日いただいて** よろしいでしょうか？」【3】 |
| **大垣** | 「結構です、お待ちします。技術詳細は持ち帰り了解です。」 |
| **ズン** | 「ありがとうございます。**期限内に必ずご回答いたします**。」 |

📝 **Ghi chú:**
- 【1】**「即答できかねます」** — humble + formal. Tốt hơn "わかりません". 「〜かねます」 = "không thể (do hoàn cảnh)" → polite từ chối.
- 【2】**Deadline cụ thể + ai confirm + format reply** — 3 elements bắt buộc của 持ち帰り. Ghi chép tại chỗ → khách thấy seriousness.
- 【3】**「お時間〇営業日いただいて」** — đề nghị deadline + xin phép. Khách có thể negotiate nhanh hơn nếu urgent.

---

## 🎯 Câu chốt

> **「即答できかねます。〇日までに、〇〇に確認の上、〇〇でご回答いたします。」**
>
> *Honest "không thể trả lời ngay" + deadline + người confirm + format reply.*

---

## ⚠ Tránh

- "たぶん…と思います" đoán bừa → khách probe thêm là vỡ
- "後で確認します" không deadline → vague, ấn tượng không serious
- "わかりません" cộc → unprofessional. Dùng 「即答できかねます」 / 「持ち帰らせていただきます」
- 持ち帰り xong quên follow up → mất uy tín toàn bộ (xem rule 28)
- Hứa deadline không realistic ("明日まで") khi cần check nhiều bên → trễ hẹn còn tệ hơn

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 持ち帰る | もちかえる | Mang về (xem xét) |
| 確認 | かくにん | Xác nhận |
| 即答 | そくとう | Trả lời ngay |
| 〜かねます | - | Không thể (formal) |
| 営業日 | えいぎょうび | Ngày làm việc |
| 期限 | きげん | Hạn |
| 認証 | にんしょう | Xác thực / authentication |
| 統合 | とうごう | Tích hợp / integration |


# Rule 25 — Đối phó câu hostile / 敵対的質問への切り返し

> **Luận điểm.** Câu hostile (challenge giá / nghi ngờ năng lực) → **đừng defensive**. Pattern: **Bridge phrase** trung lập → **reframe** từ challenge sang concern → **answer** trên concern. Không attack lại, không "yes-but" defensive. Bridge "ご指摘の点はもっともでございます" hay "ご懸念の点を共有していただきありがとうございます" — neutralize emotion trước khi trả nội dung.
>
> 敵対的質問は defensive 禁止。Bridge phrase で中和 → 懸念点に reframe → 回答。「ご指摘もっとも」「ご懸念共有ありがとうございます」が王道。
>
> **Liên quan:** rule 23 (LASR), rule 19 (price slide).

---

## Bối cảnh / 場面

Q&A Phase 3. Anh Ōgaki challenge mạnh giá: "Phase 2 đã 800万、giờ Phase 3 lại 1200万 — đắt quá! Cty Việt Nam mà giá Tokyo dev?". Tone direct, có chút aggressive.

---

## ❌ Hội thoại XẤU — defensive + đẩy lại

*defensive · 更に強く*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「Phase 3 で1200万？Phase 2 が800万だったのに 50%増？ベトナム会社で東京開発の値段ですか？」 |
| **ズン** | 「いや、高くないと思います。市場価格と比較して妥当です。」 |
| **大垣** | 「『妥当』ですか。じゃあ他社見積もり持ってきてくれ。」 |
| **ズン** | 「えっと、それはちょっと…」 |

**Vì sao xấu:** "高くない" denial trực diện = đối đầu. Khách càng push back. Không bridge, không reframe → escalate confrontation. Cty Nhật rất ngại confrontation Q&A → impression: presenter thiếu tinh tế.

---

## ✅ Hội thoại TỐT — Bridge → Reframe → Answer

*neutral tone · tone giảm*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「Phase 3 で1200万？Phase 2 が800万だったのに 50%増？ベトナム会社で東京開発の値段ですか？」 |
| **ズン** | 「**ご指摘の点、もっともでございます**【1】。**ご懸念は『価格上昇 50% の妥当性』** と理解しました。」 — Bridge + Reframe |
| **ズン** | 「**結論から申し上げますと**、価格上昇分の内訳は **3点** ございます【2】。」 |
| **ズン** | 「①Phase 3 はスコープが Phase 2 の 1.6倍 (機能数 12→19)、②セキュリティ要件 ISO27001 対応で 工数+15%、③24/7 サポート初年度込み。**スコープ単価で見ますと Phase 2 比 -8%** でございます。詳細はスライド19の比較表のとおりです。」 — Answer numbered |
| **ズン** | 「**もしスコープを Phase 2 と同等に絞れば** 950万まで圧縮可能です。**いずれの方向性をご希望でしょうか**【3】？」 |
| **大垣** | 「…なるほど、スコープ単価で -8% か。比較表をもう一度見せてください。」 |

📝 **Ghi chú:**
- 【1】**「ご指摘の点、もっともでございます」** — bridge phrase王道. KHÔNG agree với content (không công nhận đắt), agree với **việc nêu vấn đề là hợp lý**. Neutralize emotion, không yield ground.
- 【2】**「結論から申し上げますと…3点」** — structured answer ngay sau bridge. Số rõ → khách không thể wave away.
- 【3】**「いずれの方向性をご希望でしょうか」** — flip control về khách. Cho khách lựa chọn (giảm scope vs giữ giá) → khách thấy được respect, không bị "shoved" giá.

---

## 🎯 Câu chốt

> **Bridge 「ご指摘もっとも／ご懸念共有ありがとうございます」 → Reframe 懸念 → Numbered answer → Flip choice 「いずれをご希望でしょうか」.**
>
> *Đừng defensive. Neutralize → reframe sang concern → trả lời có cấu trúc → trao quyền chọn cho khách.*

---

## ⚠ Tránh

- "高くないです" denial trực diện → escalate
- "他社より安いです" so sánh aggressive → khách thấy unprofessional
- "それは誤解です" implicit nói khách sai → mất face khách
- Defensive body language: cánh tay khoanh, lùi lại → readable
- Cãi lý dài → cty Nhật ngại confrontation, càng cãi càng mất impression

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 敵対的 | てきたいてき | Đối nghịch / hostile |
| 切り返す | きりかえす | Đáp trả khéo |
| ご指摘 | ごしてき | Sự chỉ ra (kính ngữ) |
| もっとも | - | Hợp lý / có lý |
| ご懸念 | ごけねん | Mối quan ngại (kính) |
| 妥当性 | だとうせい | Tính hợp lý |
| 内訳 | うちわけ | Phân tích chi tiết |
| 圧縮 | あっしゅく | Nén / cắt giảm |


# Rule 26 — Closing với CTA / クロージング＋CTA

> **Luận điểm.** Closing không phải "ありがとうございました". Phải có 2 phần: **Recap 3 takeaways** (1 phút) + **Call to Action rõ** (next step + owner + deadline). Không có CTA = pitch về "không có gì xảy ra". Khách Nhật rất đề cao "次のステップ明確" như dấu hiệu professional.
>
> クロージングは ① Recap 3点 + ② CTA (next step + owner + deadline)。「ありがとうございました」だけは pitch を opaque にする。
>
> **Liên quan:** rule 13 (time-keeping promise), rule 27 (thank-you slide), rule 28 (follow-up).

---

## Bối cảnh / 場面

Pitch Phase 3 sắp kết thúc. Q&A đã xong. Chuẩn bị closing slide. Khách: 大垣, 松本, 田中.

---

## ❌ Hội thoại XẤU — closing trống rỗng

*slide cuối: "Thank you" · thư ký*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「以上です。本日はお時間いただきありがとうございました。」 |
| **大垣** | 「…で、次は？」 |
| **ズン** | 「あ、それは…後ほどメールで送ります…」 |
| **田中** | 「次回会議の日付は？」 |
| **ズン** | 「えっと、確認して連絡します…」 |

**Vì sao xấu:** Closing không recap → khách quên 60% nội dung. Không CTA → khách không biết phải làm gì tiếp. "後ほどメール" = vague → 田中 phải hỏi explicit thay vì presenter chủ động. Impression: "thiếu plan rõ".

---

## ✅ Hội thoại TỐT — Recap 3 + CTA rõ

*slide "本日のまとめ" · slide "次のステップ"*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では、**本日のまとめ** をさせていただきます【1】。」 |
| **ズン** | 「**3点** ございます。①Phase 3 スコープは **19機能、5/15 開始 / 12/15 リリース**、②価格は **1200万円**(Phase 2 比単価 -8%)、③責任者ペアは **弊社ズン＋御社松本様**でございます。」 — Recap |
| **ズン** | 「**次のステップ** は **3つ** ございます【2】。」 |
| **ズン** | 「①**今週金曜まで** に SOAP 統合詳細回答メール (弊社→御社)、②**5/8 (来週水曜)** にスコープ最終確認会議 (60分・対面)、③**5/15 までに** 契約書サインオフ (両社法務経由)。」 — CTA numbered |
| **ズン** | 「次回会議は **5月8日 14時から白鷗様会議室** で予約させていただきました。**ご都合いかがでしょうか**【3】？」 |
| **大垣** | 「問題ない。5/8 で進めましょう。」 |
| **ズン** | 「ありがとうございます。本日のスライド + 議事メモは **24時間以内に** メールでお送りいたします。本日はお時間頂戴し、誠にありがとうございました。」 |

📝 **Ghi chú:**
- 【1】**「本日のまとめ」** — recap slide phải có heading rõ. Khán giả tự động sharpen attention.
- 【2】**「次のステップは3つ」** — CTA numbered. Mỗi step: action + owner + deadline. 3 steps là sweet spot (1 quá ít, 5+ quá nhiều).
- 【3】**「ご都合いかがでしょうか」** — confirm next meeting tại chỗ. Nếu khách OK → settled; nếu không → reschedule trong tuần.

---

## 🎯 Câu chốt

> **Closing = Recap 3 (key numbers) + CTA 3 (action + owner + deadline) + Confirm next meeting.**
>
> *Không có CTA = pitch không kết quả. 3 + 3 là format chuẩn.*

---

## ⚠ Tránh

- "ありがとうございました" cộc → khách không nhớ key takeaways
- Recap dài hơn 1 phút → đã hết energy attention
- CTA mơ hồ "後で連絡します" → 田中 sẽ phải hỏi → mất authority
- Quên confirm next meeting tại chỗ → followup email phải đi đi lại lại 3-4 lần
- Quá nhiều CTA (5+) → diluted, khách không nhớ priority

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| クロージング | kuroojingu | Closing |
| まとめ | matome | Tóm tắt / recap |
| 次のステップ | つぎのすてっぷ | Next step |
| 都合 | つごう | Sự thuận tiện |
| 法務 | ほうむ | Pháp chế |
| サインオフ | sain in ofu | Sign-off |
| 議事メモ | ぎじめも | Meeting note |
| 頂戴 | ちょうだい | (Khiêm) nhận / xin |


# Rule 27 — Thank-you slide / 謝辞スライド

> **Luận điểm.** Slide cuối **không phải** "Thank You" chữ to giữa màn hình. Format chuẩn JP business: ① 「ありがとうございました」 trên cùng → ② **Recap 3 takeaways** lại 1 lần → ③ **Contact info** (presenter + co-presenter) → ④ **QR code** dẫn về deck PDF. Slide này phải lên trong khi đang đàm thoại closing — khán giả còn nhìn slide khi rời phòng → ấn tượng cuối đọng lại.
>
> 謝辞スライドは「Thank You」だけでは弱い。①御礼 ②3点 recap ③連絡先 ④QR で deck PDF。退室時の最後の image。
>
> **Liên quan:** rule 26 (closing CTA), rule 28 (followup email).

---

## Bối cảnh / 場面

Dũng đang finalize deck. Đến slide cuối — chuẩn bị làm "Thank You" chữ to. Anh Tuấn (technical lead) review pass-by và chỉnh.

---

## ❌ Hội thoại XẤU — slide trống "Thank You"

*nhìn qua vai*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「最後のスライド、『Thank You』だけ？」 |
| **ズン** | 「はい、シンプルがいいかと…」 |
| **トゥアン** | 「客が退室するまでこの slide が壁に映ってる時間、何分？5分以上だぞ。**情報密度ゼロ**で5分は **mottainai**。」 |
| **ズン** | 「あ、なるほど…」 |

**Vì sao xấu:** Slide cuối thường được chiếu 5-10 phút trong khi small talk + pack up. Trống = mất cơ hội reinforcement. "Thank You" tiếng Anh trên màn hình client Nhật cũng hơi off-tone.

---

## ✅ Hội thoại TỐT — Thank-you slide đầy đủ 4 thành phần

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**4要素入りの謝辞スライド** に変更しました【1】。①御礼、②本日の3点 recap、③連絡先、④deck PDF の QR コード。」 |
| **トゥアン** | 「いいね、QR は何先？Drive 直リンク？」 |
| **ズン** | 「Drive **閲覧専用** リンクの QR です【2】。**ダウンロード可、編集不可**。Tanaka PMO 様にも同じリンク Slack で共有予定です。」 |
| **トゥアン** | 「連絡先は弊社2名 (ズン＋ハーCTO) でいいけど、**営業時間** 書いとけよ。客が深夜メールで気を遣わない様に。」 |
| **ズン** | 「『9:00-18:00 (JST)』追記します【3】。」 |

📝 **Ghi chú:**
- 【1】**4要素 = ① 御礼 ② Recap 3点 ③ Contact ④ QR**. Skip một là wasted slide.
- 【2】**Drive 閲覧専用 リンク** — KHÔNG public. 閲覧 = read-only, không cho edit. QR phía dưới-phải, kích thước 4cm² đủ scan từ smartphone.
- 【3】**営業時間 (JST) ghi rõ** — khách Nhật rất chú trọng work-life balance, biết presenter offline lúc nào → respect.

---

## 🎯 Câu chốt

> **Thank-you slide = ① ありがとうございました ② Recap 3点 ③ Contact (2 người + 営業時間) ④ QR Drive 閲覧専用.**
>
> *Không slide trống. 5-10 phút chiếu cuối là cơ hội reinforce, không phải để wasted.*

---

## 📐 Template Thank-you slide layout

```
┌────────────────────────────────────────────┐
│                                            │
│   ありがとうございました                  │  ← Title 40pt, center
│   Cảm ơn quý vị đã dành thời gian          │  ← Subtitle 24pt
│                                            │
│   ─────────────────────────────            │
│                                            │
│   【本日の3点】                              │  ← Header 28pt
│   ① Phase 3 スコープ: 19機能              │  ← Body 22pt
│   ② 価格: 1,200万円 (単価 -8%)             │
│   ③ 開始 5/15 / リリース 12/15             │
│                                            │
│   ─────────────────────────────            │
│                                            │
│   【お問合せ】                              │
│   ズン (BD)        zun@tienphat.vn        │
│   ハー (CTO)       ha@tienphat.vn         │
│   営業時間 9:00-18:00 (JST / Mon-Fri)    │
│                                            │
│                              [QR コード]   │  ← Bottom-right, 4cm²
│                              本日のdeck PDF
│                                            │
└────────────────────────────────────────────┘
```

---

## ⚠ Tránh

- "Thank You" trống → wasted 5-10 phút screen time
- Email cá nhân (gmail) → unprofessional → dùng cty domain
- QR public link → ai cũng access → leak deck
- Quên 営業時間 → khách gửi mail 22h thấy ngại
- Photo của presenter → unnecessary, distracting

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 謝辞 | しゃじ | Lời cảm ơn |
| 連絡先 | れんらくさき | Contact |
| 閲覧 | えつらん | Xem (read-only) |
| 営業時間 | えいぎょうじかん | Giờ làm việc |
| 退室 | たいしつ | Rời phòng |
| 情報密度 | じょうほうみつど | Mật độ thông tin |
| 直リンク | ちょくりんく | Direct link |


# Rule 28 — Post-pitch follow-up email / 事後フォローメール

> **Luận điểm.** **24 giờ trong**: phải gửi follow-up email — không trễ. 4 phần: ① 御礼 ngắn ② Slide PDF + meeting note đính kèm ③ Recap 3 takeaways + 3 next steps ④ Deadline câu 持ち帰り. Email này quyết định 30% impression "professional" sau pitch. Trễ 48h = ấn tượng đã loãng.
>
> ピッチ後24h以内に follow-up メール必須。①御礼 ②資料添付 ③Recap+Next step ④持ち帰り deadline。48h 超えると impression が薄れる。
>
> **Liên quan:** rule 24 (持ち帰り), rule 26 (closing CTA), rule 27 (thank-you slide).

---

## Bối cảnh / 場面

Pitch Phase 3 kết thúc 16:00 thứ Năm. Dũng về văn phòng, định "thứ Hai gửi mail" để rest cuối tuần. Chị Hương kịp cản.

---

## ❌ Hội thoại XẤU — kéo qua weekend

*Slack 17:30 thứ Năm*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、ピッチ無事終了！フォローメールは月曜送ろうと思います、週末ゆっくり書きたいので。」 |
| **フオン** | 「**月曜だと72時間後**。客が今夜社内シェアする時に資料無いの? **今夜送って**。3行でも。」 |
| **ズン** | 「あ、それは…」 |
| **フオン** | 「**24h ルール**。詳細版は週末に書いて月曜 update。**今夜は acknowledgment + slide PDF link** だけでいい。」 |

**Vì sao xấu:** 月曜 = 72h sau. Khách Nhật thường share nội bộ trong 24h sau pitch — không có slide = họ phải nhớ verbal → impression "presenter chậm". 「週末ゆっくり書く」 = self-prioritize trên client.

---

## ✅ Hội thoại TỐT — 2-step: same-day acknowledgment + Monday detailed

*Slack 17:30 · 19:45*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、ピッチ終了。**今夜中に acknowledgment メール** 送ります (slide PDF link + 持ち帰り deadline 確認のみ)。**詳細 recap + 議事メモは月曜朝** に send します。テンプレ使います。」 |
| **フオン** | 「いいね、その2段階で。今夜の acknowledgment は **20時まで** に出すと安心。文面ドラフト見せて。」 |
| **ズン** | 「ドラフトです。3パラ + 添付3点 + 持ち帰り SOAP detail 期限金曜17時 明記しました【1】。」 |
| **フオン** | 「OK、send。月曜の詳細版にはトゥアン+ハー CTO も CC に。」 |

📝 **Ghi chú:**
- 【1】**2段階送付** — 当日: short acknowledgment + slide PDF + 持ち帰り deadline confirm. 翌営業日朝: detailed recap + meeting note + action items. 客は当日内に nội bộ share, 詳細 review は週明け → fits Japan flow.

---

## 🎯 Câu chốt

> **24h ルール: 当日中に short acknowledgment、翌営業日に詳細 recap. 持ち帰り deadline 必ず明記.**
>
> *Same-day acknowledgment + next-day detailed = fits client's internal share rhythm.*

---

## 📐 Template Email Follow-up (đính kèm — `conversation.json:templates[0]`)

```
件名: 【御礼】Phase 3 ご提案の件 (ティエンファット ズン)

白鷗株式会社
大垣 営業部長 様
松本 PM 様
田中 PMO 様
(CC: 弊社 ハー CTO、トゥアン 技術リーダー、フオン 副部長)

平素より大変お世話になっております。
弊社営業部のズンでございます。

本日はお忙しい中、Phase 3 ご提案にお時間を頂き、誠にありがとうございました。

【本日の合意 3点】
① Phase 3 スコープ: 19機能 (5/15 開始 / 12/15 リリース)
② 価格: 1,200万円 (Phase 2 比単価 -8%)
③ 責任者ペア: 弊社ズン ＋ 御社松本様

【次のステップ 3点】
① 5/2 (今週金) 17時まで: SOAP→REST 統合詳細回答メール (弊社 → 御社)
② 5/8 (来週水) 14時: スコープ最終確認会議 (60分・御社会議室)
③ 5/15 まで: 契約書サインインオフ (両社法務経由)

【添付資料】
・本日のスライド (PDF) — Drive閲覧専用 [URL]
・議事メモ (PDF) — 同上

【持ち帰り事項】
・SOAP→REST 統合 + OAuth 2.0 フロー詳細
 → 弊社 CTO ハー 確認の上、5/2 17時 までに別メールでご回答いたします

ご不明な点等ございましたら、いつでもご連絡くださいませ。
引き続き何卒よろしくお願い申し上げます。

────────────────────
チャン・ヴァン・ズン (Tran Van Dung)
ティエンファット 営業部 BD担当
TEL: +84-xx-xxxx-xxxx
EMAIL: zun@tienphat.vn
営業時間: 9:00-18:00 (JST / Mon-Fri)
────────────────────
```

---

## ⚠ Tránh

- Gửi sau 48h → impression đã loãng, khách đã forget verbal nuance
- 件名 mơ hồ ("先日はありがとうございました") → email bị bury trong inbox
- Quên CC nội bộ (CTO, sếp) → không có witness chain
- Persistent attachment qua mail (file 30MB) → dùng Drive link
- Quên 持ち帰り deadline trong email → khách không biết khi nào reply

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 事後 | じご | Sau (sự việc) |
| 御礼 | おれい | Lời cảm ơn |
| 件名 | けんめい | Tiêu đề mail |
| 添付 | てんぷ | Đính kèm |
| 議事メモ | ぎじめも | Note họp |
| 引き続き | ひきつづき | Tiếp tục (formal) |



---

# Phần V — Tình huống đặc biệt + Self-improve

# Rule 29 — Online presentation / オンラインプレゼン

> **Luận điểm.** Online pitch không phải "offline + camera". 5 yếu tố vật lý: ① **Camera ngang mắt** (nhìn lens, không nhìn screen) ② **Lighting** trước mặt (window / ring light) ③ **Voice projection** = nói lớn hơn 20% so với offline ④ **Mic gắn ve áo** không mic laptop ⑤ **Background** sạch (virtual hoặc tường trắng). Mỗi yếu tố sai = trừ điểm professional.
>
> オンラインは「対面+カメラ」ではない。Camera 目線、前方照明、声 +20%、ピンマイク、背景クリーン — 5要素必須。
>
> **Liên quan:** rule 30 (hybrid), rule 31 (tech failure). Sách 03 rule 03 (video setup).

---

## Bối cảnh / 場面

Chủ Nhật. Dũng test Zoom với chị Hương trước pitch online sáng thứ Hai cho 松本 + 田中 (大垣 dự offline tại 白鷗). Rehearsal share screen.

---

## ❌ Hội thoại XẤU — laptop default

*Zoom*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「ズン、カメラが下から見上げてる。ノートPC のまま？」 |
| **ズン** | 「はい、ノート PC で…」 |
| **フオン** | 「**double chin** で見える、それと **逆光** ! 後ろが窓、顔が真っ黒。声も小さい、laptop マイク？」 |
| **ズン** | 「全部デフォルトです…」 |
| **フオン** | 「**全部 NG**。月曜まで12時間あるから揃えて。」 |

**Vì sao xấu:** Laptop camera angle dưới = double chin + nostril shot (bất lịch sự). 逆光 (backlit) = silhouette không thấy mặt → impression presenter "ẩn mình". Laptop mic = sound bể, voice nhỏ.

---

## ✅ Hội thoại TỐT — 5 yếu tố setup

*re-setup, gọi lại*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**5要素 setup** 完了です【1】。①外付け webcam を本棚で目線に上げ、②正面にリングライト、③背景は virtual の薄グレー、④ピンマイク、⑤声は通常 +20% 意識します。」 |
| **フオン** | 「うん、顔が明るい、目線が natural。**手の位置** どこ？」 |
| **ズン** | 「画面下に置いて、**重要 point だけ手を上げ gesture** を camera frame 内に入れます【2】。」 |
| **フオン** | 「いいね。あと **chat 監視** は誰？1人で全部見れない。」 |
| **ズン** | 「トゥアンさんに **chat moderator** お願いしました。chat の質問は私が見ずトゥアンさんが verbal で『〇〇様から〜の質問が来ています』と私に渡します【3】。」 |
| **フオン** | 「OK、それで月曜行こう。」 |

📝 **Ghi chú:**
- 【1】**5要素**: camera 目線 / lighting 正面 / 声 +20% / ピンマイク / 背景クリーン. Skip 1 yếu tố là dropping point.
- 【2】**Gesture frame** — tay phải xuất hiện trong khung camera khi gesture, không "ghost gesture" ngoài frame.
- 【3】**Chat moderator pattern** — 1 người không thể vừa pitch vừa watch chat. Co-presenter (Tuấn) làm moderator → relay câu hỏi verbal. Khách Nhật rất hiếm khi unmute hỏi → chat is primary channel.

---

## 🎯 Câu chốt

> **5要素: ①Camera 目線 ②前方 lighting ③声 +20% ④ピンマイク ⑤背景クリーン. + Chat moderator phụ.**
>
> *Online ≠ offline + webcam. Setup vật lý quyết định 50% professional impression.*

---

## ⚠ Tránh

- Laptop camera góc dưới → double chin + nostril
- 逆光 (window phía sau) → silhouette
- Laptop mic → âm bể, có echo
- Background lộn xộn (giường, đồ giặt) → unprofessional
- Tự xem chat trong khi pitch → eye contact gãy, mất nhịp
- Virtual background "beach" / "Star Trek" → không phù hợp business JP

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| カメラ目線 | かめらめせん | Eye contact qua camera |
| 逆光 | ぎゃっこう | Backlit |
| 照明 | しょうめい | Đèn / lighting |
| ピンマイク | pinmaiku | Mic ve áo / lavalier |
| 背景 | はいけい | Background |
| 共有 | きょうゆう | Share (screen) |
| モデレーター | moderator | Moderator |


# Rule 30 — Hybrid presentation / ハイブリッドプレゼン

> **Luận điểm.** Hybrid (1 nửa offline, 1 nửa online) là **format khó nhất**. Lỗi cố hữu: presenter chỉ giao tiếp với người ngồi trong phòng → online audience thành "second-class". Quy tắc 50/50: ① **Greet online trước offline** ② **Eye contact split** (đếm 30s offline, 30s nhìn camera) ③ **Lặp lại câu hỏi từ phòng** trước khi trả lời (online không nghe rõ) ④ **Camera ở cạnh slide** không sau lưng presenter.
>
> Hybrid は最難関。50/50 ルール: 挨拶は online 先、目線は 30s/30s 分配、室内質問は復唱、camera は slide 横。
>
> **Liên quan:** rule 29 (online), rule 31 (tech failure).

---

## Bối cảnh / 場面

Pitch Phase 3 chính thức. 大垣 + 田中 ở phòng họp 白鷗 (offline). 松本 PM dial in từ Osaka (online), 弊社ハー CTO cũng online từ HCMC. Setup hybrid 4 chiều.

---

## ❌ Hội thoại XẤU — quên online

*bước vào phòng, only nhìn 大垣 + 田中 · bắt đầu pitch, không nhìn camera · hỏi câu · trả lời 大垣 luôn, không repeat · online, không nghe rõ câu hỏi*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「大垣様、田中様、おはようございます。本日はよろしくお願いします。」 |
| **ズン** | 「では始めます…」 |
| **大垣** | 「Phase 2 KPI の達成率は？」 |
| **ズン** | 「85%です。」 |
| **松本** | 「すみません、何の85%でしょうか？」 *(awkward pause)* |

**Vì sao xấu:** Quên greet 松本 + ハー online → "second-class". Eye contact 100% offline → online cảm thấy invisible. Không repeat câu hỏi → 松本 không nghe rõ vì mic phòng họp xa.

---

## ✅ Hội thoại TỐT — 50/50 + repeat questions

*vào phòng, đầu tiên nhìn camera · online · quay sang offline · đứng cạnh screen, camera bên cạnh · Q&A · repeat trước khi trả lời*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**まずオンラインの皆様、おはようございます**【1】。松本様、ハー CTO、音声・映像とも問題ございませんでしょうか？」 |
| **松本** | 「クリアに聞こえています、ありがとうございます。」 |
| **ズン** | 「大垣様、田中様、本日もよろしくお願いいたします。」 |
| **ズン** | 「本日のプレゼン、**室内3名＋オンライン2名** で進めさせていただきます。**目線は30秒ずつ切替** いたします【2】。」 |
| **大垣** | 「Phase 2 KPI の達成率は？」 |
| **ズン** | 「**大垣様より『Phase 2 KPI 達成率』** のご質問でございます【3】。Phase 2 KPI 達成率は **85%** でございます。 オンラインの松本様、聞こえていますでしょうか？」 |
| **松本** | 「はい、明確です。」 |

📝 **Ghi chú:**
- 【1】**Greet online TRƯỚC** — đảo thứ tự thông thường để online cảm thấy được prioritize, không phải afterthought.
- 【2】**30s eye contact split** — đếm thầm. 30s nhìn offline → 30s nhìn camera (không nhìn screen monitor có participant). Tránh "3 phút quay lưng với online".
- 【3】**「〇〇様より〜のご質問でございます」** — repeat câu hỏi phòng trước khi trả lời. Online audience nghe được + có thời gian process.

---

## 🎯 Câu chốt

> **Greet online TRƯỚC. Eye contact 30s/30s. Repeat questions từ phòng. Camera cạnh slide không sau lưng.**
>
> *Hybrid khó vì dễ quên 1 nửa. Quy tắc rõ giữ cho cả 2 nửa được respected.*

---

## ⚠ Tránh

- Vào phòng greet offline trước → online cảm thấy invisible
- 100% eye contact offline → 大型 sin với online half
- Không repeat câu hỏi từ phòng → online không nghe nguyên gốc
- Camera đặt sau lưng presenter → online chỉ thấy lưng
- Trả lời chat của online mà không announce verbal → offline confused
- "あ、すみません、〇〇さんも聞こえてますか" giữa giờ → unprepared

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ハイブリッド | haiburiddo | Hybrid |
| 室内 | しつない | Trong phòng |
| 復唱 | ふくしょう | Lặp lại |
| 切替 | きりかえ | Chuyển đổi |
| 達成率 | たっせいりつ | Tỉ lệ đạt |
| クリア | kuria | Rõ (sound) |
| 優先する | yuusen suru | Ưu tiên |


# Rule 31 — Tech failure recovery / 技術トラブル復旧

> **Luận điểm.** Khi projector chết / internet down / Zoom freeze giữa pitch — **3-step recovery**: ① **Acknowledge bình tĩnh** (5 giây): "申し訳ございません、技術トラブルが発生しております" ② **Switch nhanh sang Plan B** (Plan B đã prep ở rule 07: PDF backup, mobile hotspot, paper handout) ③ **Entertain** (verbal ngay phần next slide) trong khi recover. Tuyệt đối **không panic** trên mặt — khán giả Nhật xem panic = "cty không reliable trong production crisis".
>
> 技術トラブルは acknowledge (5秒で) → switch Plan B → entertain (verbal で次 slide 内容を語る) の3ステップ。Panic 表情は『本番障害も同じ』と暗示。
>
> **Liên quan:** rule 07 (Plan B), rule 29 (online), rule 30 (hybrid).

---

## Bối cảnh / 場面

Pitch Phase 3 phút 12. Đang share slide 8 (pricing) — đột nhiên cty 白鷗 cúp internet building-wide. Zoom freeze, projector hiện "no signal". 大垣 + 田中 trong phòng nhìn Dũng. 松本 online → màn hình Dũng cứng đơ.

---

## ❌ Hội thoại XẤU — panic + lê thê silence

*thấy projector mất, panic mặt · loay hoay 30 giây, IT helpdesk gọi · 60s sau · 暗い silence 2 phút trong khi Dũng tìm file*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「あ、あ、画面が…えっ、ネット…えっ…」 |
| **ズン** | 「すみません、ちょっと…IT 確認してます…」 |
| **大垣** | 「PDFは無いんですか？」 |
| **ズン** | 「あ、PDF…あります、メール送りますね…」 |

**Vì sao xấu:** Panic mặt → khán giả thấy "presenter không cool under pressure". 60 giây silence → time over chắc chắn. Không có Plan B sẵn → 大垣 phải nhắc PDF → impression "cty không có backup plan".

---

## ✅ Hội thoại TỐT — 3-step crisis recovery

*projector mất, 3 giây deep breath, voice steady · rút USB, ra USB-C HDMI dongle, plug local — đã prep · co-presenter, gọi mobile hotspot · không có slide hiện, vẫn verbal · 45 giây sau*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**申し訳ございません、ネットワークトラブルが発生しております**【1】。**5秒で復旧手順に切り替え** させていただきます。」 — Acknowledge |
| **ズン** | 「**ローカル PDF に切替中** です。同時にお手元の **印刷ハンドアウト** もご確認いただけますでしょうか【2】。」 — Switch Plan B |
| **トゥアン** | 「松本様、ハー CTO、**モバイルテザリング** で Zoom 再接続いたします。30秒お待ちください。」 |
| **ズン** | 「**復旧中ですが、内容を進めさせていただきます**【3】。スライド8 の価格内訳ですが、Phase 3 1200万円の内訳は ①開発工数 720万、②ライセンス 280万、③運用初年度 200万。ハンドアウト 5ページ目に表がございます。」 — Entertain verbal |
| **トゥアン** | 「Zoom 復活、画面共有 OK です。」 |
| **ズン** | 「ありがとうございます。**ご迷惑をおかけし、申し訳ございませんでした**。続きスライド9 から進めさせていただきます。」 |

📝 **Ghi chú:**
- 【1】**「申し訳ございません、〜トラブルが発生しております」** — formal acknowledge. NHẤN 5 giây deep breath trước → voice steady. Không "あ、あ、えっ…".
- 【2】**Plan B đã prep**: ① PDF USB ② printed handout ③ mobile hotspot. Rule 07 quy định, rule 31 thực thi.
- 【3】**「復旧中ですが、内容を進めさせていただきます」** — KHÔNG dừng pitch. Verbal pitch tiếp trong khi co-presenter recover. Audience thấy presenter "production-ready".

---

## 🎯 Câu chốt

> **Acknowledge 5s ("申し訳ございません、〜トラブル") → Switch Plan B (PDF / handout / hotspot) → Entertain verbal trong khi recover.**
>
> *Panic mặt = "không reliable production crisis". 3 step có script sẵn = control under pressure.*

---

## ⚠ Tránh

- "あ、あ、えっ…" panic verbal → audience đọc nervous trên mặt
- Loay hoay > 30s silence → time over + impression "không có plan"
- "誰か助けて〜" gọi IT helpdesk lớn → unprofessional
- Không có Plan B → presenter biết mình không backup
- Đổ lỗi infra ("白鷗のネットが…") → blame client = mất face khách
- Skip slide remaining vì panic → pitch lỡ kết quả

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 復旧 | ふっきゅう | Recovery / phục hồi |
| トラブル | toraburu | Trouble / sự cố |
| 切替 | きりかえ | Switch / chuyển |
| ハンドアウト | handoauto | Handout |
| テザリング | tezaringu | Tethering |
| お騒がせ | おさわがせ | Phiền hà / xáo trộn |
| 内訳 | うちわけ | Phân tích chi tiết |


# Rule 32 — Co-presenter handoff / 共同プレゼンの引き継ぎ

> **Luận điểm.** Handoff giữa co-presenter phải **verbal + visual cùng lúc**. Pattern: ① **Bridge sentence** (kết phần mình + tóm tắt cho phần tiếp) ② **Verbal handoff** ("〜については、弊社CTOハーよりご説明いたします") ③ **Eye contact + gesture** sang co-presenter ④ Co-presenter **acknowledge** ("改めまして、ハーでございます。〜") rồi **continue ngay**, KHÔNG re-introduce dài. Handoff vụng = audience confused "ai chịu trách nhiệm phần nào".
>
> 共同プレゼンの引き継ぎは: bridge → verbal handoff → gesture → 受け継ぎ確認。「では次はハーさんお願いします」だけは弱い。
>
> **Liên quan:** rule 09 (自己紹介), rule 14 (logical markers).

---

## Bối cảnh / 場面

Phase 3 pitch. Dũng pitch business + scope (slide 1-12). Slide 13-18 là technical architecture — phần Anh Hà CTO. Cần handoff smooth tại slide 12 → 13.

---

## ❌ Hội thoại XẤU — handoff cộc + dead air

*cuối slide 12 · 沈黙 5秒, ハー lúng túng · quên đã được introduce ở slide 1 chưa · in mind*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「以上、business overview でした。じゃあ次、ハーさんお願いします。」 |
| **ハー** | 「えっと、ティエンファット社 CTO のハーと申します。本日はよろしく…えーと、技術アーキテクチャについて…」 *(re-introduce 30s)* |
| **大垣** | "重複してる、time waste..." |

**Vì sao xấu:** "じゃあ次、ハーさんお願いします" cộc + casual. Không bridge sentence → audience không biết phần tiếp là gì. Dead air 5s → handoff vụng. Hà phải re-introduce → trùng + lãng phí time.

---

## ✅ Hội thoại TỐT — bridge + verbal + gesture handoff

*cuối slide 12 · eye contact + gesture sang Hà · stand up nhanh, không re-introduce dài · 15分後, slide 18 cuối phần Hà · stand up*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「以上で **business overview と スコープ概要** を終わらせていただきました。**次の技術アーキテクチャ詳細** につきましては、**弊社 CTO ハー より** ご説明させていただきます【1】。」 — Bridge + verbal handoff |
| **ズン** | 「**ハー、よろしくお願いします**【2】。」 |
| **ハー** | 「**改めまして、ハーでございます**。技術アーキテクチャは **3層構成** ございます【3】。スライド13 をご覧ください…」 — Continue ngay |
| **ハー** | 「以上、技術アーキテクチャでございました。**次のロードマップは再度 ズンより** ご説明いたします。**ズンさん、お願いします**。」 — Reverse bridge |
| **ズン** | 「ズンでございます。ロードマップはスライド19 から…」 |

📝 **Ghi chú:**
- 【1】**Bridge sentence** = kết phần mình + announce phần tiếp + announce ai. 3 elements bắt buộc. "ハーより ご説明させていただきます" có 「より」 = chỉ rõ source.
- 【2】**Verbal cue + gesture sync** — câu "ハー、お願いします" + tay mở sang Hà. Audience eye natural follow gesture.
- 【3】**Co-presenter acknowledge ngắn** — "改めまして、ハーでございます" 5 chữ + nhảy vào content ngay. KHÔNG re-introduce 30s đã làm ở slide 1.

---

## 🎯 Câu chốt

> **Bridge ("以上〜、次は〜については〇〇より") → Verbal cue ("〇〇さん、お願いします") + Gesture → Acknowledge ngắn ("〇〇でございます") → Continue ngay.**
>
> *Handoff smooth = audience không "lost". Re-introduce dài = lãng phí.*

---

## ⚠ Tránh

- "じゃあ次、〇〇さんお願いします" cộc → không bridge
- Dead air >3s khi handoff → audience confused
- Co-presenter re-introduce 30s → trùng với slide 1
- Quên gesture → audience không biết handoff đã happen
- Co-presenter ngồi xuống lúc handoff sang mình → đứng dậy mất 10s → time wasted
- Handoff giữa câu (mid-sentence) → audience disoriented

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 引き継ぎ | ひきつぎ | Bàn giao / handoff |
| 共同 | きょうどう | Cộng tác / chung |
| バトンタッチ | batontacchi | Chuyền baton |
| 概要 | がいよう | Tổng quan |
| アーキテクチャ | aakitekucha | Architecture |
| 受け継ぎ | うけつぎ | Tiếp nhận |
| 構成 | こうせい | Cấu trúc |


# Rule 33 — Recording + share / 録画と共有

> **Luận điểm.** Khi 田中 PMO request record để share absent stakeholder → **không quyết tại chỗ một mình**. Quy trình: ① **Permission ask** với toàn bộ participant trước khi REC ② **Edit out** confidential parts (price negotiation, internal critique) ③ **Distribution control** (link Drive limited audience, expire 30 ngày). Quay free-flow + share lung tung = leak risk + violate privacy.
>
> 録画依頼は ① 全員許可 ② confidential 部分編集 ③ 配布範囲制限。免許なし録画はトラブル元。
>
> **Liên quan:** rule 28 (followup), rule 27 (slide PDF). Sách 02 rule 56 (録音許可).

---

## Bối cảnh / 場面

Pitch Phase 3 starts trong 5 phút. 田中 PMO Slack 田中 → ズン: "上司の山田部長 が当日不在 → 録画して共有可能でしょうか？". Dũng cần xử lý xin permission + framework cho record/share.

---

## ❌ Hội thoại XẤU — quay không xin + share email cá nhân

*Slack 9:55 · quyết liền · pitch tiến hành, Dũng REC mà không announce · sau pitch, 大垣 nói câu nội bộ về vendor evaluation cho 田中 · send MP4 200MB qua Gmail cá nhân*

| Speaker | Câu |
|---------|-----|
| **田中** | 「ズンさん、本日のプレゼン録画して山田部長にシェアしたいのですが…」 |
| **ズン** | 「了解です、Zoom で record すれば OK ですよね。後で MP4 メールで送ります。」 |
|  | 「実はもう1社見積もり依頼してて…」 |
| **ズン** | 「録画です、ご共有くださいませ。」 |

**Vì sao xấu:** Không announce REC ở phòng → 大垣 phát biểu confidential mà không biết. Send MP4 raw qua Gmail = ① file lớn ② không control distribution ③ chứa confidential. Privacy + confidentiality dual violation.

---

## ✅ Hội thoại TỐT — permission + edit + controlled share

*Slack 9:55 · Slack reply · pitch 開始, slide 1 で全員へ · pitch 終了後, Slack 田中 へ*

| Speaker | Câu |
|---------|-----|
| **田中** | 「ズンさん、本日のプレゼン録画して山田部長にシェアしたいのですが…」 |
| **ズン** | 「承知いたしました。本番開始前に **全participant の許可** を取らせていただきます。**編集後 Drive 限定共有 (30日 expire)** で対応可能です。**生 MP4 メールはセキュリティ上不可** ですが、ご理解いただけますでしょうか【1】？」 |
| **田中** | 「もちろんです、その方法で問題ありません。」 |
| **ズン** | 「**まず1点お知らせ** ございます。本日 **本セッションを録画させていただきます**【2】。山田部長が当日 ご欠席のため、田中様より **後日録画共有依頼** をいただきました。**全員のご許可** をいただいてから REC 開始させていただきます。何かご懸念ございますでしょうか？」 |
| **大垣・松本** | 「問題ないです。」 |
| **ズン** | 「ありがとうございます。**REC 開始** いたします。」 |
|  | 「録画 raw 1時間20分 → **price negotiation 部分 (28-35分) と confidential 部分 (52-58分) を edit out** いたしました【3】。Drive 閲覧専用リンクで田中様 + 山田部長様 の Email 限定 access、30日後 自動 expire です。」 |
| **田中** | 「素晴らしいご対応、ありがとうございます。」 |

📝 **Ghi chú:**
- 【1】**Pre-permission framework** với 田中 → set expectation 編集 + 限定 share. KHÔNG rush "OK 録画送ります".
- 【2】**On-the-spot announce** với toàn bộ phòng → all-participant consent. Khách Nhật rất chú trọng consent — surprise REC = privacy violation.
- 【3】**Edit out** confidential parts (price negotiation, vendor critique). Time markers ghi rõ. Drive 閲覧専用 + Email 限定 + 30日 expire = 3 layer security.

---

## 🎯 Câu chốt

> **Pre-permission từ requester → On-the-spot consent từ tất cả → Edit confidential → Drive 限定共有 + expire.**
>
> *Không quay surprise. Không share raw. Không gửi MP4 qua mail cá nhân.*

---

## ⚠ Tránh

- REC mà không announce → privacy violation
- Edit raw không loại confidential → leak khi share
- Send MP4 raw qua Gmail / personal email → không control distribution
- Drive link public → ai cũng access
- Không expire → file tồn tại indefinitely
- Quên CC sếp khi share file recording → break audit chain

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 録画 | ろくが | Quay video |
| 許可 | きょか | Cho phép |
| 編集 | へんしゅう | Biên tập / edit |
| 配布 | はいふ | Phân phát |
| 限定 | げんてい | Giới hạn |
| 機密 | きみつ | Bảo mật / confidential |
| 同意 | どうい | Đồng ý |
| 失効 | しっこう | Hết hiệu lực / expire |


# Rule 34 — Self-review checklist / 自己評価

> **Luận điểm.** Sau pitch (trong vòng 24h), self-review **bằng 12-item rubric** chia 4 cụm: Preparation (3) / Delivery (4) / Q&A (3) / Closing+Followup (2). Mỗi item chấm 1-5. Tự kết luận **3 strengths + 3 improvements**. Skip self-review = lặp cùng lỗi pitch tiếp. Khách Nhật value "改善志向" — review record tự nó là đầu tư.
>
> ピッチ後24h以内に12項目 rubric self-review (準備3+デリバリー4+Q&A3+クロージング2)。3 strengths + 3 improvements を抽出。改善志向は日本顧客が高く評価。
>
> **Liên quan:** rule 35 (改善サイクル), rule 28 (followup).

---

## Bối cảnh / 場面

Pitch Phase 3 chiều thứ Năm xong. Tối thứ Năm, Dũng đã gửi acknowledgment email. Sáng thứ Sáu, Dũng định "skip review, viết detailed mail luôn cho đỡ delay". Chị Hương cản.

---

## ❌ Hội thoại XẤU — skip review

*Slack 8:00 thứ Sáu*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、月曜の詳細メール書きます。Self-review は時間取れないので skip して大丈夫ですか？」 |
| **フオン** | 「ダメ。Self-review skip すると **次の pitch も同じ間違い** する。30分でいい、12項目 rubric で chấm。」 |
| **ズン** | 「30分も…」 |
| **フオン** | 「Pitch 60分の **半分** を review に投資して初めて成長する。**今やる**。」 |

**Vì sao xấu:** Skip review → repeat lỗi. "時間ない" thường là excuse. Mỗi pitch là 1 datapoint, không log → wasted opportunity.

---

## ✅ Hội thoại TỐT — 30 phút self-review + 3+3 extract

*Slack 8:30, sau 30 phút review*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Self-review 完了です【1】。**12項目平均 3.8/5**。詳細はテンプレ添付。」 |
| **ズン** | 「**3 strengths**: ①LASR 適用 (Q&A の難問対応)、②Plan B 切替 (ネット障害 30秒復旧)、③CTA 3点明示。**3 improvements**: ①hook が weak (data 提示遅い)、②大垣様の価格 challenge で bridge phrase 1秒遅れた、③closing recap に時間配分 -2分【2】。」 |
| **フオン** | 「いいね、具体的。**hook の改善** は次の pitch までに **rule 11 再読** + 30秒 hook draft 5パターン作成。Bridge phrase は **rule 25 暗唱** で 0.5秒 reflex まで。」 |
| **ズン** | 「了解、**5/2 までに hook drill** + **5/8 までに bridge phrase 暗唱完了** いたします【3】。」 |

📝 **Ghi chú:**
- 【1】**Self-review 30 phút** — fixed budget. 12 items × 1-2 phút/item + 5 phút summary. 30+ phút = over-analyze, không sustainable.
- 【2】**3 + 3 format** — 3 strengths (giữ + scale up) + 3 improvements (action). Equal split → không bị "negative spiral".
- 【3】**Improvements có deadline + drill cụ thể** — review không action = review wasted. Map mỗi improvement → rule + drill + deadline.

---

## 🎯 Câu chốt

> **24h trong: 12-item rubric (4 cụm) chấm 1-5 → 3 strengths + 3 improvements + drill plan có deadline.**
>
> *Không review = repeat lỗi. Review không action = review wasted.*

---

## 📐 Template Self-review Rubric (đính kèm — `conversation.json:templates[0]`)

```
【プレゼン Self-review チェックリスト】 (12項目 / 30分)

評価: 1=要改善 / 2=不十分 / 3=平均 / 4=良好 / 5=優秀

■ 準備 (Preparation) — 3項目
□ 1. 7問チェックリスト埋めたか (rule 01)         _/5
□ 2. 1-slide-1-message 守ったか (rule 02)        _/5
□ 3. Plan B 用意 (PDF/handout/hotspot) (rule 07) _/5

■ デリバリー (Delivery) — 4項目
□ 4. Hook 30秒で attention 取れたか (rule 08)    _/5
□ 5. 時間管理約束守ったか (rule 13)              _/5
□ 6. 論理マーカー使ったか (rule 14)              _/5
□ 7. アイコンタクト均等 (rule 30 - 50/50)        _/5

■ Q&A — 3項目
□ 8. LASR 適用 (rule 23)                         _/5
□ 9. 持ち帰り適切 (rule 24)                      _/5
□ 10. 敵対的質問 bridge phrase (rule 25)         _/5

■ クロージング＋followup — 2項目
□ 11. Recap 3 + CTA 3 (rule 26)                  _/5
□ 12. 24h 内 acknowledgment メール (rule 28)     _/5

────────────────────────────
合計: __/60     平均: __/5

【3 Strengths】 — 4-5点項目から
1. ____
2. ____
3. ____

【3 Improvements】 — 1-3点項目から
1. ____ → drill: ____ までに ____
2. ____ → drill: ____ までに ____
3. ____ → drill: ____ までに ____

【次回 pitch までの commit】
- ____
```

---

## ⚠ Tránh

- Skip self-review → repeat lỗi
- Self-review > 60 phút → over-analyze, không sustainable
- Chỉ list improvements → negative spiral, mất motivation
- 6+ improvements → diluted, không action item nào hoàn thành
- Improvements không deadline → wishful thinking
- Không review trong 24h → memory đã loãng

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 自己評価 | じこひょうか | Tự đánh giá |
| ルーブリック | ruuburikku | Rubric |
| 強み | つよみ | Điểm mạnh |
| 改善点 | かいぜんてん | Điểm cần cải thiện |
| 暗唱 | あんしょう | Học thuộc |
| 反射 | はんしゃ | Phản xạ |
| 投資 | とうし | Đầu tư |


# Rule 35 — Iteration cycle / 改善サイクル

> **Luận điểm.** Pitch là skill — 1 lần good không đủ, phải có **4-step cycle**: ① **Rehearse** (1 tuần trước, alone + recorded) ② **Pilot** (3 ngày trước, với senior 1-1) ③ **Live** (real pitch) ④ **Retro** (24h sau, group review). Mỗi cycle output rubric → next cycle input. Linh học pitch lần đầu → Dũng mentor → Hương lead retro group.
>
> 改善サイクルは Rehearse → Pilot → Live → Retro の4ステップ。Linh の初 pitch を題材にグループ retro。
>
> **Liên quan:** rule 34 (self-review). Sách 04 rule 35 (iteration cycle).

---

## Bối cảnh / 場面

Phase 3 pitch đã xong + self-review xong. Cuối tháng 5, Linh (intern Marketing) có pitch nội bộ đầu tiên (introduce campaign mới). Hương tổ chức group retro: Linh + Dũng (mentor) + Hải (peer) + Hương (lead).

---

## ❌ Hội thoại XẤU — solo retro, không cycle

*Slack Hương sau pitch*

| Speaker | Câu |
|---------|-----|
| **リン** | 「フオン副部長、私の pitch 終わりました。Self-review もしました、合計42/60 でした。」 |
| **フオン** | 「いいね、自分で review はできた。**でも solo は限界**。group retro やったか？」 |
| **リン** | 「いえ、1人でやりました。みなさん忙しいかと…」 |
| **フオン** | 「**1人 review は blind spot 残る**。次 pitch までに同じ過ち繰り返す。**今週金曜 16時** に group retro セット、ズン+ハイ も呼ぶ。」 |

**Vì sao xấu:** Solo retro miss blind spot. 「みなさん忙しい」 = excuse → senior thực ra luôn make time cho intern. Skip group retro = lặp 同じ pattern lỗi.

---

## ✅ Hội thoại TỐT — 4-step cycle full + group retro

*group retro 開始 · mentor perspective · peer*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「リンの初 pitch retro, 30分。Linh **Self-review 結果** から start。」 |
| **リン** | 「合計42/60。3 strengths: ①hook story 良かった、②time-keeping 守った、③Q&A 持ち帰り formal で対応。3 improvements: ①logical marker 弱、②声 small、③closing CTA 1点だけ。」 |
| **ズン** | 「Mentor から1点追加。**Rehearse stage で recording 見てない** らしい【1】。次 cycle は **rehearse 録画 → 再生で気付き** を入れて。私も最初それで声 small 直した。」 |
| **ハイ** | 「Peer から1点。**Pilot stage** やった？私で良ければ pilot pair やるよ、senior じゃなくて peer pilot **30分** で気軽に。」 |
| **リン** | 「Pilot やってない…次 pitch (6/15) は **6/8 rehearse 録画** + **6/12 ハイさん peer pilot** + **6/14 ハーCTOに senior pilot** + **6/15 live** + **6/16 group retro** で行きます【2】。」 |
| **フオン** | 「素晴らしい。**4-step cycle full** で1ヶ月後の pitch 比較する。Phase 4 retro までに L さんの **rubric 平均 4.0/5** 目標【3】。」 |

📝 **Ghi chú:**
- 【1】**Rehearse with recording** — alone rehearse mà không quay = blind spot. Recording → tự xem 1.5x speed → 5 phút spot lỗi voice/gesture.
- 【2】**4-step cycle**: Rehearse (alone+recorded) → Pilot (peer + senior) → Live → Group Retro. Mỗi step có người + format khác nhau.
- 【3】**Rubric numerical target** — không "tốt hơn", phải "平均 4.0/5". Track theo cycle để objective.

---

## 🎯 Câu chốt

> **Rehearse (録画) → Pilot (peer + senior) → Live → Retro (group). Rubric numerical target mỗi cycle.**
>
> *Solo review = blind spot. Cycle full = compound improvement.*

---

## ⚠ Tránh

- Solo review → blind spot residual
- "Senior 忙しい" → ng thực ra luôn make time cho intern → ask
- Skip rehearse recording → tự không thấy voice/gesture issues
- Skip pilot → live = first non-alone exposure → risk
- Retro không actionable next cycle → wasted
- Target qualitative ("tốt hơn") thay vì quantitative (平均 +0.5)

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 改善サイクル | かいぜんさいくる | Iteration cycle |
| リハーサル | rihaasaru | Rehearse |
| パイロット | pairotto | Pilot run |
| レトロ | retoro | Retrospective |
| 録画 | ろくが | Quay video |
| 振り返り | ふりかえり | Nhìn lại / retro |
| 比較 | ひかく | So sánh |
| 目標 | もくひょう | Mục tiêu |



---

# Phụ lục A — Script Template Tổng Hợp / 場面別フレーズ集

*Tổng hợp `key_phrases` từ tất cả 60 rules. Sắp xếp theo phần để tiện tra cứu khi soạn / luyện.*

*Mỗi cụm có thể audio TTS — cấu trúc trong `conversation.json` của từng rule.*

---


## Phần I — Nền tảng trước nhấc máy

### Rule 01 — Checklist 7 câu hỏi trước khi soạn / プレゼン準備の7つの問い

**ズン (em Dũng):**

> 🇯🇵 「プレゼンの準備7問を埋めました。レビューいただけますでしょうか？」
>
> 🇻🇳 *Em đã fill 7 câu hỏi chuẩn bị pitch ạ. Phiền chị review giúp em được không ạ?*
>
> 📝 _プレゼン準備レビュー依頼の標準_

**ズン (em Dũng):**

> 🇯🇵 「アウトプットを〇〇と書きましたが、〜でも十分でしょうか？」
>
> 🇻🇳 *Em ghi output là 〇〇, nhưng nếu chỉ đạt được 〜 thì có ổn không ạ?*
>
> 📝 _現実的アウトプットラインの自己点検_


### Rule 02 — Quy tắc 1-slide-1-message / 1スライド1メッセージ

**ズン (em Dũng):**

> 🇯🇵 「タイトルを全部結論型に書き直しました。」
>
> 🇻🇳 *Em đã sửa toàn bộ title sang dạng kết luận ạ.*
>
> 📝 _結論型タイトルへの書き直し報告_

**ズン (em Dũng):**

> 🇯🇵 「本文は根拠3点だけに絞りました。」
>
> 🇻🇳 *Body em chỉ rút lại còn 3 luận cứ ạ.*
>
> 📝 _本文の3点絞り込み報告_


### Rule 03 — Đường mạch câu chuyện (SCQA) / ストーリーアーク (SCQA)

**ズン (em Dũng):**

> 🇯🇵 「SCQAの順で組み直しました。」
>
> 🇻🇳 *Em đã reorder theo SCQA ạ.*
>
> 📝 _ストーリーアーク報告_

**ズン (em Dũng):**

> 🇯🇵 「現状(S) → 問題(C) → 問い(Q) → 答え(A)で進めます。」
>
> 🇻🇳 *Em đi theo flow: hiện trạng (S) → vấn đề (C) → câu hỏi (Q) → đáp án (A) ạ.*
>
> 📝 _プレゼン構造の口頭宣言_


### Rule 04 — Visual hierarchy & font / 視覚階層・フォント

**ズン (em Dũng):**

> 🇯🇵 「タイトル36pt、本文20pt、フォントはMeiryo統一にしました。」
>
> 🇻🇳 *Em để title 36pt, body 20pt, font thống nhất Meiryo ạ.*
>
> 📝 _視覚階層の標準報告_

**ズン (em Dũng):**

> 🇯🇵 「ラベルを20pt以上に上げ直します。」
>
> 🇻🇳 *Em sẽ chỉnh label lên trên 20pt ạ.*
>
> 📝 _ラベル修正コミット_


### Rule 05 — Color psychology JP business / 色彩心理 JP business

**ズン (em Dũng):**

> 🇯🇵 「色を3色制限にしました。アクセントは白鷗様のブランドカラーを採用しています。」
>
> 🇻🇳 *Em đã giới hạn còn 3 màu ạ. Accent em dùng màu thương hiệu Hakuō.*
>
> 📝 _色彩設計の説明_


### Rule 06 — Density rule (10-20-30) / 密度ルール (10-20-30)

**ズン (em Dũng):**

> 🇯🇵 「本編10枚、appendix 5枚の構成です。」
>
> 🇻🇳 *Cấu trúc gồm body 10 slide, appendix 5 slide ạ.*
>
> 📝 _10-20-30 構成の説明_


### Rule 07 — Backup plan (Plan B) / バックアップ計画 (Plan B)

**ズン (em Dũng):**

> 🇯🇵 「Plan Bチェックリストの5点を揃えました。」
>
> 🇻🇳 *Em đã chuẩn bị xong 5 điểm trong checklist Plan B ạ.*
>
> 📝 _バックアップ完了報告_



## Phần II — Nhận điện thoại

### Rule 08 — Hook 30 giây mở / 30秒オープニング (hook)

**ズン (em Dũng):**

> 🇯🇵 「〇〇を〇〇から〇〇まで削減いたしました。本日〇分で、〇〇を決めたく存じます。」
>
> 🇻🇳 *Em đã giảm 〇〇 từ 〇〇 xuống 〇〇. Hôm nay trong 〇 phút, em mong muốn quyết được 〇〇.*
>
> 📝 _30秒オープニングのHook→Stakeテンプレ_


### Rule 09 — Tự giới thiệu khi pitch / プレゼン自己紹介

**ズン (em Dũng):**

> 🇯🇵 「本日は〇〇の主担当としてご提案いたします。〇〇を担当しており、本案件はその継続でございます。」
>
> 🇻🇳 *Hôm nay em xin trình bày với tư cách phụ trách chính 〇〇 ạ. Em đang phụ trách 〇〇, dự án lần này là phần kế tiếp đó ạ.*
>
> 📝 _プレゼン自己紹介3文テンプレ_


### Rule 10 — Bối cảnh + agenda speech / 背景＋アジェンダ発話

**ズン (em Dũng):**

> 🇯🇵 「本日は大きく〇部構成でお話しします。本日のゴールは〇〇でございます。」
>
> 🇻🇳 *Hôm nay em xin trình bày theo 〇 phần lớn ạ. Goal hôm nay là 〇〇 ạ.*
>
> 📝 _アジェンダ＋ゴール宣言_


### Rule 11 — Hook 3 pattern (story / data / question) / フックの3パターン (story/data/question)

**ズン (em Dũng):**

> 🇯🇵 「〇〇に〇時間使っているこの作業、〇分に圧縮できます。」
>
> 🇻🇳 *Cái việc đang ngốn 〇 tiếng cho 〇〇 này, có thể nén xuống còn 〇 phút.*
>
> 📝 _データ型 hook テンプレ_


### Rule 12 — Mood setting cho khách Nhật conservative / 日本顧客向けムード作り

**リン (em Linh):**

> 🇯🇵 「御社の〇〇に確実に貢献いたします。安心してお任せいただける仕組みでございます。」
>
> 🇻🇳 *Chắc chắn sẽ đóng góp cho 〇〇 bên quý vị ạ. Là cơ chế quý vị có thể yên tâm giao phó ạ.*
>
> 📝 _JP positive lexicon の標準フレーズ_


### Rule 13 — Time-keeping promise / 時間管理の約束

**ズン (em Dũng):**

> 🇯🇵 「本日は〇分の枠でいただいております。プレゼン〇分、Q&A 〇分の構成でございます。」
>
> 🇻🇳 *Hôm nay quý vị đã dành cho em khung 〇 phút ạ. Cấu trúc gồm pitch 〇 phút, Q&A 〇 phút.*
>
> 📝 _時間配分の口頭コミット_

**ズン (em Dũng):**

> 🇯🇵 「〇分経過した時点で必ず Q&A に切り替えます、たとえ本編が途中でも。」
>
> 🇻🇳 *Đến 〇 phút em chắc chắn chuyển sang Q&A, dù phần chính chưa hết.*
>
> 📝 _Hard commit on time keeping_



## Phần III — Gọi điện thoại đi

### Rule 14 — Logical flow markers / 論理マーカー (まず／次に／最後に)

**ズン (em Dũng):**

> 🇯🇵 「〇点を実装いたします。まず1点目、〇〇。次に2点目、〇〇。最後の3点目、〇〇。」
>
> 🇻🇳 *Sẽ implement 〇 điểm ạ. Đầu tiên điểm 1, 〇〇. Tiếp theo điểm 2, 〇〇. Cuối cùng điểm 3, 〇〇.*
>
> 📝 _3点 enumerate の標準形_

**ズン (em Dũng):**

> 🇯🇵 「続いて、〇〇にまいります。」
>
> 🇻🇳 *Em xin chuyển sang phần 〇〇 ạ.*
>
> 📝 _Section transition_


### Rule 15 — Data presentation / データ提示

**ズン (em Dũng):**

> 🇯🇵 「出典は2024年Q3〜Q4 弊社運用ログ集計、対象SKU=120、月次平均でございます。」
>
> 🇻🇳 *Nguồn là tổng hợp log vận hành Q3-Q4/2024 bên em, đối tượng SKU=120, trung bình theo tháng ạ.*
>
> 📝 _出典の口頭明示_


### Rule 16 — Demo flow trong pitch / デモの流れ

**トゥアンリーダー (anh Tuấn):**

> 🇯🇵 「通常〇〇分かかる作業が、〇〇分で完了します。」
>
> 🇻🇳 *Việc thường mất 〇〇 phút nay xong trong 〇〇 phút.*
>
> 📝 _Key moment 数字対比_

**ズン (em Dũng):**

> 🇯🇵 「ここがポイントです。」
>
> 🇻🇳 *Đây là điểm mấu chốt ạ.*
>
> 📝 _Key moment 注目誘導_


### Rule 17 — So sánh phương án (matrix) / 比較マトリクス

**ズン (em Dũng):**

> 🇯🇵 「弊社推奨はB案でございます。投資額対効果が最も高く、運用負荷も中程度のためです。」
>
> 🇻🇳 *Bên em khuyến nghị case B ạ. Vì hiệu quả trên đầu tư cao nhất, tải vận hành cũng ở mức vừa ạ.*
>
> 📝 _推奨案の口頭明示_


### Rule 18 — Customer voice / case study / 顧客の声・事例

**リン (em Linh):**

> 🇯🇵 「〇〇株式会社様にて、〇〇を〇〇から〇〇に削減いたしました(〇%削減)。」
>
> 🇻🇳 *Tại cty 〇〇, đã giảm 〇〇 từ 〇〇 xuống 〇〇 (giảm 〇%).*
>
> 📝 _Customer case 数字提示テンプレ_


### Rule 19 — Pricing slide tactful / 価格スライドの作り方

**ズン (em Dũng):**

> 🇯🇵 「価格の前に3点ご説明します。Anchor、Tier、ROI でございます。」
>
> 🇻🇳 *Trước báo giá em xin trình bày 3 điểm ạ. Anchor, Tier, ROI ạ.*
>
> 📝 _価格スライド導入_

**ズン (em Dũng):**

> 🇯🇵 「3点理由がございます。①〇〇、②〇〇、③〇〇でございます。」
>
> 🇻🇳 *Có 3 lý do ạ. ① 〇〇, ② 〇〇, ③ 〇〇 ạ.*
>
> 📝 _「高い」反論への3点回答_


### Rule 20 — Risk & mitigation / リスクと対策

**リン (em Linh):**

> 🇯🇵 「リスクは〇点、いずれも対策をご用意しております。」
>
> 🇻🇳 *Có 〇 rủi ro ạ, mỗi cái đều có đối sách kèm theo.*
>
> 📝 _リスクスライド導入_


### Rule 21 — Roadmap visualization / ロードマップ可視化

**ズン (em Dũng):**

> 🇯🇵 「マイルストーン〇点、各 owner は弊社〇〇＋御社〇〇でございます。」
>
> 🇻🇳 *Có 〇 milestone ạ, owner mỗi cái là 〇〇 bên em + 〇〇 bên quý vị ạ.*
>
> 📝 _Roadmap milestone宣言_



## Phần IV — Tình huống khó

### Rule 22 — Mời Q&A formal / Q&A導入

**ズン (em Dũng):**

> 🇯🇵 「ご質問・ご意見をいただけますでしょうか。どんな点でも構いません。」
>
> 🇻🇳 *Mong quý vị cho em xin câu hỏi hoặc ý kiến ạ. Bất cứ điểm nào cũng được ạ.*
>
> 📝 _Q&A formal 招待の標準_

**ズン (em Dũng):**

> 🇯🇵 「〇〇様、ありがとうございます。〜の件ですね。」
>
> 🇻🇳 *Anh/chị 〇〇, em cảm ơn ạ. Về vấn đề ~ ạ.*
>
> 📝 _質問受領のリピート確認_


### Rule 23 — Trả lời câu hỏi khó — LASR / 難しい質問への対応 (LASR)

**ズン (em Dũng):**

> 🇯🇵 「ご質問の趣旨は〇〇と理解しました、よろしいでしょうか？」
>
> 🇻🇳 *Em hiểu ý câu hỏi là 〇〇, có đúng không ạ?*
>
> 📝 _LASR の A (Acknowledge) — 趣旨確認_

**ズン (em Dũng):**

> 🇯🇵 「以上、お答えできておりますでしょうか？」
>
> 🇻🇳 *Như trên có giải đáp được không ạ?*
>
> 📝 _LASR の R (Redirect) — 回答十分性確認_


### Rule 24 — Mang về xem xét cho câu chưa biết / 不明事項の持ち帰り

**ズン (em Dũng):**

> 🇯🇵 「私の方で即答できかねます。〇日までに〇〇に確認の上、ご回答いたします。」
>
> 🇻🇳 *Em không thể trả lời ngay tại chỗ ạ. Em sẽ confirm với 〇〇 và phản hồi trước 〇 ạ.*
>
> 📝 _持ち帰り標準フレーズ — deadline + 確認者 セット_

**ズン (em Dũng):**

> 🇯🇵 「お時間〇営業日いただいてよろしいでしょうか？」
>
> 🇻🇳 *Cho em xin 〇 ngày làm việc được không ạ?*
>
> 📝 _Deadline 提案＋許可_


### Rule 25 — Đối phó câu hostile / 敵対的質問への切り返し

**ズン (em Dũng):**

> 🇯🇵 「ご指摘の点、もっともでございます。ご懸念は〇〇と理解しました。」
>
> 🇻🇳 *Điểm anh nêu rất hợp lý ạ. Em hiểu mối quan ngại của anh là 〇〇 ạ.*
>
> 📝 _敵対的質問への bridge phrase 王道_

**ズン (em Dũng):**

> 🇯🇵 「いずれの方向性をご希望でしょうか？」
>
> 🇻🇳 *Quý vị muốn theo hướng nào ạ?*
>
> 📝 _選択肢提示 flip control_


### Rule 26 — Closing với CTA / クロージング＋CTA

**ズン (em Dũng):**

> 🇯🇵 「本日のまとめは3点ございます。①〜、②〜、③〜。」
>
> 🇻🇳 *Tóm tắt hôm nay có 3 điểm ạ. ① ~, ② ~, ③ ~.*
>
> 📝 _Closing recap 3点 標準_

**ズン (em Dũng):**

> 🇯🇵 「次のステップは3つ。〇〇までに〇〇、〇〇までに〇〇、〇〇までに〇〇。」
>
> 🇻🇳 *Next step 3 mục: trước 〇〇 thì 〇〇, trước 〇〇 thì 〇〇, trước 〇〇 thì 〇〇.*
>
> 📝 _CTA numbered 標準_


### Rule 27 — Thank-you slide / 謝辞スライド

**ズン (em Dũng):**

> 🇯🇵 「謝辞スライドは4要素 (御礼・Recap・連絡先・QR) で構成いたしました。」
>
> 🇻🇳 *Slide cảm ơn em làm theo 4 thành phần (cảm ơn, recap, contact, QR) ạ.*
>
> 📝 _謝辞スライド構成説明_


### Rule 28 — Post-pitch follow-up email / 事後フォローメール

**ズン (em Dũng):**

> 🇯🇵 「本日はお忙しい中、お時間を頂き、誠にありがとうございました。」
>
> 🇻🇳 *Hôm nay quý vị bận rộn vẫn dành thời gian, em xin chân thành cảm ơn ạ.*
>
> 📝 _Follow-up メール冒頭の御礼定型_

**ズン (em Dũng):**

> 🇯🇵 「持ち帰り事項につきましては、〇日〇時までに別メールでご回答いたします。」
>
> 🇻🇳 *Về phần mang về xem xét, em sẽ phản hồi qua mail riêng trước 〇h ngày 〇 ạ.*
>
> 📝 _Follow-up メール内 持ち帰り deadline 明記_



## Phần V — Voicemail, Online & Best Practice

### Rule 29 — Online presentation / オンラインプレゼン

**ズン (em Dũng):**

> 🇯🇵 「5要素 setup 完了です: 目線・照明・音声・マイク・背景。」
>
> 🇻🇳 *Em hoàn tất setup 5 yếu tố ạ: eye line, lighting, voice, mic, background.*
>
> 📝 _オンラインプレゼン setup チェック_

**ズン (em Dũng):**

> 🇯🇵 「Chat の質問は〇〇さんが verbal で渡してください。」
>
> 🇻🇳 *Câu hỏi từ chat phiền 〇〇 san relay verbal giúp em.*
>
> 📝 _Chat moderator 役割依頼_


### Rule 30 — Hybrid presentation / ハイブリッドプレゼン

**ズン (em Dũng):**

> 🇯🇵 「まずオンラインの皆様、音声・映像とも問題ございませんでしょうか？」
>
> 🇻🇳 *Trước tiên quý vị online, âm thanh và hình ảnh có vấn đề gì không ạ?*
>
> 📝 _ハイブリッド冒頭 online 優先 greet_

**ズン (em Dũng):**

> 🇯🇵 「〇〇様より〜のご質問でございます。」
>
> 🇻🇳 *Anh/chị 〇〇 vừa hỏi 〜 ạ.*
>
> 📝 _室内質問の復唱パターン_


### Rule 31 — Tech failure recovery / 技術トラブル復旧

**ズン (em Dũng):**

> 🇯🇵 「申し訳ございません、〜トラブルが発生しております。復旧手順に切り替えさせていただきます。」
>
> 🇻🇳 *Xin lỗi quý vị, vừa phát sinh sự cố ~. Em xin phép chuyển sang quy trình recovery ạ.*
>
> 📝 _技術トラブル acknowledge 標準_

**ズン (em Dũng):**

> 🇯🇵 「復旧中ですが、内容を進めさせていただきます。」
>
> 🇻🇳 *Đang recover nhưng em xin phép tiếp tục nội dung ạ.*
>
> 📝 _Entertain verbal continuation_


### Rule 32 — Co-presenter handoff / 共同プレゼンの引き継ぎ

**ズン (em Dũng):**

> 🇯🇵 「以上で〇〇を終わらせていただきました。次の〇〇につきましては、〇〇よりご説明させていただきます。」
>
> 🇻🇳 *Em xin phép kết thúc 〇〇 ạ. Phần 〇〇 tiếp theo sẽ do 〇〇 trình bày ạ.*
>
> 📝 _Co-presenter handoff bridge 標準_

**ハー (anh Hà):**

> 🇯🇵 「〇〇でございます。〜について、〇点ございます。」
>
> 🇻🇳 *Tôi là 〇〇 ạ. Về 〜, có 〇 điểm ạ.*
>
> 📝 _Handoff 受け継ぎ最短 acknowledge_


### Rule 33 — Recording + share / 録画と共有

**ズン (em Dũng):**

> 🇯🇵 「本日 本セッションを録画させていただきます。全員のご許可をいただいてから REC 開始いたします。」
>
> 🇻🇳 *Hôm nay em xin phép quay video buổi này ạ. Em xin permission của tất cả rồi mới bắt đầu REC ạ.*
>
> 📝 _REC 全員同意取得_

**ズン (em Dũng):**

> 🇯🇵 「Drive 閲覧専用リンク、Email 限定 access、〇日後 自動 expire です。」
>
> 🇻🇳 *Link Drive read-only, giới hạn email, tự động expire sau 〇 ngày ạ.*
>
> 📝 _限定共有 framework 説明_


### Rule 34 — Self-review checklist / 自己評価

**ズン (em Dũng):**

> 🇯🇵 「Self-review 12項目、平均 〇/5。3 strengths と 3 improvements を抽出いたしました。」
>
> 🇻🇳 *Self-review 12 item, trung bình 〇/5 ạ. Em đã extract 3 strengths và 3 improvements ạ.*
>
> 📝 _Self-review 報告標準_

**ズン (em Dũng):**

> 🇯🇵 「〇〇までに〇〇 drill、〇〇までに〇〇 暗唱完了いたします。」
>
> 🇻🇳 *Trước 〇〇 em làm xong drill 〇〇, trước 〇〇 em thuộc xong 〇〇 ạ.*
>
> 📝 _Improvement の deadline + drill commit_


### Rule 35 — Iteration cycle / 改善サイクル

**リン (em Linh):**

> 🇯🇵 「次サイクルは Rehearse 録画 + Peer pilot + Senior pilot + Live + Group retro で行きます。」
>
> 🇻🇳 *Cycle sau em đi: Rehearse có quay + Peer pilot + Senior pilot + Live + Group retro ạ.*
>
> 📝 _4-step cycle commit_

**フオン副部長 (chị Hương):**

> 🇯🇵 「次サイクルまでに rubric 平均 〇/5 を目標にする。」
>
> 🇻🇳 *Đến cycle sau target trung bình rubric 〇/5.*
>
> 📝 _Quantitative target setting_



---

# Phụ lục B — Từ vựng Tổng hợp / 語彙総合集

*Tổng hợp tất cả từ vựng phone-related từ 60 rules. Sắp xếp theo Phần.*

*Đọc romaji và nghĩa Việt giúp người Việt học JP business dễ tra cứu.*

---


## Phần I — Nền tảng trước nhấc máy

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 漢字 / Tiếng Nhật | よみ | Nghĩa | rule_01 |
| 準備 | じゅんび | Chuẩn bị | rule_01 |
| 聴衆 | ちょうしゅう | Audience | rule_01 |
| 決裁者 | けっさいしゃ | Decision maker | rule_01 |
| アウトプット | autoputto | Output | rule_01 |
| バックアップ | bakkuappu | Backup | rule_01 |
| 妥協 | だきょう | Thỏa hiệp / compromise | rule_01 |
| 譲れない | ゆずれない | Không thể nhượng bộ | rule_01 |
| 結論 | けつろん | Kết luận | rule_02 |
| 根拠 | こんきょ | Luận cứ / căn cứ | rule_02 |
| 削減 | さくげん | Cắt giảm | rule_02 |
| 認知負荷 | にんちふか | Tải nhận thức (cognitive load) | rule_02 |
| 改善 | かいぜん | Cải thiện | rule_02 |
| スキャン | sukyan | Quét nhanh | rule_02 |
| 共通認識 | きょうつうにんしき | Nhận thức chung | rule_03 |
| 問題発生 | もんだいはっせい | Vấn đề phát sinh | rule_03 |
| 誘導 | ゆうどう | Dẫn dắt | rule_03 |
| 再発 | さいはつ | Tái phát | rule_03 |
| 隠す | かくす | Che giấu | rule_03 |
| 圧縮 | あっしゅく | Nén / cô đọng | rule_03 |
| 視覚階層 | しかくかいそう | Visual hierarchy | rule_04 |
| フォント | fonto | Font | rule_04 |
| 揃え | そろえ | Alignment | rule_04 |
| 余白 | よはく | Margin / white space | rule_04 |
| 行間 | ぎょうかん | Line spacing | rule_04 |
| 潰れる | つぶれる | Bị bể / mờ (chữ) | rule_04 |
| プロジェクター | purojekutaa | Máy chiếu | rule_04 |
| 色彩 | しきさい | Màu sắc | rule_05 |
| 保守的 | ほしゅてき | Bảo thủ / conservative | rule_05 |
| 老舗 | しにせ | Công ty truyền thống lâu đời | rule_05 |
| 派手 | はで | Sặc sỡ / lòe loẹt | rule_05 |
| 警告 | けいこく | Cảnh báo | rule_05 |
| 装飾 | そうしょく | Trang trí | rule_05 |
| 軽薄 | けいはく | Nhẹ dạ / nông nổi | rule_05 |
| アクセント | akusento | Accent (màu nhấn) | rule_05 |
| 密度 | みつど | Mật độ | rule_06 |
| 念のため | ねんのため | Cho chắc / phòng hờ | rule_06 |
| 削られる | けずられる | Bị cắt giảm | rule_06 |
| 監査 / audit | かんさ | Kiểm tra / soát | rule_06 |
| 死守 | ししゅ | Bảo vệ tới cùng | rule_06 |
| 追加 | ついか | Thêm vào | rule_06 |
| 復旧 | ふっきゅう | Khôi phục | rule_07 |
| 慌てる | あわてる | Hoảng loạn | rule_07 |
| 紛失 | ふんしつ | Thất lạc / mất | rule_07 |
| 保険 | ほけん | Bảo hiểm / dự phòng | rule_07 |
| 配布 | はいふ | Phát ra (handout) | rule_07 |
| テザリング | tezaringu | Tethering / phát Wi-Fi từ điện thoại | rule_07 |
| アダプタ | adaputa | Adapter | rule_07 |


## Phần II — Nhận điện thoại

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 残課題 | ざんかだい | Vấn đề còn lại | rule_08 |
| 方向性 | ほうこうせい | Hướng đi | rule_08 |
| 集中 | しゅうちゅう | Tập trung | rule_08 |
| 痛み | いたみ | Pain (point) | rule_08 |
| 構える | かまえる | Sẵn sàng (cầm bút etc) | rule_08 |
| 主担当 | しゅたんとう | Người phụ trách chính | rule_09 |
| 継続 | けいぞく | Tiếp tục / kế thừa | rule_09 |
| 任される | まかされる | Được giao trách nhiệm | rule_09 |
| 実績 | じっせき | Thành tích / kinh nghiệm | rule_09 |
| 信頼性 | しんらいせい | Độ tin cậy (credibility) | rule_09 |
| 専門家 | せんもんか | Chuyên gia | rule_09 |
| 背景 | はいけい | Bối cảnh | rule_10 |
| 論点 | ろんてん | Vấn đề / điểm bàn | rule_10 |
| 構成 | こうせい | Cấu trúc | rule_10 |
| 第1部 | だいいちぶ | Phần 1 | rule_10 |
| ゴール | gooru | Goal | rule_10 |
| 振り返り | ふりかえり | Nhìn lại / retrospective | rule_10 |
| 分析 | ぶんせき | Phân tích | rule_10 |
| 滑る | すべる | Trượt (joke fail / không hấp dẫn) | rule_11 |
| 中小企業 | ちゅうしょうきぎょう | SME / doanh nghiệp vừa và nhỏ | rule_11 |
| 議論モード | ぎろんモード | Chế độ thảo luận | rule_11 |
| 驚き | おどろき | Sự ngạc nhiên | rule_11 |
| 修辞疑問 | しゅうじぎもん | Câu hỏi tu từ (rhetorical) | rule_11 |
| 着実 | ちゃくじつ | Chắc chắn từng bước | rule_12 |
| 確実 | かくじつ | Chắc chắn | rule_12 |
| 丁寧 | ていねい | Cẩn thận / chỉn chu | rule_12 |
| 堅実 | けんじつ | Vững chắc | rule_12 |
| 胡散臭い | うさんくさい | Đáng ngờ / mờ ám | rule_12 |
| 売り急ぎ | うりいそぎ | Vội bán hàng | rule_12 |
| 革命的 | かくめいてき | Cách mạng (hype word) | rule_12 |
| 詐欺 | さぎ | Lừa đảo | rule_12 |
| 枠 | わく | Khung / slot | rule_13 |
| 切り替え | きりかえ | Chuyển đổi | rule_13 |
| 経過 | けいか | Đã trôi qua | rule_13 |
| タイマー | taimaa | Timer | rule_13 |
| 可視化 | かしか | Visualization | rule_13 |
| 頑張って | がんばって | Cố gắng (vague — tránh khi commit) | rule_13 |
| 好印象 | こういんしょう | Ấn tượng tốt | rule_13 |


## Phần III — Gọi điện thoại đi

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 論理マーカー | ろんりマーカー | Logical marker | rule_14 |
| 続いて | つづいて | Tiếp theo | rule_14 |
| まとめる | まとめる | Tổng kết / gói lại | rule_14 |
| 補足 | ほそく | Bổ sung / supplement | rule_14 |
| 高度化 | こうどか | Nâng cao / sophistication | rule_14 |
| 再発予防 | さいはつよぼう | Phòng ngừa tái phát | rule_14 |
| 棒グラフ | ぼうグラフ | Biểu đồ cột | rule_15 |
| 折れ線グラフ | おれせんグラフ | Biểu đồ đường | rule_15 |
| 円グラフ | えんグラフ | Biểu đồ tròn (pie) | rule_15 |
| 散布図 | さんぷず | Biểu đồ phân tán | rule_15 |
| 出典 | しゅってん | Nguồn | rule_15 |
| 集計 | しゅうけい | Tổng hợp số liệu | rule_15 |
| 注記 | ちゅうき | Chú thích | rule_15 |
| 差異率 | さいりつ | Tỷ lệ sai lệch | rule_15 |
| ナレーション | nareeshon | Narration / lồng tiếng | rule_16 |
| 操作 | そうさ | Thao tác | rule_16 |
| 承認 | しょうにん | Phê duyệt | rule_16 |
| 検出 | けんしゅつ | Phát hiện | rule_16 |
| 倉庫担当 | そうこたんとう | Phụ trách kho | rule_16 |
| 効果実感 | こうかじっかん | Cảm nhận hiệu quả | rule_16 |
| 対比 | たいひ | Đối chiếu | rule_16 |
| 比較マトリクス | ひかくマトリクス | Comparison matrix | rule_17 |
| 評価軸 | ひょうかじく | Tiêu chí đánh giá | rule_17 |
| 推奨 | すいしょう | Khuyến nghị | rule_17 |
| 運用負荷 | うんようふか | Tải vận hành | rule_17 |
| 投資額対効果 | とうしがくたいこうか | Hiệu quả trên đầu tư | rule_17 |
| 責任放棄 | せきにんほうき | Bỏ trách nhiệm | rule_17 |
| 絞り込む | しぼりこむ | Thu hẹp lại | rule_17 |
| 顧客の声 | こきゃくのこえ | Customer voice / testimonial | rule_18 |
| 事例 | じれい | Case study | rule_18 |
| 引用 | いんよう | Trích dẫn | rule_18 |
| 匿名 | とくめい | Ẩn danh | rule_18 |
| 月末締め | げつまつじめ | Chốt cuối tháng | rule_18 |
| 残業 | ざんぎょう | Tăng ca | rule_18 |
| 大手 | おおて | Lớn / major | rule_18 |
| 見積り | みつもり | Báo giá | rule_19 |
| 投資回収 | とうしかいしゅう | Hoàn vốn | rule_19 |
| 削減効果 | さくげんこうか | Hiệu quả cắt giảm | rule_19 |
| 業界平均 | ぎょうかいへいきん | Trung bình ngành | rule_19 |
| 反論 | はんろん | Phản biện | rule_19 |
| 付帯 | ふたい | Đi kèm | rule_19 |
| 累計 | るいけい | Cộng dồn | rule_19 |
| 折れる | おれる | Bị bẻ / chùn (đàm phán) | rule_19 |
| 発生確率 | はっせいかくりつ | Xác suất xảy ra | rule_20 |
| 影響度 | えいきょうど | Mức độ ảnh hưởng | rule_20 |
| 対策 | たいさく | Đối sách | rule_20 |
| 監査 | かんさ | Kiểm toán / audit | rule_20 |
| 並行 (parallel) | へいこう | Song song | rule_20 |
| 移行 | いこう | Di chuyển / migrate | rule_20 |
| 欠損 | けっそん | Thiếu / mất mát | rule_20 |
| 要警戒 | ようけいかい | Cần cảnh giác | rule_20 |
| ロードマップ | roodomappu | Roadmap | rule_21 |
| マイルストーン | mairusutoon | Milestone | rule_21 |
| 成果物 | せいかぶつ | Output / sản phẩm | rule_21 |
| 要件定義 | ようけんていぎ | Định nghĩa yêu cầu | rule_21 |
| sign-off | sain offu | Phê duyệt cuối | rule_21 |
| 前提条件 | ぜんていじょうけん | Điều kiện tiên quyết | rule_21 |
| 半信半疑 | はんしんはんぎ | Bán tín bán nghi | rule_21 |


## Phần IV — Tình huống khó

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| 質疑応答 | しつぎおうとう | Q&A | rule_22 |
| 沈黙 | ちんもく | Silence | rule_22 |
| 挙手 | きょしゅ | Giơ tay | rule_22 |
| 構いません | かまいません | Không sao / không vấn đề | rule_22 |
| 承る | うけたまわる | (Khiêm) tiếp nhận, lắng nghe | rule_22 |
| ご意見 | ごいけん | Ý kiến (tôn kính) | rule_22 |
| 趣旨 | しゅし | Ý chính / chủ đích | rule_23 |
| 重複 | ちょうふく | Trùng / overlap | rule_23 |
| 調整 | ちょうせい | Điều phối | rule_23 |
| 責任者 | せきにんしゃ | Người phụ trách | rule_23 |
| 傾聴 | けいちょう | Lắng nghe (active) | rule_23 |
| 月次 | げつじ | Hàng tháng | rule_23 |
| 不明な点 | ふめいなてん | Điểm chưa rõ | rule_23 |
| 持ち帰る | もちかえる | Mang về (xem xét) | rule_24 |
| 確認 | かくにん | Xác nhận | rule_24 |
| 即答 | そくとう | Trả lời ngay | rule_24 |
| 〜かねます | - | Không thể (formal) | rule_24 |
| 営業日 | えいぎょうび | Ngày làm việc | rule_24 |
| 期限 | きげん | Hạn | rule_24 |
| 認証 | にんしょう | Xác thực / authentication | rule_24 |
| 統合 | とうごう | Tích hợp / integration | rule_24 |
| 敵対的 | てきたいてき | Đối nghịch / hostile | rule_25 |
| 切り返す | きりかえす | Đáp trả khéo | rule_25 |
| ご指摘 | ごしてき | Sự chỉ ra (kính ngữ) | rule_25 |
| もっとも | - | Hợp lý / có lý | rule_25 |
| ご懸念 | ごけねん | Mối quan ngại (kính) | rule_25 |
| 妥当性 | だとうせい | Tính hợp lý | rule_25 |
| 内訳 | うちわけ | Phân tích chi tiết | rule_25 |
| クロージング | kuroojingu | Closing | rule_26 |
| まとめ | matome | Tóm tắt / recap | rule_26 |
| 次のステップ | つぎのすてっぷ | Next step | rule_26 |
| 都合 | つごう | Sự thuận tiện | rule_26 |
| 法務 | ほうむ | Pháp chế | rule_26 |
| サインオフ | sain in ofu | Sign-off | rule_26 |
| 議事メモ | ぎじめも | Meeting note | rule_26 |
| 頂戴 | ちょうだい | (Khiêm) nhận / xin | rule_26 |
| 謝辞 | しゃじ | Lời cảm ơn | rule_27 |
| 連絡先 | れんらくさき | Contact | rule_27 |
| 閲覧 | えつらん | Xem (read-only) | rule_27 |
| 営業時間 | えいぎょうじかん | Giờ làm việc | rule_27 |
| 退室 | たいしつ | Rời phòng | rule_27 |
| 情報密度 | じょうほうみつど | Mật độ thông tin | rule_27 |
| 直リンク | ちょくりんく | Direct link | rule_27 |
| 事後 | じご | Sau (sự việc) | rule_28 |
| 御礼 | おれい | Lời cảm ơn | rule_28 |
| 件名 | けんめい | Tiêu đề mail | rule_28 |
| 添付 | てんぷ | Đính kèm | rule_28 |
| 引き続き | ひきつづき | Tiếp tục (formal) | rule_28 |


## Phần V — Voicemail, Online & Best Practice

| 漢字 / Tiếng Nhật | Cách đọc (Romaji) | Nghĩa Việt | Lần đầu xuất hiện |
|------|------|------|------|
| カメラ目線 | かめらめせん | Eye contact qua camera | rule_29 |
| 逆光 | ぎゃっこう | Backlit | rule_29 |
| 照明 | しょうめい | Đèn / lighting | rule_29 |
| ピンマイク | pinmaiku | Mic ve áo / lavalier | rule_29 |
| 共有 | きょうゆう | Share (screen) | rule_29 |
| モデレーター | moderator | Moderator | rule_29 |
| ハイブリッド | haiburiddo | Hybrid | rule_30 |
| 室内 | しつない | Trong phòng | rule_30 |
| 復唱 | ふくしょう | Lặp lại | rule_30 |
| 切替 | きりかえ | Chuyển đổi | rule_30 |
| 達成率 | たっせいりつ | Tỉ lệ đạt | rule_30 |
| クリア | kuria | Rõ (sound) | rule_30 |
| 優先する | yuusen suru | Ưu tiên | rule_30 |
| トラブル | toraburu | Trouble / sự cố | rule_31 |
| ハンドアウト | handoauto | Handout | rule_31 |
| お騒がせ | おさわがせ | Phiền hà / xáo trộn | rule_31 |
| 引き継ぎ | ひきつぎ | Bàn giao / handoff | rule_32 |
| 共同 | きょうどう | Cộng tác / chung | rule_32 |
| バトンタッチ | batontacchi | Chuyền baton | rule_32 |
| 概要 | がいよう | Tổng quan | rule_32 |
| アーキテクチャ | aakitekucha | Architecture | rule_32 |
| 受け継ぎ | うけつぎ | Tiếp nhận | rule_32 |
| 録画 | ろくが | Quay video | rule_33 |
| 許可 | きょか | Cho phép | rule_33 |
| 編集 | へんしゅう | Biên tập / edit | rule_33 |
| 限定 | げんてい | Giới hạn | rule_33 |
| 機密 | きみつ | Bảo mật / confidential | rule_33 |
| 同意 | どうい | Đồng ý | rule_33 |
| 失効 | しっこう | Hết hiệu lực / expire | rule_33 |
| 自己評価 | じこひょうか | Tự đánh giá | rule_34 |
| ルーブリック | ruuburikku | Rubric | rule_34 |
| 強み | つよみ | Điểm mạnh | rule_34 |
| 改善点 | かいぜんてん | Điểm cần cải thiện | rule_34 |
| 暗唱 | あんしょう | Học thuộc | rule_34 |
| 反射 | はんしゃ | Phản xạ | rule_34 |
| 投資 | とうし | Đầu tư | rule_34 |
| 改善サイクル | かいぜんさいくる | Iteration cycle | rule_35 |
| リハーサル | rihaasaru | Rehearse | rule_35 |
| パイロット | pairotto | Pilot run | rule_35 |
| レトロ | retoro | Retrospective | rule_35 |
| 比較 | ひかく | So sánh | rule_35 |
| 目標 | もくひょう | Mục tiêu | rule_35 |


**Tổng:** 234 từ unique đã liệt kê trong sách.


---

# Phụ lục C — BJT Practice Tổng Hợp / BJT練習問題集

*Tổng hợp tất cả BJT practice questions từ 60 rules, sắp xếp theo level và skill.*

*Dùng để luyện thi BJT business Japanese — câu hỏi có audio prompt được link đến rule gốc.*

---


## Level J3 (31 câu)

### J3.1 (từ rule_01 — Checklist 7 câu hỏi trước khi soạn)

**Skill:** 場面把握

**Q:** プレゼン準備で最初にやるべきは？

- A) PowerPoint を開いてデザインを始める
- B) 競合他社のスライドをコピーする
- **C) 7つの問い(対象/目的/時間/場所/出力/リスク/バックアップ)に答える**
- D) ストック画像を集める

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 デザイン前に対象・目的・期待出力を明確にしないと、後で全面再設計になる。
- 🇻🇳 Phải làm rõ đối tượng / mục đích / output trước khi design — không thì redo lại toàn bộ.

### J3.2 (từ rule_02 — Quy tắc 1-slide-1-message)

**Skill:** 表現読解

**Q:** 1スライド1メッセージのルールに最も合うタイトルはどれ？

- A) Phase 3 について
- B) 在庫管理システムの概要
- **C) Phase 3 で在庫差異を月平均5%→1%に削減**
- D) 今後の課題と展望

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 結論＋数字＋動詞が入ったタイトルがベスト。「〜について」「〜の概要」はテーマであって結論ではない。
- 🇻🇳 Title có kết luận + số + động từ là tốt nhất. 「〜について」「〜の概要」 chỉ là chủ đề, không phải kết luận.

### J3.3 (từ rule_03 — Đường mạch câu chuyện (SCQA))

**Skill:** 場面把握

**Q:** SCQA フレームワークで A(Answer) は何を指すか？

- A) 聴衆と共通の現状認識
- B) 現状からの変化・問題発生
- C) 本日決めたい問い
- **D) 提案・解決策**

**Đáp án:** D

**Giải thích / 解説:**
- 🇯🇵 S=現状、C=変化(問題)、Q=問い、A=答え(提案)。Aは最後に置く。
- 🇻🇳 S=hiện trạng, C=vấn đề, Q=câu hỏi, A=đáp án (đề xuất). A đặt cuối.

### J3.4 (từ rule_04 — Visual hierarchy & font)

**Skill:** 場面把握

**Q:** プロジェクターでプレゼンする場合、本文の最小フォントサイズは？

- A) 12pt
- B) 16pt
- **C) 20pt**
- D) 30pt

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 本文は20pt以上が原則。後列でも読めるか実機テスト推奨。
- 🇻🇳 Body tối thiểu 20pt. Phải test thực tế trên projector từ hàng cuối.

### J3.5 (từ rule_05 — Color psychology JP business)

**Skill:** 場面把握

**Q:** 日本の老舗顧客向けプレゼンで、タイトルの色として最も適切なのは？

- A) 鮮やかな赤
- B) ネオングリーン
- **C) ネイビー or チャコール**
- D) 鮮やかな黄色

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 保守的なネイビー・チャコールが institution の信頼感を伝える。赤は警告・CTA専用。
- 🇻🇳 Navy / charcoal truyền tín hiệu institution. Đỏ chỉ dành cho cảnh báo / CTA.

### J3.6 (từ rule_06 — Density rule (10-20-30))

**Skill:** 場面把握

**Q:** 30分のプレゼン枠で本編スライドの目安は？

- A) 5枚以内
- **B) 10-12枚**
- C) 20枚以上
- D) 30枚以上

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 1枚1.5-2分が目安。30分枠なら自己紹介+Q&Aを引いて10-12枚が安全ゾーン。
- 🇻🇳 1 slide tốn 1.5-2 phút. 30 phút trừ intro + Q&A → 10-12 slide là vùng an toàn.

### J3.7 (từ rule_07 — Backup plan (Plan B))

**Skill:** 場面把握

**Q:** プレゼン前日のバックアップ準備として最も不適切なのは？

- A) PDF版を USB×2本 + クラウドに保存
- B) オフラインデモを準備
- **C) クラウドのみに保存し当日 Wi-Fi で開く**
- D) HDMI/USB-C/VGA 3種のアダプタを持参

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 クラウドのみは Wi-Fi 落ちたら詰む。USB+ローカル+クラウドの3層が原則。
- 🇻🇳 Chỉ cloud thì Wi-Fi rớt là chết. Phải 3 lớp: USB + local + cloud.

### J3.8 (từ rule_08 — Hook 30 giây mở)

**Skill:** 表現読解

**Q:** プレゼン冒頭30秒として最も効果的なのは？

- A) 本日はお忙しい中…弊社のご紹介から始めます
- **B) 数字＋本日決めたいこと＋自己紹介**
- C) 全スライドの目次読み上げ
- D) 業界全体の長い背景説明

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Hook(数字)→Stake(決めること)→Promise(時間)→自己紹介の順が30秒で集中を確保する。
- 🇻🇳 Hook (số) → Stake (quyết gì) → Promise (thời gian) → tự giới thiệu — 30 giây này giữ được tập trung.

### J3.9 (từ rule_09 — Tự giới thiệu khi pitch)

**Skill:** 表現読解

**Q:** プレゼン冒頭の自己紹介で最も適切な構成は？

- A) 入社からの全 career timeline
- **B) 社名＋氏名＋本案件の役割＋why-me 1点 (30秒)**
- C) 資格・受賞歴の列挙
- D) 個人的な趣味の紹介

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 プレゼン自己紹介は『why-me』が1点あれば十分。30秒以内に絞る。
- 🇻🇳 Pitch self-intro chỉ cần 1 điểm 「why-me」. Gói gọn trong 30 giây.

### J3.10 (từ rule_10 — Bối cảnh + agenda speech)

**Skill:** 表現読解

**Q:** 6項目あるアジェンダを聴衆に伝える最良の方法は？

- A) 1つ目から6つ目まで番号順に読み上げる
- **B) 大きく3部にグルーピングして数を明示する**
- C) アジェンダスライドを飛ばす
- D) 全項目を同時に画面に並べてそのまま

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 認知負荷の上限は3 ± 1。6項目は3部にグループ化して伝える。
- 🇻🇳 Trần tải nhận thức là 3 ± 1. 6 mục phải gộp thành 3 phần để truyền đạt.

### J3.11 (từ rule_11 — Hook 3 pattern (story / data / question))

**Skill:** 場面把握

**Q:** 初対面の保守的な顧客向けプレゼンで最も安全な hook パターンは？

- A) 学生時代の長いストーリー
- **B) 驚きの数字から入る (データ型)**
- C) 鋭い修辞疑問を投げる
- D) 自社製品の機能列挙

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 保守的・初対面はデータ型が安全。Story はスキル要、Question は audience engaged 前提。
- 🇻🇳 Khách bảo thủ + lần đầu = data hook an toàn. Story cần skill, Question cần audience đã engaged.

### J3.12 (từ rule_12 — Mood setting cho khách Nhật conservative)

**Skill:** 表現読解

**Q:** 日本顧客向けプレゼンで「ゲームチェンジャー」を置き換えるなら？

- A) 革命的なソリューション
- **B) 業務改善に確実に貢献するソリューション**
- C) 圧倒的に最強のソリューション
- D) ファンタスティックなソリューション

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 JP business は『確実に』『着実に』『安心』が positive lexicon。Hype words は警戒される。
- 🇻🇳 JP business dùng 「确实」「chắc chắn」「yên tâm」 làm nhóm tích cực. Hype words bị đề phòng.

### J3.13 (từ rule_13 — Time-keeping promise)

**Skill:** 場面把握

**Q:** 30分プレゼン枠での時間管理コミットとして最も適切なのは？

- A) なるべくコンパクトに頑張ります
- **B) プレゼン20分、Q&A 10分。20分で必ずQ&Aに切替**
- C) 時間は相手次第
- D) 1時間くらいかかるかも

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 具体的時間 + hard commit + 切替トリガー が日本ビジネスの標準。曖昧表現は信頼を下げる。
- 🇻🇳 Time cụ thể + hard commit + trigger switch = chuẩn JP business. Mơ hồ làm giảm tin cậy.

### J3.14 (từ rule_14 — Logical flow markers)

**Skill:** 表現読解

**Q:** 本論で3点を述べる際、最も論理的に明確な表現は？

- A) 〇〇します。〇〇します。〇〇します
- **B) 3点ございます。まず1点目〇〇、次に2点目〇〇、最後の3点目〇〇**
- C) 色々あります
- D) そして〇〇、そして〇〇、そして〇〇

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 N点宣言→まず／次に／最後にの3層マーカーが論理を明確にする。
- 🇻🇳 Cấu trúc 3 lớp 「tuyên bố N điểm → đầu tiên / tiếp theo / cuối cùng」 làm rõ logic.

### J3.15 (từ rule_15 — Data presentation)

**Skill:** 場面把握

**Q:** Phase 1, 2, 3 を比較するチャートとして最適なのは？

- A) 3D pie chart 7色
- **B) 横棒グラフ 2-3色**
- C) ドーナツチャート
- D) ワードクラウド

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 比較データは棒グラフ。3Dや多色は perception distortion + noise。
- 🇻🇳 Data so sánh dùng bar chart. 3D / nhiều màu = bóp méo + noise.

### J3.16 (từ rule_16 — Demo flow trong pitch)

**Skill:** 場面把握

**Q:** プレゼンのデモ構成として最適なのは？

- A) 全機能のメニューツアー
- **B) Setup→User journey→Key moment→Recap の4ステップ**
- C) コードの内部解説
- D) 全画面のスクリーンショット羅列

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Setup→Journey→Key→Recap が3-4分で痛み解消を可視化する。Tour 型は engineer mindset。
- 🇻🇳 Setup→Journey→Key→Recap trong 3-4 phút để visualize giải pain. Tour = engineer mindset.

### J3.17 (từ rule_17 — So sánh phương án (matrix))

**Skill:** 場面把握

**Q:** プレゼンの比較マトリクスで最も適切な構成は？

- A) 5案×8軸の網羅型
- **B) 3案×4軸＋弊社推奨1案＋1文理由**
- C) 1案のみ
- D) 案数も軸数も無制限

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 3案×4軸が認知負荷の上限。推奨明示でvendorの責任を示す。
- 🇻🇳 3×4 là trần tải nhận thức. Khuyến nghị rõ = vendor có trách nhiệm.

### J3.18 (từ rule_18 — Customer voice / case study)

**Skill:** 表現読解

**Q:** 顧客事例スライドで信頼性が最も高い表現は？

- A) 某大手物流様から大変ご好評
- **B) 山田倉庫(株) 物流部山田部長: 『残業20→3時間に減少』**
- C) 多くのお客様にご満足
- D) 業界トップクラスのお客様

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 実名＋数字＋氏名付き引用が信頼の3点セット。匿名事例は marketing fluff。
- 🇻🇳 Tên thật + số + quote có tên người = bộ 3 tin cậy. Anonymous = marketing fluff.

### J3.19 (từ rule_20 — Risk & mitigation)

**Skill:** 場面把握

**Q:** プレゼンの risk スライドで最も信頼を高める書き方は？

- A) リスクは特にございません
- **B) 3-5リスクを発生確率＋影響度＋対策付きで開示**
- C) リスクは社内秘につき非公開
- D) リスクは全て低と表記

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 リスクなしは『未経験 / 嘘』signal。3-5個＋確率＋影響＋対策の正直開示が信頼を生む。
- 🇻🇳 「Không có rủi ro」 = signal non kinh nghiệm / dối. 3-5 cái + xác suất + tác động + đối sách = trung thực mới sinh lòng tin.

### J3.20 (từ rule_21 — Roadmap visualization)

**Skill:** 場面把握

**Q:** プレゼンの roadmap で日本顧客の信頼を最も得る形式は？

- A) テキストで『5月-12月実施』とのみ記載
- **B) Gantt + milestone (日付/成果物/owner pair) + buffer 明示**
- C) 全 milestone を TBD
- D) Single owner で全フェーズ

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Gantt visualization + milestone 3点 (日付/成果物/owner) + buffer 明示 が標準。TBD と single owner は信頼を下げる。
- 🇻🇳 Visualize Gantt + 3 điểm milestone (ngày / output / owner) + buffer rõ là chuẩn. TBD + single owner làm giảm trust.

### J3.21 (từ rule_22 — Mời Q&A formal)

**Skill:** 表現読解

**Q:** Q&A セクションを開く際、最も適切な表現は？

- A) 質問ありますか？
- B) 何かあれば言ってください。
- **C) ご質問・ご意見をいただけますでしょうか。**
- D) では、終わります。

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 「いただけますでしょうか」が最も formal かつ humble な依頼形。「ご意見」で範囲を質問以外にも拡張。
- 🇻🇳 「いただけますでしょうか」 là dạng request humble + formal nhất. 「ご意見」 mở rộng phạm vi ngoài câu hỏi.

### J3.22 (từ rule_24 — Mang về xem xét cho câu chưa biết)

**Skill:** 表現読解

**Q:** プレゼンで答えられない技術質問への最も適切な対応は？

- A) 「たぶんできると思います」と推測で答える
- B) 「わかりません」とだけ答える
- **C) 「即答できかねます。〇日までに〇〇に確認の上、ご回答いたします」と deadline 付きで持ち帰り**
- D) 「後で確認します」と曖昧に答える

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 持ち帰りには ① deadline 具体 ② 確認者 ③ 回答 format の3要素必須。「たぶん」は推測で危険、「わかりません」は cộc、「後で」は vague。
- 🇻🇳 持ち帰り cần 3 yếu tố: ① deadline cụ thể ② người confirm ③ format reply. 「たぶん」 nguy hiểm, 「わかりません」 cộc, 「後で」 vague.

### J3.23 (từ rule_26 — Closing với CTA)

**Skill:** 場面把握

**Q:** プレゼンのクロージングで必須の構成は？

- A) 「ありがとうございました」のみ
- **B) Recap 3点 + CTA (action + owner + deadline) + 次回会議確定**
- C) 全スライドをもう一度見せる
- D) Q&A に戻る

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Recap 3点で記憶定着、CTA で次の動きを明確化、次回会議その場確定で followup を最小化。
- 🇻🇳 Recap 3 = nhớ key. CTA = rõ động thái tiếp. Chốt lịch tại chỗ = giảm followup mail qua lại.

### J3.24 (từ rule_27 — Thank-you slide)

**Skill:** 場面把握

**Q:** 謝辞スライドに含めるべき要素は？

- A) 「Thank You」の文字のみ
- **B) 御礼+Recap 3点+連絡先 (営業時間付)+deck PDF の QR**
- C) presenter の写真と経歴
- D) 次回会議の議題

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 退室時 5-10 分映る slide。御礼+Recap+連絡先+QR の4要素で reinforcement と follow-up を促す。
- 🇻🇳 Slide chiếu 5-10 phút lúc khách rời. 4 thành phần: cảm ơn + recap + contact + QR để reinforce + thúc follow-up.

### J3.25 (từ rule_28 — Post-pitch follow-up email)

**Skill:** 場面把握

**Q:** ピッチ後 follow-up メールの送付タイミングとして適切なのは？

- **A) 同日中に short acknowledgment + 翌営業日に詳細版 (2段階)**
- B) 翌週月曜に詳細版1通のみ
- C) 1週間後に sammary
- D) 送らない

**Đáp án:** A

**Giải thích / 解説:**
- 🇯🇵 客は当日中に社内シェアするので、24h以内の acknowledgment が必須。詳細は翌営業日で OK。
- 🇻🇳 Khách share nội bộ trong ngày, nên acknowledgment trong 24h là bắt buộc. Bản chi tiết sang ngày làm việc kế tiếp là OK.

### J3.26 (từ rule_29 — Online presentation)

**Skill:** 場面把握

**Q:** オンラインプレゼンで最も重要な物理 setup は？

- A) Laptop デフォルトで十分
- **B) ①目線カメラ ②前方照明 ③ピンマイク ④背景クリーン ⑤声 +20%**
- C) Virtual background は『Star Trek』など面白いもの
- D) Chat は presenter 自身がモニター

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 5要素全揃いで professional 印象を確保。Chat は co-presenter にモデレートさせるのが standard。
- 🇻🇳 Đủ 5 yếu tố mới giữ được professional. Chat để co-presenter moderate là chuẩn.

### J3.27 (từ rule_30 — Hybrid presentation)

**Skill:** 場面把握

**Q:** ハイブリッドプレゼンで online audience が second-class 化しないために最も重要なのは？

- A) Online を greet する順序を最後にする
- **B) Greet online 先 + 目線 30s/30s 切替 + 室内質問の復唱**
- C) Online は chat だけ使わせる
- D) Camera を presenter の後ろに置く

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Online priority greet + 50/50 eye contact + 復唱 が3点セット。1つ欠けると online が無視される印象。
- 🇻🇳 Greet online trước + eye contact 50/50 + repeat câu hỏi là combo 3. Thiếu 1 = online cảm thấy bị bỏ rơi.

### J3.28 (từ rule_32 — Co-presenter handoff)

**Skill:** 表現読解

**Q:** 共同プレゼンで co-presenter への引き継ぎとして最も適切な発話は？

- A) 「じゃあ次、〇〇さんお願いします」
- **B) 「以上で〇〇を終わらせていただきました。次の〇〇につきましては、〇〇よりご説明させていただきます」**
- C) 「〇〇さん、何か言うことある？」
- D) (silently 受け継ぎ)

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Bridge sentence で ① 自分のパート締め ② 次パート announce ③ 担当者 announce が3要素。Audience が次の content を予測しやすくなる。
- 🇻🇳 Bridge sentence cần 3 yếu tố: ① đóng phần mình ② announce phần tiếp ③ announce ai. Audience dễ dự đoán content tiếp.

### J3.29 (từ rule_33 — Recording + share)

**Skill:** 場面把握

**Q:** プレゼン録画依頼への適切な対応は？

- A) Surprise REC して raw MP4 メール送付
- **B) 事前許可 → 全員同意 → 編集 → Drive 限定共有 + expire**
- C) 断る
- D) Personal Gmail で送る

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Privacy + confidentiality 両保護のため、4ステップ全て必須。Surprise REC は最大の信頼破壊。
- 🇻🇳 Bảo vệ cả privacy + confidentiality cần đủ 4 bước. Surprise REC phá trust nhất.

### J3.30 (từ rule_34 — Self-review checklist)

**Skill:** 場面把握

**Q:** プレゼン後 self-review の最適 format は？

- A) Skip — 時間がもったいない
- **B) 12項目 rubric (4 cụm) を1-5 chấm + 3 strengths + 3 improvements + deadline 付 drill**
- C) 全部 NG として再修行
- D) 他人にだけ評価してもらう

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Quantitative + qualitative + actionable。3+3 で negative spiral 防止、deadline 付き drill で実装。
- 🇻🇳 Định lượng + định tính + actionable. 3+3 chống negative spiral, drill có deadline để execute.

### J3.31 (từ rule_35 — Iteration cycle)

**Skill:** 場面把握

**Q:** プレゼン skill 改善 cycle として最も効果的なのは？

- A) Live → Solo review のみ
- **B) Rehearse (録画) → Peer pilot → Senior pilot → Live → Group retro**
- C) Live を毎週繰り返すだけ
- D) Senior に1回だけ見せる

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 4-step cycle で blind spot を多角的に発見。Recording rehearse + 2段階 pilot + group retro が full cycle。
- 🇻🇳 4-step cycle phát hiện blind spot từ nhiều góc. Recording rehearse + pilot 2 cấp + group retro = full cycle.


## Level J2 (4 câu)

### J2.1 (từ rule_19 — Pricing slide tactful)

**Skill:** 表現読解

**Q:** 顧客から「高いね、Phase 2の2倍」と言われた時、最も説得力ある返答は？

- A) 機能が増えていますので…
- **B) 3点理由がございます。①新規インフラ、②機械学習、③24/7サポート3年付帯**
- C) 値引きいたします
- D) 申し訳ございません

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 「高い」反論には ALWAYS 3点理由で答える。1点は薄い、5点は希薄化、3点が説得力の sweet spot。
- 🇻🇳 Phản biện 「高い」 LUÔN trả 3 điểm. 1 điểm yếu, 5 điểm loãng, 3 điểm là sweet spot thuyết phục.

### J2.2 (từ rule_23 — Trả lời câu hỏi khó — LASR)

**Skill:** 発言聴解

**Q:** 難しい質問への対応で、回答前にすべき最も重要なステップは？

- A) すぐに答え始める
- B) 「持ち帰ります」と答える
- **C) ご質問の趣旨を reframe して相手に confirm させる**
- D) 上司に振る

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 LASR の A ステップ。Reframe + confirm で誤解を防ぐ。これを飛ばすと的外れの回答になりがち。
- 🇻🇳 Bước A của LASR. Reframe + confirm để tránh hiểu sai. Bỏ bước này thường trả lời lệch ý.

### J2.3 (từ rule_25 — Đối phó câu hostile)

**Skill:** 表現読解

**Q:** 価格を強く challenge された時の最初の発話として最適なのは？

- A) 「高くないと思います」
- B) 「他社よりは安いです」
- **C) 「ご指摘の点、もっともでございます。ご懸念は〇〇と理解しました」**
- D) 「それは誤解です」

**Đáp án:** C

**Giải thích / 解説:**
- 🇯🇵 Bridge phrase で感情を中和 → 懸念に reframe してから内容に入る。直接否定や反論は escalate を招く。
- 🇻🇳 Bridge phrase trung hoà cảm xúc → reframe sang concern rồi mới vào nội dung. Phủ nhận trực tiếp / phản biện = escalate.

### J2.4 (từ rule_31 — Tech failure recovery)

**Skill:** 発言聴解

**Q:** プレゼン中にネット障害が発生した時の最優秀対応は？

- A) 「あ、えっ…」と panic で IT に大声で連絡
- **B) Acknowledge formal → Plan B 切替 → Entertain verbal の3ステップ**
- C) Pitch を中断して別日へ rebooking
- D) 客に責任を求める

**Đáp án:** B

**Giải thích / 解説:**
- 🇯🇵 Panic 表情は『本番障害も同じ』と暗示。Acknowledge → Switch → Entertain で control under pressure を示す。
- 🇻🇳 Mặt panic = 「sự cố production cũng vậy」. Acknowledge → Switch → Entertain thể hiện control under pressure.


**Tổng số câu hỏi:** 35

---

*Tài liệu này có thể export thành quiz interactive — đọc data trực tiếp từ `bjt_practice` array trong mỗi `conversation.json`.*


---

# Phụ lục D — Template Tổng Hợp / テンプレート集

*Tổng hợp các template (agenda, biên bản, mail) đính kèm trong các rules. Copy-paste để dùng.*

---


## Email follow-up (1 mẫu)

### Rule 28 — Mail follow-up sau pitch (bản chi tiết)

*JP: ピッチ後 follow-up メール (詳細版)*

```
件名: 【御礼】Phase 3 ご提案の件 (ティエンファット ズン)

白鷗株式会社
大垣 営業部長 様
松本 PM 様
田中 PMO 様
(CC: 弊社 ハー CTO、トゥアン 技術リーダー、フオン 副部長)

平素より大変お世話になっております。
弊社営業部のズンでございます。

本日はお忙しい中、Phase 3 ご提案にお時間を頂き、誠にありがとうございました。

【本日の合意 3点】
① Phase 3 スコープ: 19機能 (5/15 開始 / 12/15 リリース)
② 価格: 1,200万円 (Phase 2 比単価 -8%)
③ 責任者ペア: 弊社ズン ＋ 御社松本様

【次のステップ 3点】
① 5/2 (今週金) 17時まで: SOAP→REST 統合詳細回答メール (弊社 → 御社)
② 5/8 (来週水) 14時: スコープ最終確認会議 (60分・御社会議室)
③ 5/15 まで: 契約書サインインオフ (両社法務経由)

【添付資料】
・本日のスライド (PDF) — Drive 閲覧専用 [URL]
・議事メモ (PDF) — 同上

【持ち帰り事項】
・SOAP→REST 統合 + OAuth 2.0 フロー詳細
 弊社 CTO ハー 確認の上、5/2 17時 までに別メールでご回答いたします

ご不明な点等ございましたら、いつでもご連絡くださいませ。
引き続き何卒よろしくお願い申し上げます。

────────────────────
チャン・ヴァン・ズン (Tran Van Dung)
ティエンファット 営業部 BD担当
TEL: +84-xx-xxxx-xxxx
EMAIL: zun@tienphat.vn
営業時間: 9:00-18:00 (JST / Mon-Fri)
────────────────────
```

**Bản Việt placeholder:**

```
Subject: 【Cảm ơn】Vấn đề đề xuất Phase 3 (Thiên Phát — Dũng)

Kính gửi Cty Hakuō:
  Anh Ōgaki — Trưởng phòng Kinh doanh
  Anh Matsumoto — PM
  Anh Tanaka — PMO
(CC: Hà CTO, Tuấn Tech lead, Hương Phó phòng — bên em)

Luôn được quý vị quan tâm, em xin cảm ơn ạ.
Em là Dũng, BD phòng Kinh doanh Cty Thiên Phát ạ.

Hôm nay quý vị bận rộn vẫn dành thời gian cho buổi đề xuất Phase 3, em xin chân thành cảm ơn ạ.

[3 điểm thống nhất hôm nay]
① Scope Phase 3: 19 chức năng (bắt đầu 15/5 / release 15/12)
② Giá: 12 triệu yên (đơn giá giảm 8% so Phase 2)
③ Cặp owner: Dũng bên em + anh Matsumoto bên quý vị

[3 next step]
① Trước 17h 2/5 (thứ Sáu tuần này): mail phản hồi chi tiết tích hợp SOAP→REST (bên em → bên quý vị)
② 14h 8/5 (thứ Tư tuần sau): họp chốt scope final (60 phút, phòng họp Hakuō)
③ Trước 15/5: sign-off hợp đồng (qua pháp chế hai bên)

[Tài liệu đính kèm]
- Slide hôm nay (PDF) — link Drive read-only [URL]
- Memo họp (PDF) — cùng link

[Vấn đề mang về xem xét]
- Tích hợp SOAP→REST + chi tiết flow OAuth 2.0
  Em sẽ confirm với Hà CTO bên em, phản hồi qua mail riêng trước 17h ngày 2/5 ạ.

Nếu có điểm chưa rõ, mời quý vị liên hệ bất cứ lúc nào ạ.
Mong tiếp tục được quý vị chiếu cố ạ.

────────────────────
Trần Văn Dũng
Cty Thiên Phát — BD phòng Kinh doanh
TEL: +84-xx-xxxx-xxxx
EMAIL: zun@tienphat.vn
Giờ làm việc: 9:00-18:00 (JST / T2-T6)
────────────────────
```

📝 **Ghi chú VN:** Thời điểm gửi: Trong ngày pitch — ack ngắn (link slide + deadline 持ち帰り) → sáng ngày làm việc kế tiếp gửi template này. Bản chi tiết thứ Hai nhớ CC CTO + tech lead + phó phòng.
📝 **Ghi chú JP:** 送付タイミング: ピッチ当日中に short ack (slide link + 持ち帰り deadline) → 翌営業日朝に本テンプレ送付。月曜詳細版には CTO+技術リード+副部長を CC。


## Checklist (4 mẫu)

### Rule 01 — Checklist Chuẩn Bị Thuyết Trình (7 câu)

*JP: プレゼン準備チェックリスト(7問)*

```
【プレゼン準備チェックリスト】

① 誰に？(Audience)
   - 主聴衆: ____  (役職・社名・関係性)
   - 副聴衆: ____
   - 不在の意思決定者: ____

② 何を決めたい？(Decision target)
   - 本日の合意ゴール: ____  (1文で)
   - 妥協可能ライン: ____
   - 絶対に譲れないライン: ____

③ 時間 (Time)
   - 持ち時間: ____ 分
   - うち Q&A: ____ 分
   - 1スライド当たり: ____ 秒(目安)

④ 場所 (Setting)
   - 対面 / オンライン / ハイブリッド
   - 機材: PC・プロジェクター・マイク
   - 接続テスト: ____ (時刻)

⑤ 期待されるアウトプット (Output)
   - 主アウトプット: ____  (例: スコープ合意 / 方向性決定)
   - 副アウトプット: ____  (例: 次回会議日決定)
   - NG ライン: ____  (これ以下なら失敗)

⑥ リスク (Risk)
   - リスク1: ____ → 対策: ____
   - リスク2: ____ → 対策: ____
   - リスク3: ____ → 対策: ____

⑦ バックアップ (Backup)
   - スライド: PDF版 USB+クラウド
   - デモ: オフライン版
   - インターネット: モバイルテザリング
```

**Bản Việt placeholder:**

```
[Checklist Chuẩn Bị Thuyết Trình]

① CHO AI? (Audience)
   - Đối tượng chính: ____ (chức vụ / cty / quan hệ)
   - Đối tượng phụ: ____
   - Decision maker vắng mặt: ____

② QUYẾT GÌ? (Decision target)
   - Goal đồng thuận hôm nay: ____ (1 câu)
   - Mức có thể nhượng: ____
   - Mức KHÔNG THỂ nhượng: ____

③ THỜI GIAN (Time)
   - Thời lượng: ____ phút
   - Trong đó Q&A: ____ phút
   - Mỗi slide: ____ giây (ước)

④ ĐỊA ĐIỂM (Setting)
   - Trực tiếp / online / hybrid
   - Thiết bị: PC / projector / mic
   - Test connection: ____ (thời gian)

⑤ OUTPUT MONG ĐỢI (Output)
   - Output chính: ____ (vd: thống nhất scope / quyết hướng đi)
   - Output phụ: ____ (vd: chốt ngày họp tiếp)
   - Mức NG: ____ (dưới mức này = thất bại)

⑥ RỦI RO (Risk)
   - Rủi ro 1: ____ → đối sách: ____
   - Rủi ro 2: ____ → đối sách: ____
   - Rủi ro 3: ____ → đối sách: ____

⑦ BACKUP (Plan B)
   - Slide: PDF backup USB + cloud
   - Demo: phiên bản offline
   - Internet: tethering 4G/5G
```

📝 **Ghi chú VN:** Bắt buộc fill trước khi mở PowerPoint. Senior review → mới bắt đầu design. Đầu tư 5-10 phút để tránh redo nửa ngày.
📝 **Ghi chú JP:** PowerPoint を開く前に必ず埋める。Senior レビュー後 → 設計開始。5-10分の投資で半日のやり直しを防ぐ。

### Rule 04 — Checklist Visual Hierarchy

*JP: 視覚階層チェックリスト*

```
【視覚階層チェックリスト】

■ フォントサイズ
□ タイトル 32-40pt (Bold)
□ サブメッセージ 24-28pt
□ 本文 (Bullet/根拠) 20-24pt
□ 図表ラベル 18pt 以上 (NG: 14pt以下)
□ フッター/ページ番号 12-14pt

■ フォント
□ フォント統一: Meiryo / 游ゴシック / Noto Sans JP
□ MS明朝・MSゴシック使用禁止 (古い・潰れる)
□ 英数字フォント: Arial / Helvetica / Segoe UI

■ レイアウト
□ Alignment 左揃え (見出しのみ中央可)
□ 行間 1.3-1.5
□ 余白 上下左右 5%以上

■ コントラスト・色
□ コントラスト比: 文字vs背景 4.5:1 以上
□ 背景: 白 or 薄グレー (#F5F5F5)
□ 太字使用は1スライド3箇所以内

■ 実機テスト
□ プロジェクター確認: 後列から読めるか実機テスト
□ 画面共有確認: オンライン参加者の画面でテスト
```

**Bản Việt placeholder:**

```
[Checklist Visual Hierarchy]

[Font size]
- Title 32-40pt (Bold)
- Sub-message 24-28pt
- Body (Bullet / luận cứ) 20-24pt
- Chart label tối thiểu 18pt (NG: dưới 14pt)
- Footer / page number 12-14pt

[Font]
- Thống nhất: Meiryo / Yu Gothic / Noto Sans JP
- CẤM MS Mincho / MS Gothic (cũ + bị mờ)
- Font Latin: Arial / Helvetica / Segoe UI

[Layout]
- Alignment căn trái (chỉ heading dùng center)
- Line spacing 1.3-1.5
- Margin trên dưới trái phải tối thiểu 5%

[Contrast & color]
- Contrast ratio chữ vs nền >= 4.5:1
- Nền trắng hoặc xám nhạt (#F5F5F5)
- Bold tối đa 3 chỗ / slide

[Test thực tế]
- Test projector: đọc được từ hàng cuối
- Test screen share: kiểm tra trên màn của participant online
```

📝 **Ghi chú VN:** Bắt buộc test thực tế trước rehearsal. Đọc không được ở hàng cuối / screen share = FAIL.
📝 **Ghi chú JP:** リハーサル前に必ず実機テスト。後列・画面共有先で読めなければ FAIL。

### Rule 07 — Checklist Plan B trước Pitch

*JP: プレゼン Plan B チェックリスト*

```
【プレゼン Plan B チェックリスト】(24時間前 + 当日朝)

■ スライド (Slides)
□ PowerPoint/Keynote 元ファイル: クラウド + ローカル
□ PDF版: USB×2本 + ローカル + クラウド
□ Google Slides Web版バックアップ
□ 印刷配布版: 主要スライドのみ 5-10部

■ デモ (Demo)
□ オフライン版デモ (local DB / mock data)
□ 録画版デモ (.mp4 USB+ローカル) — 最終の最終
□ デモ用 test account 動作確認

■ ネットワーク (Network)
□ モバイルテザリング有効 (4G/5G)
□ ポケットWi-Fi 充電済み (予備)
□ オフライン優先モード設定済み

■ 機材 (Equipment)
□ HDMI ケーブル
□ USB-C → HDMI / VGA アダプタ
□ Lightning → HDMI (iPad backup用)
□ 充電器 + 延長コード
□ レーザーポインター (電池予備)

■ 配布物 (Handout)
□ 名刺 20枚以上
□ 印刷スライド主要部 5部
□ 会社案内 / 過去事例集 5部

■ 担当者間 (Team redundancy)
□ Co-presenter にも USB 1本
□ Slack で deck PDF を相互送信
□ 万一の連絡先メモ (ホテル / タクシー会社 等)

■ 当日朝 final
□ 機材 全 connect テスト
□ 音声 / 画面共有 テスト
□ Q&A appendix スライド再確認
```

**Bản Việt placeholder:**

```
[Checklist Plan B Pitch] (24h trước + sáng ngày pitch)

[Slide]
- File gốc PowerPoint/Keynote: cloud + local
- Bản PDF: USB×2 + local + cloud
- Google Slides Web backup
- Bản in: chỉ slide chính 5-10 bản

[Demo]
- Demo offline (local DB / mock data)
- Demo bản ghi hình (.mp4 USB+local) — cuối cùng của cuối cùng
- Test account demo: kiểm tra chạy được

[Network]
- Tethering 4G/5G bật sẵn
- Pocket Wi-Fi sạc đầy (dự phòng)
- Bật offline priority mode

[Thiết bị]
- Cáp HDMI
- Adapter USB-C → HDMI / VGA
- Lightning → HDMI (iPad backup)
- Sạc + dây nối dài
- Laser pointer (pin dự phòng)

[Tài liệu phát]
- Danh thiếp 20+ chiếc
- In slide chính 5 bản
- Brochure / case study 5 bản

[Redundancy team]
- Co-presenter cũng giữ 1 USB
- Send deck PDF qua Slack cho nhau
- Note liên hệ phòng hờ (khách sạn / hãng taxi)

[Sáng ngày pitch — final]
- Test connect đủ thiết bị
- Test audio / screen share
- Re-check appendix slide cho Q&A
```

📝 **Ghi chú VN:** Check 2 lần: 24h trước + sáng ngày. Tất cả 5 điểm ✅ thì mới lên đường. Còn sót 1 điểm thì mang theo xử lý sau.
📝 **Ghi chú JP:** 24h前に1回、当日朝に1回。5点全部 ✅ で出発。1点でも未済なら持参してから現地で対応。

### Rule 34 — Rubric Self-review Pitch (12 item / 30 phút)

*JP: プレゼン Self-review Rubric (12項目 / 30分)*

```
【プレゼン Self-review チェックリスト】 (12項目 / 30分)

評価: 1=要改善 / 2=不十分 / 3=平均 / 4=良好 / 5=優秀

■ 準備 (Preparation) — 3項目
□ 1. 7問チェックリスト埋めたか (rule 01)         _/5
□ 2. 1-slide-1-message 守ったか (rule 02)        _/5
□ 3. Plan B 用意 (PDF/handout/hotspot) (rule 07) _/5

■ デリバリー (Delivery) — 4項目
□ 4. Hook 30秒で attention 取れたか (rule 08)    _/5
□ 5. 時間管理約束守ったか (rule 13)              _/5
□ 6. 論理マーカー使ったか (rule 14)              _/5
□ 7. アイコンタクト均等 (rule 30 - 50/50)        _/5

■ Q&A — 3項目
□ 8. LASR 適用 (rule 23)                         _/5
□ 9. 持ち帰り適切 (rule 24)                      _/5
□ 10. 敵対的質問 bridge phrase (rule 25)         _/5

■ クロージング＋followup — 2項目
□ 11. Recap 3 + CTA 3 (rule 26)                  _/5
□ 12. 24h 内 acknowledgment メール (rule 28)     _/5

────────────────────────────
合計: __/60     平均: __/5

【3 Strengths】 — 4-5点項目から
1. ____
2. ____
3. ____

【3 Improvements】 — 1-3点項目から
1. ____ → drill: ____ までに ____
2. ____ → drill: ____ までに ____
3. ____ → drill: ____ までに ____

【次回 pitch までの commit】
- ____
```

**Bản Việt placeholder:**

```
[Checklist Self-review Pitch] (12 item / 30 phút)

Thang điểm: 1=cần cải thiện / 2=chưa đủ / 3=trung bình / 4=tốt / 5=xuất sắc

[Chuẩn bị — Preparation] — 3 item
- 1. Đã fill checklist 7 câu chưa (rule 01)         _/5
- 2. Có giữ 1-slide-1-message không (rule 02)       _/5
- 3. Có Plan B (PDF/handout/hotspot) chưa (rule 07) _/5

[Delivery] — 4 item
- 4. Hook 30 giây có lấy được attention không (rule 08)  _/5
- 5. Có giữ time-keeping promise không (rule 13)         _/5
- 6. Có dùng logical marker không (rule 14)              _/5
- 7. Eye contact đều không (rule 30 - 50/50)             _/5

[Q&A] — 3 item
- 8. Áp dụng LASR (rule 23)                              _/5
- 9. 持ち帰り phù hợp (rule 24)                          _/5
- 10. Bridge phrase với câu hostile (rule 25)            _/5

[Closing + Followup] — 2 item
- 11. Recap 3 + CTA 3 (rule 26)                          _/5
- 12. Mail acknowledgment trong 24h (rule 28)            _/5

────────────────────────────
Tổng: __/60     Trung bình: __/5

[3 Strengths] — chọn từ item 4-5 điểm
1. ____
2. ____
3. ____

[3 Improvements] — chọn từ item 1-3 điểm
1. ____ → drill: trước ____ làm ____
2. ____ → drill: trước ____ làm ____
3. ____ → drill: trước ____ làm ____

[Commit cho pitch tiếp theo]
- ____
```

📝 **Ghi chú VN:** Làm trong 24h sau pitch. Budget cố định 30 phút. Improvement bắt buộc kèm deadline + drill. Phase 4, 5 dùng cùng rubric để track đường cong cải thiện.
📝 **Ghi chú JP:** Pitch 終了 24h 以内に実施。30分 fixed budget。Improvements には必ず deadline + drill。Phase 4, 5 でも同 rubric を使い改善曲線を tracking。


## Báo cáo (1 mẫu)

### Rule 21 — Template Roadmap Dự án

*JP: プロジェクト ロードマップ テンプレート*

```
【プロジェクト ロードマップ】 (Phase X)

■ Gantt サマリ
                    5月  6月  7月  8月  9月  10月 11月 12月
①要件定義 (15日)    ███
②設計開発 (90日)         ████████████
③テスト (45日)                          ██████
④リリース移行(30日)                              ████

■ マイルストーン (◆重要 / ●通常 / ○任意)
| # | 記号 | 日付 | マイルストーン | 成果物 | 責任者 (vendor/client) |
|---|-----|------|--------------|--------|----------------------|
| 1 | ◆ | 6/30 | 要件定義 sign-off | 要件定義書 v1.0 | 〇〇 / 〇〇 |
| 2 | ● | 8/15 | 設計レビュー | 設計書 v1.0 | 〇〇 / 〇〇 |
| 3 | ● | 9/30 | コード完了 | β版ビルド | 〇〇 / 〇〇 |
| 4 | ◆ | 11/15 | UAT 完了 | UATレポート | 〇〇 / 〇〇 |
| 5 | ◆ | 12/15 | 本番リリース | リリースノート | 〇〇 / 〇〇 |

■ Buffer
- 設計レビュー後 1週間 (〇/〇-〇/〇) — スケジュール遅延吸収
- UAT 期間に 1週間予備 (〇/〇-〇/〇)

■ 前提条件 (Critical assumptions)
- 御社のテストデータ提供は 〇/〇 までに
- セキュリティ監査は弊社主導で 〇/〇-〇/〇 実施
- 本番環境アクセス権限は 〇/〇 までに付与

■ Risk → 対策
- 要件変更時: change control プロセス
- 移行失敗時: 旧環境 parallel 3ヶ月
```

**Bản Việt placeholder:**

```
[Roadmap dự án] (Phase X)

[Tóm tắt Gantt]
                    5월  6월  7월  8월  9월  10월 11월 12월
① Define req (15 ngày)  ███
② Design + Dev (90 ngày)     ████████████
③ Test (45 ngày)                            ██████
④ Release migrate (30 ngày)                          ████

[Milestone] (◆ quan trọng / ● bình thường / ○ tuỳ chọn)
| # | KH | Ngày | Milestone | Output | Owner (vendor / client) |
|---|----|------|-----------|--------|------------------------|
| 1 | ◆ | 30/6 | Sign-off requirement | Tài liệu req v1.0 | 〇〇 / 〇〇 |
| 2 | ● | 15/8 | Review thiết kế | Tài liệu design v1.0 | 〇〇 / 〇〇 |
| 3 | ● | 30/9 | Hoàn thành code | β build | 〇〇 / 〇〇 |
| 4 | ◆ | 15/11 | UAT xong | Báo cáo UAT | 〇〇 / 〇〇 |
| 5 | ◆ | 15/12 | Release production | Release note | 〇〇 / 〇〇 |

[Buffer]
- Sau review thiết kế 1 tuần (〇/〇-〇/〇) — hấp thụ trễ schedule
- Trong UAT có 1 tuần dự phòng (〇/〇-〇/〇)

[Điều kiện tiên quyết — Critical assumptions]
- Test data bên quý vị cung cấp trước 〇/〇
- Security audit do bên em chủ trì, thực hiện 〇/〇-〇/〇
- Quyền access môi trường production cấp trước 〇/〇

[Risk → đối sách]
- Thay đổi yêu cầu: quy trình change control
- Migrate fail: chạy song song env cũ 3 tháng
```

📝 **Ghi chú VN:** Gantt vẽ đậm để projector đọc được. Milestone 5±2 cái. Buffer 5-10% lịch thực. Điều kiện tiên quyết phải reflect vào hợp đồng.
📝 **Ghi chú JP:** Gantt は projector でも判読できるよう太め。Milestone 5±2 個。Buffer は実工期の 5-10%。前提条件は契約書にも反映。


**Tổng template:** 6
