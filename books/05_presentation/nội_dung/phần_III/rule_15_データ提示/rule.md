# Rule 15 — Data presentation / データ提示

> **Luận điểm.** Chart đúng loại theo loại dữ liệu: **比較=棒グラフ / 推移=折れ線 / 構成比=積み上げ棒 (KHÔNG pie nếu >5項目)**. Nguồn ghi rõ ở footer (出典・期間・N数). Làm nổi bật 1 thông điệp chính / chart bằng 1 callout. Đối tượng người Nhật soi rất kỹ con số — chính xác + minh bạch > đẹp.
>
> 比較=棒、推移=折れ線、構成比=積み上げ棒(円グラフは5項目以下のみ)。出典・期間・N数を必ず footer に明記。1チャート1テイクアウェイ。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 04 (視覚階層), rule 17 (比較マトリクス).

---

## Bối cảnh / 場面

Slide 5 của Dũng = chart so sánh Phase 1 vs Phase 2 vs Phase 3 (dự báo). Dũng dùng pie chart 3D + 7 màu + nhãn 12pt. Hà CTO kiểm tra.

---

## ❌ Hội thoại XẤU — sai loại chart + thiếu nguồn

| Vai | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、これ**3D pie chart 7色**？<ruby>比較<rt>ひかく</rt></ruby>なのに pie <ruby>使<rt>つか</rt></ruby>うのは<ruby>間違<rt>まちが</rt></ruby>い。」 |
|  | *Dũng, cái này là 3D pie 7 màu hả? So sánh mà dùng pie là sai đấy.* |
| **ズン** | 「カラフルで<ruby>目立<rt>めだ</rt></ruby>つかと…」 |
|  | *Em nghĩ cho colorful, nổi bật ạ...* |
| **ハーCTO** | 「Pie は<ruby>構成比<rt>こうせいひ</rt></ruby>5<ruby>項目<rt>こうもく</rt></ruby>以下用。**3 phase の比較は<ruby>棒<rt>ぼう</rt></ruby>グラフ**。あと**<ruby>出典<rt>しゅってん</rt></ruby>・<ruby>期間<rt>きかん</rt></ruby>どこ**？『2024年Q3〜Q4<ruby>社内<rt>しゃない</rt></ruby><ruby>集計<rt>しゅうけい</rt></ruby>、N=120』みたいな<ruby>注記<rt>ちゅうき</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。」 |
|  | *Pie chỉ dùng cho cấu thành ≤5 mục. So sánh 3 phase là bar chart. Còn nguồn / kỳ ở đâu? Phải có chú thích kiểu 「Q3-Q4/2024 nội bộ, N=120」.* |
| **ズン** | 「あ、<ruby>入<rt>い</rt></ruby>れていません…」 |
|  | *À, em chưa cho vào ạ...* |
| **ハーCTO** | 「<ruby>松本<rt>まつもと</rt></ruby>さんとか<ruby>大垣<rt>おおがき</rt></ruby>さん、データの**期間とサンプル<ruby>数<rt>すう</rt></ruby>**必ず<ruby>聞<rt>き</rt></ruby>く。今のままだと『<ruby>根拠<rt>こんきょ</rt></ruby><ruby>不明<rt>ふめい</rt></ruby>』<ruby>判定<rt>はんてい</rt></ruby>。」 |
|  | *Kiểu Matsumoto-san hay Ōgaki-san chắc chắn sẽ hỏi kỳ + số mẫu. Để như này là bị đánh giá 「không căn cứ」.* |

**Vì sao xấu:** 3D pie + 7 màu = nhiễu thị giác + bóp méo nhận thức. Thiếu nguồn = đối tượng không xác minh được → tụt niềm tin. Doanh nghiệp Nhật cực coi trọng "出典明示" (ghi rõ nguồn).

---

## ✅ Hội thoại TỐT — đúng chart + nguồn rõ

