# Research — Một Năm của Hoa: Nhật Ký Thực Tập Sinh Ngành Thực Phẩm

> Topic: Hội thoại 12 tháng của 技能実習生 ngành thực phẩm tại Nhật (N5 → định hướng Shokuhin Eisei Sekininsha + HACCP + SSW1 test)
> Target: Thực tập sinh VN ngành thực phẩm vừa xong N5, phái cử công ty, người học N5-N4 tiếp xúc tiếng công xưởng
> Researcher: book-researcher agent
> Date: 2026-04-27
> Course: 11_jisshusei_shokuhin (course_id 8011)

## 1. Existing Hizashi content

Đã quét toàn bộ `books/01_email/` đến `books/10_business_japanese/` + `_shared/master_glossary.md`:

- **Sách 01-08 (email/phone/meeting/horenso/presentation/negotiation/visit_card/smalltalk)**: B2B IT outsourcing rules cho BD VN làm việc với khách Nhật. Cast: em Dũng/ズン (BD), chị Hương, anh Tuấn... Hoàn toàn KHÁC domain (white-collar IT vs blue-collar food factory). KHÔNG tận dụng nội dung được, nhưng có thể **tham khảo format bilingual VN-JP + 💡 Bí quyết** ở sách 09.
- **Sách 09 (real_dialogues)**: Đây là tham chiếu format gần nhất — cũng "story arc 1 năm + 8 chương + cast cố định + dialogue song ngữ JP/VN italic". Sách 11 nên kế thừa **trực tiếp template format** của sách 09 (`books/09_real_dialogues/nội_dung/_front_matter.md` lines 19-30 quy định format speaker label + JP+VN italic + action italic block). Cast hoàn toàn khác (sách 09 = BD IT Tokyo; sách 11 = TTS nhà máy Saitama).
- **Sách 10 (business_japanese)**: Lý thuyết keigo (teineigo/sonkeigo/kenjougo/juzu doushi/uchi-soto/ukemi-shieki). Sách 11 sẽ **reference các trục keigo này** khi tới T5-T12 (kenjougo/sonkeigo intro), nhưng KHÔNG copy lý thuyết — sách 11 dạy keigo **qua tình huống** (Hoa mắc lỗi → mou shiwake gozaimasen) chứ không phải bảng quy tắc.
- **`_shared/master_glossary.md`**: 1900+ thuật ngữ nhưng 99% thuộc series email/business/IT (deadline, project, comparison matrix, miso vùng miền). Chỉ có 1 entry liên quan: `工場` (S07/r22). **→ Sách 11 phải build glossary ngành thực phẩm gần như từ đầu** (~300-500 entries: HACCP, GMP, KY, allergen, kouttei, furyou-hin, line, kashutsu, eisei, v.v.). Đây là deliverable lớn cho stage 07 consistency.
- **`release/all_books.sql`**: Đã build sẵn tổng hợp — không đụng ID range của sách 11 (8011xxx / 8011xxxxxxxx).

→ Sách 11 là **mảnh ghép thiếu**: Hizashi có rất nhiều B2B/white-collar nhưng zero content cho TTS/blue-collar/manufacturing.

## 2. External references

