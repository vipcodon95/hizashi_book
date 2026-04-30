# Sách 26 · T3. 5-6/2031 — Hizashi v2.0 dev: Multi-language expand (v2.0開発)

> **Mục tiêu:** 5-6/2031. Hizashi v2.0 dev intensive 6 tuần. Multi-language expansion: Korean (K-pop generation học JP) + Chinese (CN students Japan). Tuấn lead backend refactor multi-tenant. Aiko design 3-language UI. Đại pitch deck Series A prep song song. Mai 13-19w pregnancy ổn.

## Bối cảnh

- 15/5-30/6/2031 (6 tuần)
- v2.0 target launch 8/2031
- Korean market estimate: 50k VN học JP + 200k Korean học JP at any time
- Chinese market: 300k Chinese students Japan + 500k CN học JP at home

---

## Scene 1 — Sprint kickoff WeWork · Thứ Hai 15/5 9:30

| Speaker | Lời thoại |
|---|---|
| Đại | (whiteboard) Anh chị ơi! Sprint v2.0 kickoff — 6 tuần, 3 luồng song song:<br>**Track A (Tuấn)**: Refactor backend multi-tenant + seed nội dung Korean+Chinese (10k câu hỏi mỗi ngôn ngữ)<br>**Track B (Aiko)**: UI 3 ngôn ngữ (JP+VN+EN base + KO+ZH mở rộng) + thiết kế lại onboarding flow<br>**Track C (Đại)**: Pitch deck Series A + financial model + dự báo 5 năm + QA chất lượng nội dung<br>*(3 luồng.)* |
| Tuấn | (VN) Anh OK. Backend multi-tenant thì nhanh. Phần seed nội dung khó — anh sẽ thuê 5 フリーランス ライター (3 KR + 2 CN).<br>*(フリーランス.)* |
| Aiko | (JP) <ruby>3言語<rt>さんげんご</rt></ruby>のUIは14<ruby>日間<rt>にちかん</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(UI 3 ngôn ngữ cần 14 ngày.)* |
| Đại | (VN) Em phụ trách pitch deck Series A (3 tuần) + QA nội dung đợt 2.<br>*(QA.)* |

---

## Scene 2 — Korean content writer onboarding · Tuần 2

| Speaker | Lời thoại |
|---|---|
| Tuấn | (Slack) Anh đã ký 5 ライター:<br>- KR1: Park Min-jee (32t, ex-Hancinema, native KR + N1 JP)<br>- KR2: Lee Soo-yeon (28t, K-pop blogger + N2 JP)<br>- KR3: Kim Jae-hyun (35t, giáo viên tiếng Hàn ở Tokyo)<br>- CN1: Wang Lei (30t, Beijing → Osaka 5 năm, native ZH + N1 JP)<br>- CN2: Chen Mei (26t, master ĐH Kobe + N1 JP)<br>*(5 ライター.)* |
| Đại | (VN) Đơn giá theo ngày?<br>*(Đơn giá?)* |
| Tuấn | ¥20k/ngày × 30 ngày × 5 người = ¥3M tổng. Đầu ra: 50k câu hỏi + 200 lessons KR/ZH. Đủ dùng 6 tháng.<br>*(¥3M.)* |
| Đại | (VN) OK chấp nhận được. Tiền pre-seed còn ¥18M, B2B Thanh Hà ¥486k/năm bắt đầu sinh dòng tiền. Burn capacity OK.<br>*(OK.)* |

---

## Scene 3 — Aiko UI mockup KR+ZH expansion · Tuần 3

| Speaker | Lời thoại |
|---|---|
| Aiko | (share Figma, 3 mockups) 3 phiên bản UI:<br>1. **Người học VN** — học JP, UI tiếng Việt<br>2. **Người học Hàn** — học JP, UI tiếng Hàn<br>3. **Người học Trung** — học JP, UI tiếng Trung<br>*(3 phiên bản.)* |
| Aiko | (tiếp) Mẫu chung: nút chuyển ngôn ngữ ở góc trên bên phải. Lần đầu tự nhận diện ngôn ngữ máy.<br>*(Tự nhận diện.)* |
| Tuấn | (VN) Tuyệt! Backend i18n đã cấu hình hỗ trợ 5 ngôn ngữ cơ bản (JA/EN/VN/KO/ZH).<br>*(i18n.)* |
| Đại | (VN) Trang landing marketing cũng 3 phiên bản: hizashi.app/vi, hizashi.app/ko, hizashi.app/zh. Thân thiện SEO.<br>*(SEO.)* |

---

## Scene 4 — Series A pitch deck draft · Tuần 4

