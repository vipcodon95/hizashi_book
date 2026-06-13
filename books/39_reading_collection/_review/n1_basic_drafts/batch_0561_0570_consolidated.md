# Consolidated fix list — batch_0561_0570 (N1_basic cấp 9)

File: `books/reading_collection/n1_basic_drafts/batch_0561_0570.json`

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q2 cause-format = 2/10** (R_0561 cause OK, R_0568 cause OK) — phải đạt ≥5/10. Rewrite Q2 ≥3 bài: gợi ý R_0562 (sao 高度経済成長 thành công), R_0566 (sao thơ Tanikawa lan rộng), R_0567 (sao やまゆり園事件 chấn động pháp lý).
- **Pattern overuse CATASTROPHIC**: たる 66 lần / 10 bài (~6.6/bài, gấp đôi cap 4). Cắt rộng, đặc biệt R_0562 (5+), R_0563 (2+), R_0564, R_0565, R_0566, R_0567 (4+), R_0568.

### R_0561 (スポーツ社会学) — FACTUAL CRITICAL
- **Factual error**: bài trộn 小山田圭吾 (作曲家, 障害者いじめ) với 小林賢太郎 (演出, Holocaust joke). Text viết "障害者アーティストへの過去の侮辱行為が発覚した演出担当者の辞退" — đây là MIX 2 sự kiện. Sửa: tách rõ hoặc đơn giản hóa "音楽担当者と演出担当者がそれぞれ過去の言動を理由に辞任した" (không gộp).
- **Fab grammar**: sentence 9 `国技としての権威にあって` → `国技としての地位において` / `〜の中で`.
- **Fab grammar**: sentence 2 + 19 `舞台にして文化的装置`, `教師にして部活顧問` — にして lệch tính chất → đổi `〜であると同時に` / tách câu.
- **Pattern overuse** にあって 4-5 lần → cắt còn ≤4.

### R_0562 (高度経済成長期)
- **Fab grammar CRITICAL** (たればこそ — cổ ngữ + ばこそ):
  - sentence 5 `彼らがひたむきに働いたればこそ` → `働けばこそ` hoặc `働いたからこそ`
  - sentence 18 `彼らの献身があったればこそ` → `献身があればこそ`
- **Fab grammar たる + abstract noun**:
  - sentence 5 `その繁栄たる証` → `繁栄の証` / `繁栄を物語る証`
  - sentence 6 `戦後復興の象徴たる東海道新幹線` → `象徴である新幹線` / `象徴ともいえる新幹線`
  - sentence 11 `成長の果実を享受する者たる都市市民` → `享受する都市市民`
  - sentence 21 `時代の本質たるもの` → `時代の本質というもの`
- **Pattern overuse** たる 5+ lần, にあって 4+ lần → cắt ≤4 mỗi cái.
- **Meta-grammar 2/5** (Q2 にあって + Q4 ばこそ) → giảm 1/5, đổi 1 sang content.
- **Trùng lặp**: `わずか二十年足らず` → `わずか二十年で` / `二十年足らずで`.

### R_0563 (万引き家族) — FACTUAL CRITICAL
- **Factual error**: text viết 「最後の出演作」cho 樹木希林 — SAI. 万引き家族 (2018/6) không phải tác phẩm cuối cùng公開 (sau đó còn 日日是好日 2018/10, エリカ38 2019). Sửa: `晩年の代表作の一つ`.
- **Placeholder leak CRITICAL** sentence 8 (line 921-924): chunks không tách (copy nguyên), guide = "🔒 Đóng gói: câu bổ sung phân tích.", translation = "Câu bổ sung." → REPLACE bằng nội dung thật hoặc xóa rồi adjust sentence_count.
- **Fab grammar たる + abstract**:
  - line 933 `社会たる者が弱者を守るべき` → `社会というものは` / `社会は本来〜べき`
  - line 951 `映画たる者の使命` → `映画作品の使命` / `映画というメディアの使命`