### Tài liệu chính thức Nhật Bản
- **OTIT — げんばのにほんご (Genba no Nihongo) cho 食品製造関係職種**: https://www.otit.go.jp/trainee/ja/material/genba/kotoba_shokuhinseizo/ — Bộ "kotoba" + "kaiwa" chính thức của OTIT cho TTS thực phẩm. App miễn phí trên App Store/Google Play. Có illustration download. **Đây là benchmark số 1**.
- **OTIT Activity Guide PDF**: https://www.otit.go.jp/upload/docs/guide.pdf — hướng dẫn cách dùng Genba no Nihongo cho 指導員 — useful để học cách **Hoa được Suzuki-shidouin dạy** (chương 1, chương 6).
- **JITCO — 外国人材のための日本語〔現場編〕第4版**: https://onlineshop.jitco.or.jp/shopdetail/000000000258/ — sách giấy chính thức, có module thực phẩm, 5 nghề.
- **JITCO Service hub 2026**: https://www.jitco.or.jp/ja/service-otit-jitco.html — danh mục trợ giúp TTS hiện tại.
- **OTAFF — 飲食料品製造業 SSW textbook (2025/12 v3)**: https://otaff.or.jp/ + https://jmac-foods.com/news/1652/ — Textbook học cho thi 特定技能 ngành thực phẩm. **Có furigana sẵn**, có thể dùng nội bộ. Sách 11 chương 11 phải reference.
- **OTAFF SSW1 test info**: https://otaff1.jp/ — 2026 chuyển sang CBT, mở rộng lịch thi quanh năm. **Sách 11 phải update**: không còn "năm 3 lần (1月/5月/10月)" như cũ.
- **MHLW HACCP 手引書**: https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000179028_00003.html — handbook chính thức theo ngành. Sách 11 chương 3 + 8 dùng làm gốc.
- **HACCP Đại học chế biến (大量調理施設編)**: https://www.mhlw.go.jp/file/06-Seisakujouhou-11130500-Shokuhinanzenbu/0000098995.pdf — phù hợp cơm hộp/đông lạnh.
- **CAA アレルギー表示ハンドブック (令和6年改訂)**: https://www.caa.go.jp/policies/policy/food_labeling/food_sanitation/allergy/assets/food_labeling_cms204_210514_01.pdf — handbook đầy đủ.
- **食品リコール 自主回収報告制度**: https://www.caa.go.jp/policies/policy/food_labeling/food_labeling_recall + https://www.mhlw.go.jp/content/11130500/000706468.pdf — chế độ recall bắt buộc từ 2021/6. Sách 11 chương 10.

### Chế độ chuyển 育成就労 2027 (CRITICAL)
- **MHLW 育成就労制度の概要 (slide chính thức)**: https://www.mhlw.go.jp/content/11601000/001301676.pdf
- **MOJ 出入国在留管理庁 育成就労Q&A**: https://www.moj.go.jp/isa/applications/faq/ikusei_qa_00002.html
- **Mynavi Global summary**: https://global-saponet.mgl.mynavi.jp/visa/18276 — 17 lĩnh vực, có 飲食料品製造業.

### Resources cho Vietnamese learners + recruiter perspective
- **Musashino Hải Đăng**: https://mshaidang.com/ — top phái cử cơm hộp Musashino. **27 nhà máy ở Saitama/Gunma/Chiba/...** → confirmed Saitama là setting hợp lý.
- **GMS Vietnam — TTS chế biến thực phẩm**: https://gmsvietnam.com.vn/tin-tuc/thuc-tap-sinh-nganh-che-bien-thuc-pham-tai-nhat-ban-lam-nhung-cong-viec-gi.html — JD công việc cụ thể.
- **HelloJob VLOG TTS**: https://hellojob.jp/hoc-tieng-nhat/cuoc-song-thuc-tap-sinh-nhat-ban.html — corpus đời sống thực.
- **YouTube channels** (corpus tham khảo): **4Mi Vlogs** https://www.youtube.com/@4mivlogs, Bin Namin JP, Đức Thư Vlog — vlog 1 ngày của TTS VN. Sách 11 chương 1, 2, 7 dùng tham khảo nhịp đời thực.
- **JLBC blog HACCP × 外国人**: https://jlbc.co.jp/haccp-foreign-worker-template/ — template "1 câu 1 hành động, tránh phủ định kép" → áp dụng cho sách 11.

### Đề thi mẫu / Corpus
- **Prometric SSW飲食料品製造業 EN**: https://www.prometric-jp.com/en/ssw/test_list/archives/6
- **OTAFF SSW2 textbook (cao hơn, để chương 11)**: https://otaff.or.jp/news/?c=news-2&pk=34
- **食品事故ニュース foods-ch**: https://www.foods-ch.com/anzen/recall/ — cập nhật vụ recall thực — nguồn cho chương 10 (cơm hộp/đông lạnh recall thực tế).

## 3. Gap analysis

