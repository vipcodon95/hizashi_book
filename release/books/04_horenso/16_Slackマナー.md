---
id: 850000016
curriculum_id: 800000005
order_index: 16
node_type: rule
title: "Rule 16 — Phép lịch sự trên Slack / Slack マナー"
rule_no_original: "16"
slug: "Slackマナー"
part_original: "phần_II"
language: bilingual
---
# Rule 16 — Phép lịch sự trên Slack / Slack マナー
> **Luận điểm.** Slack với khách Nhật có phép tắc riêng. **@here / @channel / luồng / DM** mỗi cái có ngữ cảnh khác nhau. Lạm dụng @channel = mất thiện cảm. Không dùng luồng = kênh ngập nhiễu. DM thay vì #kênh = cả nhóm không biết.
>
> Slack 4 trụ cột phép tắc：①@here は đang trực tuyến な人だけ通知、②@channel は緊急時のみ、③ luồng で文脈分離、④ cấp nhóm は #kênh、riêng tư は DM。
>
> **Liên quan:** rule 14 (thông báo toàn nhóm), rule 15 (kênh), rule 21 (lệch múi giờ).

---

## Bối cảnh / 場面
Em Dũng vào Slack workspace chung với khách Hakuō. 田中 PMO (anh Tanaka) là người theo dõi Slack từ phía khách. Lần đầu Dũng dùng @channel cho việc thường + spam kênh chính. Anh Tanaka góp ý lịch sự.

---

## Hội thoại XẤU — dùng sai @channel + không dùng luồng
*Slack #phase3, 23:30 thứ 6 · 8:15 thứ 7 sáng*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**@channel** リンク<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。https://docs.../spec_v3」 <br/>*@channel mọi người xem đường dẫn giúp em. https://docs.../spec_v3* |
| **田中PMO** | 「ズンさん、おはようございます。お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>です。@channel は **<ruby>本番障害<rt>ほんばんしょうがい</rt></ruby>など<ruby>緊急時<rt>きんきゅうじ</rt></ruby>のみ** <ruby>使<rt>つか</rt></ruby>う<ruby>運用<rt>うんよう</rt></ruby>ルールがございます【1】。<ruby>今回<rt>こんかい</rt></ruby>は @here、または<ruby>特定<rt>とくてい</rt></ruby>メンバーへの<ruby>メンション<rt>めんしょん</rt></ruby>が<ruby>適切<rt>てきせつ</rt></ruby>かと<ruby>存<rt>ぞん</rt></ruby>じます。」 <br/>*Dũng, chào buổi sáng. Quy tắc vận hành là @channel chỉ dùng khi khẩn cấp như sự cố trên môi trường thật. Lần này nên dùng @here hoặc gắn thẻ thành viên cụ thể.* |
| **田中PMO** | 「また、<ruby>関連投稿<rt>かんれんとうこう</rt></ruby>は **スレッド<ruby>化<rt>か</rt></ruby>** いただけますと、main channel が<ruby>読<rt>よ</rt></ruby>みやすくなります【2】。」 <br/>*Thêm nữa, các bài đăng liên quan nếu chuyển vào luồng thì kênh chính sẽ dễ đọc hơn.* |
| **ズン** | 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>今後<rt>こんご</rt></ruby> @channel は<ruby>緊急時<rt>きんきゅうじ</rt></ruby>のみ<ruby>使用<rt>しよう</rt></ruby>し、<ruby>関連<rt>かんれん</rt></ruby>は thread にいたします。」 <br/>*Em xin lỗi anh ạ. Từ giờ @channel em chỉ dùng khi khẩn, các nội dung liên quan em chuyển vào luồng ạ.* |

**Vì sao xấu:** L1 (1) @channel lúc 23:30 → gọi cả 30 người (dù đang chế độ không làm phiền), (2) không dùng luồng → 5 tin tiếp theo ngập #phase3.

---

