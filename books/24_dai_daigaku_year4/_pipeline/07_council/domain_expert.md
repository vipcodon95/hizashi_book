# Domain Expert Council Review — Sách 24 "Đại ĐH Năm 4"

> Reviewer: Tech founder Japan + 就活 IT specialist + ML/NLP researcher + Tokyo VC ecosystem + 法人設立 incorporator + 卒論 Osaka U
> Date: 2026-04-29
> Verdict: **APPROVE WITH REQUIRED FIXES** (1 round revision)

## CRITICAL (5)

### 1. Anri pre-seed ¥25M ticket size SAI (T8, T10)
- **Reality**: Anri pre-seed chính thức = **¥3-5M qua J-KISS convertible** (no cap, no discount). ¥25-30M là **seed round (Series Seed)**, không phải pre-seed
- **Fix**: Đổi label "pre-seed" → "**seed round**". Hoặc 2-tier: J-KISS pre-seed ¥5M trước → Series Seed ¥30M sau 6 tháng

### 2. 就活 timeline bị nén và off-cycle (T1 → T2)
- 4/2029 vẫn pitching roadmap → 5/2029 đã có 3 内定?
- Reality 経団連: 6/1 thông tin解禁 → 内定通知 sớm nhất 10/1 cho 卒業 3/2030. Tech 自由応募 sớm hơn (3-4月) nhưng vẫn cần ES → 性格適性検査 → 1次 → 2次 → 最終 (3-4 tháng)
- **Fix**: Add flashback "ES từ 12/2028, 1次 2/2029, 最終 4/2029" T1/T2 opening

### 3. 卒論 deadline + defense lệch (T1, T6, T11)
- T1: "Nộp cuối tháng 12, bảo vệ tháng 2" → Osaka U 基礎工 thực tế: **提出 1月中旬, 公聴会 2月初-中**
- T6 "submit cuối 11" sớm hơn deadline thực 2 tháng
- **Fix**: T1 đổi "提出 1月中旬, 発表 2月" + T6 dời submit cuối 1/2030

### 4. 卒論 defense system mô tả không chuẩn Osaka U (T11)
- Mô tả "Inoue chair + 2 external faculty (Kyoto U + Tokyo Tech)" → External judges chỉ áp dụng cho **博士論文 PhD**
- 公聴会 Osaka U 基礎工: **主査 (lab head) + 副査 2-3 internal faculty cùng khoa**
- 30 phút present + 30 phút Q&A quá dài cho 卒論 (thường 15-20 + 10-15 Q&A)
- **Fix**: 副査 = 2 prof cùng 情報科学科 Osaka U. Time: 20 phút + 15 Q&A

### 5. S grade "top 10%" + IPSJ Journal publication promise
- Osaka U 卒論 thường **可/不可** + 評価コメント, không có A/B/C/S grading
- Recommend dùng 「優秀卒業論文賞」 (Outstanding Thesis Award có thật ở 基礎工 Osaka U) thay "S grade"

## MAJOR (7)

### 6. 株式会社 incorporation cost — thiếu chi tiết (T10)
- "司法書士 fee ¥150k, process 2 weeks" — realistic range: ¥80-150k + 登録免許税 ¥150k + 定款認証 ¥30-50k = ~¥250k-300k cho KK
- **Missing**: 合同会社 (GK) option ¥60-100k tổng. Pre-seed founder thường chọn GK rồi convert KK sau Series A
- **Fix**: Add scene "Cân nhắc GK ¥60k vs KK ¥250k. Anri muốn KK để phát hành stock options + Series A clean → chọn KK"

### 7. Mercari ¥7M new grad math (T2)
- Mercari new grad 2024-2025: ¥6-7M base + RSU $20k plausible top performer
- ¥450k/月 × 12 + 5 tháng bonus → ¥9.45M (sách tính ¥7M nhưng math không khớp)
- **Fix**: Ghi rõ "¥450k base × 12 + ¥350k×5 bonus ≈ ¥7.15M" hoặc "年収目安 ¥7M (RSU $20k 4-year vest separate)"

### 8. LINE Fukuoka 内定 process (T2)
- LINE đã merge với Yahoo Japan thành **LY Corporation từ 10/2023**
- 2029 entity "LINE Fukuoka" sẽ là **LY Corporation Fukuoka**
- **Fix**: Đổi sang "LY Corporation Fukuoka" + "LY Corporation Osaka"

