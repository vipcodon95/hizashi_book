# REWRITE LOG — Sách 12-18 theo pattern 27_kaigo

Phiên rewrite tự động bắt đầu **2026-05-21 ~22:00**. Main agent điều phối, subagent viết lại từng chương.

## Scope

- 12_hoa_year2: 12 chương
- 13_hoa_year3: 12 chương
- 14_thai_year1: 12 chương
- 15_thai_year2: 12 chương
- 16_thai_year3: 12 chương
- 17_thai_year4: 12 chương
- 18_thai_year5: 12 chương

**TỔNG: 84 chương**

## Cấu hình

- Pattern source: `27_kaigo/t01-t03`
- Guide: `_shared/REWRITE_GUIDE.md`
- Rule: giữ setting + nhân vật + lời thoại JP có ruby; reframe metadata + tình huống.

## Phase tracking

- [x] Phase 1: Build guide (xong, 216 dòng)
- [x] Phase 2: Pilot `14_thai_year1/t01` — ✅ 11 tình huống, 28 mục vocab, 299 ruby tags, có scene Việt + Đọng lại chương
- [ ] Phase 3: Scale 83 chương còn lại
- [ ] Phase 4: Verify
- [ ] Phase 5: Rebuild EPUB

## Decision log

- **2026-05-21 ~22:30** — Pilot 14_thai_year1/t01 pass. Subagent đã: (1) gộp stage direction rỗng `(緊張)` `(渡す)` thành câu JP đủ; (2) bỏ scene "Đêm trước · 23:30 viết nhật ký" tiếng Việt nội tâm, thay TH11 chúc ngủ ngon JP; (3) tận dụng scene Putra Indonesia + thêm scene gọi điện Mẹ+Mai tiếng Việt (vì Putra không phải đồng hương Việt). → Approve pattern này áp dụng cho mọi chương.
- **Rule mới phát hiện**: nếu nhân vật chính ở chung phòng với người NƯỚC NGOÀI (không phải đồng hương Việt), thì scene tiếng Việt chuyển sang **gọi điện về VN** (mẹ/người yêu) thay vì đối thoại đồng phòng.

## Progress per chapter

