# Rule 21 — Giảm scope thay vì giảm giá / 価格でなくスコープを削る

> **Luận điểm.** Giảm đơn giá ¥18M → ¥16M = -11% biên lợi nhuận **không hồi phục được**. Giảm phạm vi (cắt tính năng, lùi hạng mục bàn giao, giảm SLA) → giữ đơn giá, giảm tổng tiền — về tài chính tương đương với khách, về biên lợi nhuận của mình **giữ nguyên 26%**. Khách Nhật dễ chấp nhận khi đề xuất rõ ràng.
>
> 「スコープ -10% で ¥17M」は「¥17M ベタ値引き」より粗利率を保つ。価格でなくスコープを交渉軸にする習慣。
>
> **Liên quan:** rule 19 (価格提示), rule 09 (concession plan), rule 22 (bundling).

---

## Bối cảnh / 場面

CFO chọn phương án (A) ¥17.5M 2 năm (rule 20). Nhưng 大垣 ép thêm "¥16M trên 1 năm". Dũng phải đáp trả bằng cắt phạm vi chứ không phải giảm giá thuần.

---

## Hội thoại XẤU — giảm giá thuần, mất biên lợi nhuận

*計算なし*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>中村<rt>なかむら</rt></ruby> CFO は 2 <ruby>年<rt>ねん</rt></ruby><ruby>契約<rt>けいやく</rt></ruby> OK、<ruby>但<rt>ただ</rt></ruby>し 1 年契約<ruby>版<rt>ばん</rt></ruby>だと ¥16M でいけませんか？」 <br/>*CFO Nakamura OK hợp đồng 2 năm, nhưng bản 1 năm thì ¥16M được không?* |
| **ズン** | 「えーと、では ¥16M で。」 <br/>*Ờ, vậy ¥16M ạ.* |
| (<ruby>内部<rt>ないぶ</rt></ruby> Slack <ruby>翌日<rt>よくじつ</rt></ruby>) **ハー CTO** | 「¥16M で<ruby>同<rt>おな</rt></ruby>じ scope は<ruby>粗利<rt>あらり</rt></ruby> 14%、Phase 2 と同じスタッフ<ruby>配置<rt>はいち</rt></ruby><ruby>不可<rt>ふか</rt></ruby>。なんで scope そのままで<ruby>値引<rt>ねび</rt></ruby>きした？」 <br/>*(Slack nội bộ hôm sau) ¥16M giữ nguyên scope là margin 14%, không bố trí staff như Phase 2 được. Sao lại giảm giá mà giữ scope?* |

**Vì sao xấu:** Giảm ¥1.5M nhưng phạm vi vẫn nguyên → biên lợi nhuận từ 26% xuống 14%. Tổn thất tài chính nội bộ. Đáng ra phải cắt phạm vi tương đương để giữ margin.

---

## Hội thoại TỐT — đáp trả bằng cắt phạm vi

