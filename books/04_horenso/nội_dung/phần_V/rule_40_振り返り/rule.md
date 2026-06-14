# Rule 40 — Reflection + cải tiến / 振り返りと改善

> **Luận điểm.** Rule 38 là **self** diagnostic, rule 40 là **team** retrospective. Cuối tuần (16:00 thứ Sáu, 30 phút) team chạy **KPT format**: **Keep** (giữ tiếp những gì tốt), **Problem** (vấn đề tuần này), **Try** (thử mới tuần sau). Output là **Action items** với **owner + deadline + check date**. Không có action item = không phải retrospective. Quy tắc: **mỗi Problem phải có ít nhất 1 Try, mỗi Try phải có 1 owner + 1 ngày check**. Format đính kèm template.
>
> 週次 retrospective KPT: Keep (継続) / Problem (問題) / Try (新規試行) → Action items (owner+期限+check日)。「ふんわり振り返り」は次週も同じ問題を生む。
>
> **Liên quan:** rule 27 (DR), rule 38 (自己診断), rule 39 (チーム文化).

---

## Bối cảnh / 場面

Thứ Sáu 25/4 16:00. Team retrospective tuần. Lần đầu chỉ "phàn nàn" không có action. Lần 2 đúng KPT + action items.

---

## ❌ Hội thoại XẤU — phàn nàn không action

| Vai | Câu |
|---------|-----|
| **フオン** | 「皆さん、今週どうでしたか？」 |
|  | *Mọi người, tuần này thế nào?* |
| **ハイ** | 「Phase 2 <ruby>障害<rt>しょうがい</rt></ruby>で<ruby>疲<rt>つか</rt></ruby>れました…」 |
|  | *Sự cố Phase 2 mệt quá ạ...* |
| **リン** | 「<ruby>印刷会社<rt>いんさつがいしゃ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>で<ruby>迷<rt>まよ</rt></ruby>いました…」 |
|  | *Vụ nhà in em phân vân...* |
| **ズン** | 「<ruby>松本様<rt>まつもとさま</rt></ruby>の reply <ruby>待<rt>ま</rt></ruby>ちが<ruby>長<rt>なが</rt></ruby>くて<ruby>辛<rt>つら</rt></ruby>かった…」 |
|  | *Đợi anh Matsumoto reply lâu mệt...* |
| **フオン** | 「うん、お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>。<ruby>来週<rt>らいしゅう</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ろう。」 |
|  | *Ừ, mọi người vất vả. Tuần sau cố gắng tiếp nhé.* |

**Vì sao xấu:** L1-L5 thuần phàn nàn (Problem) — không có Keep / Try / Action items. Vẫn cùng vấn đề tuần sau lặp lại.

---

## ✅ Hội thoại TỐT — KPT + Action items

*facilitator*

