# Rule 06 — Báo cáo có số liệu / 数字を使った報告

> **Luận điểm.** Báo cáo Nhật công việc cực kỵ định tính mơ hồ. **Mọi báo cáo phải có ít nhất 1 con số**: KPI, % thay đổi, trước/sau, tốc độ, lỗi, v.v. "Tăng nhiều" → "tăng 23% so với tuần trước". Không có số = không thể quyết.
>
> 数字なき報告は判断材料にならない。**KPI / 前週比 / before-after / 工数** など最低1つは数値化する。「多い」より「+23%」、「速い」より「200ms→80ms」。
>
> **Liên quan:** rule 02 (DDBN), rule 03 (GRCA), rule 11 (báo cáo khách).

---

## Bối cảnh / 場面

Em Dũng họp với anh Hà CTO về tình hình Phase 2. Lần đầu Dũng báo định tính ("hiệu năng được cải thiện") → CTO không quyết được. Lần 2 dùng số liệu — CTO duyệt ngân sách Phase 3 ngay.

---

## Hội thoại XẤU — toàn định tính

| Vai | Câu |
|---------|-----|
| **ズン** | 「ハーさん、Phase 2 のパフォーマンスは<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>改善<rt>かいぜん</rt></ruby>しました。バグも<ruby>減<rt>へ</rt></ruby>ってます。お<ruby>客様<rt>きゃくさま</rt></ruby>も<ruby>満足<rt>まんぞく</rt></ruby>しています。」 <br/>*Anh Hà, hiệu năng Phase 2 cải thiện đáng kể ạ. Bug cũng giảm. Khách cũng hài lòng.* |
| **ハーCTO** | 「『大幅に』『減ってる』『満足』… **<ruby>数字<rt>すうじ</rt></ruby>で**話してください。Phase 3 の<ruby>予算<rt>よさん</rt></ruby><ruby>判断<rt>はんだん</rt></ruby>ができません。」 <br/>*'Đáng kể', 'giảm', 'hài lòng'... Em nói bằng số đi. Anh không quyết được ngân sách Phase 3.* |
| **ズン** | 「えっと…<ruby>体感<rt>たいかん</rt></ruby>ではかなり<ruby>良<rt>よ</rt></ruby>くなったと…」 <br/>*Ờ... cảm nhận em là tốt hơn nhiều ạ...* |
| **ハーCTO** | 「体感では予算は<ruby>動<rt>うご</rt></ruby>かない。<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>数値<rt>すうち</rt></ruby>ベースで<ruby>再報告<rt>さいほうこく</rt></ruby>を。」 <br/>*Cảm nhận thì không duyệt ngân sách được. Tuần sau báo lại dựa trên số liệu.* |

**Vì sao xấu:** Nguyên 4 câu mà không một con số. CTO cần dữ liệu để dự báo, phân bổ ngân sách. "体感" (cảm nhận) không phải dữ liệu.

---

## Hội thoại TỐT — KPI bảng số liệu kèm % thay đổi

| Vai | Câu |
|---------|-----|
| **ズン** | 「ハーさん、Phase 2 の<ruby>数値<rt>すうち</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。**<ruby>画面<rt>がめん</rt></ruby>ロード<ruby>時間<rt>じかん</rt></ruby>：1.2秒 → 0.4秒（-67%）**【1】、ダッシュボード<ruby>資料<rt>しりょう</rt></ruby>を<ruby>画面共有<rt>がめんきょうゆう</rt></ruby>いたします。」 <br/>*Anh Hà, em báo cáo số liệu Phase 2 ạ. Thời gian tải màn hình: 1.2s → 0.4s (-67%), em xin chia sẻ màn hình bảng số liệu ạ.* |
| **ズン** | 「**バグ<ruby>件数<rt>けんすう</rt></ruby>**：Phase 1 が<ruby>週<rt>しゅう</rt></ruby>20件、Phase 2 が週6件で **-70%**。**<ruby>顧客<rt>こきゃく</rt></ruby> NPS**：+12 から +38 へ<ruby>改善<rt>かいぜん</rt></ruby>しております【2】。」 <br/>*Số bug: Phase 1 là 20 bug/tuần, Phase 2 là 6 bug/tuần, tức -70%. NPS khách: từ +12 lên +38 ạ.* |
| **ハーCTO** | 「ロード時間 -67% は inline でいい数字。NPS の<ruby>母数<rt>ぼすう</rt></ruby>は？」 <br/>*Thời gian tải -67% là con số đẹp rồi. Cỡ mẫu của NPS bao nhiêu?* |
| **ズン** | 「**<ruby>回答者<rt>かいとうしゃ</rt></ruby>は12<ruby>名<rt>めい</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>10名**（<ruby>回答率<rt>かいとうりつ</rt></ruby>83%）です【3】。サンプル<ruby>数<rt>すう</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さい<ruby>点<rt>てん</rt></ruby>、<ruby>私見<rt>しけん</rt></ruby>では<ruby>今後<rt>こんご</rt></ruby>3ヶ<ruby>月<rt>げつ</rt></ruby>で30名<ruby>以上<rt>いじょう</rt></ruby>に<ruby>拡大<rt>かくだい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。」 <br/>*Có 10/12 người trả lời (tỉ lệ 83%) ạ. Cỡ mẫu còn nhỏ, theo ý em, 3 tháng tới sẽ mở rộng lên trên 30 người ạ.* |
| **ハーCTO** | 「数字の<ruby>根拠<rt>こんきょ</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>で良い。Phase 3 予算、<ruby>承認<rt>しょうにん</rt></ruby>します。」 <br/>*Cơ sở số liệu rõ ràng, tốt. Anh duyệt ngân sách Phase 3 nhé.* |

 **Ghi chú:**
- 【1】**「1.2秒 → 0.4秒（-67%）」** — before/after kèm % thay đổi. CTO lướt 1 giây hiểu tác động.
- 【2】**「+12 から +38 へ」** — số tuyệt đối + mức chênh. Không "改善した" mơ hồ.
- 【3】**「12名中10名（回答率83%）」** — nói rõ cỡ mẫu (số người tham gia). Số đẹp mà cỡ mẫu n=3 thì... vô nghĩa.

---

## Câu chốt

> **「Before 〇〇 → After 〇〇 (差分 〇%) / 母数 〇〇」**
>
> *Mọi chỉ số đi cùng cỡ mẫu. Số đẹp + n nhỏ = nghi ngờ.*

---

## Tránh

- 「大幅に」「かなり」「だいぶ」 — định tính, không phải số.
- "改善しました" mà không có before/after — không định lượng được tác động.
- Đưa % mà không có cỡ mẫu — sếp Nhật sẽ hỏi "母数は？".
- Round số quá đẹp ("ちょうど50%") — gây nghi ngờ làm tròn.

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|-------|-------|
| 数値 | すうち | SỐ TRỊ | Số liệu |
| 前週比 | ぜんしゅうひ | TIỀN CHÂU TỶ | So với tuần trước |
| 母数 | ぼすう | MẪU SỐ | Cỡ mẫu |
| 体感 | たいかん | THỂ CẢM | Cảm nhận chủ quan |
| 改善 | かいぜん | CẢI THIỆN | Cải thiện |
| 大幅 | おおはば | ĐẠI PHÚC | Đáng kể (mơ hồ — tránh) |
| ダッシュボード | ダッシュボード | — | Bảng tổng hợp số liệu |
| 根拠 | こんきょ | CĂN CỨ | Cơ sở / căn cứ |
