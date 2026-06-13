# Consolidated fix list — batch_0541_0550 (N1_basic cấp 9)

File: `books/reading_collection/n1_basic_drafts/batch_0541_0550.json`

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q2 cause-format**: chỉ 0-2/10 dùng なぜ/どうして/理由 — phải đạt ≥5/10. Chọn 3 bài bất kỳ chuyển Q2 sang dạng cause (gợi ý: R_0541, R_0544, R_0546, R_0549).

### R_0541 (宗教意識)
- **Fab grammar**: `たる宗教学者ならば` (sentence-initial, không có N trước たる) → đổi thành `宗教学者たる者ならば` hoặc `宗教学者であれば`.
- **Fab grammar**: `苦難ばこそ浮かび上がる` (N+ばこそ direct) → `苦難があればこそ浮かび上がる`.
- Q3 đang khóa fab grammar 苦難ばこそ → viết lại Q3 hoặc chuyển sang content Q.
- **Currency miss**: thêm 旧統一教会・安倍元首相銃撃 2022/7 + 解散命令 2025/3 (sự kiện tôn giáo lớn nhất giai đoạn này) + 孤独・孤立対策推進法 2024/4.

### R_0542 (夏目漱石)
- **Fab grammar**: `機械的に輸入するが最後` (Vる+が最後) → `機械的に輸入したが最後`.
- Q4 + 4 options + explanation đang phân tích fab → viết lại Q4 hoặc chuyển sang content Q.
- **Process placeholder leak NẶNG** (sentences 526-547, 4 câu liên tiếp): "🔒 Đóng gói: câu phân tích bổ sung từ 草枕" / translation = "Câu bổ sung từ trích dẫn 草枕." → REPLACE 4 câu này bằng nội dung thật hoặc xóa rồi adjust sentence_count.
- **Meta-grammar 2/5**: Q3 「ものを」, Q4 「が最後」 → giảm xuống 1/5, đổi 1 Q sang content.

### R_0543 (ガラパゴス化)
- **Factual mislabel**: `Sony Ericsson` không phải hãng Nhật thuần → đổi sang `Panasonic / 富士通 / 京セラ` (kèm NEC, シャープ).
- **Meta-grammar 2/5**: Q2 (たるや) + Q3 (あっての) → đổi 1 Q sang content.
- Q5 distractor C/D chứa `唯一の解決策` + `のみに` (extreme cluster ≥2) → viết lại 2 distractor.
- **Currency miss**: thêm 生成AI/ChatGPT (DX không thể tách khỏi GenAI), TSMC熊本工場 2024/2, ラピダス 2027.

### R_0544 (寺山修司)
- **Q3 length giveaway**: đáp án đúng 87 chars vs distractor min 35 (~2.5×) → rút ngắn đáp án đúng.
- **Q5 length giveaway**: ratio ~2.3× → rút ngắn đáp án đúng hoặc kéo dài distractor.

### R_0545 (ジェンダー)
- **Fab grammar**: `その粘り強さばこそが` (N+ばこそ direct) → `粘り強さがあればこそ`.
- **Forced にして** sentence 1545, 1565 (`不平等構造にして…温床ともなっている`, `楽観論にして…言い訳になりかねない`) → đổi sang `~であって` / tách câu.
- **Q3 fab grammar 「ばこそ」** đang dạy form sai → fix prompt + đáp án.
- **Q4 copy literal câu 7** (管理職比率の数値目標達成に...批判されている) → paraphrase xa.
- **Q5 distractor cluster 3/4 extreme** (即座に / 唯一の方法 / だけで…自然に) → viết lại ≥2 distractor.
- **Q5 length giveaway** >150 vs 60 chars → rút ngắn.
- **Currency miss CRITICAL**: 
  - WEF 2024 ranking 118位/146 (KHÔNG còn 125位 2023)
  - LGBT理解増進法 2023/6
  - 共同親権 改正民法 2024/5 成立, 2026/5 施行 (đúng tháng hiện tại!)
  - 不同意性交等罪 2023/7
  - 選択的夫婦別姓 経団連提言 2024/6

### R_0546 (絹の道)
- **Fab grammar**: `その波に飲み込まれが最後` (V-stem+が最後) → `飲み込まれたが最後`.
- Q2 + explanation đang khóa fab → fix.
- **Q5 length giveaway** ratio >3× → rút ngắn đáp án đúng.
- **Q5 distractor blacklist**: A `完全に保護された`, D `最小限` → đổi.
- **Currency miss**: 富岡製糸場 UNESCO 2014/6 (key event, không thể bỏ qua nếu bài về 富岡).

### R_0547 (AI ethics) — WORST IN BATCH
- **Pattern overuse CATASTROPHIC**:
  - `にあって` 7 lần (cap 4) → cắt xuống ≤4, đổi 3 lần sang `~の中で / ~において / ~では`
  - `たる` 6 lần (cap 4), nhiều fab: `命題たるもの`, `主体たる問題`, `AIたる存在` → cắt xuống ≤4, fix các fab cases (命題, 主体, AI không phải role/qualifier noun)
  - `にして` 4 lần với 4 nghĩa khác nhau → giảm còn ≤2, fix sentence 2490 (`他地域のアプローチにして` ngữ pháp lỗi)
