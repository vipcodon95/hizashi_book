# Vocab Issues — native_advanced_drafts (553 vocab, 30 readings)

Files: batch_0671_0680.json, batch_0681_0690.json, batch_0691_0700.json

## A. LỖI READING / SCHEMA (cần fix ngay — chắc chắn sai)

| # | reading_id | word | reading hiện tại | Đúng phải là | Ghi chú |
|---|---|---|---|---|---|
| 1 | R_0676 | 等閑視 | `なおざりし` | `とうかんし` | Sai reading. R_0675 cùng từ ghi `とうかんし` đúng. なおざり viết kanji là 等閑 (tính từ-na) — KHÁC 等閑視 (sahen-noun) |
| 2 | R_0697 | データ駆動型 | `でーたくどうがた` | `データくどうがた` | Phần katakana phải giữ nguyên katakana, không chuyển hiragana |
| 3 | R_0682 | モンスーン型 | `もんすーんがた` | `モンスーンがた` | Cùng pattern — không chuyển モンスーン → もんすーん |
| 4 | R_0676 | 温室効果ガス | `おんしつこうかガス` | OK (mixed) | Acceptable |
| 5 | R_0676 | パリ協定 | `パリきょうてい` | OK | Acceptable |
| 6 | R_0676 | 炭素国境調整メカニズム | `たんそこっきょうちょうせいメカニズム` | OK | Acceptable |
| 7 | R_0681 | リスク社会 | `リスクしゃかい` | OK | Acceptable |
| 8 | R_0693 | バイト敬語 | `バイトけいご` | OK | Acceptable |

