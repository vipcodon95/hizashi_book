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

| Vai | Câu |
|---------|-----|
| (1 ヶ月後 Phase 5 <ruby>商談<rt>しょうだん</rt></ruby>、 同じ pattern) **大垣** | 「価格 ¥22M は<ruby>高<rt>たか</rt></ruby>い<ruby>印象<rt>いんしょう</rt></ruby>が…」 |
|  | *Giá ¥22M tạo cảm giác cao...* |
| **ズン** | 「では ¥20M でいかがでしょうか…」 |
|  | *Vậy ¥20M có được không ạ...* |
| (<ruby>商談後<rt>しょうだんご</rt></ruby> Hương) **フオン** | 「ズン、 Phase 3 で<ruby>学<rt>まな</rt></ruby>んだ 『高い』 ≠ 『discount』 のはずが、 また<ruby>直接<rt>ちょくせつ</rt></ruby> discount したね。**retro してないでしょ?**」 |
|  | *Dũng, lesson 'cao không phải discount' học từ Phase 3 mà sao em discount thẳng nữa. Em không làm retro đúng không?* |
| **ズン** | 「…してませんでした。」 |
|  | *...em chưa làm ạ.* |

**Vì sao xấu:** Phase 3 で習得すべき lesson が retro なしで forget → Phase 5 で repeat。¥2M margin loss = exact same lesson. Retro 1 時間 vs ¥2M loss → 圧倒的 ROI.

---

## ✅ Hội thoại TỐT — 5-section retro + doc commit

*retro 開始、 5 セクション template 共有 · ① worked · ② didn't · ② didn't · ③ Counterfactual · ④ Pattern · ⑤ Next commit、 doc 化*

