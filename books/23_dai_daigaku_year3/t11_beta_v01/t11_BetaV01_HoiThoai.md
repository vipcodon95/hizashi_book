# Sách 23 · T11. 1-3/2029 — Beta v0.1 + Linh-Anh + Mai test (Hizashi v0.1ベータ)

> **Mục tiêu:** 1-3/2029. Hizashi v0.1 development intensive. MVP scope: 1 course (N5→N4), 50 vocab cards, 3 reading passages, AI tutor chat. Beta test 5 users: Mai + Linh-Anh + Tuấn-em + 2 cohort VN trường tiếng. Iterate weekly.

---

## Scene 1 — Sprint 1: Backend + DB · 5-15/1

| Speaker | Lời thoại |
|---|---|
| Đại | (terminal) `mkdir hizashi; cd hizashi`<br> |
| Đại | (terminal) `git init; gh repo create vandai-osaka/hizashi --private`<br> |
| Đại | (FastAPI scaffold)<br>```bash<br>poetry init<br>poetry add fastapi uvicorn sqlalchemy psycopg2 alembic pydantic-settings anthropic<br>```<br> |
| Đại | (alembic migration) Tạo 15 bảng<br> |
| Đại | (Postgres) `CREATE EXTENSION vector;` để bật pgvector<br> |
| Đại | (terminal) `uvicorn app:main --reload` → http://localhost:8000/docs FastAPI Swagger UI<br> |

---

## Scene 2 — Sprint 2: Mobile Flutter · 20/1-5/2

| Speaker | Lời thoại |
|---|---|
| Đại | (terminal) `flutter create hizashi_mobile --platforms ios,android --org dev.hizashi`<br> |
| Đại | (lib/main.dart) MaterialApp + go_router + riverpod quản lý state<br> |
| Đại | (8 màn hình) Home + Danh sách khoá học + Module + Quiz + Vocab SRS + Reading + Chat + Profile<br> |
| Aiko | (Figma → Flutter) Aiko hỗ trợ miễn phí — 8 mockup màn hình → Flutter widgets<br> |

---

## Scene 3 — Sprint 3: AI tutor + RAG · 10-20/2

| Speaker | Lời thoại |
|---|---|
| Đại | (FastAPI tutor endpoint)<br>```python<br>@app.post("/chat")<br>async def chat(req: ChatRequest):<br>    # Embed user question<br>    q_emb = embedder.encode(req.message)<br>    <br>    # Retrieve relevant grammar/vocab from DB<br>    rels = await semantic_search(q_emb, top_k=3)<br>    <br>    # Build prompt with VN context<br>    prompt = build_prompt(req.message, rels, user_lang="vi")<br>    <br>    # Stream Claude response<br>    async with client.messages.stream(<br>        model="claude-3-5-sonnet-20241022",<br>        max_tokens=2048,<br>        messages=[{"role": "user", "content": prompt}]<br>    ) as stream:<br>        async for chunk in stream.text_stream:<br>            yield chunk<br>```<br> |
| Đại | (kiểm thử) Mai hỏi "Cho em ví dụ ~ものを" → Claude trả lời bằng tiếng Việt + ví dụ tiếng Nhật có dịch.<br> |

---

## Scene 4 — Beta launch · 25/2

| Speaker | Lời thoại |
|---|---|
| Đại | (TestFlight + Google Play Internal) Hizashi v0.1 公開！<br>*(Công bố beta!)* |
| Đại | (LINE 5 beta tester) <br>1. Mai (vợ, đang ôn N2)<br>2. Linh-Anh (Toyota Boshoku, tiếng Nhật thương mại)<br>3. Tuấn-em (cohort sách 19-20, Kobe ĐH chuyển CNTT)<br>4. Phong (cohort trường tiếng Osaka, N3)<br>5. Hùng (em họ Linh-Anh, Hà Nội, mới N5)<br> |
| Mai | (LINE) Em đang dùng thử! UI đẹp lắm! Tutor chat giải thích ~ものを bằng tiếng Việt — chuẩn không cần chỉnh!<br>*(Tuyệt!)* |
| Linh-Anh | (LINE) Em vừa thử module tiếng Nhật thương mại — phản hồi: cần thêm tình huống "báo cáo sếp", "đàm phán khách hàng" anh ạ.<br>*(Phản hồi!)* |

---

## Scene 5 — Iteration weeks 1-4 · 25/2-25/3

| Speaker | Lời thoại |
|---|---|
| Đại | (Notion feedback log)<br>Tuần 1: 23 feedback → sửa 18<br>Tuần 2: 18 → sửa 15<br>Tuần 3: 12 → sửa 10<br>Tuần 4: 8 → sửa 6<br>*(Đang ổn định.)* |
| Tuấn-em | (LINE) Anh ơi! Em hỏi tutor một điểm ngữ pháp em không hiểu, tutor giải thích lại theo 3 cách khác nhau — đến cách thứ 3 em hiểu luôn!<br>*(Chống nản.)* |
| Đại | (VN, nghĩ thầm) Đúng rồi: tutor biết tự điều chỉnh cách giải thích → đây chính là giá trị cốt lõi của Hizashi.<br>*(Giá trị cốt lõi.)* |

---

## Scene 6 — Đêm reflect · 30/3

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 1-3/2029 đã ship Hizashi v0.1 beta. 5 người dùng.<br>*(Beta.)* |
| Đại | (VN) Stack đã chốt: Flutter + FastAPI + Postgres + pgvector + Claude API + R2 + Render.<br>*(Stack.)* |
| Đại | (VN) 8 màn hình mobile + 35 endpoint. AI tutor RAG streaming.<br>*(Số liệu.)* |
| Đại | (VN) Phản hồi của Mai + Linh-Anh + Tuấn + Phong + Hùng quý như vàng. Lặp tuần một lần.<br>*(Iteration.)* |
| Đại | (VN) MVP gần xong. 4-5/2029 mở rộng sang khoá N4 + 100 người dùng.<br>*(Tiếp theo.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| Beta | ベータ | Beta version |
| TestFlight | テストフライト | Apple iOS beta distribution |
| Internal Testing | インターナルテスティング | Google Play beta |
| poetry | ポエトリー | Python package manager |
| alembic | アレンビック | SQLAlchemy migration |
| Swagger UI | スワッガー | FastAPI auto-docs |
| go_router | ゴールーター | Flutter navigation lib |
| riverpod | リバーポッド | Flutter state mgmt |
| Streaming | ストリーミング | LLM streaming response |
| Iteration | イテレーション | Iterate based on feedback |

## Bí quyết chương

- **Real Hizashi development**: Code structure mirror real project anh đang build.
- **5 beta tester profile**: Cover full audience.
- **AI tutor adaptive**: Key value prop — Claude giải thích 3 cách khác nhau.

> *"Hizashi v0.1 beta. 5 users. Mai+Linh-Anh+Tuấn+Phong+Hùng. AI tutor adaptive. MVP gần done."*