| Vai | Câu |
|---------|-----|
| **大垣** | 「中村 CFO は 2 年契約 OK、但し 1 年契約版だと ¥16M でいけませんか？」 <br/>*CFO Nakamura OK hợp đồng 2 năm, nhưng bản 1 năm thì ¥16M được không?* |
| **ズン** | 「ご<ruby>検討<rt>けんとう</rt></ruby>ありがとうございます。1 年契約 + ¥16M でしたら、**phạm vi <ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>**【1】になります。<ruby>具体的<rt>ぐたいてき</rt></ruby>には、AI dashboard カスタム<ruby>部分<rt>ぶぶん</rt></ruby> (-<ruby>工数<rt>こうすう</rt></ruby> ¥1M) + <ruby>専任<rt>せんにん</rt></ruby> PM <ruby>半常駐化<rt>はんじょうちゅうか</rt></ruby> (-工数 ¥0.5M) を Phase 4 に<ruby>後出<rt>あとだ</rt></ruby>し【2】、これで ¥16M、SLA 99.5% (Better は 99.9%) も<ruby>同時<rt>どうじ</rt></ruby>調整。」 <br/>*Em cảm ơn quý anh đã xem xét ạ. Hợp đồng 1 năm + ¥16M thì cần điều chỉnh phạm vi ạ. Cụ thể: phần tùy chỉnh AI bảng theo dõi (-effort ¥1M) + PM chuyên trách bán-túc trực (-effort ¥0.5M) đẩy sang Phase 4, tổng thành ¥16M, đồng thời SLA điều chỉnh 99.5% (Better 99.9%) ạ.* |
| **大垣** | 「AI dashboard を Phase 4 に？<ruby>導入後<rt>どうにゅうご</rt></ruby>で<ruby>困<rt>こま</rt></ruby>りますか？」 <br/>*AI dashboard sang Phase 4? Sau triển khai có khó không?* |
| **ズン** | 「AI レコメンドエンジン core は Phase 3 で<ruby>稼働<rt>かどう</rt></ruby>、dashboard は Phase 2 <ruby>流用版<rt>りゅうようばん</rt></ruby>で<ruby>代替可能<rt>だいたいかのう</rt></ruby>です。**đơn giá (<ruby>機能<rt>きのう</rt></ruby>あたり<ruby>単価<rt>たんか</rt></ruby>) は<ruby>同等<rt>どうとう</rt></ruby>のまま、<ruby>総額<rt>そうがく</rt></ruby>調整**【3】という<ruby>形<rt>かたち</rt></ruby>です。Phase 4 <ruby>着手時<rt>ちゃくしゅじ</rt></ruby>に dashboard <ruby>追加<rt>ついか</rt></ruby>で +¥1M、その<ruby>時<rt>とき</rt></ruby>に<ruby>再<rt>さい</rt></ruby>ご<ruby>相談<rt>そうだん</rt></ruby>という形ではいかがでしょうか？」 <br/>*Core AI recommend engine vẫn vận hành ở Phase 3, bảng theo dõi dùng bản tận dụng từ Phase 2 thay thế được ạ. Đơn giá (giá trên từng tính năng) giữ nguyên, chỉ điều chỉnh tổng tiền. Phase 4 khởi động sẽ thêm bảng theo dõi +¥1M, lúc đó trao đổi lại ạ — quý anh thấy thế nào?* |
| **大垣** | 「unit price 同等であれば<ruby>社内<rt>しゃない</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>しやすい。検討します。」 <br/>*Đơn giá giữ nguyên thì dễ giải thích nội bộ. Tôi sẽ xem xét.* |

 **Ghi chú:**
- 【1】**「スコープ調整が必要」** — câu chuyển từ đàm phán giá sang đàm phán phạm vi. Giữ đòn bẩy.
- 【2】**Cắt tính năng có thể đẩy về sau (後出し) Phase 4** — KHÔNG mất khách, chỉ lùi thời gian thu. Khách ringi dễ duyệt hơn.
- 【3】**"Đơn giá tương đương (unit price 同等)"** = câu chốt then chốt. CFO/部長 cần "lý do giải thích nội bộ": "không bị giảm giá, chỉ giảm phạm vi".

---

## Câu chốt

> **「<ruby>価格<rt>かかく</rt></ruby>でなくスコープを<ruby>交渉軸<rt>こうしょうじく</rt></ruby>にする。<ruby>単価<rt>たんか</rt></ruby><ruby>維持<rt>いじ</rt></ruby>で<ruby>総額<rt>そうがく</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>、<ruby>粗利率<rt>あらりりつ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。」**
>
> *Đàm phán phạm vi, KHÔNG đàm phán đơn giá. Giữ đơn giá, điều chỉnh tổng tiền, bảo vệ biên lợi nhuận.*

---

## Tránh

- Giảm giá phẳng "¥16M でいきます" → biên lợi nhuận chết
- Cắt phạm vi mơ hồ "ちょっと減らします" → khách không biết mất gì
- Cắt tính năng lõi (AI engine bản thể) → khách không đạt mục tiêu Phase 3 → thất bại
- Quên đề xuất "Phase 4 で復活" → khách cảm thấy mất hẳn, phản ứng đẩy lại

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| スコープ | スコープ | — | Phạm vi |
| 調整 | ちょうせい | ĐIỀU CHỈNH | Điều chỉnh |
| 後出し | あとだし | — | Đẩy về sau |
| カスタム部分 | カスタムぶぶん | BỘ PHẬN | Phần tùy chỉnh |
| 半常駐 | はんじょうちゅう | BÁN THƯỜNG TRÚ | Bán-túc trực |
| 単価 | たんか | ĐƠN GIÁ | Đơn giá |
| 同等 | どうとう | ĐỒNG ĐẲNG | Tương đương |
| 復活 | ふっかつ | PHỤC HOẠT | Khôi phục |
