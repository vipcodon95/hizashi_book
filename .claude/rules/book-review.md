# Rule — Rà soát & sửa sách Hizashi

> Đúc kết từ 5 đợt rà soát thật: sách 10 (Business Japanese), 08 (Smalltalk), 09 (Real Dialogues), 02 (Điện thoại), 03 (Họp).
> Mục đích: nạp vào prompt subagent để nó **không mơ hồ**, và để main Claude **đánh giá được báo cáo** thay vì tin sẵn.

---

## ⛔ MỤC ĐÍCH DUY NHẤT: REVIEW **NỘI DUNG** — tức các file `.md`

**Đối tượng rà soát là NỘI DUNG HỌC VIÊN ĐỌC.** Cụ thể:
- `nội_dung/phần_*/rule_*/rule.md` — thứ chính
- `nội_dung/chương_*/chương.md` (sách dạng hội thoại)
- `meta/mục_lục.md`, `nội_dung/_front_matter.md`, `_back_matter.md`, `_thuat_ngu.md` — vì học viên cũng đọc

**Câu hỏi phải trả lời:** nội dung có dạy SAI không? có tự MÂU THUẪN không? tiếng Nhật có đúng không? dịch có lệch không?

### KHÔNG thuộc phạm vi — đừng tự ý mở rộng sang

| Không đụng | Vì sao |
|---|---|
| `conversation.json` | Pipeline không đọc; chốt riêng từng đợt nếu cần |
| **Script build** (`build_appendices.py`, `build_book.sh`, `gen_sql.py`…) | Là công cụ, không phải nội dung |
| **Phụ lục** (`phụ_lục_*.md`) | File **sinh tự động** — sửa tay sẽ bị ghi đè. Chỉ BÁO CÁO lỗi, không sửa |
| Đếm dấu ngoặc, đếm ký tự, kiểm cú pháp file | Không liên quan chất lượng dạy học |

**Nếu phát hiện lỗi nằm ngoài phạm vi** (vd phụ lục mang tiêu đề sách khác, script hardcode sai): **GHI VÀO BÁO CÁO, KHÔNG TỰ SỬA.** Chờ chủ nhà quyết — đó là đợt việc khác.

⚠️ **Bài học sách 03:** main Claude được giao "kiểm tra nội dung file md rule", nhưng khi agent báo lỗi phụ lục thì đã đi sửa `build_appendices.py` và ngồi đếm dấu ngoặc trong phụ lục. Cả hai đều **ngoài phạm vi**. Chủ nhà hỏi *"script là gì?"* là hỏi cho rõ, **không phải giao việc** — đừng suy diễn câu hỏi thành lệnh.

---

## 0. Nguyên tắc bất di bất dịch

| # | Nguyên tắc |
|---|---|
| 0 | **Bám đúng phạm vi ở trên.** Ra ngoài thì báo cáo, không tự sửa. |
| 1 | **Giai đoạn rà soát CHỈ báo cáo, không sửa.** Sửa là việc của main Claude sau khi đã kiểm chứng. |
| 2 | **Main Claude PHẢI tự kiểm chứng trước khi sửa hàng loạt.** Xem mục 3 — đã có 8 lần agent phóng đại phạm vi. |
| 3 | **Nguồn sự thật là `.md`.** Pipeline `build_release_books_02_08.py` chỉ đọc `rule.md` / `chương.md`, còn strip mọi tham chiếu tới `conversation.json`. |
| 4 | **Rule nào/chương nào sạch thì nói sạch.** Không bịa lỗi cho đủ số. |
| 5 | **Báo cả chỗ ĐÚNG mà dễ bị sửa nhầm** — lập danh sách "CẤM SỬA" ở cuối báo cáo. |

---

## 1. Bẫy kỹ thuật — dính là kết luận sai

### 1.1 Ruby chen giữa kanji → grep trả 0 dù chuỗi có thật
```
弊社<ruby>...<rt>へいしゃ</rt></ruby>のトゥアン
```
`grep "弊社のトゥアン"` → **0 kết quả**, tưởng chưa fix. Thực tế có.

**Luôn strip ruby trước khi kết luận "không có":**
```python
def strip(t):
    return re.sub(r'<rt>[^<]*</rt>', '', t).replace('<ruby>', '').replace('</ruby>', '')
```
Đã dính 3 lần (main Claude 1, C3 1, và suýt bỏ sót lỗi rule_58 sách 02).