| Tài liệu đối thủ | Strengths | Weaknesses | Hizashi 11 có thể khác |
|---|---|---|---|
| **OTIT Genba no Nihongo (食品)** | Miễn phí, có app, kanji+furigana, vocab + dialogue cơ bản | Vocab list rời, không có nhân vật, không có story arc, không bilingual VN, không dạy keigo, không update Tokutei/Ikusei | Story arc 12 tháng + cast cố định + bilingual VN, keigo progression N5→N3 |
| **JITCO 現場編 第4版** | Sách giấy uy tín, 5 nghề, trang trí pro | Tốn ¥2000+, đa ngành nên thực phẩm bị nông, không có đời sống ngoài giờ, EN/CN/VN translation hỗ trợ rất ít | Dedicated 100% thực phẩm, deep VN translation, có đời sống (matsuri/bonenkai/ký túc) |
| **OTAFF SSW textbook** | Chuẩn để thi SSW, có furigana, free PDF | Format giáo trình không story, khô, không dạy giao tiếp, chỉ dùng được khi sắp thi | Sách 11 dùng tham khảo industry knowledge nhưng giao diện storytelling, hấp dẫn hơn |
| **Musashino Hải Đăng giáo trình nội bộ phái cử** | Sát đơn hàng cơm hộp, có demo phỏng vấn | Đóng (chỉ sinh viên Hải Đăng truy cập), nông về keigo/HACCP, không cập nhật Ikusei 2027 | Mở/public, có HACCP + keigo + 育成就労 update, đa company |
| **Minna no Nihongo + Genki** | Foundation N5-N4 chuẩn nhất | Generic, zero industry context, zero TTS context, không có vocab nhà máy | Thay thế giao tiếp công xưởng cụ thể, vocab nhà máy thực tế |
| **YouTube vlog (4Mi/Bin Namin/Đức Thư)** | Corpus đời thực, view trải nghiệm thực | Không có học liệu, không systematic, không cấu trúc | Hệ thống hoá vlog đời thực thành 96 hội thoại học được |

**Khác biệt cốt lõi của Hizashi 11**: (1) Story arc 12 tháng là **unique trong thị trường VN** cho TTS thực phẩm (chưa thấy đối thủ); (2) Bilingual JP/VN deep + có giải nghĩa keigo trong context; (3) Cover **cả industry knowledge + đời sống TTS** trong cùng 1 cuốn (đối thủ tách 2-3 cuốn); (4) Có chương 11 định hướng Shokuhin Eisei Sekininsha + HACCP coordinator + Tokutei Ginou + Ikusei Shuurou — chưa thấy sách Việt nào làm.

## 4. Validate 12 chương đã chốt

12 chương **about 90% solid**, chỉ cần micro-adjust:

- **T1 "Đặt chân tới Nhật"** ✓ — note: thêm scene **gặp Linh-chị (sempai VN ký túc)** ngay đêm đầu tiên — cast list chưa được kích hoạt. Cũng nên có scene **gọi điện về VN cho mẹ** (emotional anchor).
- **T2 "Tuần đầu nhà máy"** ✓ — thêm scene **mặc đồ bảo hộ qua air shower** cụ thể + **kim loại check (kinzoku tanchiki)** = signature vocab nhà máy thực phẩm.
- **T3 "Vệ sinh"** — **CRITICAL UPDATE 2026**: Allergen specific: phải reflect **9 特定原材料 mandatory (eggs/milk/wheat/soba/peanut/shrimp/crab/walnut/cashew)** + 19 推奨 thay vì "8+20" cũ. Cashew thêm 2026/4.
- **T4 "Lần đầu line"** ✓ — đề xuất: thêm cụm **「異常があったら、すぐ呼んでください」 (báo bất thường → gọi ngay)** = signature hou-ren-sou TTS phải thuộc.
- **T5 "Lần đầu mắc lỗi"** ✓
- **T6 "Mensetsu giữa kỳ"** ✓ — cast Suzuki-shidouin nên xuất hiện rõ hơn (đang underused).
- **T7 "Mùa hè / Obon"** ✓ — chốt 1 món matsuri Saitama cụ thể (vd 川越祭り — Saitama signature).
- **T8 "Audit"** — **CONSIDER GỘP với T10**: T8 (audit ISO) + T10 (recall) đều là "khủng hoảng/áp lực cao". Nhưng T8 **planned crisis**, T10 **unplanned** — khác bản chất → giữ tách. OK.
- **T9 "Sản phẩm mới"** ✓ — note: TTS năm 1 thường KHÔNG được tham gia R&D meeting thực — cần realistic-check (có thể là "Hoa được hỏi ý kiến cảm quan" thay vì "tham gia thiết kế").
- **T10 "Recall"** — thêm reference vụ recall đông lạnh thực tế (foods-ch.com) làm corpus mẫu cho recall conversation.
- **T11 "Định hướng tương lai"** — **GAP NGHIÊM TRỌNG**: Theo research, **TTS KHÔNG đủ điều kiện thi 食品衛生管理者** (cần học vấn dược/y/thú y/nông nghiệp ĐH HOẶC 3 năm kinh nghiệm + đã là quản lý). Hoa cuối năm 1 KHÔNG thể đặt mục tiêu thi cái này. **Replacement đề xuất**: chứng chỉ **食品衛生責任者** (eisei sekininsha — chỉ cần 6h講習会, người nước ngoài có 在留カード thi được) hoặc **HACCP Coordinator** hoặc thi **特定技能1号 飲食料品製造業** (thực tế và achievable). → Đây là **issue cần user confirm trước outline**.
- **T12 "Một năm nhìn lại"** ✓ — bonenkai + roadmap sang 育成就労 2027 (vì Hoa nếu nhập 2026 thì khi hết 3 năm vào 2029 có thể chuyển Tokutei Ginou hoặc nhập Ikusei Shuurou system mới).

