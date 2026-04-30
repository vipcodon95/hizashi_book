# Domain Expert Council Review — Sách 15 "Thái Năm 2: MC Operator + N3 đỗ"

> Reviewer: Engineer khuôn đúc Việt-Nhật (10+ năm), CAM/EDM/JLPT specialist
> Date: 2026-04-28
> Verdict: **SHIP WITH CONDITIONS**
> Severity: 1 CRITICAL, 8 MAJOR, 5 MINOR

## Top 1 CRITICAL (BẮT BUỘC fix Stage 8)

### CRIT-1: T3 EDM parameter system SAI (V/A raw thay vì IP/E-pack)
- **Sách viết**: "電圧80V、電流10A, パルス幅100μs, 休止50μs"
- **Reality Sodick AG/AL series**: voltage không phải user-set parameter trực tiếp. User chọn **IP (peak current code)** + **ON time/OFF time** từ condition table. 「電流10A」 cho cavity tinh đồng = peak current quá nhỏ (real: IP code → 8-15A peak finish, 30-60A roughing).
- **Fix**: Thay bằng "IP=15、ON time=50μs、OFF time=20μs" hoặc "粗加工条件 E-pack No.3, 仕上げ E-pack No.18"
- **Reference**: Sodick AG60L official spec — operator chọn condition number.

## Top 8 MAJOR (SHOULD FIX)

### MAJ-1: T11 学科時間 50分 SAI
- Reality JAVADA 2級 学科: **100分** (1時間40分), 50問 marubatsu + 4択
- **Fix**: 「学科100分」

### MAJ-2: T11 実技時間 35分 SAI
- Reality 2級 マシニングセンタ作業 実技 = **2時間〜3時間** (制作作業 + 要素試験)
- 35分 = 要素試験 only (4 elements × ~5-10min)
- **Fix**: 「2級実技 計2時間 (要素試験+ペーパー)」

### MAJ-3: Sodick "AG-60" model name không tồn tại
- Đúng: **AG60L** (legacy) hoặc **AL60G** (linear motor 2019+) hoặc **AD35L** (high-precision compact)
- **Fix**: Recommend **Sodick AL40G** cho xưởng nhỏ Anjo Tier-3

### MAJ-4: T3 "1 tiếng放電 = 0.1mm削る" confuses depth vs MRR
- Removal rate 150-300 mm³/min với copper electrode
- 0.1mm chỉ đúng cho **finishing pass cuối** depth
- **Fix**: viết "仕上げ条件で1時間 = 深さ0.1mm追込み" để rõ context

### MAJ-5: T4 — TTS 1.5 năm exp được giao **solo trial mold** quá sớm
- Reality Tier-3 Aichi: trial mold thường giao 正社員 5-10 năm exp hoặc 班長
- **Fix**: thêm context "khuôn rất nhỏ, khách đã accept rủi ro trial sample, không phải production mold"

### MAJ-6: T10 — Tolerance ±0.01mm cho year 2 TTS quá advanced
- Reality: ±0.01mm là 精密加工 territory cho 5+ năm exp
- **Fix**: Downgrade T10 về ±0.02mm; ±0.01 reserve sách 16 (year 3)

### MAJ-7: T8 — "+30% lương 転職 sang Toyota Tier-1" hơi cao
- Reality 2024: Tier-3 → Tier-1 thường +15-25% (base + bonus)
- **Fix**: viết "+20-25%" + "賞与込みで実質30%"

### MAJ-8: T9 — JLPT timing breakdown không rõ
- T9 scene 2: "言語知識30分" — đúng cho 文字・語彙
- Miss phần 言語知識（文法）・読解 70分 separate
- **Fix**: nêu rõ 3 sections: 「文字・語彙30分」「文法・読解70分」「聴解40分」

## 5 MINOR

1. T1 Mitutoyo micrometer cho ±0.05 spec → caliper realistic hơn
2. T4 ABS 240℃ borderline — interior part thường 250-260℃ ABS耐熱 (Toyolac 700)
3. T2 STEP file vs Mastercam for SOLIDWORKS plugin — STEP hơi outdated workflow
4. Vocab tables thiếu pitch accent annotation
5. 玉掛け技能講習 mention 1 line missing — required cert for cẩu khuôn

## Industry trends missing (recommendations)

- **IoT/MES**: Aichi Tier-1/Tier-2 năm 2023 đã adopt edge IoT (Mazak SmartBox, Fanuc MT-LINKi) + MES — TTS 2 năm exp Toyota Tier-2 sẽ chạm
- **AI/ML in CAM**: Mastercam 2024 introduce "Dynamic Motion 2.0" — chấm phá 1 dòng
- **Mastercam version**: nên thêm "マスターキャム2023" cụ thể

## Verdict

**SHIP WITH CONDITIONS**

Strengths: Monozukuri culture authentic (謝るな、原因分析 + Mitutoyo hand-down ceremony T8), career arc realistic gradient (磨き year 1 → MC+EDM+CAM year 2 → assistant designer year 3), JLPT prep narrative authentic (6 weeks intensive với chị tutor, NHK shadowing).

**Required fixes trước SHIP**:
1. T3: EDM parameter system → IP code / E-pack (CRITICAL)
2. T11: JAVADA 学科 100分, 実技 2時間 (MAJOR)
3. T9: JLPT 3 sections explicit timing (MAJOR)

**Recommended fixes (post-ship iteration OK)**:
4. T3: Sodick model AG-60 → AL60G/AL40G
5. T10: ±0.01 → ±0.02 + move Moldex3D sang sách 16
6. T4: thêm "khuôn sample nhỏ, không production" framing
7. T8: +30% → "+20-25% (賞与込み 30%)"
8. Add 玉掛け cert mention 1 line (T3 hoặc T4)
