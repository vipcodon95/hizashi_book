---
id: 8007032
curriculum_id: 8007
order_index: 32
node_type: rule
title: "Rule 32 — LOI first, contract draft next / 契約書ドラフト・LOI"
rule_no_original: "32"
slug: "LOI契約"
part_original: "phần_IV"
language: bilingual
---
# Rule 32 — LOI first, contract draft next / 契約書ドラフト・LOI
> **Luận điểm.** Sau recap mail OK, KHÔNG nhảy thẳng sang full contract. Bước trung gian: **LOI (Letter of Intent)** — văn bản 1-2 trang xác nhận **commercial terms + intent to enter contract**, ký 2 bên trong 1-2 tuần. Sau LOI mới là contract draft (4-8 tuần). LOI thiếu = contract draft sẽ bị "重要条件もう一度ね" → re-negotiation.
>
> 商談合意 → LOI (1-2 ページ、commercial terms 確認) → 契約書ドラフト (詳細条項) の 2 段階。LOI を飛ばすと、契約書段階で「主要条件再確認」が発生し再交渉となる。
>
> **Liên quan:** rule 30 (合意確認), rule 31 (recap mail), rule 33 (条項調整).

---

## Bối cảnh / 場面
Recap mail OK reply nhận được. Tuấn đề xuất "LOI khỏi cần, làm contract draft luôn cho nhanh". Hương phủ định — Phase 3 ¥17M qua ringi 5/7, LOI là cây cầu giữa miệng và contract.

---

## Hội thoại XẤU — skip LOI, jump to full contract
*Slack 内部 · 困*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、recap OK 来たし、契約書ドラフトを直接送ろう。LOI 余計な工程じゃない？」 |
| **ズン** | 「では契約書 v1 を作成して大垣様に送ります。」 |
| (2 週間後) **大垣** | 「ズン様、契約書 v1 拝見しました。**ところで価格 ¥17M は税込ですよね？**」 |
| **ズン** | 「いえ、税抜で recap メールに記載しております…」 |
| **大垣** | 「**社内では税込前提で稟議が動いており**、ここから差額で再交渉になります…」 |

**Vì sao xấu:** Skip LOI → commercial terms (giá, term, scope) chỉ ở mail, không có chữ ký. Khách dispute "tax inclusive vs exclusive" → re-negotiation ¥1.7M. LOI 1 trang ký 2 bên đã ngăn được chính xác chuyện này.

---

## Hội thoại TỐT — LOI 1-2 trang ký trước contract draft
*Slack · Slack Hương*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「ズン、recap OK 来たね。**次は LOI ドラフト 1-2 ページ**【1】を準備して。 commercial terms 6 項目だけ。詳細条項は後の契約書 draft で詰める。」 |
| **ズン** | 「承知しました。LOI v1 作成して、本日中に弊社内で legal レビュー → 明日大垣様に送付いたします。」 |
| (翌日 LOI 送信、件名:「【LOI】Phase 3 業務委託に関する基本合意書 ご送付の件」) **本文:** | 「Phase 3 業務委託の主要条件 6 項目をまとめた LOI をお送りいたします。**ご捺印頂きましたら、続いて 4 週間以内に本契約書ドラフトをご提示**【2】いたします。」 |
| (3日後) **大垣** | 「ズン様、LOI 拝見しました。**社内 legal も問題なし**、税抜価格を明記頂いており明確です。本日捺印して PDF 送付いたします。」 |
| **ズン** | 「LOI 捺印戻り完了。次は本契約書 draft v1 を 4 週間以内に。条項面の調整に集中できます【3】。」 |

📝 **Ghi chú:**
- 【1】**LOI 6 項目** = 価格 (税抜明記) / 期間 / スコープ summary / SLA / 支払条件 / 効力発生日. 詳細条項 (indemnity, IP detail, termination) は本契約へ.
- 【2】**LOI → 本契約書 4 週間 commitment** = pace control. 1 ページ LOI が 30 ページ本契約の foundation.
- 【3】**LOI 段階で commercial が lock 済み** → 本契約 negotiation は "条項" だけ。商務的 re-open しない (rule 33 へブリッジ).

---

## Cụm từ mẫu
> **「LOI = 商務合意のロック。本契約 = 条項詳細。順番を飛ばすと商務再交渉が発生する。」**
>
> *LOI khóa commercial. Contract khóa terms. Skip LOI = commercial sẽ re-open lúc draft.*

---

## Tránh
- "LOI 余計な工程" mindset → 4 週間 contract draft 中 1 つ条件異見 = 全体 re-open
- LOI に税込/税抜の表記なし → trap 100%
- LOI を法務レビューなしで送付 → typo / wording が後で binding interpretation 問題に
- LOI 送付して 1 ヶ月放置 → 失効 / 関心冷め; **捺印期限 2 週間** 明記

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| LOI | エル・オー・アイ | Letter of Intent |
| 基本合意書 | きほんごういしょ | Basic agreement (LOI JP terminology) |
| 捺印 | なついん | Đóng dấu (sign + seal) |
| 本契約書 | ほんけいやくしょ | Main contract |
| 主要条件 | しゅようじょうけん | Commercial terms cốt lõi |
| 効力発生日 | こうりょくはっせいび | Ngày có hiệu lực |
| 法務 | ほうむ | Bộ phận pháp chế / Legal |
| 税抜 | ぜいぬき | Chưa bao gồm thuế |

---

## Template
Xem `conversation.json` → `templates[0]` (`format: "report"`) cho LOI 1-2 trang JP/VN với 6 commercial term sections.
