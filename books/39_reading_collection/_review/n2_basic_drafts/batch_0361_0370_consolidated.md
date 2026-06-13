# Consolidated Fix List — batch_0361_0370 (N2_basic vòng 2)

> Source: 3 council reviews (linguist + pedagogue + domain) — 2026-05-09
> File target: `/Users/binh/Documents/Claude/Projects/Hizashi_book/books/reading_collection/n2_basic_drafts/batch_0361_0370.json`

## P1 — MUST FIX (Critical/Major)

### R_0361「40代のキャリアチェンジ」
1. **Tag cleanup**: bỏ `ことになる` khỏi `tags` (không substantive trong text).
2. **Translation câu 8**: "大幅に減少した" → đang dịch "giảm mạnh đáng kể" (redundancy). Sửa: "giảm mạnh" hoặc "giảm đáng kể".
3. **Q4 distractor D**: chứa cụm extreme "唯一の方法". Đổi thành "学び直すことが、最も適した方法" hoặc bỏ extreme marker.
4. **Process câu 4 guide**: chú "を契機に ≠ をきっかけに" hơi mạnh — đổi: "を契formal hơn をきっかけに".

### R_0362「現代折り紙アート」
5. **Translation câu 1**: "数百年前にさかのぼる" hiện dịch "có nguồn gốc từ hàng trăm năm trước" → đổi "có thể truy ngược về hàng trăm năm trước".
6. (Domain Minor — optional) Cite cụ thể **三浦折り (Miura-ori)** + JAXA / **ペロブスカイト太陽電池 flexible** (2024-2026 currency).

### R_0363「禅とマインドフルネス」
7. **Process câu 9 guide REF ERROR**: ghi "ぬく lần 2 — đồng dạng câu 8" nhưng câu 8 KHÔNG có ぬく (chứa ばかりに). ぬく ở câu 6, 7, 15. Sửa cross-reference đúng.
8. (Pedagogue Major — optional) Difficulty spike sang N2_mid (vocab 禅定/解脱/内省). Có thể giảm 1-2 vocab triết học hoặc accept.

### R_0364「高齢者介護ロボット」
9. **Domain Major — câu 12** "2023年度から大幅に拡充" wording mơ hồ. Verify lại hoặc soften: "2023年度に拡充された".
10. **Bổ sung domain currency**: thêm reference **育成就労 2024 / 特定技能** + **2025年問題** (1 câu là đủ).
11. **Robot cụ thể**: thay generic "介護ロボット" 1 chỗ thành **HAL (Cyberdyne) / PARO / Hug** (1 lần, optional Minor).

### R_0365「高齢の親と子の関係」
12. **Tag cleanup**: bỏ `ようになる` khỏi tags (không substantive).
13. **Translation câu 11**: "大切というものだ" hiện "đó mới thực sự là điều đúng đắn" → đổi "đó mới chính là lẽ phải" / "đó mới là điều đáng làm".
14. **Process câu 7 guide**: "ものの mạnh hơn が" → đổi: "ものの formal hơn が, hàm ý thừa nhận nhưng kết quả không như kỳ vọng".

### R_0366「深夜労働の文化」
15. **Domain Major — câu 7** "残業時間の上限規制が法律で定められた" → bổ sung citation cụ thể **「働き方改革関連法 2019/4 施行」** (1 lần, có thể chèn vào câu 7).

