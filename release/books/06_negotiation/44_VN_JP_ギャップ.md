---
id: 870000044
curriculum_id: 800000007
order_index: 44
node_type: rule
title: "Rule 44 — Khoảng cách phong cách đàm phán VN-JP / VN-JP 交渉ギャップ"
rule_no_original: "44"
slug: "VN_JP_ギャップ"
part_original: "phần_V"
language: bilingual
---
# Rule 44 — Khoảng cách phong cách đàm phán VN-JP / VN-JP 交渉ギャップ
> **Luận điểm.** Phong cách VN: **直接 (trực tiếp)**, "Giảm 10% thì OK?", nhượng bộ 1 lần lớn. Phong cách JP: **間接 (gián tiếp)**, 「条件面で…」「持ち帰りでも…」, nhượng bộ nhỏ + có qua có lại. VN BD mang phong cách trực tiếp vào phòng JP → khách Nhật thấy 「無礼」 hoặc 「未熟」. JP exec mang phong cách gián tiếp sang VN → VN BD thấy "không quyết được", "vòng vo". Hizashi VN BD cần chuyển đổi phong cách: **giảm mức độ trực tiếp 30% + mô hình nhượng bộ có qua có lại**.
>
> VN phong cách trực tiếp、JP gián tiếp。nhượng bộ も VN は 1 回大きく、JP は nhỏ từng bước có qua có lại。混在せずに chế độ JP で運用、 ghi chú phong cách VN は内部用に phân tách。
>
> **Liên quan:** rule 24 (譲歩交換), rule 26 (脅し対応), rule 35 (打ち切り).

---

## Bối cảnh / 場面
Phase 4 với khách mới (sản xuất JP, trụ sở Tokyo). Tuấn Tech Lead hỗ trợ — Tuấn ít kinh nghiệm với lãnh đạo JP, mang phong cách VN vào. Dũng cần chuyển đổi phong cách + hướng dẫn Tuấn trực tiếp tại chỗ.

---

## Hội thoại XẤU — VN direct style trong phòng JP
*直接 · 沈黙、 メモを 取る · 沈黙不安*

| Vai | Câu |
|---------|-----|
| **JP client (松本 stand-in)** | 「<ruby>価格<rt>かかく</rt></ruby> ¥20M はやや<ruby>高<rt>たか</rt></ruby>い<ruby>印象<rt>いんしょう</rt></ruby>がございます。」 <br/>*Giá ¥20M hơi tạo cảm giác cao ạ.* |
| **トゥアン** | 「では ¥18M でいかがですか？10% <ruby>下<rt>さ</rt></ruby>げます！」 <br/>*Vậy ¥18M có được không ạ? Em giảm 10%!* |
| **JP client** | …(<ruby>無言<rt>むごん</rt></ruby>、 <ruby>表情変化<rt>ひょうじょうへんか</rt></ruby>なし) <br/>*(Im lặng, ghi note, không biến sắc)* |
| **トゥアン** | 「¥17M でも<ruby>検討可能<rt>けんとうかのう</rt></ruby>です…」 <br/>*¥17M cũng xem xét được ạ...* |
| **JP client** | 「…<ruby>御社<rt>おんしゃ</rt></ruby> <ruby>内部<rt>ないぶ</rt></ruby>でじっくり<ruby>再検討<rt>さいけんとう</rt></ruby>された<ruby>後<rt>あと</rt></ruby>、<ruby>改<rt>あらた</rt></ruby>めてご<ruby>提案<rt>ていあん</rt></ruby><ruby>頂<rt>いただ</rt></ruby>けますでしょうか。」 <br/>*Bên em sau khi cân nhắc kỹ trong nội bộ, đề xuất lại giúp tôi được không.* |
| (商談後 Slack) **JP client → Dũng の上司** | 「Tuấn さん、 concession を 2 <ruby>回<rt>かい</rt></ruby><ruby>続<rt>つづ</rt></ruby>けて<ruby>下<rt>さ</rt></ruby>げました。 <ruby>弊社<rt>へいしゃ</rt></ruby> negotiate ratchet として **¥15M target で<ruby>社内<rt>しゃない</rt></ruby> anchor** が<ruby>動<rt>うご</rt></ruby>いてしまいました。」 <br/>*Anh Tuấn giảm liên tiếp 2 lần. Bên tôi ratchet trong đàm phán, anchor nội bộ đã dịch xuống mức ¥15M.* |

