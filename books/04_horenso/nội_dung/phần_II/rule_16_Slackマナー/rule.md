# Rule 16 — Slack channel etiquette / Slack マナー

> **Luận điểm.** Slack với khách Nhật có manner riêng. **@here / @channel / threads / DM** mỗi cái có context. Lạm dụng @channel = mất thiện cảm. Không dùng thread = channel ngập nhiễu. DM thay vì #channel = team không biết.
>
> Slack マナー4本柱：①@here は active な人だけ通知、②@channel は緊急時のみ、③ threads で文脈分離、④ team-level は #channel、private は DM。
>
> **Liên quan:** rule 14 (broadcast), rule 15 (channel), rule 21 (cross-timezone).

---

## Bối cảnh / 場面

Em Dũng vào Slack workspace chung với khách Hakuō. 田中 PMO (anh Tanaka) là người track Slack từ phía khách. Lần đầu Dũng dùng @channel cho việc thường + spam main channel. Anh Tanaka góp ý lịch sự.

---

## ❌ Hội thoại XẤU — abuse @channel + không dùng thread

*Slack #phase3, 23:30 thứ 6 · 8:15 thứ 7 sáng*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**@channel** リンク<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。https://docs.../spec_v3」 |
|  | *@channel mọi người check link giúp em. https://docs.../spec_v3* |
| **田中PMO** | 「ズンさん、おはようございます。お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>です。@channel は **<ruby>本番障害<rt>ほんばんしょうがい</rt></ruby>など<ruby>緊急時<rt>きんきゅうじ</rt></ruby>のみ** <ruby>使<rt>つか</rt></ruby>う<ruby>運用<rt>うんよう</rt></ruby>ルールがございます【1】。<ruby>今回<rt>こんかい</rt></ruby>は @here、または<ruby>特定<rt>とくてい</rt></ruby>メンバーへの<ruby>メンション<rt>めんしょん</rt></ruby>が<ruby>適切<rt>てきせつ</rt></ruby>かと<ruby>存<rt>ぞん</rt></ruby>じます。」 |
|  | *Dũng, chào buổi sáng. Quy tắc vận hành là @channel chỉ dùng khi khẩn cấp như sự cố production. Lần này nên dùng @here hoặc mention member cụ thể.* |
| **田中PMO** | 「また、<ruby>関連投稿<rt>かんれんとうこう</rt></ruby>は **スレッド<ruby>化<rt>か</rt></ruby>** いただけますと、main channel が<ruby>読<rt>よ</rt></ruby>みやすくなります【2】。」 |
|  | *Thêm nữa, các bài đăng liên quan nếu chuyển vào thread thì main channel sẽ dễ đọc hơn.* |
| **ズン** | 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>今後<rt>こんご</rt></ruby> @channel は<ruby>緊急時<rt>きんきゅうじ</rt></ruby>のみ<ruby>使用<rt>しよう</rt></ruby>し、<ruby>関連<rt>かんれん</rt></ruby>は thread にいたします。」 |
|  | *Em xin lỗi anh ạ. Từ giờ @channel em chỉ dùng khi khẩn, các liên quan em chuyển vào thread ạ.* |

**Vì sao xấu:** L1 (1) @channel 23:30 → ping cả 30 người (mặc dù DnD), (2) không thread → 5 reply tiếp theo ngập #phase3.

---

## ✅ Hội thoại TỐT — đúng manner

*Slack #phase3, 14:00 · thread reply · thread reply · thread reply · 15:30, thread*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**@here** Phase 3 <ruby>仕様書<rt>しようしょ</rt></ruby> v3 をアップロードしました。<ruby>本日中<rt>ほんじつちゅう</rt></ruby>にご<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします【1】。https://docs.../spec_v3」 |
|  | *@here em đã upload tài liệu spec v3 Phase 3. Phiền mọi người check trong hôm nay ạ. https://docs.../spec_v3* |
| **田中PMO** | 「<ruby>確認<rt>かくにん</rt></ruby>いたします。」 |
|  | *Tôi xem nhé.* |
| **トゥアン** | 「セクション3に<ruby>質問<rt>しつもん</rt></ruby>あります、<ruby>後<rt>のち</rt></ruby>ほど DM します。」 |
|  | *Anh có câu hỏi ở section 3, lát anh DM nhé.* |
| **ズン** | 「@トゥアン お<ruby>待<rt>ま</rt></ruby>ちしております。」 |
|  | *@Tuấn em đợi anh ạ.* |
| **田中PMO** | 「v3 <ruby>確認完了<rt>かくにんかんりょう</rt></ruby>。<ruby>承認<rt>しょうにん</rt></ruby>します。」 |
|  | *Tôi check xong v3. Tôi duyệt nhé.* |

📝 **Ghi chú:**
- 【1】**「@here」** — chỉ ping người đang online. Không phá DnD/giờ riêng.
- 【2】Tất cả reply trong thread → main channel sạch.
- Thread giữ context — sau này tìm "v3 spec discussion" 1 chỗ.

---

## Slack manner 4 trụ cột

| Tag / Pattern | Khi nào | Ai bị ping |
|---|---|---|
| **@channel** | Critical / production-down / quyết định toàn team | Tất cả member (kể cả offline) — dè dặt |
| **@here** | Cần phản hồi trong giờ làm hôm nay | Chỉ người đang online |
| **@username** | 1 người cụ thể, không cần ping cả channel | Chỉ user đó |
| **Thread (スレッド)** | Reply / discussion follow up | Trong thread |
| **DM** | Private / ngoài context channel | 1 người |

**Giờ Nhật làm việc:** 9-18 JST. Sau 18h = không @here trừ khẩn cấp. 23h+ = không @channel cả khi khẩn (dùng phone).

---

## 🎯 Câu chốt

> **「@channel = critical only / @here = active only / thread = context retain / DM = private only」**

---

## ⚠ Tránh

- @channel cho announcement định kỳ — abuse → người mute → mất hiệu lực.
- Reply trong main channel thay vì thread — channel ngập, người mới scroll mất context.
- DM cho việc team-level — team không biết, sau lại làm trùng.
- @here / @channel ngoài giờ làm — phá DnD, mất thiện cảm với khách Nhật.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 運用ルール | うんようルール | Quy tắc vận hành |
| 緊急時 | きんきゅうじ | Khi khẩn cấp |
| 本番障害 | ほんばんしょうがい | Sự cố production |
| メンション | menshon | Mention |
| スレッド | sureddo | Thread |
| 関連投稿 | かんれんとうこう | Bài đăng liên quan |
| 拝見 | はいけん | Xem (khiêm) |
| 承認 | しょうにん | Phê duyệt |
