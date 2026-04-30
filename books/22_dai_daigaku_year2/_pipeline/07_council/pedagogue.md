# Pedagogue Council Review — Sách 22

> Reviewer: council-pedagogue
> Date: 2026-04-28
> Verdict: **APPROVE WITH CAVEATS**

## CRITICAL (5)

1. **t04 cognitive overload**: 17+ skills (HTML5+CSS3+Flexbox+Grid+Responsive+ES2024+arrow+template literal+DOM+addEventListener+React+useState+useEffect+Next.js+TypeScript+Tailwind+Vercel+Cloudflare DNS) trong 6 scenes — vi phạm cognitive load (Sweller ≤7±2 concept/chương). Split thành 3 chương con hoặc expand.

2. **t07 Linux dual-boot safety**: Scene 6 line 76-79 chỉ 4 dòng. SV first-time Linux có thể brick laptop. Cần add backup + partition shrink + Live USB test + secure boot warnings, hoặc khuyến nghị WSL2 thay dual-boot.

3. **t05 Norm vocab missing**: 原子値 (1NF), 部分関数従属 (2NF), 推移従属 (3NF) xuất hiện scene 2 line 27-30 furigana NHƯNG không được liệt kê vocab table cuối chương. Reader không nắm kanji → không retain.

4. **Vocab Bloom Level 1 only**: 100% vocab tables chỉ Recall. Không có application exercise. Add self-check questions 3-5 câu Apply level mỗi chương (vd t05 "Viết SQL LEFT JOIN cho schema X").

5. **t04→t09 Web scaffolding gap**: Reader thực sự cần ≥3 chương React để đạt production level, hiện chỉ t04 (overload) + t06 Kintone xen giữa.

## MAJOR (14)

- t07 OS+Network 2 môn merge — outcomes không ranked priority
- t08 Flutter incomplete code (line 53 chỉ class declaration, missing DB layer + UI)
- t08 Flutter vocab quá ít (8+ Widget/BuildContext/pubspec/Future/Stream missing)
- Mai chỉ "supportive wife" trope — cardboard, không có conflict scene
- t11 lab tour 8 labs liệt kê nhưng chỉ visit 4 thực sự
- Python silent ở sách 22 (sách 21 invest đậm → decay)
- AtCoder progression chỉ con số, không có problem-solving scene
- t10 母子手帳 missing (city hall procedure CRITICAL ở Nhật)
- t10 妊婦健診 14 lần subsidy missing (Toyonaka ¥98k subsidy)
- t04 portfolio deploy quá speed (7 lines = npx → DNS → live, reader sẽ stuck)
- t05 normalization gap với t09 trigram index full-text
- Markdown rendering risk: code blocks trong `&lt;br&gt;...&lt;br&gt;` table cells (Flutter renderer)
- t10 emotional moment Mai pregnancy under-developed (chỉ 7 short scenes)
- HTML5 semantic tags vocab thiếu t04 (header/nav/article/section)

## MINOR (7)

- t04 line 18 `getElementById('myBtn')` không show HTML có button
- t05 scene 6 Mai N2 update tagged-on (4 lines không tied DB lecture)
- t06 stipend ¥150k reflection chỉ 4 lines
- t11 Inoue Lab pre-determined ngay từ Bối cảnh
- t01:1 "Lab Web技術 I" → "Lecture"
- Git/GitHub PR/branch flow scenes thiếu
- AP cert prep mention cuối nhưng không có chương dedicated

## Strengths

1. Hizashi seed thread t08→t11 (Mai TTS feedback → Inoue mention "Hizashi name")
2. Visa procedure realism t02 (14 ngày 住所登録 + MNB + 国保 + Yucho copy-able)
3. Code samples 12/13 syntactically correct, idiomatic, version-appropriate

## Severity summary

| Severity | Count |
|----------|-------|
| Critical | 5 |
| Major | 14 |
| Minor | 7 |
