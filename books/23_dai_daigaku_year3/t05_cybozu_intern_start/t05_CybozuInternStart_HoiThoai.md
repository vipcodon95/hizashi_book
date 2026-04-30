# Sách 23 · T5. Cybozu internship 6/2028 — RAG project kickoff (Cybozu長期インターン)

> **Mục tiêu:** 6/2028. Cybozu Osaka R&D long internship 3 tháng (6-9/2028). Project: RAG system cho Kintone document search. Stipend ¥250k/月 × 3 = ¥750k. Mentor Inomata-san (intern coordinator T6 sách 22). Đại hybrid 3 ngày office + 2 remote (vì Hana sinh).

---

## Scene 1 — Day 1 onboarding · 1/6/2028

| Speaker | Lời thoại |
|---|---|
| Inomata (Cybozu) | グエンさん、<ruby>長期<rt>ちょうき</rt></ruby>インターンへようこそ！RAGプロジェクト<ruby>担当<rt>たんとう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đại, chào mừng đến với kỳ thực tập dài hạn! Em phụ trách dự án RAG nhé.)* |
| Inomata | プロジェクト<ruby>内容<rt>ないよう</rt></ruby>：Kintoneの<ruby>顧客<rt>こきゃく</rt></ruby>ドキュメント<ruby>累積<rt>るいせき</rt></ruby>50,000<ruby>件<rt>けん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>を<ruby>自然<rt>しぜん</rt></ruby><ruby>言語<rt>げんご</rt></ruby>で<ruby>検索<rt>けんさく</rt></ruby>し、<ruby>関連<rt>かんれん</rt></ruby>ドキュメントを<ruby>取得<rt>しゅとく</rt></ruby>するシステムです。<br>*(Dự án: 50.000+ tài liệu khách hàng Kintone, tìm kiếm bằng ngôn ngữ tự nhiên rồi truy xuất tài liệu liên quan.)* |

---

## Scene 2 — RAG architecture overview

| Speaker | Lời thoại |
|---|---|
| Senior eng (35t) | RAG = Retrieval-Augmented Generation:<br> |
| Senior | 1: Embed all docs → vector DB (Pinecone/Chroma/pgvector)<br> |
| Senior | 2: User query → embed → semantic search top-K docs<br> |
| Senior | 3: Stuff retrieved docs into LLM prompt → generate answer<br> |
| Đại | (note) Kiến trúc đã rõ. <ruby>俺<rt>おれ</rt></ruby>もHizashiで<ruby>同<rt>おな</rt></ruby>じスタックを<ruby>使<rt>つか</rt></ruby>う！<br>*(Kiến trúc đã rõ. Mình cũng sẽ dùng cùng stack này cho Hizashi!)* |

---

## Scene 3 — Tech stack pick · 5/6

| Speaker | Lời thoại |
|---|---|
| Senior | Embedding: OpenAI text-embedding-3-large or sentence-transformers/multilingual-e5-large.<br> |
| Senior | Vector DB: pgvector (PostgreSQL extension). Cybozu native PG support.<br> |
| Senior | LLM: Claude 3.5 Sonnet API (Anthropic) — strong Japanese.<br> |
| Đại | (VN, nội tâm) Claude API luôn! Mình sẽ dùng đúng stack này cho Hizashi.<br>*(Claude.)* |

---

## Scene 4 — Build embedding pipeline · weeks 2-4

| Speaker | Lời thoại |
|---|---|
| Đại | (Python)<br>```python<br>from sentence_transformers import SentenceTransformer<br>import psycopg2<br><br>model = SentenceTransformer('intfloat/multilingual-e5-large')<br>conn = psycopg2.connect("dbname=cybozu_rag")<br>cur = conn.cursor()<br><br># Process 50k docs<br>for doc in load_docs():<br>    embedding = model.encode(doc.text, normalize_embeddings=True)<br>    cur.execute(<br>        "INSERT INTO documents (id, text, embedding) VALUES (%s, %s, %s)",<br>        (doc.id, doc.text, embedding.tolist())<br>    )<br>conn.commit()<br>```<br> |
| Đại | (terminal) Processing 50,000 docs ~6 hours batch.<br> |

