# Rule 21 — Xin clarification khi không hiểu / 不明点の確認

> **Luận điểm.** Không hiểu → **PHẢI** hỏi lại. Im lặng = đối phương tưởng đã đồng ý → sau này phát sinh sai sót lớn. Câu xin clarification chuẩn: 「申し訳ございません、〇〇という点をもう一度ご説明いただけますでしょうか？」 — chỉ rõ điểm không hiểu, không nói "tất cả" mơ hồ.
>
> 不明点はその場で確認する。曖昧なまま進めると後の手戻りが大きい。
>
> **Liên quan:** Rule 19 (xin lượt), Rule 20 (5W1H), Rule 24 (tóm tắt).

---

## Bối cảnh / 場面

Anh Matsumoto đang giải thích về cấu trúc phân quyền mới (RBAC) bằng thuật ngữ chuyên môn. Em Dũng nghe lướt qua nhưng có 1 phần không hiểu. Theo phản xạ, em định gật đầu cho qua.

---

## ❌ Hội thoại XẤU — gật đầu cho qua

*không hiểu nhưng gật đầu · 2 tuần sau, design sai → phải làm lại · sau cuộc họp tiếp theo*

| Speaker | Câu |
|---------|-----|
| **松本** | 「権限は組織階層と職務属性のクロスマトリックスで管理します。」 |
| **ズン** | 「はい、承知しました。」 |
| **フオン** | 「ズン、なんでその場で確認しなかったの？2週間ロスしたよ。」 |

**Vì sao xấu:** "承知しました" = "đã hiểu". Nói khi không hiểu → cam kết sai → 2 tuần sau phát hiện thì rework rất tốn. Khách Nhật không trách, nhưng trust giảm.

---

## ✅ Hội thoại TỐT — chỉ rõ điểm không hiểu

| Speaker | Câu |
|---------|-----|
| **松本** | 「権限は組織階層と職務属性のクロスマトリックスで管理します。」 |
| **ズン** | 「申し訳ございません、『クロスマトリックス』という点をもう一度ご説明いただけますでしょうか【1】？」 |
| **松本** | 「はい。例えば、部長という階層と、経理という職務、両方を満たす人だけが見られる、という設計です。」 |
| **ズン** | 「ありがとうございます。階層 AND 職務、両方の条件を満たす場合のみアクセス可、という認識でよろしいでしょうか【2】？」 |

📝 **Ghi chú:**
- 【1】**「〇〇という点をもう一度ご説明いただけますでしょうか？」** — chỉ rõ thuật ngữ không hiểu (「クロスマトリックス」). Không nói 「全部分からない」 — sẽ làm đối phương phải giải thích lại từ đầu.
- 【2】**「〜という認識でよろしいでしょうか？」** — sau khi nghe giải thích, paraphrase lại để confirm hiểu đúng. Đây là kỹ thuật "active listening" chuẩn JP business.

---

## 🎯 Câu chốt

> **「申し訳ございません、〇〇という点をもう一度ご説明いただけますでしょうか？」**
>
> *Hỏi ngay, đừng giả vờ hiểu. Nhật rất ghét "yes" giả.*

---

## ⚠ Tránh

- Gật đầu, nói 「承知しました」 khi chưa thực sự hiểu.
- Nói 「全部分かりません」 — đối phương phải giải thích lại từ đầu, mất 5-10 phút.
- Hỏi sau cuộc họp qua chat — lỡ mất cơ hội confirm trước nhân chứng.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 不明点 | ふめいてん | Điểm không rõ |
| 認識 | にんしき | Nhận thức / cách hiểu |
| 階層 | かいそう | Phân cấp |
| 職務 | しょくむ | Chức trách / nhiệm vụ |
| 権限 | けんげん | Quyền hạn |
| 手戻り | てもどり | Phải làm lại / rework |
