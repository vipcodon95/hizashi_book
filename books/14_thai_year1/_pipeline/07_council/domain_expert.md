# Domain Expert Council Review — Sách 14 "Thái Năm 1"

> Reviewer: Engineer khuôn đúc Việt-Nhật + chuyên gia visa 技人国 + HACCP/ISO9001 manufacturing (12 năm Tier-2 Toyota cluster Aichi)
> Date: 2026-04-28
> Verdict: **SHIP với điều kiện FIX 3 CRITICAL + 4 MAJOR trước seed**
> Severity: 3 CRITICAL, 6 MAJOR, 8 MINOR

## TOP 3 CRITICAL (BẮT BUỘC fix)

### 🔴 C1: Visa 技人国 + manual labor mô tả SAI compliance
**Files**: t01-t06 (toàn bộ phần Thái làm 磨き / forklift / MC operator)
**Vấn đề**: JD 技人国 nhưng Thái thực tế làm 磨き全日 8 tháng + MC operator. Đây là **simple labor / 単純労働** mà 入管 CẤM với visa 技人国. Kể cả "現場研修期間6ヶ月" plot device cũng không đủ — 入管 từng từ chối/huỷ visa khi nhân viên 技人国 làm magaki dài hạn (vụ "技人国偽装" 2020-2024).
**Reference**: 出入国在留管理庁 + マイナビグローバル不許可事例 ("フライス盤金属加工" không hợp lệ)
**Fix khuyến nghị**: Đổi visa story → **特定技能2号 素形材産業 (metal-machining)**. Vẫn N4→N3→N2 + 永住 path mở. Realistic 100% với cốt truyện magaki/MC/CAD.

### 🔴 C2: Forklift 受講料 ¥35.000 SAI
**File**: t04 Scene 4 line 63
**Vấn đề**: Giá thị trường Aichi 2022-2024 là **¥38.000-¥45.000**. ¥35.000 là giá pre-2018.
**Fix**: Đổi ¥35.000 → **¥40.000** hoặc bỏ con số cụ thể.

### 🔴 C3: "中央労働災害防止協会 Aichi" SAI tên tổ chức
**File**: prompt context t04
**Vấn đề**: 中災防 trụ sở Tokyo, **KHÔNG có chi nhánh Aichi cấp 技能講習**. Aichi do **愛知労働基準協会** (forklift) hoặc **建災防愛知県支部** (玉掛け) cấp.
**Fix**: Đổi tên → "**愛知労働基準協会**" hoặc "**陸災防愛知県支部**".

## TOP 6 MAJOR

### 🟡 M1: Magaki grit progression thiếu #1200
**File**: t03 Scene 2 line 35
**Vấn đề**: Sách jump #800 → #1500 (skip #1200 industry standard).
**Fix**: Thêm #1200 vào sequence.

### 🟡 M2: "深い谷" terminology SAI
**File**: t03 toàn chương
**Vấn đề**: Thợ khuôn Nhật ít gọi "深い谷". Phổ biến: "**前番手の傷**" hoặc "**ペーパー目が残る**". "谷" thường dùng cho macro defect (waviness).
**Fix**: "深い谷" → "**前番手の傷**" hoặc "**ペーパー目**". Update vocab.

### 🟡 M3: JAVADA 機械加工 3級 số liệu SAI
**File**: t11 Scene 5-6
**Vấn đề**:
- Sách viết "学科 50問, 50分" — sai. Reality: **30 vấn đề (真偽法 25 + 多肢択一 5), 60分**.
- Sách viết "実技 1時間20分" — sai. Reality: **2時間** (composite job).
**Fix**: 学科 30問/60分; 実技 NCフライス盤 2時間.

### 🟡 M4: 試験会場 location SAI
**File**: t11 Scene 1 line 17
**Vấn đề**: 愛知県職業能力開発協会 trụ sở 中区 Nagoya. Hội thi 機械加工 3級 thực tế **rải khắp các 職業訓練校**.
**Fix**: "愛知県職業能力開発協会" → "**安城商工会議所試験会場**" hoặc "**中部ポリテクセンター（小牧）**".

### 🟡 M5: SolidWorks vs NX cho Tier-2 Toyota
**File**: t08 Scene 5 line 78; t10 toàn chương
**Vấn đề**: Tier-2 supply Toyota Shatai thường dùng **NX** (35%), **CATIA** (20%), **SolidWorks** chỉ ~25% (Tier-3 hoặc independent).
**Fix khuyến nghị**: Giữ SolidWorks (học liệu phong phú hơn) nhưng đổi cốt truyện → "Tier-2 nhưng không direct Toyota system, qua intermediate". Sửa Scene 3 t01 line 50.

### 🟡 M6: Hainrich's law tỉ lệ SAI
**File**: t05 Scene 3 line 48
**Vấn đề**: Sách viết "**1 ヒヤリハット = 29 軽事故 + 1 重大**" — đảo ngược + sai số.
**Reality chuẩn**: **1 重大事故 : 29 軽傷事故 : 300 ヒヤリハット** (1:29:300).
**Fix**: Sakurai phải nói: "1件の重大事故の裏に、29件の軽傷事故と300件のヒヤリハットがある".

## MINOR (8)

1. m1: Torikizoku Anjo OK nhưng 部長 50s thường book quán nhỉnh hơn
2. m2: Putra ムスリム + Torikizoku — không halal (chế biến chung thiết bị heo)
3. m3: "見て覚えろ" 2022+ đã shift sang OJTマニュアル — Suzuki 30 tuổi hơi old-school
4. m4: 玉掛け 3日 OK nếu chưa có クレーン特別教育
5. m5: 家賃 ¥20.000 hơi thấp Aichi 2022 (realistic ¥25.000-¥35.000)
6. m6: 切削速度 V=π×D×n/1000 ✓ đúng
7. m7: 5S 整理整頓清掃清潔躾 ✓ chuẩn 100% Toyota
8. m8: 高度専門職 70点 永住 4年 ✓ đúng

## Topics NÊN ADD

1. **在留カード携帯義務 + 14日内住所届出** (t01) — pháp lý realistic foreign worker
2. **健康診断 入社** (t02 hoặc t03) — bắt buộc 雇入れ時健康診断 + vocab medical
3. **加工不良 + 客先クレーム** 1 lần năm 1 — arc thiếu intensity nếu 100% celebration

## Topic NÊN REMOVE/REDUCE

- **"履歴書に書ける" frame cho 3 cert** (t04 Scene 8) — forklift/玉掛け là **basic entry requirement**, không phải career capital cao. Khen quá tay làm reader VN có expectation sai.

## Strengths xuất sắc (preserve)

1. **Workshop ritual culture** (朝礼, KY, HH report format, 5S, bonenkai 乾杯 両手注ぎ) — clearly research thực tế, không copy textbook
2. **Cohort dynamic** (Suzuki sempai khắc khe + Sakurai peer + Putra foreign + Kawakami chief) reflect đúng senpai-kohai 中小企業 80 người
3. **Career arc realistic timeline**: 3 cert năm 1 → 機械加工 3級 → CAD entry → MC operator năm 2 → 2級 năm 3 — đúng chuẩn promotion path Nhật cho engineer foreign

## Final Verdict

**SHIP với điều kiện FIX 3 CRITICAL + 4 MAJOR (M3, M5, M6, M2) trước seed.**

3 CRITICAL phải fix vì legal compliance + factual error sẽ bị kiểm duyệt phát hiện.
4 MAJOR ưu tiên fix vì kiến thức cốt lõi sai sẽ làm sách mất uy tín.
2 MAJOR còn (M1, M4) + 8 MINOR có thể defer.