| Vai | Câu |
|---------|-----|
| **フオン** | 「Phase 3 + Phase 4 R1 retro 1 <ruby>時間<rt>じかん</rt></ruby>。テンプレ 5 セクション【1】: ①What worked ②What didn't ③Counterfactual ④Pattern ⑤Next commit。Dũng から start。」 |
|  | *Retro Phase 3 + Phase 4 R1 1 giờ. Template 5 sections: ①What worked ②What didn't ③Counterfactual ④Pattern ⑤Next commit. Dũng start.* |
| **ズン** | 「Phase 3: BATNA 3 シナリオ + recap mail 24h + LOI → <ruby>本契約<rt>ほんけいやく</rt></ruby> 2 <ruby>段階<rt>だんかい</rt></ruby>で **predictable progress**。Phase 4 R1: JP「<ruby>高<rt>たか</rt></ruby>い」を unbundle で reframe <ruby>成功<rt>せいこう</rt></ruby>。」 |
|  | *Phase 3: BATNA 3 scenario + recap mail 24h + LOI → contract 2 bước → predictable progress. Phase 4 R1: reframe JP 'cao' bằng unbundle thành công.* |
| **ズン** | 「Phase 3: <ruby>中村<rt>なかむら</rt></ruby> CFO の indemnity <ruby>無制限<rt>むせいげん</rt></ruby> push に、<ruby>当初<rt>とうしょ</rt></ruby> 5 <ruby>秒<rt>びょう</rt></ruby> freeze した。escalation trigger <ruby>認識<rt>にんしき</rt></ruby> <ruby>速度<rt>そくど</rt></ruby><ruby>遅<rt>おそ</rt></ruby>い。Phase 4 R1: Tuấn の VN style discount <ruby>即時<rt>そくじ</rt></ruby><ruby>止<rt>と</rt></ruby>められず、 client memo まで signal <ruby>流<rt>なが</rt></ruby>れた。」 |
|  | *Phase 3: lúc Nakamura CFO push indemnity unlimited, ban đầu em freeze 5 giây. Tốc độ nhận trigger escalation chậm. Phase 4 R1: không kịp dừng VN style discount của Tuấn, signal chạy đến client memo.* |
| **トゥアン** | 「<ruby>私<rt>わたし</rt></ruby>は VN style <ruby>自覚<rt>じかく</rt></ruby>なく 10% <ruby>下<rt>さ</rt></ruby>げた。Dũng の eye signal も 0.5 <ruby>秒<rt>びょう</rt></ruby> miss した。」 |
|  | *Anh không tự nhận ra mình theo VN style nên giảm 10%. Anh cũng miss eye signal của Dũng 0.5 giây.* |
| **ズン** | 「**もし escalation trigger checklist を pre-print しておけば**【2】、indemnity push に 2 <ruby>秒<rt>びょう</rt></ruby>で react できた。**もし pre-MTG で Tuấn と「JP は<ruby>内訳<rt>うちわけ</rt></ruby> unbundle、<ruby>即<rt>そく</rt></ruby> discount NG」 brief 1 <ruby>分<rt>ぷん</rt></ruby>**していれば、Phase 4 R1 ratchet <ruby>防<rt>ふせ</rt></ruby>げた。」 |
|  | *Nếu em pre-print escalation trigger checklist, có thể react trong 2 giây với indemnity push. Nếu pre-MTG brief 1 phút với Tuấn 'JP unbundle, KHÔNG discount ngay', có thể ngăn ratchet Phase 4 R1.* |
| **フオン** | 「pattern: **VN BD は immediate concession に <ruby>流<rt>なが</rt></ruby>れがち**【3】。Phase 1 / 2 / 3 / 4 <ruby>全部<rt>ぜんぶ</rt></ruby>で<ruby>発生<rt>はっせい</rt></ruby>。これは<ruby>個人<rt>こじん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>ではなく cultural default。team training で<ruby>習慣化<rt>しゅうかんか</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>。」 |
|  | *Pattern: VN BD hay nhảy vào immediate concession. Phase 1/2/3/4 đều xảy ra. Đây không phải lỗi cá nhân mà cultural default. Team training để habit hóa.* |
| **ズン** | 「commit 3 つ【4】: (a) escalation trigger checklist を pocket card <ruby>化<rt>か</rt></ruby>、 <ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby>まで。(b) JP <ruby>商談<rt>しょうだん</rt></ruby> pre-MTG の 1 <ruby>分<rt>ぷん</rt></ruby> brief を mandatory ritual <ruby>化<rt>か</rt></ruby>。(c) Phase 5 retro で a/b の<ruby>効果<rt>こうか</rt></ruby><ruby>測定<rt>そくてい</rt></ruby>。」 |
|  | *3 commits: (a) Pocket card hóa escalation trigger checklist, deadline thứ Hai tuần sau. (b) Mandatory ritual hóa 1-minute brief pre-MTG cho đàm phán JP. (c) Đo hiệu quả a/b ở retro Phase 5.* |
| **フオン** | 「commit <ruby>文書化<rt>ぶんしょか</rt></ruby>、 team wiki に<ruby>保存<rt>ほぞん</rt></ruby>。**3 ヶ月後 follow-up retro でこの commit の adherence <ruby>確認<rt>かくにん</rt></ruby>**【5】。お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>。」 |
|  | *Commit document hóa, lưu team wiki. 3 tháng sau follow-up retro để check adherence của commit này. Mọi người vất vả rồi.* |

📝 **Ghi chú:**
- 【1】**5 セクション固定 template** = retro skip / surface-level 防止. counterfactual は最も学習量多い.
- 【2】**Counterfactual = 「もし〜していれば」** で具体的 alternative を spell out. 抽象な反省ではなく concrete next-time action.
- 【3】**Pattern recognition** = 1 回ではなく across vụ. cultural default だと判明すれば team-level intervention.
- 【4】**3 commit max** — 多すぎると tuân thủ không nổi, 少なすぎると change なし.
- 【5】**Follow-up retro 3 ヶ月後** = commit が habit 化したか測定. これがないと commit là danh sách mong muốn rỗng.

---

## 🎯 Câu chốt

> **「商談ごとに 1 週間以内 5 セクション retro。3 commit + 3 ヶ月 follow-up = lesson が habit 化。skip = 同じミスを repeat。」**
>
> *Mỗi vụ trong 1 tuần làm retro 5 sections. 3 commit + follow-up 3 tháng = lesson thành thói quen. Bỏ qua = lặp lỗi.*

---

## ⚠ Tránh

- Retro skip → 同じ lesson 3-4 vụ で repeat
- Generic 「次回 頑張ります」 commit → mức độ tuân thủ = 0
- Counterfactual section skip → lesson が abstract
- Commit 10 個 list → không tuân thủ được dù 1 cái、3 個 max
- Follow-up retro なし → commit là danh sách mong muốn rỗng
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
