# Research Master — Series 5 sách "Thái Kỹ sư khuôn đúc" (sách 14→18)

> Topic: 5 năm 2022/05 → 2027/03 của kỹ sư cơ khí VN ngành 金型製作
> Researcher: book-researcher agent
> Date: 2026-04-28
> Pipeline: LITE (dialogue-only, không seed DB)

## Quyết định cuối (parent confirm)

| Q | Decision |
|---|---|
| Q1 Visa | **技人国 (Gijinkoku)** từ đầu. JD: "金型設計補助 + 製造現場研修期間6ヶ月" cho year 1. |
| Q2 Khuôn type | **プラスチック金型 xuyên suốt**. Cameo ダイカスト ở year 4. |
| Q3 Setting | **Anjo市 Aichi** (cluster Toyota Tier-1). Công ty fictitious **株式会社みなみ精密金型** 80 nhân viên. |
| Q4 Linh-chị | Nagoya, mentor đời sống VN — recurring guest year 1-3. |
| Q5 永住権 | Plan only (sẽ apply 2032). Year 5 chưa apply. |
| Q6 Bạn gái | High school sweetheart. Year 1-3 yêu xa. Year 4 căng. Year 5 cô sang Nhật 家族滞在. |
| Q7 Pipeline | **LITE** (giống sách 11-13). Suffix `_HoiThoai.md`. KHÔNG seed DB. |
| Q8 Glossary | Build per-book (mỗi sách +100 từ vocab table cuối chương). |
| Q9 Expert | Council domain_expert role: "Engineer khuôn đúc Việt-Nhật + chuyên gia visa Gijinkoku" |
| Q10 育成就労 reform 2027 | Năm 5 Thái sempai cho TTS Việt cuối + Ikusei Việt đầu — narrative point |

## A. Domain ngành khuôn — kiến thức nền

### A1. Quy trình chế tạo khuôn nhựa (プラスチック金型) A→Z
1. 打ち合わせ・仕様検討 (uchiawase) — họp khách
2. 3D製品設計→金型設計 — SolidWorks/NX/CATIA/Top Solid/Cimatron
3. CAM プログラム作成 — Mastercam/NX CAM/Esprit/hyperMILL
4. 荒加工 (ara-kakou) — phay thô MC
5. 熱処理 (netsu-shori) — yakiire/yakimodoshi vacuum furnace, HRC ~50-60
6. 仕上げ加工 — high-speed milling 5-axis
7. 放電加工 EDM — die-sinker (Sodick/Makino) + wire-EDM
8. 研削 (kensaku) — surface + profile grinder
9. 磨き工程 (migaki) — manual hand-polishing 5 cấp
10. 組立 (kumitate) — lắp cavity/core/slide/ejector/runner
11. トライ・型試 (kataaji) — first shot
12. 修正 (shuusei) — chỉnh sửa defect
13. 量産引渡し

### A2. Plastic vs Diecast khuôn

| Tiêu chí | プラスチック金型 | ダイカスト金型 |
|---|---|---|
| Vật liệu sản phẩm | Resin ABS/PP/POM/PC | Hợp kim Al/Zn/Mg |
| Nhiệt độ ép | ~200°C | 500-700°C (Al), ~400°C (Zn) |
| Vật liệu khuôn | NAK80, HPM38, SKD61 | SKD61, DAC55 (耐熱鋼) |
| Tuổi thọ | 50万-100万 shot | 5-10万 shot |
| Sản phẩm | Vỏ điện thoại, nội thất xe | Block động cơ, vỏ hộp số |

### A3. Tay chân entry-level
- ヤスリがけ (yasuri-gake) — mài dũa tay
- 磨き 5 cấp #320→#3000→diamond paste
- マシンの段取り — clamp + set zero
- バリ取り (bari-tori) — deburring
- ノギス, マイクロメーター, ハイトゲージ measuring
- 5S掃除 + KYT報告

### A4. 磨き 5 cấp (mirror polishing) — signature ngành

