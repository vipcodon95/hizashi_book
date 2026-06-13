# Báo cáo Kiểm tra Nhất quán Xuyên Series — 6 Sách Kaigo (S27–S32)

> Reviewer: consistency-reviewer + general-purpose agents · Ngày: 2026-05-16
> Phạm vi: 72 file _HoiThoai.md + 6 file _thuat_ngu.md
> Trạng thái: ĐÃ SỬA toàn bộ lỗi P0/P1, verify độc lập PASS.

## 1. Timeline 6 sách (sau khi sửa)

| Sách | Thời gian | Trạng thái Ngọc | Tuổi |
|------|-----------|-----------------|------|
| S27 | 4/2026–3/2027 | TTS năm 1, N4 | 24 |
| S28 | 4/2027–3/2028 | TTS năm 2, N3. Bà Sato 看取り T10-11 (3/2028) | 25 |
| S29 | 4/2028–3/2030 | TTS năm 3 → 特定技能 → thi 介護福祉士 1/2030 (trượt 1 môn) | 27-28 |
| S30 | 4/2031–3/2032 | Thi lại đỗ 1/2031 → 介護福祉士 → visa「介護」→ リーダー → 教育担当 | 28-30 |
| S31 | 4/2031–3/2032 | ユニットリーダー + 教育担当 → 介護主任. Gia đình sang 9/2031 (bé Mai 6t) | 29 |
| S32 | 4/2032–3/2033 | 介護主任 → thi ケアマネ 11/2032 đỗ → 実務研修 → hướng 永住権 (2036) | 30-31 |

Ngọc nhập cảnh 4/2026 (gốc cố định, S27). Đến 3/2033 = gần 7 năm.

## 2. Lỗi đã phát hiện & SỬA

### P0 (6 lỗi — đã sửa)
1-4. **S32 T5/T6/T7/T8 sai năm "2028" → "2032"** (lỗi copy-paste, timeline S32 sụp). ✅ sửa.
5. **S32 T10 "2023年4月" → "2026年4月"** (năm Ngọc nhập cảnh). ✅ sửa.
6. **S30 T12 Đọng lại "教育担当 (tháng 4/2028)" → "(tháng 4/2032)"**. ✅ sửa.

### P1 (đã sửa)
- **Yamamoto bị gọi "anh" (là NỮ)** — 32 chỗ across S30/S31/S32 (gồm Yamamoto tự xưng "anh"). ✅ sửa hết → "chị Yamamoto", verify = 0 chỗ sai.
- **Mâu thuẫn "10 năm" — thực tế ~7 năm** (Ngọc 2026→2033). ~20 chỗ S32 t09-t12. ✅ sửa "10年/10 năm" → "7年/gần 7 năm".
- **永住権 logic sai** (cho nộp khi chỉ ~7 năm, luật cần ≥10 năm). ✅ sửa: Ngọc TÌM HIỂU điều kiện, biết cần thêm ~3 năm (đủ ~2036), đặt 永住 làm MỤC TIÊU TƯƠNG LAI — giữ kết mở hi vọng, đúng luật.

### Không phải lỗi (xác nhận)
- **Bà Sato (利用者) KHÔNG sống lại**: mất đúng S28 T10-11, không xuất hiện sau. Sato từ S30+ là nhân vật KHÁC (介護主任). Phân biệt rõ qua context.
- Tiến trình sự nghiệp TTS→特定技能→介護福祉士→リーダー→主任→ケアマネ: hợp lý, đúng hệ thống Nhật.
- Độ khó N4→N2 tăng dần: phù hợp.
- Glossary 6 file: thuật ngữ nhất quán (sau review đã đồng bộ 看取り/BPSD/在留資格「介護」).

### P2 (minor — chấp nhận hoặc đã xử lý kèm)
- S30 T3 "4 năm kinh nghiệm" (thực ~5 năm) — minor, trong ngữ cảnh đề cử chấp nhận được.
- Hai nhân vật tên Linh (S28 kohai vs S31 TTS mới) — không mâu thuẫn trực tiếp, là 2 người khác thời điểm.

## 3. Verify cuối (độc lập)
- "anh Yamamoto" toàn series = **0** ✅
- "10 năm/10年" sai (Ngọc) S32 = **0** ✅
- năm 2028/2023 sai S32 = **0** ✅
- 36 file S30-32: ruby cân bằng + không box-drawing ✅
- 永住権: chỉ "mục tiêu tương lai", không nộp trong truyện ✅ (đúng research risk Q2)

## Kết luận
Series Kaigo 6 sách (27→32, 72 chương, 856 tình huống) đã qua: viết → review JP/VN 3 bước → consistency check xuyên series → sửa toàn bộ P0/P1 → verify PASS. Glossary 6 sách đã review. Sẵn sàng để user duyệt.