- **Q3 length giveaway** 75 vs 35 → rút.
- **Q5 length giveaway** 130 vs 50 → rút.
- **Currency miss CRITICAL** (bài AI 2024-2026 mà không có):
  - 生成AI / ChatGPT 2022/11, GPT-4 2023/3
  - EU AI Act 2024/3 採択, 2024/8 施行
  - 広島AIプロセス G7 2023/10
  - AI事業者ガイドライン 2024/4 (経産省+総務省)
  - AlphaFold 3 2024/5
- **Q4 distractor blacklist**: D `根本的に矛盾`, A `全く` → fix.

### R_0548 (川端 雪国)
- **Fab grammar**: `受容することでばこそ` (Vる+ことで+ばこそ compound bịa) → `受容してこそ` hoặc `受容するからこそ`.
- **Meta-grammar 2/5**: Q3 (にして) + Q4 chứa `ばこそ` trong text đáp án → giảm 1/5.
- **Q5 length giveaway** 140 vs 50 → rút.
- **Q2 distractor** D `簡単な言葉だけ`, **Q4** B `完全な空白` → blacklist cluster, đổi.

### R_0549 (少子化)
- **Fab grammar**: `向き合う意志たる者こそが` (たる者 với abstract `意志`) → `向き合う意志ある者` hoặc `意志を持つ者`.
- Q5 đang khóa fab pair `国家たる者 / 意志たる者` → tách: giữ 国家たる者, fix 意志たる者.
- **Q5 META-RHETORIC drift** (hỏi về kỹ thuật lặp たる者 đầu/cuối thay vì main message) → viết lại Q5 thành main-message synthesis.
- **Q3 length+meta** đáp án 95 vs 35 → rút + đổi sang content nếu vượt meta cap.
- **Currency miss CRITICAL** (bài 少子化 2024-2026 mà không có):
  - こども家庭庁 2023/4/1
  - 異次元の少子化対策 2023/1 + こども未来戦略 2023/12 (3.6兆円)
  - 産後パパ育休 2022/10 + 男性育休 2023年度 30.1%
  - 児童手当拡充 2024/10
  - こども基本法 2023/4
  - 2024年 TFR 1.15 (発表 2025/6)
  - 育成就労制度 2024/6 thay 技能実習
- **Q4 distractor blacklist**: A `全く`, B `強く`; **Q5** D `唯一` → fix cluster.

### R_0550 (太宰治)
- **Fab grammar**: `視線を感じるが最後` (Vる+が最後) → `感じたが最後`.
- **Fab grammar**: `生きようとするが最後` (Vる+が最後) → `生きようとしたが最後`.
- **TRANSLATION TRUNCATE**: câu cuối JP `人間失格は…永遠の問いである。` thiếu trong translation field → bổ sung.
- **Q5 copy literal câu 20** (自己を偽ることなく…避けられない) → paraphrase xa.
- **Q4 distractor cluster**: A `完全な…疑いの余地はない断言`, C `完全な虚構` → đổi.

## P2 — SHOULD FIX (Major systemic)

- Q5 length giveaway >1.3× ở **6/10 bài**: R_0541, R_0544, R_0545, R_0546, R_0547, R_0548, R_0549, R_0550 — rule: rút đáp án đúng ≤1.3× distractor min OR kéo dài distractor.
- Distractor extreme cluster ≥2/Q rải rác R_0541, R_0542, R_0545, R_0546, R_0547, R_0548, R_0550 — blacklist: 唯一/全て/決して/完全/だけ/のみ/最も/しか/過ぎない/不要/廃止/中止/最善/必ず/即刻/さえ/詐欺的/最大/完璧/根本的/抜本的/排除/消滅/一切/直ちに/誇大広告/強制.
- Distractor philosophy: thay vì "extreme/dễ loại" → dùng "partial truth" (1 ý đúng nhưng không phải answer cốt lõi) để train Bloom L4.

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài
- [ ] translation field đủ câu cuối
- [ ] Không còn Vる+が最後 / N+ばこそ direct / V-stem+が最後 / たる với non-role noun
- [ ] にあって ≤4/bài, たる ≤4/bài, にして ≤4/bài
- [ ] Q2 cause-format ≥5/10 toàn batch
- [ ] Meta-grammar Q ≤1/5 mỗi bài
- [ ] Q5 main-message synthesis (không meta drift)
- [ ] Q5 length ratio ≤1.3× min distractor
- [ ] Distractor extreme cluster ≤2/Q
- [ ] Q4/Q5 không copy literal câu nguồn
- [ ] R_0542 placeholder leak xóa hết
- [ ] R_0547 currency 2024 đầy đủ
- [ ] R_0549 currency 2024 đầy đủ
- [ ] R_0545 currency 2024 đầy đủ