### 1.2 Đếm thư mục ≠ đếm rule
Nhiều sách có **thư mục rác chỉ chứa `.placeholder`** (tên slug cũ sót lại sau đổi tên). Sách 02 có 10 cái như vậy → đếm thư mục ra 70, thực tế 60 rule.
```bash
find nội_dung -name 'rule.md' | wc -l      # ĐÚNG
ls -d nội_dung/phần_*/rule_* | wc -l        # SAI
```

### 1.3 Bug ruby-loss khi câu bị LẶP giữa hai khối
Khối `## Hội thoại TỐT` thường lặp lại lời mở của khối `## Hội thoại XẤU`. **Khi lặp thì bản thứ hai mất 100% ruby.** Sách 03 dính 7 ca, rải khắp 4/5 phần (rule_08, 21, 22, 24, 25, 29, 33) — agent rà theo phạm vi chỉ thấy phần mình, không thấy quy mô thật.

Script phát hiện + sửa (chạy cho TOÀN SÁCH, không theo phạm vi agent):
```python
# gom câu theo bản đã strip ruby; nếu cùng 1 câu có bản CÓ ruby và bản KHÔNG
# → lấy bản có ruby (dài nhất) đắp lại cho bản thiếu
best = {}
for l in lines:
    for c in re.findall(r'「([^」]{10,})」', l):
        k = strip(c)
        if '<ruby>' in c and (k not in best or len(c) > len(best[k])): best[k] = c
```

### 1.4 Phụ lục kế thừa khung SÁCH KHÁC
Sách 03 (Họp) có phụ lục A+B mang tiêu đề **sách 02 (Điện thoại)**: "Nền tảng trước nhấc máy", "Nhận điện thoại", "Gọi điện thoại đi"; header còn khai "từ 60 rules" (sách 03 chỉ có 50 — 60 là số của sách 02).
Khác bug 159 nhãn ở sách 08. Kiểm: đọc tiêu đề Phần trong phụ lục, đối chiếu với `meta/mục_lục.md` của CHÍNH sách đó.
⚠️ Phụ lục là file **sinh tự động** → sửa ở script, không sửa tay.

### 1.5 `grep -c` trả 0 làm shell thoát giữa chừng
Trong vòng lặp `for`, `grep -c` không khớp sẽ trả exit code 1 và ngắt lệnh. Dùng `|| echo 0` hoặc `python3`.

### 1.6 Cross-ref có 2 dạng: trong sách và LIÊN SÁCH
Dòng `**Liên quan:**` trộn cả hai: `Rule 18 (vắng mặt)` là rule cùng sách, còn
`Sách 02 Rule 25 (gọi báo trễ)` trỏ sang **sách khác**.

**Đã báo động sai (sách 03):** regex quét `[Rr]ule (22|25)` cắt mất tiền tố `Sách 02`,
khiến tôi tưởng rule_17 mô tả sai rule 25. Quét phải giữ đủ tiền tố mới kết luận được.

### 1.7 ⚠️ Script sửa hàng loạt — glob rộng làm trôi khỏi phạm vi
**Đã xảy ra (sách 04):** script thay `仮謝罪` chạy `glob('nội_dung/phụ_lục/*.md')` nên sửa luôn 2 file
phụ lục — file **sinh tự động, ngoài phạm vi** (mục 1.4). Phải hoàn nguyên.

Nguy hiểm ở chỗ: sửa 1 file bằng Edit thì có ý thức về file đó, còn script quét glob thì
**vùng ảnh hưởng rộng hơn ý định** mà không có gì cản.

Quy tắc:
- Script sửa file phải **liệt kê đường dẫn cụ thể**, hoặc glob giới hạn đúng `rule_*/rule.md`.
- **Luôn `print()` từng file đã đổi** — rồi ĐỌC danh sách đó trước khi đi tiếp.
- Sửa ≤ 3 chỗ thì dùng Edit, đừng viết script.
- Script chỉ thật sự cần khi lỗi lặp đều khắp (vd: emoji strip 40/40 file).

---

## 2. Chuỗi build — sửa xong phải đi tới đâu

```
rule.md / chương.md
   └→ build_release_books_02_08.py  (CHỈ đọc .md, strip ref tới .json)
        └→ release/books/<slug>/*.md
             └→ build_sql_from_release.py
                  └→ release/books_sql/*.sql
                       └→ seed_books_to_local_db.py → DB
```

**Sách 10 có chuỗi RIÊNG và có bẫy:**
```
JSON gốc → normalize_business_japanese_json.py → _normalized/ → build_sql_business_japanese.py
```
`build_sql` đọc `_normalized/`, **không đọc file gốc**. Sửa gốc mà quên chạy normalize = mọi thứ không vào DB.

