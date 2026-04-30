# Domain Expert Council Review — Sách 17 "Thái Năm 4"

> Reviewer: Engineer khuôn 10+ năm + Toyota Tier-1 出張 specialist + JAVADA 1級
> Date: 2026-04-28
> Verdict: **SHIP WITH CONDITIONS**
> Severity: 1 CRITICAL, 5 MAJOR, 5 MINOR

## Top 1 CRITICAL

### CRIT-1: T4 JAVADA 3D CAD 1級 spec sai
- **受験料 ¥7,000** (sách) → SAI. Real fee 2025 = **¥17,600** (税込)
- **合格率 25%** (sách) → SAI. Real ~30-31%
- **合格基準 80/100** (sách) → SAI. JAVADA spec: **"各分野5割以上 + 総合7割以上"** = pass = **70/100**
- **Narrative T4 Thái 78/100 fail** → Theo JAVADA criteria thực tế 78 ĐỖ (>70). Narrative không đứng vững.
- **受験資格**: Sách không nhắc Thái phải đỗ 2級/準1級 trước (JAVADA quy định)
**Fix**: Update fee + pass criteria + redesign Thái score (vd 65/100 fail) hoặc đổi narrative thành "các phần thiếu balance"

## Top 5 MAJOR

### MAJ-1: T1 timeline contradiction — Kawakami "工場長" trong T1 (5/2025) nhưng T7 mới promote
**Fix**: T1 đổi Kawakami thành `先輩` hoặc `課長`. Match consistency CRIT-3.

### MAJ-2: T7 promote pace "4 năm → 設計課長代理" quá nhanh
Reality VN 技人国 4 năm + N2 + 金型 2級 chỉ vừa đủ thành 設計者 chính thức (主任 cao nhất). 課長代理 thường cần 8-12 năm.
**Fix**: Downgrade thành **主任 (Shunin)** hoặc **設計リーダー** (informal).

### MAJ-3: T1-T2 Console box spec sai
- Deadline 3 tháng cho khuôn ~600x400x200mm → reality 5-7 tháng
- **Ra 0.4μm** cho console box — interior trim thường yêu cầu **Ra 0.8μm** + texture (シボ加工). Ra 0.4μm là spec mặt mirror/lens

### MAJ-4: T2 Toyota approval flow thiếu PPAP
"Hamada-san duyệt 量産 ngay sau trial 2 thành công" — Reality cần **承認試作 → 限度見本承認 → 工程能力評価 (Cpk) → PPAP → 量産トライ → 量産承認**. Tối thiểu 1 tháng sau trial OK.
**Fix**: Insert PPAP/Cpk evaluation step.

### MAJ-5: T9 visa paperwork cho Mai missing
Mai sang Nhật 2 tuần dễ dàng. Reality: **短期滞在 visa + 招へい人 prep 招へい理由書 + 滞在予定表 + 身元保証書 + 戸籍謄本**. Process 1-2 tháng.
**Fix**: Insert 1 scene Mai/Thái discuss visa paperwork.

## 5 MINOR

1. T2 Moldex3D sim 0.18 = real warpage → quá optimistic (sim sai số ±20-30%)
2. T3 "Al 0.6%, ABS 0.5% — ほぼ同じ" misleading (ABS anisotropic)
3. T6 Romaji typo `ていねいたいしょく` → `ていねんたいしょく`
4. T8 1.5 tiếng Anjo → Toyota City quá xa (reality ~30-45 phút)
5. AI/Generative Design (Autodesk Fusion AI, Moldex3D AI) missing — Tier-1 designer 2026 đã dùng

## Verdict

**SHIP WITH CONDITIONS**

Strengths: T2 first lead workflow A→Z + defect fix realistic, T3 Diecast cameo cross-domain awareness valuable, T11 Sempai pep talk roadmap (CAD + 機械加工 3級 + N3) áp dụng được ngay cho TTS Việt mới sang.

**MUST FIX (blocker)**: T4 JAVADA spec — 受験料 ¥17,600, 合格基準 70/100, narrative consistency.
**SHOULD FIX**: T1 Kawakami timeline + T7 promote pace.
**NICE TO FIX**: T9 visa paperwork + T2 PPAP step.