- **Fab にして lệch tính chất**:
  - line 879 `日本映画史における金字塔にして…問いかけ` (金字塔 vs 問いかけ không đồng tính) → `金字塔であると同時に…問いかけでもある`
  - line 969 `証左にして…証明`, line 999 `姿勢にして…社会批評` → đổi `〜であり〜でもある`
- **Currency add**: 是枝 sau 万引き家族: 「怪物」2023 Cannes 脚本賞.
- **Chunks formatting** line 922: cả câu là 1 chunk → tách.

### R_0564 (若者文化)
- **Fab grammar**: line 1353 `現代の若者文化たるもの` → `現代の若者文化というもの`.
- Tone bookish quá nặng (がゆえに + ばこそ + たるもの cluster) cho topic Z世代/さとり世代 → giảm tone literary.
- **Q5 length giveaway** ratio 1.73 (line 1507) → rút đáp án đúng.
- **Currency miss**: α世代, TikTok dominance, YouTube Shorts, 闇バイト 2024 (1 sc).

### R_0565 (地震学防災) — FACTUAL CRITICAL
- **Factual error**: 「緊急地震速報（J-Alert）」 → SAI. 緊急地震速報 = EEW (JMA). J-Alert = 全国瞬時警報システム (cảnh báo phổ rộng). Sửa: `緊急地震速報（EEW）`.
- **Fab grammar**: line 1697 `現代日本の地震学に課せられた使命たるもの` (使命 abstract) → `現代日本の地震学に課せられた使命` (bỏ たるもの).
- **Currency miss CRITICAL**: 能登半島地震 2024/1/1 (M7.6, ~470人), 南海トラフ臨時情報 2024/8 (lần đầu phát hành) — bài 地震防災 không thể bỏ qua.
- **Q5 distractor extreme cluster**: A `被害はゼロになる` + C `全員を内陸部に移住` → đổi 2 distractor sang "partial truth".
- **Meta-grammar 2/5** (Q2 ばこそ + Q3 たる) → giảm 1/5.
- **Pattern overuse** ばこそ 2 lần cluster → giữ ≤2.

### R_0566 (谷川俊太郎) — FACTUAL CRITICAL
- **Factual error**: bài viết Tanikawa như còn sống. Reality: **谷川俊太郎 mất 2024/11/13 hưởng thọ 92** — phải update past tense + thêm `2024年11月に亡くなった` (1 sc).
- **Fab grammar**: line 2021 `詩たるもの` (詩 abstract) → `詩というもの`.
- **Q5 meta drift** (hỏi nghĩa ものを thay vì synthesis) → rewrite Q5 thành main-message synthesis về Tanikawa.
- **Meta-grammar 2/5** (Q4 たる + Q5 ものを) → giảm 1/5.
- **Bookish phrasing** sentence 2063 `感受性が変わっていたものを` (regret form mismatch tone bài).

### R_0567 (障害者福祉) — FACTUAL/TERMINOLOGY
- **Fab grammar たる + abstract**:
  - line 2414 `政策立案たる者は` (action noun) → `政策立案者たる者は`
  - line 2444 `共生社会の実現たるものは` (action noun) → `共生社会の実現というものは`
- **Pattern overuse** ばこそ 3 lần (line 2420, 2486, 2492) cụm 1 đoạn → giảm ≤2.
- **Q5 distractor extreme cluster**: C `条約の批准を取り消し` + D `厳罰化と施設の廃止` → "partial truth".
- **Q4 paraphrase** line 2605: gần literal `分離教育を基調とする…根本的な矛盾` câu 13 → paraphrase xa.
- **Currency add**: 法定雇用率 2026/7 lộ trình 2.7%.

### R_0568 (武士道)
- **Meta-grammar 2/5** (Q3 ばこそ + Q4 にあって) → giảm 1/5.
- **Q4 length giveaway** 1.73× → rút.
- **Q5 borderline length** 1.50× → rút thêm.

