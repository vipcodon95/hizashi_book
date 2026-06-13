# Consolidated fix list — batch_0551_0560 (N1_basic cấp 9)

File: `books/reading_collection/n1_basic_drafts/batch_0551_0560.json`

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q2 cause-format**: chỉ 2/10 dùng なぜ/理由 (R_0551, R_0559) — phải ≥5/10. Chọn thêm 3 bài chuyển Q2 sang dạng cause (gợi ý: R_0552, R_0554, R_0557).
- **Pattern overuse CATASTROPHIC toàn batch**:
  - `にして` 28 lần (cap 4) → cắt rộng, đặc biệt R_0552 (≥5×), R_0556 (≥5×), R_0557 (≥5×)
  - `たる` 19 lần → cắt rộng, đặc biệt R_0554 (≥6×), R_0558 (≥5×)
  - `ばこそ` 12 lần → cắt
  - `につけ` ≥5 lần → cắt
  - Phân tán pattern đi: dùng `~に他ならない / ~に値する / ~ずにはいられない / ~を余儀なくされる` thay thế.

### R_0551 (歴史認識)
- **Fab grammar `Nにつけ` direct**: 
  - sentence 136-137 `歴史認識のずれにつけ` → `歴史認識のずれをめぐって` hoặc `~にあたって`
  - sentence 178-179 `分断につけ` → `分断にあたって` / `分断について`
- **Meta-grammar 3/5** (Q2 たる, Q3 ばこそ, Q4 につけ) → giảm xuống ≤1/5, đổi ≥2 Q sang content.
- **Q5 distractor blacklist**: A `廃止` + `完全`, D `だけ` → viết lại 2 distractor.
- **Currency miss**: 2024 教科書検定 沖縄記述, Yoon-Kishida rapprochement 2023.
- **Translation nuance**: 自虐史観 = "sử quan tự ngược đãi/tự sỉ vả" (KHÔNG "sử quan bản thân"). 慰安婦 = "phụ nữ mua vui (cho quân đội)" (KHÔNG "giải khuây" — softening quá mức).

