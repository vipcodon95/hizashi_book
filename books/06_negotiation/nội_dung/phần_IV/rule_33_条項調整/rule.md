# Rule 33 — Đàm phán cuối về điều khoản / 契約条項の最終調整

> **Luận điểm.** Sau LOI, bản thảo hợp đồng đi vào giai đoạn điều chỉnh điều khoản. Top 3 mục căng nhất với khách Nhật: **(1) Bồi thường thiệt hại (損害賠償上限)**, **(2) Quyền sở hữu trí tuệ** (đặc biệt là code & dữ liệu huấn luyện), **(3) SLA + phạt vi phạm**. Mục tiêu: giới hạn trách nhiệm ở mức **giá trị hợp đồng năm** (¥17M, KHÔNG vô hạn), code thuộc khách + thành phần tái sử dụng thuộc Tiên Phát.
>
> 本契約交渉は条項詳細フェーズ。giới hạn bồi thường・IP 帰属・SLA 罰則 が三大論点。Giới hạn là giá trị hợp đồng năm が業界標準。
>
> **Liên quan:** rule 32 (LOI), rule 24 (譲歩交換), rule 43 (escalation).

---

## Bối cảnh / 場面

Bản thảo hợp đồng v1 Tiên Phát gửi 大垣. Pháp chế 白鷗 trả về v2 với (a) bồi thường vô hạn, (b) toàn bộ quyền sở hữu trí tuệ thuộc 白鷗 (kể cả thành phần tái sử dụng). Hà CTO phản đối — Dũng cần đàm phán 3 vòng để đạt giới hạn = ¥17M + điều khoản phân chia quyền sở hữu trí tuệ.

---

## Hội thoại XẤU — chấp nhận điều khoản cứng để chốt nhanh

*legal redline 共有 · 早く close したい · 急に call*

| Vai | Câu |
|---------|-----|
| **大垣** | 「ズン様、弊社 legal からの修正版です。**indemnity は<ruby>無制限<rt>むせいげん</rt></ruby>**、IP は **当社<ruby>帰属<rt>きぞく</rt></ruby>** でお願いします。」 <br/>*Anh Dũng, đây là bản sửa từ pháp chế bên anh. Bồi thường không giới hạn, IP thuộc bên tôi, anh giúp tôi.* |
| **ズン** | 「承知しました、それで進めます。」 <br/>*Em rõ rồi ạ, em đi tiếp như vậy ạ.* |
| (1 ヶ月後 contract 締結、Tuấn 知る) **トゥアン** | 「ズン、これ **<ruby>無制限<rt>むせいげん</rt></ruby><ruby>損害<rt>そんがい</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>** じゃないか…1 件 bug で会社潰れるぞ。」 <br/>*Dũng, cái này bồi thường không giới hạn mà… 1 cái bug là công ty mình phá sản đó.* |
| **ハー CTO** | 「これ legal レビュー通したのか？ **<ruby>撤回<rt>てっかい</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>**を今すぐかけるしかない。」 <br/>*Cái này có qua pháp chế xem không em? Bây giờ chỉ còn cách đàm phán rút lại thôi.* |

**Vì sao xấu:** Bồi thường vô hạn = 1 sự cố vận hành có thể dẫn đến khiếu kiện ¥100M+ — Tiên Phát phá sản. Toàn bộ quyền sở hữu trí tuệ thuộc 白鷗 = thành phần AI tái sử dụng không dùng được cho khách khác → Phase 4 mất biên lợi nhuận. Đây là 2 sai sót nghiêm trọng.

---

## Hội thoại TỐT — tinh chỉnh 3 điểm với dữ liệu + đẩy lên cấp trên

*沈黙 5秒 → メモ*

