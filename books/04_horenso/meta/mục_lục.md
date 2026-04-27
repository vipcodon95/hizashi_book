# Hizashi Sách 04 — Báo·Liên·Tham vấn / 報・連・相 — Mục lục 40 rules

*Hizashi Teams. 2026.*

Sách dạy 報告 (báo cáo) · 連絡 (liên lạc) · 相談 (tham vấn) — 3 trụ cột giao tiếp công việc Nhật. Đặc biệt critical cho offshore IT teams VN làm việc với khách Nhật.

**Đối tượng:** Dev/PM/BD VN đang làm offshore với Nhật, ôn BJT J3-J2 場面把握 + 表現読解.

---

## 🎬 Cast & Bối cảnh

Cast như sách 03, **bổ sung scenario mới**:

- **Em Linh (リン)** trở thành onboarding case study — Dũng mentor Hou-Ren-Sou cho Linh
- **Bug critical Phase 2** ở rule_31 — incident response live
- **Anh Hà (CTO)** active hơn — escalation path
- **Mới:** 田中 PMO (白鷗 PMO support) — tracking liên lạc qua Slack channel

---

## 📋 Cấu trúc 5 phần × 40 rules

| Phần | Tên | Số rule |
|------|-----|---------|
| I | 報告 (Hōkoku — Báo cáo) | 12 |
| II | 連絡 (Renraku — Liên lạc) | 9 |
| III | 相談 (Sōdan — Tham vấn) | 9 |
| IV | Hou-Ren-Sou trong tình huống đặc biệt | 6 |
| V | Tools + Best Practice | 4 |

---

## Phần I — 報告 (Hōkoku — Báo cáo) — 12 rules

| # | Tên VN | Tên JP | Brief |
|---|--------|--------|-------|
| 01 | 3 nguyên tắc báo cáo | 報告の3原則 | (1) Kết luận trước, (2) Fact vs Opinion, (3) Kịp thời. |
| 02 | Format báo cáo tiến độ daily/weekly | 進捗報告のフォーマット | Bố cục: Done / Doing / Blocked / Next. [TEMPLATE: report] |
| 03 | Cấu trúc báo cáo kết quả | 結果報告の組み立て | Goal → Result → Cause → Action |
| 04 | Báo cáo trung gian (interim) | 中間報告 | Khi việc dài: chia mốc 25/50/75% mỗi mốc 1 update |
| 05 | Báo cáo hoàn thành | 完了報告 | Output → Confirm acceptance → Lessons learned. [TEMPLATE: report] |
| 06 | Báo cáo có số liệu | 数字を使った報告 | KPI dashboard, % change, before/after |
| 07 | Báo cáo tin xấu | 悪い知らせの報告 | Predict → Fact → Impact → Plan → Ask. [TEMPLATE: report] |
| 08 | Cách viết 報告書 (formal document) | 報告書の書き方 | Standard structure JP business document. [TEMPLATE: report] |
| 09 | Báo cáo miệng vs văn bản | 口頭報告 vs 書面報告 | Khi nào dùng cái nào |
| 10 | Báo cáo trong 朝礼 (morning standup) | 朝礼での報告 | 30-60 giây gọn |
| 11 | Báo cáo cho khách hàng quan trọng | 重要顧客への報告 | Tone formal cao, no jargon |
| 12 | Checklist phòng ngừa thiếu báo cáo | 報告漏れ防止 | Self-check list + dashboard. [TEMPLATE: checklist] |

---

## Phần II — 連絡 (Renraku — Liên lạc) — 9 rules

| # | Tên VN | Tên JP | Brief |
|---|--------|--------|-------|
| 13 | Nguyên tắc liên lạc tức thì | 連絡の即時性 | "Information delayed = information wrong" |
| 14 | Cấu trúc liên lạc broadcast (cho cả team) | 全員に届く連絡 | TL;DR đầu, detail sau, action item rõ |
| 15 | Chọn channel: chat / mail / phone | チャネル選択 | Decision matrix theo urgency × audience size |
| 16 | Slack channel etiquette | Slack マナー | @here / @channel / threads / DM khi nào |
| 17 | Liên lạc khẩn cấp + thứ tự ưu tiên | 緊急連絡の優先順位 | Critical bug → CTO trực tiếp; Sales → Sales head |
| 18 | Báo dời lịch | スケジュール変更連絡 | Cấu trúc 5W1H + alternative. [TEMPLATE: email_invite] |
| 19 | Báo vắng (休暇 / 病欠) | 不在連絡 | 24h trước, ai cover, return date |
| 20 | Báo công tác | 出張連絡 | Trước 1 tuần, agenda + deliverables + reachable |
| 21 | Liên lạc cross-timezone (VN-JP) | 海外チームへの時差連絡 | UTC time, async expectations, daily handoff |

