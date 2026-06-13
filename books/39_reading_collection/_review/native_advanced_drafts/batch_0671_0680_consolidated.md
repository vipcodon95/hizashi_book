# Consolidated fix list — batch_0671_0680 (Native_advanced cấp 10)

File: `books/reading_collection/native_advanced_drafts/batch_0671_0680.json`

**Đặc điểm**: 14 critical (fab 原文 R_0671/R_0673/R_0680, Genji 若紫/夕顔 chapter mix, Kokoro 遺書 contradiction + POV inversion, R_0674 outdated politics, Hangul 멍 ×3, Chinese leak ×2, tokaoshi×8 wrong romaji, になり falsification Akutagawa). R_0673 placeholder leak ×11. Q5 length giveaway 7/10 ratio ≥2×. Q2 cause = 2/10.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q5 length giveaway 7/10** ratio 2-2.6× → rewrite Q5: cắt correct ~50-60 chars JP, expand distractors lên ~50 chars để ratio ≤1.3×.
- **Q2 cause-format = 2/10** → ≥5/10. Rewrite Q2 ≥3 bài.
- **Meta Q vi phạm 4/10**: R_0671/R_0674/R_0680 đang 3/5 meta CRITICAL; R_0673/R_0678 đang 2/5 → giảm ≤1/5 mỗi bài, đổi 2 Q sang content/cause.

### R_0671 (Genji 若紫) — FACTUAL + LANG CRITICAL
- **Factual error CRITICAL**: line 「かの白き花をば、夕顔となむ申し侍る」 thuộc **『夕顔』 (chapter 4)**, KHÔNG phải 若紫 (chapter 5). Note 一 attribute sai. → Bỏ trích này hoặc thay bằng dòng 若紫 thật (vd 「雀の子を犬君が逃がしつる」 — scene Murasaki bé thả chim sẻ).
- **Major mislabel CRITICAL**: text body labeled `古文抜粋` nhưng là pseudo-bungo pastiche reconstruction, KHÔNG phải Murasaki Shikibu nguyên văn. Actual chapter 「わらは病みにわづらひ給ひて、よろづにまじなひ加持など参らせ給へど…」 → (a) thay bằng verbatim canonical, hoặc (b) re-label `翻案` / `再構成` / `現代語訳をもとにした抜粋`.
- **Chinese leak CRITICAL**: line 123 vocab `若草` meaning chứa `(還没成熟的少女)`; line 187 guide `若草` chứa `(還没成熟)` → thay bằng tiếng Việt `(thiếu nữ chưa trưởng thành)`.
- **Major morphology**: line 162 `白うなりにたれど` analyze sai — `に` là `ぬ` 連用形 + `たり` 完了. Sửa.
- **Major meaning flip**: line 223 `やがて` modern = "eventually/soon" (KHÔNG "dần dần"). Sửa.
- **Q5 length 1.95× + meta 3/5** (Q2 係り結び + Q3 flower symbol + Q4 けり) → giảm meta ≤1/5, rewrite ≥2 sang content.

### R_0673 (Soseki Kokoro) — FACTUAL + PLACEHOLDER + POV CRITICAL
- **Factual error CRITICAL**: text self-contradictory `Kは死の直前、遺書を残しませんでした。只一言「もっと早く死ぬべきであった」と書いてあっただけです` — DID leave 遺書 (Sensei thấy nhẹ nhõm vì nội dung không đề cập 裏切り/お嬢さん). Sửa: K DID leave 遺書, nội dung resignation chính.
- **POV inversion CRITICAL**: 「先生、私はもう死ぬ積もりです」 — Kokoro 下 là Sensei's letter TO 私, không phải ngược. Sensei IS the writer, addresses あなた. POV jumbled. Sửa.
- **Mislabel CRITICAL**: `原文抜粋` nhưng là paraphrase synthesis (`奸計をもって` không phải Soseki nguyên văn) → re-label hoặc verbatim canonical.
- **Process placeholder leak CRITICAL** ~11 stub sentences (4/7/10/11/12/13/22/23 + 2 nữa): guide "🔒 Đóng gói: câu phân tích bổ sung" + translation "Câu bổ sung" → fill nội dung thật.
- **Tag mismatch**: tags claim `候文体 + に御座候 + べく候` nhưng văn bản dùng Meiji formal です/であります, không phải 候 ending → bỏ tags hoặc rewrite text.
- **Translation nuance**: 御一人 = Thiên hoàng Minh Trị (KHÔNG "một người duy nhất") — quan trọng cho Sensei's 殉死 link.

### R_0680 (Akutagawa Rashōmon) — FACTUAL + GRAMMAR + HANGUL CRITICAL
- **Fab grammar CRITICAL**: line 3726 text mixes Akutagawa nguyên văn với pseudo-bungo modifications. Actual: `ある日の暮方の事である` nhưng batch viết `ある日の暮れ方の事なり` + `ばかりなり` + `事なり` → falsification turning 大正 prose into pseudo-bungo. Restore である.
- **Hangul leak CRITICAL ×3**: line 3727 + 3939 + 3940 chứa Hangul `멍` (Korean "blank stare", auto-translation pipeline corruption) → thay `bần thần` / `vô hồn` / `lơ đãng`.
- **Mislabel CRITICAL**: line 3943 final sentence `かくして、羅生門の荒廃と下人の窮状とは、芥川が問う道徳的問いの舞台装置として機能している` là editorial commentary, KHÔNG Akutagawa nguyên văn — embedded inside `原文抜粋` block. Tách ra section riêng hoặc xóa.
- **Meta 3/5** (Q2/Q3/Q5 all meta) → giảm 1/5.

