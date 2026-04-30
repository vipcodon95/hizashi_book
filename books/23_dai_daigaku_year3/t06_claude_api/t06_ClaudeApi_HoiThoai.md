# Sách 23 · T6. Claude API + prompt engineering + LangChain (Claude API)

> **Mục tiêu:** 7-8/2028. インターン Cybozu tuần 5-8. Deep dive Claude API + prompt engineering + LangChain. Đại triển khai RAG đầy đủ với Claude generation + 引用 (trích dẫn nguồn). デモ nội bộ cuối kỳ.

---

## Scene 1 — Claude API basics

| Speaker | Lời thoại |
|---|---|
| Senior | Claude API endpoint:<br>```python<br>from anthropic import Anthropic<br><br>client = Anthropic(api_key=os.environ["ANTHROPIC_API_KEY"])<br><br>response = client.messages.create(<br>    model="claude-3-5-sonnet-20241022",<br>    max_tokens=1024,<br>    messages=[<br>        {"role": "user", "content": "リモートワークの申請方法を教えて"}<br>    ]<br>)<br>print(response.content[0].text)<br>```<br> |
| Senior | <ruby>料金<rt>りょうきん</rt></ruby>: input $3/M tokens, output $15/M tokens (Claude 3.5 Sonnet 2024).<br>*(Pricing.)* |

---

## Scene 2 — Prompt engineering principles

| Speaker | Lời thoại |
|---|---|
| Senior | <ruby>原則<rt>げんそく</rt></ruby>:<br> |
| Senior | 1: Specific & detailed (vs vague)<br> |
| Senior | 2: Use XML tags (Claude prefers <document>, <example>)<br> |
| Senior | 3: Few-shot examples (3-5 examples > 0)<br> |
| Senior | 4: Chain of thought ("think step by step")<br> |
| Senior | 5: Output format prescriptive (JSON schema)<br> |
| Đại | (note) <ruby>俺<rt>おれ</rt></ruby>もHizashiのプロンプトに<ruby>同<rt>おな</rt></ruby>じく<ruby>応用<rt>おうよう</rt></ruby>できる！<br>*(Mình cũng áp dụng được nguyên các nguyên tắc này cho prompt Hizashi!)* |

---

## Scene 3 — RAG full pipeline implementation

| Speaker | Lời thoại |
|---|---|
| Đại | (Python full RAG)<br>```python<br>def rag_query(user_q: str) -> dict:<br>    # Step 1: Retrieve<br>    docs = semantic_search(user_q, top_k=5)<br>    <br>    # Step 2: Build prompt with citations<br>    context = "\n\n".join([<br>        f"<document id='{d.id}'>{d.text}</document>"<br>        for d in docs<br>    ])<br>    <br>    prompt = f"""\<br>以下のドキュメントを参考に質問に回答してください。<br>引用元のdocument idを必ず含めてください。<br><br><documents><br>{context}<br></documents><br><br>質問: {user_q}<br><br>回答 (with citations):"""<br>    <br>    # Step 3: Generate<br>    response = client.messages.create(<br>        model="claude-3-5-sonnet-20241022",<br>        max_tokens=1024,<br>        messages=[{"role": "user", "content": prompt}]<br>    )<br>    return {<br>        "answer": response.content[0].text,<br>        "sources": [d.id for d in docs]<br>    }<br>```<br> |

---

## Scene 4 — LangChain demo

| Speaker | Lời thoại |
|---|---|
| Senior | LangChainは<ruby>使<rt>つか</rt></ruby>いますか？<br>*(Có dùng LangChain không?)* |
| Đại | <ruby>試<rt>ため</rt></ruby>してみましたが、<ruby>小規模<rt>しょうきぼ</rt></ruby>RAGには<ruby>過剰<rt>かじょう</rt></ruby>でした。バニラのAnthropic SDKで<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Em thử rồi nhưng với RAG quy mô nhỏ thì hơi thừa. Dùng SDK gốc của Anthropic là đủ.)* |
| Senior | <ruby>賛成<rt>さんせい</rt></ruby>！LangChainは<ruby>抽象化<rt>ちゅうしょうか</rt></ruby>が<ruby>過<rt>す</rt></ruby>ぎるんだよね。<ruby>俺<rt>おれ</rt></ruby>もバニラ<ruby>派<rt>は</rt></ruby>。<br>*(Đồng tình! LangChain trừu tượng hoá hơi quá. Tớ cũng theo phái vanilla.)* |

---

## Scene 5 — デモ nội bộ · 25/8

| Speaker | Lời thoại |
|---|---|
| Đại | (<ruby>発表<rt>はっぴょう</rt></ruby> 10 phút)<br>"Cybozu RAG document search"<br>- 50.000 tài liệu đã lập chỉ mục (multilingual-e5)<br>- Truy vấn trung bình 80ms semantic + 1.5s Claude sinh câu trả lời<br>- 95% câu trả lời trích dẫn đúng nguồn<br>- Chi phí: $0.02/truy vấn<br> |
| CTO Cybozu (40t) | <ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>本番<rt>ほんばん</rt></ruby><ruby>導入<rt>どうにゅう</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>になりますね。<br>*(Tuyệt vời! Đây hoàn toàn có thể là ứng viên triển khai chính thức.)* |
| Đại | はい！<ruby>来年<rt>らいねん</rt></ruby>には<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby>も<ruby>可能<rt>かのう</rt></ruby>かと<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng ạ! Em nghĩ sang năm hoàn toàn có thể triển khai chính thức.)* |

---

## Scene 6 — Đêm reflect

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 7-8/2028. インターン Cybozu tuần 5-8. Claude API + prompt engineering + pipeline RAG đầy đủ.<br>*(RAG.)* |
| Đại | (VN) Bài học code: SDK gốc > LangChain (với RAG quy mô nhỏ-vừa).<br>*(Vanilla.)* |
| Đại | (VN) デモ được CTO khen — ứng viên triển khai chính thức. Có thể mở ra cơ hội 内定 fulltime.<br>*(内定.)* |
| Đại | (VN) Hana được 2 tháng. Đêm đã ngủ ngoan hơn. Mai vẫn mệt nhưng vui.<br>*(Gia đình.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| Anthropic SDK | アンソロピックSDK | Claude API client |
| claude-3-5-sonnet | クロード3.5ソネット | Specific Claude model |
| Prompt engineering | プロンプトエンジニアリング | Design prompts |
| Few-shot | フューショット | 3-5 examples in prompt |
| Chain of thought (CoT) | チェインオブソート | "Think step by step" |
| XML tags | XMLタグ | Claude prefers structured |
| LangChain | ラングチェイン | LLM orchestration framework |
| Citation | サイテーション | Source attribution |
| 引用元 | いんようもと | Source citation |
| Vanilla SDK | バニラSDK | No abstraction layer |

## Bí quyết chương

- **Claude 3.5 Sonnet**: Mô hình thực tế 2028.
- **5 nguyên tắc prompt engineering**: Tái sử dụng được cho Hizashi.
- **Vanilla > LangChain**: Kinh nghiệm thực chiến của engineer.

> *"Claude API + pipeline RAG đầy đủ. デモ được CTO khen. Vanilla > LangChain. Hana 2 tháng."*