## Hội thoại TỐT — đúng phép tắc
*Slack #phase3, 14:00 · trả lời trong luồng · trả lời trong luồng · trả lời trong luồng · 15:30, luồng*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**@here** Phase 3 <ruby>仕様書<rt>しようしょ</rt></ruby> v3 をアップロードしました。<ruby>本日中<rt>ほんじつちゅう</rt></ruby>にご<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします【1】。https://docs.../spec_v3」 <br/>*@here em đã tải lên tài liệu đặc tả v3 Phase 3. Phiền mọi người xem trong hôm nay ạ. https://docs.../spec_v3* |
| **田中PMO** | 「<ruby>確認<rt>かくにん</rt></ruby>いたします。」 <br/>*Tôi xem nhé.* |
| **トゥアン** | 「セクション3に<ruby>質問<rt>しつもん</rt></ruby>あります、<ruby>後<rt>のち</rt></ruby>ほど DM します。」 <br/>*Anh có câu hỏi ở section 3, lát anh DM nhé.* |
| **ズン** | 「@トゥアン お<ruby>待<rt>ま</rt></ruby>ちしております。」 <br/>*@Tuấn em đợi anh ạ.* |
| **田中PMO** | 「v3 <ruby>確認完了<rt>かくにんかんりょう</rt></ruby>。<ruby>承認<rt>しょうにん</rt></ruby>します。」 <br/>*Tôi xem xong v3. Tôi duyệt nhé.* |

📝 **Ghi chú:**
- 【1】**「@here」** — chỉ gọi người đang trực tuyến. Không phá DnD/giờ riêng.
- 【2】Tất cả tin hồi đáp trong luồng → kênh chính sạch.
- Luồng giữ ngữ cảnh — sau này tìm "thảo luận đặc tả v3" 1 chỗ.

---

## 4 trụ cột phép tắc trên Slack
| Thẻ / Cách dùng | Khi nào | Ai bị thông báo |
|---|---|---|
| **@channel** | Sự cố nghiêm trọng / production-down / quyết định toàn nhóm | Tất cả thành viên (kể cả offline) — dùng rất hạn chế |
| **@here** | Cần phản hồi trong giờ làm hôm nay | Chỉ người đang trực tuyến |
| **@username** | 1 người cụ thể, không cần thông báo cả kênh | Chỉ người đó |
| **Luồng (スレッド)** | Trả lời / thảo luận tiếp theo | Trong luồng |
| **DM** | Riêng tư / ngoài ngữ cảnh kênh | 1 người |

**Giờ Nhật làm việc:** 9-18 JST. Sau 18h = không @here trừ khẩn cấp. 23h+ = không @channel dù khẩn (dùng điện thoại).

---

## Cụm từ mẫu
> **「@channel = chỉ khi nghiêm trọng / @here = chỉ người đang trực tuyến / luồng = giữ ngữ cảnh / DM = riêng tư」**

---

## Tránh
- @channel cho thông báo định kỳ — lạm dụng → người tắt thông báo → mất hiệu lực.
- Trả lời trong kênh chính thay vì trong luồng — kênh ngập, người mới cuộn lên mất ngữ cảnh.
- DM cho việc cấp nhóm — cả nhóm không biết, sau lại làm trùng.
- @here / @channel ngoài giờ làm — phá chế độ không làm phiền, mất thiện cảm với khách Nhật.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|-------|-------|
| 運用ルール | うんようルール | VẬN DỤNG | Quy tắc vận hành |
| 緊急時 | きんきゅうじ | KHẨN CẤP THỜI | Khi khẩn cấp |
| 本番障害 | ほんばんしょうがい | BẢN PHIÊN CHƯỚNG HẠI | Sự cố môi trường thật |
| メンション | メンション | — | Gắn thẻ thông báo |
| スレッド | スレッド | — | Chuỗi hội thoại |
| 関連投稿 | かんれんとうこう | QUAN LIÊN ĐẦU CẢO | Bài đăng liên quan |
| 拝見 | はいけん | BÁI KIẾN | Xem (khiêm) |
| 承認 | しょうにん | THỪA NHẬN | Phê duyệt |