| Speaker | Lời thoại |
|---|---|
| Đại | (deck Notion) **Hizashi Series A — ¥200M raise**<br><br>**Slide 1**: Cover — "Hizashi: AI Tutor for Japanese Language Learners — ¥200M Series A"<br>**Slide 2**: Story — Đại VN sinh viên → Osaka U → Hizashi (sách 21-24 backstory)<br>**Slide 3**: Problem — 1.5M Asian learners JP gap (VN+KR+ZH+ID+TH)<br>**Slide 4**: Solution — AI Tutor + RAG + SRS + Multi-language<br>**Slide 5**: Traction — 12k user, 2k paid, MRR ¥2M, +33% Q1, B2B Thanh Hà signed<br>**Slide 6**: Tech moat — Vietnamese-Japanese-Korean-Chinese cross-lingual NLP<br>**Slide 7**: Market — 8.5M Asian JP learners x ¥1k/m × 5% TAM = ¥510M ARR opportunity<br>**Slide 8**: Team — Đại CEO + Tuấn CTO + Aiko Head Design (4 năm cohort)<br>**Slide 9**: Use of funds — 1. Hire 5 dev + 2 marketing + 1 ops (¥80M), 2. Marketing JP+VN+KR (¥40M), 3. AI cost (¥30M), 4. Buffer (¥50M)<br>**Slide 10**: Ask — ¥200M Series A @ ¥1.2B post-money valuation<br>**Slide 11**: Investors — Anri (lead) + JAFCO + DG Daiwa<br>**Slide 12**: Roadmap — v2.0 8/2031 → v3.0 6/2032 → v4.0 (B2B Enterprise) 12/2032<br>*(12 slides.)* |
| Tuấn | (review) Anh ơi, slide 7 phép tính TAM em check lại nhé. 8.5M × ¥1k/tháng × 5% = ¥425k/tháng = ¥5.1B/năm, không phải ¥510M.<br>*(Tính lại.)* |
| Đại | (VN) Đúng rồi! Em sửa.<br>*(Sửa.)* |
| Aiko | (JP) スライドの<ruby>視覚<rt>しかく</rt></ruby><ruby>面<rt>めん</rt></ruby>を<ruby>改善<rt>かいぜん</rt></ruby>します。Anri<ruby>系<rt>けい</rt></ruby>ミニマルデザインで。<br>*(Em sẽ cải thiện phần thiết kế slide. Theo phong cách minimal kiểu Anri.)* |

---

## Scene 5 — Mai 16 weeks update · Tuần 5

| Speaker | Lời thoại |
|---|---|
| Mai | (LINE) Anh ơi! Hôm nay em siêu âm 16w. Bé Đông được 12cm rồi. Đá nhẹ trong bụng — em cảm nhận được rồi!<br>*(Cảm nhận được.)* |
| Đại | (LINE WeWork) Trời ơi! Em quay video gửi anh xem đi.<br>*(Video.)* |
| Mai | (LINE video bụng rung nhẹ) Đó! Đá đó!<br>*(Đá.)* |
| Đại | (LINE) Trời ơi xúc động quá em à. 4 năm trước Hana cũng đá ở tuần 16, em còn nhớ không?<br>*(Hana tuần 16.)* |
| Mai | (LINE) Em nhớ chứ. Hồi đó anh đang ngồi WeWork hét lên "Tuấn ơi! Hana đá!"<br>*(Hana đá.)* |
| Tuấn | (Slack, ghen) Em ơi! Anh vừa thấy Mai gửi bé Đông đá. Vậy hồi Hana đá anh chưa biết em à.<br>*(Hồi Hana.)* |
| Đại | (VN, share LINE) Bé đá rồi anh ơi! 4 năm thay đổi nhiều quá — Hana 33 tháng, bé thứ hai sắp ra.<br>*(4 năm.)* |

---

## Scene 6 — Content QA review session · Tuần 5 cuối

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, dashboard QA) Em đã review 5 ngày:<br>- Nội dung KR: 8.5k/10k câu hỏi đã review. Tỉ lệ pass 88%<br>- Nội dung ZH: 7k/10k câu hỏi đã review. Tỉ lệ pass 91%<br>- 200 bài học KR review xong 90%<br>*(QA.)* |
| Tuấn | (VN) Vấn đề chính bên KR là gì?<br>*(KR.)* |
| Đại | (VN)<br>1. Park Min-jee dùng JP quá trang trọng — học sinh trẻ Hàn thích văn casual hơn<br>2. Lee Soo-yeon đôi khi tham chiếu K-pop không phổ thông (chỉ fan mới hiểu)<br>3. Bản dịch Hàn nhiều khi quá sát chữ — cần làm tự nhiên hơn<br>*(Vấn đề.)* |
| Tuấn | (VN) Còn ZH thì sao?<br>*(ZH.)* |
| Đại | (VN)<br>1. Wang Lei nền tảng chuyên môn tốt nhưng JP công việc quá nặng đối với beginner<br>2. Chen Mei phần lớn ổn — chỉ vài lỗi typo Trung giản thể vs phồn thể<br>*(Vấn đề ZH.)* |
| Đại | (VN) Kế hoạch: phản hồi cho ライター + revise vòng 2 + QA cuối ở tuần 6.<br>*(Kế hoạch.)* |