| Vai | Câu |
|---------|-----|
| **フオン** | 「Retrospective <ruby>開始<rt>かいし</rt></ruby>。30<ruby>分<rt>ぷん</rt></ruby>、KPT format。Notion テンプレに<ruby>事前記入<rt>じぜんきにゅう</rt></ruby>できた<ruby>人<rt>ひと</rt></ruby>から<ruby>発表<rt>はっぴょう</rt></ruby>【1】。」 |
|  | *Bắt đầu retrospective. 30 phút, format KPT. Ai pre-fill xong template Notion thì present trước.* |
| **ハイ** | 「**Keep**: Phase 2 <ruby>障害<rt>しょうがい</rt></ruby>で SLA <ruby>通<rt>どお</rt></ruby>り escalation できた (5<ruby>分<rt>ふん</rt></ruby>→15<ruby>分<rt>ふん</rt></ruby>→30<ruby>分<rt>ぷん</rt></ruby>)。**Problem**: <ruby>障害後<rt>しょうがいご</rt></ruby>のpost-mortem document <ruby>作成<rt>さくせい</rt></ruby>に2<ruby>日<rt>にち</rt></ruby>かかった (24h target <ruby>未達<rt>みたつ</rt></ruby>)。**Try**: post-mortem テンプレを Notion に<ruby>作成<rt>さくせい</rt></ruby>、<ruby>初稿<rt>しょこう</rt></ruby>は 4h <ruby>以内<rt>いない</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>。」 |
|  | *[Keep] Sự cố Phase 2 escalate đúng SLA (5p → 15p → 30p). [Problem] Sau sự cố tài liệu post-mortem mất 2 ngày (vượt target 24h). [Try] Tạo template post-mortem trong Notion, target draft đầu trong 4h.* |
| **リン** | 「**Keep**: <ruby>印刷会社<rt>いんさつがいしゃ</rt></ruby><ruby>相談<rt>そうだん</rt></ruby>で3<ruby>案<rt>あん</rt></ruby> + matrix <ruby>持参<rt>じさん</rt></ruby>できた。**Problem**: <ruby>自分<rt>じぶん</rt></ruby>の<ruby>仮説<rt>かせつ</rt></ruby> confidence <ruby>低<rt>ひく</rt></ruby>めで<ruby>時間<rt>じかん</rt></ruby>かかった。**Try**: <ruby>仮説<rt>かせつ</rt></ruby>を<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてから<ruby>判断材料<rt>はんだんざいりょう</rt></ruby><ruby>集<rt>あつ</rt></ruby>める<ruby>順序<rt>じゅんじょ</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>。」 |
|  | *[Keep] Tham vấn vụ nhà in em mang đủ 3 option + matrix. [Problem] Confidence của giả thuyết em hơi thấp nên tốn thời gian. [Try] Đổi thứ tự — viết giả thuyết trước rồi mới tập dữ kiện.* |
| **ズン** | 「**Keep**: <ruby>大垣様<rt>おおがきさま</rt></ruby>クレームで4ステップ<ruby>運用<rt>うんよう</rt></ruby>できた。**Problem**: <ruby>松本様<rt>まつもとさま</rt></ruby> reply <ruby>平均<rt>へいきん</rt></ruby> 8h、<ruby>自分<rt>じぶん</rt></ruby>の Slack DM <ruby>頻度<rt>ひんど</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ない<ruby>可能性<rt>かのうせい</rt></ruby>。**Try**: <ruby>客先<rt>きゃくさき</rt></ruby> DM を 1<ruby>日<rt>にち</rt></ruby>2<ruby>回<rt>かい</rt></ruby> (10<ruby>時<rt>じ</rt></ruby>・15<ruby>時<rt>じ</rt></ruby>) routine <ruby>化<rt>か</rt></ruby>。」 |
|  | *[Keep] Khiếu nại anh Ōgaki em chạy đúng 4 bước. [Problem] anh Matsumoto reply trung bình 8h, có thể do em DM Slack ít. [Try] Routine khách 2 lần/ngày (10h, 15h).* |
| **フオン** | 「いいね、Action items まとめ【2】: ① post-mortem テンプレ<ruby>作成<rt>さくせい</rt></ruby> (owner: ハイ、<ruby>期限<rt>きげん</rt></ruby>: 4/30、check: 5/2 retro) / ② <ruby>仮説先出<rt>かせつさきだ</rt></ruby>し pattern (owner: リン、<ruby>期限<rt>きげん</rt></ruby>: 5/2 retro までに3<ruby>回<rt>かい</rt></ruby><ruby>試行<rt>しこう</rt></ruby>) / ③ <ruby>客先<rt>きゃくさき</rt></ruby> DM routine (owner: ズン、<ruby>期限<rt>きげん</rt></ruby>: 5/9 retro までに4<ruby>週<rt>しゅう</rt></ruby><ruby>運用<rt>うんよう</rt></ruby>) / ④ Decision Register に<ruby>今週分<rt>こんしゅうぶん</rt></ruby>3<ruby>件<rt>けん</rt></ruby><ruby>追加<rt>ついか</rt></ruby> (owner: ズン+リン、<ruby>期限<rt>きげん</rt></ruby>: <ruby>来週月曜<rt>らいしゅうげつよう</rt></ruby>)【3】。」 |
|  | *Tốt, tổng hợp Action items: [1] Tạo template post-mortem (owner: Hải, deadline: 30/4, check: retro 2/5) / [2] Pattern "giả thuyết trước" (owner: Linh, deadline: thử 3 lần trước retro 2/5) / [3] Routine DM khách (owner: Dũng, deadline: chạy 4 tuần trước retro 9/5) / [4] Thêm 3 mục tuần này vào Decision Register (owner: Dũng + Linh, deadline: thứ Hai tuần sau).* |
| **フオン** | 「<ruby>次週<rt>じしゅう</rt></ruby> retro は5/2、<ruby>各<rt>かく</rt></ruby> Action item の<ruby>進捗<rt>しんちょく</rt></ruby> review が<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>議題<rt>ぎだい</rt></ruby>。お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>でした。」 |
|  | *Retro tuần sau là 2/5, review tiến độ từng Action item là agenda đầu. Mọi người vất vả.* |

📝 **Ghi chú:**
- 【1】**「事前記入できた人から」** — KPT phải pre-fill, không brainstorm tại chỗ. Tiết kiệm 30 phút thành 60 phút.
- 【2】**Action items mỗi Try có owner + deadline + check date** — không "皆で頑張る" mơ hồ.
- 【3】**「次週 retro は…review が最初の議題」** — đóng vòng lặp. Action items không bị bỏ.

---

## 🎯 KPT Template

```
■ Keep (今週うまくいったこと、来週も継続)
  - 〇〇 (具体的事案)
  - 〇〇

■ Problem (今週の課題、解決すべきこと)
  - 〇〇 (具体的事案 + impact)
  - 〇〇

■ Try (来週試したい改善案 — 各 Problem に最低1つ)
  - 〇〇 ← 上記 Problem ① の解決
  - 〇〇 ← 上記 Problem ② の解決

■ Action Items (Try を実行可能形式に)
  - [ ] Action 1 / Owner: 〇〇 / 期限: 〇〇 / 次回 check: 〇〇 retro
  - [ ] Action 2 / Owner: 〇〇 / 期限: 〇〇 / 次回 check: 〇〇 retro
```

---

## 🎯 Câu chốt

> **「KPT — Keep / Problem / Try、それぞれ Action item <ruby>化<rt>か</rt></ruby>、owner + deadline + check <ruby>日<rt>び</rt></ruby>まで<ruby>明記<rt>めいき</rt></ruby>。<ruby>次週<rt>じしゅう</rt></ruby> retro <ruby>冒頭<rt>ぼうとう</rt></ruby>で<ruby>先週<rt>せんしゅう</rt></ruby>の Action review。これが retrospective のループ。」**

---

## ⚠ Tránh

- Retrospective = phàn nàn 30 phút mà không Try → tuần sau lặp lại.
- Try mơ hồ kiểu 「次から気をつける」 — không actionable.
- Owner = "皆" → ai cũng = không ai.
- Skip retro 2 tuần liên tiếp → mất feedback loop, problem tích tụ.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 振り返り | ふりかえり | Reflection / retrospective |
| 改善 | かいぜん | Cải tiến |
| KPT | KPT | Keep/Problem/Try |
| 試行 | しこう | Thử / experiment |
| 継続 | けいぞく | Tiếp tục |
| 課題 | かだい | Vấn đề / challenge |
| 進捗 review | しんちょく review | Review tiến độ |
| ファシリテーター | facilitator | Facilitator |
| pre-fill | pre-fill | Điền trước |
