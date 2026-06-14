# Rule 26 — Mang sẵn nhiều phương án / 複数案を持参

> **Luận điểm.** Tham vấn 1 phương án = "duyệt giùm em" (đẩy quyết định). Tham vấn 2-3 phương án + lợi/hại = "em đã suy nghĩ, sếp giúp chọn trục quan trọng nhất". Quy tắc: **tối thiểu 2, lý tưởng 3 phương án. Mỗi phương án có ① chi phí ② thời gian ③ rủi ro được lượng hóa**. Trong 3 phương án nên có 1 "**phương án đề xuất**" — phương án người tham vấn khuyên dùng + lý do.
>
> 相談には2〜3案を持参。各案にコスト・時間・リスクを定量化。1案だけは『判子押して』のサインで真の相談ではない。
>
> **Liên quan:** rule 23 (準備), rule 25 (判断材料), rule 30 (持ち帰り).

---

## Bối cảnh / 場面

Em Hải tham vấn anh Tuấn về việc khắc phục bug performance API. Lần đầu Hải mang 1 phương án đến. Lần 2 chuẩn bị 3 options với pros/cons + recommend.

---

## ❌ Hội thoại XẤU — 1 phương án

| Vai | Câu |
|---------|-----|
| **ハイ** | 「トゥアンさん、API <ruby>遅延<rt>ちえん</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、Redis キャッシュ<ruby>追加<rt>ついか</rt></ruby>で<ruby>解決<rt>かいけつ</rt></ruby>したいんですが、いいですか?」 |
|  | *Anh Tuấn, vụ API chậm, em muốn thêm Redis cache cho xong, được không ạ?* |
| **トゥアン** | 「それしか<ruby>考<rt>かんが</rt></ruby>えてないの?<ruby>他<rt>ほか</rt></ruby>の<ruby>選択肢<rt>せんたくし</rt></ruby>は?」 |
|  | *Em chỉ nghĩ tới cái đó thôi à? Các phương án khác đâu?* |
| **ハイ** | 「えっと、これが<ruby>一番<rt>いちばん</rt></ruby><ruby>速<rt>はや</rt></ruby>いかと…」 |
|  | *Ờ, em nghĩ cái này nhanh nhất...* |
| **トゥアン** | 「Redis <ruby>追加<rt>ついか</rt></ruby>はインフラコスト+<ruby>運用<rt>うんよう</rt></ruby>コストが<ruby>乗<rt>の</rt></ruby>る。クエリ<ruby>最適化<rt>さいてきか</rt></ruby>やインデックス<ruby>追加<rt>ついか</rt></ruby>で<ruby>済<rt>す</rt></ruby>む<ruby>可能性<rt>かのうせい</rt></ruby>もある。**<ruby>最低<rt>さいてい</rt></ruby>3<ruby>案<rt>あん</rt></ruby>** 持ってきて、コスト・<ruby>時間<rt>じかん</rt></ruby>・リスクを<ruby>並<rt>なら</rt></ruby>べて<ruby>比較<rt>ひかく</rt></ruby>。」 |
|  | *Thêm Redis là tăng chi phí hạ tầng + chi phí vận hành. Có khi tối ưu query hoặc thêm index là xong. Mang tối thiểu 3 phương án đến, so sánh cost / time / risk đi.* |

**Vì sao xấu:** L1 chỉ 1 phương án = không phải tham vấn mà là xin duyệt. L2 anh Tuấn hỏi trục so sánh đáng lẽ Hải tự nghĩ. L4 chỉ ra: cần 3 phương án + 3 trục so sánh.

---

## ✅ Hội thoại TỐT — 3 phương án + bảng so sánh