---

## Scene 7 — Tuấn backend stress test · Tuần 6

| Speaker | Lời thoại |
|---|---|
| Tuấn | (Slack) Anh xong refactor multi-tenant. Stress test 50k concurrent (gấp 5x baseline v1.0). Latency p95 = 410ms. PASS!<br>*(50k pass.)* |
| Đại | (Slack) Chi tiết kỹ thuật?<br>*(Chi tiết?)* |
| Tuấn | (Slack)<br>- DB: PostgreSQL 17 + pgvector + read replica 2 nodes<br>- Cache: Redis cluster 3 nodes<br>- API: FastAPI + Uvicorn workers x 8<br>- Embedding: BGE-M3 self-hosted via Modal.com (cheaper than OpenAI ada @ scale)<br>- LLM: Claude 4 Sonnet primary + Llama-3-Swallow-Plus fallback<br>- Deploy: AWS ECS Fargate auto-scale 5-50 tasks<br>*(Stack v2.0.)* |
| Đại | (Slack) BGE-M3 self-hosted trên Modal.com chi phí bao nhiêu?<br>*(Chi phí?)* |
| Tuấn | (Slack) Modal.com GPU A100 ¥150/giờ. Bursting embedding chỉ trả khi dùng. Ước tính $300/tháng vs OpenAI ada $1500/tháng.<br>*(Rẻ hơn 5 lần.)* |
| Aiko | (JP) <ruby>素晴<rt>すば</rt></ruby>らしいですね!CFOにも<ruby>優<rt>やさ</rt></ruby>しい!<br>*(Tuyệt vời! CFO cũng vui!)* |

---

## Scene 8 — End sprint reflection · 30/6 thứ Bảy

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, retrospective WeWork) Sprint v2.0 6 tuần:<br>**Đã đạt**:<br>- Backend multi-tenant ✓<br>- UI 3 ngôn ngữ ✓<br>- 17.5k câu hỏi nội dung KR+ZH ✓<br>- 200 bài học KR + 200 bài học ZH ✓<br>- Pitch deck Series A v1 ✓<br>- Stress test 50k pass ✓<br>**Vấn đề còn lại**:<br>- Tỉ lệ pass QA nội dung 88-91% (không đạt 100% như nội dung VN)<br>- Financial model pitch deck cần tham vấn CFO<br>- UI Korean lỗi render font trên iPad (lùi lại sau)<br>*(Sprint.)* |
| Tuấn | (VN) v2.0 launch tháng 8/2031 OK chứ?<br>*(Tháng 8.)* |
| Đại | (VN) Launch ngày 1/8. Hôm nay 30/6 → còn 4 tuần polish + sửa lỗi + soft launch.<br>*(4 tuần polish.)* |
| Aiko | (JP) マルチランゲージ<ruby>市場<rt>しじょう</rt></ruby>の<ruby>反応<rt>はんのう</rt></ruby>が<ruby>楽<rt>たの</rt></ruby>しみですね!<br>*(Em rất mong chờ phản ứng của thị trường đa ngôn ngữ!)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| 多言語化 | たげんごか | Multi-language expansion |
| マルチテナント | マルチテナント | Multi-tenant |
| i18n | アイエイティーンエヌ | Internationalization |
| 韓国語 | かんこくご | Korean |
| 中国語 | ちゅうごくご | Chinese |
| 簡体字 | かんたいじ | Simplified Chinese |
| 繁体字 | はんたいじ | Traditional Chinese |
| 自己ホスト | じこホスト | Self-hosted |
| ファインチューン | ファインチューン | Fine-tune |
| ストレステスト | ストレステスト | Stress test |
| pitch deck | ピッチデック | Pitch deck |
| TAM | ティーエーエム | Total Addressable Market |

## Bí quyết chương

- **6-week sprint pattern**: 3 tracks parallel + content + tech + business
- **Content writer rate ¥20k/day Asia tier 1** standard freelance
- **BGE-M3 self-hosted Modal.com 5x cheaper than OpenAI ada @ scale**: Cost optimization
- **Multi-tenant backend refactor before Series A**: Investor deep diligence ready
- **Pitch deck 12 slides Anri-style**: Story → Problem → Solution → Traction → Tech → Market → Team → Use of funds → Ask → Investors → Roadmap

> *"v2.0 sprint 6 weeks. Multi-tenant backend + 3-lang UI + 17.5k KR+ZH content + Series A deck + 50k stress test pass. Mai bé Đông 16w đá. Aiko design KR-ZH UI đẹp. v2.0 launch 1/8/2031."*