### R_0569 (医療制度高齢化) — META + FACTUAL
- **Factual ambiguity**: `国内総生産に占める医療費の割合はすでに11%を超え` — Nhật 国民医療費 GDP比 ~7-8%, 総保健支出 OECD ~11%. Sửa rõ: `総保健支出 (OECD ベース) は11%を超え`.
- **Q5 CRITICAL cognitive overload** (line 3358): stem hỏi 2 thứ ("最も強調…か。また…何が必要か") → tách thành 1 câu hỏi đơn, đáp án không gộp 2 ý.
- **Meta-grammar 3/5** (Q3 にあって + Q4 にして + Q5 あっての) — CRITICAL → giảm còn 1/5, rewrite ≥2 Q sang content (vd nhân-quả 高齢化 → 医療費).
- **Currency miss**: マイナ保険証 2024/12 本格化, 医療法等改正 2024, 改正精神保健福祉法 2024/4 (gloss thêm), かかりつけ医制度.
- **Pattern overuse** にあって 3 lần (line 3124, 3166, 3238) → giữ ≤2.

### R_0570 (水墨画/禅)
- **Q4 paraphrase CRITICAL** line 3719: literal copy 100% câu 13 (`技巧を尽くしながらも技巧を感じさせない、無為の境地から…`) → paraphrase xa.
- **Q5 length giveaway** 2.20× (line 3752) → rút đáp án đúng.
- **Q4 distractor extreme**: C `一切設けず、墨で画面全体を埋め尽くす` → soft-tone.
- **Meta-grammar 2/5** (Q2 ばこそ + Q4 たる) → giảm 1/5.

## P2 — SHOULD FIX (Major systemic)

- たる cap toàn batch ≤4/bài: phải audit từng bài, thay bằng `〜である` / `〜たるもの` chỉ giữ với role/title noun (国家たる者, 政治家たる者, 教師たる者).
- にあって ≤4/bài (R_0561, R_0562, R_0569 đang 4-5 lần).
- ⚠️ icon inflation toàn batch (≥1/sentence) → giảm khi không thực sự có bẫy ngữ pháp.
- Stem-template "「X」という表現…意図/強調/特徴" lặp 7/10 bài → đa dạng hóa.
- Distractor philosophy: chuyển từ extreme sang partial truth.

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài (đặc biệt sau khi xóa/thêm sc)
- [ ] R_0561: tách rõ 小山田/小林 hoặc đơn giản hóa
- [ ] R_0563 placeholder leak xóa, 樹木希林 sửa "晩年の代表作"
- [ ] R_0565: J-Alert → EEW + currency 能登/南海トラフ臨時
- [ ] R_0566: Tanikawa past tense + 2024/11 死去
- [ ] R_0567: 政策立案たる→者 / 実現たるもの→というもの + 2.7% lộ trình
- [ ] R_0569: GDP% ambiguity, Q5 tách 2-trong-1, meta 3→1
- [ ] Không còn たればこそ / Vる+ばこそ / V-stem+が最後 / N+が最後 direct (trừ Vた+が最後 / N+が最後 đúng pattern)
- [ ] たる với abstract noun (繁栄/象徴/本質/詩/文化/使命/実現/社会/映画/像/政策立案) bỏ hết
- [ ] にして lệch tính chất → 〜であり / 〜であると同時に
- [ ] Q2 cause-format ≥5/10
- [ ] Meta-grammar Q ≤1/5 mỗi bài
- [ ] Q5 length ratio ≤1.3×
- [ ] Distractor extreme cluster ≤2/Q (đặc biệt R_0565, R_0567, R_0570)
- [ ] Q4/Q5 không copy literal câu source (R_0567, R_0570)
- [ ] Translation field đủ
- [ ] No Hangul/TQ giản thể
