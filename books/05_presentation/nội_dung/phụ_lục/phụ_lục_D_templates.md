# Phụ lục D — Template Tổng Hợp / テンプレート集

*Tổng hợp các template (agenda, biên bản, mail) đính kèm trong các rules. Copy-paste để dùng.*

---


## Email follow-up (1 mẫu)

### Rule 28 — Mail follow-up sau pitch (bản chi tiết)

*JP: ピッチ後 follow-up メール (詳細版)*

```
件名: 【御礼】Phase 3 ご提案の件 (ティエンファット ズン)

白鷗株式会社
大垣 営業部長 様
松本 PM 様
田中 PMO 様
(CC: 弊社 ハー CTO、トゥアン 技術リーダー、フオン 副部長)

平素より大変お世話になっております。
弊社営業部のズンでございます。

本日はお忙しい中、Phase 3 ご提案にお時間を頂き、誠にありがとうございました。

【本日の合意 3点】
① Phase 3 スコープ: 19機能 (5/15 開始 / 12/15 リリース)
② 価格: 1,200万円 (Phase 2 比単価 -8%)
③ 責任者ペア: 弊社ズン ＋ 御社松本様

【次のステップ 3点】
① 5/2 (今週金) 17時まで: SOAP→REST 統合詳細回答メール (弊社 → 御社)
② 5/8 (来週水) 14時: スコープ最終確認会議 (60分・御社会議室)
③ 5/15 まで: 契約書サインインオフ (両社法務経由)

【添付資料】
・本日のスライド (PDF) — Drive 閲覧専用 [URL]
・議事メモ (PDF) — 同上

【持ち帰り事項】
・SOAP→REST 統合 + OAuth 2.0 フロー詳細
 弊社 CTO ハー 確認の上、5/2 17時 までに別メールでご回答いたします

ご不明な点等ございましたら、いつでもご連絡くださいませ。
引き続き何卒よろしくお願い申し上げます。

────────────────────
チャン・ヴァン・ズン (Tran Van Dung)
ティエンファット 営業部 BD担当
TEL: +84-xx-xxxx-xxxx
EMAIL: zun@tienphat.vn
営業時間: 9:00-18:00 (JST / Mon-Fri)
────────────────────
```

**Bản Việt placeholder:**

```
Subject: 【Cảm ơn】Vấn đề đề xuất Phase 3 (Thiên Phát — Dũng)

Kính gửi Cty Hakuō:
  Anh Ōgaki — Trưởng phòng Kinh doanh
  Anh Matsumoto — PM
  Anh Tanaka — PMO
(CC: Hà CTO, Tuấn Tech lead, Hương Phó phòng — bên em)

Luôn được quý vị quan tâm, em xin cảm ơn ạ.
Em là Dũng, BD phòng Kinh doanh Cty Thiên Phát ạ.

Hôm nay quý vị bận rộn vẫn dành thời gian cho buổi đề xuất Phase 3, em xin chân thành cảm ơn ạ.

[3 điểm thống nhất hôm nay]
① Scope Phase 3: 19 chức năng (bắt đầu 15/5 / release 15/12)
② Giá: 12 triệu yên (đơn giá giảm 8% so Phase 2)
③ Cặp owner: Dũng bên em + anh Matsumoto bên quý vị

[3 next step]
① Trước 17h 2/5 (thứ Sáu tuần này): mail phản hồi chi tiết tích hợp SOAP→REST (bên em → bên quý vị)
② 14h 8/5 (thứ Tư tuần sau): họp chốt scope final (60 phút, phòng họp Hakuō)
③ Trước 15/5: sign-off hợp đồng (qua pháp chế hai bên)

[Tài liệu đính kèm]
- Slide hôm nay (PDF) — link Drive read-only [URL]
- Memo họp (PDF) — cùng link

[Vấn đề mang về xem xét]
- Tích hợp SOAP→REST + chi tiết flow OAuth 2.0
  Em sẽ confirm với Hà CTO bên em, phản hồi qua mail riêng trước 17h ngày 2/5 ạ.

Nếu có điểm chưa rõ, mời quý vị liên hệ bất cứ lúc nào ạ.
Mong tiếp tục được quý vị chiếu cố ạ.

────────────────────
Trần Văn Dũng
Cty Thiên Phát — BD phòng Kinh doanh
TEL: +84-xx-xxxx-xxxx
EMAIL: zun@tienphat.vn
Giờ làm việc: 9:00-18:00 (JST / T2-T6)
────────────────────
```

