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

| Speaker | Câu |
|---------|-----|
| **フオン** | 「皆さん、今週どうでしたか?」 |
| **ハイ** | 「Phase 2 障害で疲れました…」 |
| **リン** | 「印刷会社の件で迷いました…」 |
| **ズン** | 「松本様の reply 待ちが長くて辛かった…」 |
| **フオン** | 「うん、お疲れ様。来週も頑張ろう。」 |

**Vì sao xấu:** L1-L5 thuần phàn nàn (Problem) — không có Keep / Try / Action items. Vẫn cùng vấn đề tuần sau lặp lại.

---

## ✅ Hội thoại TỐT — KPT + Action items

*facilitator*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「Retrospective 開始。30分、KPT format。Notion テンプレに事前記入できた人から発表【1】。」 |
| **ハイ** | 「**Keep**: Phase 2 障害で SLA 通り escalation できた (5分→15分→30分)。**Problem**: 障害後のpost-mortem document 作成に2日かかった (24h target 未達)。**Try**: post-mortem テンプレを Notion に作成、初稿は 4h 以内目標。」 |
| **リン** | 「**Keep**: 印刷会社相談で3案 + matrix 持参できた。**Problem**: 自分の仮説 confidence 低めで時間かかった。**Try**: 仮説を最初に書いてから判断材料集める順序に変更。」 |
| **ズン** | 「**Keep**: 大垣様クレームで4ステップ運用できた。**Problem**: 松本様 reply 平均 8h、自分の Slack DM 頻度が少ない可能性。**Try**: 客先 DM を 1日2回 (10時・15時) routine 化。」 |
| **フオン** | 「いいね、Action items まとめ【2】: ① post-mortem テンプレ作成 (owner: ハイ、期限: 4/30、check: 5/2 retro) / ② 仮説先出し pattern (owner: リン、期限: 5/2 retro までに3回試行) / ③ 客先 DM routine (owner: ズン、期限: 5/9 retro までに4週運用) / ④ Decision Register に今週分3件追加 (owner: ズン+リン、期限: 来週月曜)【3】。」 |
| **フオン** | 「次週 retro は5/2、各 Action item の進捗 review が最初の議題。お疲れ様でした。」 |

📝 **Ghi chú:**
- 【1】**「事前記入できた人から」** — KPT phải pre-fill, không brainstorm trên spot. Tiết kiệm 30 phút thành 60 phút.
- 【2】**Action items mỗi Try có owner + deadline + check date** — không "皆で頑張る" mơ hồ.
- 【3】**「次週 retro は…review が最初の議題」** — close the loop. Action items không bị bỏ.

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

> **「KPT — Keep / Problem / Try、それぞれ Action item 化、owner + deadline + check 日まで明記。次週 retro 冒頭で先週の Action review。これが retrospective のループ。」**

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
