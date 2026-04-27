#!/usr/bin/env python3
"""Apply pattern fixes (from reviewer) to chapters 02, 05, 07, 08.

Patterns:
- JP: 了解しました → かしこまりました for service staff (reception_hotel,
  konbini_staff, jal_staff, wedding_staff, okami_ryokan, customs_officer)
- JP: 座ってください → お掛けください
- VN: code-mix English heavily → giảm bớt cho dialogue spoken
- VN: wisdom moment cộc → mượt
- VN: lạm dụng "nhỉ" cho team Nam → "nha/nè/đó"
"""

import json
from pathlib import Path

DRAFT = Path(__file__).resolve().parent.parent / "draft"


def fix_in_file(filepath, scene_n, speaker, field, old, new):
    p = DRAFT / filepath
    d = json.loads(p.read_text(encoding="utf-8"))
    scene = next((s for s in d["scenes"] if s["n"] == scene_n), None)
    if scene is None:
        print(f"  ✗ {filepath} sc{scene_n}: scene not found")
        return False
    for line in scene.get("lines", []):
        if line.get("speaker") == speaker and old in line.get(field, ""):
            line[field] = line[field].replace(old, new)
            p.write_text(json.dumps(d, ensure_ascii=False, indent=2), encoding="utf-8")
            return True
    return False


# ============================================================================
# CHƯƠNG 02 — Pattern fixes
# ============================================================================
ch02 = [
    # JP: hotel/service staff fixes (none in ch02 specifically)
    # VN: lạm dụng "nhỉ" cho team Nam Việt
    (2, "tuan_leader", "vi",
     "(nhỏ giọng) Dũng à, cởi giày đi slipper nhé. Trong club house không đi giày.",
     "(nhỏ giọng) Dũng à, cởi giày đi slipper nha. Trong club house không đi giày."),

    # VN wisdom moment Matsumoto Hole 9
    (6, "matsumoto", "vi",
     "Vậy là OK. Golf 3 năm đầu đừng để ý score. Enjoy + dần improve là được.",
     "Vậy là OK. Golf 3 năm đầu đừng để ý score, cứ vui và cải thiện dần là được."),

    # VN code-mix improve
    (7, "tuan_leader", "vi",
     "(liếc Dũng) Ơ, cảm ơn anh, nhưng chiều còn 9 hole nên hôm nay em xin phép từ chối.",
     "(liếc Dũng) Ơ, cảm ơn anh, nhưng chiều còn 9 lỗ nên hôm nay em xin phép từ chối."),

    # JP filler — Matsumoto sc4 sau OB
    (4, "matsumoto", "ja",
     "うん、初めての海外ゴルフ場、ホール1のマリガンは伝統みたいなもの。気楽に。",
     "うん、初めての海外ゴルフ場、ホール1のマリガンは伝統みたいなものだから。気楽にね。"),

    # JP Matsumoto sc7 — kết câu
    (7, "matsumoto", "ja",
     "ゴルフ場のカツカレーは『お決まり』なんだ。なんかね、フロント9で疲れた体に染みる。",
     "ゴルフ場のカツカレーは『お決まり』なんだよ。なんかね、フロント9で疲れた体に染みるんだ。"),

    # VN sc11 zun: cảnh trong onsen
    (11, "zun", "vi",
     "(nhỏ giọng) Rõ.",
     "(nhỏ giọng) Vâng anh."),

    # VN sc12: phản hồi Matsumoto
    (12, "matsumoto", "vi",
     "Thật ra tháng sau tôi định đi 1 lần nữa. Cùng members này. Sao?",
     "Thật ra tháng sau tôi định đi thêm 1 lần nữa. Cùng nhóm này. Sao cậu?"),
]