📝 **Ghi chú VN:** Thời điểm gửi: Trong ngày pitch — ack ngắn (link slide + deadline 持ち帰り) → sáng ngày làm việc kế tiếp gửi template này. Bản chi tiết thứ Hai nhớ CC CTO + tech lead + phó phòng.
📝 **Ghi chú JP:** 送付タイミング: ピッチ当日中に short ack (slide link + 持ち帰り deadline) → 翌営業日朝に本テンプレ送付。月曜詳細版には CTO+技術リード+副部長を CC。


## Checklist (4 mẫu)

### Rule 01 — Checklist Chuẩn Bị Thuyết Trình (7 câu)

*JP: プレゼン準備チェックリスト(7問)*

```
【プレゼン準備チェックリスト】

① 誰に？(Audience)
   - 主聴衆: ____  (役職・社名・関係性)
   - 副聴衆: ____
   - 不在の意思決定者: ____

② 何を決めたい？(Decision target)
   - 本日の合意ゴール: ____  (1文で)
   - 妥協可能ライン: ____
   - 絶対に譲れないライン: ____

③ 時間 (Time)
   - 持ち時間: ____ 分
   - うち Q&A: ____ 分
   - 1スライド当たり: ____ 秒(目安)

④ 場所 (Setting)
   - 対面 / オンライン / ハイブリッド
   - 機材: PC・プロジェクター・マイク
   - 接続テスト: ____ (時刻)

⑤ 期待されるアウトプット (Output)
   - 主アウトプット: ____  (例: スコープ合意 / 方向性決定)
   - 副アウトプット: ____  (例: 次回会議日決定)
   - NG ライン: ____  (これ以下なら失敗)

⑥ リスク (Risk)
   - リスク1: ____ → 対策: ____
   - リスク2: ____ → 対策: ____
   - リスク3: ____ → 対策: ____

⑦ バックアップ (Backup)
   - スライド: PDF版 USB+クラウド
   - デモ: オフライン版
   - インターネット: モバイルテザリング
```

**Bản Việt placeholder:**

```
[Checklist Chuẩn Bị Thuyết Trình]

① CHO AI? (Audience)
   - Đối tượng chính: ____ (chức vụ / cty / quan hệ)
   - Đối tượng phụ: ____
   - Decision maker vắng mặt: ____

② QUYẾT GÌ? (Decision target)
   - Goal đồng thuận hôm nay: ____ (1 câu)
   - Mức có thể nhượng: ____
   - Mức KHÔNG THỂ nhượng: ____

③ THỜI GIAN (Time)
   - Thời lượng: ____ phút
   - Trong đó Q&A: ____ phút
   - Mỗi slide: ____ giây (ước)

④ ĐỊA ĐIỂM (Setting)
   - Trực tiếp / online / hybrid
   - Thiết bị: PC / projector / mic
   - Test connection: ____ (thời gian)

⑤ OUTPUT MONG ĐỢI (Output)
   - Output chính: ____ (vd: thống nhất scope / quyết hướng đi)
   - Output phụ: ____ (vd: chốt ngày họp tiếp)
   - Mức NG: ____ (dưới mức này = thất bại)

⑥ RỦI RO (Risk)
   - Rủi ro 1: ____ → đối sách: ____
   - Rủi ro 2: ____ → đối sách: ____
   - Rủi ro 3: ____ → đối sách: ____

⑦ BACKUP (Plan B)
   - Slide: PDF backup USB + cloud
   - Demo: phiên bản offline
   - Internet: tethering 4G/5G
```

📝 **Ghi chú VN:** Bắt buộc fill trước khi mở PowerPoint. Senior review → mới bắt đầu design. Đầu tư 5-10 phút để tránh redo nửa ngày.
📝 **Ghi chú JP:** PowerPoint を開く前に必ず埋める。Senior レビュー後 → 設計開始。5-10分の投資で半日のやり直しを防ぐ。