| # | Book | Chapter | Status | Notes |
|---|---|---|---|---|
| 1 | 14_thai_year1 | t01_rainichi | ✅ DONE | 11 TH, 28 vocab, scene Việt qua gọi điện mẹ+Mai |
| 2 | 14_thai_year1 | t03_yasuri_migaki | ✅ DONE | 10 TH, 22 vocab, LINE về Mai + báo cáo 報連相 sáng |
| 3 | 14_thai_year1 | t05_hiyari_hatto | ✅ DONE | 9 TH, 25 vocab, ヒヤリハット + KYT + gọi Mai |
| 4 | 14_thai_year1 | t04_forklift_tamakake | ✅ DONE | 11 TH, 26 vocab, 技能講習 forklift + Sakurai làm mẫu |
| 5 | 14_thai_year1 | t02_koujou_shonichi | ✅ DONE | 12 TH, 27 vocab, ngày đầu xưởng + 鏡面仕上げ + video Mai |
| 6 | 14_thai_year1 | t06_chorei_debut | ✅ DONE | 10 TH, 26 vocab, KY宣言 thứ Tư + LINE mẹ+Mai |
| 7 | 14_thai_year1 | t08_bonenkai_osoji | ✅ DONE | 10 TH, 25 vocab, 大掃除 + 忘年会 + 乾杯/注ぎ返す + scene Việt |
| 8 | 14_thai_year1 | t09_oshogatsu_tet | ✅ DONE | 10 TH, 24 vocab, Tết Việt + おせち + xin nghỉ phép + chị Linh |
| 9 | 14_thai_year1 | t07_nagoya_momiji | ✅ DONE | 9 TH, 26 vocab, Nagoya Osu/紅葉 + chị Linh + video Mai |
| 10 | 14_thai_year1 | t10_cad_nyumon | ✅ DONE | 8 TH, 28 vocab, CAD入門 + Kawakami 80/20 + gọi Mai |
| 11 | 14_thai_year1 | t12_ichinen_keika | ✅ DONE | 10 TH, 32 vocab, 面談 thăng cấp + tổng kết năm 1 + setup năm 2 |
| 12 | 15_thai_year2 | t01_mc_operator_start | ✅ DONE | 11 TH, 29 vocab, MC Mazak + ビビリ + video Mai |
| 13 | 14_thai_year1 | t11_kikai_kakou_3kyu | ✅ DONE | 10 TH, 30 vocab, kỳ thi 機械加工3級 + chị Linh đồng hương |
| 14 | 15_thai_year2 | t02_mastercam_basic | ✅ DONE | 7 TH, 27 vocab, Mastercam + Suzuki + Mai |
| 15 | 15_thai_year2 | t05_defect_correction | ✅ DONE | 9 TH, 28 vocab, defect + TIG Matsumoto + gọi Mai |
| 16 | 15_thai_year2 | t04_first_solo_trial | ✅ DONE | 10 TH, 27 vocab, trial khuôn solo + 保圧/ヒケ + gọi Mai |
| 17 | 15_thai_year2 | t03_edm_setup | ✅ DONE | 10 TH, 30 vocab, EDM Sodick + 放電加工 + scene Mai |
| 18 | 15_thai_year2 | t06_haru_kentei | ✅ DONE | 7 TH, 23 vocab, kỳ thi xuân + 資格手当 + chị Linh |
| 19 | 15_thai_year2 | t07_n3_intensive | ✅ DONE | 10 TH, 25 vocab, ôn JLPT N3 + 〜たびに + chị Linh tutor |
| 20 | 15_thai_year2 | t09_n3_kentei | ✅ DONE | 12 TH, 25 vocab, kỳ thi N3 + gọi mẹ+Mai |
| 21 | 15_thai_year2 | t08_suzuki_tenshoku | ✅ DONE | 11 TH, 29 vocab, Suzuki 転職 + 送別会 + scene Việt |
| 22 | 15_thai_year2 | t10_chukyu_seimitsu | ✅ DONE | 9 TH, 30 vocab, 公差 ±0.01 + Moldex3D + Mai |
| 23 | 16_thai_year3 | t01_cad_nyumon_full | ✅ DONE | 8 TH, 27 vocab, 設計室 + パラメトリック + LINE Mai |
| 24 | 15_thai_year2 | t11_kikai_kakou_2kyu | ✅ DONE | 9 TH, 29 vocab, kỳ thi 2級 + gọi mẹ+Mai |
| 25 | 15_thai_year2 | t12_ninen_keika | ✅ DONE | 10 TH, 29 vocab, 辞令 thăng cấp + chị Linh + Putra |
| 26 | 16_thai_year3 | t05_em_gai_du_hoc | ✅ DONE | 8 TH, 29 vocab, đón em gái Nanzan + 市役所/Yucho |
| 27 | 16_thai_year3 | t04_first_part_design | ✅ DONE | 8 TH, 24 vocab, kênh nước Moldex3D + 報連相 báo cáo |
| 28 | 16_thai_year3 | t03_misumi_library | ✅ DONE | 10 TH, 30 vocab, ミスミ meviy + 公差 h6 + Mai |
| 29 | 16_thai_year3 | t02_solidworks_advanced | ✅ DONE | 10 TH, 38 vocab, SolidWorks Mate + 公差 H7/g6 + Mai |
| 30 | 16_thai_year3 | t07_kanagata_2kyu_prep | ✅ DONE | 7 TH, 28 vocab, ôn 2級 金型製作 + Sakurai slide-core |
| 31 | 16_thai_year3 | t06_3dcad_2kyu | ✅ DONE | 9 TH, 27 vocab, thi 3D CAD 2級 + video mẹ+Mai |
| 32 | 16_thai_year3 | t08_first_hamada | ✅ DONE | 9 TH, 32 vocab, Hamada Toyota Shatai + 許容公差 |
| 33 | 16_thai_year3 | t09_keigo_kyaku | ✅ DONE | 10 TH, 27 vocab, 敬語 3 loại + Sakurai feedback + gọi Mai |
| 34 | 16_thai_year3 | t12_sannen_keika | ✅ DONE | 7 TH, 29 vocab, thăng cấp ジュニア + Kawakami 3 nguyên tắc + Mai/Linh-Anh |
| 35 | 16_thai_year3 | t11_kanagata_2kyu_pass | ✅ DONE | 11 TH, 27 vocab, đỗ 金型2級 + 飲み会/割り勘 + Mai |
| 36 | 17_thai_year4 | t01_first_lead | ✅ DONE | 9 TH, 28 vocab, lead dự án Hamada + gọi Mai |
| 37 | 16_thai_year3 | t10_jlpt_n2_prep | ✅ DONE | 13 TH, 30 vocab, ôn N2 + Sato dạy ngữ pháp + Hùng/mẹ Mai |
| 38 | 17_thai_year4 | t03_diecast_cameo | ✅ DONE | 8 TH, 30 vocab, diecast + 圧力損失 + gọi Mai |
| 39 | 17_thai_year4 | t05_putra_kaikoku | ✅ DONE | 8 TH, 30 vocab, Putra về Jakarta + kohai Hiệp + Mai/mẹ |
| 40 | 17_thai_year4 | t02_design_to_z | ✅ DONE | 9 TH, 33 vocab, dự án A→Z + 5軸/Cpk + gọi mẹ/Mai |
| 41 | 17_thai_year4 | t04_3dcad_1kyu_fail | ✅ DONE | 10 TH, 38 vocab, thi 1級 trượt + 展開する/ハッチング + Mai |
| 42 | 17_thai_year4 | t06_tanaka_taishoku | ✅ DONE | 9 TH, 27 vocab, Tanaka về hưu 嘱託 + Kawakami 工場長 + Mai |
| 43 | 17_thai_year4 | t07_kawakami_koujou | ✅ DONE | 8 TH, 21 vocab, lên 設計課長代理 + 辞令 + Mai video |
| 44 | 17_thai_year4 | t09_mai_visit | ✅ DONE | 11 TH, 29 vocab, Mai sang Nhật + cầu hôn Kinkaku-ji + Linh-Anh |
| 45 | 17_thai_year4 | t08_first_shutchou | ✅ DONE | 10 TH, 29 vocab, công tác Toyota City + B2B keigo + gọi mẹ |
| 46 | 17_thai_year4 | t11_kohai_shidou | ✅ DONE | 10 TH, 31 vocab, dạy kohai Long/Hùng/Adi + Mai video |
| 47 | 17_thai_year4 | t10_3dcad_1kyu_retry | ✅ DONE | 10 TH, 26 vocab, thi lại 1級 đỗ 87/100 + 祝賀会 + Mai |
| 48 | 18_thai_year5 | t01_ev_project_kick | ✅ DONE | 8 TH, 37 vocab, EV project kick + Sakurai dạy điều phối |
| 49 | 17_thai_year4 | t12_yonen_keika | ✅ DONE | 9 TH, 33 vocab, lên 設計係長 + Tanaka 嘱託 + gọi Mai |
| 50 | 18_thai_year5 | t05_recovery | ✅ DONE | 10 TH, 28 vocab, recovery + TIG Matsumoto + gọi Mai |
| 51 | 18_thai_year5 | t04_4m_analysis | ✅ DONE | 10 TH, 27 vocab, 4M defect + V/P切替 + Mai |
| 52 | 18_thai_year5 | t02_team_lead | ✅ DONE | 9 TH, 31 vocab, lead team + 共擦り + Sakurai feedback |
| 53 | 18_thai_year5 | t03_first_defect | ✅ DONE | 10 TH, 28 vocab, defect EV + 肉盗み + Mai |
| 54 | 18_thai_year5 | t06_toyota_praise | ✅ DONE | 8 TH, 25 vocab, Toyota khen + 身に余る光栄 + mẹ+Mai |
| 55 | 18_thai_year5 | t08_decision | ✅ DONE | 8 TH, 28 vocab, 3 lựa chọn 永住/家族滞在 + Linh tư vấn |
| 56 | 18_thai_year5 | t09_marco_kaikoku | ✅ DONE | 9 TH, 25 vocab, Marco về nước + 送別会 + Mai sân bay |
| 57 | 18_thai_year5 | t07_haha_visit | ✅ DONE | 12 TH, 26 vocab, mẹ sang thăm + dịch keigo + Mai |
| 58 | 18_thai_year5 | t11_mai_kazoku | ✅ DONE | 11 TH, 30 vocab, đón Mai sang Nhật + 入管/不動産屋 |
| 59 | 18_thai_year5 | t12_5nen_closure | ✅ DONE | 11 TH, 26 vocab, closure 5 năm + 課長候補 + truyền sổ kōhai |
| 60 | 18_thai_year5 | t10_kekkon_jp | ✅ DONE | 10 TH, 26 vocab, đăng ký kết hôn JP + visa + bàn giao |

