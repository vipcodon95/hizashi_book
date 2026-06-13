# Consolidated fix list — batch_0661_0670 (Native_basic cấp 10)

File: `books/reading_collection/native_basic_drafts/batch_0661_0670.json`

**Đặc điểm**: 54 placeholder leak toàn batch (R_0661 nhiều nhất ×17). R_0666 連載開始 2013→2009 critical. R_0666 Hangul 윤리적. R_0669 からこそ standalone fab. R_0661 Hanoka/Oshima typo + duplicate sentence + mislabel 抜粋. R_0664 fabricated interview. R_0662 "deepening" Anh-Việt mix. Q5 length giveaway 9/10 ratio 2-4×. Q2 cause 3/10. Mislabel pseudo-trích nhiều bài.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Process placeholder leak ×54 CRITICAL**: nhiều bài có entries `"guide": "🔒 Đóng gói: câu phân tích bổ sung."` + `"translation": "Câu bổ sung."` chưa fill. Fill toàn bộ với guide thật + translation thật.
- **Q5 length giveaway 9/10 ratio 2-4× CRITICAL** → rewrite Q5: cắt correct ~50-60 chars JP, expand distractors lên ~50 chars để ratio ≤1.3×.
- **Q2 cause-format = 3/10** → ≥5/10. Rewrite Q2 ≥2 bài (R_0661/R_0663/R_0668/R_0669).
- **Q5 cognitive overload + interpretive overreach** R_0664/R_0666/R_0667/R_0669 (kitchen-sink correct nhồi 3-4 cụm) → giữ 1-2 luận điểm cốt lõi.

### R_0661 (Higashino Yogisha X) — MISLABEL + PLACEHOLDER + TYPO
- **Mislabel CRITICAL**: title `『容疑者Xの献身』抜粋` SAI (text là pseudo-paraphrase AI, KHÔNG Higashino nguyên văn). Sửa title `〜を題材としたパスティーシュ` / `〜を題材とした再構成` HOẶC bỏ `抜粋`.
- **Translation hallucination MAJOR**: line 27 `Oshima Ishigami` — KHÔNG có "Oshima" (大島) trong text gốc, fabricated tên ma. Bỏ.
- **Translation typo MAJOR**: 花岡靖子 → "Hanoka Yasuko" SAI. 花岡 = はなおか → `Hanaoka Yasuko` (lặp nhiều lần trong translation + comprehension + explanation).
- **Placeholder leak ×17** (line 137-341) → fill nội dung thật.
- **Duplicate sentence**: line 236-239 + 242-245 `それが石神の天才性にほかならなかった` lặp 2 lần liên tiếp → bỏ duplicate, sentence_count adjust.
- **にほかならない ×5** → ≤4.
- 刑事 `thám tử` → `thanh tra` / `điều tra viên` (KHÔNG 探偵).
- **Q1 length 3.3× + Q5 length 2.9× CRITICAL** → rút mạnh.

### R_0662 (Newsweek Japan-Korea) — TRANSLATION + CURRENCY
- **Translation MAJOR**: line 516 `ngày càng deepening phụ thuộc lẫn nhau` (Anh-Việt mix) → `đang ngày càng đào sâu sự phụ thuộc lẫn nhau` / `tăng cường`.
- **Currency CRITICAL**: bài về quan hệ Nhật-Hàn 2024-2026 nhưng KHÔNG cập nhật biến cố Yoon impeachment 12/2024 (thiết quân luật → quốc hội bác → luận tội đầu 2025) + Lee Jae-myung trúng cử 6/2025. `次の政権において覆される可能性` đã thành quá khứ → reframe.
- `バイデン政権以来〜一貫して関与` outdated với Trump 2.0 từ 2025/1.
- **Translation nuance**: 慰安婦 `phụ nữ giải khuây` → `phụ nữ mua vui (comfort women)` / footnote.

### R_0663 (Umehara Takeshi Jōmon) — CHRONOLOGY
- **Chronology MAJOR**: vocab 縄文 `14000 TCN-300 TCN` outdated. Post-2003 C14 đẩy 弥生 lên 1000-900 BCE → 縄文 kết thúc ~1000 BCE. Sửa: 縄文 (~13000 BCE - ~1000 BCE), 弥生 (~1000 BCE - ~250 CE).
- 雨ニモマケズ chuẩn katakana (KHÔNG hiragana).
- 縄文の森 → "khu rừng (thời) Jōmon" (KHÔNG "rừng núi").

### R_0664 (Murakami Bungei Interview) — MISLABEL + PLACEHOLDER
- **Mislabel CRITICAL**: title `文藝 — 村上春樹インタビュー` — fabricated interview (橋本 = phỏng vấn viên hư cấu). Sửa title `村上春樹を題材とした架空インタビュー` / clarify đây là pastiche.
- **Placeholder leak ×14** (line 1429-1603) → fill.
- にほかならない ×4 → ≤3 (Murakami interview thực không bookish vậy).

