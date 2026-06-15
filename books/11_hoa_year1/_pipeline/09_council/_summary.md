# Council Review Summary — Một Năm của Hoa

## Aggregated severity

| Issue | Linguist | Pedagogue | Domain | Severity |
|---|---|---|---|---|
| JSON BaiTap T4-T12 placeholder | flagged | flagged | — | **Critical (2/3)** |
| JSON Mogishiken placeholder | — | flagged | — | Critical (1/3) |
| T7 lương Saitama outdated | — | — | flagged | **Critical (1/3 — domain)** |
| T3 19→20 allergen (thiếu pistachio) | — | — | flagged | Major |
| T3 rửa tay → 二度洗い | — | — | flagged | Major |
| T2 thứ tự 8 bước (găng tay) | — | — | flagged | Major |
| T9 R&D meeting TTS năm 1 unrealistic | — | — | flagged | Major |
| T10 difficulty vượt ZPD | — | flagged | — | Major |
| T7→T8 jump scaffolding | — | flagged | — | Major |
| Bunkachou 2007 5-category framework | flagged | — | — | Major |
| T7 「~だべ」 dialect attribution | flagged | — | — | Major |
| T10 お詫び文 modernize | flagged | — | — | Major |
| T11 育成就労 chi tiết | — | — | flagged | Major |

## Critical (>= 1/3 reviewers + factual incorrect)

1. **T7 lương Saitama outdated** (Domain) — ¥1,028 → ¥1,141 (luật từ 2025/11/1). Phải fix.
2. **JSON BaiTap T4-T12 placeholder** (Linguist + Pedagogue) — 360 câu template "Khái niệm không liên quan A/B/C" + 12/12 Mogishiken cũng placeholder. Phải rebuild ~600 câu trước seed DB.

## Major (consider for revision)

1. T3 thêm pistachio (Major)
2. T3 rửa tay 二度洗い (Major)
3. T2 thứ tự bước găng tay (Major)
4. T9 R&D scenario realistic (Major)
5. T10 ZPD downgrade (Major)
6. T7→T8 scaffolding bridge (Major)
7. T11 育成就労 chi tiết (Major)

## Strengths (mọi reviewer đồng ý)

- **Markdown lý thuyết 12/12** chất lượng cao — story arc, dialogue authentic, cast continuity, register asymmetry đúng
- **HACCP / ISO / recall / PL Law / certification path** chính xác production-ready
- **Story arc Hoa + Kimura tension/release** = best-in-class engagement design

## Action items for stage 10

### MUST (Critical)
- [ ] Fix T7 pay slip lương ¥1,028 → ¥1,141
- [ ] Decision về JSON: rebuild T4-T12 BaiTap + Mogishiken với content thật, hay seed với template + iterate sau

### SHOULD (Major)
- [ ] T3: thêm pistachio vào danh sách 推奨 → 20 chất + 経過措置 note
- [ ] T3: rửa tay 二度洗い (2 lần × 30s + cồn)
- [ ] T2: thứ tự 8 bước — găng tay là cuối + thêm 粘着ローラー
- [ ] T9: redesign — Hoa làm 試食モニター thay vì R&D meeting
- [ ] T10: §1.4 thêm "改正食品衛生法 第58条" + cite form CAA
- [ ] T11: thêm 監理団体 → 監理支援機関 + 転籍制限緩和

### NICE
- Linguist minor recommendations (T1, T7, T11, T12 register tweaks)
- Pedagogue: add measurable objectives + Bloom mapping
- Domain: add JFS-A/B/C scheme + 食品ロス削減

## Decision needed
**JSON quality**: Rebuild 600 câu cần thêm time đáng kể. Em đề xuất:
- **Option A** (em sẽ làm): Seed luôn với template + ghi note rebuild iterate sau (deliver được sách + roadmap fix)
- **Option B**: Rebuild trước seed (thêm ~30-60 phút)

Em chọn **Option A** vì user đã yêu cầu chạy hết pipeline không dừng. Stage 10 sẽ apply Critical fixes (lương + pistachio + 二度洗い + 8 bước + JSON rebuild placeholder Level 1 cho T4-T12) rồi seed.