**🎉 BỘ THÁI 5 NĂM HOÀN TẤT (60/60 chương — 14-18) 🎉**

| 61 | 12_hoa_year2 | t04_mai_mistake | ✅ DONE | 12 TH, 23 vocab, Mai phạm lỗi + 5 Why/真因 + Putri/mẹ |
| 62 | 12_hoa_year2 | t02_mai_arrival | ✅ DONE | 14 TH, 28 vocab, đón kohai Mai + yasashii nihongo + Linh LINE |
| 63 | 12_hoa_year2 | t01_ikusei_kaishi | ✅ DONE | 13 TH, 23 vocab, 育成就労 chế độ mới + Satou coaching + mẹ Zalo |
| 64 | 12_hoa_year2 | t03_day_eisei | ✅ DONE | 16 TH, 34 vocab, vệ sinh ATP + Mai dạy lại + gọi mẹ |
| 65 | 12_hoa_year2 | t05_sekininsha_apply | ✅ DONE | 10 TH, 25 vocab, nộp đơn sekininsha + 復習 + gọi Linh |
| 66 | 12_hoa_year2 | t06_chukan_y2 | ✅ DONE | 11 TH, 25 vocab, chūkan đánh giá + 無理しないで + gọi mẹ |
| 67 | 12_hoa_year2 | t07_sekininsha_pass | ✅ DONE | 12 TH, 25 vocab, đỗ 食品衛生責任者 + Kimura kinh nghiệm + gọi mẹ |
| 68 | 12_hoa_year2 | t08_audit_y2 | ✅ DONE | 12 TH, 28 vocab, audit Aeon + AI 画像認識 + Andi LINE |
| 69 | 12_hoa_year2 | t10_putri_crisis | ✅ DONE | 12 TH, 25 vocab, sự cố -25°C + xin lỗi formal + chị Linh |
| 70 | 12_hoa_year2 | t09_haccp_course | ✅ DONE | 13 TH, 31 vocab, khóa HACCP JHTC + Sasaki 温度記録 + Mai |
| 71 | 12_hoa_year2 | t11_haccp_tokutei | ✅ DONE | 11 TH, 25 vocab, 特定技能 hồ sơ + Andi Nagoya + Mai |
| 72 | 12_hoa_year2 | t12_bonenkai_y2 | ✅ DONE | 18 TH, 30 vocab, cuối năm 2 + Linh cưới + sân bay tiễn |

