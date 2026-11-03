"""Giai đoạn 3–4 — viết bài Bản Học sinh bằng Opus 5.5 (15/10/2026).

Mỗi bài một lượt. Ngữ cảnh: bộ quy chuẩn + nền tảng + bài cũ + bản thẩm định bài cũ + văn mẫu.
Kết quả → student/<file>.md, token → student/usage.jsonl. Key đọc từ file (không in ra).

    python3 run_write.py --key-file <trash_info.md> --target phan_00
    python3 run_write.py --key-file <...> --target bai_01 --extra student/phan_00_phuong_phap.md
"""
import argparse
import json
import os
import time
import urllib.error
import urllib.request

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
MODEL = 'claude-opus-5-5'

COMMON = ['student/HOI_DONG_SACH.md', 'student/BANG_THUAT_NGU.md', 'KHUNG_SACH.md',
          'research/nen_tang_doc_hieu.md', 'research/tham_dinh_hien_trang.md']

TARGETS = {
    'phan_00': {
        'out': 'student/phan_00_phuong_phap.md',
        'title': 'Phần 0. Phương pháp',
        'sources': ['tu_lieu/book_reading/content/part_00_method.md', 'research/tham_dinh/part_00.md',
                    'tu_lieu/mau_sach_phat_am/chuong_00_mo_dau.md'],
        'brief': (
            "Viết Phần 0 (Phương pháp) của sách: chương mở đầu, đặt nền cho 39 bài. Nội dung cần có:\n"
            "1. Vấn đề: người Việt đọc tiếng Nhật thường gặp gì (đọc chậm, quên đầu câu, hiểu sai vai khi gặp bị động/"
            "phủ định ở cuối). Trình bày như quan sát và phân tích, KHÔNG như kết luận nghiên cứu về người Việt.\n"
            "2. Cơ sở: dẫn các nền 1, 2, 3, 5, 6, 7 và mục Đối chiếu Việt–Nhật của nen_tang_doc_hieu.md, giữ đúng giới hạn "
            "đã ghi (vd. dự đoán ở người học: một nghiên cứu, người nói tiếng Anh; luyện dự đoán chưa được kiểm chứng với "
            "tiếng Nhật). Không dựng luận điểm xuyên suốt gượng ép.\n"
            "3. Mô hình ba tín hiệu (đầu / giữa / cuối) và nguyên tắc 'Đóng gói nội dung ngay. Để ngỏ vai trò cho đến "
            "đuôi câu.' Giới thiệu sớm phó từ hô ứng (chi tiết Bài 36) và trật tự tầng đuôi câu (chi tiết Phụ lục C), "
            "có tầng tiếp diễn ている.\n"
            "4. Khối bunsetsu: phân biệt 文節 (định nghĩa của 橋本進吉, 東京の / レストランで là 2 文節) với khối bunsetsu "
            "(đơn vị sư phạm, được gộp). Không gán phép chèn ね/さ cho 橋本.\n"
            "5. Ba kỹ thuật chia khối, dự đoán, đóng gói 🔒 và cách ghi bảng đọc theo dòng với các nhãn 🔒 / còn mở: / "
            "dự đoán: / chốt:. Trình tự năm bước. Hai loại bản dịch có nhãn. 'Xác định chủ ngữ' là kỹ thuật bổ sung ở "
            "các bài sau, không phải kỹ thuật thứ tư.\n"
            "6. Ít nhất 3 ví dụ phân tích đầy đủ theo mẫu HOI_DONG_SACH mục 3.3, từ ngắn đến dài, có một câu có tín hiệu "
            "đầu (vd. もし…たら hoặc ぜんぜん…ない) và một câu có đuôi câu đổi vai (bị động).\n"
            "7. Cách dùng sách: cấu trúc mỗi bài, thứ tự các Phần.\n"
            "8. Kết luận và hàm ý (bảng 'Nguyên nhân | Phương pháp luyện') + Tài liệu tham khảo (chỉ nguồn trong "
            "nen_tang_doc_hieu.md mà Phần 0 thật sự dẫn).\n"
            "Độ dài khoảng 4.000–6.000 từ. Lấy từ Phần 0 cũ chỉ những gì bản thẩm định cho là dùng lại được."),
    },
    'bai_01': {
        'out': 'student/bai_01.md',
        'title': 'Bài 1. Trợ từ đề mục は・も',
        'sources': ['tu_lieu/book_reading/content/part_01/lesson_01.md', 'research/tham_dinh/lesson_01.md',
                    'tu_lieu/mau_sach_phat_am/chuong_01_truong_am_v2.md'],
        'brief': (
            "Viết Bài 1 (Trợ từ đề mục は・も) theo đúng khuôn bài trong HOI_DONG_SACH mục 4 và mẫu ví dụ mục 3.3. "
            "Tín hiệu trọng tâm: tín hiệu giữa; も + phủ định được chốt ở cuối. Bắt buộc sửa mọi lỗi trong bản thẩm định "
            "bài cũ (đặc biệt: も + phủ định = 'không ai/không gì' CHỈ với từ để hỏi + も hoặc 一人も; N + も + phủ định = "
            "'cũng không'; は đối chiếu không phải lúc nào cũng có). Phân biệt chủ đề (は) với chủ ngữ (が) ở mức cần cho bài "
            "này, tham chiếu Bài 2. Lấy ví dụ từ danh sách 'nên giữ'. Độ dài khoảng 2.000–3.500 từ."),
    },
}