| Vai | Câu |
|---------|-----|
| **ズン** | 「**<ruby>水平<rt>すいへい</rt></ruby><ruby>棒<rt>ぼう</rt></ruby>グラフ**に<ruby>変更<rt>へんこう</rt></ruby>【1】、3 phase <ruby>比較<rt>ひかく</rt></ruby>で `<ruby>差異率<rt>さいりつ</rt></ruby>` をX軸に。色は2色のみ(<ruby>白鷗<rt>はくおう</rt></ruby>ブルー＋グレー)、Phase 3 のみアクセント。」 |
|  | *Em đổi sang horizontal bar ạ, so sánh 3 phase với trục X là tỷ lệ sai lệch. Chỉ 2 màu (xanh Hakuō + xám), riêng Phase 3 dùng accent.* |
| **ハーCTO** | 「いい。Footer は？」 |
|  | *Tốt. Footer thì sao?* |
| **ズン** | 「**『<ruby>出典<rt>しゅってん</rt></ruby>: 2024年Q3〜Q4 <ruby>弊社<rt>へいしゃ</rt></ruby><ruby>運用<rt>うんよう</rt></ruby>ログ<ruby>集計<rt>しゅうけい</rt></ruby>、<ruby>対象<rt>たいしょう</rt></ruby>SKU=120、<ruby>月次<rt>げつじ</rt></ruby><ruby>平均<rt>へいきん</rt></ruby>』** と<ruby>入<rt>い</rt></ruby>れました【2】。コールアウトは『**Phase 2 で64%<ruby>削減<rt>さくげん</rt></ruby>、Phase 3 で90%削減<ruby>見込<rt>みこ</rt></ruby>み**』の1つだけ。」 |
|  | *Em đã ghi 「Nguồn: tổng hợp log vận hành Q3-Q4/2024, đối tượng SKU=120, trung bình tháng」 ạ. Callout chỉ 1 cái: 「Phase 2 giảm 64%, Phase 3 dự kiến giảm 90%」.* |
| **ハーCTO** | 「Perfect。1 chart 1 takeaway は<ruby>鉄則<rt>てっそく</rt></ruby>。<ruby>複数<rt>ふくすう</rt></ruby> callout は noise。」 |
|  | *Perfect. Mỗi chart 1 thông điệp chính là quy tắc thép. Nhiều callout = nhiễu.* |

📝 **Ghi chú:**
- 【1】**Chọn loại chart** — 比較=棒(横/縦), 推移=折れ線, 構成比=積み上げ棒/pie(≤5項目), 相関=散布図, 順位=横棒.
- 【2】**Định dạng nguồn ở footer** — 出典 + 期間 + N数 (số mẫu) là 3 điểm tối thiểu. 「弊社運用ログ」 / 「経済産業省2024白書」など.

---

## 🎯 Câu chốt

> **「Chart type は data type で決まる。Footer に出典・期間・N数。1 chart 1 takeaway。」**
>
> *Loại chart theo loại dữ liệu. Footer: nguồn / kỳ / N. Mỗi chart 1 thông điệp chính.*

---

## 📐 Chọn loại chart theo loại dữ liệu

| Loại dữ liệu | ✅ Chart nên dùng | ❌ Nên tránh |
|-----------|----------|---------|
| 比較 (cùng metric, khác đối tượng) | 横棒 / 縦棒 | Pie, line |
| 推移 (over time) | 折れ線 | Pie, scatter |
| 構成比 (≤5項目) | Pie / Donut / 積み上げ棒 | 3D pie |
| 構成比 (>5項目) | 横棒 + % label / 積み上げ棒 | Pie |
| 相関 | 散布図 | Pie, line |
| 順位 (Top N) | 横棒 (降順) | Pie |
| 分布 | ヒストグラム / Box plot | Pie |

---

## ⚠ Tránh

- 3D chart bất kỳ → bóp méo nhận thức
- Pie >5 項目 → không thể so sánh các phần
- Thiếu nguồn / kỳ / N → bị đánh giá "根拠不明" (không có căn cứ)
- Cầu vồng 7 màu → nhiễu thị giác
- Nhiều callout trên 1 chart → không có thông điệp chính rõ ràng
- Trục Y cắt cụt (truncated axis) để tạo hiệu ứng giật gân → đối tượng người Nhật phát hiện = mất niềm tin

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 棒グラフ | ぼうグラフ | Biểu đồ cột |
| 折れ線グラフ | おれせんグラフ | Biểu đồ đường |
| 円グラフ | えんグラフ | Biểu đồ tròn (pie) |
| 散布図 | さんぷず | Biểu đồ phân tán |
| 出典 | しゅってん | Nguồn |
| 集計 | しゅうけい | Tổng hợp số liệu |
| 注記 | ちゅうき | Chú thích |
| 差異率 | さいりつ | Tỷ lệ sai lệch |
