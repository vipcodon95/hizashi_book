# Sách 08 Smalltalk — Bảng điều khiển rà soát

> File này là **nguồn sự thật** về tiến độ. Mọi agent phải cập nhật vào đây khi xong.
> Ngày khởi tạo: 2026-08-15

## Quy mô
- 51 rule, chia 5 phần (I: 8, II: 12, III: 13, IV: 8, V: 10)
- 51 × `rule.md` (~9.900 dòng) + 51 × `conversation.json`
- Sách ĐÃ qua 1 đợt review v1.1 (xem `meta/STATUS.md`, `meta/REVIEW_FINDINGS_JP.md`, `meta/REVIEW_FINDINGS_VN.md`) — đợt này KHÔNG lặp lại các lỗi đã fix ở đó.

## Quy trình (giống sách 10)
Giai đoạn 1 RÀ SOÁT (chỉ báo cáo, không sửa) → Giai đoạn 2 SỬA → Giai đoạn 3 kiểm tra build.
**Đang ở: Giai đoạn 2 (SỬA).**

## Phân công giai đoạn 1

| Agent | Phạm vi | File báo cáo | Trạng thái |
|---|---|---|---|
| A1 | rule.md phần I + II (20 rule) | `_review/A1_rule_phan_I_II.md` | ✅ xong — 31 lỗi (🔴14/🟡11/🔵6) |
| A2 | rule.md phần III + IV + V (31 rule) | `_review/A2_rule_phan_III_IV_V.md` | ✅ xong — 35 lỗi (🔴17/🟡12/🔵6) |
| A3 | 51 conversation.json | `_review/A3_conversation_json.md` | ✅ xong — 85 lỗi (🔴52/🟡21/🔵12) |
| A4 | Nhất quán xuyên sách + front/back matter + thuật ngữ + mục lục | `_review/A4_nhat_quan.md` | ✅ xong — 24 lỗi (🔴8/🟡10/🔵6) |

## Nhật ký

- 2026-08-15: tạo hạ tầng `_review/`, tung 4 agent giai đoạn 1.

## ⚠️ PHẠM VI ĐỢT NÀY (chủ nhà chốt 15/08/2026)

**CHỈ SỬA FILE `.md`. KHÔNG ĐỤNG `conversation.json`.**
Lý do: sản phẩm hiển thị từ `.md`.

## Phát hiện điều tra pipeline (main Claude, 15/08)

Truy chuỗi build → `conversation.json` HIỆN LÀ DỮ LIỆU CHẾT:
- `_shared/scripts/build_release_books_02_08.py` **chỉ đọc `rule.md`**, còn chủ động **strip mọi tham chiếu tới `conversation.json`** (LINK_FOOTER_PATTERNS).
- `release/books/08_smalltalk/` = 52 file `.md`, **0 file conversation**.
- Đối chiếu 890 lượt thoại JSON với `release/books_sql/08_smalltalk.sql`: chỉ **153 trùng** — trùng vì được **chép tay vào `rule.md`**, không phải đọc từ JSON. **737 lượt không tồn tại trong sản phẩm.**
- Chuỗi thật: `rule.md` → `build_release_books_02_08.py` → `release/books/` → `build_sql_from_release.py` → `release/books_sql/` → `seed_books_to_local_db.py` → DB.

**Hệ quả cho ưu tiên:** 85 lỗi A3 tìm trong `conversation.json` phần lớn CHƯA tới tay người học. Lỗi trong `rule.md` (A1 31 + A2 35) mới là thứ đang vào sách và app → **ưu tiên tuyệt đối**.

## Đính chính báo cáo A3 (main Claude kiểm lại)

A3 báo "12 file phần II dùng `conversation_lines` + `sentence` ở cấp 1" → **đọc nhầm một cấp**. Thực tế **cả 51 file** đều có `conversations[]` ở cấp 1. Khác biệt nằm BÊN TRONG mỗi conversation:
- phần I/III/IV/V: `lines[]` với `speaker`/`ja`/`vi` (3 trường)
- phần II: `conversation_lines[]` với `line_id`/`speaker`/`speaker_role`/`gender`/`sentence`/`sentence_translation`/`tone`/`annotation_ids` (8 trường) + khối `annotations[]` neo chú giải vào từng câu

