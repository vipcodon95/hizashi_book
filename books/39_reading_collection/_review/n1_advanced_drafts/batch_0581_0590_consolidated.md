# Consolidated fix list — batch_0581_0590 (N1_advanced cấp 9)

File: `books/reading_collection/n1_advanced_drafts/batch_0581_0590.json`

**Đặc điểm batch**: HEAVIEST từ trước đến giờ. Pattern overuse 12-fold cap (にあって 124, たる 123, にほかならない 101 toàn batch ~12-10/bài). 4 critical factual errors. 1 Hangul leak. Length giveaway >2× hệ thống ≥7/10 bài.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Pattern overuse CATASTROPHIC** (cap ≤4/bài, hiện 12/bài):
  - にあって 124 instances → cắt còn ~40 (4/bài)
  - たる 123 instances → cắt còn ~40
  - にほかならない 101 instances → cắt ~30
  - ばこそ 37 (giáp ngưỡng)
  - にして & ゆえに/がゆえに likely vượt cap
  - Replace patterns: において / の中で / の状況下で / による / によって / である / であろう / といえる
- **Length giveaway hệ thống** ≥7/10 bài Q4/Q5 ratio 2-3.6× (R_0581 4/5 Q dính, R_0582 Q4 Q5, R_0583 Q3 Q4, R_0584 Q2 Q5, R_0585 Q5, R_0586) → cắt đáp án đúng ≤1.3×.
- **Distractor extreme cluster mật độ cao** toàn batch (完全/のみ/全面的/根本的) → soft-tone "partial truth".

### R_0581 (Soseki こころ) — FACTUAL CRITICAL
- **Factual error**: text viết `明治四十七年に朝日新聞に連載` — Meiji chỉ kéo dài tới Meiji 45 (1912). Kokoro đăng `大正三年 (1914)`. Sửa text JP + translation VN.
- **Fab grammar CRITICAL**: line 207, 209 `先生ばこそ可能な選択` (N+ばこそ direct) → `先生であればこそ可能な選択`.
- **Mismatch**: `先生たるもの` ×3 (line 25, 147, 184) — 先生 là biệt danh nhân vật, không phải nghề/vai → đổi `先生という人物` / bỏ たるもの.
- **Pattern overuse**: にあって ≥5 lần (沈黙にあって/「裏切り」にあって forced với cảm xúc/sự kiện) → cắt ≤4, đổi 「沈黙にあって」 → 「沈黙において」.
- **Length giveaway 4/5 Q** (Q1 2.7×, Q2 3.1×, Q4 3.2×, Q5 3.6×) → rút mạnh đáp án đúng.
- **Translation literal**: `bẫy văn học` cho 文学的仕掛け → `thủ pháp văn học`.

### R_0582 (Akutagawa 地獄変) — FACTUAL CRITICAL
- **Fab grammar CRITICAL**: 「美学があったればこそ」(あったればこそ giả-grammar mix cổ+hiện đại không tồn tại) line 415, 524, 526, 656 → `美学があったからこそ` hoặc `美学があればこそ`.
- **Mistranslation CRITICAL**: 
  - `siết sinh` cho 死生観 (encoding loss/typo) → `quan niệm tử-sinh` line 416
  - `lời nhắn đề lo mờ mang bóng lo âu không rõ hình` cho 「ぼんやりとした不安」 (di thư của Akutagawa, = "nỗi lo âu mơ hồ") → "câu 'nỗi lo âu mơ hồ'" line 416, 611
  - `bùng hoảng` cho 震撼 (typo) → `bàng hoàng`
- **Kanji leak trong VN**: `舞台` chưa dịch trong translation line 416, line 1196 (R_0584) → dịch hết.
- **Mistranslation**: `thiêng liêng đến mức` cho 執念たるや → `mãnh liệt đến mức` / `cực đoan đến mức`.
- **Pattern overuse**: たるや ×3 (執念/行為/技法) line 415 → cắt còn 1.

### R_0583 (Nishida) — PEDAGOGY ERROR
- **Pattern overuse**: にあって ×4 (line 899, 953, 977, 994) + guide explicitly dạy "4 nghĩa khác nhau" → SAI pedagogy. にあって chỉ 1 nghĩa core.
- **Fab compound questionable**: line 1006-1008 `問題設定の独自性においてにほかならない` + dạy như "cấu trúc N1" → bỏ "においてにほかならない", đổi `~にほかならない`.
- **Translation literal**: `vườn lê` cho 梨園 (R_0584) → `giới Kabuki`.

### R_0584 (Yotsuya Kaidan)
- **Fab grammar**: ものを + Y không phải bad outcome (R_0584 line 1195, 1330, 1331 `本来ならば芸術は現実を模倣するものを、四谷怪談の場合は逆に怨念が現実へと滲み出すと信じられ`) — Y là quan niệm văn hóa, không phải kết cục tiêu cực → `~のに` / `~はずだが`.
- **たる sai semantic**: `名跡たる梨園の家系` (名跡 là vật/khái niệm, không xứng-vai) line 1195 → `名跡を継ぐ梨園の家系`.
- **Pattern overuse たる ×4** (怨霊/名跡/幽霊劇/役者) → cắt ≤2.
- **Q4 stem 2-in-1**: "二重性とは何か。また、その二重性はどのような文学的効果をもたらすか" → tách 1 câu hỏi đơn.
- **Length giveaway** Q2 2.4×, Q5 2.2× → rút.