# ============================================================================
# CHƯƠNG 05 — Pattern fixes
# ============================================================================
ch05 = [
    # VN sc1: bảng đón typo — câu Linh bằng VN
    (1, "linh", "vi",
     "(tiếng Việt, nhỏ giọng) Anh Dũng, em mới phát hiện…cái bảng anh in chữ '鵬' chứ không phải '鷗'. Sumo champion á.",
     "(tiếng Việt, nhỏ giọng) Anh Dũng, em mới phát hiện… cái bảng anh in chữ '鵬' chứ không phải '鷗'. Sumo champion á."),

    # VN sc3: Hương xin lỗi Tanaka — câu trước formal hơn
    (3, "fuon", "vi",
     "(với Tanaka, tiếng Nhật) Anh Tanaka, em thực sự xin lỗi, đáng lẽ phải hỏi trước. Em đặt thêm món chay liền nhé.",
     "(với Tanaka, tiếng Nhật) Anh Tanaka, tôi thực sự xin lỗi, đáng lẽ phải hỏi trước. Tôi đặt thêm món chay ngay đây ạ."),

    # JP sc4 fuon: emergency situation — kết câu
    (4, "fuon", "vi",
     "(vội đặt bàn trong) Quý vị, qua đây! Tháng 11 mưa đột ngột vầy em xin lỗi.",
     "(vội đặt bàn trong) Quý vị, qua bên này ạ! Tháng 11 mưa đột ngột thế này tôi thật xin lỗi."),

    # VN sc5: Dũng dịch live — pattern
    (5, "zun", "vi",
     "Vâng, em làm. Anh Tuấn, anh có thể ngắt mỗi 2 phút được không? Em chèn dịch vào.",
     "Vâng, em làm. Anh Tuấn, anh ngắt giúp mỗi 2 phút được không ạ? Em chèn dịch vào."),

    # VN sc8: Hai code-mix Vietnamese
    (8, "zun", "vi",
     "(sau, nhỏ giọng với Hải, tiếng Việt) Hải, anh Tanaka không phải tech sâu, anh nói chậm hơn nhe. Anh Sasaki kéo English OK.",
     "(sau, nhỏ giọng với Hải, tiếng Việt) Hải, anh Tanaka không phải tech sâu, em nói chậm hơn nha. Anh Sasaki theo English OK."),

    # JP sc11 hayashi: discovery + politer
    (11, "hayashi_bd", "ja",
     "(目を輝かせて)わあ、これ何?天然の甘さ!",
     "(目を輝かせて)わあ、これ何ですか?天然の甘さ!"),

    # VN sc12 fuon: speech MoU formal
    (12, "fuon", "vi",
     "Quý vị, hôm nay đã đến để tham dự ký kết MoU đối tác chiến lược Phase 5 giữa Hakuō và Tien Phat, chân thành cảm ơn.",
     "Quý vị, hôm nay đã đến tham dự lễ ký kết MoU đối tác chiến lược Phase 5 giữa Hakuō và Tien Phat — chân thành cảm ơn quý vị."),

    # VN sc13: Matsumoto chia tay
    (13, "matsumoto", "vi",
     "Chị Hương, anh Hà, Tuấn, Dũng, Linh, Hải, hospitality thực sự tuyệt. Cả team không quên.",
     "Chị Hương, anh Hà, Tuấn, Dũng, Linh, Hải, sự đón tiếp thực sự tuyệt vời. Cả team không quên."),

    # VN sc13 zun: lời xin lỗi cuối
    (13, "zun", "vi",
     "(mặt đỏ) Vâng, em xin lỗi, em trùng rồi.",
     "(mặt đỏ) Vâng em xin lỗi, em làm trùng mất rồi."),
]


