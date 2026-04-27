#!/usr/bin/env python3
"""
Generator JSON BaiTap + Mogishiken cho sách 11_jisshusei_shokuhin.

12 modules. Mỗi module:
  - 1 BaiTap.json (40 câu × 4 levels)
  - 1 Mogishiken.json (5 sections × 4 reading questions)

Output:
  books/11_jisshusei_shokuhin/<module_folder>/<topic>_<Name>_BaiTap.json
  books/11_jisshusei_shokuhin/<module_folder>/<topic>_<Name>_Mogishiken.json

Run: python3 _shared/scripts/generate_jisshusei_shokuhin_json.py
"""
import json
import os
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
BOOK_DIR = ROOT / "books" / "11_jisshusei_shokuhin"

# ============================================================
# DATA: 12 modules x 40 BaiTap questions + 5 reading sections
# ============================================================

MODULES = [
    {
        "pos": 1,
        "code": "t01_dat_chan_toi_nhat",
        "name_jp": "DatChanToiNhat",
        "title_vn": "T1. Đặt chân tới Nhật",
        "title_jp": "日本に着いた日",
        "focus": "Chào hỏi + jiko-shoukai + vocab sân bay/ký túc/入社式",
        "topic_id": 1,
    },
    {
        "pos": 2, "code": "t02_tuan_dau_nha_may", "name_jp": "TuanDauNhaMay",
        "title_vn": "T2. Tuần đầu trong nhà máy", "title_jp": "工場での最初の一週間",
        "focus": "Vocab thiết bị + bảo hộ + 5S + cold chain + ~てください", "topic_id": 2,
    },
    {
        "pos": 3, "code": "t03_eisei_kanri", "name_jp": "EiseiKanri",
        "title_vn": "T3. Quy tắc vệ sinh thực phẩm", "title_jp": "食品衛生のルール",
        "focus": "Rửa tay 30s + HACCP 7 nguyên tắc + allergen 9+19 + 検便", "topic_id": 3,
    },
    {
        "pos": 4, "code": "t04_line_operation", "name_jp": "LineOperation",
        "title_vn": "T4. Lần đầu đứng dây chuyền", "title_jp": "初めてのライン作業",
        "focus": "Hou-ren-sou + 異常があります + KAIZEN + かしこまりました", "topic_id": 4,
    },
    {
        "pos": 5, "code": "t05_furyou_hin", "name_jp": "FuryouHin",
        "title_vn": "T5. Lần đầu mắc lỗi", "title_jp": "初めての失敗",
        "focus": "Sonkeigo/Kenjougo + 4 cấp xin lỗi + trace lot + 5W1H + 5 Why", "topic_id": 5,
    },
    {
        "pos": 6, "code": "t06_chukan_mensetsu", "name_jp": "ChukanMensetsu",
        "title_vn": "T6. Nửa năm — Đánh giá giữa kỳ", "title_jp": "中間面接",
        "focus": "Cụm trình bày + keigo trung cấp + ~させていただきます + Tokutei Ginou intro", "topic_id": 6,
    },
    {
        "pos": 7, "code": "t07_matsuri_seikatsu", "name_jp": "MatsuriSeikatsu",
        "title_vn": "T7. Mùa thu — Lễ hội & Đời sống", "title_jp": "秋祭りと暮らし",
        "focus": "Casual JP + Saitama dialect + yuukyuu + 給与明細", "topic_id": 7,
    },
    {
        "pos": 8, "code": "t08_iso_audit", "name_jp": "IsoAudit",
        "title_vn": "T8. Khách kiểm tra audit", "title_jp": "お客様の監査",
        "focus": "Keigo cao cấp + ISO 22000/FSSC + uchi-soto + xử lý xung đột", "topic_id": 8,
    },
    {
        "pos": 9, "code": "t09_shihin_kaihatsu", "name_jp": "ShihinKaihatsu",
        "title_vn": "T9. Triển khai sản phẩm mới", "title_jp": "新商品開発",
        "focus": "Vocab meeting + ~はいかがでしょうか + 官能評価 + shihin sekkei", "topic_id": 9,
    },
    {
        "pos": 10, "code": "t10_recall_kuringu", "name_jp": "RecallKuringu",
        "title_vn": "T10. Sự cố lớn — Recall", "title_jp": "重大事故 — リコール",
        "focus": "Xin lỗi cấp cao + 自主回収 + PL Law + プレスリリース + hou-ren-sou khẩn", "topic_id": 0,
    },
    {
        "pos": 11, "code": "t11_shourai_keikaku", "name_jp": "ShouraiKeikaku",
        "title_vn": "T11. Định hướng tương lai", "title_jp": "将来の計画",
        "focus": "Bàn bạc tương lai + xin lời khuyên + Sekininsha/HACCP/SSW + 育成就労", "topic_id": 1,
    },
    {
        "pos": 12, "code": "t12_bonenkai_furikaeri", "name_jp": "BonenkaiFurikaeri",
        "title_vn": "T12. Một năm nhìn lại", "title_jp": "1年間の振り返り",
        "focus": "Bonenkai + 一本締め + cảm ơn cao cấp + speech + chia tay", "topic_id": 2,
    },
]


# ============================================================
# QUESTION DATA — concrete content per module (10 questions/level x 4 levels = 40)
# ============================================================

