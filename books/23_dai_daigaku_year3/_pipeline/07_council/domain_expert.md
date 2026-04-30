# Domain Expert Council Review — Sách 23 "Đại ĐH Năm 3"

> Reviewer: ML/NLP Researcher + LLM Engineer + Cybozu/Kintone API + 就活 IT specialist
> Date: 2026-04-29
> Verdict: **CONDITIONAL APPROVE pending critical fixes**

## CRITICAL (4)

1. **Yahoo Japan → LY Corporation** (T12): Yahoo Japan đã merge thành **LY Corporation** từ 1/10/2023. Năm 2029 không còn entity "Yahoo Japan" để apply. **Fix**: Đổi "Yahoo Japan" → "LY Corporation" trong T12.

2. **AtCoder Yamato "Yellow 1850" sai** (T12): Yellow range = **2000-2399**. 1850 là **Blue (1600-1999)**. **Fix**: Đổi "Yellow 1850" → "Blue 1850" hoặc bump rating "Yellow 2050".

3. **Hospital "Senri-chuo Maternity Clinic" không tồn tại** (T03): Quanh Senri-chūō có **千里中央病院** + **箕面市立病院**, KHÔNG có "Senri-chuo Maternity Clinic" thuần. **Fix**: Đổi sang **千里中央病院 産婦人科** hoặc **箕面市立病院**.

4. **Cybozu Osaka chưa phải R&D hub chính**: Main R&D + Kintone dev là Tokyo HQ + Matsuyama. Long internship RAG project gần như chắc chắn phải Tokyo. **Fix**: Giải thích "Osaka chi nhánh được phân RAG project vì Kansai customer pilot" hoặc move intern lên Tokyo.

## MAJOR (8)

1. **Claude model ID outdated**: Sách dùng `claude-3-5-sonnet-20241022` cho timeline 7/2028-3/2029. Anthropic deprecate model >12 tháng cũ. **Fix**: dùng `claude-sonnet-4-*` hoặc Claude 4 cho realistic 2028.

2. **Japanese LLMs missing T04**: Không nhắc Swallow (Tokyo Tech), PLaMo (PFN), Sarashina (SB Intuitions), Llama-3-Swallow — bất kỳ NLP lab Nhật 2028 PHẢI biết.

3. **Streaming syntax issue T11**: Code `client.messages.stream(...)` với `async for chunk in stream.text_stream` rồi `yield chunk` trong FastAPI route — nhưng route declared `async def chat(req)` không return `StreamingResponse`. Đúng pattern: `return StreamingResponse(generator(), media_type="text/event-stream")`.

4. **NSP focus dated** (T04): RoBERTa drop NSP từ 2019. Năm 2028 không nên dạy NSP như "Pre-training core". **Fix**: Note "BERT original có NSP nhưng modern variants drop", focus MLM only.

5. **Mercari/LINE coding test format outdated** (T12): Mô tả "HackerRank 2h, 3 problems". Mercari 2024-2026 dùng **CodeSignal** hoặc take-home. LINE (LY Corp) dùng **AtCoder Jobs**.

6. **就活 timeline 3/2029 trễ**: Top-tier (Mercari/CyberAgent) đã 内定 từ 6-9月 năm 3 qua summer intern direct route. **Fix**: Add scene Đại apply summer intern 6/2028 trước hoặc giải thích route.

7. **Function calling / Tool use Claude API missing** (production-critical 2025+).

8. **ES + SPI scene missing T12**: ES (エントリーシート) writing + 適性検査 SPI3 / 玉手箱 + OB訪問 = 80% effort của 就活. CRITICAL gap.

## MINOR (5)

1. T05 multilingual-e5-large = 1024 dims ✓; nhưng text-embedding-3-large = 3072 dims → cần note dim mismatch
2. T10 schema thiếu PRIMARY KEY chat_messages + FK chat_sessions(user_id)
3. Anthropic Citations API (released 2025) ironic missing T06 dù chương nói về citation
4. Voyage AI / bge-m3 embeddings không xuất hiện
5. Reranker (Cohere Rerank, BGE-reranker) — production RAG 2025+ luôn có rerank stage

## Strengths (Top 3)

1. **Code accuracy**: PyTorch/HuggingFace/pgvector/FastAPI/Flutter — junior dev copy được. Đúng model names (cl-tohoku/bert-base-japanese-v3, multilingual-e5-large)
2. **Hizashi tech stack realistic + cost-aware**: True reflection indie AI startup 2025-2027 economics ($1/user/mo, Render Pro $25, R2 egress free, $45/100 users Claude API verified)
3. **Cybozu work-life balance + hybrid cho new dad**: Accurate culture portrayal, "100人100通り" policy

## Top 5 improvements

1. Update Claude model IDs T05/T06/T10/T11 → `claude-sonnet-4-*`
2. Fix Yahoo Japan → LY Corporation (T12) + AtCoder Yellow→Blue 1850
3. Add Japanese LLMs (Swallow/PLaMo/Sarashina) T04 + T10
4. Fix Cybozu Osaka misallocation — explain Kansai pilot OR move intern Tokyo
5. Add 就活 process realism: ES writing scene + SPI3 mention + summer intern route

## Severity

| Severity | Count |
|----------|-------|
| Critical | 4 |
| Major | 8 |
| Minor | 5 |

**Verdict**: Sách có technical foundation rất chắc, reflect đúng spirit indie AI startup + Osaka NLP lab. Nhưng 4 critical factual errors cần fix trước publish. Sau fix → best-in-class JP learning resource cho VN SV ML/NLP/SWE Nhật.
