# Consolidated fix list — batch_0641_0650 (Native_basic cấp 10)

File: `books/reading_collection/native_basic_drafts/batch_0641_0650.json`

**Đặc điểm**: 8/10 bài clean về linguistic. R_0646 placeholder leak ×10 CRITICAL. R_0650 ものの fab. R_0649 BOJ "17年ぶりマイナス金利解除" merge sai sự kiện. R_0644 NHK title bịa. Q5 length giveaway hệ thống ≥2× (8/10). Q2 cause = 1/10.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q5 length giveaway hệ thống** 8/10 ratio 2-3× → rewrite Q5: cắt correct ~50-60 chars JP, expand distractors lên ~50 chars để ratio ≤1.3×.
- **Q2 cause-format = 1/10** → ≥5/10. Hiện cause-format markers (なぜ/どうして/理由) bị "lệch slot" sang Q1 (R_0643/R_0646/R_0647/R_0650). Trượt cause Q từ Q1 sang Q2 ở 4 bài này (Q1 có thể chuyển sang form khác).

### R_0646 (Yoshimoto Banana Kitchen) — PLACEHOLDER LEAK CRITICAL
- **10 process entries placeholder leak** (line 2261-2426): guide rỗng "🔒 Đóng gói: câu phân tích bổ sung." + translation "Câu bổ sung." cho các câu:
  - line 2261 「はい。」
  - line 2267 「なんか、落ち着くんです」と私は答えた。
  - line 2381 泣いても構わない。
  - line 2387 玉ねぎのせいにすればいい。
  - line 2393 それが私なりの、悲しみとの付き合い方だった。
  - line 2399 台所はいつも正直だ。
  - line 2405 腹が減ったら食べる。
  - line 2411 悲しければ料理する。
  - line 2417 怒っていれば切る。
  - line 2423 感情に形を与えてくれる場所だと、私はずっと思ってきた。
- → REPLACE 10 entries với guide thật (đặc biệt bộ tứ 台所はいつも正直だ/腹が減ったら/悲しければ/怒っていれば — đặc trưng văn phong Yoshimoto).

### R_0644 (NHK Young Carer) — FACTUAL CRITICAL
- **NHK title attribution CRITICAL**: text viết `2021年、NHKスペシャル「ヤングケアラー—見えない子どもたちの叫び」` — title bịa. NHK doc thực tế là `「ヤングケアラー〜幼き介護者たち〜」`. Sửa title hoặc dùng generic `ヤングケアラーをめぐる特集`.
- **Currency miss CRITICAL**: thiếu **2024/4 改正子ども・若者育成支援推進法** (định nghĩa pháp lý ヤングケアラー lần đầu) — bài bảo "包括的な立法はいまだ存在しない" outdated. Update.
- **Major timing**: 厚労省 全国実態調査 published `2021/4` (KHÔNG 2020). Sửa.

### R_0649 (Nikkei Yen) — FACTUAL CRITICAL
- **Factual error CRITICAL**: text viết `日本銀行は2024年3月、17年ぶりとなるマイナス金利政策の解除` SAI. マイナス金利 đặt 2016/1, chỉ 8 năm. Đúng phải tách: `マイナス金利政策の解除と17年ぶりの利上げを同時決定` (利上げ lần đầu kể từ 2007/2). Sửa.
- **Currency miss**: bài kết thúc 2024/3 không cập nhật 2024/7 + 9 BOJ tiếp tục利上げ; 2024/夏 ドル円 161円 record 37 năm; 2025 円安 dao động 150-160. Update.
- **Q5 distractor cluster 3/Q** (即刻/最優先/不要) → soft-tone partial truth.

