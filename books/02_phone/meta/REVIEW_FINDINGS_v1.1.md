# Review Findings v1.0 → v1.1

*Reviewed: 2026-04-25 by 3 expert passes (JP keigo, VN translation, terminology consistency)*

---

## 🔴 CRITICAL — JP keigo (must fix)

### JP-1. Internal title leaked to external speech (rule_34, rule_43)

**Quy tắc:** ウチ・ソト — khi nói với khách Nhật ngoài công ty, bỏ chức danh nội bộ của đồng nghiệp mình.

| File | Sai | Đúng |
|------|-----|------|
| `phần_III/rule_34_緊急電話/conversation.json` line `rule_34_good_03` | `現場のトゥアンリーダーに即時共有が必要かと存じますが、いかがでしょうか？` | `現場のトゥアンに即時共有が必要かと存じますが、いかがでしょうか？` |
| `phần_IV/rule_43_延期変更/conversation.json` line `rule_43_good_02` | `急遽トゥアンリーダーの出張が入りまして` | `急遽弊社のトゥアンの出張が入りまして` |
| `phần_IV/rule_43_延期変更/rule.md` line ~14 | mirror: `トゥアンリーダー` | `弊社のトゥアン` |

### JP-2. ご + own action (過剰敬語)

| File | Sai | Đúng |
|------|-----|------|
| `phần_IV/rule_42_電話で断る/conversation.json` line `rule_42_good_02` | `ご参加が難しい状況でございます` | `参加が難しい状況でございます` |
| `phần_IV/rule_42_電話で断る/rule.md` line ~14 | `ご参加` | `参加` |
| `phần_I/rule_04_片手メモ/conversation.json` line `rule_04_var_01` | `メモのご準備をさせていただきます` | `メモの準備をさせていただきます` |

### JP-3. Idiom error: お声が遠く → お電話が遠く

| File | Sai | Đúng |
|------|-----|------|
| `phần_I/rule_08_静かな環境/conversation.json` line `rule_08_var_01` | `少しお声が遠く聞こえる場合は` | `お電話が遠く聞こえる場合は` |
| Same file, same line: `お電話お受けいたします` (redundant) | → `このまま電話を受けさせていただきます` |

### JP-4. ご請求書 (own-issued)

| File | Sai | Đúng |
|------|-----|------|
| `phần_IV/rule_47_督促電話/conversation.json` line `rule_47_good_02` | `3月分のご請求書INV-2026-0315` | `3月分の請求書INV-2026-0315` |

### JP-5. 申し伝えました → お伝えしました (internal context)

| File | Sai | Đúng |
|------|-----|------|
| `phần_II/rule_23_受電後報告/conversation.json` line `rule_23_good_03` | `トゥアンリーダーへは既に申し伝えました` | `トゥアンリーダーには既にお伝えしました` |

---

## 🟡 IMPROVE — JP naturalness

### JP-A. お元気ですか → お世話になっております (rule_07)

`phần_I/rule_07_声で笑顔/conversation.json` line `rule_07_good_02`:
- `松本です。お元気ですか。` → `松本です。いつもお世話になっております。`

### JP-B. 復唱 ordering (rule_13)

`phần_II/rule_13_数字復唱/conversation.json` line `rule_13_good_02`:
- Reorder so 復唱させていただきます comes BEFORE digits.

### JP-C. 構いません → 問題ございません (rule_31)

`phần_III/rule_31_伝言依頼/conversation.json` line `rule_31_good_04`:
- `ご返信は明日朝で構いません` → `ご返信は明日朝でも問題ございません`

### JP-D. お返事 → ご連絡 (rule_50)

`phần_V/rule_50_留守電後/conversation.json` line `rule_50_good_04`:
- `お返事が遅くなり申し訳ございません` → `ご連絡が遅くなり申し訳ございません`

---

## 🔴 CRITICAL — VN translation (must fix)

### VN-1. 至っとマーク typo (TYPO BIG)

`phần_II/rule_13_数字復唱/rule.md` lines 12, 32:
- `至っとマーク` → `アットマーク` (typo of katakana)

### VN-2. Loan tự xưng "em" với khách (sai chức vụ)

