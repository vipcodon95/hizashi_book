# Linguist Council Review — Sách 23 "Đại ĐH Năm 3"

> Reviewer: council-linguist
> Date: 2026-04-29
> Verdict: **NOT READY FOR PUBLISH AS-IS** — fix CRITICAL trước

## CRITICAL (3)

### C1. Câu Nhật mất particle hệ thống — agrammatical
Vấn đề lặp lại nhiều lần: bỏ が/を/に/は ngay cả trong context formal/semi-formal. Đây không phải "natural shortening" mà là **agrammatical** với native ear.

- **t01:40** Inoue (sensei formal): `君、多言語NLP興味あったよね` → cần `君、多言語NLPに興味あったよね`
- **t01:42** `素晴らしい!3方向あり` → câu không tồn tại. Đúng: `3つ方向性があります` / `3つの方向があるよ`
- **t01:47** `Yamada-senpai同じ方向。共同研究可能!` → cần `Yamada先輩と同じ方向だね。共同研究も可能だよ`
- **t04:11** `本日"Attention Is All You Need" 2017 paper` → câu chưa có verb/copula
- **t04:14** `RNN超えた` → `RNNを超えた`
- **t08:11** `Cybozu intern素晴らしかったね.本日卒研議論` → `本日は卒研の議論をしよう`
- **t08:24** `3つすべて魅力あり.でも3番個人関心強い` → bookish robotic
- **t08:27** Inoue: `来月1日決定願う` → cần `来月1日までに決めてください`
- **t09:84** Inoue: `素晴らしい!明確 + 強い動機 + 市場ニーズ. 正式にApprove!` → telegraphic vi phạm sensei voice
- **t01:31** thiếu の particle `他5名` → `他の5名`

→ CRITICAL vì phá vỡ credibility lab academic discourse

### C2. Scene sinh con (t03) — register 助産師 / 産婦人科 sai
- **t03:26** `子宮口5cm.順調!分娩室移動.` → cần `子宮口5cmまで開いてますね。順調ですよ。分娩室に移動しましょう。`
- **t03:36** `もう少し!` → `はい、もう少しですよ!いきんで!`
- **t03:39** `誕生!女の子!3.2kg!` — không ai trong phòng sinh nói `誕生!`. Thực: `おめでとうございます!女の子ですよ!元気ですよ!`. `誕生` là từ formal/written
- **t03:39** furigana sai: `さんてんにキロ` → `さんキロにひゃくグラム`

→ CRITICAL: scene cảm xúc cao mà ngôn ngữ flat → mất verisimilitude

### C3. Sensei voice không phân hoá
Inoue (full prof), Watanabe (准教授), Yamamoto (Game theory) — Yamamoto ZERO line trong 12 file. Voice Inoue **không khác** voice Yamada-senpai (M1) hay senior Cybozu — cùng kiểu telegraphic. Không markers `〜ですね`, `〜と思いますが`, `〜でしょう` đặc trưng giáo sư cũ.

→ CRITICAL: user không học được phân biệt register

## MAJOR (7)

### M1. Code-switching JP-EN-VN không có pattern rõ
Native NLP grad student: `マルチヘッドは8つのattention headを並列に走らせるってことね` (technical noun + EN, discourse marker + JP).

### M2. Osaka-ben Tony+Yumi quá ít markers
- t02:51 `準備始めよう!` → `準備始めよか!ベビーベッドどこで買うん?` / `〜やんか` / `せやな` / `ほんま`
- t03:64 `俺おじいちゃんや!` → `俺おじいちゃんやで!` / `おじいちゃんになったわ!`

### M3. VN Bắc Bộ thiếu nuance — Mai mới sinh
- t03:23 `Anh ơi! Đau! Em nghĩ bắt đầu rồi!` → `Anh ơi! Đau quá! Hình như chuyển dạ rồi!` (chuyển dạ = obstetrics chuẩn)
- t03:42 `Hana! Bố đây!` → `Hana à! Bố đây! Bố thương con!`
- t05:64 `Em cảm ơn anh. Anh là dad tốt.` → `dad` EN không natural. Đúng: `Anh là người bố tốt`

### M4. Furigana inconsistency (BUG)
- **t01:40** `<ruby>あった<rt>あった</rt></ruby>` — gán furigana cho hiragana
- **t01:42** `<ruby>あり<rt>あり</rt></ruby>` — same bug
- **t08:24** `<ruby>つ<rt></rt></ruby>` — empty ruby
- **t02:51** `<ruby>マイさん<rt>マイさん</rt></ruby>` — katakana=furigana
- **t03:115** vocab `<ruby>ハナ<rt>ハナ</rt></ruby>` — bug pattern

→ Phải scrub toàn bộ ruby chứa hiragana/katakana lặp lại bản thân

### M5. Box-drawing chars t10:20 (CLAUDE.md violation)
Chứa `┌─┐│└┘├▼` → Flutter render crash. Convert sang ASCII art (`+--+`, `|`) hoặc markdown nested list.

### M6. "誕生" semantic mismatch
Đặt tên scene `誕生` formal đúng. Nhưng dialogue spoken dùng `誕生!` interjection (t03:39) là sai.

### M7. Cybozu HR keigo nửa vời
- t07:26-30 `グエンさん、3ヶ月本当に素晴らしい` → cần でした
- t07 cuối `3ヶ月以内応答願います` → `3ヶ月以内にご回答いただけますと幸いです`

## MINOR (5)

- m1: NLP terms vocab dịch EN-EN (Embedding/Zero-shot/Cross-lingual) — nên VN
- m2: `〜ものを` (t09:18) explanation simplified
- m3: 卒研 vs 卒論 distinction dùng lẫn lộn dialogue
- m4: 内定 vs 内々定 (t07 trước 10/1 phải `内々定`)
- m5: Hospital staff title `Bác sĩ` vs `助産師` (midwife đỡ đẻ)

## Strengths (Top 3)

1. **Tech accuracy ML/NLP**: Transformer/BERT/GPT/RAG/pgvector/Claude API — code Python/SQL chính xác, đúng model names (cl-tohoku/bert-base-japanese-v3, multilingual-e5-large, claude-3-5-sonnet-20241022)
2. **EUREKA arc t09**: 4 datapoints converge → Hizashi vision — pedagogically perfect
3. **Cohort multilingual** (Yamato JP + Aiko JP + Lin Wei EN + Rajesh EN + Đại VN/JP) — realistic Osaka international lab

## Severity summary

| Severity | Count |
|----------|-------|
| Critical | 3 (C1 lan ~30+ instances toàn 12 file) |
| Major | 7 |
| Minor | 5 |

## Verdict

NOT READY FOR PUBLISH AS-IS. Concept và tech xuất sắc nhưng JP language layer cần revision pass:
1. De-telegraphic Inoue + HR + 助産師 lines
2. Differentiate sensei voice (Inoue prof vs Watanabe assoc vs Yamada M1)
3. Fix furigana bugs + box-drawing chars (technical blocker)
