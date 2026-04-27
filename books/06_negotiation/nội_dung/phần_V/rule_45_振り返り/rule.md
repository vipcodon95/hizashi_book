# Rule 45 — Self-review post-mortem / 振り返りと改善

> **Luận điểm.** Sau MỖI vụ đàm phán (kể cả walk-away), trong vòng **1 tuần** chạy retrospective: **(1) What worked**, **(2) What didn't**, **(3) Counterfactual** (nếu làm khác thì sao), **(4) Pattern recognition** (lặp lại từ vụ trước?), **(5) Next-time commit**. Hương lead retro với Dũng + Tuấn. Skip retro = mỗi vụ học cùng lesson 3-4 lần.
>
> 商談ごとに 1 週間以内 post-mortem。「うまくいった点 / 改善点 / counterfactual / pattern / next commit」 5 セクション。Hương が lead、 commit を文書化。
>
> **Liên quan:** rule 09 (concession plan), rule 28 (撤退作法), rule 43 (escalation), sách 04 rule 45 (improvement loop).

---

## Bối cảnh / 場面

Phase 3 ¥17M ký xong, Phase 4 với new client cũng vừa kết thúc round 1. Hương schedule retro 1 giờ thứ Sáu chiều: Dũng + Tuấn + (Linh trên 通訳 vụ Phase 4). Format: 5 sections, doc commit lưu vào team wiki.

---

## ❌ Hội thoại XẤU — không có retro hoặc retro generic

*Phase 3 と同じ retro 学習なし · 青*

| Speaker | Câu |
|---------|-----|
| (1 ヶ月後 Phase 5 商談、 同じ pattern) **大垣** | 「価格 ¥22M は高い印象が…」 |
| **ズン** | 「では ¥20M でいかがでしょうか…」 |
| (商談後 Hương) **フオン** | 「ズン、 Phase 3 で学んだ 『高い』 ≠ 『discount』 のはずが、 また直接 discount したね。**retro してないでしょ?**」 |
| **ズン** | 「…してませんでした。」 |

**Vì sao xấu:** Phase 3 で習得すべき lesson が retro なしで forget → Phase 5 で repeat。¥2M margin loss = exact same lesson. Retro 1 時間 vs ¥2M loss → 圧倒的 ROI.

---

## ✅ Hội thoại TỐT — 5-section retro + doc commit

*retro 開始、 5 セクション template 共有 · ① worked · ② didn't · ② didn't · ③ Counterfactual · ④ Pattern · ⑤ Next commit、 doc 化*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「Phase 3 + Phase 4 R1 retro 1 時間。テンプレ 5 セクション【1】: ①What worked ②What didn't ③Counterfactual ④Pattern ⑤Next commit。Dũng から start。」 |
| **ズン** | 「Phase 3: BATNA 3 シナリオ + recap mail 24h + LOI → 本契約 2 段階で **predictable progress**。Phase 4 R1: JP「高い」を unbundle で reframe 成功。」 |
| **ズン** | 「Phase 3: 中村 CFO の indemnity 無制限 push に、当初 5 秒 freeze した。escalation trigger 認識 速度遅い。Phase 4 R1: Tuấn の VN style discount 即時止められず、 client memo まで signal 流れた。」 |
| **トゥアン** | 「私は VN style 自覚なく 10% 下げた。Dũng の eye signal も 0.5 秒 miss した。」 |
| **ズン** | 「**もし escalation trigger checklist を pre-print しておけば**【2】、indemnity push に 2 秒で react できた。**もし pre-MTG で Tuấn と「JP は内訳 unbundle、即 discount NG」 brief 1 分**していれば、Phase 4 R1 ratchet 防げた。」 |
| **フオン** | 「pattern: **VN BD は immediate concession に 流れがち**【3】。Phase 1 / 2 / 3 / 4 全部で発生。これは個人問題ではなく cultural default。team training で習慣化必要。」 |
| **ズン** | 「commit 3 つ【4】: (a) escalation trigger checklist を pocket card 化、 来週月曜まで。(b) JP 商談 pre-MTG の 1 分 brief を mandatory ritual 化。(c) Phase 5 retro で a/b の効果測定。」 |
| **フオン** | 「commit 文書化、 team wiki に保存。**3 ヶ月後 follow-up retro でこの commit の adherence 確認**【5】。お疲れ様。」 |

📝 **Ghi chú:**
- 【1】**5 セクション固定 template** = retro skip / surface-level 防止. counterfactual は最も学習量多い.
- 【2】**Counterfactual = 「もし〜していれば」** で具体的 alternative を spell out. 抽象な反省ではなく concrete next-time action.
- 【3】**Pattern recognition** = 1 回ではなく across vụ. cultural default だと判明すれば team-level intervention.
- 【4】**3 commit max** — 多すぎると adhere できず, 少なすぎると change なし.
- 【5】**Follow-up retro 3 ヶ月後** = commit が habit 化したか測定. これがないと commit は wishlist.

---

## 🎯 Câu chốt

> **「商談ごとに 1 週間以内 5 セクション retro。3 commit + 3 ヶ月 follow-up = lesson が habit 化。skip = 同じミスを repeat。」**
>
> *Mỗi vụ trong 1 tuần làm retro 5 sections. 3 commit + follow-up 3 tháng = lesson thành habit. Skip = lặp lỗi.*

---

## ⚠ Tránh

- Retro skip → 同じ lesson 3-4 vụ で repeat
- Generic 「次回 頑張ります」 commit → adherence 0
- Counterfactual section skip → lesson が abstract
- Commit 10 個 list → 1 個も adhere できない、3 個 max
- Follow-up retro なし → commit は wishlist
- Retro が blame session 化 → psychological safety なくなり honest input 消失
- Retro doc を save しない → 半年後検索不可、 同じ retro 繰り返し

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 振り返り | ふりかえり | Retro / nhìn lại |
| Post-mortem | ポストモーテム | Post-mortem |
| Counterfactual | カウンターファクチュアル | Giả định ngược |
| Pattern | パターン | Pattern |
| Commit | コミット | Cam kết |
| Pocket card | ポケットカード | Card bỏ túi |
| Adherence | アドヒアレンス | Mức độ tuân thủ |
| Habit 化 | habit か | Habit hóa |
| Psychological safety | 心理的安全性 | An toàn tâm lý |

---

## 📐 Template

Xem `conversation.json` → `templates[0]` (`format: "checklist"`) cho retro 5-section template với JP/VN.
