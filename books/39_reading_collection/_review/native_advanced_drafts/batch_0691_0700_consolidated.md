# Consolidated fix list — batch_0691_0700 (Native_advanced cấp 10)

File: `books/reading_collection/native_advanced_drafts/batch_0691_0700.json`

**Đặc điểm**: R_0698 duplicate sentence + Hangul 윤리학. R_0696 Cyrillic о ×4 + romaji sai ×3 (tayowame/naganaganagashi/masuraо). R_0700 Soseki canonical opening REORDERED + fabricated paraphrase. R_0694 mislabel `原文抜粋` cho paraphrase. R_0692 mislabel pseudo-original. R_0696 Hitomaro mis-attribution + fabricated 長歌. Q5 length giveaway 14/50 vượt 1.3×, R_0699_Q5 4.46× extreme. Q2 cause = 4/10. R_0692 meta 4/5 CRITICAL. R_0697 stats outdated.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q5 length giveaway 14/50** (28% vi phạm), R_0699_Q5 4.46× (correct 125 vs distractor max 28) extreme outlier → rewrite Q5: cắt correct ~50-60 chars JP, expand distractors lên ~50 chars.
- **Q2 cause-format = 4/10** → ≥5/10. Rewrite Q2 ≥1 bài.
- **Meta-grammar Q vi phạm** R_0692 4/5 CRITICAL + R_0695 3/5 + R_0694/R_0696/R_0697 2/5 → giảm ≤1/5.

### R_0691 (Nishitani Keiji)
- **Q1 distractor cluster 3/3 extreme** (完全に / 唯一の / 消去) → rewrite ≥2 distractor không dùng extreme markers.
- たらしめる ×3 + にほかならない ×5+ borderline → cắt 1-2.
- Q4 length 1.7× + Q5 length 1.83× → rút.

### R_0692 (Kawabata Yukiguni) — MISLABEL + META 4/5 CRITICAL
- **Mislabel CRITICAL**: 3 câu đầu (国境の長いトンネル…/夜の底が白くなった/信号所に汽車が止まった) là Kawabata nguyên văn, phần còn lại là phỏng tác. Title `冒頭` mislabel → `冒頭の引用と続きの創作的展開` / `冒頭抜粋と再構成`.
- **Meta 4/5 CRITICAL** (Q1 であった expression / Q2 のだった function / Q3 トンネル symbolism / Q4 window technique) — chỉ Q5 content. Bài đọc văn học biến thành quiz ngữ pháp/tu từ → giảm ≤1/5, rewrite ≥3 Q sang content (nhân vật Shimamura/Komako/Yoko, themes 雪国 isolation/aware).
- Q4 length 2.4× + Q5 length 2.0× rút.
- Process câu 4 typo `tôné giáo` → `tôn giáo`.

### R_0693 (Keigo) — Q4 PARAPHRASE
- **Q4 paraphrase MAJOR**: copy literal `若年層が新たな社会関係の中で敬意表現のあり方を模索する過程` gần nguyên văn câu 17 → paraphrase xa.
- Q2 length 1.5× borderline.

### R_0694 (Endō Chinmoku) — MISLABEL + META + COGNITIVE OVERLOAD
- **Mislabel CRITICAL**: title `原文抜粋と宗教的考察` — đoạn Christ-voice 「踏むがいい…」 paraphrase/condense (nguyên gốc Endo dài hơn, có `お前の足は今、痛むだろう`). Sửa title → `ロドリゴ転びの場面・原文と再構成` / `冒頭抜粋と続きの解説的再構成`.
- Verify: `お前たちに踏まれるため、この世に生れ` — bản gốc `お前たちに踏まれるため私は生れ` (thiếu `この世に`).
- **Meta 2/5** (Q3 のではなかった rhetoric + Q4 ずにはいられない effect) → giảm 1/5.
- **Q5 cognitive overload** (3 mệnh đề thần học: paradox + 形式 vs 内的 + 痛み) → giữ 1-2 luận điểm.
- Q2 length 2.3× + Q5 length 2.45× CRITICAL → rút.
- のだった/のであった ≥10 lần overuse → cắt.

### R_0695 (Ōe Kojin-teki na Taiken) — TYPO + META 3/5
- **Typo CRITICAL**: Q5 explanation `グ埋める` (mất `ャップを` ở giữa) → `ギャップを埋める`.
- **Meta 3/5 CRITICAL** (Q2 思われてならなかった nuance / Q3 のだった/のである dual viewpoint / Q4 window symmetry) → giảm 1/5.
- **Q5 interpretive overreach**: dùng từ ngoại bài `内面化` chưa xuất hiện trong bài → clarify hoặc bỏ.
- Q3 length 1.53× + Q5 length 2.4× CRITICAL → rút.