| Vai | Câu |
|---------|-----|
| **大垣** | 「indemnity <ruby>無制限<rt>むせいげん</rt></ruby>、IP 当社<ruby>帰属<rt>きぞく</rt></ruby>でお願いします。」 <br/>*Indemnity unlimited, IP thuộc bên tôi, anh giúp tôi.* |
| **ズン** | 「ご<ruby>要望<rt>ようぼう</rt></ruby>承知しました。**ただし**【1】**、indemnity 無制限は弊社 legal および<ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby><ruby>規定<rt>きてい</rt></ruby> (年契約額) を超えるため、本日中に<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り検討させてください**。」 <br/>*Em ghi nhận yêu cầu của anh. Tuy nhiên, indemnity unlimited vượt quá quy định cap của legal và HĐQT bên em (annual contract value), em xin phép mang về xem trong ngày hôm nay ạ.* |
| (社内 緊急召集) **ハー CTO** | 「3 つ譲れない: ①<ruby>損害<rt>そんがい</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby> = 年契約額 ¥17M、②IP <ruby>分割<rt>ぶんかつ</rt></ruby> (clientA <ruby>固有<rt>こゆう</rt></ruby>コードは<ruby>貴社<rt>きしゃ</rt></ruby>、thành phần AI tái dùng は弊社)、③SLA 99.9% は<ruby>維持<rt>いじ</rt></ruby>。これ以下なら<ruby>撤退<rt>てったい</rt></ruby>【2】。」 <br/>*3 điểm không nhân nhượng: ①Giới hạn bồi thường = giá trị hợp đồng năm ¥17M, ②Quyền sở hữu trí tuệ chia 2 lớp (code riêng của khách thuộc khách, thành phần AI tái dùng thuộc mình), ③SLA 99.9% giữ. Dưới mức này thì rút.* |
| (翌日 大垣との call) **ズン** | 「お時間いただきありがとうございます。**3 点ご相談**: (i) <ruby>損害<rt>そんがい</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby>を **年契約額 ¥17M に設定**、<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>標準<rt>ひょうじゅん</rt></ruby>でございます【3】。(ii) IP は **2 層構造**、御社<ruby>固有<rt>こゆう</rt></ruby> tùy chỉnh は御社、<ruby>汎用<rt>はんよう</rt></ruby> AI component は弊社、<ruby>供与<rt>きょうよ</rt></ruby>いたします。(iii) SLA 99.9% 維持、<ruby>罰則<rt>ばっそく</rt></ruby>は **月額 5% upper cap**。」 <br/>*Em cảm ơn anh đã dành thời gian. Em xin trao đổi 3 điểm: (i) Giới hạn bồi thường đặt ở giá trị hợp đồng năm ¥17M, đây là chuẩn ngành. (ii) Quyền sở hữu trí tuệ cấu trúc 2 lớp, phần tùy chỉnh riêng của bên anh thuộc bên anh, AI component phổ dụng thuộc bên em và bên em cấp phép cho bên anh. (iii) SLA giữ 99.9%, phạt vi phạm giới hạn 5% giá trị tháng.* |
| **大垣** | 「…IP 2 層構造は理解できます。indemnity 上限も legal <ruby>慣行<rt>かんこう</rt></ruby>ですね。社内検討の上、**3 <ruby>営業日<rt>えいぎょうび</rt></ruby>以内にお返事**いたします。」 <br/>*…IP 2 layers tôi hiểu được. Cap indemnity cũng là practice của legal. Bên anh nội bộ thảo luận, trong 3 ngày làm việc sẽ phản hồi.* |
| (3日後) **大垣** | 「3 点とも<ruby>承諾<rt>しょうだく</rt></ruby>いたします。final draft に<ruby>反映<rt>はんえい</rt></ruby>お願いします。」 <br/>*Cả 3 điểm bên tôi đồng thuận. Phiền anh update vào final draft.* |

📝 **Ghi chú:**
- 【1】**「ただし」 + 「持ち帰り検討」** — KHÔNG từ chối ngay mà đưa lên cấp trên xem xét. Phép lịch sự Nhật khi bất đồng.
- 【2】**Hà CTO xác định rõ điểm rút lui** = 3 mục. Dưới mức này thì rút thật. Mơ hồ → bị lật ngược trong đàm phán.
- 【3】**Đóng khung "chuẩn ngành"** = không phải ý kiến cá nhân mà là thông lệ thị trường. Độ tin cậy cao hơn.

---

## Câu chốt

> **「Indemnity 上限 = 年契約額、IP 2 層構造、SLA 99.9% + 罰則 cap。3 点死守。」**
>
> *Giới hạn bồi thường = giá trị hợp đồng năm. Quyền sở hữu trí tuệ tách 2 lớp. SLA + giới hạn phạt. Tử thủ 3 điểm.*

---

## Tránh

- Bồi thường vô hạn → 1 sự cố là phá sản. Bộ phận pháp chế nào cũng phản đối
- Toàn bộ quyền sở hữu trí tuệ thuộc khách → thành phần tái sử dụng không tái dùng được, lợi nhuận -30% tích lũy
- SLA không giới hạn phạt vi phạm → 1 ngày ngừng hoạt động phải trả gấp bội giá trị tháng
- Ký ngay không qua cấp trên xem → đã ký khó thu hồi
- Đàm phán rút lại = sứt mẻ quan hệ. Xác định điểm rút lui từ đầu, tuyệt đối không chấp nhận dưới mức đó

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 損害賠償 | そんがいばいしょう | TỔN HẠI BỒI THƯỜNG | Bồi thường thiệt hại |
| 上限 | じょうげん | THƯỢNG HẠN | Giới hạn / mức trần |
| 帰属 | きぞく | QUY THUỘC | Thuộc về |
| 知的財産 | ちてきざいさん | TRI THỨC TÀI SẢN | Sở hữu trí tuệ |
| 罰則 | ばっそく | BẠT TẮC | Phạt vi phạm |
| 業界標準 | ぎょうかいひょうじゅん | NGHIỆP GIỚI TIÊU CHUẨN | Chuẩn ngành |
| 取締役会 | とりしまりやくかい | THỦ ĐẾ DỊCH HỘI | HĐQT |
| ライセンス供与 | ライセンスきょうよ | CUNG DỮ | Cấp phép sử dụng |
| 営業日 | えいぎょうび | DOANH NGHIỆP NHẬT | Ngày làm việc (ngày mở cửa) |