**8 dialogue / chapter**: hợp lý, sách 09 đã chứng minh format này (10-14 scene/chương). Nhưng nên cho phép **flex 6-12 dialogue tuỳ chương** (chương 1 có thể 10 vì onboarding nhiều scene; chương 5 chỉ 6 vì story tập trung 1 lỗi sâu).

**Tỉ lệ language vs industry**: 12 chương cân khá tốt. Recommend **mỗi chương có 1 textbox "📖 Vocab nhà máy hôm nay" (5-8 từ) + 1 "💡 Bí quyết keigo/văn hoá"** để consistency.

**Topics ngành còn thiếu cần cân nhắc thêm vào**:
- **Cold chain (冷蔵/冷凍温度管理)** — critical cho cơm hộp/đông lạnh, hiện chưa có chương rõ. → Nhét vào T2 hoặc T4.
- **Foreign body (異物混入)** — top 1 nguyên nhân recall thực — có thể merge vào T5 (lỗi) hoặc T10 (recall).
- **Microbiology basic (一般生菌/大腸菌/サルモネラ)** — quan trọng nhưng có thể chỉ touch ở T3.
- **Trace lot / Traceability** — đã có trong T5 ✓.

## 5. Validate 8 trục industry knowledge

8 trục **solid**, chỉ điều chỉnh:
- **Trục 6 "Chứng chỉ"**: Thay/bổ sung **Shokuhin Eisei Sekininsha (食品衛生責任者)** vào trước **Shokuhin Eisei Kanrisha (管理者)** vì Kanrisha không achievable cho TTS năm 1.
- **Thêm sub-trục cho trục 1 hoặc 3**: **Cold chain / Temperature management** — cực quan trọng cho cơm hộp/đông lạnh.
- **Trục 8 "Đời sống"**: Thêm explicit **"khám sức khoẻ định kỳ + 検便 (kenben — phân tích phân) hàng tháng cho nhân viên thực phẩm"** = kiến thức bắt buộc TTS thực phẩm phải biết.

Mức độ sâu N5→N3: phù hợp. Industry knowledge nên giới thiệu **lightweight, qua dialogue** chứ không textbook deep — T1-T6 stay shallow, T7-T12 mới deep dần.

## 6. Risks / Open questions