### Rule 04 — Checklist Visual Hierarchy

*JP: 視覚階層チェックリスト*

```
【視覚階層チェックリスト】

■ フォントサイズ
□ タイトル 32-40pt (Bold)
□ サブメッセージ 24-28pt
□ 本文 (Bullet/根拠) 20-24pt
□ 図表ラベル 18pt 以上 (NG: 14pt以下)
□ フッター/ページ番号 12-14pt

■ フォント
□ フォント統一: Meiryo / 游ゴシック / Noto Sans JP
□ MS明朝・MSゴシック使用禁止 (古い・潰れる)
□ 英数字フォント: Arial / Helvetica / Segoe UI

■ レイアウト
□ Alignment 左揃え (見出しのみ中央可)
□ 行間 1.3-1.5
□ 余白 上下左右 5%以上

■ コントラスト・色
□ コントラスト比: 文字vs背景 4.5:1 以上
□ 背景: 白 or 薄グレー (#F5F5F5)
□ 太字使用は1スライド3箇所以内

■ 実機テスト
□ プロジェクター確認: 後列から読めるか実機テスト
□ 画面共有確認: オンライン参加者の画面でテスト
```

**Bản Việt placeholder:**

```
[Checklist Visual Hierarchy]

[Font size]
- Title 32-40pt (Bold)
- Sub-message 24-28pt
- Body (Bullet / luận cứ) 20-24pt
- Chart label tối thiểu 18pt (NG: dưới 14pt)
- Footer / page number 12-14pt

[Font]
- Thống nhất: Meiryo / Yu Gothic / Noto Sans JP
- CẤM MS Mincho / MS Gothic (cũ + bị mờ)
- Font Latin: Arial / Helvetica / Segoe UI

[Layout]
- Alignment căn trái (chỉ heading dùng center)
- Line spacing 1.3-1.5
- Margin trên dưới trái phải tối thiểu 5%

[Contrast & color]
- Contrast ratio chữ vs nền >= 4.5:1
- Nền trắng hoặc xám nhạt (#F5F5F5)
- Bold tối đa 3 chỗ / slide

[Test thực tế]
- Test projector: đọc được từ hàng cuối
- Test screen share: kiểm tra trên màn của participant online
```

📝 **Ghi chú VN:** Bắt buộc test thực tế trước rehearsal. Đọc không được ở hàng cuối / screen share = FAIL.
📝 **Ghi chú JP:** リハーサル前に必ず実機テスト。後列・画面共有先で読めなければ FAIL。

### Rule 07 — Checklist Plan B trước Pitch

*JP: プレゼン Plan B チェックリスト*

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

**Bản Việt placeholder:**

```
[Checklist Plan B Pitch] (24h trước + sáng ngày pitch)

[Slide]
- File gốc PowerPoint/Keynote: cloud + local
- Bản PDF: USB×2 + local + cloud
- Google Slides Web backup
- Bản in: chỉ slide chính 5-10 bản

[Demo]
- Demo offline (local DB / mock data)
- Demo bản ghi hình (.mp4 USB+local) — cuối cùng của cuối cùng
- Test account demo: kiểm tra chạy được

[Network]
- Tethering 4G/5G bật sẵn
- Pocket Wi-Fi sạc đầy (dự phòng)
- Bật offline priority mode

[Thiết bị]
- Cáp HDMI
- Adapter USB-C → HDMI / VGA
- Lightning → HDMI (iPad backup)
- Sạc + dây nối dài
- Laser pointer (pin dự phòng)

[Tài liệu phát]
- Danh thiếp 20+ chiếc
- In slide chính 5 bản
- Brochure / case study 5 bản

[Redundancy team]
- Co-presenter cũng giữ 1 USB
- Send deck PDF qua Slack cho nhau
- Note liên hệ phòng hờ (khách sạn / hãng taxi)

[Sáng ngày pitch — final]
- Test connect đủ thiết bị
- Test audio / screen share
- Re-check appendix slide cho Q&A
```