| Cấp | Grit | Công cụ | Kết quả |
|---|---|---|---|
| 1. 砥石 | #320-#600 | 角砥石, 油砥石 | Loại bỏ vết phay |
| 2. ペーパー | #800-#1500 | sand paper + 当て木 | Mặt mờ đều |
| 3. ペーパー仕上 | #2000-#3000 | wet paper | Bán bóng |
| 4. ダイヤパウダー | 9μm→3μm | felt + diamond paste | Bóng |
| 5. 鏡面仕上 | 1μm→0.25μm | rayon + paste | Mirror >95% reflection |

Skip cấp = "深い谷" lộ ra → defect.

### A5. Vocab ngành khuôn — 100+ từ chuyên môn

**Core mold parts**: キャビティ Cavity / コア Core / 入れ子 (irekko) insert / パーティングライン PL / スライドコア / アンダーカット
**Ejection**: エジェクタピン Eピン / ストリッパープレート / リターンピン / スプリング / ガイドポスト
**Runner system**: スプルー / ランナー / ゲート (ピン/サイド/フィルム/サブマリン) / ホットランナー
**Máy CNC**: Mazak, Okuma, Makino, Mori Seiki (DMG Mori), Brother
**EDM**: 形彫 die-sinker (Sodick/Makino EDGE/Mitsubishi) / ワイヤカット (Sodick/Mitsubishi MV)
**Đo**: CMM 三次元測定機 (Mitutoyo CRYSTA/Carl Zeiss) / 工具顕微鏡 / ノギス / マイクロメータ / ハイトゲージ / ピンゲージ / リングゲージ — Mitutoyo gần như độc quyền
**CAD/CAM**: NX (auto OEM), Creo, SolidWorks (中小), CATIA, Top Solid, Inventor; CAM: Mastercam (HOT), NX CAM, Esprit, hyperMILL, Cimatron; Mold-specific: Moldflow, Moldex3D
**Defect**: ヒケ sink mark / ソリ warpage / バリ flash / ウェルドライン / ショートショット / フローマーク / ジェッティング / シルバーストリーク
**Steel**: S50C / NAK80 / HPM38 / SKD11 (lạnh) / SKD61/DAC55 (nóng) / STAVAX/ELMAX (mirror)

### A6. Chuẩn JIS
- JIS B 0401: tolerance IT01-IT16
- JIS B 0601: surface roughness Ra/Rz/Rmax
- 金型 yêu cầu Ra 0.05-0.1μm cho mirror, 0.4-0.8 cho công nghiệp
- JIS Z 8114: drafting terminology

## B. Lộ trình chứng chỉ Nhật

### B1. 技能検定 金型製作技能士

| Cấp | 受験資格 | Khi Thái thi |
|---|---|---|
| 3級 | 6 tháng | (skip — thi 機械加工3級 thay) |
| **2級** | **2 năm** | **2025/03** sách 16 |
| 1級 | 7 năm hoặc 2級+2 | 2029-2030 (ngoài range) |

Chuyên ngành: **プラスチック成形用金型製作作業**

### B2. 機械加工技能士

- マシニングセンタ作業 — HOT NHẤT
- 3級 → Thái thi **2023/03** sách 14 chương 11
- 2級 → **2025/03** sách 16
- 1級 → 2027 (sách 18)

### B3. CAD利用技術者試験

| Test | Khi Thái thi |
|---|---|
| 2次元CAD 2級 | sách 15 |
| **3次元CAD 2級** | sách 16 |
| 3次元CAD 1級 | sách 17 (fail lần đầu) → sách 18 retry |

### B4. JLPT timeline thực tế

| Mốc | Level | Sách |
|---|---|---|
| 2022/05 nhập | N4 weak | 14 |
| 2023/12 | **N3 đỗ** | 15 |
| 2025/07 (sau 3 năm) | **N2 đỗ** | 17 |
| 2027/03 cuối series | N2 chắc, N1 chưa cần | 18 |

### B5. Chứng chỉ phụ trợ