**🎉 SÁCH 12_HOA_YEAR2 HOÀN TẤT (12/12 chương) 🎉**

| 73 | 13_hoa_year3 | t01_y3_kaishi | ✅ DONE | 10 TH, 26 vocab, năm 3 育成就労 + chuẩn bị SSW1 + mẹ visa |
| 74 | 13_hoa_year3 | t03_n3_kentei | ✅ DONE | 13 TH, 31 vocab, thi N3 + 良好修了 + chị Linh |
| 75 | 13_hoa_year3 | t04_line_crisis | ✅ DONE | 12 TH, 25 vocab, sự cố line + トレーサビリティ + gọi mẹ |
| 76 | 13_hoa_year3 | t02_trang_arrival | ✅ DONE | 15 TH, 25 vocab, đón Trang + 10 bước bảo hộ + 3 chị em |
| 77 | 13_hoa_year3 | t07_expo_tokyo | ✅ DONE | 14 TH, 24 vocab, expo Tokyo + 異物検出 + gọi mẹ |
| 78 | 13_hoa_year3 | t06_mensetsu_cuoi | ✅ DONE | 12 TH, 25 vocab, mensetsu cuối + 永住権/就労資格 + mẹ |
| 79 | 13_hoa_year3 | t05_kentei_pass | ✅ DONE | 13 TH, 40 vocab, đỗ kentei + dạy kohai + mẹ |
| 80 | 13_hoa_year3 | t08_audit_lawson | ✅ DONE | 17 TH, 35 vocab, audit Lawson OEM + 校正 + mẹ Nghệ An |
| 81 | 13_hoa_year3 | t10_me_qua_tham | ✅ DONE | 14 TH, 22 vocab, mẹ sang Nhật + Kaminarimon + bàn stay/go |
| 82 | 13_hoa_year3 | t09_n3_pass | ✅ DONE | 11 TH, 30 vocab, thi N3 đỗ 140đ + báo cấp trên + gọi mẹ |
| 83 | 13_hoa_year3 | t11_stay_go | ✅ DONE | 11 TH, 22 vocab, quyết định stay + nhận bổ nhiệm + gọi Linh |
| 84 | 13_hoa_year3 | t12_bonenkai_ssw1 | ✅ DONE | 18 TH, 30 vocab, closure 3 năm + 乾杯 + speech + video mẹ/Linh |