---

## Scene 5 — Semantic search implementation · weeks 4-6

| Speaker | Lời thoại |
|---|---|
| Đại | (FastAPI)<br>```python<br>@app.get("/search")<br>def search(q: str, top_k: int = 5):<br>    q_emb = model.encode(q, normalize_embeddings=True)<br>    cur.execute("""<br>        SELECT id, text, 1 - (embedding <=> %s::vector) as similarity<br>        FROM documents<br>        ORDER BY embedding <=> %s::vector<br>        LIMIT %s<br>    """, (q_emb.tolist(), q_emb.tolist(), top_k))<br>    return cur.fetchall()<br>```<br> |
| Đại | (test) Query "リモートワーク 申請 方法" → top 5 relevant docs in 80ms ✓<br> |

---

## Scene 6 — Hana 1 tháng + remote week

| Speaker | Lời thoại |
|---|---|
| Đại | (LINE Inomata) <ruby>猪股<rt>いのうえ</rt></ruby>さん、<ruby>来週<rt>らいしゅう</rt></ruby>はフルリモートでお<ruby>願<rt>ねが</rt></ruby>いできますでしょうか。<ruby>娘<rt>むすめ</rt></ruby>の<ruby>夜泣<rt>よな</rt></ruby>きが<ruby>多<rt>おお</rt></ruby>くて……。<br>*(Anh Inomata, tuần sau cho em làm full remote được không ạ. Con gái em quấy đêm nhiều quá…)* |
| Inomata | もちろん！<ruby>家庭<rt>かてい</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tất nhiên rồi! Cứ ưu tiên gia đình nhé.)* |
| Đại | (VN) Mai à, em vẫn vất vả lắm. Đêm để anh trông Hana cho.<br>*(Đêm.)* |
| Mai | (VN) Em cảm ơn anh. Anh là một người bố tuyệt vời.<br>*(Bố tốt.)* |

---

## Scene 7 — Đêm reflect

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 6/2028 — Bắt đầu インターン Cybozu. Dự án RAG: 50k tài liệu + multilingual-e5 + pgvector + Claude API.<br>*(RAG.)* |
| Đại | (VN) ¥250k/tháng × 3 = ¥750k thu nhập. Tiền nhà + đồ sơ sinh cho Hana ¥300k là ổn.<br>*(¥750k.)* |
| Đại | (VN) Hana được 1 tháng. Đêm hay quấy. Mình làm hybrid 3 ngày văn phòng + 2 ngày remote.<br>*(Hybrid.)* |
| Đại | (VN) Đã chốt được tech stack cho Hizashi: pgvector + Claude API + sentence-transformers. Kiến trúc RAG là nền móng chính.<br>*(Hizashi stack.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| RAG | ラグ | Retrieval-Augmented Generation |
| Embedding | エンベディング | Vector representation |
| Vector DB | ベクターDB | DB for vectors |
| pgvector | ピージーベクター | PostgreSQL extension cho vectors |
| Pinecone | パインコーン | Managed vector DB |
| Chroma | クロマ | Open-source vector DB |
| Semantic search | セマンティックサーチ | Meaning-based search |
| Cosine similarity | コサイン類似度 | Vector distance metric |
| Claude 3.5 Sonnet | クロード3.5ソネット | Anthropic LLM |
| sentence-transformers | センテンストランスフォーマーズ | Embedding lib |
| multilingual-e5-large | マルチリンガルe5ラージ | Multilingual embedding model |
| 夜泣き | よなき | Đêm khóc (baby) |
| Hybrid | ハイブリッド | Office + remote mix |

## Bí quyết chương

- **RAG = bản xem trước công nghệ Hizashi**: Đại học đúng stack sẽ dùng cho Hizashi sau này.
- **Cybozu trả tốt**: ¥250k × 3 = thu nhập vững cho gia đình.
- **Văn hoá hybrid**: Phản ánh đúng ngành tech Nhật 2028.

> *"インターン Cybozu. RAG 50k tài liệu. ¥750k thu nhập. Hana 1 tháng. Đã chốt stack Hizashi."*
