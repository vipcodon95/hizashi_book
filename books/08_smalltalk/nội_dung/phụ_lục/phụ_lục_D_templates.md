# Phụ lục D — Templates / テンプレート集

*Templates ready-to-print từ các rule có field `templates`.*

---

## Rule 08 — Memory bank — ghi nhớ specifics khách JP / 雑談メモバンク

### Memory Bank Single Customer Entry

```markdown
# 顧客名: [名前] [役職]

## 基本情報 (Static)
- **会社**: 
- **役職**: 
- **出身地**: 県/市/区 — 特産・方言メモ
- **誕生月**: (会社規定OKであれば)
- **入社/赴任年**: 

## 家族 (Update only when shared)
- **配偶者**: 職業・趣味 (only if shared)
- **子供**: 学年・部活・趣味 (only if shared)
- **ペット**: 

## 嗜好
- **好物**: 
- **苦手な食べ物**: 
- **アレルギー**: 
- **酒の好み**: 日本酒/焼酎/ワイン/ビール brand
- **タバコ**: 吸う/吸わない

## 趣味・関心
- **応援スポーツチーム**: 
- **趣味**: ゴルフ/釣り/カラオケ/読書
- **好きな旅行先**: 

## 会話ログ (Dynamic)
| 日付 | 場所 | トピック | New Info | Mood | Next-time hook |
|------|------|---------|----------|------|----------------|
| YYYY-MM-DD | dinner @ XX | 出身地ライラック | 娘さん北大2年 | warm | 3ヶ月後に留学進捗 |

## Follow-up Reminders
- [ ] 2027-06-15 — 娘さんの留学進捗を聞く
- [ ] 2027-08-01 — お子様の野球部最後の夏応援メッセージ
- [ ] 2027-12-25 — 年末挨拶メール

## NG / Sensitive
- 触れてはいけない話題 (e.g. 政治・前職・家族トラブル) — お客様が示唆した範囲で
```

### Post-Meeting Memo (Quick Capture)

```markdown
**DATE**: YYYY-MM-DD
**WHO**: [name + role]
**WHERE**: [office / restaurant / event]
**TOPIC** (3-5 keywords): 
**NEW INFO**: 
**REQUEST/PROMISE** (mình hứa làm gì): 
**MOOD** (warm/neutral/cool/stressed): 
**NEXT HOOK** (3ヶ月後): 
**FOLLOW-UP TASK** (Salesforce / Notion):
```

### Pre-Meeting 3-Min Review Checklist

```markdown
## Trước cuộc gặp — 3 phút mở Notion/Salesforce

- [ ] **Tên + công ty + vai trò** — đúng không
- [ ] **Lần gần nhất gặp**: ngày + nơi + topic
- [ ] **5 elements**: 出身地 / 食 / Sport team / Family / 前回話題
- [ ] **Promise outstanding** — mình có hứa gửi gì chưa làm?
- [ ] **News flash** — team baseball/sumo của khách thắng/thua tuần này?
- [ ] **Open hook** chuẩn bị — 1 câu mở thiên về 雑談 dựa info cũ
- [ ] **NG topic refresher** — chủ đề tránh
```

### 3-Month Follow-up Email Template

```markdown
件名: [前回トピック] その後いかがでしょうか?

[役職] [姓]様

お世話になっております。
ティエンファットの[自分名]でございます。

[YYYY年M月]に[場所]でお会いさせていただきました際、
[具体的なトピック — 例: お嬢様のスウェーデン留学のご準備]についてお話を伺いました。

その後、いかがお進みでしょうか?

[Bridge to current — 例: 春の[出身地]、桜の季節になりましたね]。
[次回会いたい trigger — 例: 5月にそちら方面に出張の予定がございます]。

もしご都合よろしければ、ぜひ近況をお伺いしたく、
お茶でもご一緒できれば嬉しく存じます。

何卒よろしくお願いいたします。

[自分名]
ティエンファット
```

---

## Rule 08 — Memory bank — duy trì lâu dài / 関係維持の記憶バンク

### Template 5
*Sau mỗi cuộc gặp / dinner. 5-7 facts mới + tagged với date.*

```markdown
# 👤 [Tên khách] — [社名]

## 🏷 Tags
- 性別 / 年齢層: 
- 出身: [Prefecture] / [区/市]
- 役職: 
- 入社年: (nếu biết)

## 🍱 食 — Preferences
- 好き: 
- 苦手: (vd: 生牡蠣)
- アレルギー: 
- お気に入り酒: (vd: 獺祭, 麦焼酎)

## ⚽ Sport / Hobby
- 応援チーム: (vd: 阪神タイガース)
- 趣味: (vd: ゴルフ、登山)
- ホームコース / 山域: 

## 👨‍👩‍👧‍👦 Family
- 配偶者: 
- お子さん: (年齢 / 学年)
- お孫さん: 
- 親の状況: (健在 / 介護中 — sensitive)

## 🎂 Important Dates
- 誕生日: (NG hỏi nhưng nếu họ kể, ghi)
- 入社記念日: 
- お子さん受験年: 

## 💬 過去の会話 — Conversation Log
- YYYY-MM-DD [場所]: [topic + chi tiết quan trọng]
  - 例: 2026-03-15 銀座ベルトラム: お嬢様の共通テスト来年1月、最近スランプ気味と心配。長女は東京の大学希望。
  - 例: 2026-04-10 Zoom: 桂米朝の落語ファン、特に『地獄八景』が好き。

## ⚠ NG/Sensitive
- 触れない話題: (vd: 元配偶者、亡くなった親、特定の歴史トピック)
- 過去の地雷: (mình lỡ chạm gì, ghi để không lặp)

## 🎯 Next Action
- [ ] [約束したこと、リンク送る、本紹介する etc]
- [ ] 次回会う時referenceする話題:

## 📅 Last Updated: YYYY-MM-DD
```

