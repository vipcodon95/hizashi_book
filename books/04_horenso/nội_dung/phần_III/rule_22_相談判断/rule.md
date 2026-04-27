# Rule 22 — Khi nào cần tham vấn vs tự quyết / 相談 vs 自己決定

> **Luận điểm.** Không phải việc gì cũng phải tham vấn (相談), cũng không phải việc gì cũng tự quyết. Quyết theo **decision tree 2 trục**: **(1) Impact** (ảnh hưởng tới ai? sai thì hệ quả gì?) × **(2) Reversibility** (có rollback được không?). Quy tắc: **Impact lớn × Khó rollback → BẮT BUỘC tham vấn**. Impact nhỏ × Rollback dễ → tự quyết, báo cáo sau.
>
> 相談 vs 自己決定の判断軸：①影響範囲（誰に・どこまで）×②可逆性（やり直せるか）。両方とも「大」なら必ず相談。両方「小」なら自己決定 + 事後報告。
>
> **Liên quan:** rule 23 (chuẩn bị trước tham vấn), rule 25 (hỏi 判断材料), rule 30 (持ち帰り).

---

## Bối cảnh / 場面

Sáng thứ Tư. Em Dũng đang code 1 mình thì gặp 2 quyết định cùng lúc:
- **Quyết định A** — đổi tên biến `userId` → `user_id` trong file FE local (chưa merge)
- **Quyết định B** — đổi schema DB column `user_id` → `member_id` (production, đã có 50k record)

Lần đầu Dũng tham vấn cả 2 → chị Hương cau mày. Lần 2 áp decision tree.

---

## ❌ Hội thoại XẤU — tham vấn cả việc nhỏ

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、ご相談です。FEのローカルブランチで `userId` を `user_id` にリネームしたいのですが、よろしいでしょうか?」 |
| **フオン** | 「それ、私に聞くこと?ローカル・未マージ・あなた1人の作業範囲でしょ?」 |
| **ズン** | 「あ、念のため…」 |
| **フオン** | 「自己決定で OK、事後報告だけして。逆に DB の `user_id` を変える話があれば、それは絶対相談。判断軸を理解して。」 |

**Vì sao xấu:** L1 là quyết định **impact nhỏ** (chỉ local FE branch) × **reversibility cao** (chưa merge, undo dễ) → tự quyết. Tham vấn việc nhỏ làm sếp loãng tập trung và làm Dũng trông thiếu tự tin.

---

## ✅ Hội thoại TỐT — phân loại theo decision tree

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、判断軸に従って2件を整理しました。1件は事後報告、1件はご相談です【1】。」 |
| **フオン** | 「うん、聞きます。」 |
| **ズン** | 「**事後報告:** FEローカルブランチで `userId` を `user_id` にリネームしました。影響範囲ローカル + 未マージで可逆性も高いため自己決定としました【2】。」 |
| **ズン** | 「**ご相談:** DB の `user_id` カラムを `member_id` にリネームする提案がチームから出ております。本番5万レコード + 7サービスが参照しており、影響大 + 不可逆性高いため、独断は避けたく存じます【3】。」 |
| **フオン** | 「正しい切り分けね。1件目は OK、2件目はハーCTOも含めた相談会議をセットして。木曜午後に。」 |

📝 **Ghi chú:**
- 【1】**「判断軸に従って整理しました」** — show rằng Dũng đã tự phân loại trước. Sếp tin tưởng.
- 【2】**「影響範囲ローカル + 未マージで可逆性も高い」** — nêu rõ 2 trục để justify việc tự quyết.
- 【3】**「影響大 + 不可逆性高い」** — đối ngược: lý do tham vấn cũng theo 2 trục.

---

## 🧭 Decision Tree

```
                     Reversibility (có rollback được không?)
                    ┌───────────────┬───────────────┐
                    │     CAO       │     THẤP      │
        ┌───────────┼───────────────┼───────────────┤
        │   NHỎ     │ Tự quyết      │ Tự quyết +    │
 Impact │           │ + 事後報告    │ ngay 連絡     │
        ├───────────┼───────────────┼───────────────┤
        │   LỚN     │ Tham vấn nhanh│ ⚠ BẮT BUỘC   │
        │           │ (Slack thread)│ 相談 + 稟議  │
        └───────────┴───────────────┴───────────────┘
```

---

## 🎯 Câu chốt

> **「影響範囲 × 可逆性」 — 両方『大』なら必ず相談。両方『小』なら自己決定 + 事後報告で十分。」**

---

## ⚠ Tránh

- Tham vấn cả việc nhỏ → sếp loãng + Dũng thiếu tự tin.
- Tự quyết việc impact lớn / khó rollback → 1 sai lầm = mất 1 tuần khắc phục.
- 「念のため」 lý do duy nhất để tham vấn → không hợp lệ. Phải nêu rõ 影響 hoặc 不可逆性.
- Bỏ 事後報告 sau khi tự quyết → sếp không biết gì = vẫn là báo cáo sót.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 相談 | そうだん | Tham vấn |
| 自己決定 | じこけってい | Tự quyết |
| 判断軸 | はんだんじく | Trục đánh giá |
| 影響範囲 | えいきょうはんい | Phạm vi ảnh hưởng |
| 可逆性 | かぎゃくせい | Tính rollback được |
| 不可逆 | ふかぎゃく | Không rollback được |
| 事後報告 | じごほうこく | Báo cáo sau khi đã làm |
| 稟議 | りんぎ | Quy trình duyệt nội bộ |
