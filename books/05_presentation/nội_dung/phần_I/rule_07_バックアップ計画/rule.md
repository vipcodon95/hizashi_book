# Rule 07 — Phương án dự phòng (Plan B) / バックアップ計画

> **Luận điểm.** Danh sách kiểm tra trước buổi trình bày phải có **5 lớp dự phòng**: ① bộ slide PDF (USB + đám mây), ② demo không cần mạng (DB nội bộ / dữ liệu giả lập), ③ phát Wi-Fi từ điện thoại, ④ bộ 3 đầu chuyển đổi HDMI / USB-C / VGA, ⑤ tài liệu in phát tay 5 bản. Sự cố kỹ thuật không phải "nếu" mà là "khi nào". Plan B chuẩn bị trước = khôi phục 2 phút thay vì 15 phút.
>
> プレゼン直前チェックリスト5点: ①PDFバックアップ、②オフラインデモ、③モバイルテザリング、④アダプタ3種、⑤印刷配布5部。トラブルは『if』ではなく『when』。準備済みなら2分で復旧。
>
> **Liên quan:** rule 01 (準備7問⑦), rule 31 (技術トラブル復旧), rule 29 (オンライン).

---

## Bối cảnh / 場面

Ngày trước buổi trình bày, Hải DevOps tình cờ ngang qua phòng họp lúc Dũng kiểm tra → phát hiện: máy tính xách tay chưa có đầu chuyển HDMI, bộ slide chỉ ở Dropbox (cần mạng), demo gọi API trực tiếp. Một sự cố là toàn bộ bế tắc.

---

## Trường hợp xấu — một điểm chết duy nhất

*覗いて*

| Vai | Câu |
|---------|-----|
| **ハイ** | 「ズン、明日プレゼン？スライドどこ？」 <br/>*Dũng, mai trình bày hả? Slide ở đâu?* |
| **ズン** | 「Dropboxです。明日 Wi-Fi 借りて開きます。」 <br/>*Trên Dropbox ạ. Mai mượn Wi-Fi mở.* |
| **ハイ** | 「Dropbox オンリー？**Wi-Fi 落ちたら deck 開けない**よ。デモは？」 <br/>*Mỗi Dropbox? Wi-Fi rớt là không mở được bộ slide đâu. Còn demo?* |
| **ズン** | 「ライブAPI呼ぶ<ruby>実装<rt>じっそう</rt></ruby>で…」 <br/>*Em implement gọi API live ạ...* |
| **ハイ** | 「**全部 single point of failure**。明日朝3時に起きて<ruby>慌<rt>あわ</rt></ruby>てる前に、今日Plan B 揃えよう。」 <br/>*Toàn điểm chết duy nhất đấy. Trước khi 3h sáng mai dậy hoảng loạn, hôm nay tụi mình lo Plan B đi.* |

**Vì sao xấu:** Bộ slide chỉ trên đám mây + demo gọi API trực tiếp + 1 dây cáp = 3 điểm rủi ro độc lập. Bất kỳ điểm nào hỏng là buổi trình bày đổ vỡ. Khách Nhật đặc biệt không nương tay khi xảy ra sự cố kỹ thuật.

---

## Trường hợp tốt — danh sách dự phòng 5 điểm

| Vai | Câu |
|---------|-----|
| **ズン** | 「ハイさん、ありがとう。**Plan Bチェックリスト**【1】で揃えました。①PDF版 USB+ローカル、②オフラインデモ<ruby>準備<rt>じゅんび</rt></ruby>、③テザリング<ruby>有効<rt>ゆうこう</rt></ruby>、④HDMI+USB-C+VGAアダプタ<ruby>持参<rt>じさん</rt></ruby>、⑤<ruby>印刷<rt>いんさつ</rt></ruby>5部。」 <br/>*Anh Hải, cảm ơn anh ạ. Em đã chuẩn bị xong theo danh sách kiểm tra Plan B. ① Bản PDF trên USB + local, ② demo offline, ③ phát mạng di động bật sẵn, ④ mang HDMI + USB-C + VGA bộ chuyển đổi, ⑤ in 5 bản.* |
| **ハイ** | 「いいね。USB は2本？1本<ruby>紛失<rt>ふんしつ</rt></ruby>リスク。」 <br/>*OK. USB 2 chiếc đúng không? 1 chiếc rủi ro mất đấy.* |
| **ズン** | 「2本持参します。**もう1本はトゥアンさんに渡します**【2】(co-presenter として<ruby>保険<rt>ほけん</rt></ruby>)。」 <br/>*Em mang 2 chiếc ạ. Một chiếc đưa anh Tuấn (dự phòng với tư cách người đồng trình bày).* |
| **ハイ** | 「<ruby>正解<rt>せいかい</rt></ruby>。それと PDF はクライアント側にも<ruby>事前共有<rt>じぜんきょうゆう</rt></ruby>しておくと、最悪『<ruby>画面共有<rt>がめんきょうゆう</rt></ruby>なしで紙ベース』に切り替えできる。」 <br/>*Chuẩn. Với cả PDF chia sẻ trước cho khách luôn — tệ nhất thì chuyển sang 「không chia sẻ màn hình, chỉ dùng giấy」 cũng được.* |

📝 **Ghi chú:**
- 【1】**「Plan B チェックリスト」** — 24h trước buổi trình bày kiểm tra 1 lượt, sáng ngày trình bày kiểm tra lần cuối. 5項目全部  で安心.
- 【2】**「トゥアンさんに渡します」** — Có người đồng trình bày thì có dự phòng. 1 người đến muộn / mất kết nối thì người kia thay.

---

## Câu chốt

> **「Plan B 5点: PDF / オフラインデモ / テザリング / アダプタ3種 / <ruby>印刷<rt>いんさつ</rt></ruby>5部。Tech failure は『when』であって『if』ではない。」**
>
> *5 điểm dự phòng. Sự cố kỹ thuật là chuyện khi nào, không phải có hay không.*

---

## Khung danh sách kiểm tra dự phòng trước buổi trình bày

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

■ 配布物 (Tài liệu phát)
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

## Tránh

- Bộ slide chỉ để trên đám mây → mất mạng = không trình bày được
- Demo gọi API trực tiếp mà không có phương án không cần mạng → rớt 1 kết nối = hỏng toàn bộ
- Chỉ 1 USB → thất lạc = hoảng loạn
- Bộ chuyển đổi chỉ 1 loại → khách dùng VGA/USB-C khác là toang
- Kiểm tra ở văn phòng mình rồi yên tâm → môi trường khách khác hẳn

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| バックアップ | バックアップ | — | Dự phòng |
| 復旧 | ふっきゅう | PHỤC CỰU | Khôi phục |
| 慌てる | あわてる | — | Hoảng loạn |
| 紛失 | ふんしつ | PHÂN THẤT | Thất lạc / mất |
| 保険 | ほけん | BẢO HIỂM | Bảo hiểm / dự phòng |
| 配布 | はいふ | PHỐI BỐ | Phát ra (tài liệu phát tay) |
| テザリング | テザリング | — | Phát Wi-Fi từ điện thoại |
| アダプタ | アダプタ | — | Đầu chuyển đổi |