`phần_IV/rule_47_督促電話/conversation.json` lines 17, 19, 21 (Loan = 経理部長, female senior):
- `Em là Loan, phòng kế toán...` → `Tôi là Loan, phòng kế toán Cty Thiên Phát ạ.`
- `Em xin gọi xác nhận về khoản chuyển khoản...` → `Tôi xin gọi xác nhận về khoản chuyển khoản...`
- `Cảm ơn anh đã xử lý ạ.` → `Cảm ơn anh đã hỗ trợ xử lý ạ.`
- `Phiền anh nhiều, em xin lỗi ạ.` → `Phiền anh nhiều, tôi xin lỗi ạ.`

Cần audit thêm: cũng kiểm tra Hương (副部長, female senior) khi nói với Matsumoto, có xưng "em" không.

### VN-3. "Em đã nhận máy" — dịch literal

Áp dụng tất cả `Em đã nhận máy` → `Em ... nghe máy ạ` hoặc `Dạ, em ... đây ạ`

Files: `phần_II/rule_15` line 14, phụ lục A line 183, và bất kỳ chỗ nào khác có chứa cụm này.

### VN-4. "Xin phép em ạ" / "Xin phép tôi ạ" (rule_22)

`phần_II/rule_22_切るタイミング/conversation.json`:
- Dũng: `Xin phép em ạ.` → `Em xin phép cúp máy ạ.`
- Matsumoto: `Xin phép tôi ạ.` → `Cảm ơn em.`

Phụ lục A line 292: tương tự.

### VN-5. "至っとマーク" trong vocab table

`phần_II/rule_13/rule.md` line 32 vocab row: cùng fix với VN-1.

---

## 🟡 IMPROVE — VN naturalness

### VN-A. "Em luôn cảm ơn anh đã hỗ trợ" → "Em chào anh ạ"

Quy ước: 「いつもお世話になっております」 = lời chào, không phải cảm ơn.
- `Em luôn cảm ơn anh đã hỗ trợ ạ` → `Em chào anh ạ. Lúc nào cũng cảm ơn anh giúp đỡ.`

Hoặc đơn giản: `Em chào anh ạ.`

Áp dụng khoảng 5-7 chỗ.

### VN-B. "Có ở bàn không ạ" → "Có ở văn phòng không ạ"

`phần_III/rule_24` line 18, phụ lục A line 317:
- `có ở bàn không ạ?` → `có ở văn phòng không ạ?`

### VN-C. "Giữa lúc bận" → "Anh bận thế mà"

Phụ lục A line 570:
- `Hôm qua giữa lúc bận anh đã dành thời gian` → `Hôm qua anh bận thế mà vẫn dành thời gian`

### VN-D. "Việc không vui" → "Tin không hay" (rule_44)

`phần_IV/rule_44_悪い知らせ/conversation.json` line `rule_44_good_01`:
- `Em có việc không vui muốn báo cáo` → `Em có tin không hay muốn báo, em xin phép gọi anh ạ.`

### VN-E. "Tôi rõ rồi" → "Tôi hiểu rồi" (rule_44)

`phần_IV/rule_44/conversation.json` line `rule_44_good_05`:
- `Tôi rõ rồi.` → `Tôi hiểu rồi.`

### VN-F. "Self-diagnostic" → "tự chấm" (rule_60)

`phần_V/rule_60_自己診断/conversation.json`:
- `em làm self-diagnostic chưa?` → `em đã tự chấm/tự đánh giá chưa?`

### VN-G. "Anh đợi máy một chút" → "Anh giữ máy chút"

Đồng bộ thuật ngữ, dùng "giữ máy" làm canonical.

### VN-H. "phía online cho mình nghe" → "cho em xin"

Phụ lục A line 705:
- `Phía online cho mình nghe ý kiến với ạ` → `Phía online cho em xin ý kiến với ạ`

### VN-I. Voicemail "em làm đến 17h" → "em có thể nhận máy đến 17h"

`phần_V/rule_49/conversation.json`:
- `Hôm nay em làm đến 17h ạ` → `Hôm nay em có thể nhận máy đến 17h ạ`

### VN-J. "case bị ảnh hưởng" → "giao dịch bị ảnh hưởng" (rule_44, payment context)

### VN-K. "đột xuất có công tác" → "đột xuất phải đi công tác" (rule_43)

---

## ⚙️ TERMINOLOGY — Canonical forms

### TERM-1. JP variants