### R_0696 (Manyōshū Akahito + Hitomaro) — CRITICAL ×NHIỀU
- **Cyrillic mojibake CRITICAL ×4**: line 2299, 2451, Q1 question line ~2324, Q3 — `masuraо-buri` chứa Cyrillic о (U+043E) → `masurao-buri`.
- **Romaji error CRITICAL ×2**: `tayowame-buri` SAI → `taoyame-buri` (たをやめ → modern reading taoyame, KHÔNG tayowame). Lines 2299, 2451.
- **Romaji error CRITICAL**: line 2275 `naganaganagashi` SAI (Hitomaro waka thực: `あしびきの 山鳥の尾の しだり尾の **ながながし夜**を…` = naga-nagashi yo, KHÔNG ba lần naga). Sửa `naganagashi`.
- **Quote attribution MAJOR**: `あしびきの山鳥の尾のしだり尾のながながし夜をひとりかも寝む` được đặt sau 柿本人麻呂の長歌 → dễ hiểu nhầm là của Hitomaro. Trong **Man'yoshu vol 11 #2802** thực tế là 詠み人知らず (chỉ Hyakunin Isshu Teika tuyển mới gán cho Hitomaro). Ghi rõ `人麻呂歌集所出・作者未詳`.
- **Fabricated 長歌 CRITICAL**: `ひさかたの天の香具山この夕雲居に雲の立ちてあしひきの山のかひよりほのかにも見ゆる` được giới thiệu là "đại biểu 長歌" của Hitomaro — KHÔNG khớp bất kỳ 長歌 Hitomaro xác định nào. Bịa câu ghép từ 枕詞/cụm cliché. Thay bằng trích thật: vol 1 #29-31 `近江荒都歌` / vol 2 #207 `泣血哀慟歌`.
- **Translation MAJOR**: 真白にそ富士の高嶺に雪は**降りける** (けり = 詠嘆/perfective discovery: "tuyết ĐÃ rơi/đọng trắng xóa với sự ngạc nhiên") — hiện dịch "đang rơi" sai thì → `tuyết đã rơi trắng xóa` / `kìa tuyết phủ trắng xóa`.
- **Meta 2/5** (Q2 jo-kotoba function + Q3 係り結び role) → giảm 1/5.
- **真白にそ** vs 真白にぞ: 万葉仮名 chưa có dakuten → ghi chú `現代仮名遣いでは「ぞ」`.

### R_0697 (Nikkei DX) — STATS CURRENCY
- **Currency outdated MAJOR**: `DXに取り組んでいる企業は全体の約4割` (cũ ~2020-2021). IPA 2023 = 73.7%. Sửa: thêm năm khảo sát + cập nhật `IPA「DX動向 2024」` / `DX白書 2023` figures.
- **Meta 2/5** (Q3 にもかかわらず repetition + Q5 ざるをえない/ねばならない distinction) → giảm 1/5.
- **Q4 paraphrase MAJOR**: copy gần literal `人・組織・文化・制度を一体として変革` → paraphrase.
- Vocab `データ駆動型` reading inconsistent (Katakana vs Hiragana) → format chuẩn.

### R_0698 (Watsuji Rinrigaku) — DUPLICATE + HANGUL CRITICAL
- **Duplicate paragraph CRITICAL**: câu `間柄の倫理学は、近代の個人主義的倫理観を否定するのではなく、それを間柄というより広い地平において捉え直そうとするものである` xuất hiện **2 lần** (giữa text + cuối text sau `提供し続けていると言ってよい`). Bản dịch chỉ 1 lần → mismatch sentence_count. Xóa duplicate cuối.
- **Hangul leak CRITICAL**: line 2880 subtopic `윤리학 — luân lý học...` → `倫理学 — luân lý học Nhật Bản hiện đại, khái niệm aidagara` / `Rinrigaku`.
- **Q4 paraphrase MAJOR**: copy literal `それを間柄というより広い地平において捉え直す` câu 21 → paraphrase.
- **Pattern conflation MAJOR**: tags grammar_used `~にして初めて` nhưng text dùng `~にあって+はじめて` (line 3052). Guide line 3053 đang equate 2 patterns. Sửa: `にあって+はじめて` ≠ `にして+初めて`.
- **Vocab**: 思惟 reading `しゆい` → `しい` (chuẩn modern philosophy).
- **Romaji typo**: 動態 `seitate` → `dōtai`. (Nếu là 静態 → `seitai`.)
- Q2 length 2.66× CRITICAL → rút.