1. **🔴 CRITICAL — T11 chứng chỉ**: TTS không thi được 食品衛生管理者 (Kanrisha). User cần xác nhận: **đổi sang 食品衛生責任者 (Sekininsha) + HACCP coordinator + Tokutei Ginou Test** hay vẫn giữ Kanrisha (sẽ phải framing "Hoa **mơ ước** thi sau 5-10 năm" thay vì "đặt mục tiêu năm 2")?
2. **🟠 育成就労 2027**: Ikusei Shuurou施行 1/4/2027. Hoa nhập 2026 (nếu vậy) — sách 11 nên: (a) **mention Ikusei ở T11/T12 như "tương lai 1 năm tới sẽ đổi"** (realistic, future-proof book) HAY (b) ignore (giả định setting hoàn toàn 2026 hiện tại)? Recommend **(a)** — sách phải sống được 2027-2030.
3. **🟡 Loại nhà máy**: "Cơm hộp + đông lạnh ở Saitama" OK. Musashino group là benchmark thực tế (Musashino Hải Đăng confirm 27 nhà máy có Saitama). Risk: nếu reader làm bánh kẹo/thịt cá thì vocab sẽ không 100% match. Mitigation: chèn footbox "📌 Note: Bạn làm ngành khác? — vocab này tương đương với __ ở ngành thịt/cá" 1-2 lần/sách.
4. **🟡 Allergen 9+19 (2026 update)**: Sách phải reflect 9 mandatory mới (cashew vừa thêm 2026/4) — không phải 8 cũ. Đảm bảo glossary và dialogue T3 dùng list mới.
5. **🟢 Phương ngữ Saitama**: Saitama gần Tokyo, dùng tiêu chuẩn — không có dialect khó. Risk thấp. Nếu muốn flavor có thể chèn 1-2 từ Saitama-specific (vd 「だべ」 — light Saitama).
6. **🟢 Cast 6 supporting**: 田中buchou, 佐藤sempai, 鈴木shidouin, Linh-chị, 山田-san, 高橋QC + Hoa = 7. Đủ. Khuyến nghị thêm 1 nhân vật **同期 thực tập sinh khác quốc tịch** (vd Indonesia/Philippines) để có scene đa văn hoá ký túc T1/T6/T12 — realistic cho ngành.
7. **🟡 Cần expert ngoài?**: Council stage 9 nên có domain-expert là người đã/đang làm 指導員 nhà máy thực phẩm Nhật + ít nhất 1 TTS/cựu TTS VN ngành thực phẩm review trước khi finalize. Không thể hoàn toàn tự research.
8. **🟢 Question for user**:
   - Hoa nhập Nhật **tháng nào** trong năm? (April thông thường nhưng nhiều TTS ngành thực phẩm nhập October trước peak Tết).
   - Hoa độc thân — có đẩy plot **mối quan tâm tình cảm** với 1 senior VN khác giới? (warm story arc, nhưng lệch focus học).
   - Có nhân vật **ác cảm** không? (vd 1 sempai khó tính hoặc kohai sau Hoa) — story richer.

## 7. Recommendations cho stage 02_outline

1. **12 modules = 12 chapters** (1:1 với chapter_arc), naming: `t01_dat_chan_toi_nhat`, `t02_tuan_dau_nha_may`, ...
2. **Difficulty progression**: Confirm 4 phases T1-T3 N5→N4 / T4-T6 N4 / T7-T9 N4-N3 / T10-T12 N3 cận. Mỗi chương đặt **target language structures** rõ ràng (vd T3 = ~te-form mệnh lệnh nhẹ, T6 = ~させていただきます).
3. **Số dialogue flex 6-12 / chương** thay vì cứng 8 — total target ~96 nhưng cho phép biến động ±10.
4. **Mỗi chương có 6 fixed sections**: (a) Bối cảnh (VN+JP), (b) 💡 Bí quyết tổng (3-5 bullet), (c) 6-12 scene dialogue, (d) 📖 Vocab nhà máy (5-8 từ), (e) 💡 Bí quyết keigo/văn hoá end-chapter, (f) ✅ Mini check 3-5 câu hỏi quick.
5. **Special considerations**:
   - Update T11 framework chứng chỉ → **Sekininsha + HACCP + SSW1 test** (không Kanrisha) — cần user confirm.
   - Update T3 allergen → **9 mandatory + 19 recommended** (2026 standard).
   - T11 + T12 mention **育成就労 2027 transition** ngắn gọn.
   - Format dialogue copy 1:1 từ sách 09 (`books/09_real_dialogues/nội_dung/_front_matter.md`) để consistency series.
   - Glossary ngành thực phẩm: stage 07 sẽ phải build ~300-500 entries từ scratch — flag cho main Claude prep resource sớm.
6. **Audience extension**: Sau khi xong sách 11, có thể spinoff sách 12 **"Hoa năm 2-3 + chuyển Tokutei Ginou"** — không scope sách này nhưng leave hooks ở T11/T12.
