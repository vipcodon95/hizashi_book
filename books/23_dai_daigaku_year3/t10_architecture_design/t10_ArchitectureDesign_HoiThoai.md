# Sách 23 · T10. 12/2028 — architecture Hizashi (Flutter+FastAPI+pgvector+Claude) (アーキテクチャ設計)

> **Mục tiêu:** 12/2028. Đại design Hizashi v0.1 architecture. Mobile Flutter + Backend FastAPI + DB PostgreSQL + pgvector + Claude API + Cloudflare R2 storage. Tech doc 30 pages. Yamada-senpai review. Implementation start 1/2029.

---

## Scene 1 — Tech doc kickoff · 1/12/2028

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nghĩ thầm) Tài liệu thiết kế kỹ thuật Hizashi — mục tiêu 30 trang.<br>*(Tech doc.)* |
| Đại | (Notion outline)<br>1. Tầm nhìn + đối tượng<br>2. Kiến trúc hệ thống<br>3. Schema DB (15 bảng)<br>4. API endpoints (40+)<br>5. Màn hình mobile<br>6. Thiết kế prompt cho AI tutor<br>7. Triển khai + hạ tầng<br>8. Dự toán chi phí<br>9. Lộ trình 6 tháng<br>10. Rủi ro + phương án giảm thiểu<br> |

---

## Scene 2 — Architecture diagram

| Speaker | Lời thoại |
|---|---|
| Đại | (Architecture sketch)<br>**Client layer**: Flutter App (iOS + Android) — Web Next.js (future)<br>**API layer**: FastAPI + Pydantic<br>**Data layer**: PostgreSQL + pgvector — Redis cache — Claude API<br>**Storage layer**: Cloudflare R2 (audio + images)<br>Flow: Client → FastAPI → {Postgres, Redis, Claude API} → R2 (assets) |

---

## Scene 3 — DB schema · 5/12

| Speaker | Lời thoại |
|---|---|
| Đại | (PostgreSQL schema, 15 tables)<br>```sql<br>-- Core tables<br>users (id, email, name, jlpt_level, created_at)<br>study_courses (id, name, n_level, description)<br>study_modules (id, course_id, position, name)<br>questions (id, type, question_jp, choices, explanation)<br>questions_answers (id, user_id, question_id, answer, is_correct, timestamp)<br>study_question_sets (id, module_id, type, name, level)<br>questions_in_set (set_id, question_id, order)<br>reading_passages (id, course_id, title, body, n_level)<br>passage_questions (passage_id, question_id, order)<br>vocab_cards (id, jp, reading, vn, n_level)<br>user_vocab (user_id, vocab_id, srs_level, next_review)<br>chat_sessions (id, user_id, started_at)<br>chat_messages (session_id, role, content, timestamp)<br>document_embeddings (id, content, embedding vector(1024))<br>user_progress (user_id, module_id, percent, last_studied)<br>```<br> |
| Yamada (review) | <ruby>明確<rt>めいかく</rt></ruby>でいいね！ただ、ER<ruby>図<rt>ず</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>した<ruby>方<rt>ほう</rt></ruby>がいいよ。<br>*(Rõ! Bổ sung sơ đồ ER nhé.)* |

---

## Scene 4 — API endpoints · 8/12

| Speaker | Lời thoại |
|---|---|
| Đại | (FastAPI route plan, 40+ endpoints)<br>```<br>POST /auth/login (Google OAuth + JWT)<br>GET  /courses<br>GET  /courses/{id}/modules<br>GET  /modules/{id}/sets<br>GET  /sets/{id}/questions<br>POST /answers<br>GET  /vocab/due (SRS due cards)<br>POST /vocab/review<br>GET  /passages?level=N3<br>POST /chat (Claude tutor — streaming)<br>GET  /progress<br>... 30 more<br>```<br> |

---

## Scene 5 — Cost projection · 10/12

| Speaker | Lời thoại |
|---|---|
| Đại | (bảng tính) Chi phí hàng tháng @ 100 active users:<br> |
| Đại | - Hosting (Render Pro): $25<br> |
| Đại | - PostgreSQL (Supabase): $25 + pgvector miễn phí<br> |
| Đại | - Cloudflare R2 (10GB audio): $1.5<br> |
| Đại | - Claude API (~3M tokens input + 500k output @100 users trung bình 10 chat/tháng): ~$45<br> |
| Đại | - Tên miền + email: $1/tháng<br> |
| Đại | **Tổng**: ~$100/tháng cho 100 người dùng = $1/người dùng/tháng<br> |
| Đại | (VN, nghĩ thầm) Mục tiêu MRR: $5/người dùng/tháng → biên lợi nhuận 80%.<br>*(Biên 80%.)* |

---

## Scene 6 — Đêm reflect · 22/12

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 12/2028. Tech doc Hizashi 30 trang đã xong.<br>*(Tech doc.)* |
| Đại | (VN) Stack: Flutter + FastAPI + Postgres + pgvector + Claude API + R2 + Render.<br>*(Stack.)* |
| Đại | (VN) 15 bảng. Hơn 40 API endpoints. 8 màn hình mobile. Chi phí $100/tháng cho 100 người dùng.<br>*(Số liệu.)* |
| Đại | (VN) Yamada đã review duyệt. Tuần sau thầy Inoue review.<br>*(Review.)* |
| Đại | (VN) Bắt đầu triển khai từ 1/2029. 3 tháng → demo MVP.<br>*(Kế hoạch MVP.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| Architecture | アーキテクチャ | System architecture |
| Tech doc | テックドック | Technical document |
| Notion | ノーション | Doc collaboration tool |
| Excalidraw | エクスキャリブドロー | Whiteboard diagram tool |
| ER diagram | イーアール ダイアグラム | Entity-Relationship |
| FastAPI | ファストエーピーアイ | Python web framework |
| Pydantic | パイダンティック | Data validation |
| pgvector | ピージーベクター | Postgres vector extension |
| Render | レンダー | Modern PaaS |
| Supabase | スパベース | Postgres + Auth + Storage SaaS |
| Cloudflare R2 | クラウドフレアR2 | Object storage (S3 alternative) |
| MRR | エムアールアール | Monthly Recurring Revenue |
| ARPU | アープー | Average Revenue Per User |

## Bí quyết chương

- **Hizashi architecture EXACT real Hizashi project**: Flutter + FastAPI + Postgres + pgvector + Claude API.
- **30 pages tech doc**: Realistic startup tech doc.
- **Cost projection**: Realistic SaaS economics.

> *"Hizashi architecture done. 15 tables + 40 endpoints + 8 screens. Cost $1/user. Implementation 1/2029."*