### R_0585 (Wabi-Sabi-Yugen) — FACTUAL CRITICAL
- **Factual error**: text viết `寂びの概念は、本居宣長や後の文化論を経て…` — Norinaga lý thuyết hoá `物の哀れ`, KHÔNG phải sabi. Sabi gắn với `松尾芭蕉と門人 (去来抄、三冊子)`. Sửa attribution.
- **Fab compound**: 
  - line 1591 `~によってこそ` ×3 (断ち切ることによってこそ/遠ざかることによってこそ/言い尽くされないことによってこそ) — non-canonical → `~によって(初めて)` / `~してこそ`
  - line 1707, 1751 `にあってこそ` ×2 → `~にあって(初めて)` / `~でこそ`
  - line 1751 `からこそである` standalone → đổi `~からなのである` / `~だからこそである` với clause + nominal trước.
- **Q4 stem 2-in-1 + meta drift CRITICAL** (R_0585_Q4 "理由+使われている文法はどれか") → tách 1 câu hỏi đơn, bỏ phần meta-grammar.
- **Meta-grammar 2/5** (Q2 たる + Q4 grammar) → giảm 1/5.

### R_0586 (Zeami)
- Pattern lặp tag set (にあって/たる/ばこそ/にほかならない) → cắt.

### R_0587 (Hojoki) — FACTUAL CRITICAL
- **Factual error**: text viết `元久二年（一二〇五年）に日野山に隠棲し、その三年後の承元二年（一二一二年）に完成` — SAI. 承元2 = 1208 (KHÔNG 1212). 1212 = 建暦二年. Chomei ẩn cư 1208 (承元2), không 1205 (1205 = 元久2 = 新古今集 hoàn thành). Sửa: `承元二年（一二〇八年）に日野山に隠棲し、その四年後の建暦二年（一二一二年）に完成`.

### R_0588 (Edo Confucianism)
- Check ものを direction (như R_0584).

### R_0589 (Mishima Kinkaku-ji) — HANGUL LEAK CRITICAL
- **Hangul leak**: line 3370 + 3379 `Kim각Tự` (각 = Hangul Hàn) → `Kim Các Tự` (encoding/IME bug).

### R_0590 (Dogen) — FACTUAL CRITICAL
- **Factual error**: text viết `江戸時代の禅僧鉄眼道光は、…律宗の文脈で活躍した` — SAI. 鉄眼道光 (1630-1682) thuộc `黄檗宗` (Obaku-shu, đệ tử 隠元). Sửa `律宗` → `黄檗宗`.
- **Meta-grammar 2/5** (Q2 にあって + Q4 にして 筆者の意図) → giảm 1/5.

## P2 — SHOULD FIX (Major systemic)

- **REJECT-and-REWRITE consideration**: 10/10 bài cùng "tag formula" (にあって/たる/ばこそ/にほかならない/をもって) → đa dạng hóa pattern N1: `ともなしに / とは限らない / にひきかえ / ところを / 始末だ / ばそれまでだ / とあれば / ものと思われる / ともあろうものが`
- **Translation field bookish/literal** nhiều chỗ — review tổng thể.
- **Q4 paraphrase distance**: R_0581_Q1, Q3, R_0584_Q2, R_0586_Q3 copy gần nguyên văn → paraphrase xa.
- **Distractor philosophy**: bỏ "extreme version" mặc định → "partial truth".

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài
- [ ] R_0581: 明治47 → 大正3 (1914); 先生ばこそ → 先生であればこそ
- [ ] R_0582: あったればこそ → あったからこそ; siết sinh → tử-sinh; ぼんやりとした不安 sửa dịch; 舞台 leak; 震撼 typo
- [ ] R_0585: Norinaga sabi → Basho-môn nhân
- [ ] R_0587: 承元2=1208, 建暦2=1212
- [ ] R_0589: Kim각Tự → Kim Các Tự (Hangul leak)
- [ ] R_0590: 律宗 → 黄檗宗
- [ ] にあって ≤4/bài (cắt ~70% instances)
- [ ] たる ≤4/bài (cắt ~70%, giữ chỉ với role/title noun)
- [ ] にほかならない ≤4/bài (cắt ~70%)
- [ ] N+ばこそ direct → V/A仮定形+ばこそ / N+であればこそ
- [ ] ものを ngữ nghĩa ngược (R_0584) → のに / はずだが
- [ ] Q4/Q5 length ratio ≤1.3× (đặc biệt R_0581, R_0582, R_0584)
- [ ] Q stem 2-in-1 (R_0584_Q4, R_0585_Q4, R_0589_Q5, R_0590_Q4) tách
- [ ] Meta-grammar Q ≤1/5 (R_0581, R_0585, R_0590 đang 2/5)
- [ ] Distractor extreme cluster ≤2/Q
- [ ] Q4 paraphrase xa, không copy literal
- [ ] No Hangul/TQ giản thể
