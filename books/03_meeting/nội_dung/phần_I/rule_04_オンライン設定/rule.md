# Rule 04 — Setup video call (Zoom/Teams) / オンライン会議のセットアップ

> **Luận điểm.** Online meeting fail thường ở 5 điểm: (1) link sai/expire, (2) audio không nghe, (3) share screen không thấy, (4) background lộ thông tin nội bộ, (5) ghi âm chưa xin phép. Mỗi mục test trước họp 30 phút.
>
> オンライン会議のチェック5項目：①リンク有効性 ②音声 ③画面共有 ④背景 ⑤録画許可。30分前にテスト必須。
>
> **Liên quan:** Rule 03 (offline setup), Rule 33 (mute/unmute mid-meeting), Rule 35 (line drop), Rule 36 (画面共有).

---

## Bối cảnh / 場面

Buổi họp với 白鷗 chuyển sang Zoom vì 大垣営業部長 đi công tác Osaka. Em Hải (DevOps) phụ Dũng setup. Hải biết tech nhưng chưa quen flow business JP nên Dũng nhắc thêm.

---

## ❌ Hội thoại XẤU — không test trước

*họp bắt đầu 1 phút trước · panic · チャットで · 慌てて新リンク発行 → 5分遅刻スタート*

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「ズン、Zoomリンクこれでいいよね？昨日のリンクそのまま使ったけど。」 |
| **ズン** | 「待って、そのリンク 24h で expire するやつじゃない？松本様もう入れない可能性ある。」 |
| **松本** | 「ズンさん、リンクが invalid と出ます。新しいリンクをお送りいただけますか？」 |
| **ズン** | 「申し訳ございません、ただ今新しいリンクをお送りします…」 |

**Vì sao xấu:** Link Zoom có expire / one-time-use option mà Hải không check. Không test trước = phát hiện lỗi đúng lúc khách đang chờ. Trễ 5 phút mở đầu = mất ấn tượng professional.

---

## ✅ Hội thoại TỐT — test 30 phút trước

*30分前、ズンと内部テスト*

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「ズン、Zoom新リンク発行済み、有効期限は明日まで。音声と画面共有もテスト OK です【1】。」 |
| **ズン** | 「サンキュ。背景は会社ロゴの blur 設定にして。録画は冒頭で松本様にご確認しよう【2】。」 |
| **ハイ** | 「了解。リンクを松本様に再送し、Wi-Fi 不安定時の電話番号も併記しました。」 |
| **ズン** | 「完璧。15分前に再ログインして待機しよう。」 |

📝 **Ghi chú:**
- 【1】**「テストOK」** — báo cáo kỹ thuật ngắn gọn, native dùng. Không cần 「テストが完了しました」 dài dòng giữa team nội bộ.
- 【2】**「録画は冒頭でご確認しよう」** — *Bắt buộc* xin phép ghi âm/recording đầu họp với khách Nhật. Chưa xin = vi phạm 個人情報保護.

---

## 🎯 Câu chốt

> **「リンク・音声・画面・背景・録画 — 5点を30分前にテスト。」**
>
> *Link, audio, share screen, background, recording — test đủ 5 trước họp 30 phút.*

---

## 📐 Checklist Online Meeting Setup (xem `conversation.json:templates[0]`)

```
■ オンライン会議セットアップ・チェックリスト（30分前完了）

□ 1. ミーティングリンク発行・有効期限確認
□ 2. 音声テスト（マイク・スピーカー両方）
□ 3. 画面共有テスト（資料・デモ環境）
□ 4. 背景設定（バーチャル背景 or 整理整頓）
□ 5. 録画許可の意思確認（冒頭で発言予定）
□ 6. 予備の連絡手段（電話番号・チャットID）
□ 7. 配布資料の事前共有確認
□ 8. ホスト権限・共同ホスト設定
□ 9. 録画ファイル保存先（Drive / Notion）
□ 10. 入室待機室（Waiting Room）有効化
```

---

## ⚠ Tránh

- Reuse link cũ → expire / spam filter / wrong meeting room.
- Background lộ whiteboard nội bộ / file path → leak thông tin khách hàng khác.
- Recording không xin phép → khách Nhật sẽ tỏ thái độ ngay lập tức.
- Mute mặc định OFF → noise lúc khách đang nói.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| オンライン会議 | online kaigi | Họp online |
| リンク | link | Link (URL) |
| 画面共有 | がめんきょうゆう | Share màn hình |
| 録画 | ろくが | Ghi hình / record |
| 音声 | おんせい | Âm thanh |
| 背景 | はいけい | Background |
| 待機室 | たいきしつ | Waiting room |
| 有効期限 | ゆうこうきげん | Hạn dùng |
