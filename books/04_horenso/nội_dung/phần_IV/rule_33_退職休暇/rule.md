# Rule 33 — Báo nghỉ việc / nghỉ dài hạn / 退職・休暇のホウレンソウ

> **Luận điểm.** Nghỉ việc / nghỉ dài (>2 tuần: thai sản, sabbatical, phẫu thuật) **không phải tin cá nhân, mà là sự kiện hệ thống**. Nhân sự mới thường sai: báo sát giờ + không có kế hoạch bàn giao. Nguyên tắc: **(1) Thời điểm báo chuẩn — nghỉ việc ≥ 30 ngày, nghỉ dài ≥ 14 ngày, (2) Báo CHO SẾP trước 1-1, KHÔNG thông báo Slack rộng rãi ngay, (3) Kế hoạch bàn giao chi tiết: công việc / đầu mối liên hệ / tài liệu / người kế nhiệm, (4) Thông báo tới khách có sếp ký tên, (5) 引き継ぎ期間 (kỳ bàn giao) phải có overlap thực với người nhận**.
>
> 退職・長期休暇のホウレンソウ：①30日 (退職)/14日 (長期休暇) 前に通知 ②上司 1-on-1 が最初 ③handover plan明文化 ④客向け案内は上司名義 ⑤実引き継ぎ期間を確保。
>
> **Liên quan:** rule 19 (休暇連絡), rule 20 (出張), rule 39 (チーム文化).

---

## Bối cảnh / 場面

Em Hải quyết định du học Đức 6 tháng (sabbatical) bắt đầu từ 1/7. Tuần này 22/4. Còn 70 ngày — lý tưởng. Lần đầu Hải thông báo rộng rãi ngay. Lần 2 đúng quy trình.

---

## Hội thoại XẤU — thông báo rộng rãi trước, không bàn giao

*Slack #general · Slack DM*

