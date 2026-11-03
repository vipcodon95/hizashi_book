"""Giai đoạn 0 — kiểm chứng nguồn cho nen_tang_doc_hieu.md (15/10/2026).

Mỗi luận điểm một lượt Sonnet 5.5 có web_search. Kết quả → research/kiem_chung/<mã>.md,
token → research/kiem_chung/usage.jsonl. Key đọc từ file (không in ra).

    python3 run_verify.py --key-file <trash_info.md>            # chạy hết
    python3 run_verify.py --key-file <...> --only L1,L5         # chạy vài mã
"""
import argparse
import json
import os
import sys
import time
import urllib.error
import urllib.request
from concurrent.futures import ThreadPoolExecutor

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, '..', 'kiem_chung')
MODEL = 'claude-sonnet-5-5'
MAX_SEARCHES = 10

SYSTEM = """Bạn là trợ lý nghiên cứu kiểm chứng nguồn cho một cuốn sách đọc hiểu tiếng Nhật dành cho người Việt.

LUẬT BẮT BUỘC:
- Chỉ ghi "ĐÃ XÁC NHẬN" khi chính bạn tìm thấy trang của bài gốc, trang nhà xuất bản, cơ sở dữ liệu học thuật (DOI, J-STAGE, CiNii, Google Scholar, PubMed…) hoặc bản tóm tắt chính thức. Ghi URL đã thấy.
- Không bao giờ tự điền tên bài, tạp chí, năm, số trang từ trí nhớ. Chưa thấy trên trang tìm được thì ghi "chưa xác nhận".
- Tên tác giả, năm trong đề bài chỉ là GIẢ THUYẾT, có thể sai. Sai thì nói rõ là sai và đúng ra là gì (nếu tìm thấy).
- Phân biệt rõ điều bài gốc THẬT SỰ kết luận với điều cuốn sách đang định viết. Nếu sách định nói quá lên so với bài gốc, chỉ ra.
- Không tìm được thì ghi "không tìm được" và liệt kê các truy vấn đã thử.
- Viết tiếng Việt CÓ DẤU đầy đủ. Giữ nguyên tên riêng tiếng Nhật/Anh.

ĐỊNH DẠNG TRẢ VỀ (markdown):
# <mã> — <tên luận điểm>
## Kết luận nhanh
Một trong: GIỮ / SỬA / BỎ, kèm 2–4 câu lý do.
## Nguồn đã kiểm chứng
Bảng: Nguồn (tác giả, năm, tên bài, nơi đăng) | Trạng thái (ĐÃ XÁC NHẬN / chưa xác nhận / sai thông tin) | URL | Bài gốc thật sự nói gì
## Đối chiếu với điều sách định viết
## Câu chữ đề xuất cho sách
Một đoạn ngắn có thể đưa vào sách, chỉ dựa trên nguồn đã xác nhận, kèm trích dẫn (Tác giả, năm).
## Còn nghi ngờ
## Truy vấn đã dùng
"""

