# Rule 37 — Slack / Notion / Email — chọn đúng / ツール選択

> **Luận điểm.** 3 channel chính có **mục đích khác nhau**, không thay thế cho nhau. Cài đúng tool theo trục **Urgency × Audience size × Persistence (cần lưu lâu không?)**. Ad-hoc gửi sai channel = info bay (chỉ Slack thì 1 tuần search không ra) hoặc spam (gửi mail cho 1 câu hỏi 30 giây). Decision matrix sau cho người VN-JP làm việc với khách Nhật.
>
> 3チャネル使い分け: Slack (即時×小規模×低保存)、Notion (低時×中大規模×高保存)、Email (低時×外部×証跡として高保存)。誤投稿は情報消失または spam。
>
> **Liên quan:** rule 13 (即時性), rule 15 (チャネル選択), rule 16 (Slack マナー).

---

## Bối cảnh / 場面

Anh Tanaka PMO (Hakuō) gửi Slack DM hỏi 4 việc khác nhau cho Dũng. Dũng cần biết mỗi cái dùng channel nào.

---

## ❌ Hội thoại XẤU — gửi tất cả qua Slack

*Slack DM · Slack thread, dài*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「ズンさん、4点ご相談です:① Phase3 公式提案書、②本日の Phase2 障害 ETA、③契約書改定案 v3、④来週水曜 14時の会議候補。」 |
| **ズン** | 「① はい、提案書はこちらです [PDF添付20MB] / ② ETA は今 15:30 / ③ 契約書改定案は… (3000文字) / ④ 14時OKです」 |
| **田中PMO** | 「ズンさん、② 以外は Slack で扱うべきではない題材です。① は **正式メール+提案書添付**、③ は **Notion 共同編集**、④ は **Outlook 招待**です。今 Slack に 20MB PDF 投稿されたら、検索もダウンロードも非効率です。」 |

**Vì sao xấu:** L2 trộn 4 loại business khác nhau qua 1 channel. Slack không phải repo file lớn, không phải email formal, không phải doc collaboration.

---

## ✅ Hội thoại TỐT — chọn đúng tool theo từng item

*Slack DM · Slack reply · 15:25 Slack · 17:50 メール · 18:05 Slack · 18:15 Outlook*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「ズンさん、4点ご相談です:① Phase3 公式提案書、②本日の Phase2 障害 ETA、③契約書改定案 v3、④来週水曜 14時の会議候補。」 |
| **ズン** | 「田中様、4点それぞれ最適な手段で対応いたします【1】:**① 提案書 → 本日18時までに正式メールで送付**(松本様CC)/**② ETA → 今 Slack で即答: 15:30 復旧見込み**【2】/**③ 契約書改定 → Notion ページで共有**(編集権付与済URL)【3】/**④ 会議候補 → 別途 Outlook 招待を送付**【4】。」 |
| **田中PMO** | 「整理ありがとうございます。Slack で全部やられると煩雑だったので助かります。」 |
| **ズン** | 「**②即答** ETA: rollback 15:30 完了、復旧確認 15:45 見込み。」 |
| **ズン** | 「件名: 【ご提案】Phase 3 拡張開発のご提案書送付の件 ... [PDF添付6MB]」 |
| **ズン** | 「**③Notion** 契約書改定案 v3 を Notion で共有しました: <URL> 編集権あり、コメント歓迎です。」 |
| **ズン** | 「**④Invite** Phase 3 進捗会議 4/29(水) 14:00-15:00 JST」 |

📝 **Ghi chú:**
- 【1】**「4点それぞれ最適な手段で」** — tuyên bố trước khi action. Anh Tanaka biết Dũng đã phân loại.
- 【2】**Slack giữ ② ETA** — đúng use case: urgent + small + ngắn hạn.
- 【3】**Notion cho ③ 契約書** — collaborative editing + version history. Mail thì hỏng vì có 5 round update.
- 【4】**Outlook (calendar invite) cho ④ 会議候補** — calendar events cần ICS file, accept/decline tracking. Slack không track được.

---

## 🎯 Decision Matrix

| Tool | Urgency | Audience | Persistence | Đúng cho |
|------|---------|----------|-------------|---------|
| **Slack** | High | Small (1-10) | Low (~30 ngày search) | ETA, blocker, daily standup, 雑談 |
| **Notion / Confluence** | Low | Medium-Large | High (forever) | Spec, contract draft, runbook, DR, OKR |
| **Email** | Low-Mid | External (client) | High (legal evidence) | 公式提案、契約、リスケ依頼、悪い知らせ |
| **Outlook / GCal invite** | — | Attendees | (event level) | 会議招待 + ICS 付き |
| **Phone / Zoom** | High emergency | 1-3 | None (memo cần có) | Sev1 incident escalation, sensitive |

---

## 🚦 Quick rules

```
□ File > 5MB        → KHÔNG Slack. Notion / Email + Drive link
□ Câu hỏi yes/no    → Slack OK
□ 公式 (khách)      → Email OR Notion link, KHÔNG Slack thuần
□ Cần 5+ người edit → Notion. KHÔNG email reply-all
□ 緊急 / Sev1       → Slack #incident + tag, không email/Notion
□ Calendar event    → Outlook/GCal invite. Slack chỉ remind
□ Legal / 契約      → Email + lưu PDF + DR entry. KHÔNG Slack
```

---

## 🎯 Câu chốt

> **「Slack=即時小規模、Notion=共同編集と保存、Email=外部公式と証跡。1つの会話で4題材が混じる時は4チャネルに分割。」**

---

## ⚠ Tránh

- 20MB PDF lên Slack → 1 tuần là search không ra.
- 公式 proposal qua Slack — khách Nhật coi là không nghiêm túc.
- 契約書 nhồi Notion comments với mail reply-all chéo nhau → version chaos.
- Calendar event qua Slack thuần — không track accept/decline được.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ツール選択 | tool せんたく | Chọn tool |
| 即時性 | そくじせい | Tính tức thì |
| 共同編集 | きょうどうへんしゅう | Cộng tác chỉnh sửa |
| 証跡 | しょうせき | Bằng chứng / vết tích |
| 添付 | てんぷ | Đính kèm |
| 招待 | しょうたい | Mời (calendar invite) |
| 編集権 | へんしゅうけん | Quyền chỉnh sửa |
| 検索 | けんさく | Search |
| 改定案 | かいていあん | Bản sửa đổi |
