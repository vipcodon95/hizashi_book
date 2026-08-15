# Stage 8 — Finalize & Revision Log (Sách 49)

> Date: 2026-06-27
> Stage: Finalize (apply P0 fixes from Stage 5/6/7)
> Pipeline: LITE (dialogue-only, no SQL)

## Tổng quan

Pipeline LITE 8 stage hoàn tất:
- Stage 1 research → done
- Stage 2 outline (v2 sách kỹ năng) → done
- Stage 3 draft → skip (v2 viết thẳng từ outline)
- Stage 4 content (17 file, ~4400+ dòng) → done
- Stage 5 JP/VN review → done (9 fix tự áp dụng)
- Stage 6 consistency → done (A overall)
- Stage 7 council (3 subagents parallel) → done (A− / B+ / B+)
- Stage 8 finalize → done (7 P0 fix áp dụng)

## P0 fixes đã apply trong Stage 8

### Fix #1 — T10-S3 paternalism (Critical từ Domain Expert)
**File**: `t10_date_izakaya/t10_DateIzakaya_HoiThoai.md`
- L209 JP: `沙希さん守る方が業務より大事です` → `沙希さんが安心して仕事できる方が、僕の業務より大事です`
- L209 VN: "Bảo vệ em quan trọng hơn công việc" → "Em yên tâm làm việc, quan trọng hơn công việc của anh"
- L213 box "Vì sao thắng" updated: từ "câu serious-playful" → "công nhận agency cô (thay paternal `守る`)"
- L294 Mẫu câu cốt lõi updated
- T17 L225 (câu 98) updated cùng câu

**Lý do**: Domain expert flag micro-paternalism. Phụ nữ Nhật 27t leader 2026 cảnh giác với "đàn ông coi bảo vệ quan trọng hơn nghề của tôi". Câu mới nâng agency cô lên.

### Fix #2 — Bớt 2 câu philosophy aphorism Cường (Major từ Linguist)
**Files**: `t11_date_outdoor/t11_DateOutdoor_HoiThoai.md`, `t14_flirt_signals/t14_FlirtSignals_HoiThoai.md`, `t17_glossary/t17_Glossary.md`

- T11 L257: `終点があるから、途中が大事になる。` → `終点あるから、途中が一番大事じゃん。` (rút ngắn, thêm `じゃん` tone Gen Z)
- T11 L314 Mẫu câu cốt lõi updated
- T14 L61: `夜は便利。` → `夜って、こういう話しやすいから。` (thêm filler, ít aphorism)
- T14 L183 Mẫu câu cốt lõi updated
- T17 L239 (câu 109) updated
- T17 L247 (câu 114) updated

Giữ nguyên 3 câu philosophy giá trị nhất:
- `半分は雰囲気代` (T02)
- `真夜中の脳は、職業問わず近くなる` (T05)
- `月曜は小さくして向かうものです` (T05)

**Lý do**: Linguist flag Cường có 5-7 câu aphorism quá designed. Native sẽ nhận đây là "designed dialogue", không organic. Bớt 2 câu để giữ voice tự nhiên hơn.

### Fix #3 — Box warning T12 (Major từ Domain Expert)
**File**: `t12_handle_kidoku/t12_HandleKidoku_HoiThoai.md`

Thêm box warning ở "Bối cảnh chương":
> ⚠️ **Reality check trước khi đọc**: ~50-70% first message trên app KHÔNG có rep nào — đó là kết quả phổ biến NHẤT, không phải trường hợp đặc biệt. 4 scene chương này là các case **vẫn còn quan hệ để duy trì**. Trường hợp cô IM HOÀN TOÀN từ đầu cũng là 1 outcome lành mạnh — anh nhận, đi tiếp. Đừng đo benchmark sai từ sách.

**Lý do**: Domain expert flag sách thiếu chương "cô không reply" — pattern phổ biến nhất reality. Box warning rẻ + đỡ phải viết chương mới.

### Fix #4 — Chèn callback `データ取られてる` T14-S4 (Minor từ Consistency + Linguist)
**File**: `t14_flirt_signals/t14_FlirtSignals_HoiThoai.md`

Chuỗi mới (chèn 2 line callback):
```
Rina | また観察してる？
Cường | データ取りは、お互い様で。
Rina | お互い様、ずるい。
Cường | 看護師から学んだ言葉です。
```

**Lý do**: Khớp chain callback `データ取られてる` T06 → T08 → T14 (đã bị đứt ở T14 trước fix).

### Fix #5 — T13-S1 `即座に崩した` → `すぐ崩した` (Minor từ Linguist)
**Files**: `t13_keigo_to_tameguchi/t13_KeigoToTameguchi_HoiThoai.md`, `t17_glossary/t17_Glossary.md`

- T13 L42 + L146 Mẫu câu cốt lõi
- T17 L261 (câu 123) + L335 (câu 180)

**Lý do**: Sau khi đã tame口, dùng từ Sino-formal `即座に` lệch register. Native trẻ Tokyo: `すぐ`.

### Fix #6 — T15-S1 Aoi thêm filler (Minor từ Linguist)
**File**: `t15_kokuhaku/t15_Kokuhaku_HoiThoai.md`

L77 Aoi: `朝は世界の輪郭がはっきりする時間。` → `朝って、なんか、世界の輪郭がはっきりする時間な気がして。`