# ============================================================================
# CHƯƠNG 07 — Pattern fixes
# ============================================================================
ch07 = [
    # JP sc4 stage_manager: politer
    (4, "stage_manager", "ja",
     "(架空) ズンさん、おはようございます。スライド最終版、USB あります?",
     "(架空) ズンさん、おはようございます。スライド最終版のUSB、お持ちですか?"),

    (4, "stage_manager", "ja",
     "(画面確認)…あれ、スクリーンに昨日の旧バージョンしか入ってない。最新版アップロードします、10分待って。",
     "(画面確認)…あれ、スクリーンに昨日の旧バージョンしか入ってないですね。最新版アップロードしますので、10分ほどお待ちください。"),

    # JP sc6 nakamura: opening speech kết
    (6, "nakamura_cfo", "ja",
     "(舞台上で)…そして本日の Smart Bank Assistant、これを実現するために2年間共に走ってきたパートナー、ベトナムのティエンファット社、特に同社 BD 担当の Tran Van Dung さん…ズンさん、立っていただけますか?",
     "(舞台上で)…そして本日のSmart Bank Assistant、これを実現するために2年間共に走ってきたパートナー、ベトナムのティエンファット社、特に同社BD担当のTran Van Dungさん…ズンさん、立っていただけますか?"),

    # VN sc7 — Dũng improvise English explanation, refine VN
    (7, "zun", "vi",
     "(cười, English)… xin lỗi, từ kỹ thuật tiếng Nhật vừa trượt khỏi đầu em — 'inference latency', thời gian AI mất để response. Tiếng Nhật nói sao em quên rồi (cười)",
     "(cười, English)… xin lỗi, từ kỹ thuật tiếng Nhật em vừa quên mất — 'inference latency', thời gian AI mất để phản hồi. Tiếng Nhật nói sao em quên rồi (cười)"),

    # VN sc8 zun: Q&A panel answer — clean up
    (8, "zun", "vi",
     "Cảm ơn anh hỏi. Đáp ứng compliance từ phía Việt Nam, em cover bằng 3 layer. Một, đã đạt ISO 27001 và SOC 2 Type 2. Hai, audit trail Phase 4 đã implement lưu mọi API call vào OpenSearch 7 năm, vượt yêu cầu 5 năm của FSA. Ba, layer AI governance là hybrid của review thủ công và auto-monitoring, tỷ lệ misjudgment công khai qua báo cáo tháng. Ví dụ cụ thể, Phase 4 đã triển khai 3 ngân hàng địa phương Nhật, vận hành 6 tháng, pass compliance audit.",
     "Cảm ơn anh đã hỏi. Compliance từ phía Việt Nam, tụi em cover bằng 3 lớp. Một là đã đạt ISO 27001 và SOC 2 Type 2. Hai là audit trail Phase 4 lưu mọi API call vào OpenSearch 7 năm, vượt yêu cầu 5 năm của FSA. Ba là lớp AI governance hybrid giữa review thủ công và auto-monitoring, tỷ lệ misjudgment công khai qua báo cáo tháng. Ví dụ cụ thể, Phase 4 đã triển khai 3 ngân hàng địa phương Nhật, vận hành 6 tháng, đã pass compliance audit."),

    # VN sc9 zun: networking — natural
    (9, "zun", "vi",
     "(2 tay nhận danh thiếp) Anh Sato cảm ơn ạ. Tren Van Dung của Tien Phat, gọi Dũng được rồi. (đưa danh thiếp mình)",
     "(2 tay nhận danh thiếp) Anh Sato cảm ơn ạ. Em là Tran Van Dung của Tien Phat, gọi Dũng được ạ. (đưa danh thiếp mình)"),

    # JP sc10 zun: demo crash recovery — politer kết
    (10, "zun", "ja",
     "(笑顔で謝る)申し訳ございません、デモ環境のシステム不安定で。1分以内に restart します、少々お待ちください。",
     "(笑顔で謝る)申し訳ございません、デモ環境のシステムが不安定で。1分以内に再起動しますので、少々お待ちくださいませ。"),

    # VN sc11 zun: reception conversation
    (11, "zun", "vi",
     "(mặt đỏ) Vâng, nhận signal anh Tuấn em mới có dũng cảm.",
     "(mặt đỏ) Vâng, nhờ anh Tuấn ra hiệu em mới đủ dũng cảm."),
]


