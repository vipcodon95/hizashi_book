"""Giai đoạn 1 — thẩm định hiện trạng 39 bài cũ + Phần 0 cũ (15/10/2026).

Mỗi bài một lượt Sonnet 5.5 (không tìm kiếm web). Kết quả → research/tham_dinh/<bài>.md,
token → research/tham_dinh/usage.jsonl. Key đọc từ file (không in ra).

    python3 run_audit.py --key-file <trash_info.md>                 # tất cả
    python3 run_audit.py --key-file <...> --only lesson_02,part_00
"""
import argparse
import glob
import json
import os
import sys
import time
import urllib.error
import urllib.request
from concurrent.futures import ThreadPoolExecutor

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
CONTENT = os.path.join(ROOT, 'tu_lieu', 'book_reading', 'content')
OUT = os.path.join(ROOT, 'research', 'tham_dinh')
MODEL = 'claude-sonnet-5-5'

SYSTEM = """Bạn là hội đồng thẩm định gồm một giáo viên tiếng Nhật bản ngữ và một biên tập viên tiếng Việt. Bạn thẩm định MỘT bài trong bản cũ của sách đọc hiểu tiếng Nhật cho người Việt. Sách sẽ được VIẾT LẠI; mục tiêu là biết bài cũ có gì dùng lại được, có gì sai phải bỏ hay sửa. CHỈ BÁO, không viết lại bài.

KHUNG SÁCH MỚI (để đối chiếu):
- Mô hình ba tín hiệu: tín hiệu đầu (phó từ hô ứng, từ để hỏi, liên từ đầu câu), tín hiệu giữa (trợ từ, dạng nối), tín hiệu cuối (thể, phủ định, thì, tình thái, trích dẫn, trợ từ cuối câu).
- Nguyên tắc: "Đóng gói nội dung ngay. Để ngỏ vai trò cho đến đuôi câu."
- Ba kỹ thuật bắt buộc mọi bài: chia khối (khối bunsetsu), dự đoán, đóng gói 🔒. Bảng "Đọc theo dòng" phải có bước đóng gói khi gặp danh từ + trợ từ.
- Hai loại bản dịch luôn tách riêng và có nhãn: "dịch theo khối" (bám thứ tự Nhật) và "dịch tự nhiên" (tiếng Việt chuẩn). Lỗi điển hình bản cũ: "Tôi trà CŨNG uống", "Về phần tôi thì, là sinh viên".
- Văn phong: tiếng Việt có dấu đầy đủ; giọng sách tham khảo khách quan; KHÔNG xưng "bạn", "mình", "chúng ta"; không cảm thán quảng cáo; không ô chen ngang kiểu "> Hóa ra:"; dùng "TTT" cho 普通形 (không "plain form"); quá trình tự động của não viết bị động, hành động của người học viết chủ động.
- Không có con số hay "nghiên cứu cho thấy" không nguồn. Các khẳng định ĐÃ BỊ BÁC, nếu bài cũ có thì phải gắn cờ: Miller "5–9/7±2 đơn vị"; "SOV kích hoạt IFG mạnh hơn SVO"; UID; "tràn ngăn xếp"/"sụp đổ"; Image Streaming; "文節 là đơn vị tự nhiên của não"; "đã = quá khứ" tuyệt đối; "đuôi câu xếp tầng cố định" tuyệt đối; "người Việt chờ động từ" như kết luận nghiên cứu.

CẦN KIỂM (theo thứ tự ưu tiên):
1. TIẾNG NHẬT: ví dụ sai ngữ pháp, không tự nhiên, sai cách đọc/furigana, sai chia động từ, sai trợ từ; GIẢI THÍCH ngữ pháp sai hoặc tuyệt đối hóa (ví dụ "LUÔN", "mọi câu") khi có ngoại lệ thật.
2. DỊCH: sai nghĩa; dịch gượng; lẫn dịch theo khối với dịch tự nhiên; thiếu một trong hai.
3. PHƯƠNG PHÁP: thiếu chia khối/dự đoán/đóng gói; bảng đọc theo dòng thiếu bước 🔒; chia khối sai; tín hiệu đầu/giữa/cuối bị bỏ qua dù mẫu ngữ pháp có.
4. VĂN PHONG: xưng hô, cảm thán, thiếu dấu, "plain form", ô chen ngang.
5. KHẲNG ĐỊNH KHÔNG NGUỒN hoặc thuộc danh sách đã bác.
6. NHẤT QUÁN: thuật ngữ, đánh số mục, tiêu đề, tham chiếu chéo tới bài khác sai số bài.

LUẬT:
- Mỗi phát hiện phải TRÍCH NGUYÊN VĂN chỗ sai (ngắn) và nêu vị trí (tiêu đề mục gần nhất).
- Chỉ báo lỗi bạn chắc. Chỗ không chắc ghi mức "nghi ngờ". Đừng bịa lỗi để có nhiều phát hiện; bài tốt thì nói tốt.
- Lỗi lặp lại cùng kiểu (ví dụ xưng "bạn" 12 lần) gộp thành một dòng, ghi số lần ước lượng và 2 ví dụ.
- Viết tiếng Việt CÓ DẤU đầy đủ.

ĐỊNH DẠNG TRẢ VỀ (markdown):
# <tên file> — <tiêu đề bài>
## Đánh giá chung
- Mức tái dùng: CAO / VỪA / THẤP (1 câu lý do)
- Điểm mạnh dùng lại được: (gạch đầu dòng, cụ thể: mục nào, ví dụ nào, bảng nào)
- Vấn đề lớn nhất: (1–3 gạch)
## Phát hiện
| # | Loại (1–6) | Mức (nặng / vừa / nhẹ / nghi ngờ) | Vị trí | Trích nguyên văn | Vấn đề | Sửa thế nào |
## Ví dụ tiếng Nhật nên giữ
(liệt kê tối đa 8 câu ví dụ đúng, tự nhiên, đáng dùng lại)
## Ghi chú cho người viết lại
(2–5 gạch: tín hiệu trọng tâm của bài theo khung mới, chỗ cần thêm, chỗ nên bỏ)
"""