---

## Phần III — 相談 (Sōdan — Tham vấn) — 9 rules

| # | Tên VN | Tên JP | Brief |
|---|--------|--------|-------|
| 22 | Khi nào cần tham vấn vs tự quyết | 相談 vs 自己決定 | Decision tree theo impact + reversibility |
| 23 | Chuẩn bị trước khi tham vấn | 相談前の準備 | 5W1H tình huống + 3 case + 仮説 (giả thuyết) |
| 24 | Cách mở lời tham vấn cấp trên | 上司への切り出し | "ご相談したいことがあるのですが、今お時間よろしいでしょうか?" |
| 25 | Hỏi judgment material thay vì hỏi đáp án | 答えより判断材料 | "Em đang nghĩ A và B, anh thấy thế nào?" |
| 26 | Mang sẵn nhiều phương án | 複数案を持参 | Tối thiểu 2-3 options + đánh giá pros/cons |
| 27 | Lưu log tham vấn | 相談ログ | Decision register: ngày / vấn đề / phương án chọn / lý do. [TEMPLATE: report] |
| 28 | Khi mình là người được tham vấn | 相談を受ける側 | Dũng mentor Linh — coaching mindset |
| 29 | Tham vấn với khách | 客先への相談 | "ご相談させていただけますでしょうか" tone |
| 30 | Mang về tham vấn (持ち帰り) | 持ち帰り相談 | Cross-ref sách 03 rule_25/32 |

---

## Phần IV — Hou-Ren-Sou trong tình huống đặc biệt — 6 rules

| # | Tên VN | Tên JP | Brief |
|---|--------|--------|-------|
| 31 | Phát hiện bug — Hou-Ren-Sou flow | バグ発見時 | Detect → Tuấn → Hà CTO → Matsumoto. Thời gian limit per step |
| 32 | Khi khách phàn nàn — escalation | クレームのエスカレーション | Junior nhận → Senior verify → Solution proposal |
| 33 | Báo nghỉ việc / nghỉ dài hạn | 退職・休暇のホウレンソウ | Notice timing, handover plan, documentation |
| 34 | Mentoring Hou-Ren-Sou cho junior mới | 新人指導 | Dũng mentor Linh: 1-on-1 weekly + Slack hour |
| 35 | Hou-Ren-Sou khi work-from-home | リモートワーク時 | Daily standup, status visibility, end-of-day log |
| 36 | Bridging gap VN-JP HouRenSou | VN-JP オフショア・ギャップ | VN có xu hướng "less = better"; Nhật ngược lại. Adapt |

---

## Phần V — Tools + Best Practice — 4 rules

| # | Tên VN | Tên JP | Brief |
|---|--------|--------|-------|
| 37 | Slack / Notion / Email — chọn đúng | ツール選択 | Decision matrix |
| 38 | Self-diagnostic Hou-Ren-Sou | 自己診断 | 15-item checklist tự chấm. [TEMPLATE: checklist] |
| 39 | Xây dựng team culture Hou-Ren-Sou | チーム文化作り | Team-level playbook: rituals, dashboards, OKR. [TEMPLATE: report] |
| 40 | Reflection + cải tiến | 振り返りと改善 | Weekly retrospective format. [TEMPLATE: checklist] |

---

## 📚 Phụ lục dự kiến

- **A** — Script template (key_phrases tổng hợp)
- **B** — Vocab tổng hợp (~150-180 từ unique)
- **C** — BJT practice tổng hợp (40 câu, J5-J2)
- **D** — Templates tổng hợp (~10 template: report, checklist, email_invite)

---

## 🎯 BJT Skill coverage

| Skill | Số câu | Ghi chú |
|-------|--------|---------|
| 場面把握 | 25 | Phần I, II, IV |
| 表現読解 | 12 | Phần II, III |
| 発言聴解 | 3 | Phần III, IV (escalation/incident dialog) |

---

## 🔗 Cross-reference với sách 01-03

- **Sách 01 (Email)**: rule 02 (mời họp) ↔ rule 18 sách 04
- **Sách 02 (Phone)**: rule 14 (5W1H メモ) ↔ rule 23 sách 04 (chuẩn bị tham vấn)
- **Sách 03 (Họp)**: rule 25 (持ち帰り検討), rule 32 (持ち帰り) ↔ rule 30 sách 04

---

## 📐 Format đặc thù sách 04

- Schema v3 (giống sách 03)
- ~11 templates dự kiến
- Phụ lục D auto-gen từ `templates[]`

---

*Mục lục v1 — 2026-04-25.*