**Kiểm sau khi sửa:** build lại rồi grep nội dung mới trong `release/` (nhớ strip ruby).

---

## 3. Agent hay phóng đại phạm vi — 5 ca đã ghi nhận

| Sách | Agent báo | Thực tế | Nguyên nhân |
|---|---|---|---|
| 09 | 91 dòng tiếng Việt lọt ô JA (#S4) | **11** | 55 dòng có nhãn `(ベトナム語)` là CHỦ Ý thiết kế; 25 dòng là danh từ riêng (`Tết`, `phở`, `Ốc hương`) |
| 08 | 43 dòng xưng hô sai | **7** | Phần lớn "Em" là **ngôi 2** (khách gọi nhân vật Việt) — hợp lệ |
| 09 | 30 lượt xưng hô sai | **9** | cùng lý do |
| 02 | 6 ca "lệch md↔json" | **1** | So nhầm **hai lượt thoại khác nhau** (d43 người A chào, d44 người B đáp) |
| 08 | 6 rule lộ văn dàn ý | **2** | — |
| 02 | "56/60 rule thiếu bài luyện BJT" | **0** | Bài luyện nằm ở **Phụ lục C** (60 câu/60 rule). 4 khối trong rule.md là bản TRÙNG |
| 03 | rule_05 "mâu thuẫn 5MB vs 10MB" | **0** | File chỉ có MỘT ngưỡng 10MB |
| 03 | rule_39 "5月末 mâu thuẫn 7月末" | **0** | `5月末` là **納期** (deadline giao), `7月末` là **リリース** (ngày phát hành) — hai mốc khác nhau |

**Tin vui:** ở sách 03, cả 3 agent **tự chặn phóng đại** sau khi được nạp rule này (469→41, ~140→6, và tự loại từ tiếng Anh có mặt trong bản Nhật). Rule có tác dụng.

**Cách main Claude kiểm chứng:** viết script quét toàn bộ, đối chiếu JA↔VN, rồi mở tận nơi vài ca mẫu. Đừng sửa theo con số trong báo cáo.

---

## 4. Trục rà soát — theo mức nghiêm trọng

### 🔴 A. Sách dạy người học làm SAI VIỆC THẬT (nặng nhất)
- Lời khuyên gây hại: sách 08 rule_15 nói **ngược** cơ chế ヒートショック (tụt huyết áp gây ngất, sách viết "huyết áp lên").
- Dạy làm việc không được phép: sách 09 ch04 dạy xin miễn thuế trong khi nhân vật cầm **visa làm việc** (không thuộc diện).
- Nhận trách nhiệm quá sớm: `全責任は弊社にございます` làm câu chốt học thuộc mà không nêu điều kiện → rủi ro pháp lý. Phải phân biệt **全面謝罪** (đã xác minh lỗi của mình) vs **部分謝罪** (chưa rõ nguyên nhân).
- Ép uống rượu: sách 08 rule_12 khuyên "uống 1 ngụm" — ~40% người Nhật thiếu ALDH2, và アルハラ nay là cấm kỵ.

### 🔴 B. Sách TỰ MÂU THUẪN
Loại lỗi phá lòng tin nhanh nhất. Ba dạng đã gặp:
- **Trong cùng 3 dòng**: sách 02 rule_50 — dòng 3 (Việt) dạy `聞きました`, dòng 5 (Nhật) dạy `確認いたしました`, phụ lục C chấm `聞きました` là phương án SAI.
- **Giữa hai rule**: sách 08 rule_28 dòng 33 "約20店舗" vs dòng 35 "25店舗".
- **Lý thuyết vs mẫu câu**: rule nói 共感 mà mẫu câu làm 謝罪.

### 🔴 C. Tiếng Nhật sai
- **二重敬語**: `部長様`, `社長様`, `おっしゃっておられる`, `ご質問になられる`, `お伺いさせていただく`, `申させていただきます`.
- **過剰敬語 — お/ご vào việc CỦA MÌNH**: `ご請求書` (hoá đơn mình phát), `ご参加が難しい`, `メモのご準備`.
- **Uchi/Soto**: nói với khách mà giữ chức danh đồng nghiệp (`トゥアンリーダー` → `弊社のトゥアン`); dùng tôn kính ngữ cho người công ty mình.
- **弊社 khiêm nhường / 当社 TRUNG TÍNH** — không phải "bản trang trọng thấp hơn".
- **`おります` là khiêm nhường ngữ của いる**, không phải "tôn kính quá mức".
- **Chia bị động/sai khiến từ THỂ ない**, không phải thể て. Nhóm 1 đuôi `す` KHÔNG rút gọn (chuỗi さ-さ).
- **さ入れ言葉**: `飲まさせていただく` ❌ / `飲ませていただく` ✅.
- **Thành ngữ điện thoại**: `お電話が遠い` ✅ / `お声が遠い` ❌.
- **申し伝える** chỉ dùng khi hứa với NGƯỜI NGOÀI; nội bộ dùng **お伝えする**.

### 🔴 D. Sai sự thật về Nhật / Việt Nam
Lỗi về **Việt Nam nguy hiểm nhất** vì độc giả là người Việt. Đã gặp: làng hoa Vạn Giã (Khánh Hoà, cách HN 1.300km — phải là Nhật Tân) · `カラスミ` dùng cho lòng đỏ trứng vịt muối · bão Damrey đổ bộ Khánh Hoà chứ không phải Hội An · làng phở Vân Cù không phải Cồ Lễ · Hạ Long ~1.969 đảo không phải 3.000.

Bên Nhật: nhân vật gán sai quê (新庄剛志 quê Fukuoka, không phải Hokkaido) · đặc sản gán sai tỉnh (黒霧島 là Miyazaki, không phải Kagoshima) · số liệu ("nhất Nhật Bản", độ cao, số gian hàng) · mốc thời gian lệch bối cảnh truyện.

**→ Bắt buộc WebSearch kiểm chứng mọi khẳng định sự thật đáng ngờ.**

### 🟡 E. Tiếng Việt
- Xưng hô: **chỉ báo khi bản Nhật cho thấy người nói TỰ nói về mình** (không có `〜さん`, có `私`/`僕`/`〜いたします`). Trích cả JA lẫn VN làm bằng chứng.
- Dịch từng chữ mất nghĩa dùng: `お世話になっております` → "cảm ơn anh đã hỗ trợ" (sai — đây là câu chào xã giao cố định).
- Tiếng Anh thừa: kiểm **cả trong văn tiếng Việt lẫn trong ô tiếng Nhật**. Audit cũ của sách 09 chỉ soát phía Việt, bỏ sót 22 chỗ phía Nhật.
- Ký tự lạ: chữ Trung giản thể (`详`→`詳`, `是`→`là`, `公司`→"công ty"), Hangul (`겸손한 표현`).

### 🟡 F. Nhất quán & meta
- **Mục lục vs H1**: sách 08 lệch 51/51, sách 02 lệch 60/60 (thường do mục lục là bản chưa Việt hoá).
- **Nhãn rule trong phụ lục**: sách 08 có **159 nhãn `Rule 08` sai** — script điền mã SÁCH vào chỗ mã RULE. Kiểm bằng cách map ngược từ `conversation.json`.
- **Phụ lục dạng câu hỏi**: rà từng câu xem **đáp án có khớp giải thích** không (sách 08 có ca đáp án A nhưng giải thích nói "C đúng").
- Emoji ✅/❌ bị strip để lại double-space → bảng SAI/ĐÚNG mất cột phán định.
- Furigana/romaji có nhất quán không; front matter có hứa thứ sách không có không.

---

## 5. Fix đợt trước thường chạy NỬA VỜI

Mọi sách đều đã qua vài đợt review. **Đừng tin `STATUS.md`** — nó khai nhiều hơn thực tế đã làm.

Ba kiểu hụt đã gặp:
1. **Script chỉ vá `conversation.json`, không đụng `.md`** (sách 08) — mà `.md` mới là thứ vào sản phẩm.
2. **Vá bản Nhật, quên bản Việt** (sách 02 rule_34: JA sửa thành `至急共有いたします`, VN vẫn "Em nghĩ cần báo gấp… anh thấy thế nào ạ?").
3. **Vá thoại, quên bảng từ vựng / chú thích / cheat sheet** (sách 08 rule_36 sửa thoại "Buôn Ma Thuột" nhưng vocab vẫn "Đà Lạt").
4. **Script không bắt hết pattern**: script xưng hô sách 08 không có pattern cho **"chị"** → nhân vật nữ sót toàn bộ.

**Nhiệm vụ bắt buộc của agent:** với mỗi mục trong `REVIEW_FINDINGS*.md`, mở đúng file, tìm chuỗi "Sai" và chuỗi "Đúng", báo **ĐÃ FIX / CHƯA FIX / FIX NỬA VỜI (chỉ JA hoặc chỉ VN)**. Lập bảng riêng.

---

## 6. Điểm mù của agent — main Claude phải bù

**Agent rà theo phạm vi được giao nên không thấy thứ nằm vắt qua hai phạm vi.**

Ca điển hình (sách 02): C1 và C3 đều báo "56/60 rule thiếu bài luyện BJT", C1 gọi là "việc lớn nhất của cả sách". Thực tế **Phụ lục C có 60 câu cho 60 rule** — không thiếu gì. Chính C3 đã kiểm phụ lục C và báo "60/60 khớp", nhưng **hai mảnh dữ kiện nằm trong cùng một báo cáo mà không được nối lại**.

→ Khi agent báo "thiếu X", main Claude phải hỏi: **X có nằm ở chỗ khác trong sách không?**

---

## 7. Hạ tầng theo dõi — chống mất context

Mỗi sách tạo `books/<slug>/_review/`:
- `00_TIEN_DO.md` — **nguồn sự thật**: quy mô, phạm vi đợt, bảng phân công + trạng thái, nhật ký, lỗi đã xác nhận, quyết định đã chốt, danh sách CẤM SỬA.
- `<mã agent>_<phạm vi>.md` — báo cáo từng agent.

**Agent bắt buộc:** ghi báo cáo ra file + tự cập nhật dòng trạng thái của mình trong `00_TIEN_DO.md` (chỉ dòng của mình).

**Main Claude bắt buộc:** ghi vào `00_TIEN_DO.md` cả **kết quả kiểm chứng báo cáo** (agent nào đúng/sai ở điểm nào) — để đợt sau không lặp lại sai lầm cũ.

---

## 8. Thứ tự sửa

| Vòng | Nội dung | Ghi chú |
|---|---|---|
| 1 | Máy móc, rủi ro thấp | chính tả, thuật ngữ, tên riêng, ký tự lạ |
| 2 | Sai sự thật | theo bảng WebSearch; sửa **đồng bộ JA + VN + vocab + cheat sheet** |
| 3 | Lời khuyên rủi ro + sách tự mâu thuẫn | cần đọc ngữ cảnh, không replace mù |
| 4 | Meta: mục lục, phụ lục, front matter | map ngược từ nguồn, đừng đoán |
| 5 | Bổ sung nội dung mới | cần chủ nhà duyệt hướng |

**Luôn:** sửa xong → build → grep kiểm nội dung mới trong `release/` (strip ruby) → xác nhận 0 lỗi cũ sót.

---

## 9. Mẫu prompt giao subagent

```
Bạn là CHUYÊN GIA TIẾNG NHẬT THƯƠNG MẠI, rà soát sách Hizashi <NN> "<tên>".

⛔ PHẠM VI: CHỈ review NỘI DUNG trong các file `.md` (rule.md / chương.md / mục lục /
front matter). KHÔNG đụng conversation.json, KHÔNG đụng script build, KHÔNG sửa phụ lục
(file sinh tự động). Phát hiện lỗi ngoài phạm vi thì GHI VÀO BÁO CÁO, không tự sửa.

CHỈ BÁO CÁO, KHÔNG SỬA FILE NỘI DUNG.
NGOẠI LỆ: phải ghi báo cáo ra `_review/<mã>_<phạm vi>.md` + cập nhật dòng của mình
trong `_review/00_TIEN_DO.md`.

PHẠM VI: <liệt kê file cụ thể>. KHÔNG đụng <phạm vi agent khác>.

ĐỌC TRƯỚC: _thuat_ngu.md, _front_matter.md, meta/mục_lục.md,
meta/REVIEW_FINDINGS*.md, meta/STATUS.md

NHIỆM VỤ ĐẶC BIỆT (làm TRƯỚC): kiểm chứng fix đợt trước có ăn vào .md chưa —
xem `.claude/rules/book-review.md` mục 5.

TRỤC RÀ SOÁT: theo `.claude/rules/book-review.md` mục 4 (A→F).

CẢNH BÁO: đọc mục 1 (bẫy kỹ thuật) và mục 3 (agent hay phóng đại phạm vi)
trước khi kết luận bất cứ điều gì.

Được phép WebSearch kiểm chứng sự thật.
Mỗi phát hiện: tên rule + số dòng + trích nguyên văn JA và VN + vấn đề + đề xuất sửa.
Cuối báo cáo: danh sách CẤM SỬA (chỗ đúng dễ bị sửa nhầm).
```