| Vai | Câu |
|---------|-----|
| **ハイ** | 「トゥアンさん、API <ruby>遅延<rt>ちえん</rt></ruby>の<ruby>対応案<rt>たいおうあん</rt></ruby>を3つ<ruby>準備<rt>じゅんび</rt></ruby>しました。コスト・<ruby>時間<rt>じかん</rt></ruby>・リスクで<ruby>比較<rt>ひかく</rt></ruby>しております【1】。」 |
|  | *Anh Tuấn, em đã chuẩn bị 3 phương án xử lý API chậm. Em so sánh theo cost / time / risk ạ.* |
| **トゥアン** | 「いいね、<ruby>見<rt>み</rt></ruby>ます。」 |
|  | *OK, anh xem.* |
| **ハイ** | (<ruby>画面共有<rt>がめんきょうゆう</rt></ruby>) 「**<ruby>案<rt>あん</rt></ruby>A: クエリ<ruby>最適化<rt>さいてきか</rt></ruby>** — コスト¥0、<ruby>期間<rt>きかん</rt></ruby>2<ruby>日<rt>にち</rt></ruby>、リスク<ruby>低<rt>てい</rt></ruby> (<ruby>既存<rt>きそん</rt></ruby>ロジックに<ruby>影響<rt>えいきょう</rt></ruby><ruby>少<rt>しょう</rt></ruby>)。**<ruby>案<rt>あん</rt></ruby>B: インデックス<ruby>追加<rt>ついか</rt></ruby>** — コスト¥0、<ruby>期間<rt>きかん</rt></ruby><ruby>半日<rt>はんにち</rt></ruby>、リスク<ruby>中<rt>ちゅう</rt></ruby> (<ruby>本番<rt>ほんばん</rt></ruby>デプロイ<ruby>時<rt>じ</rt></ruby>の lock <ruby>時間<rt>じかん</rt></ruby>)。**<ruby>案<rt>あん</rt></ruby>C: Redis キャッシュ** — コスト+¥3<ruby>万<rt>まん</rt></ruby>/<ruby>月<rt>つき</rt></ruby>、<ruby>期間<rt>きかん</rt></ruby>5<ruby>日<rt>にち</rt></ruby>、リスク<ruby>高<rt>こう</rt></ruby> (<ruby>運用工数<rt>うんようこうすう</rt></ruby><ruby>増<rt>ぞう</rt></ruby> + キャッシュ<ruby>不整合<rt>ふせいごう</rt></ruby>)【2】。」 |
|  | *[A] Tối ưu query: cost 0¥, 2 ngày, risk thấp (ít ảnh hưởng logic cũ). [B] Thêm index: cost 0¥, nửa ngày, risk trung (lock khi deploy production). [C] Redis cache: +30k¥/tháng, 5 ngày, risk cao (tăng chi phí vận hành + cache không nhất quán).* |
| **ハイ** | 「**<ruby>推奨<rt>すいしょう</rt></ruby>は<ruby>案<rt>あん</rt></ruby>B (インデックス<ruby>追加<rt>ついか</rt></ruby>)** です。<ruby>理由<rt>りゆう</rt></ruby>は<ruby>半日<rt>はんにち</rt></ruby>で<ruby>実装<rt>じっそう</rt></ruby><ruby>可能<rt>かのう</rt></ruby> + <ruby>既<rt>すで</rt></ruby>に index <ruby>候補<rt>こうほ</rt></ruby>が `EXPLAIN` で<ruby>特定済<rt>とくていず</rt></ruby>み + コスト<ruby>増<rt>ぞう</rt></ruby>なしのためです。リスク<ruby>中<rt>ちゅう</rt></ruby>はメンテナンスウィンドウで<ruby>吸収<rt>きゅうしゅう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>と<ruby>考<rt>かんが</rt></ruby>えております【3】。」 |
|  | *Em recommend B (thêm index). Lý do: nửa ngày là xong + đã EXPLAIN ra ứng viên index + không tăng cost. Risk trung thì hấp thụ bằng maintenance window được ạ.* |
| **トゥアン** | 「<ruby>分析<rt>ぶんせき</rt></ruby><ruby>正<rt>ただ</rt></ruby>しい。Bで<ruby>進<rt>すす</rt></ruby>めて。ただ、メンテナンスウィンドウは<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>許可<rt>きょか</rt></ruby>が<ruby>要<rt>い</rt></ruby>るから、ズンに<ruby>依頼<rt>いらい</rt></ruby>してね。」 |
|  | *Phân tích đúng. Đi với B đi. Nhưng maintenance window phải xin phép anh Matsumoto, em nhờ Dũng nhé.* |

📝 **Ghi chú:**
- 【1】**「3つ準備、コスト・時間・リスクで比較」** — câu mở cho thấy ngay cấu trúc trình bày. Anh Tuấn biết Hải chuẩn bị nghiêm túc.
- 【2】**Bảng so sánh 3×3** — 3 phương án × 3 trục (chi phí / thời gian / rủi ro). Định lượng: ¥0, 2 ngày, thấp. Không 「ほぼ」「だいたい」.
- 【3】**「推奨は案B」 + lý do** — Hải đã có ý kiến rõ. Sếp chỉ xác nhận hoặc phản biện, không phải nghĩ thay.

---

## 🎯 Mẫu bảng so sánh

| Phương án | Chi phí | Thời gian | Rủi ro | Ghi chú |
|-----------|---------|-----------|--------|---------|
| 案A: 〇〇 | ¥〇 | 〇日 | 低/中/高 | 〇〇 |
| 案B: 〇〇 ⭐推奨 | ¥〇 | 〇日 | 低/中/高 | 〇〇 |
| 案C: 〇〇 | ¥〇 | 〇日 | 低/中/高 | 〇〇 |

---

## 🎯 Câu chốt

> **「<ruby>最低<rt>さいてい</rt></ruby>2<ruby>案<rt>あん</rt></ruby>、<ruby>理想<rt>りそう</rt></ruby>は3<ruby>案<rt>あん</rt></ruby>。<ruby>各案<rt>かくあん</rt></ruby>にコスト・<ruby>時間<rt>じかん</rt></ruby>・リスクを<ruby>定量化<rt>ていりょうか</rt></ruby>。1<ruby>案<rt>あん</rt></ruby>は『<ruby>推奨<rt>すいしょう</rt></ruby>』マーク + <ruby>理由<rt>りゆう</rt></ruby> 1〜2<ruby>行<rt>ぎょう</rt></ruby>。」**

---

## ⚠ Tránh

- 1 phương án duy nhất → không phải tham vấn, là xin duyệt.
- 3 phương án nhưng 2 cái bù nhìn (rõ ràng tệ) — sếp nhận ra ngay là gian lận.
- 「リスク低」「コスト安い」 mơ hồ — phải số ¥, ngày, %.
- Đề xuất yếu kiểu 「どれでもいいです」 — không có ý kiến = không suy nghĩ.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 複数案 | ふくすうあん | Nhiều phương án |
| 持参 | じさん | Mang theo |
| 推奨 | すいしょう | Đề xuất / khuyên dùng |
| 比較 | ひかく | So sánh |
| 定量化 | ていりょうか | Định lượng |
| 運用工数 | うんようこうすう | Chi phí vận hành (giờ) |
| メンテナンスウィンドウ | maintenance window | Cửa sổ bảo trì |
| 不整合 | ふせいごう | Không nhất quán |
