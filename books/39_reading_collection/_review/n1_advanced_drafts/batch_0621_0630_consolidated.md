# Consolidated fix list — batch_0621_0630 (N1_advanced cấp 9)

File: `books/reading_collection/n1_advanced_drafts/batch_0621_0630.json`

**Đặc điểm**: 24 critical fab! Pattern overuse 5x cap (にあって 201, たる 153 toàn batch). 4 critical factual (I♥湯 2009, Tsurezuregusa 第7段, 第30段 nội dung, Isozaki 91). Q5 length giveaway hệ thống. Q2 cause = 1/10. Meta-grammar overspread.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Pattern overuse CATASTROPHIC**: にあって 201 instances (~20/bài), たる 153 (~15/bài), にして 77, にほかならない 77 → cắt ~75% còn ≤4/bài. Replace với における/として/というのは/に過ぎない/に基づく/の中で.
- **Q2 cause-format = 1/10** → ≥5/10. Rewrite Q2 ≥4 bài: gợi ý R_0621/R_0623/R_0625/R_0627/R_0630.
- **Cross-contamination meta-grammar**: たる 4 bài + にして初めて 3 bài + R_0629 meta 3/5 → giảm meta xuống ≤1 bài each pattern; R_0629 đặc biệt convert 2 Q content.

### R_0621 (Maruyama-Yoshimoto)
- **Fab grammar CRITICAL**: line 217/241 `丸山にして吉本にして` (X+にして+Y+にして không tồn tại) → `丸山と吉本ともに` / `丸山も吉本もまた`. Sửa cả guide line 219.
- **Fab usage**: line 235 `対話を続けるべき使命にあって` (にあって + abstract đơn 使命) → `使命を担う中で`.
- **Fab grammar**: line 253 `民主主義論たるもの` (たる + abstract) → `民主主義論というものは`.
- **Pattern**: にあって ×6, たる ×3 → cắt ≤4.

### R_0622 (Bashō Oku no Hosomichi) — GRAMMAR FAB
- **Fab grammar CRITICAL**:
  - line 539 `死を覚悟したる旅人` (Vた+たる không nối past-form V) → `死を覚悟した旅人`
  - line 551 `詩人たるべき存在` (たるべき không tồn tại) → `詩人としてあるべき存在`
  - line 611 `芭蕉たる者` (たる + proper N) → `俳人たる者` / `芭蕉という人物`
- **Pattern**: にあって ×5, たる ×4 → cắt.

### R_0623 (Otake Shinrō) — FACTUAL CRITICAL + GRAMMAR
- **Factual error CRITICAL**: `2006年に開業` (I♥湯) — SAI. Khai trương `2009年7月18日`. Sửa `二〇〇九年`.
- **Fab grammar CRITICAL**:
  - line 950 `展示場たるを超え` (たる không có nominalized form to take を) → `展示場(である)範疇を超え`
  - line 968 `大竹伸朗という作家にして可能な試み` → `大竹伸朗にして初めて可能な` / `大竹伸朗だからこそ可能な`
  - line 1034 `大竹伸朗たる表現者` (たる + proper N) → `表現者である大竹伸朗`
- **Pattern**: にあって ×6, たる ×4 → cắt.

### R_0624 (Fudoki) — GRAMMAR FAB
- **Fab grammar CRITICAL**: line 1373 `地名たるものが` (たる + 一般名詞 trừu tượng) → `地名というものは`.
- **Fab grammar CRITICAL**: line 1451 `たる所以は…` sentence-initial không có N tiền tố trong cùng câu (たる là 連体形 bắt buộc N+たる+N) → ghép vào câu trước `(主語)たる所以は…` hoặc thêm N.
- **たる + abstract**: line 1338 `集大成たる本書`, 1391 `研究者たるもの`, 1403 `国司たるもの` — giữ formula `~たる者` 1-2 lần, đổi 集大成 → `集大成と呼べる本書`.
- **Pattern**: にあって ×7, たる ×6, にほかならない ×4 → cắt mạnh.

### R_0625 (Mushanokōji Shirakaba)
- **Fab grammar**: line 1781 `武者小路にして初めて実践として提示し得た理想` (にして初めて + proper individual) → `武者小路においてこそ` / `武者小路ならではの`.
- **たる + proper N ×2**: line 1763 `文学者たる武者小路`, 1817 `文学者たると同時に美術普及者たる武者小路` → đổi sang `文学者である武者小路` / bỏ たる.
- **Pattern**: にあって ×4 (giáp cap), たる ×4 → giữ ≤4.

### R_0626 (Suzuki Daisetsu Zen)
- **Pattern overuse cap breach** (cần audit từng bài) → cắt にあって/たる/にほかならない ≤4 mỗi.

### R_0627 (Ozu Yasujirō)
- **Pattern overuse cap breach** → cắt.