### 9. Hizashi tech stack thiếu observability (T1, T4)
- Stack Flutter+FastAPI+pgvector+R2+Claude API hoàn toàn realistic 2029-2030
- **Missing**: Sentry/Datadog observability, GitHub Actions CI/CD, Terraform IaC, edge inference
- **Add T4**: "Observability Sentry + Datadog. CI GitHub Actions. Cost monitoring custom dashboard"

### 10. Claude 4 Opus / Sonnet 5 timeline OK (sanity check)
- 2030 plausible Claude 5/6 generation. Sách không đề cập model name cụ thể → future-proof. OK

### 11. Japanese LLM ecosystem 2029-2030 missing (T11)
- T11 Đại "open-source LLM (LLaMA-3 fine-tuned) backup" → 2030 plausible: **Llama-Swallow-Plus / PLaMo 2.0 / Sarashina2 / Karakuri-LM / ELYZA-Llama-3**
- Founder JP NLP space SẼ dùng Japanese LLM cho cost + sovereignty
- **Fix T11 Q5**: "Backup Llama-Swallow-Plus (Tokyo Tech/AIST), tested fine-tune trên VN-JP corpus"

### 12. Hackathon Anri partner approach hơi lý tưởng (T7)
- Kansai Hackathon prize ¥250k giải nhì plausible
- Anri partner đến hackathon Osaka casually ít common — Anri Tokyo-centric
- **Fix**: Add 1 line "Sato-san Anri scout phụ trách Kansai region, đến hackathon đại diện Anri"

## MINOR (6)

- m1: CTO Mercari interview "live coding LRU Cache + Twitter feed" hơi cliché Big-Tech US-style
- m2: T8 "Anri 15% equity" cho ¥30M, post-money ¥200M math đúng. T10 "Anri 13% + DG 2.5% + Tony 0.5%" → tổng investor 16% mới khớp ¥31M / ¥200M = 15.5%
- m3: IPSJ-NL submission "8月" + accept "1 tuần" — IPSJ-NL có 3-4 monthly meetings/year. Best Student Paper Award (若手奨励賞) có thật ~¥30k cash
- m4: T6 viết 卒論 30k chữ "500 chữ/day × 60 days" realistic
- m5: T12 外国人留学生代表 valedictorian speech plausible top student
- m6: T9 cap table 60/25/15 + Anri 15% → 51/21/13/15 math đúng. Tony convertible note ¥1M chưa convert → chưa nên có trong cap table

## Top 5 improvements

1. Fix Anri pre-seed → seed terminology (CRITICAL)
2. 就活 timeline backstory: ES/SPI/面接 từ 12/2028 justify 3 内定 4-5/2029
3. LINE/Yahoo → LY Corporation rename 2029-2030 accuracy
4. 卒論 defense panel 副査 internal faculty + grading 優秀卒業論文賞
5. Add Japanese LLM names (Llama-Swallow-Plus/PLaMo) cho 2029-2030

## Top 3 strengths

1. **Tech stack production-realistic**: Flutter+FastAPI+pgvector+Claude
2. **Decision framework T8**: 5-option matrix + family + Inoue advice — extremely realistic founder reasoning
3. **Cap table + runway math**: ¥30M / ¥16.5M burn = 22 months — chuẩn VC term

## Topics to add/remove

- **ADD**: 1 scene VISA conversion (留学 → 経営・管理 hoặc 高度専門職). Đại VN founder Nhật BẮT BUỘC qua quy trình này — hoàn toàn missing
- **ADD**: Stock options pool (10-15% standard) reserve cho first 5 hires — mention T10 cap table
- **REMOVE**: External judge Kyoto U + Tokyo Tech defense T11 không chuẩn 卒論 Osaka U

## Severity Summary

| Severity | Count |
|----------|-------|
| Critical | 5 |
| Major | 7 |
| Minor | 6 |

**Verdict**: Sách có nền tảng tech + startup ecosystem rất ấn tượng cho dialogue book — cap table math chuẩn, decision framework chi tiết hơn 90% sách startup VN. Nhưng 5 critical factual errors (Anri pre-seed ticket, 就活 timeline, 卒論 defense system) sẽ làm reader thực sự muốn startup Japan mất tin tưởng. Fix critical + major xong → một trong những fictional accounts chính xác nhất về startup-Japan-as-foreigner journey.
