# Consolidated fix list — batch_0601_0610 (N1_advanced cấp 9)

File: `books/reading_collection/n1_advanced_drafts/batch_0601_0610.json`

**Đặc điểm batch**: 5 critical factual (Zen 7thc, Makimuku 1999, R_0608 mất dấu toàn bộ, fabricated 水のなかのワニ, Kokin 705→1111). Hangul leak ×2. Placeholder leak R_0602. Pattern fab がたる (chưa từng gặp). ものを sai pragma. Q4/Q5 length giveaway hệ thống. Q2 cause = 2/10.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q2 cause-format = 2/10** → ≥5/10. Rewrite Q2 ≥3 bài: gợi ý R_0601 (sao Sei Shōnagon "をかし"), R_0604 (sao Nakagami fukuhi nguồn cội), R_0608 (sao Noma 真空地帯).
- **Pattern overuse cap toàn batch**: にあって ≥30, たる ≥35, にほかならない ≥20+ (R_0609 ×6 trong 1 bài), にして ≥10 lệch tính chất → cắt ~70% còn ≤4/bài.
- **Cross-contamination meta-grammar Q たる/にあって 4/10 bài** (R_0604/R_0608/R_0609/R_0610) — phân bố meta xuống ≤2 bài.
- **Q4/Q5 length giveaway** ≥7 Q ratio 1.6-2.1× → cắt đáp án đúng / dãn distractor.

### R_0601 (Sei Shōnagon 枕草子) — GRAMMAR FAB
- **Fab grammar CRITICAL**: line 242 `清少納言がたる文学者` (がたる KHÔNG tồn tại — たる là 連体形 cổ của たり, gắn trực tiếp N→N) → `清少納言たる文学者`. Sửa cả guide line 244 (đang dạy fab pattern).
- **たる + proper N**: `清少納言たる才女` line 152, 176, 188 → giữ borderline 1 lần, đổi còn lại sang `清少納言という才女` / `才女・清少納言`.
- **Major**: 「失脚」 cho Teishi không hợp (gia đình Nakanokampaku-ke suy vong) → `家門の没落`.
- にあって ×3 (line 122, 164, 206) cluster → cắt còn 1.
- **Length giveaway** Q4 1.7× (line 356 = câu 19 nguồn nguyên văn) → paraphrase + rút.
- **Translation**: VN literal/lóng ngóng (`tài nữ xứng danh là Sei Shonagon...không gì khác là vậy`) → tự nhiên.

### R_0602 (Zen Minimalism) — FACTUAL + PLACEHOLDER + HANGUL
- **Factual error CRITICAL**: `七世紀に中国から伝来した禅` — SAI. Eisai 1191 (Rinzai) / Dōgen 1227 (Sōtō). Sửa: `十二世紀末から十三世紀にかけて伝来した禅` hoặc bỏ thế kỷ.
- **Hangul leak CRITICAL**: line 537 guide `kỹ thuật귀납 quy nạp` (귀납 Hàn) → `kỹ thuật quy nạp` / `귀납 → 帰納`.
- **Placeholder leak CRITICAL**: line 643-646 sentence #23 chunks không tách + guide "🔒 Đóng gói: câu phân tích bổ sung" + translation "Câu phân tích bổ sung." → REPLACE bằng nội dung thật cho câu `表層的な「モノを減らすライフスタイル」への矮小化は、禅の本義である「内なる過剰の解放」とはまったく異なる地平に位置する。`.
- **Pattern overuse**: にほかならない ×5 (line 511, 535, 589, 607, 637) → cắt ≤3.
- **Fab usage**: line 649 `認識論的転換にあって` (にあって + abstract "転換" thay vì N tình huống) → `認識論的転換において` / `転換の中で`.
- **Fab pattern**: line 559, 625 `からこそである` standalone → `からなのである` / `からにほかならない`.

### R_0603 (Hiratsuka Raichō)
- **Translation**: `tạp chí văn học Seitosha` SAI — tạp chí là `Seitō`, tổ chức là `Seitō-sha` → `tạp chí Seitō`.
- **Fab pattern**: line 948 `からこそである` standalone → `からである`.
- **たる + proper N**: line 930 `青鞜社の代表たる平塚` → `青鞜社の代表である平塚`.
- にあって ×4 (line 906, 918, 954, 1008) đụng cap → cắt 1.