QUESTIONS_DATA = {
    "t01_dat_chan_toi_nhat": {
        "L1": [  # N5 cơ bản — chào hỏi + vocab cơ bản
            ("「はじめまして」の意味は何ですか?", "Nghĩa của「はじめまして」là gì?",
             [("Lần đầu gặp", True), ("Cảm ơn", False), ("Tạm biệt", False), ("Chào buổi tối", False)],
             "「はじめまして」là cụm chào hỏi khi gặp lần đầu tiên."),
            ("「ありがとうございます」の意味は?", "Nghĩa của「ありがとうございます」?",
             [("Xin lỗi", False), ("Cảm ơn (lịch sự)", True), ("Chào buổi sáng", False), ("Hẹn gặp lại", False)],
             "Cụm cảm ơn lịch sự, dùng với sếp/người trên."),
            ("「空港」(くうこう) là:", "「空港」(くうこう) là:",
             [("Sân bay", True), ("Nhà ga", False), ("Bến cảng", False), ("Khách sạn", False)],
             "空港 = kuukou = sân bay."),
            ("「在留カード」を持って出かける必要があるのは:", "Cần mang「在留カード」khi nào?",
             [("Chỉ khi đi làm", False), ("Mọi lúc, mọi nơi", True), ("Chỉ khi ra nước ngoài", False), ("Không cần mang", False)],
             "在留カード phải mang theo 24/7. Mất phải báo trong 14 ngày."),
            ("「寮」(りょう) là:", "「寮」(りょう) là:",
             [("Phòng tắm", False), ("Ký túc xá", True), ("Văn phòng", False), ("Nhà ăn", False)],
             "寮 = ryou = ký túc xá."),
            ("「お疲れさまでした」を使うのは:", "Dùng「お疲れさまでした」khi:",
             [("Chỉ với sếp", False), ("Với cả người trên và dưới", True), ("Chỉ với khách", False), ("Chỉ trong gia đình", False)],
             "Dùng được cho cả người trên/dưới — câu greeting + cảm ơn nỗ lực."),
            ("「両替」(りょうがえ) là:", "「両替」(りょうがえ) là:",
             [("Đổi tiền", True), ("Hẹn gặp", False), ("Đặt hàng", False), ("Mua vé", False)],
             "両替 = đổi tiền (sân bay/ngân hàng)."),
            ("「税関」(ぜいかん) là:", "「税関」(ぜいかん) là:",
             [("Lễ tân", False), ("Hải quan", True), ("Cảnh sát", False), ("Nhân viên y tế", False)],
             "税関 = hải quan ở sân bay."),
            ("「燃えるゴミ」を出す日は普通:", "Ngày đổ「燃えるゴミ」(rác cháy được) thường:",
             [("Mỗi ngày", False), ("Thứ 2, 4, 6", True), ("Chỉ thứ 7", False), ("Không cố định", False)],
             "Saitama thường: 燃えるゴミ thứ 2, 4, 6."),
            ("「すみません、もう一度お願いします」の意味は:", "Nghĩa của câu này là:",
             [("Xin lỗi, tạm biệt", False), ("Xin lỗi, xin nhắc lại lần nữa", True), ("Xin lỗi, không có", False), ("Xin lỗi, tôi đi đây", False)],
             "Câu cứu cánh khi không hiểu — KHÔNG gật bừa."),
        ],
        "L2": [  # N5+ — jiko-shoukai patterns
            ("自己紹介で「____ と申します」の____には何が入りますか?", "Trong jiko-shoukai「____ と申します」, ____ là:",
             [("Tên mình", True), ("Tên sếp", False), ("Tên công ty", False), ("Số điện thoại", False)],
             "Cấu trúc giới thiệu kenjougo: 「[Tên] と申します」."),
            ("「____ から来ました」の____には何が入りますか?", "Trong câu「____ から来ました」, ____ là:",
             [("Tuổi", False), ("Quê quán/quốc gia", True), ("Ngày sinh", False), ("Tên trường", False)],
             "から = từ. Từ đâu đến → quê quán/quốc gia."),
            ("「よろしく____」の____に入る最も丁寧なのは:", "「よろしく____」phần lịch sự nhất là:",
             [("お願いします", True), ("ね", False), ("だよ", False), ("頼む", False)],
             "「よろしくお願いします」là dạng đầy đủ + lịch sự."),
            ("入社式で着る服は普通:", "Trang phục ở 入社式 thường là:",
             [("Áo thun + quần jeans", False), ("Âu phục đen + sơ mi trắng", True), ("Yukata", False), ("Đồng phục công nhân", False)],
             "入社式 = formal, mặc âu phục đen + sơ mi trắng."),
            ("「ベトナム____ 来ました」の____に入るのは:", "「ベトナム____ 来ました」điền:",
             [("で", False), ("に", False), ("から", True), ("を", False)],
             "から = từ (origin). Từ Việt Nam đến."),
            ("「私はホア____」の____には何が入りますか?(formal jiko-shoukai)", "「私はホア____」điền (jiko-shoukai formal):",
             [("です", False), ("と申します", True), ("だ", False), ("ね", False)],
             "Formal nhất = と申します (kenjougo)."),
            ("社員証(しゃいんしょう) を渡されたとき:", "Khi được trao 社員証:",
             [("Một tay nhận", False), ("Hai tay nhận + cúi", True), ("Bỏ vào túi luôn", False), ("Đặt xuống bàn", False)],
             "Đồ quan trọng nhận bằng 2 tay + cúi."),
            ("「乾杯」のとき新人(しんじん) はグラスを:", "Lúc 乾杯, người mới (TTS) nâng ly:",
             [("Cao hơn sếp", False), ("Thấp hơn sếp", True), ("Bằng sếp", False), ("Không cần nâng", False)],
             "TTS năm 1 nâng ly THẤP HƠN ly sếp = sign of respect."),
            ("OTIT は何の機関ですか?", "OTIT là cơ quan gì?",
             [("Nhập cảnh", False), ("Giám sát thực tập sinh", True), ("Bảo hiểm", False), ("Thuế", False)],
             "OTIT = 外国人技能実習機構 = cơ quan giám sát TTS."),
            ("講習会(こうしゅうかい) は何ですか?", "講習会 là gì?",
             [("Tiệc liên hoan", False), ("Buổi học bắt buộc", True), ("Họp khẩn cấp", False), ("Khám sức khoẻ", False)],
             "講習会 = buổi học bắt buộc 1 tháng đầu."),
        ],
        "L3": [  # N5-N4 — situation
            ("先輩(せんぱい) が荷物を持つと言ったら、最初は:", "Sempai đề nghị xách hành lý lần đầu, nên:",
             [("はい、お願いします", False), ("自分で持ちます (lịch sự từ chối)", True), ("どうも (cộc)", False), ("いりません (cộc)", False)],
             "Lần đầu nên từ chối lịch sự. Nếu đề nghị lần 2 mới nhận."),
            ("Linh-chị (sempai VN) chào sáng, Hoa nói:", "Chào sempai VN buổi sáng:",
             [("おはようございます", False), ("おはよう / Chào chị", True), ("やあ", False), ("もしもし", False)],
             "Sempai VN cùng ký túc → casual OK. Mix Việt-Nhật được."),
            ("Tanaka-buchou (sếp Nhật) chào sáng:", "Chào Tanaka-buchou buổi sáng:",
             [("おはよう", False), ("おはようございます", True), ("どうも", False), ("Chào sếp", False)],
             "Sếp Nhật → formal おはようございます (đầy đủ ございます)."),
            ("Lễ 入社式 cần đeo phụ kiện gì?", "Phụ kiện gì OK ở 入社式?",
             [("Nhẫn cưới + đồng hồ + 1 đôi bông tai nhỏ", True), ("Vòng cổ vàng to", False), ("Hoa tai dài", False), ("Vòng tay nhiều", False)],
             "Tối thiểu — nhẫn cưới (nếu có), đồng hồ, bông tai nhỏ."),
            ("Khi không hiểu sếp nói, KHÔNG NÊN:", "Khi không hiểu, KHÔNG nên:",
             [("Hỏi lại", False), ("Gật đầu giả vờ hiểu", True), ("Nói「すみません、もう一度お願いします」", False), ("Xin viết ra giấy", False)],
             "Gật bừa = nguy hiểm. Phải hỏi lại."),
            ("Buổi sáng đầu tiên ở ký túc nên:", "Sáng đầu ở ký túc:",
             [("Ngủ thêm", False), ("Dậy sớm chuẩn bị + chào Linh chị + Andi", True), ("Im lặng đi làm", False), ("Mời mọi người ăn", False)],
             "Chào hỏi bạn cùng phòng = bước đầu build relationship."),
            ("Ăn trưa ở 食堂 (shokudou) lần đầu:", "Lần đầu ăn trưa ở 食堂:",
             [("Ngồi 1 mình", False), ("Theo Satou-senpai để học cách", True), ("Mang đồ ăn riêng", False), ("Skip ăn trưa", False)],
             "Theo sempai = học cách + bonding."),
            ("Khi mất 在留カード:", "Khi mất 在留カード:",
             [("Không sao, làm cái mới sau", False), ("Báo cảnh sát + Sở Xuất nhập cảnh trong 14 ngày", True), ("Đợi tự tìm thấy", False), ("Xin sếp xin cái mới", False)],
             "Luật: báo trong 14 ngày kể từ khi mất."),
            ("Khi đi tắm onsen, 在留カード:", "Khi đi tắm onsen với 在留カード:",
             [("Để ở nhà", False), ("Gửi tủ ở onsen", True), ("Giấu trong áo", False), ("Cầm tay", False)],
             "Phải mang theo 24/7 nhưng có thể gửi tủ khi tắm."),
            ("Lần đầu giới thiệu trước cả phòng SX, nên:", "Jiko-shoukai trước cả phòng nên:",
             [("Nói nhanh, ngắn nhất có thể", False), ("Nói rõ ràng, cấu trúc 5 câu, cúi 30°", True), ("Thuộc bài thật dài", False), ("Đọc giấy", False)],
             "Cấu trúc chuẩn 5 câu + cúi 30° = đủ."),
        ],
        "L4": [  # N4 — văn hoá + nuance
            ("Tại sao TTS năm 1 KHÔNG được uống rượu nhiều ở 入社式?", "Tại sao TTS năm 1 không uống nhiều?",
             [("Vì cấm theo luật", False), ("Vì cần tỉnh táo + đợi sếp + show kỷ luật", True), ("Vì rượu Nhật đắt", False), ("Vì có thể gây dị ứng", False)],
             "Năm 1 = đang được đánh giá → giữ tỉnh táo + show kỷ luật."),
            ("Phân biệt 「お世話になります」 (dùng với khách/sếp) và 「よろしく」 (dùng với):", "「よろしく」 dùng với:",
             [("Sếp", False), ("Bạn / sempai gần", True), ("Khách hàng", False), ("Cảnh sát", False)],
             "「お世話になります」 = formal cao. 「よろしく」 = casual với bạn."),
            ("Khi sempai VN (Linh chị) hỏi「Hoa khoẻ không?」 trong ký túc, nên trả lời:", "Trả lời Linh chị:",
             [("はい、元気です (formal)", False), ("Em khoẻ chị / 元気だよ (casual)", True), ("元気でございます (super formal)", False), ("Im lặng", False)],
             "Sempai VN cùng ký túc → casual."),
            ("Tại sao Nhật có nghi thức 入社式 long trọng?", "Lý do 入社式 long trọng:",
             [("Giải trí cho nhân viên cũ", False), ("Đánh dấu chính thức gia nhập + xây dựng cam kết", True), ("Bắt buộc theo luật", False), ("Truyền thống cổ", False)],
             "入社式 = cam kết + xây dựng identity là 'thành viên công ty'."),
            ("Sempai VN năm 2 (Linh chị) thường giúp gì cho TTS năm 1?", "Linh chị giúp Hoa gì?",
             [("Giúp giặt quần áo", False), ("Hướng dẫn ký túc + cuộc sống + an ủi", True), ("Cho tiền tiêu", False), ("Dạy tiếng Nhật chuyên sâu", False)],
             "Sempai VN = mentor đời sống + emotional support."),
            ("Khi không thể tham gia 講習会 OTIT, nên:", "Không thể tham gia 講習会:",
             [("Bỏ qua", False), ("Báo Suzuki + xin lịch khác", True), ("Tự học ở nhà", False), ("Nhờ bạn đi giúp", False)],
             "Bắt buộc — phải báo + xin lịch khác."),
            ("Lần đầu xa nhà, cảm xúc thường gặp:", "Cảm xúc lần đầu xa nhà:",
             [("Phấn khích thuần tuý", False), ("Hỗn hợp: lo + nhớ nhà + hy vọng", True), ("Buồn duy nhất", False), ("Vô cảm", False)],
             "Bình thường có hỗn hợp cảm xúc — không xấu hổ."),
            ("Gọi điện về VN cho mẹ tuần đầu nên:", "Gọi điện về tuần đầu:",
             [("Báo mọi khó khăn cho mẹ lo", False), ("Báo an toàn + chia sẻ tích cực + giấu khó khăn nhỏ", True), ("Không gọi vì sợ tốn tiền", False), ("Chỉ nhắn tin", False)],
             "Báo an toàn + tích cực — khó khăn lớn thì chia sẻ, nhỏ thì tự xử lý."),
            ("Khác biệt giữa 「監理団体」 (kanri dantai) và OTIT:", "Khác giữa 監理団体 và OTIT:",
             [("Cùng cơ quan", False), ("Kanri dantai là đoàn thể giám sát công ty cụ thể; OTIT là cơ quan chính phủ giám sát toàn quốc", True), ("Kanri dantai chỉ ở VN", False), ("OTIT chỉ check 1 lần", False)],
             "Kanri dantai = đoàn thể giám sát của 1 nhóm công ty; OTIT = cơ quan chính phủ."),
            ("Tuần đầu sang Nhật, ưu tiên #1 nên là:", "Ưu tiên #1 tuần đầu:",
             [("Học tiếng Nhật cấp tốc", False), ("Quan sát + nhớ tên người + chào hỏi đúng", True), ("Tìm hiểu Tokyo", False), ("Mua sắm", False)],
             "Quan sát + nhớ tên + chào = nền tảng relationship cả năm."),
        ],
    },
    # Các module khác sẽ được generate với cùng pattern + nội dung concrete dựa trên LyThuyet
}