### R_0367「日本のジェンダー法制度」 — PROBLEMATIC, ưu tiên cao
16. **CRITICAL — Pattern overuse 上(じょう)**: hiện ~9-10 lần. CAP xuống ≤4. Thay 5-6 instances bằng `について`/`に関して`/`の側面で`/`の面で`. Giữ tối đa 4 instances of `上`.
17. **CRITICAL — sentence_count vs process[] mismatch**: header `sentence_count: 18` nhưng process có 16 entries. Đếm lại text, đồng bộ. Nếu thực sự 16 câu → sửa sentence_count = 16.
18. **CRITICAL — Process câu 16 guide thin/placeholder**: bổ sung guide đầy đủ như các câu khác (~150-250 chars, có 🔒/⚠️/💡).
19. **Domain Major — bổ sung luật gender currency** (1-2 câu): **LGBT理解増進法 2023/6, 不同意性交等罪 2023/7, 男性育休/産後パパ育休 2022/10, CEDAW 2024 勧告 hoặc 経団連 2024/6 提言 選択的夫婦別姓**.
20. **Pedagogue Major — Q2 meta-grammar** (về phân biệt だけに/だけあって): Restructure thành Q test comprehension liên quan nội dung dùng grammar đó (vd: "Tác giả dùng だけに ở câu X để nhấn mạnh điều gì về ...?").

### R_0368「円安と観光業」
21. **Translation câu 14**: "見落とすまいとする慎重な姿勢が業界全体に求められる" hiện dịch awkward. Đổi: "toàn ngành cần có thái độ thận trọng quyết không bỏ qua điểm đó".
22. (Domain Major — optional) Cite con số cụ thể **「2024年 訪日客 3,687万人」** + **「インバウンド消費 8兆円超」** (1-2 câu nếu fit).

### R_0369「関西弁とアイデンティティ」 — PROBLEMATIC
23. **CRITICAL — Câu 1 unnatural/sai**: "全国的な知名度という点で他の方言に限らず、広くメディアや日常会話において使用されている". に限らず ở đây không tự nhiên. **Rephrase**: "他の方言とは異なり、全国的な知名度を持ち、広くメディアや日常会話において使用されている" hoặc "全国的な知名度を持ち、それは他の方言にはない特徴である".
24. **Tag cleanup**: bỏ `ことが多い` (không substantive focal grammar).
25. (Pedagogue Minor — optional) Câu 7 "関西出身者に限って方言の使用を控えるよう指導される" thực tế hơi exaggerate cho 就活 2024-2026. Soften nếu fit.

### R_0370「旅館とおもてなし文化」
26. **Q1 length giveaway**: option B (~40 chars) vs distractor D (~20 chars). Cân bằng — nâng D lên ~30 chars hoặc cắt B.
27. **Pedagogue Major — Q2 meta-grammar** (về dụng ý 2 lần に先立ち vs に先立って): Restructure thành Q comprehension (vd: "Tác giả dùng に先立ち và に先立って ở câu X và Y để mô tả những loại chuẩn bị nào của ryokan?").

## P2 — SHOULD FIX

### Systemic — Q2 không phải cause/why (cumulative #12)
- 9/10 bài có Q2 KHÔNG phải なぜ/どうして. Per spec, Q2 phải là cause.
- **Action**: Rewrite Q2 thành cause cho ít nhất 5/10 bài, ưu tiên: **R_0361, R_0362, R_0364, R_0365, R_0368**.
- Form: "なぜ X か?" / "本文によれば、Yの理由は何か?".
- Giữ Q2 hiện tại của R_0367, R_0370 (meta-grammar) NẾU đã restructure theo P1 #20, #27.

### Bloom diversity (Pedagogue)
- 60% Q là Recall. Đề xuất pattern Q1=Recall, Q2=Cause, Q3=Apply (paraphrase grammar in context), Q4=Analyze theme.

## Verify sau khi fix
1. `python3 validate_schema.py` — không có schema mới.
2. Grep Hangul: `grep -E "[가-힣]" batch_0361_0370.json` → empty.
3. Grep TQ giản thể: `grep -E "[个压电汽们]" batch_0361_0370.json` → 0 (trừ tên riêng).
4. R_0367: `grep -c "上" ` ≤ 4 trong text body.
5. sentence_count == len(process[]) cho mỗi bài.
6. Q distractor không chứa: 唯一/全て/決して/完全/だけ/のみ/最も/しか/過ぎない/不要/廃止/中止/最善 (trong distractor sai vẫn OK 1-2 chỗ, nhưng tránh ≥3).