📝 **Ghi chú VN:** Check 2 lần: 24h trước + sáng ngày. Tất cả 5 điểm ✅ thì mới lên đường. Còn sót 1 điểm thì mang theo xử lý sau.
📝 **Ghi chú JP:** 24h前に1回、当日朝に1回。5点全部 ✅ で出発。1点でも未済なら持参してから現地で対応。

### Rule 34 — Rubric Self-review Pitch (12 item / 30 phút)

*JP: プレゼン Self-review Rubric (12項目 / 30分)*

```
【プレゼン Self-review チェックリスト】 (12項目 / 30分)

評価: 1=要改善 / 2=不十分 / 3=平均 / 4=良好 / 5=優秀

■ 準備 (Preparation) — 3項目
□ 1. 7問チェックリスト埋めたか (rule 01)         _/5
□ 2. 1-slide-1-message 守ったか (rule 02)        _/5
□ 3. Plan B 用意 (PDF/handout/hotspot) (rule 07) _/5

■ デリバリー (Delivery) — 4項目
□ 4. Hook 30秒で attention 取れたか (rule 08)    _/5
□ 5. 時間管理約束守ったか (rule 13)              _/5
□ 6. 論理マーカー使ったか (rule 14)              _/5
□ 7. アイコンタクト均等 (rule 30 - 50/50)        _/5

■ Q&A — 3項目
□ 8. LASR 適用 (rule 23)                         _/5
□ 9. 持ち帰り適切 (rule 24)                      _/5
□ 10. 敵対的質問 bridge phrase (rule 25)         _/5

■ クロージング＋followup — 2項目
□ 11. Recap 3 + CTA 3 (rule 26)                  _/5
□ 12. 24h 内 acknowledgment メール (rule 28)     _/5

────────────────────────────
合計: __/60     平均: __/5

【3 Strengths】 — 4-5点項目から
1. ____
2. ____
3. ____

【3 Improvements】 — 1-3点項目から
1. ____ → drill: ____ までに ____
2. ____ → drill: ____ までに ____
3. ____ → drill: ____ までに ____

【次回 pitch までの commit】
- ____
```

**Bản Việt placeholder:**

```
[Checklist Self-review Pitch] (12 item / 30 phút)

Thang điểm: 1=cần cải thiện / 2=chưa đủ / 3=trung bình / 4=tốt / 5=xuất sắc

[Chuẩn bị — Preparation] — 3 item
- 1. Đã fill checklist 7 câu chưa (rule 01)         _/5
- 2. Có giữ 1-slide-1-message không (rule 02)       _/5
- 3. Có Plan B (PDF/handout/hotspot) chưa (rule 07) _/5

[Delivery] — 4 item
- 4. Hook 30 giây có lấy được attention không (rule 08)  _/5
- 5. Có giữ time-keeping promise không (rule 13)         _/5
- 6. Có dùng logical marker không (rule 14)              _/5
- 7. Eye contact đều không (rule 30 - 50/50)             _/5

[Q&A] — 3 item
- 8. Áp dụng LASR (rule 23)                              _/5
- 9. 持ち帰り phù hợp (rule 24)                          _/5
- 10. Bridge phrase với câu hostile (rule 25)            _/5

[Closing + Followup] — 2 item
- 11. Recap 3 + CTA 3 (rule 26)                          _/5
- 12. Mail acknowledgment trong 24h (rule 28)            _/5

────────────────────────────
Tổng: __/60     Trung bình: __/5

[3 Strengths] — chọn từ item 4-5 điểm
1. ____
2. ____
3. ____

[3 Improvements] — chọn từ item 1-3 điểm
1. ____ → drill: trước ____ làm ____
2. ____ → drill: trước ____ làm ____
3. ____ → drill: trước ____ làm ____

[Commit cho pitch tiếp theo]
- ____
```

📝 **Ghi chú VN:** Làm trong 24h sau pitch. Budget cố định 30 phút. Improvement bắt buộc kèm deadline + drill. Phase 4, 5 dùng cùng rubric để track đường cong cải thiện.
📝 **Ghi chú JP:** Pitch 終了 24h 以内に実施。30分 fixed budget。Improvements には必ず deadline + drill。Phase 4, 5 でも同 rubric を使い改善曲線を tracking。


