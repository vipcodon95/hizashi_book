# Rule 49 — Tracking decisions trong CRM / 決定事項の社内管理

> **Luận điểm.** Decisions từ họp PHẢI lưu vào hệ thống nội bộ (Notion/Slack/CRM) trong **48h** với 4 trường: **(1) Decision**, **(2) Source meeting + date**, **(3) Owner**, **(4) Status (open/closed)**. Mục đích: có thể tra cứu cho audit + tiếp nhận nhân viên mới + tránh "đã quyết rồi vẫn cãi lại".
>
> 決定事項は48時間以内にNotion/CRMに記録：①decision ②会議源 ③owner ④status の4フィールド。
>
> **Liên quan:** Rule 31 (quyết định), Rule 45 (biên bản), Rule 50 (self-reflection).

---

## Bối cảnh / 場面

3 tuần sau buổi đàm phán phase 2, có thành viên dev mới gia nhập. Hỏi "scope phase 2 chốt thế nào?". Em Dũng cần chỉ tới record trong CRM.

---

## ❌ Hội thoại XẤU — biên bản đâu đó trong email

| Vai | Câu |
|---------|-----|
| **新人** | 「ズンさん、Phase 2 のスコープって<ruby>最終的<rt>さいしゅうてき</rt></ruby>にどう<ruby>決<rt>き</rt></ruby>まったんですか？」 |
|  | *Anh Dũng, scope phase 2 cuối cùng quyết thế nào ạ?* |
| **ズン** | 「えーと、メールどこかに<ruby>議事録<rt>ぎじろく</rt></ruby>あったはず…」 *(15 phút tìm kiếm)* |
|  | *Ơ... biên bản có ở đâu đó trong email rồi...* |
| **新人** | 「…」 |
|  | *(...)* |

**Vì sao xấu:** Decision không có "single source of truth". Mỗi lần ai hỏi → tìm trong email → mất 15 phút. Quy trình tiếp nhận nhân viên mới kém hiệu quả.

---

## ✅ Quy trình TỐT — Notion record

*Notion table · thấy record*

| Vai | Câu |
|---------|-----|
| **新人** | 「ズンさん、Phase 2 のスコープって<ruby>最終的<rt>さいしゅうてき</rt></ruby>にどう<ruby>決<rt>き</rt></ruby>まったんですか？」 |
|  | *Anh Dũng, scope phase 2 cuối cùng quyết thế nào ạ?* |
| **ズン** | 「Notion の『<ruby>決定事項<rt>けっていじこう</rt></ruby><ruby>一覧<rt>いちらん</rt></ruby>』に<ruby>記録<rt>きろく</rt></ruby>があります。リンク<ruby>送<rt>おく</rt></ruby>りますね【1】。」 |
|  | *Có record trong Notion 'Decisions list' đấy. Anh gửi link nhé.* |
| **新人** | 「あ、4/28<ruby>会議<rt>かいぎ</rt></ruby>で A 案<ruby>確定<rt>かくてい</rt></ruby>、ownerはトゥアンリーダー、status: closed って<ruby>書<rt>か</rt></ruby>いてありますね。<ruby>明確<rt>めいかく</rt></ruby>で<ruby>助<rt>たす</rt></ruby>かります。」 |
|  | *À, ghi rõ 'họp 28/4 chốt phương án A, owner Tuấn, status: closed'. Rõ ràng quá, em đỡ rồi.* |

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
- 【1】**Single source of truth** — 1 link Notion thay vì phải lục tung email.
- **Status:** open (chưa làm) / in-progress / closed.
- **Related issues** — link decisions phụ thuộc lẫn nhau.

---

## 🎯 Câu chốt

> **48h. 4 fields. 1 source of truth. Searchable.**

---

## ⚠ Tránh

- Decision chỉ trong biên bản email → mất khả năng tra cứu.
- Không có owner → trách nhiệm bị chia mơ hồ.
- Không có status → không biết decision còn hiệu lực không.
- Quên cập nhật khi decision bị phủ quyết sau này.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 決定事項 | けっていじこう | Item đã quyết |
| 社内管理 | しゃないかんり | Quản lý nội bộ |
| 一覧 | いちらん | Danh sách / list |
| 記録 | きろく | Ghi chép / record |
| 追跡 | ついせき | Track / theo dõi |