### R_0674 (Asahi 憲法 社説) — FACTUAL CURRENCY
- **Factual error CRITICAL**: text viết `自民党が衆院選の公約に改憲を明記し、政権与党が三分の二以上の議席を確保したことで、発議要件が整った` — outdated. 2024/10 衆院選 LDP+Komeito **mất ưu thế衆院**, không có 2/3 supermajority. Sửa: reframe post-2024/10 minority govt (Ishiba → Takaichi era), HOẶC date 社説 cụ thể (vd "2017年" hoặc "2022年") để legitimize 2/3 framing.
- **Distractor cluster ≥3/Q nhiều câu** (Q1/Q2/Q4/Q5) → soft-tone partial truth.
- **Meta 3/5** (Q3 修辞 + Q4 ざるを得ない + Q5 discourse strategy) → giảm 1/5; Q5 → main-message synthesis về 改憲批判 (KHÔNG meta drift).

### R_0679 (Makura no Sōshi) — TRANSLATION + TEXT CRITICAL
- **Romanization CRITICAL ×8**: `tokaoshi` (Mỹ học, vocab gloss, question_vi line 3589, 3636, ...) — をかし historical kana → modern reading **おかし** = romanization **okashi**. Sửa hết 8 occurrences.
- **Text corruption MAJOR**: `雪の降りたるはいうていはず` — actual 第一段 = `雪の降りたるは言ふべきにもあらず`. Sửa.
- **Text corruption**: `霜のいと白きも、またさらでも` — actual = `霜のいと白きも、またさらでもいと寒きに`. Sửa.
- **Suspected fab 原文**: kiểm tra toàn bộ 古文 vs Sei Shōnagon canonical text.

### R_0672 (Nishida 善の研究) — MISLABEL + OVERUSE
- **Major mislabel**: text labeled `原文抜粋` nhưng là paraphrase Nishida-style. Actual opening: `経験するというのは事実其儘に知るの意である。全く自己の細工を棄てて、事実に従うて知るのである。` → re-label hoặc verbatim.
- **Pattern overuse**: にほかならない 5/22 sentences vượt cap ≤4 → cắt ≤4.

### R_0676 (Climate 社説) — CURRENCY
- **Currency miss MAJOR**: Pari -46% by 2030 outdated. Japan submitted updated NDC 2025/2: **-60% by 2035, -73% by 2040** vs 2013. Update.

### R_0678 (Yabu no Naka)
- **Factual nuance**: Kurosawa 羅生門 ヴェネツィア金獅子賞 = **1951年** (KHÔNG 1950, phim ra Nhật 8/1950 nhưng award 9/1951). Sửa.
- **Distractor cluster 2/Q nhiều câu** → soft-tone.
- **Meta 2/5** → giảm.
- **Translation**: 巫女 = "nữ pháp sư / itako" (footnote 東北 itako tradition) thay vì "bà đồng".

## P2 — SHOULD FIX (Major systemic)

- **Q4 paraphrase distance low** ~5/10: phần lớn Q4 ở mức Recall/Apply (Bloom L2-L3), thiếu Analyze/Evaluate distance. Rewrite synonym hóa keyword.
- **Q5 cognitive overload** R_0671/R_0676 (dual-axis prompts, interpretive overreach) → giữ 1 trục.
- **Q1/Q3 trivialization**: process guide quá explicit trả lời sẵn comprehension Q. Cân nhắc tách process từ Q.
- **R_0671 Genji morphology**: 見たてまつらず subject/object framing loose.
- **R_0675 もののあわれ vs もののあはれ** kana inconsistency.
- **R_0676 いかんにかかわらず + リスク** stilted → review.
- **R_0680 Q1 nguyên nhân hoang phế** trivial recall từ process guide.

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài
- [ ] R_0671: bỏ 夕顔 quote khỏi 若紫 hoặc thay bằng 若紫 verbatim; Chinese leak (還没成熟) → tiếng Việt
- [ ] R_0673: 遺書 plot sửa; POV restore (Sensei → 私); 11 placeholder filled; tag 候文体 sửa hoặc bỏ
- [ ] R_0680: なり → である Akutagawa nguyên văn; 멍 Hangul ×3 → bần thần; editorial line 3943 tách riêng
- [ ] R_0674: 2/3 supermajority framing reframe (post-2024/10) hoặc date 社説 cụ thể
- [ ] R_0679: tokaoshi → okashi (×8); 言ふべきにもあらず restore
- [ ] R_0672: にほかならない ≤4; mislabel hoặc verbatim
- [ ] R_0676: NDC 2035/2040 update
- [ ] R_0678: 1950 → 1951 Kurosawa Venice
- [ ] Q2 cause ≥5/10
- [ ] Q5 length ≤1.3× + ≤2 mệnh đề
- [ ] Meta-grammar Q ≤1/5 (R_0671/R_0674/R_0680 đặc biệt 3/5→1/5)
- [ ] Distractor extreme cluster ≤2/Q (R_0674/R_0678 đặc biệt)
- [ ] No Hangul / TQ giản thể / 侣
- [ ] No mislabel `原文抜粋` cho pseudo-bungo (R_0671/R_0672/R_0673/R_0679)
