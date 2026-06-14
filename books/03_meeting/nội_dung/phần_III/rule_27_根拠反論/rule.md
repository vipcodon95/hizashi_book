# Rule 27 — Phản biện có cơ sở / 根拠を伴った反論

> **Luận điểm.** Phản biện không có dữ liệu = ý kiến cá nhân. Cấu trúc chuẩn: **(1) Ghi nhận** → **(2) "ただ"** → **(3) Dữ liệu / thông tin cụ thể** → **(4) Đề xuất khác**. Khác rule 23 (phản đối lịch sự) ở chỗ rule 27 phải kèm số liệu / dẫn chứng.
>
> 反論には必ず根拠（数値・データ・事実）を伴う。「思います」ではなく「数字では〜」と裏付ける。
>
> **Liên quan:** Rule 23 (phản đối), Rule 26 (đề xuất), Rule 28 (xin data).

---

## Bối cảnh / 場面

Anh Ōgaki cho rằng "team Việt benchmark giống Ấn Độ → 6 dev đủ làm phase 2 trong 8 tuần". Anh Tuấn (tech lead) có data realistic của team — cần phản biện có cơ sở.

---

## ❌ Hội thoại XẤU — phản biện cảm tính

| Vai | Câu |
|---------|-----|
| **大垣** | 「インドのチームでは6名・8週間で<ruby>同等<rt>どうとう</rt></ruby>のスコープを<ruby>完了<rt>かんりょう</rt></ruby>しています。<ruby>御社<rt>おんしゃ</rt></ruby>も<ruby>同様<rt>どうよう</rt></ruby>で<ruby>問題<rt>もんだい</rt></ruby>ないかと。」 |
|  | *Team Ấn Độ làm 6 người 8 tuần xong scope tương đương. Tôi nghĩ phía các anh cũng vậy không vấn đề.* |
| **トゥアン** | 「いや、それは<ruby>無理<rt>むり</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。チームによって<ruby>違<rt>ちが</rt></ruby>いますし…」 |
|  | *Không, em nghĩ cái đó không được đâu. Mỗi team khác nhau mà...* |
| **大垣** | 「『<ruby>思<rt>おも</rt></ruby>います』は<ruby>根拠<rt>こんきょ</rt></ruby>にならないですよね。」 |
|  | *「Em nghĩ」 không phải căn cứ đâu nhỉ.* |

**Vì sao xấu:** 「思います」+「違いますし」 không có dữ liệu → đối phương dễ bác. Khách Nhật rất quý số liệu → phản biện cảm tính = mất uy tín về kỹ thuật.

---

## ✅ Hội thoại TỐT — ghi nhận + data + đề xuất

*tiếp*

| Vai | Câu |
|---------|-----|
| **大垣** | 「インドのチームでは6名・8週間で<ruby>同等<rt>どうとう</rt></ruby>のスコープを<ruby>完了<rt>かんりょう</rt></ruby>しています。<ruby>御社<rt>おんしゃ</rt></ruby>も<ruby>同様<rt>どうよう</rt></ruby>で<ruby>問題<rt>もんだい</rt></ruby>ないかと。」 |
|  | *Team Ấn Độ làm 6 người 8 tuần xong scope tương đương. Tôi nghĩ phía các anh cũng vậy không vấn đề.* |
| **トゥアン** | 「インドチームのご<ruby>実績<rt>じっせき</rt></ruby>、<ruby>参考<rt>さんこう</rt></ruby>になります【1】。ただ、<ruby>弊社<rt>へいしゃ</rt></ruby>の Phase 1 <ruby>実績<rt>じっせき</rt></ruby>データを<ruby>共有<rt>きょうゆう</rt></ruby>させていただきますと、<ruby>類似<rt>るいじ</rt></ruby>スコープにおいて6名<ruby>換算<rt>かんさん</rt></ruby>で<ruby>平均<rt>へいきん</rt></ruby>10.5週間を<ruby>要<rt>よう</rt></ruby>しております【2】。」 |
|  | *Thành tích team Ấn rất đáng tham khảo ạ. Tuy nhiên xin được chia sẻ data thực tế Phase 1 bên em — với scope tương tự, quy đổi 6 người trung bình mất 10.5 tuần ạ.* |
| **トゥアン** | 「<ruby>内訳<rt>うちわけ</rt></ruby>としては、QA<ruby>工程<rt>こうてい</rt></ruby>に<ruby>約<rt>やく</rt></ruby>2週間、<ruby>結合試験<rt>けつごうしけん</rt></ruby>に<ruby>約<rt>やく</rt></ruby>1.5週間が<ruby>必要<rt>ひつよう</rt></ruby>でございました。8週間で<ruby>完遂<rt>かんすい</rt></ruby>するには、QAスコープの<ruby>調整<rt>ちょうせい</rt></ruby>、もしくは8名<ruby>体制<rt>たいせい</rt></ruby>への<ruby>増員<rt>ぞういん</rt></ruby>のいずれかをご<ruby>検討<rt>けんとう</rt></ruby>いただけますでしょうか【3】？」 |
|  | *Trong đó QA mất khoảng 2 tuần, integration test khoảng 1.5 tuần ạ. Để xong trong 8 tuần, em xin anh xem xét 1 trong 2 hướng: điều chỉnh scope QA, hoặc tăng người lên 8 ạ.* |
| **大垣** | 「Phase 1の<ruby>実績<rt>じっせき</rt></ruby>ですか。それなら<ruby>根拠<rt>こんきょ</rt></ruby>がありますね。8名<ruby>体制<rt>たいせい</rt></ruby>で<ruby>再見積<rt>さいみつ</rt></ruby>もりをいただけますか？」 |
|  | *Thực tế Phase 1 à. Vậy có căn cứ rồi. Phía anh cho tôi báo giá lại theo 8 người được không?* |

📝 **Ghi chú:**
- 【1】**「ご実績、参考になります」** — không bác data Ấn Độ. Ghi nhận → giữ thể diện.
- 【2】**「弊社の Phase 1 実績データを共有させていただきますと、〜10.5週間を要しております」** — dẫn dữ liệu nội bộ cụ thể. Số chính xác (10.5) > "khoảng 10".
- 【3】**「QAスコープの調整、もしくは8名体制への増員のいずれかをご検討いただけますでしょうか」** — luôn kèm 2 lựa chọn → đối phương dễ chọn.

---

## 🎯 Câu chốt

> **「ご実績、参考になります。ただ、弊社の〇〇データでは〜という事実がございます。」**
>
> *4 bước: ghi nhận → ただ → dữ liệu → phương án. Không bao giờ "思います" rỗng.*

---

## ⚠ Tránh

- 「思います」「違いますし」 không kèm data.
- Phủ nhận dữ liệu đối phương ("Ấn Độ không tính") thay vì so với dữ liệu của mình.
- Phản biện nhưng không kèm 2-3 phương án thay thế.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 根拠 | こんきょ | Căn cứ |
| 反論 | はんろん | Phản biện |
| 実績 | じっせき | Thực tích / kết quả thực tế |
| 換算 | かんさん | Quy đổi |
| 結合試験 | けつごうしけん | Integration test |
| 増員 | ぞういん | Tăng người |
| 見積もり | みつもり | Báo giá / ước lượng |