Kết luận "script v1.1 bỏ sót phần II" **vẫn đúng**, chỉ là lý do khác với A3 mô tả.

## Quyết định schema (main Claude đề xuất — CHƯA thực hiện đợt này)

**Chuẩn hoá về schema PHẦN II (giàu hơn)**, không ép về dạng nghèo. Căn cứ:
- `_schema/rule_conversation.schema.json` để `conversations.items.properties` RỖNG → không ràng buộc, phải chọn theo giá trị.
- Ép về dạng nghèo = **xoá** `line_id`/`speaker_role`/`gender`/`tone`/`annotations` (không phục hồi được).
- Nâng dạng nghèo lên = chỉ thêm trường rỗng, **không mất gì**.
- `gender`/`tone` cần cho TTS; `annotations` neo chú giải vào từng câu — hai tính năng sản phẩm thật.
- Tương tự `related_rules`: GIỮ dạng object (có trường `book`), đừng ép `string[]` — ép sẽ mất liên kết sang sách 03/06/07 mà mục lục đã hứa.

→ **Hoãn sang đợt sau** theo chỉ đạo chủ nhà.

## Giai đoạn 2 — SỬA `.md` (main Claude tự sửa, KHÔNG giao subagent)

| Vòng | Việc | Nguồn | Trạng thái |
|---|---|---|---|
| 1 | Xưng hô trong `rule.md` | A1 | ✅ xong 7 chỗ — ⚠️ ĐÍNH CHÍNH A1, xem dưới |

**⚠️ ĐÍNH CHÍNH báo cáo A1 về xưng hô (main Claude kiểm lại từng dòng)**
A1 báo "43 dòng, 18/20 file". Tôi quét toàn bộ 51 rule, đối chiếu TỪNG dòng dịch với bản Nhật tương ứng:
- **Phần lớn "Em" là NGÔI 2** — khách Nhật gọi Dũng ("Em biết à?", "Em nhớ giỏi!"). Bản Nhật là `ズンさん、〜知ってる?` / `よく覚えてるね!` → **ĐÚNG, không phải lỗi**. Sửa là hỏng.
- **"anh/chị" của nhân vật Nhật lớn tuổi** (Matsumoto, Sato, Hiroshi) tự xưng với Dũng trẻ hơn → **ĐÚNG trong tiếng Việt**, không phải lỗi.
- **Chỉ 7 dòng sai thật** — nhận diện bằng dấu hiệu: bản Nhật KHÔNG có `ズンさん`/`知ってる`/`覚えてる`, tức người nói đang tự nói về mình:
  - rule_43 d112 松本 `覚えましたよ` → "Em nhớ" → **Tôi nhớ**
  - rule_48 d80 山本 `知らなかった` → "Em không biết" → **Tôi không biết**
  - rule_13 d118 田中 `すみません` → "em xin lỗi" → **tôi xin lỗi**
  - rule_41 d77 田中 `行ってみたい` → "em muốn đi" → **tôi muốn đi**
  - rule_41 d89 田中 `写真撮るね` → "Em sẽ chụp" → **Tôi sẽ chụp**
  - rule_45 d104 山本 `聞きたい` → "Em muốn nghe" → **Tôi muốn nghe**
  - rule_46 d86 田中 `すみません` → "em xin lỗi" → **tôi xin lỗi**