**Kết luận mục A**: 3 lỗi reading thực sự (#1, #2, #3). Còn lại là pattern hiragana-hóa katakana phía trước/giữa — về mặt hiển thị furigana thì OK, nhưng không phải convention Nhật chuẩn.

## B. TỪ CỔ NGỮ / VĂN NGỮ — KHÔNG CÓ TRONG TỪ ĐIỂN HIỆN ĐẠI

User đã flag `をかし` (R_0679) là không có trong từ điển tiếng Nhật. Đây là **古語** (cổ ngữ) Heian, chỉ tồn tại trong văn cổ điển (Makura no Sōshi, Genji). **Toàn bộ list dưới đây cùng tính chất** — cần user quyết định xử lý chung.

### B.1. 古語 / 文語 — chỉ có trong văn cổ điển (KHÔNG có trong 国語辞典 hiện đại)

| reading_id | word | reading | nguồn | Ghi chú |
|---|---|---|---|---|
| R_0671 | つれづれ | つれづれ | Genji | Tsurezuregusa-style cổ ngữ |
| R_0671 | まみ | まみ | Genji | Cổ ngữ — "đôi mắt/ánh mắt" |
| R_0671 | みそかに | みそかに | Genji | Cổ ngữ adverb |
| R_0671 | こまやか | こまやか | Genji | Còn dùng hiện đại nhưng nghĩa khác |
| R_0671 | もの思ひ | ものおもひ | Genji | 旧仮名 — chính tả cổ |
| R_0671 | あはれ | あはれ | Genji | 旧仮名 cổ ngữ |
| R_0671 | かなし | かなし | Genji | Cổ ngữ — hiện đại là 悲しい |
| R_0671 | のどか | のどか | Genji | OK (vẫn dùng) |
| R_0671 | おぼろ | おぼろ | Genji | OK (vẫn dùng) |
| R_0673 | 信ずる | しんずる | Kokoro Meiji | Dạng cổ của 信じる — văn Meiji |
| R_0673 | かかる | かかる | Kokoro/Genji | Cổ ngữ "như vậy" |
| R_0679 | **をかし** | **をかし** | Makura no Sōshi | **User đã flag** — 旧仮名 cổ ngữ |
| R_0679 | あけぼの | あけぼの | Makura | Còn dùng nhưng văn ngữ |
| R_0679 | 山ぎは | やまぎは | Makura | 旧仮名 — hiện đại 山際/やまぎわ |
| R_0679 | つとめて | つとめて | Makura | Cổ ngữ |
| R_0679 | あはれ | あはれ | Makura | 旧仮名 |
| R_0679 | つきづきし | つきづきし | Makura | Cổ ngữ tính từ |
| R_0679 | うつくし | うつくし | Makura | Cổ ngữ — hiện đại 美しい nghĩa khác |
| R_0679 | にくし | にくし | Makura | Cổ ngữ — hiện đại 憎い |
| R_0679 | くちをし | くちをし | Makura | 旧仮名 — hiện đại 口惜しい |
| R_0679 | わびし | わびし | Makura | Cổ ngữ — hiện đại 侘しい |
| R_0682 | たらしめる | たらしめる | Watsuji 文語 | Văn ngữ triết học — không phổ thông |
| R_0684 | おごる | おごる | Heike | Cổ ngữ "kiêu ngạo" |
| R_0684 | はかなし | はかなし | Heike | Cổ ngữ — hiện đại 儚い |
| R_0696 | ひさかたの | ひさかたの | Man'yōshū | 枕詞 (gối từ) — chỉ tồn tại trong thơ cổ |
| R_0696 | あしひきの | あしひきの | Man'yōshū | 枕詞 |
| R_0696 | ぬばたまの | ぬばたまの | Man'yōshū | 枕詞 |
| R_0696 | 〜らし | らし | Man'yōshū | Trợ động từ cổ ngữ |
| R_0696 | かも | かも | Man'yōshū | Trợ từ cảm thán cổ ngữ |
| R_0696 | ますらおぶり | ますらおぶり | Man'yōshū | Thuật ngữ phê bình cổ điển |
| R_0696 | たをやめぶり | たをやめぶり | Kokinshū | Thuật ngữ phê bình cổ điển |
| R_0696 | 真白にそ | ましろにそ | Man'yōshū | 万葉仮名 — `そ` cổ (hiện đại là `ぞ`) |
| R_0696 | しだり尾 | しだりお | Man'yōshū | Cổ ngữ thi ca |
| R_0700 | 棹させば | さおさせば | Kusamakura | Văn ngữ Sōseki cổ điển |
| R_0700 | 兎角に | とかくに | Kusamakura | Văn ngữ |
| R_0700 | 目睹する | もくとする | Kusamakura | 漢文訓読 cổ điển — cực hiếm |

### B.2. Thuật ngữ ngữ pháp cổ văn (meta-vocab — không phải từ vựng giao tiếp)

| reading_id | word | Ghi chú |
|---|---|---|
| R_0671, R_0679, R_0684, R_0696 | 係り結び | "Luật kakari-musubi" — thuật ngữ ngữ pháp cổ văn (meta) |
| R_0671, R_0684 | 詠嘆 | Chức năng けり — meta cổ văn |
| R_0679 | 体言止め | Kỹ thuật văn pháp |
| R_0696 | 枕詞 | Khái niệm thi pháp Man'yōshū |
| R_0696 | 序詞 | Khái niệm thi pháp |
| R_0696 | 万葉仮名 | Hệ chữ viết cổ |

→ Các từ này **CÓ tồn tại** trong từ điển (古語辞典 hoặc 国語辞典), nhưng chúng là **meta-knowledge** (kiến thức về ngữ pháp cổ), không phải từ vựng đọc hiểu để học.

## C. LỖI HÁN VIỆT (han_viet sai/lỗi typo)

| reading_id | word | han_viet hiện tại | Đúng phải là |
|---|---|---|---|
| R_0671 | もの思ひ | "Tai" | (rỗng — vì là từ hỗn hợp kana) hoặc "Tư" |
| R_0672 | 純粋経験 | "Chuẩn Túy ..." | "Thuần Túy Kinh Nghiệm" (chuẩn = 準, thuần = 純) |
| R_0672 | 強制 | "Càng Chế" | "Cưỡng Chế" |
| R_0672 | 源泉 | "Nguyên Toàn" | "Nguyên Tuyền" (泉 = tuyền) |
| R_0672 | 可能ならしめる | "Khả Nai" | "Khả Năng" (能 = năng, không phải nai) |
| R_0673 | 苛責 | "Hà Trách" | "Hà Trách"/"Khắc Trách" — 苛 = hà/khắc OK, nhưng nghi vấn |
| R_0673 | 疲れ果てる | "Bì Quả" | "Bì Quả" — OK |
| R_0673 | 締め付けられる | "Đề Phó" | "Đế Phó" (締 = đế, không phải đề) |
| R_0673 | 宿る | "Tú" | "Túc" (宿 = túc) |
| R_0673 | 暗闇 | "Ám Ám" | "Ám Ám" — sai (闇 = ám OK, nhưng từ này "Ám" trùng) — chấp nhận được |
| R_0674 | 表舞台 | "Biểu Vũ Di" | "Biểu Vũ Đài" (台 = đài, không phải di) |
| R_0674 | 発議要件 | "Bát Nghị..." | "Phát Nghị Yêu Kiện" (発 = phát) |
| R_0674 | 平和主義 | "Biền Hòa..." | "Bình Hòa Chủ Nghĩa" (平 = bình) |
| R_0674 | 戦争放棄条項 | "Khuyết Chanh..." | "Chiến Tranh Phóng Khí Điều Hạng" (戦 = chiến, 争 = tranh, 条 = điều) |
| R_0674 | 思惑 | "Tai Hoặc" | "Tư Hoặc" (思 = tư) |
| R_0675 | 哲学的人間学 | "Triết Học Đích Nhân Gian Học" | OK nhưng "Đích" cho 的 là dịch máy — VN chuẩn không Hán-Việt-hóa 的 |
| R_0675 | 内在する | "Nạp Tại" | "Nội Tại" (内 = nội) |
| R_0675 | 両極性 | "Lạng Cực Tính" | "Lưỡng Cực Tính" (両 = lưỡng) |
| R_0675 | 洞察 | "Đỗng Sát" | "Động Sát" hoặc "Đỗng Sát" — 洞 đọc đỗng/động |
| R_0676 | 温室効果 | "Un Thất..." | "Ôn Thất Hiệu Quả" (温 = ôn) |
| R_0676 | 石炭火力発電 | "Thạch Thán Hỏa Lực Bát Điện" | "Thạch Thán Hỏa Lực Phát Điện" (発 = phát) |
| R_0676 | 排出削減 | "Bài Xuất Tước Giảm" | "Bài Xuất Tước Giảm" — 削 = tước OK, nhưng thông thường viết "Tước Giảm" hay "Sạn Giảm" |
| R_0676 | 海面上昇 | "Hải Diện Thướng Thăng" | "Hải Diện Thượng Thăng" (上 = thượng, không thướng) |
| R_0676 | 棚上げ | "Bằng Thướng" | "Bằng Thượng" |
| R_0676 | 法的拘束力 | "Pháp Đích Câu Thú Lực" | "Pháp Đích Câu Thúc Lực" (束 = thúc) |
| R_0677 | 虚無 | "Hơ Mô" | "Hư Vô" (虚 = hư, 無 = vô) — **LỖI NẶNG** |
| R_0677 | 有限性 | "Dựu Hạn Tính" | "Hữu Hạn Tính" (有 = hữu) |
| R_0678 | 自己保存本能 | "Tự Kỷ Bảo Tồn Bản Nai" | "Tự Kỷ Bảo Tồn Bản Năng" (能 = năng) |
| R_0678 | 巫女 | "Vu Nhữ" | "Vu Nữ" (女 = nữ) |
| R_0678 | 説話 | "Duyệt Thoại" | "Thuyết Thoại" (説 = thuyết) |
| R_0680 | 下人 | "Há Nhân" | "Hạ Nhân" (下 = hạ) |
| R_0680 | 丹塗 | "Đan Trà" | "Đan Đồ" (塗 = đồ) |
| R_0680 | 蟋蟀 | "Tất Xuất" | "Tất Suất" |
| R_0680 | 朱雀大路 | "Chu Tước Thái Lộ" | "Chu Tước Đại Lộ" (大 = đại) |
| R_0680 | 市女笠 | "Thị Nhữ Lạp" | "Thị Nữ Lạp" |
| R_0680 | 揉烏帽子 | "Nhu Ô Mạo Tý" | "Nhu Ô Mạo Tử" (子 = tử) |
| R_0680 | 辻風 | "Mời Phong" | (辻 không có Hán Việt — là kokuji 国字) — nên để rỗng |
| R_0680 | 旧記 | "Cậu Kí" | "Cựu Ký" (旧 = cựu) |
| R_0680 | 紺の襖 | "Cám Áo" | "Cám Áo" — 紺 = cám OK |
| R_0680 | 山吹色 | "San Xuy Sắc" | "Sơn Xuy Sắc" (山 = sơn) |
| R_0681 | リスク社会 | "Xã Cối" | "Xã Hội" (会 = hội) — **LỖI HỆ THỐNG** |
| R_0681 | 損害率 | "Tổn Hại Luật" | "Tổn Hại Suất/Tỷ" (率 = suất) |
| R_0681 | 大数の法則 | "Thái Sác Pháp Tắc" | "Đại Số Pháp Tắc" (大 = đại, 数 = số) |
| R_0681 | 人口動態 | "Nhân Khẩu Động Thái" | OK |
| R_0681 | 罹患率 | "Li Hoạn Luật" | "Lị Hoạn Suất" |
| R_0681 | 公正配分 | "Công Chánh..." | "Công Chính Phân Phối" (正 = chính) |
| R_0682 | 自己了解 | "Tự Kỷ Liễu Giái" | "Tự Kỷ Liễu Giải" (解 = giải) |
| R_0682 | 湿潤さ | "Chập Nhuận" | "Thấp Nhuận" (湿 = thấp) |
| R_0682 | 受容性 | "Thụ Dong Tính" | "Thụ Dung Tính" (容 = dung) |
| R_0683 | 玄妙 | "Huyền Diệu" | OK |
| R_0683 | 朧 | "Lông" | "Lung" (朧 = lung) |
| R_0683 | 蒔絵 | "Thi Gói" | "Thì Hội" (絵 = hội/họa) |
| R_0683 | 漆器 | "Thế Khí" | "Tất Khí" (漆 = tất) |
| R_0683 | 行燈 | "Hàng Đăng" | "Hành Đăng" |
| R_0683 | 床の間 | "Sàng Gian" | "Sàng Gian" — OK (床 = sàng) |
| R_0683 | 氾濫 | "Phiếm Cãm" | "Phiếm Lạm" (濫 = lạm) |
| R_0684 | 諸行無常 | "Chư Hàng Mô Thường" | "Chư Hành Vô Thường" (行 = hành, 無 = vô) — **LỖI NẶNG** |
| R_0684 | 盛者必衰 | "Thình Giả..." | "Thịnh Giả Tất Suy" |
| R_0684 | 桓武天皇 | "Hoàn Võ..." | "Hoàn Vũ Thiên Hoàng" (武 = vũ) |
| R_0684 | 後胤 | "Hấu Dận" | "Hậu Dận" (後 = hậu) |
| R_0684 | 入道前太政大臣 | "Nhập Đáo Tiền Thái Chánh Thái Thần" | "Nhập Đạo Tiền Thái Chính Đại Thần" (道 = đạo, 政 = chính, 大臣 = đại thần) |
| R_0684 | 無常 | "Mô Thường" | "Vô Thường" — **LỖI NẶNG, lặp lại** |
| R_0685 | 焦土 | "Tiêu Thổ" | OK |
| R_0685 | 堕落 | "Huy Lạc" | "Đọa Lạc" (堕 = đọa) |
| R_0685 | 拒否 | "Củ Bĩ" | "Cự Phủ" (拒 = cự, 否 = phủ) |
| R_0685 | 妥当 | "Thỏa Đang" | "Thỏa Đáng" |
| R_0685 | 解体 | "Giái Thể" | "Giải Thể" |
| R_0686 | 朱子学 | "Chu Tý Học" | "Chu Tử Học" (子 = tử) |
| R_0686 | 伊藤仁斎 | "Y Đằng Nhân Chay" | "Y Đằng Nhân Trai" (斎 = trai) |
| R_0686 | 残滓 | "Tàn Chỉ" | "Tàn Chỉ"/"Tàn Tể" (滓 = chỉ/tể) |
| R_0686 | 看取 | "Khán Thủ" | "Khán Thủ"/"Khán Thú" |
| R_0686 | 画期的 | "Hoạch Ky Đích" | "Họa/Hoạch Kỳ Đích" (期 = kỳ) |
| R_0687 | 吃音 | "Cật Âm" | "Ngật Âm" (吃 = ngật) |
| R_0687 | 縁側 | "Duyên Trắc" | "Duyên Trắc" — OK (側 = trắc) |
| R_0687 | 拷問 | "Khảo Vấn" | "Khảo Vấn" — OK |
| R_0687 | 執着 | "Chấp Khán" | "Chấp Trước" (着 = trước) — **LỖI HỆ THỐNG** (xuất hiện lại R_0700) |
| R_0687 | 焼却 | "Thiêu Khước" | "Thiêu Khước" — OK |
| R_0687 | 老師 | "Lão Sư" | OK |
| R_0687 | 本質 | "Bản Chí" | "Bản Chất" (質 = chất) |
| R_0687 | 象徴 | "Tượng Chuỷ" | "Tượng Trưng" (徴 = trưng) — **LỖI HỆ THỐNG** (R_0692, R_0698) |
| R_0688 | 超高齢社会 | "... Xã Cối" | "Xã Hội" |
| R_0688 | 持続可能性 | "Trì Tục Khả Nai Tính" | "Trì Tục Khả Năng Tính" |
| R_0688 | 逼迫 | "Bức Bách" | "Bức Bách" — OK |
| R_0688 | 抜本的 | "Bạt Bản Đích" | "Bạt Bản Đích" — OK |
| R_0688 | 担い手 | "Dằng Thủ" | "Đảm Thủ" (担 = đảm) |
| R_0688 | 定着率 | "Đính Khán Luật" | "Định Trước Suất" (定 = định, 着 = trước, 率 = suất) |
| R_0688 | 産業構造 | "Sản Nghiệp Cấu Tháo" | "Sản Nghiệp Cấu Tạo" (造 = tạo) |
| R_0688 | 終末期医療 | "Chung Mạt Ky I Liệu" | "Chung Mạt Kỳ Y Liệu" (期 = kỳ, 医 = y) |
| R_0688 | 票田 | "Phiêu Điền" | "Phiếu Điền" (票 = phiếu) |
| R_0688 | 覚悟 | "Dác Ngộ" | "Giác Ngộ" (覚 = giác) |
| R_0688 | 説明責任 | "Duyệt Minh..." | "Thuyết Minh Trách Nhiệm" (説 = thuyết, 任 = nhiệm) |
| R_0688 | 余儀なくされる | "Dư Nghi" | "Dư Nghi" — OK |
| R_0688 | 腰を据える | "Yêu Cư" | "Yêu Cứ" (据 = cứ) |
| R_0689 | 弥生時代 | "Di Sanh Thì Đại" | "Di Sinh Thời Đại" (生 = sinh, 時 = thời) |
| R_0689 | 水田稲作 | "Thủy Điền Đạo Tác" | "Thủy Điền Đạo Tác" — OK (稲 = đạo) |
| R_0689 | 伝播経路 | "Vân Bá Kinh Lộ" | "Truyền Bá Kinh Lộ" (伝 = truyền) |
| R_0689 | 蓋然性 | "Cái Nhiên Tính" | OK |
| R_0689 | 無文土器 | "Mô Văn..." | "Vô Văn Thổ Khí" |
| R_0689 | 板付遺跡 | "Bản Phó Di Tích" | "Bản Phó Di Tích" — OK (付 = phó) |
| R_0689 | 石包丁 | "Thạch Bao Chênh" | "Thạch Bao Đinh" (丁 = đinh) |
| R_0689 | 縄文系 | "Mẫn Văn Hệ" | "Thằng Văn Hệ" (縄 = thằng) |
| R_0689 | 形態的特徴 | "Hình Thái Đích Đặc Chuỷ" | "Hình Thái Đích Đặc Trưng" (徴 = trưng) |
| R_0689 | 混血過程 | "Cổn Huyết Qua Trình" | "Hỗn Huyết Quá Trình" (混 = hỗn, 過 = quá) |
| R_0689 | 一元説 | "Nhất Nguyên Duyệt" | "Nhất Nguyên Thuyết" (説 = thuyết) — **LỖI HỆ THỐNG** |
| R_0690 | 比類なき | "Bì Loại" | "Tỉ Loại" (比 = tỉ) |
| R_0690 | 漲る | "Trướng" | "Trướng" — OK |
| R_0690 | 斜光 | "Gia Quang" | "Tà Quang" (斜 = tà) |
| R_0690 | 長回し | "Trướng Hối" | "Trường Hồi" (長 = trường, 回 = hồi) |
| R_0690 | 稀有 | "Hi Dựu" | "Hy Hữu" (有 = hữu) |
| R_0691 | 虚無 | "Hơ Mô" | "Hư Vô" — **LẶP LẠI LỖI R_0677** |
| R_0691 | 啓示 | "Khải Kì" | "Khải Thị" (示 = thị) |
| R_0691 | 逆説 | "Nghịch Duyệt" | "Nghịch Thuyết" (説 = thuyết) — **LỖI HỆ THỐNG** |
| R_0692 | 国境 | "Cuốc Cảnh" | "Quốc Cảnh" (国 = quốc) |
| R_0692 | 瞼の裏 | "Him Lý" | "Kiểm Lý" (瞼 = kiểm) |
| R_0692 | 芸者 | "Vân Giả" | "Nghệ Giả" (芸 = nghệ) |
| R_0692 | 駒子 | "Câu Tý" | "Câu Tử" (子 = tử) |
| R_0692 | 体言止め | "Thể Ngân Chỉ" | "Thể Ngôn Chỉ" (言 = ngôn) — **LỖI HỆ THỐNG** |
| R_0692 | 象徴 | "Tượng Chuỷ" | "Tượng Trưng" |
| R_0693 | 尊敬語 | "Tôn Kính Ngứ" | "Tôn Kính Ngữ" (語 = ngữ) — **LỖI HỆ THỐNG** (xuất hiện ~10 lần) |
| R_0693 | 謙譲語 | "Khiêm Nhường Ngứ" | "Khiêm Nhượng Ngữ" (譲 = nhượng) |
| R_0693 | 丁寧語 | "Chênh Ninh Ngứ" | "Đinh Ninh Ngữ" (丁 = đinh) |
| R_0693 | 台頭 | "Di Đầu" | "Đài Đầu" (台 = đài) |
| R_0693 | 結束 | "Kết Thú" | "Kết Thúc" (束 = thúc) |
| R_0693 | 町人文化 | "Đinh Nhân..." | "Đinh Nhân Văn Hóa" — OK (町 = đinh) |
| R_0693 | 文化審議会 | "Văn Hóa Thẩm Nghị Cối" | "Văn Hóa Thẩm Nghị Hội" (会 = hội) |
| R_0693 | 適応過程 | "Thích Ứng Qua Trình" | "Thích Ứng Quá Trình" (過 = quá) |
| R_0694 | 踏絵 | "Đạp Gói" | "Đạp Hội/Họa" (絵 = hội/họa) |
| R_0694 | 切支丹 | "Thiết Chi Đan" | OK (đây là phiên âm) |
| R_0694 | 司祭 | "Ti Sái" | "Tư Tế" (司 = tư, 祭 = tế) |
| R_0694 | 変質 | "Bén Chí" | "Biến Chất" (変 = biến, 質 = chất) |
| R_0694 | 沼地 | "Chiểu Địa" | "Chiểu/Chỉ Địa" (沼 = chiểu) |
| R_0695 | 障害 | "Chướng Hại" | OK |
| R_0695 | 色褪せる | "Sắc Thốn" | "Sắc Thoái" (褪 = thoái) |
| R_0695 | 遮断 | "Già Đoán" | "Già Đoạn" (断 = đoạn) |
| R_0695 | 廊下 | "Lang Há" | "Lang Hạ" (下 = hạ) |
| R_0697 | サイロ化 | "Hóa" | OK (chỉ 化 = hóa) |
| R_0697 | 刷新 | "Loát Tân" | "Loát Tân"/"Sát Tân" — OK |
| R_0697 | 牽引 | "Khiên Dấn" | "Khiên Dẫn" (引 = dẫn) |
| R_0697 | 喫緊 | "Khiết Khẩn" | "Khiết Khẩn" — OK |
| R_0697 | 醸成 | "Nhường Thành" | "Nhưỡng Thành" (醸 = nhưỡng) |
| R_0697 | 試行錯誤 | "Thí Hàng Thác Ngộ" | "Thí Hành Thác Ngộ" (行 = hành, 誤 = ngộ OK) — 行 sai |
| R_0697 | 縦割り行政 | "Sỉ Cát Hàng Chánh" | "Túng Cát Hành Chính" (縦 = túng/tung, 行 = hành, 政 = chính) |
| R_0697 | 過言 | "Qua Ngân" | "Quá Ngôn" (過 = quá, 言 = ngôn) |
| R_0698 | 思惟 | "Tai Duy" | "Tư Duy" (思 = tư) |
| R_0698 | 地平 | "Địa Biền" | "Địa Bình" (平 = bình) |
| R_0699 | 飲み込まれる | "Hẩm Liêu" | "Ẩm Liễu/Ẩm Vào" (飲 = ẩm) |
| R_0699 | 摩擦音 | "Ma Sát Âm" | OK |
| R_0699 | 辛うじて | "Tân" | OK |
| R_0699 | 斜面 | "Gia Diện" | "Tà Diện" (斜 = tà) |
| R_0699 | 不条理 | "Bất Điêu Lý" | "Bất Điều Lý" (条 = điều) |
| R_0699 | 閉塞 | "Bế Tái" | "Bế Tắc" (塞 = tắc) |
| R_0699 | 横顔 | "Hoành Nhan" | "Hoành Nhan" — OK |
| R_0699 | 梯子 | "Thê Tý" | "Thê Tử" (子 = tử) |
| R_0700 | 高じる | "Cao" | "Cao" — OK |
| R_0700 | 向う三軒両隣り | "Hướng Tam Hiên Lạng Lân" | "Hướng Tam Hiên Lưỡng Lân" (両 = lưỡng) |
| R_0700 | 束の間 | "Thú Gian" | "Thúc Gian" (束 = thúc) |
| R_0700 | 鑑賞 | "Giám Thưởng" | OK |
| R_0700 | 鋭敏 | "Duệ Mẫn" | OK |
| R_0700 | 執着 | "Chấp Khán" | "Chấp Trước" — lặp R_0687 |
| R_0700 | 喜怒哀楽 | "Hí Nộ Ai Lạc" | "Hỉ Nộ Ai Lạc" (喜 = hỉ) |

## D. LỖI HỆ THỐNG (xuất hiện nhiều lần)

| Pattern lỗi | Đúng | Số lần xuất hiện trong native_advanced |
|---|---|---|
| 語 → "Ngứ" | "Ngữ" | ~10 |
| 説 → "Duyệt/Thuyết" inconsistent | "Thuyết" | ~5 |
| 徴 → "Chuỷ/Trưng" inconsistent | "Trưng" | ~4 |
| 会 → "Cối" | "Hội" | ~5 |
| 着 → "Khán" | "Trước" | ~3 |
| 言 → "Ngân" | "Ngôn" | ~3 |
| 過 → "Qua" | "Quá" | ~5 |
| 政 → "Chánh" | "Chính" | ~3 |
| 上 → "Thướng" | "Thượng" | ~3 |
| 下 → "Há" | "Hạ" | ~3 |
| 期 → "Ky" | "Kỳ" | ~3 |
| 行 → "Hàng" | "Hành" | ~4 |
| 大 → "Thái/Đại" inconsistent | "Đại" | ~3 |
| 質 → "Chí" | "Chất" | ~3 |
| 思 → "Tai" | "Tư" | ~3 |
| 子 → "Tý" | "Tử" | ~5 |
| 能 → "Nai" | "Năng" | ~3 |
| 内 → "Nạp" | "Nội" | ~2 |
| 一 → "Nhất" / 数 → "Sác" | "Nhất/Số" | confused |
| 虚無 → "Hơ Mô" | "Hư Vô" | 2 |
| 諸行無常 → "Chư Hàng Mô Thường" | "Chư Hành Vô Thường" | nhiều |

→ Đây là output của **Hán Việt converter sai bảng tra**, không phải dịch thủ công. Cần chạy lại script `add_han_viet.py` với bảng tra đúng.

---

## TÓM TẮT native_advanced

- **Lỗi reading thực sự**: 3 (R_0676 等閑視, R_0697 データ駆動型, R_0682 モンスーン型)
- **Từ cổ ngữ Heian/Man'yōshū** (như をかし anh đã flag): ~30 từ, cần user quyết định giữ hay loại
- **Lỗi Hán Việt**: 100+ entries (lỗi hệ thống, do bảng tra sai)
- **Schema**: OK, không có field thiếu
