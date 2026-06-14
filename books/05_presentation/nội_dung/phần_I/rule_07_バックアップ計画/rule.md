# Rule 07 — Backup plan (Plan B) / バックアップ計画

> **Luận điểm.** Checklist trước pitch phải có **5 lớp dự phòng**: ① PDF deck (USB + cloud), ② demo offline (local DB / mock — dữ liệu giả lập), ③ phát Wi-Fi từ điện thoại, ④ bộ 3 adapter HDMI / USB-C / VGA, ⑤ tài liệu in phát tay 5 bản. Sự cố kỹ thuật không phải "nếu" mà là "khi nào". Plan B chuẩn bị trước = khôi phục 2 phút thay vì 15 phút.
>
> プレゼン直前チェックリスト5点: ①PDFバックアップ、②オフラインデモ、③モバイルテザリング、④アダプタ3種、⑤印刷配布5部。トラブルは『if』ではなく『when』。準備済みなら2分で復旧。
>
> **Liên quan:** rule 01 (準備7問⑦), rule 31 (技術トラブル復旧), rule 29 (オンライン).

---

## Bối cảnh / 場面

Ngày trước pitch, Hải DevOps tình cờ ngang qua phòng họp lúc Dũng test → phát hiện: laptop chưa có HDMI adapter, deck chỉ ở Dropbox (cần internet), demo gọi API live. Một sự cố là toàn bộ bế tắc.

---

## ❌ Hội thoại XẤU — single point of failure

*覗いて*

| Vai | Câu |
|---------|-----|
| **ハイ** | 「ズン、明日プレゼン？スライドどこ？」 |
|  | *Dũng, mai pitch hả? Slide ở đâu?* |
| **ズン** | 「Dropboxです。明日 Wi-Fi 借りて開きます。」 |
|  | *Trên Dropbox ạ. Mai mượn Wi-Fi mở.* |
| **ハイ** | 「Dropbox オンリー？**Wi-Fi 落ちたら deck 開けない**よ。デモは？」 |
|  | *Mỗi Dropbox? Wi-Fi rớt là không mở được deck đâu. Còn demo?* |
| **ズン** | 「ライブAPI呼ぶ<ruby>実装<rt>じっそう</rt></ruby>で…」 |
|  | *Em implement gọi API live ạ...* |
| **ハイ** | 「**全部 single point of failure**。明日朝3時に起きて<ruby>慌<rt>あわ</rt></ruby>てる前に、今日Plan B 揃えよう。」 |
|  | *Toàn single point of failure đấy. Trước khi 3h sáng mai dậy hoảng loạn, hôm nay tụi mình set up Plan B đi.* |

**Vì sao xấu:** Deck chỉ trên cloud + live API demo + 1 cable = 3 điểm rủi ro độc lập. Bất kỳ điểm nào hỏng là demo phá. Khách Nhật đặc biệt không nương tay khi xảy ra sự cố kỹ thuật.

---

## ✅ Hội thoại TỐT — 5-point backup checklist

| Vai | Câu |
|---------|-----|
| **ズン** | 「ハイさん、ありがとう。**Plan Bチェックリスト**【1】で揃えました。①PDF版 USB+ローカル、②オフラインデモ<ruby>準備<rt>じゅんび</rt></ruby>、③テザリング<ruby>有効<rt>ゆうこう</rt></ruby>、④HDMI+USB-C+VGAアダプタ<ruby>持参<rt>じさん</rt></ruby>、⑤<ruby>印刷<rt>いんさつ</rt></ruby>5部。」 |
|  | *Anh Hải, cảm ơn anh ạ. Em đã chuẩn bị xong theo checklist Plan B. ① Bản PDF trên USB + local, ② demo offline, ③ tethering bật sẵn, ④ mang HDMI + USB-C + VGA adapter, ⑤ in 5 bản.* |
| **ハイ** | 「いいね。USB は2本？1本<ruby>紛失<rt>ふんしつ</rt></ruby>リスク。」 |
|  | *OK. USB 2 chiếc đúng không? 1 chiếc rủi ro mất đấy.* |
| **ズン** | 「2本持参します。**もう1本はトゥアンさんに渡します**【2】(co-presenter として<ruby>保険<rt>ほけん</rt></ruby>)。」 |
|  | *Em mang 2 chiếc ạ. Một chiếc đưa anh Tuấn (làm bảo hiểm với tư cách co-presenter).* |
| **ハイ** | 「<ruby>正解<rt>せいかい</rt></ruby>。それと PDF はクライアント側にも<ruby>事前共有<rt>じぜんきょうゆう</rt></ruby>しておくと、最悪『<ruby>画面共有<rt>がめんきょうゆう</rt></ruby>なしで紙ベース』に切り替えできる。」 |
|  | *Chuẩn. Với cả PDF share trước cho khách luôn — tệ nhất thì switch sang 「không share screen, chỉ dùng giấy」 cũng được.* |