### R_0628 (Isozaki Ma) — FACTUAL + GRAMMAR
- **Factual error CRITICAL**: `2022年に九十歳でその生涯を閉じた` SAI. Isozaki sinh 1931/7/23, mất 2022/12/28 = `九十一歳`. Sửa.
- **Major**: `広島という焼け野原から出発した丹下健三` (Tange sinh 大阪/今治, không phải Hiroshima; chỉ thiết kế Peace Memorial Park 1949) → reword `広島平和記念公園で戦後建築の出発点を築いた丹下健三`.
- **Pattern**: にあって + たる + でなければならない nested → giảm.

### R_0629 (Kenkō Tsurezuregusa) — FACTUAL CRITICAL ×2
- **Factual error CRITICAL**: text viết `兼好は第七十三段において、「あだし野の露消ゆる時なく…」` SAI. Đoạn này là **第七段** (đoạn nổi tiếng nhất Tsurezuregusa). Sửa `第七段`.
- **Factual error CRITICAL**: `第三十段では、高い地位にある者が傲慢になる様子` SAI. 第三十段 thực tế nói về **死後の悲しみ và 中陰49日** (tang lễ), KHÔNG phải kiêu ngạo. Hoặc viết lại nội dung 第三十段 đúng, hoặc đổi sang 第百二十六段/第二百十七段 cho topic 慢心.
- **Meta-grammar 3/5 CRITICAL** (Q3 にあって + Q4 にして初めて + Q? たる) → giảm ≤1, rewrite ≥2 Q sang content.
- **Minor**: Kenkō ẩn cư `北山の辺り` — phổ biến nhất là `双ヶ岡 (Narabigaoka)` / `横川 (比叡山)`. Nuance.

### R_0630 (Miki Kiyoshi) — FAB GRAMMAR + READING + TRANSLATION CRITICAL
- **Fab grammar CRITICAL**:
  - line 3556 `ハイデガーに師事したたる哲学者` (したたる không tồn tại — typo "した、たる" hoặc broken) → `ハイデガーに師事した哲学者`
  - line 3556 `死を直視するたる哲学者` (Vる+たる không nối V辞書形) → `死を直視する哲学者`
- **Fab pragma ものを CRITICAL**: line 3556 `失敗であったと言うべきものを、後世の評者はしばしば言葉を失う` (logic không phải nuối tiếc/trách mà là explanatory) → `と言うべきだが` / `と言うべきところ`.
- **Vocab reading CRITICAL**: line 3560 `確固たる` reading `かっことたる` SAI → `かっこたる` (確固 = かっこ, KHÔNG かっこっ).
- **Mistranslation**: 場所の論理 `lý thuyết của tòa` → `logic của trường/nơi chốn` (場所 không phải tòa án); 基本的洞察 `Đồng cơ bản` → `trực giác/cái nhìn cơ bản`; 射程 `tầm bắn kinh` → `phạm vi`.

## P2 — SHOULD FIX (Major systemic)

- **Q5 length giveaway** R_0621/R_0622 critical 2.2× → cắt đáp án đúng / dãn distractor.
- **Q5 stem 2-in-1** R_0621/R_0626 → tách 1 câu hỏi đơn.
- **R_0630_Q5 cluster blacklist** 3-token → soft-tone partial truth.
- **Q4 paraphrase distance** R_0621/R_0622 (にあって) → paraphrase semantic không copy literal.
- **Distractor extreme cluster** ≤2/Q.
- **にあって + Vる-form / + 物体/cảm xúc/abstract đơn lẻ** bỏ; chỉ giữ với N tình huống/thời kỳ.
- **にして lệch tính chất / lặp X+にして+Y+にして** bỏ.
- **にして初めて + abstract concept / + proper individual** bỏ.
- **たる + proper N** trừ formula `~たる者` bỏ; **たる + abstract noun (民主主義論/集大成/地名/表現者/作品/像/政策/音響世界/存在)** bỏ.
- **Vた+たる, Vる+たる, V-stem+たる, たる sentence-initial không N, たるべき, たるを** không tồn tại → bỏ.
- **ものを ngữ nghĩa ngược** (context không tiếc/trách) → ものの / とはいえ / ところ.

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài
- [ ] R_0623: 2006 → 2009 (I♥湯)
- [ ] R_0628: 90 → 91 (Isozaki tuổi); Tange-Hiroshima reword
- [ ] R_0629: 第七十三段 → 第七段; 第三十段 nội dung sửa hoặc đổi đoạn
- [ ] R_0630: 確固たる かっことたる → かっこたる; 場所→logic của nơi chốn; 基本的洞察→trực giác cơ bản
- [ ] Không còn したたる/Vる+たる/たるべき/たるを/sentence-initial たる không N
- [ ] X+にして+Y+にして lặp bỏ
- [ ] にあって/たる/にほかならない ≤4/bài
- [ ] Q2 cause ≥5/10
- [ ] Meta-grammar Q ≤1/5 (R_0629 đặc biệt 3/5→1/5)
- [ ] Q5 length ≤1.3×, 2-in-1 stem tách
- [ ] No Hangul / TQ giản thể / 侣