**Bài học:** con số 43 của A1 gộp cả ngôi 2 hợp lệ. Đây là lần thứ HAI báo cáo agent phóng đại phạm vi (lần đầu: #S4 sách 09 — 91 dòng báo lỗi, thực chỉ 11). Luôn tự kiểm chứng trước khi sửa hàng loạt.
| 1 | Fix v1.1 nửa vời | A2 | ✅ xong 6 chỗ — rule_28 (JA d35 + VN d36), rule_22 (VN d55), rule_35 (chú thích 【2】 + luận điểm d3 + d10), rule_36 (vocab d167) |
| 2 | Lỗi sự thật VN | A1+A2 | ✅ xong 6 nhóm / 13 chỗ — chi tiết dưới |
**Chi tiết vòng 2 (VN) đã sửa:**
- rule_35: `バンザン花卉村(Vạn Giã)` → `ニャッタン花の村(Nhật Tân)` — Vạn Giã ở Khánh Hòa, cách HN 1.300km (JA+VN)
- rule_39: `カラスミ` (trứng cá đối muối khô) → `塩漬け卵黄` (lòng đỏ trứng vịt muối) — 5 chỗ + viết lại dòng vocab kèm cảnh báo ⚠️ đừng dùng カラスミ
- rule_37: `2017年のダムレイ台風…ホイアン` → `2017年11月の大雨…ホイアン` — Damrey đổ bộ Khánh Hòa, Hội An ngập do mưa lũ (JA+VN)
- rule_34: `Cồ Lễ` → `Vân Cù` — 4 chỗ (JA thoại, VN dịch, chú thích 【2】, cheat sheet `コーレ村`→`ヴァンクー村`)
- rule_05: Hạ Long `3000以上の島` → `2000近くの島` (thực ~1.969) (JA+VN); và `地元では『海の桂林』とも呼ばれている` → `『海の桂林』と例えられることもある` — người Việt không tự so quê mình với Quế Lâm
- rule_37: `菊酒の冬` → `スイセンの冬` — rượu hoa cúc là phong tục Nhật (重陽の節句), không phải ký ức tuổi thơ Hà Nội; thủy tiên mới đúng Tết Bắc (JA+VN)

| 2 | Lỗi sự thật JP | A1+A2 | ✅ xong 9 nhóm / 20 chỗ — chi tiết dưới |

**Chi tiết vòng 2 (JP) đã sửa:**
- rule_16: `新穂高ロープウェイ 3000メートル` → `標高2000メートル超` (ga trên thực tế 2.156m) — 4 chỗ JA+VN
- rule_14: `大の里 新横綱になりましたよね` → `横綱になってから強いですよね` (lên yokozuna 7/2025, sách bối cảnh 2026-27 nên không còn "mới") — 3 chỗ gồm cheat sheet + chú thích 【2】
- rule_20: `平野歩夢 3連覇狙い` → `2連覇狙い` (mới 1 HCV Beijing 2022; chính dòng 98 ngay dưới xác nhận) — JA+VN
- rule_11: furigana `純連<rt>すみれ` → `<rt>じゅんれん` (từ 1983 đổi cách đọc; câu cũ đọc lên thành "sumire, sumire, keyaki")
- rule_11: `蓬莱軒の本店、神宮の近く` → `蓬莱軒は熱田神宮の近くにも店があります` (quán cạnh 熱田神宮 là 神宮店, không phải 本店) — JA+VN
- rule_21: bảng Nhân vật nổi tiếng Hokkaido — gỡ `新庄剛志`, thay `松山千春`/`中島みゆき`, thêm cảnh báo ⚠️ 新庄 quê Fukuoka (cùng loại lỗi 黒田博樹 mà v1.1 đã gỡ)
- rule_31: `芋焼酎 鹿児島99%` → `vùng 芋焼酎 hàng đầu Nhật Bản`; gỡ `黒霧島` khỏi danh sách Kagoshima + cảnh báo ⚠️ đó là hãng 霧島酒造 Miyazaki
- rule_29: `大谷石じゃなく藁焼き` → `ガス火じゃなく藁焼き` (大谷石 là đá xây dựng Utsunomiya, không liên quan nướng cá) — JA+VN
- rule_32: `2026年復元完成目指して復興中` → `2026年11月に正殿の復元が完成したばかり` (bối cảnh rule là 2/2027, thực tế khánh thành 22/11/2026) — 4 chỗ gồm cheat sheet + bảng tổng hợp + câu vàng

**KHÔNG sửa (đã kiểm, ĐÚNG):** `3連覇` ở rule_28 là Carp 2016-2018 — khác lỗi Hirano; `黒田博樹` cùng dòng là chỗ A1 dặn giữ.
| 3 | Lời khuyên rủi ro | A1+A2 | ✅ xong 4 nhóm / 9 chỗ — chi tiết dưới |

**Chi tiết vòng 3 đã sửa:**
- rule_15: `飲酒後すぐ温泉…血圧上がるから` → `飲酒後すぐの入浴は絶対やめて…血圧が下がって湯船で意識を失う事故が毎年ある`. Cơ chế ヒートショック là **TỤT** huyết áp gây ngất/đuối nước, sách nói ngược — đây là lỗi có thể gây hại thật (JA+VN)
- rule_12: mục "NG — tuyệt đối tránh" lại khuyên `uống 1 ngụm`. Viết lại: từ chối KHÔNG phải lỗi, thiếu là vế thứ hai (`お酒は弱いのですが、お付き合いさせてください` + cầm ly ウーロン茶 cụng cùng). Thêm cảnh báo ⚠️ ~40% người Nhật thiếu ALDH2 + アルハラ nay là cấm kỵ + câu `体質的に飲めないんです`
- rule_08: mẫu câu "khéo né" hỏi lương/tuổi lại **tiết lộ thông tin** (`ベトナムの平均くらい`, `もう30近い`) — tự mâu thuẫn bảng vùng cấm. Thay bằng `そういうのはちょっと(笑)。ところで…` / `秘密です(笑)。それより…`
- rule_45: Dũng tự ý **ghép đôi song ca nam–nữ** (Ōgaki 55t × Yamamoto nữ) — mâu thuẫn chính mục NG "bài tình cảm 1-1 với khách khác giới". Đổi thành mời **cả nhóm hưởng ứng** (giữ nguyên bài 青い珊瑚礁 vì bài không sai, chỉ việc ghép đôi mới sai); thêm cảnh báo ⚠️ vào mục NG
| 4 | Meta | A4 | ✅ xong 174 chỗ — chi tiết dưới |

**Chi tiết vòng 4 (meta) đã sửa:**
- **155 nhãn `Rule 08` sai** ở 3 phụ lục — script sinh phụ lục điền mã SÁCH vào chỗ mã RULE. Sửa bằng cách **map ngược từ nguồn**: đọc `bjt_practice[].question_ja` / `title` trong 51 `conversation.json` → khớp **153/153 câu**, không câu nào phải đoán.
  - phụ lục C: 114 nhãn · phụ lục A: 38 · phụ lục D: 3
  - Còn 3 chỗ "Rule 08" ở C + 1 ở A là **câu THẬT của rule_08** — đúng, không sửa
- **J3-04**: đáp án A nhưng giải thích viết "C dùng いかがでしたか" → viết lại cho khớp (A mới là câu chứa cụm đó). Đã **rà tự động cả 153 câu**, không còn ca nào đáp án lệch giải thích
- **51 tên rule trong mục lục** đồng bộ theo H1 của `rule.md` (A4 báo 28, thực tế lệch cả 51 — phần lớn do mục lục thiếu vế tiếng Nhật sau dấu `/`)
- **11 cụm tiếng Anh trong mục lục** → Việt hoá: `topic`→chủ đề, `Topics core`→Nhóm chủ đề cốt lõi, `Topic gold`→Chủ đề vàng, `deep relationship`→quan hệ sâu, `regional dialects`→phương ngữ vùng miền, `Templates/memory bank/cheat sheets`→Mẫu ghi chép/kho ghi nhớ/bảng tra nhanh
- **2 rule lộ văn dàn ý** (A4 báo 6, thực tế 2): rule_47 + rule_50 có Bối cảnh là `"Tham khảo. 1 scenario chính + ..."` → viết mới Bối cảnh thật khớp scenario trong rule
- **2 nhãn `(placeholder)`** lọt vào tên nhân vật ở rule_22 (`吉田 (placeholder)`, `遠藤 (placeholder)`) → xoá

## KHÔNG ĐƯỢC SỬA (A1 đánh dấu — tránh xoá nhầm)
- `黒田博樹` ở **rule_10** là HỢP LỆ (huyền thoại Carp) — khác chỗ đã gỡ ở rule_30
- "hoa anh đào" rule_01 — không phải lỗi xưng hô
- "昭和末期" cho Linda Linda (1987) — đúng