## Báo cáo (1 mẫu)

### Rule 21 — Template Roadmap Dự án

*JP: プロジェクト ロードマップ テンプレート*

```
【プロジェクト ロードマップ】 (Phase X)

■ Gantt サマリ
                    5月  6月  7月  8月  9月  10月 11月 12月
①要件定義 (15日)    ███
②設計開発 (90日)         ████████████
③テスト (45日)                          ██████
④リリース移行(30日)                              ████

■ マイルストーン (◆重要 / ●通常 / ○任意)
| # | 記号 | 日付 | マイルストーン | 成果物 | 責任者 (vendor/client) |
|---|-----|------|--------------|--------|----------------------|
| 1 | ◆ | 6/30 | 要件定義 sign-off | 要件定義書 v1.0 | 〇〇 / 〇〇 |
| 2 | ● | 8/15 | 設計レビュー | 設計書 v1.0 | 〇〇 / 〇〇 |
| 3 | ● | 9/30 | コード完了 | β版ビルド | 〇〇 / 〇〇 |
| 4 | ◆ | 11/15 | UAT 完了 | UATレポート | 〇〇 / 〇〇 |
| 5 | ◆ | 12/15 | 本番リリース | リリースノート | 〇〇 / 〇〇 |

■ Buffer
- 設計レビュー後 1週間 (〇/〇-〇/〇) — スケジュール遅延吸収
- UAT 期間に 1週間予備 (〇/〇-〇/〇)

■ 前提条件 (Critical assumptions)
- 御社のテストデータ提供は 〇/〇 までに
- セキュリティ監査は弊社主導で 〇/〇-〇/〇 実施
- 本番環境アクセス権限は 〇/〇 までに付与

■ Risk → 対策
- 要件変更時: change control プロセス
- 移行失敗時: 旧環境 parallel 3ヶ月
```

**Bản Việt placeholder:**

```
[Roadmap dự án] (Phase X)

[Tóm tắt Gantt]
                    5월  6월  7월  8월  9월  10월 11월 12월
① Define req (15 ngày)  ███
② Design + Dev (90 ngày)     ████████████
③ Test (45 ngày)                            ██████
④ Release migrate (30 ngày)                          ████

[Milestone] (◆ quan trọng / ● bình thường / ○ tuỳ chọn)
| # | KH | Ngày | Milestone | Output | Owner (vendor / client) |
|---|----|------|-----------|--------|------------------------|
| 1 | ◆ | 30/6 | Sign-off requirement | Tài liệu req v1.0 | 〇〇 / 〇〇 |
| 2 | ● | 15/8 | Review thiết kế | Tài liệu design v1.0 | 〇〇 / 〇〇 |
| 3 | ● | 30/9 | Hoàn thành code | β build | 〇〇 / 〇〇 |
| 4 | ◆ | 15/11 | UAT xong | Báo cáo UAT | 〇〇 / 〇〇 |
| 5 | ◆ | 15/12 | Release production | Release note | 〇〇 / 〇〇 |

[Buffer]
- Sau review thiết kế 1 tuần (〇/〇-〇/〇) — hấp thụ trễ schedule
- Trong UAT có 1 tuần dự phòng (〇/〇-〇/〇)

[Điều kiện tiên quyết — Critical assumptions]
- Test data bên quý vị cung cấp trước 〇/〇
- Security audit do bên em chủ trì, thực hiện 〇/〇-〇/〇
- Quyền access môi trường production cấp trước 〇/〇

[Risk → đối sách]
- Thay đổi yêu cầu: quy trình change control
- Migrate fail: chạy song song env cũ 3 tháng
```

📝 **Ghi chú VN:** Gantt vẽ đậm để projector đọc được. Milestone 5±2 cái. Buffer 5-10% lịch thực. Điều kiện tiên quyết phải reflect vào hợp đồng.
📝 **Ghi chú JP:** Gantt は projector でも判読できるよう太め。Milestone 5±2 個。Buffer は実工期の 5-10%。前提条件は契約書にも反映。


**Tổng template:** 6
