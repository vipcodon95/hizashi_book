# Consolidated fix list — batch_0611_0620 (N1_advanced cấp 9)

File: `books/reading_collection/n1_advanced_drafts/batch_0611_0620.json`

**Đặc điểm batch**: 6+ critical (たる đứng đầu phrase không N tiền tố ×2, あったればこそ fab, sai dịch tên Poulenc, 太安万侣→侶 + によってこそ fab, 4 critical factual: Takemitsu Poulenc bịa + Norinaga 35→44 năm + mono-no-aware sai gốc + Sugimoto Mori→Odawara). Q5 length giveaway 2-2.5× hệ thống.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q2 cause-format ~2/10** → ≥5/10. Rewrite Q2 ≥3 bài.
- **Q5 length giveaway 2.0-2.5× hệ thống** (R_0611/R_0612/R_0615/R_0616/R_0620 CRITICAL): rewrite distractors dài hơn HOẶC cắt correct ~50-60 chars JP gộp 2-3 mệnh đề thành 1 khái quát.
- **Q5 cognitive overload** R_0612/R_0615/R_0620 (3 mệnh đề lồng) → giữ 1-2 luận điểm cốt lõi.

### R_0611 (公案 Zen kōan)
- **Pattern overuse**: にあって ×6 (sent. 1, 7, 13, 17, 21 + process), たる ×5-6 (禅たるもの/一字たる「無」/真の禅修行たる実践/真の公案たる体験), にほかならない ≥4 → cắt ≤4 mỗi.
- **Fab usage**: 「紹介するにあって」 (sent. 17, にあって + Vる) → `紹介するにあたって`.
- **Q4 paraphrase distance**: copy gần literal câu 18 → paraphrase xa.

### R_0612 (雅楽)
- **Pattern overuse**: にあって ×5 (平安時代/寺院/千年/国際的承認), にして ×3 → cắt.
- **Fab usage**: 「師弟関係にして、千年の音の連鎖が...」 (sent. 17, にして nhân quả với N abstract) → `師弟関係があってこそ`.
- **Vocab format**: line 501 reading `してい かんけい` (có space) → `していかんけい`.
- **Romanization**: 鞨鼓 dịch `kattsudzumi` SAI → `kakko` (かっこ).
- **Q5 cognitive overload**: 3 mệnh đề lồng → giữ 1-2.

### R_0613 (Ōe Kenzaburō 個人的な体験)
- **Vocab inconsistency**: text dùng cả `脳に異常を持つ子ども` (sent. 2) lẫn `脳に障害を持つ息子` (sent. 5) cho cùng entity → thống nhất `障害` (preferred current usage).
- **たる + abstract**: 「父たる責務」 → `父としての責務`. たる ×4-5 toàn bài → giảm.

### R_0614 (信貴山縁起) — GRAMMAR + FACTUAL FAB
- **Fab grammar CRITICAL**: sent. ~9 「この絵巻をたる所以である」 (たる không thể đi sau を) → `この絵巻が傑作たる所以である`.
- **Fab usage**: 「絵巻物たる『信貴山縁起』」 (たる + tựa tác phẩm proper instance) → `絵巻物である『信貴山縁起』`.
- **Factual error**: `ユネスコ無形文化遺産に登録された「絵巻物文化」` — KHÔNG có hạng mục này trong UNESCO ICH. 信貴山縁起絵巻 = 国宝, không UNESCO. → bỏ câu UNESCO hoặc đổi `国宝として指定された`.
- **Pattern overuse**: にあって ×6 → cắt ≤4.
- **Fab usage**: 「このような技法にして、平安の絵師たち...直感的に会得していたとするならば」 (にして trong điều kiện) → bỏ にして.

### R_0615 (Ueno Chizuko Feminism) — GRAMMAR FAB
- **Fab grammar CRITICAL**: 「現場の声なくしては空論に陥るという確信があったればこそである」 (あったればこそ fab pattern) → `確信があればこそ` / `確信があったからこそ`.
- **Fab usage**: 「自由にあって、それが真の自由であるためには」 (にあって + N abstract đơn lẻ) → `自由において` / `自由というものは`.
- **Currency add**: WEF Gender Gap 2024 = 118/146 (topic feminism phải có).
- **Q3 distractor extreme cluster** 3-token (`完全に排除…のみを独立`) → soft-tone.
- **Q5 cognitive overload**: 3 mệnh đề → giữ 1-2.

### R_0616 (Heike Monogatari)
- **Pattern overuse CATASTROPHIC**: にあって ×7 (いかなる時代×2, 平家という一族, 死の直前, 敵味方という立場, 戦場, 口承性, 伝播) → cắt còn ≤3, thay 「において」/「では」/「中で」.
- **Q5 length giveaway 2.2×** → rút.

### R_0617 (Takemitsu Tōru) — FACTUAL CRITICAL
- **Factual error CRITICAL**: text viết `フランシス・プーランクのシャンソン『愛の小径』が、武満に音楽への決定的な目覚めをもたらした` — SAI. Reality: Takemitsu age 14 thức tỉnh nhờ **Lucienne Boyer hát "Parlez-moi d'amour"** (chanson Pháp), KHÔNG phải Poulenc. Sửa: `リュシエンヌ・ボワイエの歌う『聞かせてよ愛の言葉を』 (Parlez-moi d'amour)`.
- **Translation error CRITICAL**: 「愛の小径」dịch thành "La Belle au Bois Dormant" (= Sleeping Beauty / Tchaikovsky-Perrault) — hoàn toàn không liên quan. Sửa: "Les Chemins de l'amour" hoặc "Lối tình".
- **Fab usage**: 「武満にして初めて可能となった美学的立場」 (にして初めて + tên người proper individual) → `武満であってこそ可能となった`.
- **Fab grammar**: 「西洋前衛音楽たる複雑な音響世界」 (たる + abstract non-role) → `西洋前衛音楽の複雑な音響世界` / `~という音響世界`.
- **Fab grammar**: 「音たる存在の儚さ」 (たる + 存在 abstract) → `音という存在`.