### R_0699 (Abe Suna no Onna) — Q5 EXTREME
- **Q5 length 4.46× CRITICAL** (correct 125 vs max distractor 28) extreme outlier → rút mạnh correct + expand distractors.
- Q2 length 2.1× rút.
- Q5 meta-technique enumeration drift → main-message synthesis về 砂の女 themes (existential/閉塞/帰属).

### R_0700 (Sōseki Kusamakura) — CANONICAL REORDER + FABRICATION CRITICAL
- **Canonical reorder CRITICAL**: Soseki 草枕 opening thực: `**山路を登りながら、かう考へた。** 智に働けば角が立つ。情に棹させば流される。意地を通せば窮屈だ。兎角に人の世は住みにくい。住みにくさが高じると、安い所へ引き越したくなる。どこへ越しても住みにくいと悟った時、詩が生れて、画が出来る。`. Bài text đặt 「山路を登りながら、こう考えた」 line 3929 ~11 sentences sau (sau智に働けば...) → phá vỡ cấu trúc iconic. Restore canonical order.
- **Fabricated paraphrase CRITICAL**: Soseki gốc `…ただの人が作った人の世が住みにくいからとて、越す国はあるまい。あれば人でなしの国へ行くばかりだ。人でなしの国は人の世よりも猶住みにくかろう。`. Bài text thay bằng `…住みにくければ、住みにくい所をどこかに求めて、束の間の憩いを目睹するならば、かくのごとき境地は、美の鑑賞という点において、詩人ともなり、画家ともなり得るのである` — KHÔNG phải Soseki, mâu thuẫn với 人でなしの国 irony gốc. Restore.
- **Fabricated trio CRITICAL**: `智恵は鋭敏であるほど、執着が増す。情感は豊かであるほど、流されやすい。意志は強固であるほど、世界と摩擦を生む` — KHÔNG có trong 草枕. Bỏ.
- **Hybrid genre confusion**: bài mix Soseki authentic + 3rd person scholarly (`漱石はこの旅の目的を…`). Cấp 10 reader không phân biệt được. Title clarify.
- **Vocab**: 向う三軒両隣り reading `むこうさんげんりょうとなり` thiếu rendaku → `むこうさんげんりょうどなり` (りょう**ど**なり with rendaku).
- 目睹 (もくと) — bungo rare; nếu là phỏng tác đoạn này thì replace bằng 眺める/見る (Soseki actual).
- Q1 distractor `完全に捨て去り+一切` → soft-tone.
- Q5 length 1.89× rút.

## P2 — SHOULD FIX (Major systemic)

- Distractor extreme cluster ≤2/Q.
- Q4 paraphrase distance ≥30% (R_0693/R_0696/R_0697/R_0698 đặc biệt).
- Pattern overuse のだった/のである/にほかならない ≤4/bài.
- Q5 cognitive overload — limit 1-2 luận điểm cốt lõi.

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài
- [ ] R_0696: Cyrillic о ×4 → o; tayowame → taoyame; naganaganagashi → naganagashi; Hitomaro mis-attribution clarify; fabricated 長歌 → trích thật; 雪は降りける dịch lại
- [ ] R_0698: duplicate sentence cuối xóa; 윤리학 → 倫理学; にして初めて vs にあって+はじめて pattern conflation sửa; seitate → dōtai
- [ ] R_0700: canonical opening order restore; fabricated paraphrase → Soseki original; fabricated trio bỏ
- [ ] R_0692: title `冒頭` clarify pseudo-original; meta 4/5 → 1/5
- [ ] R_0694: title `原文抜粋` → `冒頭抜粋と再構成`; meta 2/5 → 1/5; Q5 cognitive overload giảm
- [ ] R_0695: typo グ埋める → ギャップを埋める; meta 3/5 → 1/5; Q5 interpretive overreach clarify
- [ ] R_0697: stats year + IPA 2023/2024 update
- [ ] R_0691_Q1 distractor cluster 3/3 → ≤2 extreme
- [ ] R_0699_Q5 length 4.46× → ≤1.3×
- [ ] Q2 cause ≥5/10
- [ ] Q5 length ≤1.3× toàn batch
- [ ] Meta-grammar Q ≤1/5
- [ ] No Hangul / TQ giản thể / Cyrillic / mojibake
