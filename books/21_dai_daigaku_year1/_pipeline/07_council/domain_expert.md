# Domain Expert Council Review — Sách 21 "Đại ĐH Năm 1"

> Reviewer: SV CNTT năm 1-2 ĐH Nhật + AtCoder coder + 基本情報技術者試験 specialist + Web stack 2026
> Date: 2026-04-28
> Verdict: **SHIP WITH CONDITIONS**
> Severity: 1 CRITICAL, 6 MAJOR, 7 MINOR

## Top 1 CRITICAL

### CRIT-1: Số lượng SV 情報科学科 sai (80 vs 101)
- Sách viết: "80 SV/khoa" (T1 Scene 5+6, T12 GPA top 5/80)
- Reality: Định mức tuyển 大阪大学 基礎工学部 情報科学科 là **101 SV/năm** (定員 official)
- Impact: GPA "top 5/80" cần tính lại "top 5/100"
**Fix**: 80 → 101 (search-replace + recalc top rank).

## Top 6 MAJOR

### MAJ-1: Mã số SV format `26B12345` không đúng Osaka U convention
Format thực: `年度2 + 学部記号 + 学科コード + 連番` vd `26B08001`. Số "12345/12389" arbitrary.
**Fix**: Tra cụ thể format hoặc giảm 4-digit serial `26B08-005`.

### MAJ-2: 体育館 lễ nhập học 3000 SV không đủ chứa
Reality lễ nhập học Osaka U thực tế ở **大阪城ホール** (3,000+ ghế) hoặc 大阪大学会館.
**Fix**: 体育館 → 大阪城ホール.

### MAJ-3: FE 2027 reform note thiếu T11
IPA reform 7/2027. Đại thi 4/2027 OK format cũ nhưng nên flag note.
**Fix**: T11 add 1 dòng "Format này IPA reform từ 7/2027 (新試験 launch)".

### MAJ-4: Hè 8 tuần income ¥130k chỉ 4 students under-claim
Realistic 8-10 students nếu post Twitter/Note/Zenn = ¥200-300k.

### MAJ-5: Visa 家族滞在 timeline T10/T12 không realistic
COE 2-3 tháng + chờ + VN nộp ĐSQ + 1 tuần = tổng 3-4 tháng. Sách viết "tuần đầu xong giấy tờ" sai.
**Fix**: Clarify "tuần đầu submit 申請" + visa cấp ~3 tháng sau.

### MAJ-6: GitHub Copilot + AI assistant 2026 missing
SV năm 1 ĐH Nhật 2026 ai cũng dùng Copilot từ tuần 1. Kawasaki-san DevRel (T9) mà không introduce GitHub Student Developer Pack (free Copilot).
**Fix**: Insert Copilot scene T3 hoặc T9 + introduce Education Pack.

## 7 MINOR

1. Heroku free tier — bỏ từ 11/2022. 2026 dùng Render/Fly.io/Railway
2. GPT-3.5 deprecated — 2026 nên GPT-4o-mini hoặc Claude Haiku 3.5
3. URL `kakomon-doujou.com` không tồn tại — phải `fe-siken.com`
4. pandas katakana `パンダス` — chính thức là `pandas` (không Romanize)
5. Ternary chain T3 anti-pattern PEP 8 — modern Python `match`/`case` (3.10+)
6. Type hints + mypy/pyright + uv/ruff missing T3 (2026 idiomatic)
7. "デウーホテル" katakana sai — official "ハノイ・デーウーホテル" hoặc Latin "Daewoo Hotel"

## Strengths

- Tech stack 2026 cực realistic (FastAPI + React + PostgreSQL + Tailwind)
- Python idioms chuẩn (list comp, f-string, deque, heapq min-max negate)
- DB index bug 2AM authentic (3s → 50ms với CREATE INDEX)
- Git deep T9 chuẩn (GitHub Flow vs GitFlow vs Trunk-based)
- Algorithm code chạy được (bubble/quick/binary search/BFS deque, BST, heappush)
- AtCoder progression realistic (Brown 750 → Green 925 sau 6 tháng)
- 8 data structures cover năm 1 (Python built-in mapping)
- OSI 7, 1NF/2NF/3NF/BCNF, RAID, Critical Path PM list 暗記 đúng IPA syllabus
- Lễ cưới VN T10 timing 2 ngày match phong tục thực
- ¥35k áo dài chú rể Osaka salon realistic 2024+

## Verdict

**SHIP WITH CONDITIONS**

**Conditions để SHIP**:
1. Fix CRITICAL #1 (Osaka U số liệu 80 → 101)
2. Fix 4/6 MAJOR (priority: GitHub Copilot scene, visa timeline, FE reform note, lễ nhập học venue)
3. Update T7 stack: Heroku → Render
4. URL `kakomon-doujou.com` → `fe-siken.com`

Sau 4 conditions → Ship được. MINOR có thể defer.