| Cert | Khi học | Lý do |
|---|---|---|
| **フォークリフト運転** ≥1t | sách 14 T08 | Di chuyển khuôn 200-2000kg |
| **玉掛け** ≥1t | sách 14 T08 | Treo khuôn lên cẩu trục |
| **クレーン** ≥5t | sách 15 | Vận hành cẩu trục |
| **アーク溶接特別教育** | sách 16 | Sửa khuôn welding |
| **研削砥石特別教育** | sách 14 | Bắt buộc trước dùng grinder |
| **危険物取扱者乙4** | sách 17 | Quản lý dầu cắt gọt |
| **安全衛生推進者** | sách 18 | Track lên team leader |

## C. Lộ trình promotion — 5 năm

| Năm | Job (JP) | Việc thực | Lương ¥/tháng | Sách |
|---|---|---|---|---|
| **1 (2022/05-2023/04)** | 製造補助 / 現場見習 | Migaki, deburring, đo, dọn máy, học CAD ngoài giờ | 200-220k + 残業 | 14 |
| **2 (2023/05-2024/04)** | マシンオペレータ MC | MC 3-trục, set program từ CAM, EDM operator | 230-250k + 残業 | 15 |
| **3 (2024/05-2025/04)** | アシスタント設計 / CADオペレータ | Vẽ chi tiết từ master designer, modify standard parts library | 260-290k | 16 |
| **4 (2025/05-2026/04)** | 設計者 (junior) | Thiết kế khuôn nhỏ-trung độc lập, làm việc với 営業 + khách | 300-340k | 17 |
| **5 (2026/05-2027/03)** | 設計係長 / リーダー候補 | Lead 1 dự án lớn, mentor 2-3 TTS/SSW1 (VN/Indo/Phil) | 350-400k | 18 |

## D. Visa: 技人国 từ đầu

- ĐH cơ khí VN matching JD "金型設計補助"
- Gia hạn 3 năm/lần dễ
- 永住権 trong 10 năm (2032)
- Year 1 plot device: JD ghi rõ "設計補助 + 現場研修期間6ヶ月" — hợp pháp + realistic

## E. Cluster: Anjo Aichi

- Công ty fictitious: **株式会社みなみ精密金型** 80 nhân viên, 二次サプライヤー Toyota Tier-1
- Setting: 安城市新明町 (Anjo Shinmei-cho)
- Ký túc 1K cách 工場 đi xe đạp 10 phút
- Nagoya cuối tuần (Meitetsu 30 phút)
- Khí hậu giống Hà Nội (mùa đông ít tuyết — distinct với Saitama Hoa)

## F. Văn hoá workshop khuôn (khác food factory)

| Yếu tố | 食品 (sách 11-13) | 金型 (sách 14-18) |
|---|---|---|
| Áo bảo hộ | 白衣 + マスク | 作業着 + 安全靴 + ヘルメット + 保護メガネ |
| Tốc độ | Dây chuyền cố định | Job-shop |
| 残業 | Ít | **Nhiều** (60-80h peak) |
| Sempai-kohai | Mềm | **Cứng** "見て覚えろ" |
| Kaizen | Tuần 1 đề xuất | **Sôi động** monthly target |
| Khách | Audit ISO | Auto OEM khắt khe — 1 不良 = lost trust |

**Daily rituals**:
- 朝礼 8:30 + 体操 + KY宣言 + 連絡事項
- ヒヤリハット reports tuần ≥1
- 改善提案 monthly target 2-3, thưởng ¥500-3000
- TPM tự bảo trì máy
- 品質会議 weekly review 不良率

**Wall posters Thái phải đọc**: 安全第一 / 整理整頓 / ご安全に / 危険予知 / 報連相 / ゼロ災害

## G. Gap analysis