### R_0552 (村上隆) — FACTUAL CRITICAL
- **FACTUAL ERROR**: sentence 1 `1962年、大阪に生まれながらに` → SỬA `1962年、東京に生まれながらに` (Murakami sinh tại Tokyo Itabashi, KHÔNG Osaka). Translation cũng sửa.
- **FACTUAL ERROR**: `2008年のクリスティーズ・オークション…約15億円` → SỬA `2008年のサザビーズ・ニューヨーク…約16億円(1,516万ドル)` (My Lonesome Cowboy bán ở Sotheby's NY 5/2008).
- **Hangul leak**:
  - line 414 vocab `堂々と` meaning chứa `당당하게` → bỏ Hangul
  - line 476 process guide `動詞겸khiêm` → bỏ Hangul `겸`
  - line 572 process guide `时间의 경과` → đổi `時間の経過` (vừa Hangul vừa giản thể)
- **Fab grammar**:
  - line 492-493 `再定義するにして` (Vる+にして) → `再定義しつつ` / tách câu
  - line 546-547 `機能するにして` → `機能しつつ`
- **Meta-grammar 3/5** (Q2 にして, Q3 にあって stylistic, Q5 ながらに repetition) → giảm xuống 1/5.
- **Q5 length giveaway** ratio ~2.1× → rút.
- **Currency add**: 2024/2-9 京セラ美術館大規模展.

### R_0553 (日本語の変容)
- **Fab grammar**: line 897-898 `これらの語にばこそ` (N+に+ばこそ bịa) → `これらの語にあってこそ` hoặc `これらの語こそ`.
- **Quote attribution**: `言語学者たる鈴木孝夫…『言語の自己崩壊』と呼び` — quote không có nguồn primary. Đổi sang `ある言語学者は…と評し` hoặc gỡ tên cụ thể.
- **Q5 distractor cluster** (B `規制すべき` + A `不可避` + `甘受すべき`) → fix 1 distractor.
- **Currency add**: 文化庁 2022「公用文作成の考え方」, 生成AI 2023+ ảnh hưởng tiếng Nhật.

### R_0554 (日本庭園)
- **Fab grammar**:
  - line 1245-1246 `庭たる存在` (たる với danh từ vô tri) → `庭という存在` / `庭そのもの`
  - line 1257-1258 `構成されるにして` → `構成されつつ`
  - line 1293-1294 `岩山の縮図たるべく` (縮図 không phải role) → `岩山の縮図として`
  - line 1323-1324 `引き渡すことにして` → `引き渡しつつ`
- **Pattern たる ≥6×** → cắt còn ≤4.
- **Q5 length giveaway** 95 vs 50 (1.9×) → rút.

### R_0555 (精神保健)
- **Fab grammar**:
  - line 1702-1703 `偏見を解消するためにばこそ` → `解消するためにこそ`
  - line 1714-1715 `信じてばこそ` (te+ばこそ) → `信じればこそ`
- **Currency miss CRITICAL** (bài mental health 2024-2026):
  - 自殺者数 2023 = 21,837 (giảm từ 30k 2003)
  - こども家庭庁 2023/4
  - COVID 後 若年女性自殺急増
  - ヤングケアラー (厚労省 2022 定義)
  - 改正精神保健福祉法 2022 (2024/4 施行)
- **Translation**: 統合失調症 (2002年改名 từ 精神分裂病) — gloss thêm "rối loạn tâm thần phân liệt".

### R_0556 (伝統建築)
- **Fab grammar**:
  - line 2032-2033 `簡潔さにして…生み出す` (N+にして+動詞句, lệch loại) → `簡潔さでありながら…生み出す`
- **Quote attribution**: 「丹下健三…機能性あっての美…守りながらも」 — không phải nguyên tắc gắn tên Tange. Đổi `ある建築家は…と捉え` hoặc generic.
- **Currency add CRITICAL**: 2025年大阪万博 木造リング (世界最大級木造建築 by 藤本壮介), 改正建築基準法 2022 中大規模木造, 隈研吾 国立競技場 2019.

### R_0557 (村上春樹)
- **Fab grammar**: line 2405-2406 `村上たる作家` (proper N+たる, không phải role/qualifier) → `村上という作家` / `作家・村上`.
- **Translation duplicate**: 『世界の終わりとハードボイルド・ワンダーランド』 dịch lặp 2 vế "Hard-Boiled Wonderland", BỎ 「世界の終わり」 → sửa thành "Nơi tận cùng thế giới và Xứ sở diệu kỳ tàn bạo".
- **Currency add**: 『街とその不確かな壁』 2023/4 (tác phẩm mới nhất phải nhắc).

### R_0558 (ポストモダン哲学)
- **Fab grammar**: 
  - line 2766 `哲学たる思索`, line 2784 `哲学たる営み`, line 2826 `ポストモダン哲学たる思索の核心` (哲学 không phải role) → đổi `哲学的思索` / `哲学という営み`.
- **Pattern たる ≥5×** → cắt ≤4.
- **Currency add**: 柄谷行人 バーグルエン哲学・文化賞 2022 (sự kiện lớn cho triết học Nhật).

### R_0559 (気候変動と農業)
- **Fab grammar**:
  - line 3145-3146 `崩壊が最後` (N+が最後 direct) → `崩壊したが最後`
  - line 3109-3110 `高級銘柄にして…難しく`, line 3205-3206 `未曾有の挑戦にして…珍しく` (にして lệch nghĩa) → đổi sang `~であっても` / `~でも`
- Q2 line 3242 + explanation đang khóa fab `崩壊が最後` → fix.
- **Factual overstatement**: `30年間で約1.2度上昇` — phóng đại. JMA: 1898→2023 +1.35℃/100年; 30 năm gần đây ~0.5-0.7℃ → sửa "約0.5-0.7度" hoặc đổi sang "1898年以降約1.4度".
- **Translation**: 白未熟粒 = "hạt gạo bạc bụng/đục trắng do nhiệt cao" (KHÔNG "hạt chưa chín trắng" — sai nuance kỹ thuật).
- **Currency miss CRITICAL**:
  - 令和の米騒動 2024 夏 (rice shortage)
  - 食料・農業・農村基本法改正 2024/6
  - スマート農業技術活用促進法 2024/5
  - 2023年産米 一等米比率 lịch sử thấp (新潟 4.7%)

### R_0560 (アイヌ文化)
- **Fab grammar**: line 3572-3573 `アイヌ民族の歩みにして…鏡でもある` (にして borderline forced) → giữ nếu B song song với A; nếu không thì đổi `~であり、また…でもある`.
- **Translation gloss**: 和人 (Wajin) — gloss "người Wajin (人Nhật chính tộc, không phải Ainu)".
- **Currency add**: 2024/4 白老町 アイヌ施策推進地域計画改定, 国立アイヌ民族博物館 累計100万人 2023.

## P2 — SHOULD FIX (Major systemic)

- **Sensitive terms policy**: 自虐史観 / 慰安婦 / 統合失調症 / 先住民族 — gloss chuẩn academic, tránh softening hoặc literal mất nuance.
- **Quote attribution**: KHÔNG đặt cụm 「と呼んだ」/「と評した」 vào miệng học giả thật khi không có nguồn primary. Dùng phiếm chỉ.
- **Distractor philosophy**: chuyển từ "extreme/cực đoan" sang "partial truth/half-correct" để train Bloom L4 Analyze.
- **Q5 length ratio** ≤1.3× min distractor (đặc biệt R_0552 Q5, R_0554 Q5).
- **Q4/Q5 paraphrase distance**: keyword-match ở R_0551 Q4 (影 → 影響) cần synonym hóa thêm.

## Verify checklist sau fix
- [ ] R_0552 sửa: Tokyo (KHÔNG Osaka), サザビーズ約16億円 (KHÔNG クリスティーズ約15億円)
- [ ] Hangul/giản thể leak hết: line 414, 476, 572
- [ ] Không còn Vる+にして / Vる+が最後 / N+ばこそ direct / Vてばこそ / たる với non-role noun (庭/縮図/哲学/命題/主体/AI/村上/意志)
- [ ] にして ≤4/bài, たる ≤4/bài, ばこそ ≤4/bài, につけ ≤4/bài (toàn batch cap)
- [ ] sentence_count == len(process[]) per bài
- [ ] Q2 cause-format ≥5/10 toàn batch
- [ ] Meta-grammar Q ≤1/5 mỗi bài (đặc biệt R_0551, R_0552 đang 3/5)
- [ ] Q5 main-message synthesis (không meta drift)
- [ ] Currency 2024-2026: R_0552 (Tokyo展), R_0555 (mental health), R_0556 (万博 木造), R_0557 (街と…2023), R_0558 (柄谷 2022), R_0559 (令和の米騒動 2024 + 基本法 2024/6), R_0560 (2024 updates)
- [ ] Quote attribution: R_0553 鈴木孝夫, R_0556 丹下健三 — gỡ tên thật hoặc dùng phiếm chỉ