📝 **Ghi chú:**
- 【1】**「Plan B チェックリスト」** — Pre-pitch 24h前に 1 round, pitch当日朝 final check. 5項目全部 ✅ で安心.
- 【2】**「トゥアンさんに渡します」** — Co-presenter があれば redundancy. 1人が遅刻/接続失敗でも他方がカバー.

---

## 🎯 Câu chốt

> **「Plan B 5点: PDF / オフラインデモ / テザリング / アダプタ3種 / <ruby>印刷<rt>いんさつ</rt></ruby>5部。Tech failure は『when』であって『if』ではない。」**
>
> *5 điểm backup. Tech fail là chuyện khi nào, không phải có hay không.*

---

## 📐 Template Pre-Pitch Backup Checklist (đính kèm — `conversation.json:templates[0]`)

```
【プレゼン Plan B チェックリスト】(24時間前 + 当日朝)

■ スライド (Slides)
□ PowerPoint/Keynote 元ファイル: クラウド + ローカル
□ PDF版: USB×2本 + ローカル + クラウド
□ Google Slides Web版バックアップ
□ 印刷配布版: 主要スライドのみ 5-10部

■ デモ (Demo)
□ オフライン版デモ (local DB / mock data)
□ 録画版デモ (.mp4 USB+ローカル) — 最終の最終
□ デモ用 test account 動作確認

■ ネットワーク (Network)
□ モバイルテザリング有効 (4G/5G)
□ ポケットWi-Fi 充電済み (予備)
□ オフライン優先モード設定済み

■ 機材 (Equipment)
□ HDMI ケーブル
□ USB-C → HDMI / VGA アダプタ
□ Lightning → HDMI (iPad backup用)
□ 充電器 + 延長コード
□ レーザーポインター (電池予備)

■ 配布物 (Handout)
□ 名刺 20枚以上
□ 印刷スライド主要部 5部
□ 会社案内 / 過去事例集 5部

■ 担当者間 (Team redundancy)
□ Co-presenter にも USB 1本
□ Slack で deck PDF を相互送信
□ 万一の連絡先メモ (ホテル / タクシー会社 等)

■ 当日朝 final
□ 機材 全 connect テスト
□ 音声 / 画面共有 テスト
□ Q&A appendix スライド再確認
```

---

## ⚠ Tránh

- Deck chỉ để trên cloud → mất internet = không pitch được
- Live API demo mà không có phương án offline dự phòng → rớt 1 kết nối = hỏng toàn bộ
- Chỉ 1 USB → thất lạc = hoảng loạn
- Adapter chỉ 1 loại → khách dùng VGA/USB-C khác là toang
- Test ở văn phòng mình rồi yên tâm → môi trường khách khác hẳn

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| バックアップ | bakkuappu | Backup |
| 復旧 | ふっきゅう | Khôi phục |
| 慌てる | あわてる | Hoảng loạn |
| 紛失 | ふんしつ | Thất lạc / mất |
| 保険 | ほけん | Bảo hiểm / dự phòng |
| 配布 | はいふ | Phát ra (handout) |
| テザリング | tezaringu | Tethering / phát Wi-Fi từ điện thoại |
| アダプタ | adaputa | Adapter |
