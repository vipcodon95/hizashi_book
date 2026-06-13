# Consolidated Fix List — batch_0051_0060

## P1 — CRITICAL (consensus 3 council)

### 1. R_0057 — Cultural error uống miso bằng đũa (linguist + pedagogue + domain ALL flag)
- Câu 8 `みそ汁もはしで飲みます` SAI cultural fact
- **Fix**: Đổi → `みそ汁はおわんを持って飲みます。具(ぐ)ははしで食べます。`
- Có thể chia 1 câu thành 2 câu (sentence_count tăng) hoặc giữ 1 câu compact `みそ汁はおわんから直接飲みます`
- Update vocab: thêm `おわん` (cái bát) hoặc `具` (ぐ - cái cái trong canh)
- Update process + translation

### 2. R_0060 — JSON copy-paste bug (linguist critical)
- Câu `やきそばを食べました` nhưng chunks ghi `やきそばも` + guide nói "と liệt kê → も"
- **Fix**: Sửa chunks thành `やきそばを / 食べました`, guide đổi sang phân tích を đối tượng. Bỏ to/mo references không tồn tại trong câu.

## P1 — Major

### 3. R_0057 câu 5 ambiguity 茶碗
- `ごはんは左手で持ちます` — gây hiểu nhầm "cầm cơm tay trái"
- **Fix**: Đổi → `ごはんのちゃわんは左手で持ちます`. Vocab thêm `ちゃわん` (chén cơm).

### 4. R_0057 — Add tabu 箸渡し (Domain expert)
- Bài chỉ có 立て箸. 箸渡し cũng critical (giống nghi lễ tang).
- **Fix**: Thêm 1 câu `はしからはしへ食べ物を渡しません。` (sentence_count +1).

### 5. R_0055 — Giá ramen outdated 2026
- 800円 → reality 2026 ≥ 1000円
- **Fix**: Đổi `800円` → `1000円` (hoặc 950円). Update text + Q answers nếu Q hỏi giá.

### 6. R_0054 — Câu `みそ汁は朝から晩まで飲みます` bookish/illogical (linguist)
- Native không uống canh "từ sáng đến tối liên tục"
- **Fix**: Đổi → `みそ汁は毎日朝ごはんに飲みます。` HOẶC `みそ汁は朝ごはんによく飲みます。`

### 7. R_0053 — Opinion as fact + 「みそ汁もはしで飲みます」 echo
- `すしは日本で一番おいしい食べ物です` quá tuyệt đối
- **Fix**: Đổi → `すしは私の大好きな日本の食べ物です。` (hedge opinion)

### 8. R_0060 — `みんなで` guide chưa standardize
- Theo lưu ý đã sửa: `みんなで` = trợ từ chỉ NHÓM (group), không phải "cùng nhau"
- **Fix**: Update process guide câu chứa `みんなで` → "で chỉ nhóm thực hiện hành động (みんな = mọi người)"

### 9. R_0060 vượt 10 câu (sc=11)
- Spec cấp 2 max 10 câu
- **Fix**: Cắt 1 câu chi tiết phụ (vd `ビールも飲みました`)

## P2 — Should fix

### 10. R_0058 — `子供も大人も楽しいです` semantic awkward
- 楽しい dùng cho 3rd person ambiguous
- **Fix**: Đổi → `動物園は子供にも大人にも人気です。` Update translation.

### 11. R_0058 — `ぞうはパンダより大きかったです` past tense awkward (voi vẫn to hơn pandar, không "lúc đó")
- **Fix**: Đổi tense → `ぞうはパンダより大きいです。`

### 12. R_0051 Q2 explanation reference sai câu
- Explanation viết `〜てくれました` nhưng text gốc là `書きました`
- **Fix**: Cập nhật explanation cho match text

### 13. R_0058 — Add panda + 桜 (cultural)
- **Fix**: Có thể thêm reference 「パンダ」 + 「桜」 trong text/vocab

### 14. R_0053 — Q2 nâng Bloom Apply
- Hiện Q2 chỉ Recall (lookup câu 6)
- **Fix**: Đổi sang inference: "家族の中で、誰が一番すしをたくさん食べると思いますか" (synthesize với 5皿 + だけ)

### 15. R_0052 — `大阪はとても楽しい町でした` awkward
- **Fix**: `大阪はとても楽しかったです` HOẶC `大阪はとてもいい町でした`

## P3 — Skip

- R_0058 ぞう/パンダ tense (acceptable cấp 2)
- R_0055 800円 từ vựng "starting price" N4 borderline
- R_0056 と vs や distinction (nice to have)
- R_0058 process `ていました` N4

## Action plan (15 fixes)

### Critical (5):
1. R_0057 uống miso fix
2. R_0060 chunks/guide bug
3. R_0057 ちゃわん ambiguity
4. R_0057 thêm 箸渡し
5. R_0055 giá 800→1000

### Major (4):
6. R_0054 朝から晩まで → 毎日朝ごはんに
7. R_0053 opinion hedge
8. R_0060 みんなで guide standardize
9. R_0060 cắt 1 câu (sc=11→10)

### Should fix (6):
10. R_0058 楽しい → 人気
11. R_0058 ぞう tense
12. R_0051 Q2 explanation
13. R_0053 Q2 Bloom
14. R_0058 panda/桜
15. R_0052 awkward