| Term | Found | Canonical | Action |
|------|-------|-----------|--------|
| 折り返し / 折返し | 52 / 1 | **折り返し** | Fix 1 instance in rule_49 |
| お繋ぎ / おつなぎ | 1 / 6 | **おつなぎ** (hiragana, more common in service JP) | Fix rule_11 |
| 留守電 / 留守番電話 | 17 / 10 | Keep both — 留守電 (口語) trong dialogue, 留守番電話 (書面) trong rule_context. Hiện đã dùng đúng pattern. | No-op |

### TERM-2. Speaker_role canonical

Standardize across all 60 conversation.json:

| speaker | Canonical role | Notes |
|---------|---------------|-------|
| zun | `BD担当` | Bỏ "(ティエンファット社)", "(司会)" — context khác có thể giữ trong annotation, không trong role |
| fuon | `副部長` | Bỏ "(営業部)" |
| tuan_leader | `チームリーダー` | |
| loan_keiri | `経理部長` | Bỏ "(ティエンファット社)" |
| hai | `FE/DevOps` | Bỏ "(ティエンファット社)" |
| ha_cto | `CTO` | |
| matsumoto | `PM (白鷗株式会社)` | Đồng nhất 1 dạng — dùng full name công ty |
| reception_hakuo | `受付 (白鷗株式会社)` | |
| nakamura_cfo | `CFO (白鷗株式会社)` | |
| unknown_caller | `発信者` | Hoặc giữ `顧客` cho complaint cases |

### TERM-3. VN cast labels

- `Cty Thiên Phát` (canonical) — fix `công ty Thiên Phát` (lowercase) trong 2 file
- Trong rule.md có thể dùng "Cty Thiên Phát" hoặc just "Thiên Phát" tùy context.

### TERM-4. JP company names

- 白鷗 standalone (10 cases) → giữ 白鷗 + suffix as appropriate (`白鷗の`, `白鷗社`, `白鷗株式会社`).
- Standardize: dùng `白鷗株式会社` ở title/rule_context, `白鷗社` trong dialogue, `白鷗` chỉ khi standalone với particle (e.g., `白鷗の松本様`).
- Hiện tại đã consistent — no fix.

### TERM-5. Time format VN

Mix: `14h` / `14:00` / `9 giờ`. Canonical:
- Trong dialogue VN: dùng `14h` (ngắn, casual business)
- Trong câu chốt formal: dùng `14:00`

Hiện tại không có lỗi rõ ràng — keep as is.

### TERM-6. VN phone vocab

- `chuyển máy` (1 cases) vs `nối máy` (6) → Canonical: **`nối máy`**. Fix 1 case in rule_26.

### TERM-7. BJT skill labels

Hiện chỉ dùng 場面把握, 表現読解 — consistent. Không cần fix.

---

## 📋 Fix execution plan (sed-based mass fixes)

```
# JP fixes (high precision, file-specific):
- rule_04 var_01: メモのご準備 → メモの準備
- rule_07 good_02: お元気ですか → いつもお世話になっております
- rule_08 var_01: お声が遠く → お電話が遠く + restructure
- rule_13 good_02: reorder
- rule_23 good_03: 申し伝えました → お伝えしました
- rule_31 good_04: 構いません → 問題ございません
- rule_34 good_03: トゥアンリーダー → トゥアン
- rule_42 good_02: ご参加 → 参加 (json + md)
- rule_43 good_02: トゥアンリーダー → 弊社のトゥアン (json + md)
- rule_47 good_02: ご請求書 → 請求書
- rule_50 good_04: お返事 → ご連絡

# VN fixes:
- rule_13: 至っとマーク → アットマーク (typo)
- rule_47: Loan "em" → "tôi" (4 lines)
- rule_22: Xin phép em ạ → Em xin phép cúp máy ạ
- rule_22: Xin phép tôi ạ → Cảm ơn em
- rule_44: việc không vui → tin không hay
- rule_44: Tôi rõ rồi → Tôi hiểu rồi
- rule_60: self-diagnostic → tự chấm
- rule_24, phụ lục A: ở bàn → ở văn phòng
- rule_43: đột xuất có công tác → đột xuất phải đi công tác

# Terminology:
- speaker_role canonical (10 speakers)
- 折返し → 折り返し (rule_49, 1 case)
- お繋ぎ → おつなぎ (rule_11, 1 case)
- chuyển máy → nối máy (rule_26, 1 case)
- công ty Thiên Phát → Cty Thiên Phát (rule_01, rule_06)
```

---

*v1.1 release after applying fixes — re-run review_book.py + rebuild appendices + rebuild docx/html/epub.*