### Template 6
*Trước mỗi họp / call / dinner. 3 phút review CRM.*

```markdown
# 🔍 Pre-meeting 3-min review — [Khách] — [Date]

## ⏱ 0:00-1:00 — Identity refresh
- [ ] Tên đầy đủ + 役職: 
- [ ] 出身: 
- [ ] 入社/関係history với 弊社:

## ⏱ 1:00-2:00 — Last conversation review
- [ ] 前回いつ・どこで会った? 
- [ ] 前回 các topic 雑談 đã nói:
- [ ] 前回 自分が約束したこと → 履行状況:
  - [ ] (tick nếu đã làm — nếu chưa, làm trước cuộc gặp này)

## ⏱ 2:00-3:00 — Topics for today
- [ ] 今日 mở topic gì để start ấm áp?
  - 例: 「お嬢様の受験、いかがですか?」
  - 例: 「広島カープのドラフト、見られました?」
- [ ] Mention được 1 fact mới (NHK / 47News / Tabelog) liên quan quê khách?
- [ ] 避けるべき topic 今日:

## ✅ READY — go in

---

💡 **Note:** Đầu tiên thử 1 tuần — sau 30 ngày sẽ thấy senior có cảm nhận khác hẳn về mình.
```

---

## Rule 08 — Self-review + practice / 振り返りと練習

### Template 7
*15 phút sau dinner / call / 会食. Save vào personal Notes hệ thống.*

```markdown
# 📅 Self-Review — [YYYY-MM-DD] — [Session name]

## 📍 Context
- 場所: 
- 参加者: 
- 自分の役割: (host / order / chỉ tham gia)
- 時間: 一次? 二次? 締め?
- 全体時間: ~Xh

## 🎯 3 WIN — Cái mình làm ĐÚNG
1. 
2. 
3. 

(Tip: phải concrete — phrase nào, action nào, react của khách ra sao)

## ❌ 3 MISS — Cái mình LỠ
1. ...  
   **NEXT:** [concrete next action]
2. ...  
   **NEXT:** [...]
3. ...  
   **NEXT:** [...]

## 🔁 3 FOLLOW-UP — Cần làm sau session này
- [ ] [Hứa gì với khách?] — by when?
- [ ] [Memory bank entry cập nhật] — done?
- [ ] [Internal sharing với team mình?] — by when?

## 📊 Self-rating
- 全体: __/10
- 改善点 chính: 
- 1 phrase mới học hôm nay: 

---

## 💡 Pattern noted (để cập nhật vào playbook cá nhân)
- (vd: 'お酌 + label hướng senior = nodding warm' → confirm pattern works)
```

### Template 8
*Sun afternoon. Pick 1 rule sách 08 / tuần. 1 năm = 51 rules.*

```markdown
# 🏋 Weekly Practice — Week [N] of [YYYY]

## 🎯 This week's rule: [Rule N — slug]
- Sách 08 reference: 

## ⏱ 30-min routine

### 0:00-5:00 — Pick + read
- [ ] Open rule.md
- [ ] Đọc lại 'Tâm lý JP' + 'Câu vàng copy-paste'

### 5:00-10:00 — Watch dialogue
- [ ] Đọc qua 3-4 scenarios
- [ ] Highlight 1 phrase mới chưa quen

### 10:00-20:00 — Voice practice
- [ ] Voice record (phone) mình thử say 3 scenarios với pace JP
- [ ] Listen back, note 1 từ phát âm yếu

### 20:00-25:00 — Compare + correct
- [ ] (Nếu có TTS audio) compare với reference
- [ ] Pick 1 phrase repeat 5 lần đúng accent

### 25:00-30:00 — Apply plan
- [ ] This week, apply phrase nào trong call thực?
- [ ] Notify mình bằng calendar/sticky note

## ✅ Done
- [ ] Saved this entry
- [ ] Set reminder for next week's rule

---

## 📈 Progress tracker
- Tuần đã hoàn thành: [N] / 51
- Rule đã master (apply 3 lần thực tế OK): [list]
- Rule còn yếu: [list]
```

---

## Rule 10 — Quê quán — đào sâu / 出身地の話題

### Template 9

```markdown

```

---