# ============================================================================
# CHƯƠNG 08 — Pattern fixes
# ============================================================================
ch08 = [
    # VN sc1 fuon coach — hơn natural
    (1, "fuon", "vi",
     "(xem thiệp, vui) Wow, Tanaka mời em! Đó là invite-level cao đó, chỉ 80 khách. Honor.",
     "(xem thiệp, vui) Wow, Tanaka mời em! Đây là cấp mời cao đó, chỉ 80 khách thôi. Vinh dự đó."),

    (1, "fuon", "vi",
     "OK chị brief nhanh. 5 thứ: (1) Goshugi (lì xì), (2) dress code, (3) ngày-giờ-venue check, (4) RSVP, (5) gift / message.",
     "OK chị brief nhanh. 5 thứ: (1) goshugi (lì xì cưới), (2) dress code, (3) check ngày-giờ-venue, (4) RSVP, (5) gift / lời chúc."),

    (1, "fuon", "vi",
     "Đó là quy tắc Nhật. Đừng cho ít hơn — disrespect. Đừng cho nhiều hơn — outshine. 30K là exact.",
     "Đó là quy tắc Nhật. Cho ít hơn là thất lễ, cho nhiều hơn là lấn át cô dâu chú rể. 30K là chính xác."),

    (1, "fuon", "vi",
     "Một điều cuối — đừng nervous. Tanaka mời em vì em là family đó. Cứ enjoy.",
     "Một điều cuối — đừng căng thẳng. Tanaka mời em vì coi em như người nhà rồi. Cứ tận hưởng nha."),

    # JP sc2 wedding_staff: politer (already polite, just minor)
    (2, "wedding_staff", "ja",
     "(架空、お辞儀)いらっしゃいませ。お名前いただけますでしょうか?",
     "(架空、お辞儀)いらっしゃいませ。お名前を頂戴できますでしょうか?"),

    # JP sc4 mc_wedding: opening
    (4, "mc_wedding", "ja",
     "(架空)…新郎新婦のご入場でございます!",
     "(架空)…それでは、新郎新婦のご入場でございます!"),

    # JP sc4 nakamura: speech kết câu
    (4, "nakamura_cfo", "ja",
     "(マイク取る)田中宏志くん、結婚おめでとうございます。彼が白鷗に入って12年、私から見て一番の transformation は、ベトナムのティエンファットさんとのプロジェクトでの成長…",
     "(マイク取る)田中宏志くん、ご結婚おめでとうございます。彼が白鷗に入って12年、私から見て一番の transformation は、ベトナムのティエンファットさんとのプロジェクトでの成長でした…"),

    # VN sc5 zun: self-intro bàn round
    (5, "zun", "vi",
     "Rất hân hạnh, từ HCMC Việt Nam, em là Trần Văn Dũng của Tien Phat, gọi Dũng. Quen anh Tanaka qua công việc, hôm nay được mời em rất xúc động.",
     "Rất hân hạnh, em từ HCMC Việt Nam, là Trần Văn Dũng của Tien Phat, anh chị gọi em là Dũng. Em quen anh Tanaka qua công việc, hôm nay được mời em rất xúc động."),

    # VN sc6 zun: chúc mừng cô dâu chú rể
    (6, "zun", "vi",
     "(xúc động) Yumi, chúc mừng! Cuối cùng được gặp em. Anh Tanaka thực sự là người đàn ông lucky.",
     "(xúc động) Chúc mừng chị Yumi! Cuối cùng cũng được gặp chị. Anh Tanaka thực sự là người đàn ông may mắn."),

    # VN sc8 zun: Matsumoto + Ōgaki break — cảm xúc thật
    (8, "zun", "vi",
     "Nói thật… (hít thở)… em không nghĩ sẽ cảm nhận được sự ấm áp của gia đình Nhật sâu vầy. Speech bố mà anh Tanaka khóc, em nhìn cũng cay mắt… nhớ gia đình mình.",
     "Em nói thật… (hít thở)… em không nghĩ sẽ cảm nhận được sự ấm áp của gia đình Nhật sâu vậy. Speech bố mà anh Tanaka khóc, em nhìn theo cũng cay mắt… em nhớ gia đình mình."),

    # VN sc8 matsumoto: explain ý nghĩa invite
    (8, "matsumoto", "vi",
     "Tanaka, list 80 khách wedding mà cậu ấy chọn từng người trong 6 tháng. Mời ngoài cty hầu như chỉ family hoặc bạn thân. Mời em từ Việt Nam là một mình vì thực sự coi em là 'thành viên family'.",
     "Tanaka đó, danh sách 80 khách wedding cậu ấy chọn từng người trong 6 tháng. Mời ngoài công ty hầu như chỉ gia đình hoặc bạn thân. Mời mỗi mình em từ Việt Nam vì thực sự coi em là 'thành viên gia đình'."),

    # VN sc11 zun: cảm ơn Tanaka cuối niji-kai
    (11, "zun", "vi",
     "(sâu) Anh Tanaka, em mới là người vinh dự được mời. Cả đời không quên.",
     "(sâu) Anh Tanaka, em mới là người vinh dự được mời ạ. Cả đời em không quên."),

    # VN sc11 zun: invite parents
    (11, "zun", "vi",
     "(xúc động) Đương nhiên ạ, em rất mong. Em báo bố mẹ, em nghĩ ông bà vui lắm.",
     "(xúc động) Đương nhiên ạ, em rất mong. Em sẽ báo bố mẹ, em nghĩ ông bà vui lắm."),
]


def apply_set(filepath, fixes):
    applied = missed = 0
    for fix in fixes:
        if len(fix) == 5:
            sn, sp, fld, old, new = fix
        if fix_in_file(filepath, sn, sp, fld, old, new):
            applied += 1
        else:
            print(f"  ✗ {filepath} sc{sn} {sp}.{fld}: '{old[:50]}'")
            missed += 1
    print(f"  → applied {applied}, missed {missed}")


print("=== Chương 02 (Golf) ===")
apply_set("chương_02_ゴルフ_scenes.json", ch02)

print("\n=== Chương 05 (Tiếp khách HCMC) ===")
apply_set("chương_05_来訪_scenes.json", ch05)

print("\n=== Chương 07 (Product launch) ===")
apply_set("chương_07_新製品発表_scenes.json", ch07)

print("\n=== Chương 08 (Wedding) ===")
apply_set("chương_08_結婚式_scenes.json", ch08)