### R_0604 (Nakagami Kareki-nada)
- **Title translation**: `Bãi cạn cây khô` SAI. 枯木灘 = vùng biển hở phía nam Wakayama → `Kareki-nada (vùng biển ngoài khơi Wakayama)` hoặc `Bãi biển Cây Khô` (灘 = vùng biển hở/sóng dữ, không phải bãi cạn).
- **Fab grammar CRITICAL**: line 1331 `独特の様式にして、…生成している` (N+にして+V "với cách thức đó/sinh ra"; chuẩn にして là (a) đồng nhất 2 vai trò người, (b) 80歳にして, (c) ~にして初めて) → `独特の様式によって…生成している`.
- **Fab grammar**: text `秋幸が自らのたる存在の由来` (たる không thể đứng giữa 自らの và 存在) → `自らの存在の由来` / `自らたる存在`.
- **たる + proper N**: line 1343 `父を知らぬ者たる秋幸` → `父を知らぬ者である秋幸`.
- にあって ×4 (line 1301, 1325, 1385, 1421) đụng cap → cắt.
- Q3 stem 2-in-1 (`文体 + また何を生み出すか`) → tách 1 câu hỏi đơn.

### R_0605 (Yamatai-koku) — FACTUAL + HANGUL + ものを
- **Factual error CRITICAL**: `1999年に纏向遺跡で発見された大型建物跡` → SAI. Phát hiện và công bố 2009/11. Sửa `2009年`.
- **Hangul leak CRITICAL**: line 1747 guide `연속성 = Yamatai → Yamato phải liên tục không gián đoạn` → bỏ Hangul, dùng `連続性 = ...`.
- **Fab pragma ものを CRITICAL**: line 1733 `理解できるものを、それをただちに...断定することは慎まなければならない` + line 1775 `否定できないものを、…慎重な姿勢が求められる` — ものを cần regret/reproach của speaker, ở đây là logical concession (≈ものの/とはいえ). → đổi `ものの` / `とはいえ` ×2.
- Q2 explanation line 1879 đang củng cố ものを sai → fix theo content mới.
- **Fab usage**: line 1781 `自然科学的手法の進展にあって` (にあって + N quá trình) → `~進展において`.

### R_0606 (Gutai Art)
- **Fab grammar**: line 2121 `身体たるものが` (たる + abstract sinh học) → `身体というものは`.
- **Pattern cluster**: line 2073 `画家にして思想家たる人物` — にして+たる cùng câu → giảm 1.
- **Length giveaway** Q5 2.0× (line 2328) → rút.

### R_0607 (Tosa Nikki)
- **Fab usage**: line 2508 `仮名文学という柔軟な表現形式にして初めて` (にして初めて + N-format) → `~表現形式によって初めて` / `~があってこそ`.
- **たる + abstract**: line 2538 `平安紀行文学の原型たる地位` → `~の原型としての地位`.
- **たる + proper N**: line 2568 `官人たる貫之` → `官人である貫之`.

### R_0608 (Noma 真空地帯) — TRANSLATION CRITICAL
- **Diacritic loss MASSIVE** trong VN translation: ~50% câu mất dấu hệ thống. Examples: `Trung tam câu chuyện la`, `tu tòa án binh`, `bi xâm thực can ban`, `boi nhìn nhận cua tha nhân`, `văn chươngương`, `nhieu su...va tre hoan`, `khien độc giả`, `Chi voi chiến lược...nay`, `Chinh trạng thái...nay la`, `duoc đánh giá cung voi`, `da thăng hoa`, `doc den ngày nay`, `chân thành nhat ma nen...thuc nghiem`, `đống đổ đạo đức`. → REWRITE toàn bộ translation với đầy đủ dấu Tiếng Việt.
- **Fab usage**: line 2916 `この文体的戦略にして初めて、『真空地帯』の圧迫感は完成する` (にして初めて + N abstract) → `~戦略によって初めて` / `~があってこそ`.
- **Romanization**: 大岡昇平 → Ōoka Shōhei (macron) thống nhất.

