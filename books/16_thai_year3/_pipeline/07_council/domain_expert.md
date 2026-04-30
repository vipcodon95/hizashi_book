# Domain Expert Council Review — Sách 16 "Thái Năm 3"

> Reviewer: Engineer khuôn 10+ năm + Toyota Tier-1 keigo specialist + JAVADA 金型製作技能士
> Date: 2026-04-28
> Verdict: **SHIP WITH CONDITIONS**
> Severity: 2 CRITICAL, 4 MAJOR, 4 MINOR

## Top 2 CRITICAL (BẮT BUỘC fix Stage 8)

### CRIT-1: T6 — 3次元CAD 2級 sai số câu hỏi
- File T6 Scene 2: "60 phút. 50 câu" → SAI
- Reality (ACSP 2024-2025): 60 phút, **60 câu**. Hợp cách = 50%/分野 + 70% tổng
- Score Thái "43/50" → đổi thành "43/60" hoặc "52/60"
- Format từ 2020 là **CBT (Computer Based Test)** tại CBT-Solutions, không có examiner đọc to
- **Fix**: Sửa số câu + format CBT会場 + score scale

### CRIT-2: T7/T11 — 金型製作 2級 実技 spec sai
- File T7 Scene 2: "実技 2時間30分" + T11: "2h30 + lắp 5 part khuôn"
- Reality JAVADA プラスチック成形用金型製作作業 2級 実技: **製作等作業試験 ~4 giờ** (gia công立フライス + 手加工) + 要素試験 ~1 giờ
- "Lắp 5 parts" KHÔNG đúng — 実技 thực sự là **gia công** (R加工, 溝加工 trên milling máy)
- **Fix**: Sửa thời gian + nội dung 立フライス手加工

## Top 4 MAJOR (SHOULD FIX)

### MAJ-1: T10/T11 — N2 score scale sai
- File: tổng "175 điểm", pass "90"
- Reality: **180 điểm** tổng, pass = 90 + sectional pass 19/60 mỗi section

### MAJ-2: T8 — "Toyota車体 浜田課長" hierarchy lệch
- Door trim khuôn cho Toyota車体 chính chủ = **Toyota Boshoku** (内外装 1次サプライヤー)
- Toyota → Toyota車体/Toyota Boshoku (1次) → mold maker (2次/協力会社)
- **Fix**: Title 「トヨタ車体 生技部 金型課 課長」hoặc đổi sang Toyota Boshoku

### MAJ-3: T9 — Spec change thiếu 見積り step
- "先方が変更指示 → 即承知 → 明日反映" thiếu **見積り再提示** step
- Toyota Tier-1 spec change → mold maker phải re-quote (cost/lead-time impact) trước khi 承知
- **Fix**: Add "見積もりさせていただきます" trước "承知"

### MAJ-4: T8 — Designer mới lead 新規 unrealistic
- 中小金型 thường giao **modification** cho mid-level trước, **新規** giao senior
- Real career: Year 3 lead modification + assist new, Year 5+ lead new
- **Fix**: Soften — Thái assist Kawakami trên新規, hoặc lead modification

## 4 MINOR

1. T2 ▽▽▽記号 outdated — JIS B 0031:2003 đã đổi sang Ra-value notation. Có thể giữ vì nhiều ベテラン Aichi vẫn dùng nhưng note "modern drawing dùng Ra"
2. T3 Misumi paper catalog "carry hàng ngày" outdated — nay ưu tiên WOS + RAPID Design
3. T8 Hamada review water channel + khen ngay tại meeting đầu — Toyota Tier-1 thường note + take back, feedback sau qua channel chính thức
4. T9 Hamada cá nhân email correct keigo cho NN-supplier trẻ — reality Kawakami sẽ catch trước review chain

## Industry trends missing

- **Meviy AI quoting** + 3D upload → instant quote (file T3 có nhắc, tốt)
- **SolidWorks 2024/2025**: Defeature for IP, AI-assisted dimensioning, 3DEXPERIENCE cloud collab
- **CATIA V5/3DEXPERIENCE**: nhiều Toyota Tier-1 đã chuẩn hoá CATIA — designer khuôn supply Toyota cần convert SolidWorks ↔ CATIA
- **DR (Design Review)** với khách — formal review session phổ biến Tier-1

## Verdict

**SHIP WITH CONDITIONS**

Strengths: T1 parametric pitfall (R fillet → shell fail) realistic, T4 Moldex3D simulation → trial verify match đúng workflow, T9 keigo mistake với khách + recovery email pattern thực tế NN-Toyota Tier-1.

**Required before ship**:
1. T6 + T11: Sửa số câu/format thi 3D CAD 2級 (60 câu CBT)
2. T7 + T11: Sửa 金型 2級 実技 spec (4h, milling手加工)
3. T10 + T11: Sửa N2 scale (180, sectional pass)
4. T8 + T9: Adjust Hamada/Toyota車体 hierarchy + add 見積り step

Estimated fix effort: 2-3 hours edit, không phải rewrite.