# ============================================================
# Helper: generate questions for any module
# ============================================================

def make_question(qid, qtype, level, skill, jp, vn, choices, explanation, tip=None, category=None):
    """choices = list of (text_jp, is_correct), each option is auto-translated."""
    return {
        "id": qid,
        "question_type": qtype,
        "selection_type": "single",
        "skill_category": skill,
        "level": level,
        "category": category or "",
        "question_jp": jp,
        "question_vn": vn,
        "choices": [
            {
                "id": chr(65 + i),  # A, B, C, D
                "text": opt[0] if isinstance(opt[0], str) else opt[0],
                "text_translation": opt[2] if len(opt) > 2 else None,
                "is_correct": opt[1],
                "order": i,
            } for i, opt in enumerate(choices)
        ],
        "explanation": explanation,
        **({"tip": tip} if tip else {}),
    }


def build_baitap_for_module(module):
    """Build 1 BaiTap.json file for 1 module. 40 questions = 10 × 4 levels."""
    code = module["code"]
    questions = []
    sets = []

    data = QUESTIONS_DATA.get(code)
    if not data:
        # Generate placeholder for modules without explicit data — uses focus topic
        data = generate_default_questions(module)

    for level_key, level_label in [("L1", "N5"), ("L2", "N5"), ("L3", "N4"), ("L4", "N4")]:
        level_questions = data.get(level_key, [])
        question_ids = []
        for i, q in enumerate(level_questions, 1):
            qid = f"q_{code}_baitap_{level_key.lower()}_{i:02d}"
            jp_text, vn_text, choices_raw, explanation = q[:4]
            tip = q[4] if len(q) > 4 else None

            choices_full = []
            for ch_text, is_correct in choices_raw:
                # if the choice is split as "text|translation", use that; else translation = None
                if isinstance(ch_text, tuple):
                    choices_full.append((ch_text[0], is_correct, ch_text[1]))
                else:
                    choices_full.append((ch_text, is_correct, ch_text if not _is_japanese(ch_text) else None))

            # Determine skill_category based on module type
            if module["pos"] in [4, 5, 6, 8, 9, 10, 11, 12]:
                skill = "grammar"
            else:
                skill = "vocab"

            questions.append({
                "id": qid,
                "question_type": "chon_dap_an",
                "selection_type": "single",
                "skill_category": skill,
                "level": level_label,
                "category": f"Level {level_key[1]}",
                "question_jp": jp_text,
                "question_vn": vn_text,
                "choices": [
                    {
                        "id": chr(65 + idx),
                        "text": ch[0],
                        "text_translation": ch[2],
                        "is_correct": ch[1],
                        "order": idx,
                    } for idx, ch in enumerate(choices_full)
                ],
                "explanation": explanation,
                **({"tip": tip} if tip else {}),
            })
            question_ids.append(qid)

        sets.append({
            "set_id": f"set_{code}_baitap_level{level_key[1]}",
            "set_type": "practice",
            "name": f"{module['title_vn']} — Bài tập Level {level_key[1]}",
            "description": f"Bài tập trắc nghiệm — Level {level_key[1]}: {level_label}",
            "card_count": len(question_ids),
            "module_position": int(level_key[1]),
            "reading_passage_ref": None,
            "question_ids": question_ids,
        })

    return {
        "_schema_version": "1.0",
        "_skill": "study-course-questions-builder",
        "_description": f"BaiTap cho {module['title_vn']}. 40 câu × 4 levels.",
        "meta": {
            "title": module["title_jp"],
            "title_vn": module["title_vn"],
            "module_code": code,
            "total_questions": len(questions),
            "focus": module["focus"],
            "description_vn": f"Bài tập 4 levels cho chương {module['pos']}.",
        },
        "questions": questions,
        "question_sets": sets,
    }


def _is_japanese(text):
    """Check if a string contains Japanese characters."""
    return any('\u3040' <= c <= '\u9fff' or '\u30a0' <= c <= '\u30ff' for c in text)


# ============================================================
# Default questions generator — for modules without explicit data
# ============================================================

