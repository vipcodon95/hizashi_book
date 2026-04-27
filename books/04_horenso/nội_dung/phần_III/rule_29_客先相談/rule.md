# Rule 29 — Tham vấn với khách / 客先への相談

> **Luận điểm.** Tham vấn nội bộ và tham vấn với khách **khác hoàn toàn về tone**. Với khách Nhật, không bao giờ dùng 「相談したいことがあるんですが」 (casual với cấp trên nội bộ). Mẫu đúng: 「**ご相談させていただけますでしょうか**」 / 「**ご教示いただきたく存じます**」 — tone formal cao, khiêm nhường (謙譲語) tối đa. Cấu trúc: **(1) Lý do tham vấn** (vì khách rành hơn / vì cần input để tiến tiếp) **+ (2) Phạm vi tham vấn cụ thể** (không hỏi rộng) **+ (3) Khung thời gian khách thuận tiện**.
>
> 客先相談の3要素：①相談理由（顧客の知見が必要）②相談範囲（焦点を絞る）③希望時間枠（顧客都合優先）。形式は最高敬語＋謙譲語。
>
> **Liên quan:** rule 22-26 (相談一般), rule 30 (持ち帰り), Sách 03 rule 29 (顧客交渉).

---

## Bối cảnh / 場面

Em Dũng cần tham vấn anh Matsumoto về việc nên dùng 線形 (linear) hay 段階的 (incremental) approach cho UAT Phase 2. Lần đầu Dũng dùng tone nội bộ. Lần 2 đúng formal pattern.

---

## ❌ Hội thoại XẤU — tone nội bộ với khách

*Slack DM*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、UAT のやり方なんですけど、線形でやるか段階的でやるかちょっと相談したくて…」 |
| **松本PM** | 「ズンさん、『ちょっと相談したくて…』は文末を切る不完全文で、客先ではかなり失礼に当たります。それに、何を判断材料にすべきかも示されていないと、こちらも答えようがありません。」 |
| **ズン** | 「すみません…」 |
| **松本PM** | 「客先相談は形式が違います。『ご相談させていただけますでしょうか』+ 焦点 + 希望時間で。」 |

**Vì sao xấu:** L1 「ちょっと相談したくて…」 cắt câu giữa chừng = lỗi manner nghiêm trọng (mức học sinh) khi nói với khách Nhật. Thêm vào, casual tone (đồng nghiệp Việt-Việt OK, khách Nhật KHÔNG). Không có scope, không có time. L4 chỉ ra: client-facing tone phải khác.

---

## ✅ Hội thoại TỐT — formal client tone

| Speaker | Câu |
|---------|-----|
| **L1** | **ズン** *(メール)* | 「松本様、お世話になっております。ティエンファットのズンでございます。  
  **件名:【ご相談】Phase 2 UAT 進め方について**  
  Phase 2 の UAT を進めるにあたり、**線形(全機能一括)** か **段階的(機能毎リリース)** かで方針を絞りきれず、**ご相談させていただけますでしょうか**【1】。  
  特にお伺いしたいのは、**御社運用チームの検証リソース確保のしやすさ**でございます【2】。  
  ご都合よろしい時に **15分ほどお時間頂戴できますと幸甚**です。今週後半 (4/24木 PM ~ 4/26土) のうち、ご都合の良い候補を3つお知らせいただけますと幸いです【3】。」 |
| **L2** | **松本PM** *(返信)* | 「ご丁寧にありがとうございます。4/24 (木) 15:00 JST で30分いかがでしょうか。当方からも運用チームの実情をお話しします。」 |
| **L3** | **ズン** *(会議で)* | 「松本様、本日はお時間頂戴し誠にありがとうございます。それでは、UAT 進め方についてご相談させていただきます【4】。」 |

📝 **Ghi chú:**
- 【1】**「ご相談させていただけますでしょうか」** — câu vàng client-facing. Khiêm nhường tối đa. Không "相談したい".
- 【2】**Phạm vi cụ thể** — không hỏi rộng "anh nghĩ sao về UAT" mà focus 1 axis (運用リソース). Khách dễ trả lời + chuẩn bị trước.
- 【3】**Khung thời gian + 候補3つお知らせいただける** — không ép giờ, hỏi 3 option của KHÁCH (không phải gửi 3 option của mình như reschedule). Formal cao.
- 【4】**「ご相談させていただきます」** — câu mở khi vào meeting với khách. Tone đỉnh.

---

## 🎯 Khác biệt nội bộ vs client-facing

| Yếu tố | Internal (rule 24) | Client-facing (rule 29) |
|--------|---------------------|---------------------------|
| Mở lời | 「ご相談したいことがあるのですが」 | 「ご相談させていただけますでしょうか」 |
| Tham vấn 1 từ | 「相談」 | 「ご相談 / ご教示」 |
| Time framing | 「15分ほどお時間…」 (tự đề xuất time) | 「ご都合の良い候補をお知らせください」 (hỏi time của khách) |
| Phạm vi | Có thể rộng | Phải focus 1 điểm |
| Tone | formal (副部長) | formal cao (謙譲語+丁寧語) |

---

## 🎯 Câu chốt

> **「ご相談させていただけますでしょうか + 焦点1つ + ご都合の良い候補をお知らせください」 = client-facing 相談3点セット。**

---

## ⚠ Tránh

- 「ちょっと相談…」「相談したい」 với khách — quá casual.
- Câu hỏi rộng kiểu 「全体的にどう思われますか?」 — khách không biết focus đâu.
- Tự ấn time kiểu 「明日10時でお願いします」 — chưa hỏi khách rảnh không.
- 「教えてください」 thuần với khách — phải 「ご教示いただきたく存じます」.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 客先 | きゃくさき | Phía khách |
| ご相談 | ごそうだん | Tham vấn (kính ngữ) |
| ご教示 | ごきょうじ | Xin chỉ giáo |
| 幸甚 | こうじん | Hết sức cảm ơn (formal cao) |
| 線形 | せんけい | Tuyến tính |
| 段階的 | だんかいてき | Theo giai đoạn |
| 検証リソース | けんしょうリソース | Resource kiểm thử |
| 焦点 | しょうてん | Tiêu điểm |
