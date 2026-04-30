# Domain Expert Council Review — Sách 13 "Hoa Năm 3"

> Reviewer: council-domain-expert (元監理団体職員 + chuyên gia 登録支援機関 + HACCP coordinator)
> Date: 2026-04-28
> Verdict: **APPROVE WITH CONDITIONS** — fix 2 CRITICAL + 4 MAJOR ở Stage 8
> Severity: 2 CRITICAL, 4 MAJOR, 1 MINOR

## TOP 2 CRITICAL (MUST FIX)

### CRITICAL-1: T8 Lawson audit single-day approval unrealistic
**File**: t08_AuditLawson_HoiThoai.md Scene 14 line 258
**Vấn đề**: Sasaki khen "業界トップレベル" + duyệt OEM ngay sau 1 ngày. Reality: Lawson audit là 3-tier (initial → on-site → final). Cần lab sampling 7-10 ngày sau mới duyệt cuối.
**Fix**: Sasaki nói "本日の現場監査は合格。来週ラボ結果出てから正式OEM承認" thay vì duyệt thẳng.

### CRITICAL-2: T8 Tanaka full delegation unrealistic governance
**File**: t08 Scene 1
**Vấn đề**: Tanaka giao "全権 100%" cho TTS năm 3 lead Lawson audit solo. Reality: Lawson sẽ doubt company governance — 工場長 + 品質保証責任者 + HACCP コーディネーター đều phải present.
**Fix**: Tanaka + Kondo present cùng nhưng Hoa làm "主担当 (lead)" với senior backup từ xa.

## TOP 4 MAJOR (SHOULD FIX)

### MAJOR-1: T8 出荷先 Seven-Eleven competitor conflict
**File**: t08 Scene 8 line 142
**Vấn đề**: Audit Lawson nhưng output xuất 7-Eleven 120 stores = competitive IP risk, exclusivity clause violation.
**Fix**: Đổi `セブンイレブン` → `県内スーパー120店舗` hoặc `生協チェーン`.

### MAJOR-2: T4 vs T8 recall terminology mâu thuẫn
**Vấn đề**: T4 không recall (chưa xuất kho), T8 nói 自主回収. 自主回収 chỉ dùng khi sản phẩm đã ra thị trường.
**Fix**: Dùng `社内不適合品処分` hoặc `社内ロット廃棄` cho T8 line 121.

### MAJOR-3: T8 Traceability benchmark outdated
**File**: t08 Scene 8 line 143-144
**Vấn đề**: Sasaki nói "業界標準 15分" — outdated từ ~2010. ISO 22005 hiện tại 2-hour rule, SAP/Oracle achieve <5 phút bình thường.
**Fix**: "業界平均 30分。3分はトップ層" thay vì "業界トップレベル".

### MAJOR-4: T5 JITCO examiner role mix-up
**File**: t05 Scene 2 line 31, 37
**Vấn đề**: 技能検定 3級 do **都道府県職業能力開発協会** + JAVADA tổ chức, KHÔNG phải JITCO. JITCO = công ích hỗ trợ TTS.
**Fix**: "JITCO の方" → "**埼玉県職業能力開発協会派遣の検定委員 森田**".

### Bonus MAJOR: T5 Examiner direct disclosure ethics
**File**: t05 Scene 9-10
**Vấn đề**: Examiner KHÔNG được phép disclosure sơ bộ + khuyên 2級 trực tiếp = ethics issue.
**Fix**: Morita chỉ nói "結果は2週間後". Khuyên 2級 chuyển qua Suzuki/Tanaka relay sau.

## TOP 3 STRENGTHS

1. **HACCP technical accuracy**: T5 Scene 7 (7 nguyên tắc Codex), T8 Scene 6-9 (allergen, 3-step, calibration) — realistic + well-researched.
2. **TTS → SSW1 lộ trình correct**: T3, T6, T9 consistent về 良好修了 + 関連職種 → 自動免除 cả 2 試験. Match 出入国在留管理庁 令和7年12月.
3. **永住権 timeline 2044 (T6 Scene 8)**: TTS+SSW1 không tính 就労資格, cần SSW2 5 năm. Match 実情 hoàn hảo (post-fix sách 12).

## INFO (Sách so với industry)

- 食品衛生責任者 terminology used correctly (T9 Scene 6)
- HACCP コーディネーター title matches industry usage
- Mai SSW1 conditions T6 line 170 CORRECT (technical + JLPT)
- T11 Kinoshita từ chối etiquette realistic 100%
- T3 Mai dạy Trang ABC song hand-wash đúng WHO/HACCP

## Topics nên ADD/REMOVE
- **ADD**: Scene mention 特定技能制度 đang debate (T6 hoặc T11) — reality chế độ revision liên tục
- **ADD**: T8 lab sampling moment cho realistic OEM flow
- **REMOVE**: T5 Scene 9-10 examiner direct disclosure → relay qua Suzuki

## Overall verdict
Sách 13 là sách Hizashi có **domain accuracy cao nhất** tôi từng review. Avoid được 3 lỗi major sách 12. 2 CRITICAL ở Chapter 8 cần fix về business reality. Sau fix → reference-quality cho học viên VN food factory Nhật.

Sources:
- 育成就労制度の概要（令和7年12月改訂）- 出入国在留管理庁
- JFT-Basic A1/A2.1 update 2026 - Japan Foundation
- 育成就労制度とは - キャリアリンクアジア