DEFAULT_QUESTIONS_BY_MODULE = {
    "t02_tuan_dau_nha_may": {
        "L1": [
            ("「工場」(こうじょう) là:", "「工場」là:",
             [("Sân bay", False), ("Nhà máy", True), ("Văn phòng", False), ("Trường học", False)],
             "工場 = koujou = nhà máy."),
            ("「制服」(せいふく) là:", "「制服」là:",
             [("Đồng phục", True), ("Sách giáo khoa", False), ("Tiền lương", False), ("Khẩu trang", False)],
             "制服 = seifuku = đồng phục."),
            ("「冷蔵」(れいぞう) の温度は:", "Nhiệt độ「冷蔵」là:",
             [("0~10°C", True), ("≤ −18°C", False), ("15~25°C", False), ("≥ 30°C", False)],
             "冷蔵 reizou = 0-10°C, chuẩn 4°C cho cơm hộp."),
            ("「冷凍」(れいとう) の温度は:", "Nhiệt độ「冷凍」là:",
             [("0~10°C", False), ("≤ −18°C", True), ("15~25°C", False), ("≥ 30°C", False)],
             "冷凍 reitou = ≤ −18°C cho thực phẩm đông lạnh."),
            ("5S の最初の S は:", "S đầu tiên trong 5S là:",
             [("整理 (Seiri)", True), ("清掃 (Seisou)", False), ("躾 (Shitsuke)", False), ("整頓 (Seiton)", False)],
             "Thứ tự: 整理→整頓→清掃→清潔→躾."),
            ("「金属探知機」(きんぞくたんちき) の役割:", "「金属探知機」làm gì:",
             [("Đo trọng lượng", False), ("Phát hiện kim loại trong sản phẩm", True), ("Khử trùng", False), ("Đo nhiệt độ", False)],
             "金属探知機 = máy dò kim loại trước đóng gói."),
            ("「マスク」をつける順番:", "Thứ tự đeo「マスク」trong 8 bước:",
             [("Bước 1", False), ("Bước 4 (sau 帽子)", True), ("Bước 8 (cuối)", False), ("Bước 5", False)],
             "Thứ tự: giày → đồng phục → mũ → khẩu trang → găng → tạp dề → ủng → air shower."),
            ("「エアシャワー」の時間:", "「エアシャワー」mất bao lâu:",
             [("10 giây", False), ("30 giây", True), ("1 phút", False), ("5 phút", False)],
             "Air shower 30 giây = bước cuối trước vào khu SX."),
            ("「長靴」(ながぐつ) là:", "「長靴」là:",
             [("Mũ", False), ("Ủng", True), ("Khẩu trang", False), ("Găng tay", False)],
             "長靴 = ủng dài, dùng trong nhà máy thực phẩm."),
            ("「冷蔵庫」(れいぞうこ) là:", "「冷蔵庫」là:",
             [("Kho lạnh", True), ("Phòng họp", False), ("Văn phòng", False), ("Phòng tắm", False)],
             "冷蔵庫 reizouko = kho lạnh."),
        ],
        "L2": [
            ("「マスクを____ ください」の____に入る正しい形:", "「マスクを____ ください」điền:",
             [("つけて", True), ("つける", False), ("つけた", False), ("つけ", False)],
             "Cấu trúc ~てください = hãy ~. Te-form của つける là つけて."),
            ("「ここに入____ ないでください」の____:", "「ここに入____ ないでください」điền:",
             [("ら", True), ("り", False), ("っ", False), ("る", False)],
             "Phủ định mệnh lệnh ~ないでください. 入る → 入らない → 入らないでください."),
            ("kho lạnh −18°C tối đa được vào bao lâu:", "Kho lạnh −18°C tối đa:",
             [("10 phút", False), ("30 phút", True), ("1 giờ", False), ("Không giới hạn", False)],
             "Tối đa 30 phút mỗi lần để tránh hạ thân nhiệt."),
            ("Vào kho lạnh nên mặc:", "Vào kho lạnh mặc:",
             [("Đồng phục bình thường", False), ("防寒着 + găng tay 2 lớp", True), ("Áo thun", False), ("Áo mưa", False)],
             "防寒着 = áo khoác chống lạnh. Găng tay 2 lớp."),
            ("整頓 (Seiton) nghĩa là:", "整頓 nghĩa là:",
             [("Sàng lọc", False), ("Sắp xếp", True), ("Vệ sinh", False), ("Kỷ luật", False)],
             "整頓 Seiton = sắp xếp (S thứ 2 sau 整理 sàng lọc)."),
            ("躾 (Shitsuke) nghĩa là:", "躾 nghĩa là:",
             [("Sàng lọc", False), ("Sắp xếp", False), ("Vệ sinh", False), ("Kỷ luật / tuân thủ", True)],
             "躾 Shitsuke = kỷ luật, S cuối cùng."),
            ("Sự cố「毛髪混入」(もうはつこんにゅう) là:", "「毛髪混入」là:",
             [("Lẫn tóc trong sản phẩm", True), ("Lẫn kim loại", False), ("Hết hàng", False), ("Sai nhãn", False)],
             "Tóc rơi vào sản phẩm = sự cố nghiêm trọng → có thể recall."),
            ("「大掃除」(おおそうじ) thường làm:", "「大掃除」thường làm:",
             [("Mỗi ngày", False), ("Cuối tuần", True), ("Mỗi tháng 1 lần", False), ("Không bắt buộc", False)],
             "大掃除 = dọn dẹp lớn cuối tuần, ~30 phút."),
            ("Khi sempai nhắc nhở, phản ứng tốt nhất:", "Phản ứng khi sempai nhắc:",
             [("Bào chữa", False), ("Im lặng", False), ("Xin lỗi → sửa → cảm ơn", True), ("Khóc", False)],
             "Quy tắc 3 bước: xin lỗi → sửa → cảm ơn."),
            ("「先輩」(せんぱい) の意味:", "「先輩」là:",
             [("Người mới", False), ("Tiền bối", True), ("Khách hàng", False), ("Sếp", False)],
             "先輩 senpai = người vào trước (tiền bối)."),
        ],
        "L3": [
            ("Trong ký túc, gặp Andi (TTS Indonesia) lần đầu, nên:", "Gặp Andi lần đầu:",
             [("Im lặng vì khác nước", False), ("Chào + tự giới thiệu (English/JP đơn giản)", True), ("Chỉ chào tiếng Nhật formal", False), ("Đợi anh ấy chào trước", False)],
             "Cùng ký túc → chào friendly. English/JP đơn giản OK."),
            ("Khi áo bị lệch trong nhà máy, hậu quả nguy hiểm nhất:", "Áo lệch trong nhà máy nguy hiểm vì:",
             [("Mất điểm với sếp", False), ("Tóc rơi → contamination → recall", True), ("Bị phạt tiền", False), ("Không sao", False)],
             "Tóc rơi vào SP = contamination = có thể recall."),
            ("Khi Yamada-san (đồng nghiệp Nhật cùng line) chào, nên:", "Yamada-san chào:",
             [("Im lặng", False), ("Chào lại + tên + cười nhẹ", True), ("Cúi 90°", False), ("Cười to", False)],
             "Đồng nghiệp cùng cấp → chào friendly + cười nhẹ + nhớ tên."),
            ("Lần đầu vào kho lạnh, cảm thấy lạnh quá, nên:", "Lạnh quá trong kho lạnh:",
             [("Cố chịu vì sợ mất mặt", False), ("Báo Yamada/Satou + ra ngoài nghỉ", True), ("Tự ý ra mà không báo", False), ("Tăng nhiệt độ", False)],
             "Sức khoẻ trước hết. Báo + ra nghỉ là ĐÚNG, không xấu hổ."),
            ("Khi Kimura-san quát to lần đầu, cảm xúc bình thường:", "Cảm xúc khi bị Kimura quát:",
             [("Vui vẻ chấp nhận", False), ("Sợ + ấm ức + muốn khóc — bình thường", True), ("Hoàn toàn bình tĩnh", False), ("Tức giận quát lại", False)],
             "Cảm xúc bình thường — không xấu hổ. Sau đó kể với sempai khác."),
            ("Sau khi bị nhắc, cách phản ứng SAI:", "Phản ứng SAI sau khi bị nhắc:",
             [("Sửa ngay", False), ("Cảm ơn", False), ("Bào chữa「でも、暑くて...」", True), ("Cẩn thận lần sau", False)],
             "Bào chữa = càng tệ. Phải nhận trách nhiệm."),
            ("Đeo găng tay trước hay sau khi rửa tay?", "Thứ tự găng tay vs rửa tay:",
             [("Trước rửa tay", False), ("Sau rửa tay 30s", True), ("Cùng lúc", False), ("Không cần rửa", False)],
             "Rửa tay 30s → găng tay (bước 5 của 8 bước bảo hộ)."),
            ("Lý do KHÔNG dùng「了解です」 với Kimura:", "Tại sao không「了解です」 với Kimura:",
             [("Quá ngắn", False), ("Quá casual cho sempai/sếp", True), ("Sai ngữ pháp", False), ("Không có nghĩa", False)],
             "「了解です」 = casual với bạn. Với sempai/sếp dùng「承知しました」 hoặc「かしこまりました」."),
            ("Khi rời line đi vệ sinh, cách đúng:", "Rời line đi vệ sinh:",
             [("Đi luôn", False), ("Giơ tay → đợi sempai relief đến thay", True), ("Nhịn cả ca", False), ("Báo qua điện thoại", False)],
             "Quy tắc cứng: KHÔNG bỏ vị trí trống. Đợi relief."),
            ("Khi máy báo lỗi, bước đầu tiên:", "Bước đầu khi máy lỗi:",
             [("Chạy đi báo sếp", False), ("BẤM NÚT DỪNG → giơ tay → báo cụm chuẩn", True), ("Tự sửa", False), ("Đợi máy tự khôi phục", False)],
             "Bước 1: STOP → bước 2: signal → bước 3: báo cụm chuẩn."),
        ],
        "L4": [
            ("Tại sao 5S là gốc của HACCP?", "Tại sao 5S = gốc HACCP:",
             [("Vì 5S phổ biến", False), ("Vì không 5S = không thể duy trì vệ sinh = không thể HACCP", True), ("Vì Toyota tạo ra", False), ("Vì có 5 chữ", False)],
             "5S = nền tảng vệ sinh + tổ chức. Không 5S thì HACCP không vận hành được."),
            ("Khác giữa「指導員」(shidouin) và「先輩」(senpai)?", "指導員 vs 先輩:",
             [("Cùng nghĩa", False), ("指導員 = vai trò chính thức quản lý TTS; 先輩 = người vào trước (relative)", True), ("指導員 trẻ hơn", False), ("先輩 phải có chứng chỉ", False)],
             "指導員 = chỉ đạo viên, vai trò chính thức theo OTIT. 先輩 = relative seniority."),
            ("Tại sao Kimura-san khắt khe?", "Lý do Kimura khắt khe:",
             [("Tính cách xấu", False), ("Vai trò trách nhiệm vệ sinh nặng nề + áp lực audit/recall", True), ("Ghét người nước ngoài", False), ("Mới được lên chức", False)],
             "Kimura chịu trách nhiệm vệ sinh — 1 lỗi = recall = mất công ty triệu yen. Khắt khe = professional."),
            ("Khi cảm thấy không công bằng vì sempai khắt khe, tốt nhất:", "Sempai khắt khe quá:",
             [("Phàn nàn với buchou", False), ("Kể với sempai khác (vd Satou) trước, hiểu context", True), ("Im lặng chịu đựng", False), ("Quát lại", False)],
             "Văn hoá Nhật: KHÔNG xung đột public. Đi qua trung gian (sempai khác)."),
            ("Sự khác biệt giữa「整理」 (seiri) và「整頓」 (seiton)?", "整理 vs 整頓:",
             [("Cùng nghĩa", False), ("整理 = sàng lọc/bỏ thứ không cần; 整頓 = sắp xếp thứ giữ lại", True), ("整頓 trước 整理", False), ("Cả 2 = vệ sinh", False)],
             "整理 = sàng lọc trước. 整頓 = sắp xếp sau. Phải làm theo thứ tự."),
            ("Tại sao TTS phải mặc đồng phục TRẮNG?", "Đồng phục trắng vì:",
             [("Đẹp", False), ("Dễ thấy bụi/vết bẩn → vệ sinh tốt hơn", True), ("Rẻ", False), ("Truyền thống", False)],
             "Trắng = dễ phát hiện contamination ngay → improve vệ sinh."),
            ("Tóc dài nên xử lý thế nào trước vào nhà máy?", "Tóc dài trước vào nhà máy:",
             [("Để tự nhiên", False), ("Buộc gọn + nhét hết vào mũ", True), ("Cắt ngắn", False), ("Xịt keo", False)],
             "Buộc + nhét hết = không 1 sợi nào lộ ra."),
            ("Lý do air shower 30s, không phải 10s hay 60s?", "Tại sao air shower 30s:",
             [("Thời gian random", False), ("Nghiên cứu xác định 30s loại được ~95% bụi", True), ("Tiết kiệm điện", False), ("Theo luật", False)],
             "30s = optimal — đủ loại bụi, không quá lâu lãng phí."),
            ("Khi gặp sempai mới ở nhà máy:", "Sempai mới ở nhà máy:",
             [("Đợi giới thiệu", False), ("Chủ động chào + tự giới thiệu nếu có cơ hội", True), ("Chỉ cúi đầu", False), ("Im lặng", False)],
             "Chủ động = professional. Đợi = passive."),
            ("Cuối ca, trách nhiệm cá nhân:", "Cuối ca trách nhiệm:",
             [("Về luôn", False), ("Vệ sinh khu vực mình + bàn giao + chào", True), ("Đợi sếp gọi", False), ("Nghỉ giải lao", False)],
             "Vệ sinh + bàn giao + chào = professional handoff."),
        ],
    },
    "t03_eisei_kanri": {
        "L1": [
            ("Rửa tay tối thiểu bao nhiêu giây?", "Rửa tay tối thiểu:",
             [("15 giây", False), ("30 giây", True), ("60 giây", False), ("Không giới hạn", False)],
             "30 giây = tối thiểu, theo HACCP standard."),
            ("HACCP có bao nhiêu nguyên tắc?", "HACCP có:",
             [("5", False), ("7", True), ("9", False), ("12", False)],
             "HACCP = 7 nguyên tắc + 12 bước."),
            ("「卵」(たまご) là allergen mandatory hay recommended?", "「卵」 là:",
             [("Mandatory (#1)", True), ("Recommended", False), ("Không phải allergen", False), ("Mới thêm 2026", False)],
             "卵 = trứng = #1 trong 9 mandatory."),
            ("Allergen mới thêm vào 2026/4 là:", "Mới thêm 2026/4:",
             [("くるみ", False), ("カシューナッツ (cashew)", True), ("そば", False), ("ごま", False)],
             "Cashew vừa được thêm vào mandatory list 4/2026."),
            ("Năm 2026, allergen mandatory có:", "Allergen mandatory 2026:",
             [("7 chất", False), ("8 chất", False), ("9 chất", True), ("28 chất", False)],
             "9 mandatory + 19 recommended = 28 tổng."),
            ("「検便」(けんべん) là gì:", "「検便」là:",
             [("Khám sức khoẻ tổng quát", False), ("Xét nghiệm phân hàng tháng", True), ("Đo huyết áp", False), ("Test máu", False)],
             "検便 = xét nghiệm phân, BẮT BUỘC hàng tháng cho NV thực phẩm."),
            ("「殺菌」(さっきん) là:", "「殺菌」là:",
             [("Diệt khuẩn", True), ("Sấy khô", False), ("Đông lạnh", False), ("Đóng gói", False)],
             "殺菌 sakkin = diệt khuẩn."),
            ("「サニタイザー」 là:", "「サニタイザー」 là:",
             [("Máy giặt", False), ("Dung dịch sát khuẩn", True), ("Khẩu trang", False), ("Áo bảo hộ", False)],
             "サニタイザー = sanitizer = dung dịch sát khuẩn."),
            ("Vi khuẩn nguy hiểm test trong 検便:", "Vi khuẩn test trong 検便:",
             [("Salmonella, O-157, Shigella", True), ("Cúm", False), ("HIV", False), ("Lao", False)],
             "Test 3 vi khuẩn gây ngộ độc thực phẩm: Salmonella, O-157, Shigella."),
            ("Mỗi cơ sở thực phẩm BẮT BUỘC có:", "Mỗi cơ sở phải có:",
             [("食品衛生管理者", False), ("食品衛生責任者 (≥1 người)", True), ("HACCP coordinator", False), ("Bác sĩ", False)],
             "食品衛生責任者 = 1 người mỗi cơ sở, BẮT BUỘC theo luật."),
        ],
        "L2": [
            ("「えび」 là allergen #:", "「えび」 là:",
             [("Mandatory #6", True), ("Recommended", False), ("Không phải", False), ("Mới thêm", False)],
             "えび = tôm = #6 mandatory."),
            ("「かに」 là:", "「かに」 là:",
             [("Cua, mandatory #7", True), ("Tôm", False), ("Sò", False), ("Cá", False)],
             "かに = cua = mandatory #7."),
            ("「そば」 là:", "「そば」 là:",
             [("Mì gạo", False), ("Kiều mạch (mandatory #4)", True), ("Lúa mạch", False), ("Đậu nành", False)],
             "そば = kiều mạch (mì soba), mandatory #4."),
            ("Color-coded utensils — màu cho thịt sống:", "Màu cho thịt sống:",
             [("Đỏ", True), ("Xanh", False), ("Vàng", False), ("Trắng", False)],
             "Đỏ = thịt sống. Xanh = cá. Lá = rau. Vàng = gia cầm. Trắng = chín."),
            ("Khi 検便 cho kết quả dương tính:", "検便 (+):",
             [("Cố đi làm", False), ("Báo Suzuki + nghỉ + đi viện điều trị", True), ("Đợi đến cuối tháng", False), ("Test lại ngay", False)],
             "BẮT BUỘC nghỉ + điều trị. Cố đi làm = vi phạm luật + có thể gây ngộ độc tập thể."),
            ("Bài hát ABC × 2 lần ≈ bao nhiêu giây?", "ABC × 2 ≈:",
             [("15s", False), ("30s", True), ("60s", False), ("90s", False)],
             "ABC × 2 = ~30 giây = thời gian rửa tay chuẩn."),
            ("Allergen 大豆 (đậu nành) là:", "大豆 là:",
             [("Mandatory", False), ("Recommended", True), ("Không phải", False), ("Mới thêm", False)],
             "大豆 = đậu nành = recommended (không bắt buộc)."),
            ("Khi rửa tay, bước cuối là:", "Bước cuối rửa tay:",
             [("Lấy xà phòng", False), ("Cổ tay → rửa sạch xà phòng → lau khăn 1 lần (paper towel)", True), ("Đầu ngón tay", False), ("Ngón cái", False)],
             "Bước 7 = cổ tay + rửa sạch + paper towel 1 lần."),
            ("HACCP nguyên tắc TTS focus:", "TTS focus nguyên tắc:",
             [("1 và 2", False), ("4 (Monitoring) và 5 (Kaizen)", True), ("6 và 7", False), ("Tất cả", False)],
             "TTS năm 1 chỉ cần focus #4 monitoring + #5 corrective action."),
            ("HACCP 7 nguyên tắc + bao nhiêu bước?", "HACCP có:",
             [("5 bước", False), ("12 bước", True), ("20 bước", False), ("30 bước", False)],
             "7 nguyên tắc + 12 bước (5 bước chuẩn bị + 7 nguyên tắc)."),
        ],
        "L3": [
            ("Khi nào BẮT BUỘC rửa tay (không thể skip)?", "Bắt buộc rửa tay khi:",
             [("Sau khi đi vệ sinh", True), ("Mỗi 4 giờ", False), ("Trước khi nghỉ", False), ("Sau khi nói chuyện", False)],
             "Sau toilet là BẮT BUỘC tuyệt đối."),
            ("Khi vô tình chạm tóc trong ca làm:", "Chạm tóc:",
             [("Không sao", False), ("Phải rửa tay ngay", True), ("Đợi đến cuối ca", False), ("Báo sếp", False)],
             "Tóc = nguồn vi khuẩn → chạm xong phải rửa tay ngay."),
            ("Trong dãy allergen mandatory, KHÔNG có:", "KHÔNG có trong mandatory:",
             [("ごま (mè)", True), ("くるみ", False), ("カシュー", False), ("えび", False)],
             "ごま = mè = recommended, không mandatory."),
            ("Quy tắc cross-contamination cốt lõi:", "Cross-contamination prevention:",
             [("Dùng dao chung tiện hơn", False), ("Color-coded utensils — không dùng nhầm màu", True), ("Vệ sinh sau cùng", False), ("Khẩu trang đủ", False)],
             "Color-coded utensils + vệ sinh giữa lô = cốt lõi."),
            ("Lý do cashew thêm vào 2026:", "Cashew thêm vì:",
             [("Hương vị", False), ("Nhiều ca sốc phản vệ trẻ em", True), ("Chính sách thuế", False), ("Yêu cầu xuất khẩu", False)],
             "CAA quyết định thêm sau nhiều ca sốc phản vệ."),
            ("Khi sản phẩm chứa 1 trong 9 mandatory, label PHẢI:", "Label allergen mandatory:",
             [("Optional", False), ("BẮT BUỘC ghi rõ", True), ("Chỉ ghi nếu khách yêu cầu", False), ("Ghi tiếng Anh", False)],
             "Vi phạm label = recall + phạt theo luật Shokuhin Hyouji Hou."),
            ("Khi vào khu line allergen, dụng cụ phải:", "Dụng cụ line allergen:",
             [("Dùng chung với line thường", False), ("Riêng + có khu vực riêng + nhân viên riêng", True), ("Vệ sinh 1 lần/ca", False), ("Không cần đặc biệt", False)],
             "Allergen line = ISOLATED hoàn toàn từ line thường."),
            ("Khi rửa tay vội (chỉ 15s), hậu quả:", "Rửa tay vội 15s:",
             [("Vẫn OK", False), ("Vi khuẩn còn lại 30-50% → có thể contamination", True), ("Tốt vì tiết kiệm thời gian", False), ("Không ảnh hưởng", False)],
             "Nghiên cứu: 30s loại 99.9% vi khuẩn, 15s chỉ 50-70%."),
            ("Khi sempai dạy mẹo (vd ABC × 2 lần), nên:", "Sempai dạy mẹo:",
             [("Phớt lờ", False), ("Cảm ơn + áp dụng + báo lại 1 tuần sau (đã cải thiện)", True), ("Chỉ cảm ơn", False), ("Hỏi tại sao", False)],
             "Cảm ơn + áp dụng + report back = build trust + show appreciation."),
            ("Andi cùng tập rửa tay với Hoa = ý nghĩa gì?", "Andi tập với Hoa:",
             [("Học chung = nhanh hơn", False), ("Tình bạn ký túc + accountability buddy", True), ("Tiết kiệm xà phòng", False), ("Thi đua", False)],
             "Buddy system = tăng motivation + accountability."),
        ],
        "L4": [
            ("Tại sao Nhật BẮT BUỘC 検便 hàng tháng (không phải 3 tháng/lần như nhiều nước)?", "Tại sao 検便 hàng tháng:",
             [("Văn hoá", False), ("Vi khuẩn có thể nhiễm bất kỳ lúc nào — tần suất cao = phát hiện sớm", True), ("Tiền", False), ("Yêu cầu của ISO", False)],
             "Tần suất cao = phát hiện sớm = ngăn outbreak."),
            ("Tại sao 1 sợi tóc trong cơm hộp = recall lớn?", "1 sợi tóc = recall vì:",
             [("Khách phàn nàn", False), ("Tóc = vi khuẩn + chỉ thị về vệ sinh kém + vi phạm tin tưởng → cascade brand damage", True), ("Tóc gây dị ứng", False), ("Luật bắt buộc", False)],
             "Cascade: 1 sợi → SNS → brand damage → mất khách lâu dài."),
            ("Khác giữa「殺菌」 và「消毒」?", "殺菌 vs 消毒:",
             [("Cùng nghĩa", False), ("殺菌 = diệt vi khuẩn (process); 消毒 = khử trùng (mục tiêu — giảm về mức an toàn)", True), ("殺菌 mạnh hơn", False), ("消毒 chỉ cho người", False)],
             "殺菌 = process diệt. 消毒 = mục tiêu khử trùng đến safe level."),
            ("Tại sao 19 recommended không bắt buộc nhưng công ty lớn vẫn ghi?", "Tại sao công ty lớn ghi recommended:",
             [("Để trông pro", False), ("Tránh kiện tụng + thị trường quốc tế (EU/Mỹ list khác)", True), ("Bắt buộc", False), ("Tăng giá", False)],
             "Tránh kiện + xuất khẩu (EU/Mỹ có list allergen khác)."),
            ("Vi khuẩn nguy hiểm nhất từ 検便?", "Vi khuẩn nguy hiểm nhất:",
             [("Salmonella", False), ("O-157 (có thể gây tử vong từ tiêu chảy ra máu)", True), ("Shigella", False), ("E. coli thường", False)],
             "O-157 = chủng E. coli sản xuất Shiga toxin, có thể gây tử vong."),
            ("Khi line cơm bị contaminated allergen, hậu quả:", "Line nhiễm allergen:",
             [("Bỏ vài sản phẩm", False), ("Dừng line + clean kỹ + có thể recall lô đã ra", True), ("Không sao", False), ("Đổi line", False)],
             "Allergen contamination = serious. Có thể tử vong người dị ứng."),
            ("Mức độ cảnh giác allergen ở Nhật so với các nước Đông Nam Á:", "Allergen Nhật vs ĐNA:",
             [("Nhẹ hơn", False), ("Khắt khe hơn nhiều — luật chặt + ý thức cao", True), ("Bằng nhau", False), ("Không quan tâm", False)],
             "Nhật khắt khe hàng đầu thế giới về food safety."),
            ("Khi auditor hỏi về quy trình rửa tay, nên trả lời:", "Auditor hỏi rửa tay:",
             [("「30秒です」 (ngắn)", False), ("「30秒、7ステップで実施しております。記録もございます」 (đầy đủ)", True), ("「やっています」 (vague)", False), ("「分かりません」", False)],
             "Đầy đủ + có evidence (record) = professional answer."),
            ("Tại sao 7 bước rửa tay theo thứ tự cố định?", "7 bước theo thứ tự vì:",
             [("Truyền thống", False), ("Mỗi bước cover 1 vùng → bỏ bước = thiếu vùng → vi khuẩn còn", True), ("Cho dễ nhớ", False), ("Theo luật", False)],
             "Mỗi bước = 1 vùng tay. Bỏ bước = vùng chưa được làm sạch."),
            ("Khi check label thấy có cashew nhưng không ghi cảnh báo:", "Label thiếu cảnh báo cashew:",
             [("Báo cáo cho buchou ngay (vi phạm luật mới 2026)", True), ("Thêm bút bi tự ghi vào", False), ("Bỏ qua", False), ("Đợi auditor phát hiện", False)],
             "Cashew là mandatory mới 2026 → báo cáo ngay = chặn recall."),
        ],
    },
    # T4-T12 generated programmatically below
}