### R_0618 (Sugimoto Hiroshi) — FACTUAL CRITICAL
- **Factual error CRITICAL**: text viết `東京・六本木の森美術館アーカイブに自らのコレクションを預けている` SAI. Reality: collection ở **小田原文化財団 / 江之浦測候所 (Enoura Observatory, Kanagawa, mở 2017)** — foundation Sugimoto sáng lập 2009. Sửa: `自ら設立した小田原文化財団（神奈川・江之浦測候所）に自らのコレクションを預けている`.
- **Fab usage**: 「速度と過剰な情報が日常を覆い尽くす時代にして、一枚の写真に...」 (にして liên từ chuyển clause độc lập, không tuân ~にして+N) → `時代にあって` / `時代において`.

### R_0619 (Kojiki) — FACTUAL CRITICAL ×2 + GRAMMAR
- **Factual error CRITICAL**: text viết `本居宣長は『古事記伝』において四十四年の歳月をかけて` SAI. Reality: **35 năm** (1764-1798). 44 = số quyển (全44巻). Sửa `三十五年の歳月` / `三十余年`.
- **Factual error CRITICAL**: `宣長が提唱した「もののあわれ」という美的概念もまた、『古事記』の叙情的感受性に根ざしたものとして` SAI. Mono-no-aware được Norinaga đề xướng chủ yếu trong nghiên cứu **『源氏物語』** (`紫文要領』 1763, 『源氏物語玉の小櫛』 1796), KHÔNG phải Kojiki. Sửa: `宣長が『源氏物語』研究で展開し、後に古典文学一般に適用した美的概念`.
- **Kanji typo CRITICAL**: 「太安万侣」 (侣 giản thể TQ) → 「太安万侶」.
- **Fab pattern CRITICAL**: 「歴代天皇はこの女神の直系子孫であることによってこそ」 (によってこそ fab) → `によって(初めて)` / `であるからこそ`.
- **Fab grammar**: 「アマテラスたる存在」 (たる + 存在 abstract) → `アマテラスという存在`.
- **Tag-text mismatch**: tag declared `ばこそ` nhưng text không có ばこそ (grammar_used cũng đã bỏ) → đồng bộ tags.
- **Translation**: `Kiki` → chú giải `Kojiki + Nihon Shoki`.

### R_0620 (Hijikata Tatsumi Butoh) — GRAMMAR CRITICAL
- **Fab grammar CRITICAL**: 「たる革命家にして芸術家である土方にとって」 (たる đứng đầu phrase không có N tiền tố — vô nghĩa cú pháp) → `真の革命家にして芸術家たる土方にとって`.
- **Fab grammar**: 「真に舞踏たる表現」 (たる + 表現 abstract non-role) → `真の舞踏といえる表現`.
- **Currency update**: 「没後四十年近く」 — Hijikata mất 1986, 2026 = 40 năm chẵn → `没後四十年を経てもなお`.
- **Q5 length giveaway 2.2×** + 3-clause overload → rewrite.

## P2 — SHOULD FIX (Major systemic)

- たる cấm gắn proper N (Takiguchi/Sugimoto/Hijikata individual context) trừ formula `~たる者`.
- にあって + N abstract đơn lẻ (自由/偶然) → において / の中で.
- にして lệch tính chất (đối lập danh từ trừu tượng / liên từ chuyển clause / + người proper + 初めて) → であり / であると同時に / にあたって.
- N+ばこそ direct + あったればこそ + Vる+ばこそ → V仮定+ばこそ / N+であればこそ.
- によってこそ standalone → によって(初めて).
- Q4/Q5 length ≤1.3× ratio (R_0611/R_0612/R_0615/R_0616/R_0620 đặc biệt).
- Q5 ≤2 mệnh đề (60 chars JP), distractor cùng range.
- Distractor extreme cluster ≤2/Q.

## Verify checklist sau fix
- [ ] R_0612: kakko (KHÔNG kattsudzumi); vocab space sửa
- [ ] R_0613: 異常 → 障害 thống nhất
- [ ] R_0614: をたる → が傑作たる; UNESCO 絵巻物 → 国宝
- [ ] R_0615: あったればこそ → あればこそ; 自由にあって → において; +WEF 2024
- [ ] R_0617: Poulenc → Lucienne Boyer "Parlez-moi d'amour"; Sleeping Beauty → "Les Chemins de l'amour"
- [ ] R_0618: 森美術館 → 小田原文化財団・江之浦測候所
- [ ] R_0619: 44年 → 35年; mono-no-aware Genji không Kojiki; 侣 → 侶; によってこそ → によって(初めて)
- [ ] R_0620: たる革命家 → 革命家にして芸術家たる; 没後40年近く → 経てもなお
- [ ] にあって ≤4/bài (R_0611/R_0614/R_0616 đặc biệt)
- [ ] たる ≤4/bài, bỏ với 表現/責務/存在/音響世界/proper N
- [ ] にして lệch (絵巻物にして+ならば/時代にして+clause) bỏ
- [ ] N+ばこそ / Vる+ばこそ / あったればこそ / によってこそ → form chuẩn
- [ ] Q2 cause ≥5/10
- [ ] Q5 length ≤1.3× + ≤2 mệnh đề
- [ ] No Hangul / TQ giản thể (侣 simplified Chinese)
