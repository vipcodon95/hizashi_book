# Domain Expert Council Review — Sách 22

> Reviewer: SV CNTT năm 2-3 ĐH Nhật + Full-stack Web Dev + Cybozu Intern alumni + Flutter mobile dev + Visa specialist
> Date: 2026-04-28
> Verdict: **SHIP WITH CONDITIONS**

## CRITICAL (3)

1. **Cybozu Osaka office "Honmachi 8F" SAI** (T3, T6, T10):
   - Reality: Cybozu Osaka tại **Grand Front Osaka Tower B 35F** (Kita-ku, near JR Osaka/Umeda)
   - Reference: cybozu.co.jp/en/company/locations/
   - Impact: Major credibility hit — readers Osaka sẽ Google verify
   - Fix: Đổi tất cả "Honmachi 8F" → "Grand Front Osaka Tower B"

2. **"Osaka.rb #128 meetup" community name SAI** (T3 Scene 3):
   - Reality: Không có community tên "Osaka.rb". Real Kansai Ruby: Kyobashi.rb (2024), Shinosaka.rb (2013), naniwa.rb (2018), Rails Follow-up Osaka (2016)
   - Fix: "Osaka.rb #128" → "Shinosaka.rb #128" (Shinosaka.rb đã 12 năm nên #128 plausible)

3. **FE result release timing 7-8 tuần SAI** (T3):
   - Reality: FE CBT format → tạm thời ngay tại site, official **3-4 tuần sau** (1 tháng), KHÔNG phải 7-8 tuần
   - Reference: ipa.go.jp/shiken/goukaku/happyobi.html
   - Fix: 15/4 thi → official 15/5 (1 tháng) chứ không phải 5/6

## MAJOR (4)

1. **T11 "ChasenSentencePiece" typo** — 2 tools tách biệt (Chasen MeCab predecessor + SentencePiece Google subword tokenizer). Fix: "MeCab, Sudachi, Chasen, SentencePiece" (4 tools, comma)

2. **T6 Cybozu lương 新卒 ¥350-450k** — Reality 2025-2026: ¥330-400k base + bonus 6 tháng. Range OK cho 2027 nhưng cần caveat "predicted"

3. **T11 "8 labs 情報科学科"** — Osaka U Information Science thực tế có 20+ labs chia 6 大講座. "8 labs" implies all = unrealistic. Fix: "8 labs trong 計算機科学講座" hoặc tăng số

4. **AI coding assistant context missing** — SV CS năm 2 by 2027 chắc chắn dùng Cursor/Copilot/Claude Code daily. Add vào T4/T6/T9

## MINOR (6)

- T5 PostgreSQL 16 → 17 (future-proof 2027)
- T8 Flutter 3.x → 4.x (Flutter 3.0 từ 5/2022, 2027 sẽ là Flutter 5-6)
- T1 Tailwind "2024 industry standard" → đã từ 2022-2023
- T4 vandai.dev ¥800/year (`.dev` ~$10-15 ≈ ¥1500-2200, hơi rẻ, có thể `.io`/`.com`)
- T11 BERT-only outdated — add Japanese LLMs (Swallow/PLaMo/Sarashina)
- T11 Yamada-senpai M1/M2 nomenclature OK

## Strengths

1. **DB chapter T5 syllabus**: Textbook-perfect (ER + Norm + JOIN + ACID + Index + EXPLAIN)
2. **Cybozu culture portrayal T6+T10**: "100人100通り" + family flex + paternity culture authentic
3. **Visa procedure timeline T2**: 14 ngày 住所登録 + 1 tháng MNB + Yucho 3-doc realistic
4. **Cybozu stack T6**: Java/Kotlin Spring Boot + React + MySQL 8 + Redis + AWS + ArgoCD + K8s — accurate
5. **T8 Flutter 3.x + Dart**: Code sample StatelessWidget + flutter_tts + SQLite realistic 2027

## Severity summary

| Severity | Count |
|----------|-------|
| Critical | 3 |
| Major | 4 |
| Minor | 6 |

## Conditions for SHIP

- [ ] Fix 3 CRITICAL: Cybozu location, Osaka.rb name, FE timeline
- [ ] Add AI coding assistant context vào ít nhất 1-2 scenes
- [ ] Update tech versions: PG 17+, Flutter 4.x
- [ ] Inoue Lab thêm Japanese LLM bên cạnh BERT-Japan
- [ ] Fix typo "ChasenSentencePiece" → "Chasen, SentencePiece" (T11)

**Sources verified**:
- IPA 合格発表日 official
- Cybozu Locations official
- Kansai Ruby Community list 2025
- visa-station.jp 家族滞在 MNB procedure