SYSTEM = """Bạn là tác giả chính của sách HIZASHI 読解 (đọc hiểu tiếng Nhật cho người Việt), Bản Học sinh, đồng thời thông thạo tiếng Nhật như người bản ngữ. Bạn viết MỘT file của sách theo đúng bộ quy chuẩn được cung cấp (HOI_DONG_SACH.md, BANG_THUAT_NGU.md). Bộ quy chuẩn thắng mọi tư liệu cũ.

Luật không được phá:
- Tiếng Việt có dấu đầy đủ. Không xưng "bạn", "mình", "chúng ta", "ta". Không câu cảm thán, không viết hoa cả từ để nhấn mạnh, không ô chen ngang "> ...".
- Khẳng định có tính nghiên cứu chỉ lấy từ nen_tang_doc_hieu.md, giữ đúng giới hạn đã ghi ở đó. Không con số không nguồn.
- Mọi ví dụ phân tích theo mẫu HOI_DONG_SACH mục 3.3: câu chia khối " / ", bảng Bước | Đọc | Xử lý với nhãn 🔒 / còn mở: / dự đoán: / chốt:, rồi **Dịch theo khối:** và **Dịch tự nhiên:**. Ví dụ ngắn cũng có đủ hai bản dịch.
- Không gán vai trò ngay tại trợ từ; vai trò chốt ở đuôi câu. Mỗi quy tắc nhận diện kèm phản ví dụ. Không "luôn / chắc chắn / bắt buộc" khi có ngoại lệ.
- Ví dụ tiếng Nhật phải đúng ngữ pháp, tự nhiên, đúng cách đọc. Câu nào không chắc thì không dùng. Chỗ còn nghi ngờ đánh dấu <!-- CẦN KIỂM CHỨNG: ... -->.
- Không viết bài tập, không đáp án.

Trả về DUY NHẤT nội dung markdown của file, bắt đầu bằng dòng tiêu đề "# ...". Không lời dẫn, không giải thích ngoài file."""


def read(rel):
    with open(os.path.join(ROOT, rel), encoding='utf-8') as f:
        return f.read()


def call(key, body):
    req = urllib.request.Request(
        'https://api.anthropic.com/v1/messages', data=json.dumps(body).encode(),
        headers={'x-api-key': key, 'anthropic-version': '2023-06-01', 'content-type': 'application/json'})
    for attempt in range(5):
        try:
            with urllib.request.urlopen(req, timeout=1800) as r:
                return json.load(r)
        except urllib.error.HTTPError as e:
            msg = e.read().decode()[:300]
            if e.code in (429, 500, 529) and attempt < 4:
                time.sleep(30 * (attempt + 1))
                continue
            raise RuntimeError(f'HTTP {e.code}: {msg}')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--key-file', required=True)
    ap.add_argument('--target', required=True, choices=list(TARGETS))
    ap.add_argument('--extra', action='append', default=[], help='file thêm vào ngữ cảnh (vd. văn mẫu đã viết)')
    ap.add_argument('--effort', default='medium')
    args = ap.parse_args()
    key = next(l.split('=', 1)[1].strip() for l in open(args.key_file) if l.startswith('api_key='))
    t = TARGETS[args.target]
    docs = ''.join(f'<file path="{p}">\n{read(p)}\n</file>\n\n' for p in COMMON + t['sources'] + args.extra)
    user = f'{docs}Nhiệm vụ: viết file `{t["out"]}` — {t["title"]}.\n\n{t["brief"]}'
    resp = call(key, {'model': MODEL, 'max_tokens': 64000, 'system': SYSTEM,
                      'output_config': {'effort': args.effort},
                      'messages': [{'role': 'user', 'content': user}]})
    text = '\n'.join(b['text'] for b in resp['content'] if b.get('type') == 'text').strip()
    with open(os.path.join(ROOT, t['out']), 'w', encoding='utf-8') as f:
        f.write(text + '\n')
    u = resp.get('usage', {})
    rec = {'target': args.target, 'model': MODEL, 'effort': args.effort,
           'input_tokens': u.get('input_tokens', 0), 'output_tokens': u.get('output_tokens', 0),
           'stop_reason': resp.get('stop_reason'), 'at': time.strftime('%Y-%m-%d %H:%M:%S')}
    with open(os.path.join(ROOT, 'student', 'usage.jsonl'), 'a') as f:
        f.write(json.dumps(rec) + '\n')
    print(json.dumps(rec, ensure_ascii=False))


if __name__ == '__main__':
    main()