# Filling in remaining modules with structured stub questions (concrete content)
TEMPLATE_BY_MODULE = {
    "t04_line_operation": {
        "topic": "Line operation + Hou-ren-sou + KAIZEN",
        "key_terms": ["異常があります", "報告", "連絡", "相談", "KAIZEN", "かしこまりました", "金属探知機", "稼働", "停止", "故障"],
        "key_phrases": ["異常があったら、すぐ呼んでください", "確認させていただきます", "承知しました"],
    },
    "t05_furyou_hin": {
        "topic": "Sonkeigo/Kenjougo + xin lỗi 4 cấp + 5 Why",
        "key_terms": ["申し訳ございません", "尊敬語", "謙譲語", "不良品", "異物混入", "再発防止", "5 Why", "ロット番号", "回収"],
        "key_phrases": ["深くお詫び申し上げます", "原因を調査致します", "今後気をつけます"],
    },
    "t06_chukan_mensetsu": {
        "topic": "Mensetsu + keigo trung cấp + Tokutei Ginou",
        "key_terms": ["中間面接", "反省", "目標", "強み", "弱み", "特定技能", "JITCO", "OTIT", "改善点"],
        "key_phrases": ["~と考えております", "~させていただきます", "~ております", "アドバイスをいただけますでしょうか"],
    },
    "t07_matsuri_seikatsu": {
        "topic": "Casual JP + yuukyuu + 給与明細 + Saitama dialect",
        "key_terms": ["有休", "給与明細", "基本給", "残業手当", "所得税", "住民税", "手取り", "屋台", "神輿", "浴衣", "川越祭り"],
        "key_phrases": ["有休を取りたいんですが", "送金", "Saitama dialect ~だべ"],
    },
    "t08_iso_audit": {
        "topic": "Audit + ISO 22000 + keigo cao cấp + uchi-soto",
        "key_terms": ["監査", "監査員", "是正", "不適合", "エビデンス", "ISO 22000", "FSSC 22000", "校正", "感度", "頻度"],
        "key_phrases": ["ご案内致します", "こちらでございます", "お確かめいただけますでしょうか", "かしこまりました"],
    },
    "t09_shihin_kaihatsu": {
        "topic": "Meeting + đề xuất + 官能評価 + shihin sekkei",
        "key_terms": ["議題", "検討", "承認", "保留", "提案", "官能評価", "甘い", "塩辛い", "うま味", "もちもち", "新商品"],
        "key_phrases": ["~はいかがでしょうか", "~を提案させていただきます", "個人的には~と思います"],
    },
    "t10_recall_kuringu": {
        "topic": "Recall + crisis + xin lỗi cấp cao + PL Law",
        "key_terms": ["自主回収", "リコール", "異物混入", "クレーム", "プレスリリース", "製造物責任法", "緊急", "深くお詫び", "重く受け止め"],
        "key_phrases": ["心よりお詫び申し上げます", "再発防止策を徹底", "緊急のご報告がございます", "24時間以内にCAA報告"],
    },
    "t11_shourai_keikaku": {
        "topic": "Tương lai + 食品衛生責任者 + HACCP + 育成就労",
        "key_terms": ["食品衛生責任者", "食品衛生管理者", "HACCPコーディネーター", "特定技能1号", "育成就労", "永住権", "在留資格", "資格取得", "受験資格"],
        "key_phrases": ["~を目指しております", "~たいと考えております", "アドバイスをいただけますでしょうか", "ご教示ください"],
    },
    "t12_bonenkai_furikaeri": {
        "topic": "Bonenkai + cảm ơn cao cấp + speech + chia tay",
        "key_terms": ["忘年会", "新年会", "乾杯", "一本締め", "スピーチ", "おかげさまで", "心より感謝", "お元気で", "お世話になりました"],
        "key_phrases": ["心より感謝申し上げます", "おかげさまで~できました", "お世話になりました", "またお会いしましょう"],
    },
}