### R_0650 (iPS Yamanaka) — GRAMMAR FAB
- **Fab grammar CRITICAL**: line 3819 `〜熱狂的に歓迎された。ものの、倫理的問題が完全に解消されたわけではなかった` (ものの đứng đầu câu sau 句点 không phải pattern báo chí Nhật, là calque "Although" tiếng Anh) → gộp `〜歓迎されたものの、倫理的問題が…` HOẶC tách `〜歓迎された。とはいえ、〜` / `しかし、〜` / `ただし、〜`.
- Process line 3974 đang biện minh fab này là "văn phong báo chí" → sửa guide.
- **Translation nuance**: ALS terminology VN → "xơ cứng teo cơ một bên" / "bệnh Lou Gehrig" thay vì "xơ cứng cột bên teo cơ".

### R_0642 (Climate Asahi) — CURRENCY
- **Currency miss MAJOR**: `IPCC 1.1度` outdated → cập nhật `2024年に初めて1.5度を超えた` (WMO 2025/1 公表).
- **Q4 length giveaway 2.0×, Q5 2.3×** → rút.
- **Q4 paraphrase**: copy literal câu 16 (`世界第五位…G7の一員`) → paraphrase xa.

### R_0643 (Tanikawa Shuntarō) — CURRENCY/ATTRIBUTION
- **Major attribution + currency**: Tanikawa mất 2024/11/13 — bài tản văn không phản ánh. Add framing `2024年11月に逝去した詩人の遺したエッセイ風` HOẶC clarify subtopic là "phỏng giọng văn".
- **Q5 length 2.7×** → rút.

### R_0645 (Bunshun Reiwa)
- **Currency**: `九十年以上にわたって` → `創刊百年を超えた` (Bunshun 1923 創刊, 2023 = 100 năm).
- **Q5 length 2.5×** → rút.

### R_0647 (Taisho Democracy)
- **Q5 length 2.6× CRITICAL** → rút.
- **Q5 distractor 2-cluster borderline** (しか/完全な民主主義) → 1 cluster.
- **Q1 length 1.9×** → rút.

### R_0648 (Kusama Yayoi)
- **Q4 length 2.1×, Q5 2.8× CRITICAL** → rút mạnh (đáp án Q5 liệt kê "3 chiều + 3 câu hỏi + 2 chức năng" overload — giảm 1-2 luận điểm).
- **Meta-grammar Q4** (ずにはおかない) — chỉ 1/5 OK borderline.

### R_0641 (Murakami Kafka)
- **Q5 length 2.8× CRITICAL** → rút.
- **Meta-grammar overload** R_0641: 3/5 Q (Q1 にほかならない/Q2 というより/Q4 にすぎない) đều stem-trích-grammar-target → giảm 1-2 sang content thuần.

## P2 — SHOULD FIX (Major systemic)

- **Q5 cognitive overload**: limit đáp án đúng ≤3 yếu tố synthesis (R_0642 Q5 = 5 yếu tố → giảm).
- **R_0644_Q4** copy literal câu 10 (支援の不在、孤立、…諦観) → paraphrase xa.
- **R_0649_Q4** 2-cluster blacklist (誤りであり、直ちに再導入/根本的な解決) → soft-tone.
- **Distractor extreme cluster** ≤2/Q toàn batch.
- **R_0650 Q3-Q4** content overlap (cùng đề cập 2014 trial / 障壁) → split angle.

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài (đặc biệt R_0646 sau fill placeholder)
- [ ] R_0646: 10 placeholder filled
- [ ] R_0644: NHK title sửa; +2024 改正子ども・若者育成支援推進法
- [ ] R_0649: 17年ぶりマイナス金利 → tách 2 sự kiện; +2024-2025 currency
- [ ] R_0650: ものの đứng đầu câu → gộp / とはいえ
- [ ] R_0642: 1.1度 → 1.5度 2024 WMO
- [ ] R_0643: Tanikawa framing 2024/11 mất
- [ ] Q2 cause ≥5/10 (chuyển 4 bài R_0643/R_0646/R_0647/R_0650)
- [ ] Q5 length ≤1.3× toàn batch
- [ ] Meta-grammar Q ≤1/5 (R_0641 đặc biệt)
- [ ] Distractor extreme cluster ≤2/Q
- [ ] Q4/Q5 không copy literal source
- [ ] No Hangul / TQ giản thể