| Vai | Câu |
|---------|-----|
| **ハイ** | 「みなさん、7/1 から半年ドイツ<ruby>留学<rt>りゅうがく</rt></ruby>に行ってきます!<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎは追って<ruby>共有<rt>きょうゆう</rt></ruby>します!」 <br/>*(Slack #general) Mọi người ơi, từ 1/7 em đi Đức học 6 tháng! Bàn giao em chia sẻ sau ạ!* |
| **トゥアン** | 「ハイ、まず私に1-on-1 で<ruby>相談<rt>そうだん</rt></ruby>すべき。今 Phase 2 の DevOps お前1人。<ruby>半年<rt>はんとし</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>けるなら **handover<ruby>計画<rt>けいかく</rt></ruby>なしの broadcast はNG**。Hà CTO もまだ知らないだろ?」 <br/>*(Slack DM) Hải, lẽ ra em phải 1-on-1 với anh trước. Phase 2 đang phụ trách vận hành hệ thống có mình em. Nghỉ 6 tháng mà không có kế hoạch bàn giao, thông báo rộng rãi ngay là NG. Anh Hà CTO chắc cũng chưa biết đúng không?* |
| **ハイ** | 「あ、すみません…」 <br/>*À, em xin lỗi...* |
| **トゥアン** | 「明日朝1-on-1で。Handover plan ドラフト<ruby>持参<rt>じさん</rt></ruby>。客への<ruby>正式<rt>せいしき</rt></ruby><ruby>案内<rt>あんない</rt></ruby>は Hà CTO <ruby>名義<rt>めいぎ</rt></ruby>で<ruby>別途<rt>べっと</rt></ruby>出す。Slack post は<ruby>一旦<rt>いったん</rt></ruby><ruby>削除<rt>さくじょ</rt></ruby>。」 <br/>*Sáng mai 1-on-1 nhé. Mang bản thảo kế hoạch bàn giao đến. Thông báo chính thức cho khách thì Hà CTO ký tên gửi riêng. Post Slack xoá tạm đi.* |

**Vì sao xấu:** L1 sai trật tự — thông báo rộng rãi trước khi sếp biết. L2 chỉ ra: phá mạch phân cấp + không có kế hoạch bàn giao = hỗn loạn cho team.

---

## Hội thoại TỐT — 1-on-1 sếp + kế hoạch bàn giao + thông báo 客先

*Slack DM トゥアン · 翌朝1-on-1 · 画面*

| Vai | Câu |
|---------|-----|
| **ハイ** | 「トゥアンさん、ご<ruby>相談<rt>そうだん</rt></ruby>したいことがあるのですが、明日朝 30分お時間いただけますでしょうか?トピック: 個人キャリア計画と<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎについて。<ruby>緊急度<rt>きんきゅうど</rt></ruby>低、今後3ヶ月の<ruby>準備<rt>じゅんび</rt></ruby><ruby>期間<rt>きかん</rt></ruby>がございます【1】。」 <br/>*(Slack DM anh Tuấn) Anh Tuấn, em có việc muốn tham vấn, sáng mai anh dành 30 phút được không ạ? Chủ đề: kế hoạch cá nhân + bàn giao. Mức khẩn cấp thấp, em còn 3 tháng chuẩn bị ạ.* |
| **ハイ** | 「ご<ruby>相談<rt>そうだん</rt></ruby>です。**7/1 から12/31 まで、6ヶ月間ドイツの<ruby>大学院<rt>だいがくいん</rt></ruby>でサバティカル**を<ruby>取得<rt>しゅとく</rt></ruby>したく、**3ヶ月前の本日4/22にご<ruby>報告<rt>ほうこく</rt></ruby>**いたします【2】。事前にハンドオーバー計画ドラフトを<ruby>作成<rt>さくせい</rt></ruby>しました【3】。」 <br/>*(Sáng hôm sau, 1-on-1) Em xin tham vấn. Em muốn đi sabbatical 6 tháng tại đại học bên Đức từ 1/7-31/12, hôm nay 22/4 em báo trước 3 tháng ạ. Em đã chuẩn bị bản nháp kế hoạch bàn giao ạ.* |
| **ハイ** | 「**Handover Plan**: ① DevOps タスク 12<ruby>項目<rt>こうもく</rt></ruby> (うち5項目を Linh と<ruby>共同化<rt>きょうどうか</rt></ruby>、7項目をズンへ<ruby>移管<rt>いかん</rt></ruby>) / ② AWS <ruby>認証<rt>にんしょう</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>・パスワード<ruby>管理<rt>かんり</rt></ruby> (1Passwordで Hà CTO へ owner 移管) / ③ ドキュメント<ruby>整備<rt>せいび</rt></ruby> (運用Runbook v2 を5月末までに<ruby>完成<rt>かんせい</rt></ruby>) / ④ <ruby>候補者<rt>こうほしゃ</rt></ruby>: <ruby>社内<rt>しゃない</rt></ruby>ローテーションでフロントエンドからの DevOps <ruby>兼任<rt>けんにん</rt></ruby>、または<ruby>採用<rt>さいよう</rt></ruby> / ⑤ Overlap <ruby>期間<rt>きかん</rt></ruby>: 6/1〜6/30 の1ヶ月を<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ<ruby>専用<rt>せんよう</rt></ruby>に<ruby>充当<rt>じゅうとう</rt></ruby>。」 <br/>*[Kế hoạch bàn giao] ① 12 đầu việc vận hành hệ thống (5 cái chia chung với Linh, 7 cái chuyển Dũng) / ② Thông tin xác thực AWS + mật khẩu (chuyển người phụ trách sang anh Hà CTO qua 1Password) / ③ Tài liệu (Runbook v2 hoàn thành cuối tháng 5) / ④ Người kế nhiệm: luân phiên nội bộ FE kiêm vận hành hệ thống, hoặc tuyển / ⑤ Giai đoạn song song: 1 tháng 1/6-30/6 dành riêng cho bàn giao.* |
| **トゥアン** | 「<ruby>準備<rt>じゅんび</rt></ruby>が<ruby>完璧<rt>かんぺき</rt></ruby>。Hà CTO に1-on-1 を私からセットして。<ruby>決裁<rt>けっさい</rt></ruby>後、客向けの<ruby>正式<rt>せいしき</rt></ruby><ruby>案内<rt>あんない</rt></ruby>は **Hà CTO <ruby>名義<rt>めいぎ</rt></ruby>で6月初** に。Slack <ruby>全社<rt>ぜんしゃ</rt></ruby><ruby>通知<rt>つうち</rt></ruby>は **客向け案内の<ruby>翌日<rt>よくじつ</rt></ruby>**。Hai 個人 broadcast は最後で OK。」 <br/>*Chuẩn bị hoàn hảo. Anh sẽ set 1-on-1 với Hà CTO. Sau khi duyệt, thông báo chính thức cho khách thì Hà CTO ký tên đầu tháng 6. Slack toàn công ty hôm sau. Thông báo cá nhân của Hải để cuối cùng OK.* |
| **ハイ** | 「ありがとうございます。私からチーム<ruby>個別<rt>こべつ</rt></ruby>1-on-1 (リン・ズン) も Hà CTO <ruby>通知<rt>つうち</rt></ruby>後に<ruby>実施<rt>じっし</rt></ruby>します【4】。」 <br/>*Em cảm ơn anh. 1-on-1 từng người (Linh, Dũng) em cũng làm sau khi anh Hà CTO thông báo ạ.* |

 **Ghi chú:**
- 【1】**Slack DM 切り出し** — không gặp đột ngột. Đặt nội dung trước.
- 【2】**3ヶ月前報告** — sabbatical 6 tháng → 3 tháng notice (nghỉ việc cần ≥ 30 ngày, nghỉ dài ≥ 14 ngày, sabbatical càng lâu càng dài).
- 【3】**Kế hoạch bàn giao có sẵn** — không "sẽ làm sau", phải có ngay buổi 1-on-1.
- 【4】**Thứ tự: 1-on-1 sếp → CTO → 客先 (sếp ký) → 全社通知 → 個別 1-on-1** — trật tự quan trọng để khách Nhật cảm thấy được tôn trọng.

---

## Notice Timing Standard

| Loại nghỉ | Tối thiểu | Lý tưởng | Báo ai trước |
|-----------|-----------|----------|--------------|
| 退職 (nghỉ việc) | 30 ngày | 60 ngày | Sếp trực tiếp 1-on-1 |
| 長期休暇 / sabbatical | 14 ngày | 30 ngày + | Sếp trực tiếp 1-on-1 |
| 出産・育休 | 60 ngày (luật) | sớm hơn | Sếp + HR |
| 手術休暇 | ASAP sau khi biết | 1 tuần+ | Sếp + cover plan |
| 病欠 1-3 ngày | sáng cùng ngày | 1 ngày trước | Cả team |

---

## Cấu trúc kế hoạch bàn giao (5 phần)

```
① タスク一覧            (ID, người phụ trách mới, hạn chót trong kỳ bàn giao)
② アクセス・権限        (mật khẩu, tài khoản, chuyển giao quyền quản lý)
③ ドキュメント         (runbook, README, knowledge base)
④ 候補者               (replacement / interim cover)
⑤ Overlap 期間         (実際に並走する1-2週間)
```

---

## Câu chốt

> **「<ruby>退職<rt>たいしょく</rt></ruby>・<ruby>長期<rt>ちょうき</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>は『<ruby>順番<rt>じゅんばん</rt></ruby>』 — ①<ruby>上司<rt>じょうし</rt></ruby>1-on-1 → ②CTO → ③客向け<ruby>正式<rt>せいしき</rt></ruby><ruby>案内<rt>あんない</rt></ruby> (上司<ruby>名義<rt>めいぎ</rt></ruby>) → ④<ruby>全社<rt>ぜんしゃ</rt></ruby> Slack → ⑤チーム1-on-1。Handover Plan 5<ruby>項目<rt>こうもく</rt></ruby>を必ず<ruby>明文化<rt>めいぶんか</rt></ruby>。」**

---

## Tránh

- Thông báo rộng rãi trước khi sếp biết → phá phân cấp + hỗn loạn.
- Báo trễ (< thời hạn tối thiểu) → uy tín đứt + bàn giao gấp.
- 「あとで handover 計画作ります」 — ban đầu không có = không nghiêm túc.
- Thông báo cho khách do junior tự gửi → phải sếp ký tên.

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|-------|-------|
| 退職 | たいしょく | THOÁI CHỨC | Nghỉ việc |
| 休暇 | きゅうか | HƯU HẠ | Nghỉ phép |
| サバティカル | さばてぃかる | — | Sabbatical |
| 引き継ぎ | ひきつぎ | — | Bàn giao |
| ハンドオーバー | はんどおーばー | — | Bàn giao |
| 候補者 | こうほしゃ | HẬU BỔ GIẢ | Người kế nhiệm tiềm năng |
| ランブック | らんぶっく | — | Runbook |
| Overlap期間 | おーばーらっぷきかん | — | Khoảng thời gian song song |
| 名義 | めいぎ | DANH NGHĨA | Đứng tên |