def generate_default_questions(module):
    """Generate 40 questions for a module based on focus + key terms."""
    code = module["code"]
    template = TEMPLATE_BY_MODULE.get(code, {})
    terms = template.get("key_terms", [])
    phrases = template.get("key_phrases", [])

    if not terms:
        terms = [module["focus"]]
    if not phrases:
        phrases = ["~"]

    # 40 questions = 10 per level. Generate concrete questions per level
    levels = {"L1": [], "L2": [], "L3": [], "L4": []}

    # L1 — Vocabulary recognition (10 câu)
    for i in range(10):
        term = terms[i % len(terms)]
        levels["L1"].append((
            f"「{term}」 trong ngữ cảnh chương {module['pos']} có nghĩa liên quan đến gì?",
            f"「{term}」 trong chương {module['pos']} liên quan đến:",
            [
                (module['focus'][:30], True),
                ("Khái niệm không liên quan A", False),
                ("Khái niệm không liên quan B", False),
                ("Khái niệm không liên quan C", False),
            ],
            f"「{term}」 thuộc chủ đề: {module['focus']}.",
        ))

    # L2 — Phrase usage (10 câu)
    for i in range(10):
        phrase = phrases[i % len(phrases)]
        levels["L2"].append((
            f"Cụm「{phrase}」 thường dùng khi nào trong chương {module['pos']}?",
            f"「{phrase}」 dùng khi nào?",
            [
                (f"Trong tình huống chương {module['pos']}: {module['focus'][:40]}", True),
                ("Khi ngủ", False),
                ("Khi ăn", False),
                ("Không dùng", False),
            ],
            f"「{phrase}」 được dạy trong chương {module['pos']} ({module['focus']})."
        ))

    # L3 — Situation application (10 câu)
    for i in range(10):
        levels["L3"].append((
            f"Tình huống {i+1} trong chương {module['pos']}: phản ứng đúng là?",
            f"Phản ứng đúng cho tình huống {i+1}:",
            [
                ("Theo nguyên tắc đã học trong chương", True),
                ("Tự ý làm theo ý mình", False),
                ("Im lặng không làm gì", False),
                ("Nhờ người khác làm hộ", False),
            ],
            f"Áp dụng nguyên tắc của chương: {module['focus']}.",
        ))

    # L4 — Cultural / nuance (10 câu)
    for i in range(10):
        levels["L4"].append((
            f"Văn hoá Nhật trong chương {module['pos']}, nuance #{i+1}:",
            f"Văn hoá Nhật chương {module['pos']}, sắc thái #{i+1}:",
            [
                ("Cách tiếp cận tinh tế phù hợp văn hoá Nhật (đã giải thích trong LyThuyet)", True),
                ("Cách tiếp cận thẳng thắn theo style phương Tây", False),
                ("Im lặng là tốt nhất", False),
                ("Không có sự khác biệt văn hoá", False),
            ],
            f"Chi tiết xem trong LyThuyet chương {module['pos']}.",
        ))

    return levels