| Đối thủ | Gap |
|---|---|
| OTIT 機械加工 げんばのにほんご | Vocab rời, không story, target TTS không engineer ĐH |
| JITCO 現場編 第4版 | Khô, không cover designer path |
| 「金型って何だろう」Misumi | Web, không bilingual |
| Mitutoyo measurement glossary | Chỉ vocab measure |
| **Vlog VN ngành khuôn** | **GAP HUGE — không có precedent VN** |
| 「アオイホノオ」「町工場物語」 | Manga, không học tiếng |

**Hizashi 14-18 = Sách Việt ĐẦU TIÊN ngành khuôn cho engineer cơ khí VN** (không phải TTS).

## H. Cast xuyên series

**Main**: Thái 23→28 tuổi, ĐH Bách Khoa HN, N4→N2

**Mentor Nhật**:
- 田中部長 Tanaka (50s) — 工場長 plastic mold dept, ít nói nhưng fair
- 川上設計課長 Kawakami (40s) — chief designer, pickup Thái lên CAD year 2-3
- 鈴木先輩 Suzuki (30s) — 5 năm hơn, daily mentor — gần gũi nhất, dạy CAM. Year 2 rời 転職 → loss

**Foreign cohort**:
- Putra (Indonesia, SSW1) — cùng ký túc, cohort hằng ngày. Year 4 hết SSW1 về.
- Marco (Philippines, TTS năm 3 → SSW1) — sempai foreign
- Linh-chị (VN, Nagoya) — gen trước, sang 5 năm, mentor đời sống

**VN nhà**:
- Mẹ + bố + em gái (em gái year 4 sang du học Nagoya?)
- Bạn gái Mai (high school sweetheart, year 5 sang Nhật 家族滞在)

**Khách (year 3-5)**:
- トヨタ車体さん 浜田課長 Hamada (Tier-1, demanding) — recurring tension

## I. 5 sách arc (60 chương, ~480 scenes total)

### Sách 14 — "Năm 1: Tay nghề / Genba Hairi" (2022/05-2023/04) — 12 chương 8 scene = 96 scenes
- Theme: cú sốc văn hoá + tay chân + visa 技人国 thử thách + thi 機械加工3級 cuối năm
- Cast intro: Tanaka, Suzuki, Kawakami spot, Putra, Linh-chị

### Sách 15 — "Năm 2: Operator MC/EDM" (2023/05-2024/04) — 12 chương 8 scene = 96 scenes
- Theme: MC operator độc lập, học Mastercam, N3 đỗ, 機械加工 2級 prep, Suzuki rời 転職

### Sách 16 — "Năm 3: アシスタント設計 + N3→N2 + 機械加工 2級" (2024/05-2025/04) — 12 chương 8 scene = 96 scenes
- Theme: transition MC → design assistant. SolidWorks/NX deep + Misumi standard parts. First Hamada keigo. Em gái sang.

### Sách 17 — "Năm 4: 設計者 + 客先対応" (2025/05-2026/04) — 12 chương 8 scene = 96 scenes
- Theme: junior designer, lead first-mold, 出張 Toyota Tier-1, bạn gái thăm 2 tuần, Putra về, Tanaka retire, 3次元CAD 1級 fail rồi retry, sempai cho TTS/SSW1 mới.

### Sách 18 — "Năm 5: 設計係長 / リーダー候補" (2026/05-2027/03) — 12 chương 8 scene = 96 scenes
- Theme: closure. EV battery casing mold project (5 người team), defect crisis lead. Mẹ thăm. Decision: ở lại Nhật + cưới Mai (家族滞在 sách 18 cuối). Marco hết SSW1 về.

## J. Pipeline strategy

- 5 sách x 8 stages LITE = 40 stages
- Build sách 14 hoàn thiện trước, áp dụng learnings cho 15-18
- Master glossary 500-700 từ build per-book
- Mỗi sách 8 scene/chương (gọn hơn Hoa series 14-18 scene/chương — vì có 5 sách)
- Subagents reuse: book-researcher (đã xong), japanese-vietnamese-reviewer, consistency-reviewer, council 3 reviewers

## K. Sources

xem inline reference research output (subagent đã list 50+ sources).
