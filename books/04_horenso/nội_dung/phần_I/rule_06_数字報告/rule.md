# Rule 06 — Báo cáo có số liệu / 数字を使った報告

> **Luận điểm.** Báo cáo Nhật business cực kỵ định tính mơ hồ. **Mọi báo cáo phải có ít nhất 1 con số**: KPI, % thay đổi, before/after, tốc độ, lỗi, etc. "Tăng nhiều" → "tăng 23% so với tuần trước". Không có số = không thể quyết.
>
> 数字なき報告は判断材料にならない。**KPI / 前週比 / before-after / 工数** など最低1つは数値化する。「多い」より「+23%」、「速い」より「200ms→80ms」。
>
> **Liên quan:** rule 02 (DDBN), rule 03 (GRCA), rule 11 (báo cáo khách).

---

## Bối cảnh / 場面

Em Dũng họp với anh Hà CTO về tình hình Phase 2. Lần đầu Dũng báo định tính ("performance được cải thiện") → CTO không quyết được. Lần 2 dùng số liệu — CTO duyệt budget Phase 3 ngay.

---

## ❌ Hội thoại XẤU — toàn định tính

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ハーさん、Phase 2 のパフォーマンスは大幅に改善しました。バグも減ってます。お客様も満足しています。」 |
| **ハーCTO** | 「『大幅に』『減ってる』『満足』… **数字で**話してください。Phase 3 の予算判断ができません。」 |
| **ズン** | 「えっと…体感ではかなり良くなったと…」 |
| **ハーCTO** | 「体感では予算は動かない。来週までに数値ベースで再報告を。」 |

**Vì sao xấu:** Nguyên 4 câu mà không một con số. CTO cần dữ liệu để quyết predict, allocate budget. "体感" (cảm nhận) không phải dữ liệu.

---

## ✅ Hội thoại TỐT — KPI dashboard kèm % thay đổi

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ハーさん、Phase 2 の数値報告です。**画面ロード時間：1.2秒 → 0.4秒（-67%）**【1】、ダッシュボード資料を画面共有いたします。」 |
| **ズン** | 「**バグ件数**：Phase 1 が週20件、Phase 2 が週6件で **-70%**。**顧客 NPS**：+12 から +38 へ改善しております【2】。」 |
| **ハーCTO** | 「ロード時間 -67% は inline でいい数字。NPS の母数は？」 |
| **ズン** | 「**回答者は12名中10名**（回答率83%）です【3】。サンプル数が小さい点、私見では今後3ヶ月で30名以上に拡大予定です。」 |
| **ハーCTO** | 「数字の根拠が明確で良い。Phase 3 予算、承認します。」 |

📝 **Ghi chú:**
- 【1】**「1.2秒 → 0.4秒（-67%）」** — before/after kèm % change. CTO lướt 1 giây hiểu impact.
- 【2】**「+12 から +38 へ」** — số tuyệt đối + diff. Không "改善した" mơ hồ.
- 【3】**「12名中10名（回答率83%）」** — nói rõ mẫu (sample size). Số đẹp mà sample n=3 thì... vô nghĩa.

---

## 🎯 Câu chốt

> **「Before 〇〇 → After 〇〇 (差分 〇%) / 母数 〇〇」**
>
> *Mọi metric đi cùng sample size. Số đẹp + n nhỏ = nghi ngờ.*

---

## ⚠ Tránh

- 「大幅に」「かなり」「だいぶ」 — định tính, không phải số.
- "改善しました" mà không có before/after — không quantify được impact.
- Đưa % mà không có sample size — sếp Nhật sẽ hỏi "母数は？".
- Round số quá đẹp ("ちょうど50%") — gây nghi ngờ làm tròn.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 数値 | すうち | Số liệu |
| 前週比 | ぜんしゅうひ | So với tuần trước |
| 母数 | ぼすう | Sample size / cỡ mẫu |
| 体感 | たいかん | Cảm nhận chủ quan |
| 改善 | かいぜん | Cải thiện |
| 大幅 | おおはば | Đáng kể (mơ hồ — tránh) |
| ダッシュボード | dasshubōdo | Dashboard |
| 根拠 | こんきょ | Cơ sở / căn cứ |