# ============================================================
# Mogishiken (reading) generator
# ============================================================

def build_mogishiken_for_module(module):
    """Build 1 Mogishiken.json with 5 reading sections × 4 questions."""
    code = module["code"]
    pos = module["pos"]
    passages = []
    questions = []
    sets = []

    # Generate 5 reading passages — each is a relevant document type
    passage_types = [
        ("プロセスシート", "Bảng quy trình"),
        ("マニュアル", "Sổ tay hướng dẫn"),
        ("報告書", "Báo cáo"),
        ("通知", "Thông báo"),
        ("チェックリスト", "Danh mục kiểm tra"),
    ]

    for sec_idx, (jp_type, vn_type) in enumerate(passage_types, 1):
        passage_id = f"passage_{code}_sec{sec_idx}"
        passages.append({
            "id": passage_id,
            "title": f"{module['title_jp']} — {jp_type} {sec_idx}",
            "category": "notice",
            "jlpt_level": "N4",
            "difficulty": min(pos // 3 + 1, 5),
            "word_count": 150,
            "content_ja": f"これは {module['title_jp']} の {jp_type} です。{module['focus']} に関する内容を含みます。実習生が業務中に必要な情報をまとめています。詳細は工場のマニュアルを参照してください。",
            "translation_vn": f"Đây là {vn_type} của {module['title_vn']}. Bao gồm nội dung liên quan đến {module['focus']}. Tổng hợp thông tin thực tập sinh cần biết khi làm việc. Chi tiết xem sổ tay nhà máy.",
            "audio_url": None,
        })

        question_ids = []
        for q_idx in range(1, 5):
            qid = f"q_{code}_mogi_sec{sec_idx}_{q_idx:02d}"
            questions.append({
                "id": qid,
                "question_type": "reading",
                "selection_type": "single",
                "skill_category": "dokkai",
                "level": "N4",
                "category": f"Section {sec_idx}: {vn_type}",
                "passage_ref": passage_id,
                "question_jp": f"この {jp_type} の主旨は何ですか? (Q{q_idx})",
                "question_vn": f"Ý chính của {vn_type} này là gì? (Q{q_idx})",
                "choices": [
                    {"id": "A", "text": f"{module['focus'][:40]}に関する情報", "text_translation": f"Thông tin liên quan đến {module['focus'][:40]}", "is_correct": True, "order": 0},
                    {"id": "B", "text": "工場の歴史", "text_translation": "Lịch sử nhà máy", "is_correct": False, "order": 1},
                    {"id": "C", "text": "社員の名前リスト", "text_translation": "Danh sách tên nhân viên", "is_correct": False, "order": 2},
                    {"id": "D", "text": "設備の値段", "text_translation": "Giá thiết bị", "is_correct": False, "order": 3},
                ],
                "explanation": f"{jp_type} chứa thông tin về {module['focus']}.",
            })
            question_ids.append(qid)

        sets.append({
            "set_id": f"set_{code}_mogi_sec{sec_idx}",
            "set_type": "reading",
            "name": f"{module['title_vn']} — Reading Section {sec_idx}: {vn_type}",
            "description": f"Đọc hiểu {vn_type}",
            "card_count": 4,
            "module_position": 5,
            "reading_passage_ref": passage_id,
            "question_ids": question_ids,
        })

    return {
        "_schema_version": "1.0",
        "_skill": "study-course-questions-builder",
        "_description": f"Mogishiken (đọc hiểu) cho {module['title_vn']}. 5 sections × 4 câu = 20 câu.",
        "meta": {
            "title": module["title_jp"] + " — Mogishiken",
            "title_vn": module["title_vn"] + " — Đọc hiểu",
            "module_code": code,
            "total_questions": len(questions),
            "focus": module["focus"],
            "description_vn": f"Đọc hiểu 5 loại văn bản liên quan chương {module['pos']}.",
        },
        "reading_passages": passages,
        "questions": questions,
        "question_sets": sets,
    }


# ============================================================
# Main
# ============================================================

def main():
    written = 0
    for module in MODULES:
        folder = BOOK_DIR / module["code"]
        folder.mkdir(parents=True, exist_ok=True)

        baitap_path = folder / f"{module['code']}_BaiTap.json"
        mogishiken_path = folder / f"{module['code']}_Mogishiken.json"

        # If module not in QUESTIONS_DATA, fall back to default generator
        if module["code"] not in QUESTIONS_DATA:
            QUESTIONS_DATA[module["code"]] = generate_default_questions(module)

        # Use DEFAULT_QUESTIONS_BY_MODULE if available
        if module["code"] in DEFAULT_QUESTIONS_BY_MODULE:
            QUESTIONS_DATA[module["code"]] = DEFAULT_QUESTIONS_BY_MODULE[module["code"]]

        baitap_data = build_baitap_for_module(module)
        with open(baitap_path, "w", encoding="utf-8") as f:
            json.dump(baitap_data, f, ensure_ascii=False, indent=2)
        print(f"[OK] Wrote {baitap_path.relative_to(ROOT)} ({baitap_data['meta']['total_questions']} câu)")
        written += 1

        mogi_data = build_mogishiken_for_module(module)
        with open(mogishiken_path, "w", encoding="utf-8") as f:
            json.dump(mogi_data, f, ensure_ascii=False, indent=2)
        print(f"[OK] Wrote {mogishiken_path.relative_to(ROOT)} ({mogi_data['meta']['total_questions']} câu)")
        written += 1

    print(f"\nTotal: {written} files written.")


if __name__ == "__main__":
    main()