TASKS = {
    'L1': ("Xử lý gia tăng và dự đoán trong tiếng Nhật",
           "Luận điểm: người bản ngữ tiếng Nhật xử lý câu GIA TĂNG, hiểu dần từng khối mà không chờ động từ cuối câu, "
           "và dùng trợ từ cách (が, を, に…) để DỰ ĐOÁN phần sau.\n"
           "Nguồn ứng viên: Kamide, Altmann & Haywood (2003) Journal of Memory and Language — có thí nghiệm theo dõi mắt với "
           "người nói tiếng Nhật không, kết luận chính xác là gì; Miyamoto (2002) về trợ từ cách trong xử lý gia tăng tiếng Nhật "
           "(tên bài, tạp chí); Kamide & Mitchell (1999) về xử lý câu head-final. Tìm thêm nghiên cứu đáng tin khác nếu có."),
    'L2': ("Dự đoán ở người học L2",
           "Luận điểm: người học ngoại ngữ dự đoán kém hơn người bản ngữ hoặc dùng tín hiệu dự đoán chưa ổn định; "
           "kỹ năng này có thể cải thiện.\n"
           "Nguồn ứng viên: Kaan (2014) 'Predictive sentence processing in L2 and L1: What is different?' Linguistic Approaches "
           "to Bilingualism; Grüter, Lew-Williams & Fernald (2012); giả thuyết RAGE của Grüter, Rohde & Schafer (2017); "
           "ƯU TIÊN: Mitsugi & MacWhinney (2016) — người học tiếng Nhật L2 có dùng trợ từ cách để dự đoán không. "
           "Đặc biệt kiểm vế 'có thể cải thiện' có bằng chứng không."),
    'L3': ("Cấu trúc tầng của đuôi câu (南不二男)",
           "Luận điểm: phần đuôi vị ngữ tiếng Nhật xếp theo tầng cố định: thể (使役・受身) → phủ định → thì → tình thái → "
           "trợ từ cuối câu.\n"
           "Nguồn ứng viên: 南不二男 (1974)『現代日本語の構造』大修館書店, mô hình bốn tầng A/B/C/D; 仁田義雄, 益岡隆志 về "
           "モダリティ và 階層構造. Tìm bằng tiếng Nhật (南不二男 四段階 階層 / 文の階層構造 モダリティ). "
           "Kiểm ví dụ 食べさせられなかったらしいよ có đúng ngữ pháp và đúng thứ tự tầng không."),
    'L4': ("Phó từ hô ứng (陳述副詞 / 呼応の副詞)",
           "Luận điểm: có nhóm phó từ báo trước kiểu đuôi câu (もし…たら, ぜんぜん…ない, たぶん…だろう, まるで…ようだ…).\n"
           "Kiểm: ai đặt thuật ngữ 陳述副詞 (山田孝雄? 渡辺実?), 呼応の副詞 có phải thuật ngữ trong 学校文法 không; "
           "tìm danh sách cặp hô ứng chuẩn từ nguồn đáng tin (từ điển ngữ pháp, tài liệu 国語/日本語教育). Tìm bằng tiếng Nhật."),
    'L5': ("文節 (bunsetsu) là đơn vị phân đoạn",
           "Luận điểm: 文節 (bunsetsu) là đơn vị phân đoạn tự nhiên của câu tiếng Nhật.\n"
           "Tìm bằng các từ 文節, 橋本進吉 文節, 学校文法 文節 定義, 文節 ネ 区切り. Kiểm: 橋本進吉 định nghĩa 文節 thế nào, "
           "trong tác phẩm nào; tiêu chí ネ/サ chèn vào; định nghĩa chuẩn 1 文節 = 1 自立語 + 0..n 付属語. "
           "Câu hỏi cụ thể: 東京のレストランで theo định nghĩa chuẩn là 2 文節 (東京の / レストランで) đúng không? "
           "Có nghiên cứu tâm lý ngôn ngữ nào cho thấy 文節 là đơn vị xử lý/ngắt nhịp thật khi đọc không (vd. eye-tracking, "
           "ngắt nhịp khi đọc thành tiếng)? Có phê phán khái niệm 文節 không?"),
    'L6': ("Bộ nhớ làm việc và gom khối (chunking)",
           "Luận điểm: bộ nhớ làm việc có dung lượng giới hạn; gom khối giúp giảm tải.\n"
           "Kiểm: Miller (1956) 'The magical number seven, plus or minus two' (Psychological Review) — nói gì về chunk; "
           "Cowan (2001) Behavioral and Brain Sciences — dung lượng khoảng 4 khối, tên bài chính xác. "
           "Có nghiên cứu nào nối bộ nhớ làm việc với đọc hiểu L2 không (vd. Daneman & Carpenter 1980 reading span)? "
           "Câu 'nên dùng ~4 thay cho 5–9' có được ủng hộ không."),
    'L7': ("Phi ngôn từ hóa (deverbalization)",
           "Luận điểm: hiểu nghĩa có thể tách khỏi hình thức ngôn từ (phi ngôn từ hóa).\n"
           "Nguồn ứng viên: Seleskovitch & Lederer, théorie interprétative de la traduction (ESIT, Paris). Xác nhận tác phẩm "
           "và năm (vd. 'Interpréter pour traduire' 1984?). Kiểm: lý thuyết này có bằng chứng thực nghiệm không hay chủ yếu là "
           "lý thuyết của nghề phiên dịch; có phê phán không (vd. Gile). Có nghiên cứu tâm lý về trí nhớ nghĩa so với trí nhớ "
           "câu chữ (Sachs 1967) ủng hộ ý 'người đọc nhớ nghĩa, quên nguyên văn' không."),
    'L8': ("Đối chiếu Việt–Nhật: vị trí phủ định, thì, khả năng, bị động",
           "Luận điểm: tiếng Việt đặt phủ định, thì, khả năng, bị động TRƯỚC động từ (không, đã, sẽ, đang, có thể, bị/được); "
           "tiếng Nhật dồn các thông tin này SAU động từ. Tiếng Việt cũng có tiểu từ tình thái cuối câu (à, nhé, đấy, chứ).\n"
           "Nguồn ứng viên: Cao Xuân Hạo, 'Tiếng Việt: sơ thảo ngữ pháp chức năng' (1991); Diệp Quang Ban, ngữ pháp tiếng Việt. "
           "Kiểm thông tin xuất bản. Lưu ý ngoại lệ: 'được' có thể đứng SAU động từ (làm được), 'rồi' cuối câu chỉ hoàn thành, "
           "'chưa' — nêu ra để sách khỏi nói tuyệt đối. Tìm thêm nghiên cứu đối chiếu Việt–Nhật (日越対照, ベトナム語 日本語 対照) "
           "về các điểm này."),
    'R1': ("research.md: 'SOV kích hoạt IFG mạnh hơn SVO'",
           "File cũ do AI viết khẳng định: chụp não cho thấy câu SOV kích hoạt hồi trán dưới trái (IFG/Broca) mạnh hơn SVO. "
           "Nghi ngờ: các nghiên cứu gốc (vd. Kinno et al. 2008; Kim et al. 2009; Koizumi; Ohta) nói về trật tự XÁO TRỘN "
           "(OSV/scrambling) so với trật tự chuẩn trong tiếng Nhật, không phải SOV so với SVO. Kiểm xem có nghiên cứu nào thật "
           "sự so SOV với SVO về kích hoạt IFG không; nếu không, khẳng định cần sửa thành gì."),
    'R2': ("research.md: UID và surprisal gắn với SVO/SOV",
           "File cũ dùng nguyên lý Uniform Information Density (Jaeger, Levy) và lý thuyết surprisal (Hale 2001, Levy 2008) "
           "để giải thích khó khăn đọc tiếng Nhật SOV. Kiểm: các lý thuyết này có nghiên cứu nào áp riêng vào trật tự SOV/head-final "
           "hoặc tiếng Nhật không (vd. dependency locality, anti-locality effects trong ngôn ngữ head-final: Konieczny 2000, "
           "Vasishth & Lewis 2006, Nakatani & Gibson)? Nếu chỉ là lý thuyết chung không gắn được thì đề xuất BỎ."),
    'R3': ("Người Việt học tiếng Nhật: đọc hiểu và xử lý câu",
           "Tìm nghiên cứu về người Việt học tiếng Nhật liên quan tới đọc hiểu, xử lý câu, trợ từ, trật tự từ, lỗi trợ từ "
           "(ベトナム人日本語学習者 読解 / 助詞 誤用 / 語順). Nguồn: 日本語教育 (学会誌), J-STAGE, CiNii, các trường Việt Nam "
           "(ĐH Hà Nội, ĐHQG). Ghi những nghiên cứu ĐÃ XÁC NHẬN tồn tại kèm kết luận chính, và nghiên cứu nào hữu ích cho phần "
           "'cơ chế lỗi của người Việt'."),
    # Đợt 2 (15/10): thử tìm VĂN BẢN GỐC — chủ biên: "thử tìm 1 chút, không lấy được cũng không sao"
    'S1': ("Văn bản gốc 橋本進吉『国語法要説』: định nghĩa 文節",
           "Tìm NGUYÊN VĂN câu định nghĩa 文節 của 橋本進吉 trong『国語法要説』(1934) hoặc bản 著作集 第2冊『国語法研究』"
           "(岩波書店 1948). Thử NDL デジタルコレクション (dl.ndl.go.jp), 青空文庫, các bài J-STAGE/CiNii trích nguyên văn có "
           "ghi trang. Trả về: câu nguyên văn tiếng Nhật, trang, nguồn trích, và 橋本 có tự dùng phép chèn ネ/サ không. "
           "Chỉ ghi nguyên văn khi thấy trên trang; không dựng lại từ trí nhớ."),
    'S2': ("Văn bản gốc 山田孝雄『日本文法論』: 陳述副詞",
           "Tìm NGUYÊN VĂN chỗ 山田孝雄 đặt và định nghĩa 陳述副詞 trong『日本文法論』(宝文館 1908) hoặc『日本文法学概論』(1936). "
           "Thử NDL デジタルコレクション, bài nghiên cứu trích nguyên văn kèm trang. Trả về: câu nguyên văn, trang, nguồn; "
           "山田 có phải người đầu tiên dùng từ 陳述副詞 không."),
    'S3': ("Văn bản gốc 南不二男 (1974): bốn lớp A/B/C/D",
           "Tìm mô tả trực tiếp (nguyên văn hoặc bảng) bốn lớp A/B/C/D trong 南不二男『現代日本語の構造』(1974): mỗi lớp chứa "
           "những yếu tố nào (ヴォイス? 否定? テンス? 推量? 終助詞?), các 従属句 tiêu biểu mỗi lớp (〜ながら, 〜て, 〜から, 〜が…). "
           "Ưu tiên bài học thuật trích có ghi trang (J-STAGE, kho lưu trữ đại học). Kiểm năm Takubo (1978 hay 1987) đã tóm lược "
           "mô hình này: tên bài, nơi đăng."),
    # Đợt 3 (15/10): lấp chỗ trống thư mục của nen_tang_doc_hieu.md
    'G1': ("Thư mục: nguồn tâm lý ngôn ngữ còn thiếu",
           "Xác nhận thông tin xuất bản đầy đủ (tác giả, năm, tên bài, tạp chí, tập, trang, DOI) cho: "
           "(a) Shin, J. (2020) meta-analysis working memory và L2 reading comprehension, Applied Psycholinguistics — và hệ số r tổng; "
           "(b) bài meta-analysis 'Working memory capacity and L2 reading' trên Studies in Second Language Acquisition (tác giả, năm); "
           "(c) Soli & Balch 'Performance biases and recognition memory for semantic and formal changes in connected discourse', Memory & Cognition (năm, trang); "
           "(d) Marsden et al. 2026 huấn luyện dự đoán cách tiếng Đức L2, DOI 10.1177/13621688261444298 (tạp chí, tên bài, cỡ mẫu); "
           "(e) Schremm, Hed, Horne & Roll 2017 Computers & Education 114:206–221 (cỡ mẫu, có nhóm đối chứng không); "
           "(f) năm Seleskovitch lần đầu đưa ra khái niệm déverbalisation (1975 'Langage, langues et mémoire'?)."),
    'G2': ("Thư mục: nguồn tiếng Nhật còn thiếu",
           "Xác nhận thông tin xuất bản đầy đủ cho: "
           "(a) 野田尚史 (2003)? — sách/bài nêu trật tự 語幹→ヴォイス→アスペクト→肯否→テンス→対事的ムード→対他的ムード (tên sách, NXB); "
           "(b) 田窪行則 (1987)「統語構造と文脈情報」『日本語学』6(5)? — tóm lược mô hình A–D của 南不二男 (tên bài, tập, trang); "
           "(c) 森田真吾「昭和10年代文法教育における指導内容の「収斂」」『国語科教育』87 (năm, trang); "
           "(d) 工藤浩「陳述副詞」— in gốc ở đâu (vd.『国語学大辞典』/『日本語文法事典』), năm; "
           "(e) bài J-STAGE「文節単位を考慮した文字配置の工夫がもたらす日本語電子リーダーの可読性向上」人工知能学会論文誌 32(2) (tác giả, năm); "
           "(f) 松田真希子 (2016) về người học tiếng Việt và danh từ ghép N1のN2 (tên bài/sách, nơi đăng)."),
    'G3': ("Thư mục: nguồn tiếng Việt và đối chiếu Việt–Nhật",
           "Xác nhận thông tin xuất bản đầy đủ và nội dung chính cho: "
           "(a) Phan Trang & Duffield, Nigel — bài về đã/đang/sẽ/rồi trong tiếng Việt (tên bài, năm, nơi đăng); "
           "(b) Haga (2013) về đã/đang/sẽ không đơn thuần là thì (tác giả đầy đủ, tên bài, nơi đăng); "
           "(c) Luu (năm?) đối chiếu bị động Việt bị/được với tiếng Nhật られる; "
           "(d) Phạm (2019) đối chiếu 'đấy' với 終助詞; "
           "(e) bài khảo sát lỗi bị động/sai khiến của người Việt học tiếng Nhật dựa trên KY Corpus, Tạp chí Nghiên cứu Nước ngoài (ĐHQGHN) 2020 (tác giả, tên bài); "
           "(f) nguồn học thuật (ngữ pháp tiếng Việt: Cao Xuân Hạo, Diệp Quang Ban, Nguyễn Văn Hiệp, hay bài tạp chí Ngôn ngữ) mô tả vị trí của 'có thể' (trước động từ) và 'chưa' (trước động từ; cuối câu hỏi 'đã… chưa?')."),
    'G4': ("Huấn luyện dự đoán / đọc theo khối cho người học tiếng Nhật",
           "Tìm nghiên cứu (J-STAGE, CiNii, Google Scholar; tiếng Nhật và tiếng Anh) về: người học tiếng Nhật L2 dùng trợ từ để dự đoán "
           "khi ĐỌC (self-paced reading, eye-tracking), và nghiên cứu can thiệp/huấn luyện đọc theo 文節/チャンク, 予測読み, "
           "スラッシュリーディング cho người học tiếng Nhật. Từ khóa gợi ý: 日本語学習者 予測 格助詞 読解 / 文節 区切り 読解 学習者 / "
           "チャンク 読み 日本語教育 / predictive processing L2 Japanese reading self-paced. Chỉ ghi nghiên cứu ĐÃ XÁC NHẬN."),
}


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
                time.sleep(20 * (attempt + 1))
                continue
            raise RuntimeError(f'HTTP {e.code}: {msg}')


