# Rule 16 — Slack channel etiquette / Slack マナー

> **Luận điểm.** Slack với khách Nhật có manner riêng. **@here / @channel / threads / DM** mỗi cái có context. Lạm dụng @channel = mất thiện cảm. Không dùng thread = channel ngập nhiễu. DM thay vì #channel = team không biết.
>
> Slack マナー4本柱：①@here は active な人だけ通知、②@channel は緊急時のみ、③ threads で文脈分離、④ team-level は #channel、private は DM。
>
> **Liên quan:** rule 14 (broadcast), rule 15 (channel), rule 21 (cross-timezone).

---

## Bối cảnh / 場面

Em Dũng vào Slack workspace chung với khách Hakuō. 田中 PMO (anh Tanaka) là người track Slack từ phía khách. Lần đầu Dũng dùng @channel cho việc thường + spam main channel. Anh Tanaka góp ý lịch sự.

---

## ❌ Hội thoại XẤU — abuse @channel + không dùng thread

*Slack #phase3, 23:30 thứ 6 · 8:15 thứ 7 sáng*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**@channel** リンク確認お願いします。https://docs.../spec_v3」 |
| **田中PMO** | 「ズンさん、おはようございます。お疲れ様です。@channel は **本番障害など緊急時のみ** 使う運用ルールがございます【1】。今回は @here、または特定メンバーへのメンションが適切かと存じます。」 |
| **田中PMO** | 「また、関連投稿は **スレッド化** いただけますと、main channel が読みやすくなります【2】。」 |
| **ズン** | 「申し訳ございません。今後 @channel は緊急時のみ使用し、関連は thread にいたします。」 |

**Vì sao xấu:** L1 (1) @channel 23:30 → ping cả 30 người (mặc dù DnD), (2) không thread → 5 reply tiếp theo ngập #phase3.

---

## ✅ Hội thoại TỐT — đúng manner

*Slack #phase3, 14:00 · thread reply · thread reply · thread reply · 15:30, thread*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**@here** Phase 3 仕様書 v3 をアップロードしました。本日中にご確認をお願いいたします【1】。https://docs.../spec_v3」 |
| **田中PMO** | 「確認いたします。」 |
| **トゥアン** | 「セクション3に質問あります、後ほど DM します。」 |
| **ズン** | 「@トゥアン お待ちしております。」 |
| **田中PMO** | 「v3 確認完了。承認します。」 |

📝 **Ghi chú:**
- 【1】**「@here」** — chỉ ping người đang online. Không phá DnD/giờ riêng.
- 【2】Tất cả reply trong thread → main channel sạch.
- Thread giữ context — sau này tìm "v3 spec discussion" 1 chỗ.

---

## Slack manner 4 trụ cột

| Tag / Pattern | Khi nào | Ai bị ping |
|---|---|---|
| **@channel** | Critical / production-down / quyết định toàn team | Tất cả member (kể cả offline) — dè dặt |
| **@here** | Cần phản hồi trong giờ làm hôm nay | Chỉ người đang online |
| **@username** | 1 người cụ thể, không cần ping cả channel | Chỉ user đó |
| **Thread (スレッド)** | Reply / discussion follow up | Trong thread |
| **DM** | Private / ngoài context channel | 1 người |

**Giờ Nhật làm việc:** 9-18 JST. Sau 18h = không @here trừ khẩn cấp. 23h+ = không @channel cả khi khẩn (dùng phone).

---

## 🎯 Câu chốt

> **「@channel = critical only / @here = active only / thread = context retain / DM = private only」**

---

## ⚠ Tránh

- @channel cho announcement định kỳ — abuse → người mute → mất hiệu lực.
- Reply trong main channel thay vì thread — channel ngập, người mới scroll mất context.
- DM cho việc team-level — team không biết, sau lại làm trùng.
- @here / @channel ngoài giờ làm — phá DnD, mất thiện cảm với khách Nhật.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 運用ルール | うんようルール | Quy tắc vận hành |
| 緊急時 | きんきゅうじ | Khi khẩn cấp |
| 本番障害 | ほんばんしょうがい | Sự cố production |
| メンション | menshon | Mention |
| スレッド | sureddo | Thread |
| 関連投稿 | かんれんとうこう | Bài đăng liên quan |
| 拝見 | はいけん | Xem (khiêm) |
| 承認 | しょうにん | Phê duyệt |
