# Rule 39 — Xây dựng team culture Hou-Ren-Sou / チーム文化作り

> **Luận điểm.** Hou-Ren-Sou cá nhân ≠ Hou-Ren-Sou team. Mỗi cá nhân tốt nhưng team không có **chung playbook** thì khách Nhật vẫn cảm nhận "không nhất quán". Team-level cần **5 thành phần playbook**: **(1) Rituals fixed** (daily standup 9:30, weekly retro thứ Sáu, monthly all-hands), **(2) Dashboard URL** (single source for status — Notion / Confluence link), **(3) OKR / KPI Hou-Ren-Sou** (vd: response SLA 95%, no missed Sev1 escalation, DR coverage 100%), **(4) Escalation matrix** (ai escalate ai khi nào), **(5) Onboarding** (rule 34 nhân lên cấp team). Team Lead (Hà CTO + Hương) là culture sponsor.
>
> チーム文化5要素：①Rituals (朝会9:30、週次retro、月次all-hands)②Dashboard URL ③OKR (response SLA 95%、Sev1 escalation 漏れ0、DR coverage 100%)④Escalation matrix ⑤Onboarding playbook。
>
> **Liên quan:** rule 27 (DR), rule 34 (新人指導), rule 38 (自己診断), rule 40 (振り返り).

---

## Bối cảnh / 場面

Cuộc họp leadership ティエンファット tháng 4. Anh Hà CTO + chị Hương + Tuấn nhận thấy mỗi member tốt cá nhân nhưng cả team chưa nhất quán → quyết định write playbook.

---

## ❌ Hội thoại XẤU — không có playbook chung

| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「松本様から feedback : 『ティエンファット は人によって対応 quality が違う』。ズン と ハイ で同じ Phase 2 の話なのに、片方は丁寧、片方は雑。」 |
| **フオン** | 「個人レベルでは皆 rule を知っている。でも team レベルの **共通 playbook がない**から、新人が真似する基準もブレる。」 |
| **トゥアン** | 「Slack の標準 format も人によって違うし、escalation も case-by-case。これは個人の問題じゃなくて **チーム文化の欠如**。」 |
| **ハーCTO** | 「playbook を作ろう。私と フオン が culture sponsor、トゥアン が tech ritual owner。来週中に v1 ドラフト。」 |

**Vì sao xấu:** L1 inconsistent quality của team là biểu hiện. L2-L3 rút ra: thiếu **common playbook**.

---

## ✅ Hội thoại TỐT — playbook 5 thành phần được build

*2週間後 leadership 会議*

| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ティエンファット Hou-Ren-Sou Playbook v1 を共有します。**5要素構成**【1】です。」 |
| **ハーCTO** | 「**①Rituals**: 朝会 Slack 9:30 (DDBN format)、週次 retro 金曜 16:00、月次 all-hands 第1月曜 10:00。**②Dashboard**: Notion『チーム Hou-Ren-Sou ダッシュボード』<URL>に response SLA、Sev1 件数、DR 数を可視化【2】。」 |
| **ハーCTO** | 「**③OKR Q2-2026**: (a) Slack 客先 response 1h 以内 95% / (b) Sev1 escalation 漏れ 0件 / (c) Decision Register カバレッジ 100% (1相談1行) / (d) 自己診断 C-D ≤ 1 が team 平均【3】。」 |
| **ハーCTO** | 「**④Escalation Matrix**: 客先 → BD owner → フオン副部長 → ハー CTO / 技術 Sev1 → 検知者 → トゥアン → ハー CTO / 経理 → ロアン経理部長 → フオン。**⑤Onboarding**: 新人入社後30日で Playbook 全項目に exposure、60日で自己診断初回、90日で1人立ち。」 |
| **フオン** | 「culture sponsor として: 月次 all-hands で『今月の Good ホウレンソウ』『今月の Lesson』を Slack 投票で選び、HR の評価にも反映させましょう【4】。」 |
| **トゥアン** | 「Tech ritual owner として: 朝会と Sev1 escalation drill を四半期ごとに simulation。来週から運用開始。」 |

📝 **Ghi chú:**
- 【1】**「5要素構成」** — playbook không phải doc dài 50 trang. 5 thành phần modular.
- 【2】**Dashboard URL** — single source of truth. Tránh "tôi nghĩ" / "tôi nhớ".
- 【3】**OKR đo lường được** — không "improve communication" mơ hồ mà "95% in 1h".
- 【4】**「HR の評価にも反映」** — biến culture thành performance metric. Không reward = không scale.

---

## 🎯 Câu chốt

> **「Hou-Ren-Sou is a team sport. Playbook 5要素 (Rituals + Dashboard + OKR + Escalation + Onboarding) を持って初めて、quality が個人差に左右されない。Leader が culture sponsor。」**

---

## ⚠ Tránh

- Playbook 50 trang doc mà không ai đọc — phải 1-page summary + dashboard.
- OKR mơ hồ kiểu 「コミュニケーション改善」 — không đo được = không tồn tại.
- Escalation matrix không update khi cơ cấu thay đổi (vd: Hải sabbatical) — fail trong moment quan trọng.
- Culture sponsor không có time commitment → playbook chết.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| チーム文化 | チームぶんか | Văn hóa team |
| プレイブック | playbook | Playbook |
| Rituals | rituals | Nghi thức / quy trình lặp |
| ダッシュボード | dashboard | Dashboard |
| OKR | OKR | OKR |
| エスカレーション | escalation | Escalate |
| カバレッジ | coverage | Tỉ lệ phủ |
| 文化醸成 | ぶんかじょうせい | Nuôi dưỡng văn hóa |
| 1人立ち | ひとりだち | Tự đứng (hoạt động độc lập) |
