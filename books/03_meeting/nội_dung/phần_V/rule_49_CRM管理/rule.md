# Rule 49 — Tracking decisions trong CRM / 決定事項の社内管理

> **Luận điểm.** Decisions từ họp PHẢI lưu vào hệ thống nội bộ (Notion/Slack/CRM) trong **48h** với 4 trường: **(1) Decision**, **(2) Source meeting + date**, **(3) Owner**, **(4) Status (open/closed)**. Mục đích: traceable cho audit + onboarding nhân viên mới + tránh "đã quyết rồi vẫn cãi lại".
>
> 決定事項は48時間以内にNotion/CRMに記録：①decision ②会議源 ③owner ④status の4フィールド。
>
> **Liên quan:** Rule 31 (quyết định), Rule 45 (biên bản), Rule 50 (self-reflection).

---

## Bối cảnh / 場面

3 tuần sau buổi đàm phán phase 2, có thành viên dev mới onboard. Hỏi "scope phase 2 chốt thế nào?". Em Dũng cần chỉ tới CRM record.

---

## ❌ Hội thoại XẤU — biên bản đâu đó trong email

| Speaker | Câu |
|---------|-----|
| **新人** | 「ズンさん、Phase 2 のスコープって最終的にどう決まったんですか？」 |
| **ズン** | 「えーと、メールどこかに議事録あったはず…」 *(15 phút search)* |
| **新人** | 「…」 |

**Vì sao xấu:** Decision không có "single source of truth". Mỗi lần ai hỏi → search email → mất 15 phút. Onboarding inefficient.

---

## ✅ Quy trình TỐT — Notion record

*Notion table · thấy record*

| Speaker | Câu |
|---------|-----|
| **新人** | 「ズンさん、Phase 2 のスコープって最終的にどう決まったんですか？」 |
| **ズン** | 「Notion の『決定事項一覧』に記録があります。リンク送りますね【1】。」 |
| **新人** | 「あ、4/28会議で A 案確定、ownerはトゥアンリーダー、status: closed って書いてありますね。明確で助かります。」 |

📐 **CRM/Notion record format:**

| Field | Example |
|---|---|
| Decision | Phase 2 scope = A 案 (優先度高機能のみ) |
| Source | 4月度月例会議 (2026-04-28) — 議事録 link |
| Owner | トゥアンリーダー |
| Status | closed |
| Related issues | QA体制 (open), 予算値引き率 (open) |
| Last updated | 2026-04-28 by ズン |

📝 **Ghi chú:**
- 【1】**Single source of truth** — 1 link Notion thay vì email scavenger hunt.
- **Status:** open (chưa làm) / in-progress / closed.
- **Related issues** — link decisions phụ thuộc lẫn nhau.

---

## 🎯 Câu chốt

> **48h. 4 fields. 1 source of truth. Searchable.**

---

## ⚠ Tránh

- Decision chỉ trong biên bản email → mất khả năng search.
- Không có owner → trách nhiệm bị share.
- Không có status → không biết decision còn live không.
- Quên update khi decision bị overrule sau này.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 決定事項 | けっていじこう | Item đã quyết |
| 社内管理 | しゃないかんり | Quản lý nội bộ |
| 一覧 | いちらん | Danh sách / list |
| 記録 | きろく | Ghi chép / record |
| 追跡 | ついせき | Track / theo dõi |