**Vì sao xấu:** (a) Một lần giảm 10% = tín hiệu "còn có thể xuống". JP kỳ vọng nhượng bộ chậm + có qua có lại, (b) Nhượng bộ 2 lần liên tiếp không có điều kiện đổi = neo giá nội bộ JP dịch xuống ¥15M, (c) 「やや高い」là tín hiệu gián tiếp JP với ý "muốn giải thích cụ thể", không phải yêu cầu giảm giá trực tiếp.

---

## Hội thoại TỐT — JP mode で運用 + Tuấn realtime coach
*2 秒 silence、 Tuấn に micro-eye signal "wait" · 具体化 · 頷き、 メモ*

| Vai | Câu |
|---------|-----|
| **JP client** | 「<ruby>価格<rt>かかく</rt></ruby> ¥20M はやや<ruby>高<rt>たか</rt></ruby>い<ruby>印象<rt>いんしょう</rt></ruby>がございます。」 <br/>*Giá ¥20M hơi tạo cảm giác cao ạ.* |
| **ズン** | 「ご<ruby>感想<rt>かんそう</rt></ruby>ありがとうございます。**『<ruby>高<rt>たか</rt></ruby>い』という<ruby>印象<rt>いんしょう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で、<ruby>特<rt>とく</rt></ruby>に<ruby>気<rt>き</rt></ruby>にされている<ruby>内訳要素<rt>うちわけようそ</rt></ruby>**【1】はございますでしょうか？AI engine <ruby>部分<rt>ぶぶん</rt></ruby>でしょうか、PM <ruby>体制<rt>たいせい</rt></ruby>でしょうか。」 <br/>*Em cảm ơn cảm nhận của anh ạ. Trong cảm nhận 'cao' đó, có phần breakdown nào anh đặc biệt quan tâm không ạ? Phần AI engine hay phần cơ chế PM ạ?* |
| **JP client** | 「…AI engine <ruby>部分<rt>ぶぶん</rt></ruby>、 <ruby>御社<rt>おんしゃ</rt></ruby> Phase 2 <ruby>比<rt>ひ</rt></ruby> +30% の<ruby>理由<rt>りゆう</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>いたい。」 <br/>*Phần AI engine, anh muốn nghe lý do +30% so với Phase 2 bên em.* |
| **ズン** | 「Phase 2 <ruby>比<rt>ひ</rt></ruby> +30% の<ruby>内訳<rt>うちわけ</rt></ruby>: customer churn prediction model <ruby>追加<rt>ついか</rt></ruby>が +20%、SLA 99.5% → 99.95% upgrade が +10% です。**もしどちらかをスコープ<ruby>外<rt>がい</rt></ruby>にする trade なら**【2】、 ¥18M に<ruby>調整可能<rt>ちょうせいかのう</rt></ruby>でございます。」 <br/>*Cấu thành +30% so với Phase 2: thêm model customer churn prediction là +20%, nâng cấp SLA 99.5% → 99.95% là +10%. Nếu mình đánh đổi bằng cách đưa 1 trong 2 ra ngoài phạm vi thì có thể điều chỉnh xuống ¥18M ạ.* |
| **JP client** | 「なるほど、 churn prediction の<ruby>必要性<rt>ひつようせい</rt></ruby>は<ruby>社内<rt>しゃない</rt></ruby>で <ruby>議論余地<rt>ぎろんよち</rt></ruby>あり。**<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り**<ruby>社内検討<rt>しゃないけんとう</rt></ruby>します。」 <br/>*Hiểu rồi, mức độ cần thiết của churn prediction có dư địa thảo luận nội bộ. Anh mang về xem.* |
| (商談後 Slack Tuấn に) **ズン** | 「Tuấn、 JP は『<ruby>高<rt>たか</rt></ruby>い』 ≠ 『discount せよ』。 specific reason を indirect に asking している【3】。VN style で<ruby>即<rt>そく</rt></ruby> 10% <ruby>下<rt>さ</rt></ruby>げると ratchet <ruby>動<rt>うご</rt></ruby>く。next time も<ruby>同<rt>おな</rt></ruby>じ pattern で。」 <br/>*Tuấn, JP 'cao' KHÔNG phải 'giảm đi'. Họ hỏi gián tiếp lý do cụ thể. Style VN giảm 10% phát thì ratchet xảy ra. Lần sau cùng mô hình này.* |
| **トゥアン** | 「<ruby>了解<rt>りょうかい</rt></ruby>。<ruby>沈黙<rt>ちんもく</rt></ruby> 2 <ruby>秒<rt>びょう</rt></ruby>で Dũng の signal <ruby>待<rt>ま</rt></ruby>つ pattern <ruby>学<rt>まな</rt></ruby>んだ。」 <br/>*Hiểu rồi. Anh học được mô hình 'im lặng 2 giây chờ tín hiệu Dũng'.* |

