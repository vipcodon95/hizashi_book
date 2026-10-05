# V3 — Rà soát phần III "Đi thăm khách" (rule_16 → rule_23)

> Agent V3 · sách 07 `07_visit_card` · phạm vi: 8 file `nội_dung/phần_III/rule_*/rule.md`
> Áp dụng `.claude/rules/book-review.md` mục 1 (bẫy), 3 (chống phóng đại), 4 (trục A→F), 5 (fix nửa vời).
> Mọi kết luận grep đều chạy qua hàm strip ruby (mục 1.1). **CHỈ BÁO CÁO — không sửa file nội dung.**

---

## Bảng tổng kết

| Mức | Số ca | Rule |
|---|---|---|
| 🔴 A — dạy sai việc thật | **4** | rule_21 (×2), rule_19, rule_20 |
| 🔴 B — tự mâu thuẫn | **2** | rule_17, rule_17↔18 |
| 🔴 C — tiếng Nhật sai | **2** | rule_22 (×2) |
| 🔴 D — sai sự thật (WebSearch) | 0 riêng lẻ (đã gộp vào A) | — |
| 🟡 E — tiếng Việt | **1** | rule_20 |
| 🟡 F — nhất quán & meta | **2** | rule_18, rule_16 |
| 🔵 Ghi nhận / ngoài phạm vi | **2** | rule_23 nhãn vai, phần III↔mục lục |

**Nhận định chung:** đúng như thước đo main Claude — phần III **sạch về mặt kỹ thuật** (0 ruby vỡ, 0 ký tự lạ, 0 emoji sót, **0 ca 二重敬語** theo 17 pattern). Toàn bộ lỗi nặng nằm ở **tầng nội dung nghi thức**, tập trung ở rule_19 và rule_21 — đúng hai rule mà prompt trọng tâm chỉ ra.

Lỗi nặng nhất là **rule_21 dạy gõ cửa 2 lần** — nguồn Nhật thống nhất 2 lần là ám hiệu **nhà vệ sinh**, và **đóng cửa 後ろ手** bị nêu đích danh là NG trong mọi tài liệu マナー. Học viên làm đúng theo sách sẽ mắc đúng hai lỗi mà người Nhật để ý nhất khi vào phòng.

---

## 🔴 BẢNG NGHI THỨC — từng quy tắc, nguồn Nhật, kết luận