### R_0609 (Takiguchi Shuzō) — WORST OFFENDER + FABRICATED WORK
- **Factual error CRITICAL**: tập thơ `『水のなかのワニ』` KHÔNG TỒN TẠI trong oeuvre Takiguchi. Thay bằng `『余白に書く』(1966)` hoặc `『妖精の距離』(1937)`.
- **Pattern overuse CATASTROPHIC**: にほかならない ×6 (line 3142: 紹介者にほかならない / 行為にほかならなかった ×2 / 問いかけにほかならない / 現役にほかならない / 実例にほかならない) → cắt ≤3.
- **Pattern overuse**: にあって ×3 + line 3340 `偶然にあって` (にあって + abstract "偶然") → `偶然から/偶然によって`.
- **Pattern overuse**: にして ×4 (line 3300, 3316, 3322, 3334) đụng cap + fab usage:
  - line 3316 `批評家にして詩人たる瀧口` (にして+たる compound + tên riêng) → `批評家であり詩人でもある瀧口`
  - line 3322 `瀧口の批評文にして詩的なテクスト` (にして nối N+adj+N lệch) → `瀧口の批評文でありかつ詩的なテクスト`
- **たる + proper N ×3**: line 3274 `批評家たる瀧口`, line 3358 `思想家たる瀧口` + line 3316 → cắt còn 1.
- **VN typo**: line 3143 `được nén nén` (duplication) → `được nén nhưng vẫn`.
- **Length giveaway** Q5 toàn batch + bài này.

### R_0610 (Kokin Wakashū) — FACTUAL + META
- **Factual error CRITICAL**: `七〇五首に及ぶ歌を二十巻に分類` SAI. Kokinshu chứa **約1,111首** (流布本) → `約一一一一首` / `約1,100首`.
- **Quote**: 仮名序 trích bỏ `やまとうたは` đầu → khôi phục `やまとうたは人の心を種として、よろづの言の葉とぞなれりける`.
- **Fab pattern**: line 3722 `からこそである` standalone → `からである`.
- **たる + proper N**: line 3740 `紀貫之たる詩学者` → `紀貫之という詩学者`.
- **Meta-grammar 2/5 CRITICAL** (Q3 たる + Q4 にあって) → giảm 1/5, đổi 1 sang content.
- **Length giveaway** Q5 2.1× → rút.
- **Stem 2-in-1** Q5 (line 3879) → tách.

## P2 — SHOULD FIX (Major systemic)

- たる ≤4/bài (cắt ~70%), bỏ với proper N (清少納言/平塚/秋幸/貫之/瀧口 ×3/紀貫之) trừ formula `~たる者`.
- にあって ≤4/bài; bỏ với abstract (転換/進展/偶然/文学/自由/裏切り) — chỉ giữ với N tình huống/thời kỳ.
- にして cấm gắn N abstract (様式/戦略/表現形式/批評文); chỉ giữ (a) 2 vai trò người, (b) 年齢/数量, (c) ~にして初めて + người/điều kiện cụ thể.
- にして初めて: bỏ với abstract concept (文学化/集団的創造/転換).
- N+ばこそ direct → V/A仮定+ばこそ / N+であればこそ. あったればこそ → あればこそ.
- からこそである standalone → からである / からなのである / からにほかならない.
- ものを ngữ nghĩa ngược → ものの / とはいえ.
- Q4 paraphrase distance: rewrite synonym hóa, không copy literal source.
- Distractor extreme cluster ≤2/Q (blacklist 完全/唯一/だけ/のみ/最も/全面的/根本的).

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài (đặc biệt sau khi fill placeholder R_0602)
- [ ] R_0601: 清少納言がたる → 清少納言たる
- [ ] R_0602: 七世紀 → 十二世紀末; 귀납 Hangul → 帰納; sentence #23 placeholder fill
- [ ] R_0603: Seitōsha → tạp chí Seitō
- [ ] R_0604: にして fab → によって; Kareki-nada title; 自らのたる sửa
- [ ] R_0605: 1999 → 2009; 연속성 Hangul → 連続性; ものを ×2 → ものの/とはいえ
- [ ] R_0608: REWRITE translation diacritics
- [ ] R_0609: 水のなかのワニ → 余白に書く / 妖精の距離; にほかならない ×6 → ≤3; nén nén → nén nhưng vẫn
- [ ] R_0610: 705首 → 1,111首; やまとうたは khôi phục
- [ ] にあって/たる/にほかならない ≤4/bài
- [ ] N+がたる, N+abstract+たる, からこそである standalone bỏ
- [ ] Q2 cause ≥5/10
- [ ] Meta-grammar Q ≤1/5 (R_0610 đang 2/5)
- [ ] Q5 length ≤1.3×
- [ ] Q stem 2-in-1 (R_0604 Q3, R_0610 Q5) tách
- [ ] No Hangul / TQ giản thể