### R_0665 (Chuokoron Heiwa Kenpou)
- **Mislabel MAJOR**: title `中央公論` — pastiche AI, không phải xã luận thật → clarify.
- `戦後七十年余` → `戦後八十年` (2026 = 79 năm).

### R_0666 (Shingeki no Kyojin) — FACTUAL CRITICAL + HANGUL
- **Factual error CRITICAL**: line 1 `2013年の連載開始` SAI. 進撃の巨人 連載開始 **2009年9月** (Bessatsu Shōnen Magazine 10/2009 issue, phát hành 9/9/2009). 2013 = anime mùa 1 phát sóng. Sửa `2009年9月の連載開始`. Đồng bộ Q + explanation.
- **Hangul leak CRITICAL**: line 2224 vocab `倫理的` meaning chứa `윤리적` → bỏ.
- **にほかならない ×5-6** → ≤4.
- **Fab grammar MAJOR**: `響き合わずにはいられない` (響き合う = 自動詞 mutual, không có chủ ý chủ động; ずにはいられない đòi 他動詞 chủ ý) → `響き合っている` / `重ね合わせずにはいられない`.

### R_0667 (Yōrō Takeshi Baka no Kabe)
- **Mislabel MAJOR**: bài pastiche monologue 1st-person mạo danh Yoro → clarify "Yōrō Takeshi 風 luận xã hội".
- にほかならない/にすぎない repeat dày → cắt 1-2.
- **Q5 length 4.1× CRITICAL** + cognitive overload (4 cụm "căn cứ giải phẫu + đa thực tại + tất yếu cấu trúc + chỉ tự giác") → rút 1-2 luận điểm; tránh interpretive overreach `không thể biến mất` (không có trong text).

### R_0668 (Nikkei Semiconductor) — relatively clean
- Currency note: `量産2027` → cập nhật `試作 2025 / 量産 2027`.

### R_0669 (Yōrō Takeshi Medical) — POV + GRAMMAR FAB
- **POV inconsistency CRITICAL**: bài monologue Yoro 1st person `私はかつて解剖学の教授…` nhưng cuối bài chuyển 3rd person `養老孟司が長年にわたって主張してきた` → chọn nhất quán: hoặc 1st person toàn bài (bỏ câu cuối), hoặc 3rd person toàn bài.
- **Fab grammar CRITICAL**: line 3463 `〜基盤としている。からこそ、そこには根本的な矛盾が生じる` (からこそ standalone đầu câu sau 句点) → ghép câu trước `〜基盤としているからこそ、〜` HOẶC `だからこそ、〜`.
- **Q5 length 3.9× CRITICAL** + cluster `最優先課題` → rút + soft-tone.

### R_0670 (Singularity Bunka)
- **Currency MAJOR**: thiếu update **2024-2026 Nhật bản địa AI** (Sakana AI 2024, Fugaku-LLM 2024/5, NTT tsuzumi, Stockmark, ELYZA 70B, GENIAC 2024 経産省). Bài nói "日本語…AI学習データ非対称な条件" như tĩnh → update.
- **Fab grammar MAJOR**: `この非対称性をもって放置すれば` (をもって + 放置 awkward) → `この非対称性を放置すれば` / `この非対称性をそのままにしておけば`.
- **Fab grammar MINOR**: `問い直さずにはすまない、根源的な鏡` (subject 鏡 + ずにはすまない mơ hồ chủ ngữ) → clarify.
- **Q5 length 2.6× + cluster** (必ず到来 / 最優先課題) → rút + soft-tone.

## P2 — SHOULD FIX (Major systemic)

- Q4/Q5 paraphrase distance.
- Distractor extreme cluster ≤2/Q (R_0662_Q5 / R_0670_Q5 cluster đối xứng).
- Meta-grammar Q ≤1/5 (R_0663_Q5 meta-grammar list grammar tokens — rewrite).
- Pattern overuse cap にほかならない ≤4/bài.

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài (đặc biệt sau fill 54 placeholder)
- [ ] R_0661: Hanoka→Hanaoka; bỏ Oshima; gộp duplicate; placeholder ×17 fill; mislabel sửa
- [ ] R_0662: deepening → đào sâu; +Yoon impeachment 2024/12 + Lee 2025/6
- [ ] R_0663: Jōmon/Yayoi chronology update post-2003 C14
- [ ] R_0664: title fabricated interview clarify; placeholder ×14 fill
- [ ] R_0666: 2013年連載開始 → 2009年; 윤리적 Hangul → bỏ; 響き合わずにはいられない sửa
- [ ] R_0669: POV nhất quán; からこそ standalone → ghép câu / だからこそ
- [ ] R_0670: をもって放置 sửa; +Sakana AI/Fugaku-LLM/GENIAC 2024
- [ ] Q2 cause ≥5/10
- [ ] Q5 length ≤1.3× toàn batch
- [ ] No Hangul / TQ giản thể
- [ ] No mislabel pseudo-trích cho fabricated content