| # | Quy tắc sách dạy | Rule / dòng | Chuẩn Nhật (nguồn) | Kết luận |
|---|---|---|---|---|
| 1 | Đến sảnh **5-10 phút trước** | 17 d3, d69 | Khảo sát innovation.co.jp: 1-5p (33%) + 6-10p (32%) = 65%. Trên 10p = 迷惑 | ✅ **ĐÚNG** |
| 2 | **Sớm 30 phút = phiền** chủ nhà | 17 d3, d77 | "早すぎると迷惑" "まだ準備ができていない" — xác nhận | ✅ **ĐÚNG** |
| 3 | Sớm quá thì **canh giờ ở cafe**, không vào sảnh | 17 d50, d60, d79 | "近隣までは早めに行き、時間をつぶして" — xác nhận | ✅ **ĐÚNG** |
| 4 | Cởi áo khoác **trước khi vào toà nhà** | 19 d3, d48 | jinzainews: "ビルの入り口が玄関。コートを脱ぐのはビルの入り口の外" | ✅ **ĐÚNG** (nhưng thoại lại làm ngược — xem #5) |
| 5 | Thoại TỐT: cởi áo **trước cửa phòng 803, tầng 8** | 19 d13, d35, d39 | Chuẩn: **cởi trước khi vào toà**. Đi qua sảnh + thang máy + hành lang còn mặc coat = đã sai | 🔴 **SAI — thoại mẫu trái với chính luận điểm** |
| 6 | Gấp áo **úp mặt ngoài vào trong, mặt trong lộ ra** | 19 d49 | Chuẩn **NGƯỢC LẠI**: 裏返す — "裏地が外側（表）になり" (kurashinista, careerpark, mynavi) | 🔴 **SAI — dạy ngược 180°** |
| 7 | Áo khoác đặt **cẳng tay trái**, tay phải tự do | 19 d49-50 | "片方の腕に掛ける" — không quy định trái/phải, để tay phải tự do là hợp lý | ✅ **ĐÚNG** (diễn giải hợp lý) |
| 8 | Không đặt áo lên **bàn họp / lưng ghế** | 19 d67-68 | "椅子の背もたれにかけるのはＮＧ" — xác nhận | ✅ **ĐÚNG** |
| 9 | **Mặc lại áo khoác ở đâu** khi về | — | Chuẩn: **ra khỏi toà nhà rồi mới mặc** ("玄関を出てから身につける") | ⚠️ **THIẾU HẲN** — cả rule_19 lẫn rule_23 không nói |
| 10 | Lễ tân: 4 yếu tố **社名+氏名+担当者+用件** trong 1 câu | 18 d3, d43, d60 | mynavi-agent: "私、〇〇の〇〇と申します。〇時に〇〇課の〇〇様とお約束いただいております" | ✅ **ĐÚNG — khớp mẫu chuẩn** |
| 11 | Gọi người mình gặp là **「田中様」** (không phải 〜さん) | 18 d43 | "訪問相手には必ず「様」を加える" — xác nhận | ✅ **ĐÚNG** |
| 12 | Nói rõ **部署** ("PMO部の田中様"), không chỉ "Tanaka-san" | 18 d52, d69 | "〇〇課の〇〇様" — xác nhận | ✅ **ĐÚNG** |
| 13 | Cúi chào **15°(会釈)** ở lễ tân | 18 d3, d60 | 会釈 15° cho chào hỏi thông thường — chuẩn | ✅ **ĐÚNG** |
| 14 | **入館証** ký + đeo ngực, không bỏ túi | 18 d53 | Thực hành phổ biến toà nhà Tokyo | ✅ **ĐÚNG** |
| 15 | Đợi: **không ngồi 上座**, ngồi 下座 gần cửa | 20 d3, d40 | insource / oggi: "下座に座る、もしくは下座側に立って待つ" | ✅ **ĐÚNG** |
| 16 | Đợi: **đứng** cho tới khi được chỉ ghế | 20 d3 | "下座側に立って待つ" — xác nhận là một lựa chọn hợp lệ | ✅ **ĐÚNG** |
| 17 | **Túi xách để đâu** khi đợi | — | Chuẩn: **dưới chân, phía 下座, dựng đứng cạnh ghế**; không đặt lên ghế bên cạnh khi chưa được mời | ⚠️ **THIẾU** — rule_20 nói phone/laptop nhưng bỏ qua cặp |
| 18 | Không sờ **điện thoại / laptop** khi đợi | 20 d3, d43 | Thực hành chuẩn — hợp lý | ✅ **ĐÚNG** |
| 19 | Chủ nhà vào: **đứng dậy ngay + cúi 30°** | 20 d71 | Chuẩn 敬礼 30° khi chào chính thức | ✅ **ĐÚNG** |
| 20 | Tư thế ngồi đợi gọi là **「正座姿勢」** | 20 d5, d57, d83 | 正座 = quỳ gập gối trên **chiếu tatami**. Ngồi ghế **không gọi là 正座** | 🔴 **SAI thuật ngữ** |
| 21 | **Gõ cửa 2 lần** | 21 d3, d5, d40, d49, d58 | recruit / y-aoyama / denwadaikou đồng loạt: **"2回はトイレ用の合図（国際標準マナー）"**, ビジネスは **3回以上** | 🔴 **SAI — ngược hẳn chuẩn** |
| 22 | Chú thích 【1】: "**3 lần = kiểu gõ cửa WC**" | 21 d49 | **Đảo ngược sự thật**: 2 lần mới là WC, 3 lần là chuẩn ビジネス | 🔴 **SAI — dạy ngược** |
| 23 | Đợi 「どうぞ」 rồi mới mở cửa | 21 d3, d40 | "ノックして応答があってから入室" — xác nhận | ✅ **ĐÚNG** |
| 24 | 「**失礼いたします**」 khi vào, cúi 15° tại ngưỡng | 21 d3, d42, d51 | "入室時に「失礼いたします」と会釈" — xác nhận | ✅ **ĐÚNG** |
| 25 | Đóng cửa **後ろ手** (tay sau lưng) | 21 d3, d5, d44, d52, d58 | careerpark: "**後ろ手にドアを閉めてはNG**"; mynavi-agent: "身体をドア側に向けて閉める" | 🔴 **SAI — dạy đúng cái bị cấm** |
| 26 | Không quay lưng hoàn toàn về phía chủ nhà | 21 d29, d52 | "完全に背を向けるのも失礼、ドアに対して斜めに立つ" — ý đúng | ✅ **ĐÚNG** (nhưng thực thi bằng 後ろ手 là sai — xem #25) |
| 27 | Tham quan: đi sau người dẫn **1-2 bước** | 22 d3, d53 | Chuẩn 案内 — người được dẫn đi sau | ✅ **ĐÚNG** |
| 28 | **Xin phép trước khi chụp**「お写真を撮ってもよろしいでしょうか」 | 22 d43, d54 | Câu xin phép chuẩn, đúng ngữ pháp kính ngữ | ✅ **ĐÚNG** |
| 29 | Không vào phòng cửa mở / không sờ thiết bị | 22 d3, d72-73 | Thực hành NDA ngầm định — hợp lý | ✅ **ĐÚNG** |
| 30 | Rời phòng: **đứng dậy → cúi 30° → ra cửa quay lại cúi lần 2 → 失礼いたします** | 23 d3, d5, d38-43 | r-agent / type.jp: "ドアの前で再度お辞儀してから「失礼いたします」"; "30度の角度でお辞儀" | ✅ **ĐÚNG — khớp chuẩn từng bước** |
| 31 | Cúi lúc rời **sâu hơn** lúc vào (15° vào / 30° ra) | 23 d47, d67 | Nhất quán với 会釈 vào / 敬礼 chào chính thức khi ra | ✅ **ĐÚNG** |
| 32 | Cặp giữ **tay trái**, không ôm trước ngực | 23 d38, d47, d65 | Hợp lý (tay phải tự do) | ✅ **ĐÚNG** |
| 33 | Nói xong mới cúi (tách lời và động tác) | — | type.jp: "「失礼いたします」と言いながらお辞儀をするのではなく、言い終わってから" | ⚠️ **THIẾU** — sách không tách, d43 gộp lời + cúi |

**Tóm tắt bảng:** 24 ĐÚNG · **6 SAI** · 3 THIẾU.

---

## Phát hiện chi tiết

### 🔴 A-1 · rule_21 — Gõ cửa 2 lần: dạy ngược chuẩn Nhật (NẶNG NHẤT)

**Vị trí:** `rule_21_入室/rule.md` d3, d5, d40, d49, d58 (5 chỗ, xuyên suốt luận điểm → thoại → chú thích → câu chốt)

Nguyên văn JA (d5, câu tóm tắt):
```
入室は『2回ノック・"どうぞ"+2秒待機・15度お辞儀+"失礼いたします"・後ろ手で静かに閉扉』の4ステップ。
```
Nguyên văn thoại (d40):
```
| **ズン**【1】 | *(コン コン — 2回ノック、2秒待機)* <br/>*(cốc cốc — gõ 2 lần, đợi 2 giây)* |
```
Nguyên văn chú thích (d49) — **chỗ sai nghiêm trọng nhất**:
> - 【1】**Gõ 2 lần** — chuẩn nghi thức Nhật. **3 lần = kiểu gõ cửa WC**, 1 lần = thân mật.

**Vấn đề.** Ba nguồn マナー Nhật độc lập nói **ngược lại hoàn toàn**:
- recruit directscout: 「『コンコン』と2回だけのノックは、**実はトイレ用の合図**。これは国際標準マナーとして定められています」／「会議室や訪問先のドアをノックするときは、**3回以上**ノックすることが望ましい」
- y-aoyama unicari: 2回=トイレ, 3回=親しい間柄, 4回=正式。日本のビジネスは3回が基本
- denwadaikou: cùng kết luận

Sách không chỉ dạy sai con số, mà còn **gán nhãn "WC" cho đúng con số chuẩn (3 lần)** — học viên học thuộc sẽ chủ động tránh cách gõ đúng.

**Đề xuất.** Đổi toàn bộ `2回ノック` → `3回ノック` (d3, d5, d40, d58) và viết lại d49:
> 【1】**Gõ 3 lần** — chuẩn ビジネス Nhật. **2 lần = ám hiệu nhà vệ sinh** (国際標準マナー), tuyệt đối tránh khi thăm khách. 4 lần là cách trang trọng nhất nhưng người Nhật thường rút còn 3.

⚠️ Lưu ý liên đới: `rule_19_コート` d35 (dòng stage direction) cũng ghi "gõ cửa 2 lần, đợi 2 giây" → phải sửa đồng bộ, nếu không sẽ thành fix nửa vời (mục 5).

---

### 🔴 A-2 · rule_21 — Đóng cửa 後ろ手: dạy đúng cái bị cấm

**Vị trí:** `rule_21_入室/rule.md` d3, d5, d44, d52, d58 (5 chỗ)

Nguyên văn JA (d5):
```
…・後ろ手で静かに閉扉』の4ステップ。
```
Nguyên văn thoại (d44):
```
| **ズン**【4】 | *(1/4回転、後ろ手で扉を音無し閉め)* <br/>*(xoay 1/4, tay sau lưng đóng cửa không tiếng)* |
```
Nguyên văn chú thích (d52):
> 【4】**Đóng cửa không quay lưng** — xoay 1/4 (mặt vẫn hơi nhìn trong phòng), **tay phải hoặc trái sau lưng đẩy nhẹ cửa**.

**Vấn đề.** 「後ろ手で閉める」 là **lỗi bị nêu đích danh** trong tài liệu マナー:
- careerpark 13906: 「相手に尻を見せず**後ろ手にドアを閉めてはNG**」
- mynavi-agent: 「入室時に「失礼いたします」と会釈を行い、**身体をドア側に向けて閉める**」

Chuẩn là **xoay người hướng về phía cửa** (斜めに立つ), dùng **tay đặt lên cửa** đóng nhẹ — chứ không phải thò tay ra sau lưng. Trớ trêu là **ý** của sách đúng (đừng quay lưng về phía khách), nhưng **cách thực thi** lại chính là kỹ thuật bị cấm. Từ 後ろ手 còn được đưa vào bảng từ vựng d83 → khắc sâu lỗi.

**Đề xuất.** Bỏ 後ろ手 khỏi d3, d5, d44, d52, d58 và bảng từ vựng d83. Thay bằng:
> 【4】**Đóng cửa hướng người về phía cửa** — đứng chếch (斜め) so với cửa để không quay lưng hẳn về phía chủ nhà, một tay cầm nắm cửa, **tay kia đặt lên mặt cửa** đỡ cho khỏi phát ra tiếng "BANG". KHÔNG thò tay ra sau lưng đóng (後ろ手 = NG).

---

### 🔴 A-3 · rule_19 — Gấp áo khoác: dạy ngược mặt vải

**Vị trí:** `rule_19_コート/rule.md` d49 (và d69 nhắc lại)

Nguyên văn (d49):
> 【2】**Gấp 2 lần, tay trái** — **gấp úp vào trong (mặt ngoài giấu vào trong, mặt trong lộ ra)**.

Nguyên văn (d69, mục Tránh):
> - Áo khoác **không gấp** → Cẩu thả. **Gấp úp mặt ngoài vào trong.**

**Vấn đề.** Câu tiếng Việt tự nó đã lủng củng ("mặt ngoài giấu vào trong, mặt trong lộ ra" — hai vế mô tả cùng một thao tác nhưng dễ hiểu ngược), và **kết quả mô tả thì trái chuẩn**. Chuẩn Nhật là **裏返す** — lộn cho **lớp lót (裏地) ra ngoài**:
- kurashinista: 「外出先でコートを脱いだらまずは**裏返す**のがマナー。コートに付いた目に見えない**ほこりや花粉を訪問先に持ち込まない**ため」
- careerpark 3197: 「コートの基本的なたたみ方は**裏返しにして二つ折り**」
- mynavi tenshoku: 「両肩に内側から手を入れ…返すと、**裏地が外側（表）になり**」

Điểm mấu chốt: lý do gấp là **bụi/phấn hoa bám ở MẶT NGOÀI** → phải giấu mặt ngoài đi bằng cách lộn lớp lót ra. Đây đúng là logic mà chính rule_19 d3 nêu ("áo khoác = đường xa bụi bặm") — nên đây là lỗi **tự mâu thuẫn với lý lẽ của chính mình**.

**Đề xuất.** Sửa d49 và d69 thành:
> 【2】**Lộn trái, gấp đôi, đặt cẳng tay trái** — thọc hai tay vào trong hai vai áo rồi lộn ngược ra, để **lớp lót (裏地) lộ ra ngoài, mặt ngoài dính bụi được giấu vào trong** (裏返す). Gấp đôi theo chiều dọc rồi vắt lên cẳng tay trái.

---

### 🔴 A-4 · rule_19 — Thoại mẫu cởi áo SAI CHỖ so với chính luận điểm

**Vị trí:** `rule_19_コート/rule.md` d3 (luận điểm) ↔ d13 (bối cảnh) + d35 (stage direction) + d39 (thoại)

Luận điểm d3 nói đúng:
> Áo khoác / khăn quàng **cởi TRƯỚC khi vào tòa nhà** (hoặc trước cửa phòng họp ở tầng)

Nhưng bối cảnh d13 và thoại TỐT lại diễn ra hoàn toàn ở tầng 8:
```
d13: Bước vào sảnh 白鷗 đã ấm, xong vẫn không cởi. Khi lên đến cửa phòng 803 (tầng 8)…
d35: *đến trước cửa 803, dừng 30 giây · cởi áo khoác + khăn quàng, gấp 2 lần…*
d39: | **ズン** | 「**コート脱ごう**【1】。」 → Cởi áo nha.
```
Chú thích d48 hợp thức hoá:
> 【1】**Cởi trước cửa phòng họp** — KHÔNG sau khi ngồi. Tốt nhất: cởi ngay trước cửa tòa nhà (nếu sảnh ấm) hoặc cửa phòng họp (nếu hành lang lạnh).

**Vấn đề.** Chuẩn Nhật **không có ngoại lệ "hành lang lạnh"**: jinzainews nói 「ビルの入り口が玄関です。だから、コートを脱ぐのは、**ビルの入り口の外**」; trường hợp toà nhà nhiều công ty thì 「**1Fフロアの片隅で**ひっそりとコートを脱いで、身支度を調えて堂々とエレベーターホールに向かいましょう」 — tức chậm nhất là **tầng 1**, chưa bao giờ là tầng 8.

Nghiêm trọng vì đây là **thoại TỐT** — thứ học viên sao chép. Học viên sẽ đi qua lễ tân (rule_18!) trong tình trạng còn mặc áo khoác, đúng cái mà rule_18 không hề cảnh báo.

**Đề xuất.** Dời điểm cởi áo về **trước cửa toà nhà / góc sảnh tầng 1**, sửa d13 + d35 + d48. Giữ nguyên thông điệp "KHÔNG cởi sau khi ngồi". Nếu muốn giữ kịch tính, có thể để 「コート脱ごう」 xảy ra ở sảnh tầng 1 trước khi tới quầy lễ tân — như vậy nối liền mạch với rule_18.

---

### 🔴 A-5 (bổ sung) · rule_19 + rule_23 — THIẾU quy tắc mặc lại áo khoác lúc về

**Vị trí:** không có ở đâu — `rule_19` chỉ dạy cởi, `rule_23` (退室) không nhắc áo khoác.

**Vấn đề.** Chuẩn Nhật quy định rõ: 「最後にお暇する際、コートや帽子類は、**玄関を出てから身につける**」／「退出時は**建物を出てから**コートを着る」. Ngoại lệ: nếu chủ nhà mời 「お寒いのでお召しください」 thì được mặc tại chỗ, đáp 「お言葉に甘えて」.

Đây là **nửa còn lại của chính quy tắc rule_19**. Sách dạy vế đi mà bỏ vế về → học viên mặc áo khoác ngay trong phòng họp hoặc trong thang máy trước mặt chủ nhà.

**Đề xuất.** Bổ sung một dòng vào mục Tránh của rule_19 và một chú thích ở rule_23:
> - **Mặc lại áo khoác trong phòng / thang máy / sảnh** → chỉ mặc **sau khi ra khỏi toà nhà**. Nếu chủ nhà mời 「お寒いのでどうぞお召しください」 thì đáp 「お言葉に甘えて、失礼いたします」 rồi mới mặc.

---

### 🔴 A-6 (bổ sung) · rule_20 — THIẾU chỗ để cặp khi ngồi đợi

**Vị trí:** `rule_20_待機/rule.md` — d3 liệt kê 6 mục, không có mục nào về cặp.

**Vấn đề.** Prompt trọng tâm hỏi đúng điểm này ("túi xách để đâu"). Chuẩn Nhật: 「かばんを置く位置は、基本的には**自分の足元（下座側）**」／「バッグは自分の腰掛ける**椅子の横の床に立てて置く**。自立しないバッグの場合は椅子の脚に立てかけておきます。**隣の席に断りなく置くのはマナー違反**」.

Rule_20 rất chi tiết về phone/laptop/tư thế nhưng bỏ trống cặp — trong khi cặp là thứ **nhìn thấy ngay** khi chủ nhà bước vào. rule_23 d38 có nhắc "cặp ở tay trái" nhưng đó là lúc đứng dậy ra về, không phải lúc đợi.

**Đề xuất.** Thêm mục (7) vào luận điểm d3 và một chú thích:
> **Cặp đặt dưới sàn, dựng đứng cạnh chân ghế phía 下座** — KHÔNG đặt lên ghế bên cạnh, KHÔNG đặt lên bàn họp. Cặp mềm không tự đứng thì dựa vào chân ghế. Chỉ đặt lên ghế khi chủ nhà mời 「お荷物は椅子の上にどうぞ」.

---

### 🔴 B-1 · rule_17 — Phép tính giờ trong thoại TỐT tự mâu thuẫn

**Vị trí:** `rule_17_5分前/rule.md` d49 (thoại TỐT) ↔ d45, d13

Nguyên văn JA (d49):
```
「白鷗本社到着目標 9:55【1】。新宿駅まで5分、駅から徒歩7分、+buffer3分 = 9:50 出発で OK。」
```
Bản Việt cùng dòng:
> *Mục tiêu đến trụ sở 白鷗 9:55. Đến ga Shinjuku 5p, từ ga đi bộ 7p, + dự phòng 3p = 9:50 xuất phát OK.*

**Vấn đề.** 5 + 7 + 3 = **15 phút**. Xuất phát 9:50 thì đến **10:05** — tức **muộn 5 phút**, đúng cái lỗi mà cả rule này đang dạy tránh. Muốn đến 9:55 phải xuất phát **9:40**.

Ngoài ra còn lệch với stage direction ngay trên nó (d45): *"9:30, sảnh khách sạn · **9:53** đến trước cửa 白鷗"* — 9:53 không khớp cả 9:50 lẫn 9:55.

Đây là lỗi loại B "trong cùng vài dòng" (mục 4B). Nguy hiểm vì học viên đang được dạy **kỹ năng tính ngược thời gian** — mà con số mẫu lại sai.

**Đề xuất.** Sửa d49 thành `= 9:40 出発で OK` (bản Việt: "9:40 xuất phát"), hoặc giữ 9:50 và giảm tổng lộ trình còn 5 phút. Kiểm luôn d45 cho khớp.

---

### 🔴 B-2 · rule_17 ↔ rule_18 — Số phòng họp lệch (805 vs 803)

**Vị trí:** `rule_17` d36 ↔ `rule_18` d46, `rule_19` d13/d35, `rule_20` d13, `rule_21` d13

- rule_17 d36: *(đăng ký tại lễ tân, được bảo **"tầng 8 phòng 805"**)*
- rule_18 d46: 「会議室は8階の**803号室**でございます」
- rule_19 d13 + d35, rule_20 d13, rule_21 d13: đều **803**

**Vấn đề.** 805 xuất hiện đúng **1 lần**, 803 xuất hiện **5 lần** ở 4 rule khác nhau → 805 là lỗi gõ.

⚠️ **Đã cân nhắc mục 3 (chống phóng đại):** dòng d36 nằm trong khối **Hội thoại XẤU**, mà khối này cố tình chứa lỗi. Tuy nhiên lỗi cố ý ở tình huống B là **đến đúng giờ nên bị trễ thực tế** — số phòng không phải là điểm dạy. Không có chú thích nào bảo "805 là sai". Vậy đây là lỗi thật, không phải thiết kế.

**Đề xuất.** Sửa d36: `805` → `803`.

---

### 🔴 C-1 · rule_22 — 「合影」 là từ tiếng Trung, không phải tiếng Nhật

**Vị trí:** `rule_22_社内案内/rule.md` d43

Nguyên văn JA:
```
「お写真を撮ってもよろしいでしょうか【2】？team合影として記念に。」
```
Bản Việt: *Em xin phép chụp ảnh được không ạ? Để làm kỷ niệm chung của team ạ.*

**Vấn đề.** 合影 (héyǐng) là **từ tiếng Trung** nghĩa "ảnh chụp chung". Từ điển Weblio 日中中日 và Kotobank đều xếp nó là mục từ **tiếng Trung**; tiếng Nhật dùng **集合写真** hoặc **記念写真**. Người Nhật đọc 「合影」 sẽ không hiểu ngay.

Đây đúng loại lỗi "ký tự / từ vựng Trung lọt vào bản Nhật" mà book-review mục 4E cảnh báo. Chú thích d54 lặp lại lỗi: *Nói rõ mục đích ("team合影")*.

**Đề xuất.** d43 + d54: `team合影` → `チームの集合写真` (hoặc `記念写真`). Câu gợi ý:
> 「お写真を撮ってもよろしいでしょうか？チームの**集合写真**として記念に。」

---

### 🔴 C-2 · rule_22 — 「お通りすぎいたしましょう」 sai ngữ pháp kính ngữ

**Vị trí:** `rule_22_社内案内/rule.md` d46 (thoại TỐT, lời của 田中PMO) + d55 (chú thích)

Nguyên văn JA (d46):
```
「こちらは別件のmeeting中で、お通りすぎいたしましょう。」
```
Bản Việt: *Phòng này đang họp việc khác, mình đi qua thôi nhé.*

Chú thích d55 củng cố:
> Tanaka có thể nói "通りすぎいたしましょう" (chúng ta đi qua thôi) = ngầm ý không vào.

**Vấn đề.** Ba lỗi chồng nhau:
1. **Khuôn 「お+動詞連用形+いたす」 là 謙譲語 I**, chỉ dùng cho hành vi **của mình hướng tới người nghe** (お渡しいたします, ご案内いたします). 通り過ぎる là **tự động từ chỉ di chuyển**, không có đối tượng thụ hưởng → không nhét vào khuôn này được.
2. Câu này chủ ngữ là **「chúng ta cùng đi qua」** (bao gồm cả khách) → dùng 謙譲語 cho hành vi của khách là **sai hướng kính ngữ**.
3. Dạng đúng của 通り過ぎる trong khuôn đó cũng phải là 「お通り過ぎ〜」 chứ không phải 「お通りすぎ〜」 (lẫn kanji/kana giữa chừng).

Nghiêm trọng vì đây là **lời của nhân vật Nhật bản ngữ trong thoại TỐT** — học viên mặc định đó là mẫu chuẩn.

**Đề xuất.** Thay bằng câu tự nhiên, ví dụ:
> 「こちらは別件の打ち合わせ中ですので、**このまま通らせていただきます**。」
hoặc đơn giản hơn: 「こちらは別件の打ち合わせ中ですので、**先へ進みましょう**。」

Chú thích d55 sửa theo. Tiện thể `meeting` trong d46 nên đổi thành 打ち合わせ cho khớp với chính từ mà sách dùng khắp nơi (お打ち合わせ ở rule_18 d43, rule_23 d39).

---

### 🔴 C-3 · rule_20 — 「正座」 dùng sai cho tư thế ngồi ghế

**Vị trí:** `rule_20_待機/rule.md` d5, d57 (câu chốt) + d83 (bảng từ vựng)

Nguyên văn JA (d5):
```
待機中は『上座非占有・指示なき限り立位 or 下座着席・スマホ/laptop非操作・正座姿勢』。
```
Câu chốt d57 lặp lại y hệt; bảng từ vựng d83: `| 正座 | せいざ | CHÍNH TỌA | Tư thế ngồi nghiêm |`

**Vấn đề.** 正座 là **kiểu ngồi quỳ gập gối, mông đặt lên gót**, trên chiếu/sàn (Wikipedia JA: 「膝を揃えて畳んだ座法（屈膝座法）」). Bối cảnh rule_20 là **phòng họp có bàn ghế** (d13, d42: 「下座に着席、背筋伸ばし、手は膝上」) — ngồi ghế **không bao giờ gọi là 正座**.

Bản Việt của chính sách dịch đúng ý ("lưng thẳng tay trên gối" — d42, d59), nhưng **từ Nhật thì sai**. Đây là ca "vá bản Việt, sai bản Nhật" ngược với mục 5.2. Vì 正座 nằm trong **câu chốt** (thứ học viên học thuộc) và **bảng từ vựng**, tác hại nhân đôi.

**Đề xuất.** Thay `正座姿勢` bằng **`姿勢を正す`** hoặc **`背筋を伸ばした姿勢`** ở d5 và d57. Bảng từ vựng d83: bỏ dòng 正座, thay bằng `| 背筋を伸ばす | せすじをのばす | — | Thẳng lưng |` (từ này đã có sẵn trong thoại d42).

---

### 🟡 E-1 · rule_20 — Bản Việt d45 lệch sắc thái so với JA

**Vị trí:** `rule_20_待機/rule.md` d45

Nguyên văn JA:
```
「お忙しいところ、お時間頂戴いたしまして恐縮でございます。」
```
Bản Việt: *Anh bận rộn mà dành thời gian cho em, em ngại quá ạ.*

**Vấn đề.** 「恐縮でございます」 là mức trang trọng cao nhất dùng với CFO, nghĩa gần "thật lấy làm áy náy / xin lượng thứ". Dịch "**em ngại quá ạ**" hạ xuống văn nói suồng sã — mất hẳn tầng trang trọng, và "ngại" trong tiếng Việt còn dễ hiểu sang nghĩa "xấu hổ, e dè". Chú thích d51 tự nói câu này "Cao hơn「よろしくお願いします」" nhưng bản dịch lại nghe thấp hơn.

rule_21 d46 lặp lại đúng cặp câu này với bản dịch cũng vậy → sửa thì sửa cả hai.

**Đề xuất.** *"Anh đang bận mà vẫn dành thời gian cho chúng em, thật quá ái ngại ạ."* hoặc *"…em xin cảm tạ, thật ngại vì đã làm phiền anh ạ."*

---

### 🟡 F-1 · rule_18 — Cross-ref sai: "trả thẻ lúc về (rule 22)"

**Vị trí:** `rule_18_受付/rule.md` d53

Nguyên văn:
> 【4】**入館証 ký + đeo** — KHÔNG để trong túi. Đeo lên ngực. **Trả lại lúc về (rule 22)**.

**Vấn đề.** Đã grep 入館証 toàn bộ 35 rule của sách (strip ruby): từ này **chỉ xuất hiện trong rule_18**, 5 lần. rule_22 nói về tham quan văn phòng, **không hề nhắc trả thẻ**; rule_23 (退室) cũng không.

⚠️ **Đã kiểm mục 1.6 (cross-ref liên sách):** dòng này không có tiền tố "Sách 0X", nên đúng là trỏ nội bộ sách 07. Không phải báo động sai.

**Đề xuất.** Hai lựa chọn — (a) sửa cross-ref thành `rule 23` **và** bổ sung một dòng về trả 入館証 vào rule_23; hoặc (b) bỏ ngoặc "(rule 22)", chỉ để "Trả lại lúc về". Khuyến nghị (a) vì trả thẻ là bước thật của quy trình rời toà nhà, và rule_23 hiện dừng ở cửa phòng họp — chưa dẫn học viên ra khỏi toà.

---

### 🟡 F-2 · rule_16 — Luận điểm VN nói "cravate", JA nói "濃色", lệch với thân bài "濃紺"

**Vị trí:** `rule_16_訪問準備/rule.md` d3 ↔ d5 ↔ d40/d47/d56

- d5 (JA tóm tắt): `スーツ**濃色**ネクタイ`
- d40, d47, d56, d85 (thân bài + checklist + câu chốt): đều `**濃紺**` (xanh navy đậm)

**Vấn đề.** 濃色 (màu đậm nói chung) ≠ 濃紺 (navy đậm cụ thể). Câu tóm tắt JA ở d5 là thứ dễ được trích ra làm nhãn/phụ lục, nhưng lại dùng từ khác với 4 chỗ còn lại. Mức độ nhẹ — không dạy sai, chỉ thiếu nhất quán từ vựng.

Ngoài ra d5 viết liền `スーツ濃色ネクタイ` không có dấu phân cách, đọc dễ dính thành một cụm.

**Đề xuất.** d5: `スーツ濃色ネクタイ` → `スーツ濃紺・ネクタイ` cho khớp d56.

---

### 🔵 Ghi nhận 1 · Nhãn vai 「トゥアンリーダー」 — vấn đề TOÀN SÁCH, không phải riêng phần III

**Vị trí:** `rule_23_退室` d25, d39, d43 (3 lần).

Grep toàn sách (strip ruby): xuất hiện ở **7 rule / 17 lần** — rule_23 (3), rule_25 (1), rule_26 (2), rule_27 (3), rule_33 (2), rule_34 (5), rule_35 (1).

**Nhận định.** Đây là **cột "Vai"** (nhãn kịch bản cho người đọc), **không phải lời thoại** — nên **không** vi phạm quy tắc uchi/soto (mục 4C nói về việc *xưng* chức danh đồng nghiệp *khi nói với khách*). Trong chính rule_21 d43, Tuấn tự giới thiệu là 「技術リーダーのトゥアンと申します」 — tự nêu chức danh của mình với khách là **hợp lệ**.

Tuy nhiên có **lệch nhất quán**: cùng nhân vật, phần III dùng cả 「トゥアン」 (rule_16→22) lẫn 「トゥアンリーダー」 (rule_23). Trong cùng rule_23 thì Dũng là 「ズン」 trần còn Tuấn có hậu tố.

→ **Vượt phạm vi V3** (dính 5 rule ngoài phần III). Đề nghị main Claude giao V5 (nhất quán toàn sách) quyết một thể. **V3 không đề xuất sửa.**

---

### 🔵 Ghi nhận 2 · Mục lục vs H1 — thuộc phép đo #1 của main Claude

Main Claude đã đo "VN lệch 11/35". V3 xác nhận phần III không có H1 nào sai lệch nội dung so với thân rule (tiêu đề mô tả đúng thứ rule dạy). Việc đối chiếu chuỗi với `meta/mục_lục.md` thuộc phạm vi V5. **V3 không mở rộng.**

---

## Kiểm chứng "fix đợt trước" (book-review mục 5)

Sách 07 **chưa từng có `_review/`** (00_TIEN_DO.md d14) và **không có `meta/REVIEW_FINDINGS*.md`**. Đây là đợt rà soát đầu tiên → **không có gì để đối chiếu ĐÃ FIX / CHƯA FIX**. Bảng này không áp dụng cho đợt V3.

Riêng phép đo keigo của main Claude: V3 chạy lại 17 pattern trên 8 file phần III → **0 ca**. Xác nhận 2 ca keigo (`お伺いさせていただきます`) nằm ở rule_30, **ngoài phạm vi V3**.

---

## ⛔ CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| # | Vị trí | Nội dung | Vì sao ĐỪNG đụng |
|---|---|---|---|
| 1 | rule_17 d3, d69, d71 | **"5-10 phút trước"** | Khớp khảo sát Nhật (1-5p 33% + 6-10p 32%). Đừng rút về "5 phút" cho khớp tên thư mục `rule_17_5分前`. **Tên thư mục mới là thứ lệch, không phải nội dung.** |
| 2 | rule_17 d77, d79 | **"30 phút sớm = phiền"**, "sớm 15-20p thì đợi ở cafe" | Đúng chuẩn 「早すぎると迷惑」. Đừng đổi thành "đến sớm càng tốt". |
| 3 | rule_18 d43 | 「**PMO部の田中様**とお打ち合わせのお約束にてお伺いしました」 | Khớp mẫu chuẩn 「〇時に〇〇課の〇〇様とお約束いただいております」. **「様」 với người mình sắp gặp là ĐÚNG** — đừng đổi thành 〜さん vì tưởng là uchi/soto. |
| 4 | rule_18 d3, d60 | Cúi **15°** ở lễ tân | 会釈 15° đúng cho chào hỏi. Đừng nâng lên 30° cho "trang trọng hơn". |
| 5 | rule_20 d40 | 「**下座でお待ちいたします**」 | Chủ động khai ngồi 下座 — đúng chuẩn 「下座に座る、もしくは下座側に立って待つ」. |
| 6 | rule_20 d3 | **KHÔNG ngồi 上座 dù được mời 「どこでもどうぞ」** | Đúng. Đừng "mềm hoá" thành "được mời thì ngồi". |
| 7 | rule_21 d42, d51 | 「**失礼いたします**」 khi vào + cúi 15° tại ngưỡng | Đúng chuẩn 「入室時に「失礼いたします」と会釈」. |
| 8 | rule_21 d3, d40 | **Đợi 「どうぞ」 rồi mới mở cửa** | Đúng. (Chỉ số lần gõ sai — xem A-1. Đừng nhân tiện sửa luôn bước đợi.) |
| 9 | rule_22 d43 | 「**お写真を撮ってもよろしいでしょうか**」 | Câu xin phép chuẩn, kính ngữ đúng. (Chỉ `team合影` sai — xem C-1. Đừng viết lại cả câu.) |
| 10 | rule_23 d38, d42, d47 | **Cúi 30° lúc rời, ra cửa quay lại cúi lần 2** | Khớp từng bước với r-agent/type.jp: 「ドアの前で再度お辞儀してから「失礼いたします」」+「30度の角度でお辞儀」. **Toàn bộ rule_23 là rule chuẩn nhất phần III — đừng đụng.** |
| 11 | rule_23 d67 | "Cúi lúc rời **sâu hơn** lúc vào" | Đúng logic 会釈(vào) → 敬礼(ra). Đừng "chuẩn hoá" cho bằng nhau. |
| 12 | rule_19 d3 | Luận điểm "**cởi TRƯỚC khi vào tòa nhà**" | **Vế này ĐÚNG** — cái sai là thoại mẫu ở d13/d35 làm ngược (A-4). Sửa thoại cho khớp luận điểm, **KHÔNG sửa luận điểm cho khớp thoại**. |
| 13 | rule_16 d50 | Omiyage mua **từ VN, không mua ở Narita** | Đúng tinh thần 心遣い. |
| 14 | Toàn phần III | `PMO` `CFO` `Phase 3` `Suica` `Slack` trong ô JA | **Không phải "tiếng Anh thừa"** — là thuật ngữ ngành/tên riêng, người Nhật viết y hệt. Mục 3 đã ghi nhận ca phóng đại kiểu này ở sách 09. Riêng `meeting` (rule_22 d46) thì nên đổi 打ち合わせ vì sách đã dùng từ đó ở chỗ khác. |
| 15 | rule_18 d23, d50 | 「Hi, we're here for a meeting…」 / 「Hello」 | Nằm trong **khối XẤU** và mục Tránh — **lỗi CỐ Ý**. Đừng báo là lỗi của sách. |
| 16 | rule_16 d23-27, rule_17 d25-28, rule_20 d24-26, rule_21 d24-26, rule_22 d24-28, rule_23 d24-27 | Toàn bộ **Hội thoại XẤU** | Văn suồng sã (だっけ / 俺 / じゃ、帰ります), thiếu kính ngữ — **thiết kế cố ý**. |

---

## Phụ lục — nguồn WebSearch đã dùng

| Chủ đề | Nguồn |
|---|---|
| Số lần gõ cửa | [recruit directscout](https://directscout.recruit.co.jp/contents/article/2081/) · [y-aoyama unicari](https://www.y-aoyama.jp/unicari/manners/5907/) · [denwadaikou](https://denwadaikou.jp/column/blog/000334/) |
| Cởi áo khoác — thời điểm | [日本人材ニュース](https://jinzainews.net/7469/) · [careerpark 3197](https://careerpark.jp/3197) · [precious.jp](https://precious.jp/articles/-/16792) |
| Gấp áo khoác — lộn trái | [kurashinista](https://kurashinista.jp/column/detail/12051) · [mynavi tenshoku](https://tenshoku.mynavi.jp/knowhow/mensetsu/guide/65/) · [朝時間.jp](https://asajikan.jp/article/237289) |
| Mặc lại áo khoác lúc về | [diamond.jp](https://diamond.jp/articles/-/358860) · [tailorstylelab](https://tailorstylelab.com/coat-timing-etiquette/) |
| Đến sớm bao nhiêu phút | [innovation.co.jp khảo sát](https://www.innovation.co.jp/urumo/enquete1_visit_time/) · [Oggi.jp](https://oggi.jp/6118247) · [denwadaikou](https://denwadaikou.jp/column/blog/000201/) |
| Xưng danh ở lễ tân | [mynavi-agent CANVAS](https://mynavi-agent.jp/dainishinsotsu/canvas/2021/02/1-1.html) · [日経xTECH](https://xtech.nikkei.com/it/article/COLUMN/20091124/340930/) · [宮崎県社協](https://www.mkensha.or.jp/job/manners/manners08.html) |
| Ngồi đợi 下座 + chỗ để cặp | [insource](https://www.insource.co.jp/mailmagazine/sel20110829.html) · [Oggi.jp バッグ](https://oggi.jp/6139608) |
| Đóng cửa 後ろ手 NG | [careerpark 13906](https://careerpark.jp/13906) · [mynavi-agent 面接マナー](https://mynavi-agent.jp/knowhow/interview_method/manners/04.html) |
| 退室 quay lại cúi chào | [リクルートエージェント](https://www.r-agent.com/guide/jobinterview/13128/) · [type.jp](https://type.jp/tensyoku-knowhow/technique/interview/business-manners/) |
| 正座 định nghĩa | [Wikipedia JA 正座](https://ja.wikipedia.org/wiki/%E6%AD%A3%E5%BA%A7) · [nippon.com](https://www.nippon.com/ja/guide-to-japan/gu020002/) |
| 合影 là tiếng Trung | [Weblio 日中中日辞典](https://cjjc.weblio.jp/content/%E5%90%88%E5%BD%B1) · [Kotobank 中日辞典](https://kotobank.jp/zhjaword/%E5%90%88%E5%BD%B1) |