📝 **Ghi chú:**
- 【1】**Hỏi cụ thể từng mục "内訳要素"** = phân tách + định hình lại JP indirect 「高い」. Không giảm giá ngay mà khám phá thêm.
- 【2】**Nhượng bộ dạng đánh đổi** (「スコープを外せば ¥18M」) = mô hình có qua có lại kiểu JP. Giảm 1 lần lớn 1 chiều là phong cách VN.
- 【3】**JP「高い」 4 lớp diễn giải**: (i) thật sự thấy đắt (hiếm), (ii) muốn nghe giải thích từng mục (phổ biến nhất), (iii) muốn giải thích chênh lệch so với đối thủ, (iv) biểu đạt "chưa chắc" để giữ thể diện. Giảm giá trực tiếp chỉ đúng với (i).
- **Hướng dẫn Tuấn trực tiếp tại chỗ** = Dũng gửi tín hiệu mắt "đợi". Sau phiên trao đổi sâu hơn.

---

## Cụm từ mẫu
> **「JP『高い』≠『giảm giá』。先に phân tách từng mục + nhượng bộ dạng đánh đổi có qua có lại。VN 1 発 10% はNG。」**
>
> *JP 'cao' không phải đề nghị giảm giá. Phải phân tách + nhượng bộ dạng đánh đổi. VN giảm 10% một phát = NG.*

---

## Tránh
- "では下げます" quyết ngay → hiệu ứng bánh cóc một chiều: vòng sau kỳ vọng giảm tiếp
- Nhượng bộ 2 lần liên tiếp không có điều kiện đổi → neo giá nội bộ dịch lớn
- 「やっぱり ¥18M で OK ですか？」hỏi chốt trực tiếp → lãnh đạo JP đánh giá "non nớt"
- Ngôn ngữ đe dọa kiểu VN ("đến giới hạn rồi") → JP đọc là tín hiệu quan hệ căng thẳng, tiêu cực
- Không hướng dẫn Tuấn / nhân sự trẻ trực tiếp tại chỗ → lỗi thành thói quen
- Ghi chú phong cách VN chia sẻ cho khách JP → không khớp tông giọng

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 直接 | ちょくせつ | TRỰC TIẾP | Trực tiếp |
| 間接 | かんせつ | GIÁN TIẾP | Gián tiếp |
| 内訳 | うちわけ | NỘI DỊCH | Cấu thành / breakdown |
| Có qua có lại | レシプロカル | — | Nhượng bộ kèm điều kiện đổi |
| Hiệu ứng bánh cóc | ラチェット効果 | HIỆU QUẢ | Giảm rồi khó tăng lại |
| Chuyển phong cách | コードスイッチ | — | Chuyển đổi giữa phong cách VN và JP |
| Phân tách gói | アンバンドル | — | Tách từng hạng mục ra |
| Hướng dẫn tại chỗ | リアルタイムコーチ | — | Hướng dẫn nhân sự trực tiếp trong phiên |