**Lý do**: Câu trước essay-feel quá tinh cho 22t spoken. Thêm filler `って、なんか、〜気がして` giảm văn-viết-feel.

### Fix #7 — Aoi T01 Omiai → with (Minor từ Domain Expert)
**File**: `t01_app_first_message/t01_AppFirstMessage_HoiThoai.md`

- L16 cast line: `Aoi (Omiai, văn chương)` → `Aoi (with, văn chương)`
- L75 Scene header: `Scene 4 · Aoi (with) · ... · văn chương + keigo nhẹ`
- L77 Setup desc: "Omiai = app nghiêm túc nhất, profile verified" → "with = app dùng tâm lý học match, hợp người đọc/suy nghĩ sâu"
- L90 box "Vì sao thắng": "Trên Omiai phải KEIGO" → "Trên with phải KEIGO, emoji rất ít"

Giữ nguyên L3 (mục tiêu liệt kê đủ 4 app) và L14 (nguyên tắc keigo).

**Lý do**: Domain expert flag Omiai đã rebrand 2025 (không còn strictly 婚活), Aoi 22t 文学部 Waseda 2026 không match Omiai user base. with phù hợp hơn (app tâm lý học match, dân trí thức).

## P0 fixes KHÔNG làm trong Stage 8 (post-MVP)

Các đề xuất Stage 7 cần effort lớn, ghi vào backlog cho ấn bản kế tiếp:

### Pedagogue post-MVP
1. **Chương 0 keigo primer** — dạy 30 câu keigo + 30 thuật ngữ app trước T01
2. **Active recall checkpoint** mỗi 4 chương (T04/T08/T12/T16)
3. **Đảo vị trí T13** sớm hơn — cần rewrite cấu trúc
4. **Phân tầng T17 200 câu** theo priority tier (Must-know 50 / Should-know 100 / Nice-to-know 50) + warning "advanced"
5. **Anki deck export** + audio TTS
6. **Diagnostic quiz** đầu sách
7. **Cô-route filter** (all-Yui, all-Aoi xuyên 16 chương)
8. **Audio dramatized** 1-2 scene/chương

### Domain post-MVP
1. **Chương mới "Khi cô không reply"** (vd t12.5) — pattern phổ biến nhất
2. **1 scene 告白 → cô im hoàn toàn / block** trong T15
3. **Note văn hoá visa/永住/長期計画** cho VN reader
4. **Voice call mention** (đang trending 2025-2026)
5. **Disclaimer LGBT/skinship** ở mở đầu
6. **Cập nhật slang 2025-2026**: bớt `ぴえん` (outdated 2024+), thêm `〜なんよ`, `推し活`-related
7. **Bổ sung Soseki alternatives cho Aoi**: 太宰治, 三島由紀夫, 川上未映子, 村田沙耶香

## Files đã edit trong Stage 5 + 8

| File | Stage 5 fixes | Stage 8 P0 fixes | Total edits |
|---|---|---|---|
| t01_app_first_message | 0 | 4 (Aoi Omiai→with) | 4 |
| t02_irl_makequen | 4 (Sharaku, お待たせ) | 0 | 4 |
| t04_smalltalk_hobby | 2 (grammar mẫu câu) | 0 | 2 |
| t05_smalltalk_work | 1 (vai logic) | 0 | 1 |
| t08_invite_date1 | 1 (format ngày) | 0 | 1 |
| t09_date_cafe | 1 (đúng phóc) | 0 | 1 |
| t10_date_izakaya | 0 | 3 (paternalism) | 3 |
| t11_date_outdoor | 0 | 2 (philosophy) | 2 |
| t12_handle_kidoku | 2 (Sharaku) | 1 (box warning) | 3 |
| t13_keigo_to_tameguchi | 0 | 2 (即座→すぐ) | 2 |
| t14_flirt_signals | 0 | 5 (callback + 夜は便利) | 5 |
| t15_kokuhaku | 0 | 1 (Aoi filler) | 1 |
| t17_glossary | 1 (grammar) | 5 (đồng nhất) | 6 |
| **TOTAL** | **12** | **23** | **35** |

## Verdict cuối

**Sách 49 đã ở mức XUẤT BẢN ĐƯỢC như MVP.**

- 17 file content + glossary đầy đủ
- 0 vi phạm 6 rule tuyệt đối (không nội tâm VN, không Hiếu, không furigana, cột `Vai`, format JP<br>VN, stage direction ngắn)
- Cường = クオン nhất quán 100%
- Stage 5 grade: A (~98% dialog OK từ đầu)
- Stage 6 grade: A (consistency, callback chain hoàn chỉnh)
- Stage 7 grades: A− (linguist) / B+ (pedagogue) / B+ (domain)
- Stage 8 đã apply 7 P0 fix gating

**Backlog cho phiên bản 2.0**: Pedagogue post-MVP (Anki, active recall, diagnostic) + Domain post-MVP (chương cô không reply, visa note, LGBT disclaimer).

**Kế hoạch publish gợi ý**:
1. Export EPUB qua `_shared/scripts/build_epub_combined.py` (đã có pipeline cho sách Hizashi)
2. Layout 15/85 column (cột `Vai` 15%, `Lời thoại` 85%) — đã có CSS pipeline
3. Bìa: dùng `BookCoverArt` palette tông cam/đỏ (chủ đề tán tỉnh)
4. ISBN/metadata: phía user quyết định