def run(code, key):
    title, brief = TASKS[code]
    messages = [{'role': 'user', 'content': f'Mã: {code}\nTên: {title}\n\n{brief}'}]
    tools = [{'type': 'web_search_20250305', 'name': 'web_search', 'max_uses': MAX_SEARCHES}]
    usage_all = []
    for _ in range(4):  # pause_turn ⟹ gửi tiếp
        resp = call(key, {'model': MODEL, 'max_tokens': 16000, 'system': SYSTEM, 'tools': tools, 'messages': messages})
        usage_all.append(resp.get('usage', {}))
        if resp.get('stop_reason') != 'pause_turn':
            break
        messages.append({'role': 'assistant', 'content': resp['content']})
    text = '\n'.join(b['text'] for b in resp['content'] if b.get('type') == 'text')
    with open(os.path.join(OUT, f'{code}.md'), 'w') as f:
        f.write(text)
    u = {'code': code, 'model': MODEL, 'calls': len(usage_all),
         'input_tokens': sum(x.get('input_tokens', 0) for x in usage_all),
         'output_tokens': sum(x.get('output_tokens', 0) for x in usage_all),
         'web_search_requests': sum((x.get('server_tool_use') or {}).get('web_search_requests', 0) for x in usage_all),
         'stop_reason': resp.get('stop_reason'), 'at': time.strftime('%Y-%m-%d %H:%M:%S')}
    with open(os.path.join(OUT, 'usage.jsonl'), 'a') as f:
        f.write(json.dumps(u) + '\n')
    return u


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--key-file', required=True)
    ap.add_argument('--only')
    args = ap.parse_args()
    key = next(l.split('=', 1)[1].strip() for l in open(args.key_file) if l.startswith('api_key='))
    codes = args.only.split(',') if args.only else list(TASKS)
    with ThreadPoolExecutor(max_workers=4) as ex:
        futs = {c: ex.submit(run, c, key) for c in codes}
        for c, fu in futs.items():
            try:
                print(json.dumps(fu.result(), ensure_ascii=False))
            except Exception as e:
                print(f'{c} LỖI: {e}', file=sys.stderr)


if __name__ == '__main__':
    main()