**🎉🎉🎉 TOÀN BỘ 84/84 CHƯƠNG REWRITE HOÀN TẤT 🎉🎉🎉**

- Sách 12_hoa_year2: 12/12 ✅
- Sách 13_hoa_year3: 12/12 ✅
- Sách 14_thai_year1: 12/12 ✅
- Sách 15_thai_year2: 12/12 ✅
- Sách 16_thai_year3: 12/12 ✅
- Sách 17_thai_year4: 12/12 ✅
- Sách 18_thai_year5: 12/12 ✅

## Token monitoring

(Main agent ghi thời điểm cần ScheduleWakeup tại đây.)

---

## Phase 5 — Build EPUB final (2026-05-22)

**Output:**
- `_shared/output/hizashi_thai_y1_y5.epub` — 585 KB, 60 chương, 4,215 ruby tags
- `_shared/output/hizashi_hoa_y2_y3.epub` — 286 KB, 24 chương, 2,330 ruby tags

**XHTML validation:** 5/5 (thai) + 2/2 (hoa) đều pass `xmllint --noout`.

**Fix ruby furigana sai cú pháp (3 chỗ) trước khi rebuild:**
1. `17_thai_year4/t04_3dcad_1kyu_fail` dòng 47 — `<ruby>問題<rt>30番<rt>...</ruby>` → `<ruby>問題30番<rt>...</ruby>`
2. `18_thai_year5/t10_kekkon_jp` dòng 142 — `出<ruby>で</rt></ruby>` → `<ruby>出<rt>で</rt></ruby>`
3. `17_thai_year4/t05_putra_kaikoku` dòng 97 — `便<ruby>びん</rt>` → `<ruby>便<rt>びん</rt></ruby>`

Đã scan toàn 84 file bằng regex 3 pattern (double-rt, rt-noopen, kanji-outside-ruby) → 0 lỗi còn lại.

**CSS custom:** `_shared/scripts/epub_styles.css` — h1 1.6em, h2 1.25em, table cột nhân vật 18%/lời thoại 82%, ruby rt 0.55em, blockquote border-left.

**Bundle Đại (19-25) không build trong phiên này** — sách Đại chưa rewrite theo pattern 27 (out of scope yêu cầu "12-18"). File EPUB `hizashi_dai_y1_brse.epub` ngày 2026-05-21 là build cũ.