def call(key, body):
    req = urllib.request.Request(
        'https://api.anthropic.com/v1/messages', data=json.dumps(body).encode(),
        headers={'x-api-key': key, 'anthropic-version': '2023-06-01', 'content-type': 'application/json'})
    for attempt in range(5):
        try:
            with urllib.request.urlopen(req, timeout=900) as r:
                return json.load(r)
        except urllib.error.HTTPError as e:
            msg = e.read().decode()[:300]
            if e.code in (429, 500, 529) and attempt < 4:
                time.sleep(30 * (attempt + 1))
                continue
            raise RuntimeError(f'HTTP {e.code}: {msg}')
        except (TimeoutError, urllib.error.URLError):
            if attempt < 4:
                time.sleep(10)
                continue
            raise


def targets():
    t = {'part_00': os.path.join(CONTENT, 'part_00_method.md')}
    for p in sorted(glob.glob(os.path.join(CONTENT, 'part_0*', 'lesson_*.md'))):
        t[os.path.splitext(os.path.basename(p))[0]] = p
    return t


def run(code, path, key):
    text = open(path, encoding='utf-8').read()
    rel = os.path.relpath(path, CONTENT)
    resp = call(key, {
        'model': MODEL, 'max_tokens': 48000, 'system': SYSTEM,
        'messages': [{'role': 'user', 'content': f'Tên file: {rel}\n\n<bai>\n{text}\n</bai>'}]})
    out = '\n'.join(b['text'] for b in resp['content'] if b.get('type') == 'text')
    with open(os.path.join(OUT, f'{code}.md'), 'w', encoding='utf-8') as f:
        f.write(out)
    u = resp.get('usage', {})
    rec = {'code': code, 'model': MODEL, 'input_tokens': u.get('input_tokens', 0),
           'output_tokens': u.get('output_tokens', 0), 'stop_reason': resp.get('stop_reason'),
           'at': time.strftime('%Y-%m-%d %H:%M:%S')}
    with open(os.path.join(OUT, 'usage.jsonl'), 'a') as f:
        f.write(json.dumps(rec) + '\n')
    return rec


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--key-file', required=True)
    ap.add_argument('--only')
    ap.add_argument('--workers', type=int, default=6)
    args = ap.parse_args()
    key = next(l.split('=', 1)[1].strip() for l in open(args.key_file) if l.startswith('api_key='))
    os.makedirs(OUT, exist_ok=True)
    all_t = targets()
    codes = args.only.split(',') if args.only else list(all_t)
    with ThreadPoolExecutor(max_workers=args.workers) as ex:
        futs = {c: ex.submit(run, c, all_t[c], key) for c in codes}
        for c, fu in futs.items():
            try:
                print(json.dumps(fu.result(), ensure_ascii=False), flush=True)
            except Exception as e:
                print(f'{c} LỖI: {e}', file=sys.stderr, flush=True)


if __name__ == '__main__':
    main()
