# Quy tắc chuẩn hoá file Markdown — Hizashi Book

*Tài liệu này là **standard** mà cowork (Claude/người) phải tuân khi viết hoặc
sửa rule.md trong `books/<NN>_<slug>/nội_dung/`. Mục tiêu: file md sạch, đồng
nhất, đưa qua release/ là dùng được ngay không cần thêm bước biên tập.*

Mọi quy tắc dưới đây đã được **tự động hoá** qua
[`scripts/normalize_release.py`](scripts/normalize_release.py) — chạy mỗi lần
build release. Nhưng tốt nhất là viết đúng từ đầu.

---

## 1. Heading — KHÔNG dùng icon ở đầu

KHÔNG đặt emoji / ký hiệu / dấu trang trí ở đầu phần text của heading.

```diff
- ## ✅ Hội thoại TỐT
- ## ❌ Hội thoại XẤU
- ## 🎯 Câu chốt mang đi
- ## 📚 Vocab note
+ ## Hội thoại TỐT
+ ## Hội thoại XẤU
+ ## Cụm từ mẫu
+ ## Bảng từ vựng
```

Áp dụng cho mọi cấp heading: `#`, `##`, `###`, `####`.

**Lý do.** Emoji không hiển thị nhất quán giữa các renderer (web, epub, pdf,
Kindle). Sách in / xuất bản chính thống không dùng. Frontend Hizashi render
markdown thuần.

---

## 2. Heading — dùng **tiếng Việt**, không dùng tên tiếng Anh thuần

### Bảng đối chiếu chuẩn

| KHÔNG dùng (EN) | DÙNG (VI) |
|---|---|
| `BJT Practice` | `Luyện BJT` |
| `Vocab` / `Vocab note` / `Vocab list` / `Vocabulary` | `Bảng từ vựng` |
| `Self-grading` | `Tự đánh giá` |
| `Self-diagnostic` | `Tự chẩn đoán` |
| `Self-review` | `Tự rà soát` |
| `Self-reflection` | `Tự nhìn lại` |
| `Self-check` | `Tự kiểm tra` |
| `Tips` | `Mẹo` |
| `Note` / `Notes` | `Ghi chú` |
| `Summary` | `Tóm tắt` |
| `Recap` | `Tóm tắt nhanh` |
| `Review` | `Rà soát` |
| `Practice` | `Luyện tập` |
| `Câu chốt` / `Câu chốt mang đi` | `Cụm từ mẫu` |

**Lưu ý.** Phần kèm sau heading vẫn giữ — vd `## Luyện BJT (J3 — 場面把握)`
giữ nguyên đoạn `(J3 — 場面把握)`.

### Từ kỹ thuật được giữ nguyên (KHÔNG đổi)

Các thuật ngữ business/technical phổ biến giữ nguyên tiếng Anh để không mất
nghĩa chuyên môn:

```
Bad / Good            (trong "Bad — ...", "Good — ...")
Pattern / Patterns    Coaching pattern, 5 patterns…
Checklist             Checklist 30 giây, Checklist setup…
Scenario / Scenarios  4 Scenarios — dialogue thực chiến
Setup                 Setup mental, Setup tốt…
Decision Matrix / Tree
Hook
Demo / Demo Script
Camera Convention
Format / Format chuẩn / Format TỐT
Comparison Matrix
Step / 4 Step Pattern
```

Nếu phân vân thêm từ mới — hỏi trước khi đổi, đừng tự rename hàng loạt.

---

## 3. Không reference file ngoài trong body

KHÔNG để link `[…](conversation.json)`, `[…](rule_NN_….md)`, `[…](../path)`
trong file rule.md. Reader của sách phát hành sẽ không có file đó.

```diff
- > 📁 File JSON đi kèm rule này: [`conversation.json`](conversation.json)
```

Nếu cần ám chỉ rule khác → viết text thuần: `Rule 02 (3 hồi chuông)`.

---

## 4. Khoảng trắng / dòng trống

- Tối đa **2 dòng trống** liên tiếp giữa các block.
- File kết thúc bằng đúng **1 dòng trống cuối**.

---

## 5. Frontmatter (do build script tự thêm)

Frontmatter YAML chỉ xuất hiện trong `release/`, KHÔNG đặt sẵn trong nguồn
`books/`. Build script tự sinh dựa trên thứ tự file + cấu hình sách.

Format:

```yaml
---
id: 8003001
curriculum_id: 8003
order_index: 1
node_type: rule
title: "Rule 01 — ..."
rule_no_original: "01"
slug: "..."
part_original: "phần_I"
language: bilingual
---
```

---

## 6. Pipeline áp dụng

Mọi quy tắc trên được enforce 2 chỗ:

1. **Lúc build release** — `build_release_*.py` gọi `normalize_text()` từ
   `normalize_release.py`. Output ở `release/books/<slug>/` luôn sạch.
2. **Standalone retrofit** — chạy `python3 _shared/scripts/normalize_release.py`
   để chuẩn hoá lại mọi file md đã có trong `release/`.

Khi cần mở rộng quy tắc (thêm icon mới, thêm cặp rename mới) → sửa
`normalize_release.py`, cập nhật bảng đối chiếu trong file này, rồi re-run.

---

## 7. Checklist nhanh khi viết rule mới

Trước khi commit `rule.md` mới hoặc sửa rule cũ:

- [ ] Heading không có emoji ở đầu (`✅`, `❌`, `🎯`, `📚`, `📝`, `🔄`, `⚠`, `🧠`, `💬`, `🎬`, `🎓`, `📐`, `🗾`...).
- [ ] Heading dùng từ Việt nếu có cặp tương đương (`Bảng từ vựng`, `Luyện BJT`, `Cụm từ mẫu`...).
- [ ] Không có link tương đối tới file ngoài (`conversation.json`, `rule_NN.md`...).
- [ ] Không có dòng `📁 File JSON đi kèm rule này...`.
- [ ] H1 đúng dạng `# Rule NN — <tiêu đề Việt> / <tiêu đề Nhật>`.

Nếu chưa chắc — cứ viết, build sẽ chuẩn hoá. Nhưng viết đúng từ đầu giúp diff
release sạch hơn.
