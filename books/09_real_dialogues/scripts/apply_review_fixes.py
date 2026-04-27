#!/usr/bin/env python3
"""Apply expert reviewer fixes to draft scenes.json files.

Each fix is a tuple: (chapter_slug_substr, scene_n, speaker, field, old_substr, new_substr).
We do precise substring replacement on the matching line; report any miss.
"""

import json
from pathlib import Path

DRAFT = Path(__file__).resolve().parent.parent / "draft"


def apply_fixes(chapter_slug, fixes):
    """fixes: list of (scene_n, speaker, field, old_substr, new_substr)."""
    files = list(DRAFT.glob(f"chương_*_{chapter_slug}_scenes.json"))
    if not files:
        print(f"  ⚠ Không tìm thấy file cho slug '{chapter_slug}'")
        return 0, 0
    path = files[0]
    data = json.loads(path.read_text(encoding="utf-8"))

    applied = 0
    missed = 0
    for scene_n, speaker, field, old, new in fixes:
        scene = next((s for s in data["scenes"] if s["n"] == scene_n), None)
        if scene is None:
            print(f"  ⚠ {path.name} scene {scene_n}: không tìm thấy scene")
            missed += 1
            continue
        # find first matching line with speaker + old substring in field
        found_line = None
        for line in scene.get("lines", []):
            if line.get("speaker") != speaker:
                continue
            if old in line.get(field, ""):
                found_line = line
                break
        if found_line is None:
            print(
                f"  ⚠ {path.name} sc{scene_n} {speaker}.{field}: "
                f"không tìm thấy '{old[:50]}'"
            )
            missed += 1
            continue
        found_line[field] = found_line[field].replace(old, new)
        applied += 1

    path.write_text(
        json.dumps(data, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )
    return applied, missed


# ============================================================================
# CHƯƠNG 01 — Japanese expert fixes
# ============================================================================
ch01_fixes = [
    # Sc1 matsumoto: add 田中くん + ます
    (1, "matsumoto",
     "ja",
     "了解。大垣さんは大阪から朝イチの新幹線で、9:00 過ぎに到着予定。田中はもう中で badge 取ってるはず。",
     "了解。大垣さんは大阪から朝イチの新幹線で、9:00過ぎに到着予定。田中くんはもう中でbadge取ってるはずです。"),

    # Sc2 tuan: 正しいです → 合ってます
    (2, "tuan_leader",
     "ja",
     "私のも『Tien Phat Co. — Tuan Le, Tech Lead』で正しいです。",
     "私のは『Tien Phat Co. — Tuan Le, Tech Lead』で合ってます。"),

    # Sc2 tanaka: お疲れ様です → おはようございます (morning event)
    (2, "tanaka_pmo",
     "ja",
     "お疲れ様です、皆さん。私の badge は『Hakuō Co. Ltd.』で出てるけど、皆さんも会社名チェックしてね、誤字あるとあとで困るから。",
     "おはようございます、皆さん。私のbadgeは『Hakuō Co. Ltd.』で出てるけど、皆さんも会社名チェックしてね、誤字あるとあとで困るから。"),

    # Sc3 oogaki: 遅れて → 遅くなりました (formal)
    (3, "oogaki_sales",
     "ja",
     "(到着)皆さんおはよう、すみません遅れて。",
     "(到着)皆さん、おはようございます。遅くなりました、すみません。"),

    # Sc3 tuan: kết câu thiếu verb
    (3, "tuan_leader",
     "ja",
     "(慎重な日本語で)スミマセン、Bedrock の guard rail で hallucination はどの程度抑えられますか?案件次第かと思いますが、典型的な数値で。",
     "(慎重な日本語で)スミマセン、Bedrockのguard railでhallucinationはどの程度抑えられますか?案件次第かと思いますが、典型的な数値で教えていただけますか?"),

    # Sc3 demo engineer: そちらの方 → お隣の方
    (3, "demo_engineer_aws",
     "ja",
     "(ズンを見て)そちらの方も、何かありますか?",
     "(ズンを見て)お隣の方も、何かご質問ありますか?"),

    # Sc3 demo engineer (booth fairness)
    (3, "demo_engineer_aws",
     "ja",
     "次のデモは『レガシーCOBOLからGoマイグレーションを Bedrock Agent で半自動化』というシナリオです。所要時間4分です。",
     "次のデモは『レガシーCOBOLからGoマイグレーションをBedrock Agentで半自動化』というシナリオです。所要時間4分です。"),

    # Sc4 hung: とは思わなかった → なんて思わなかった
    (4, "hung_thanh_ha",
     "ja",
     "ズン!Tien Phat だっけ?来てるとは思わなかったよ。",
     "ズン!Tien Phatだっけ?来てるなんて思わなかったよ。"),

    # Sc4 matsumoto: missing です
    (4, "matsumoto",
     "ja",
     "ありがとうございます、ズンさんのチームのおかげで。",
     "ありがとうございます。ズンさんのチームのおかげです。"),

    # Sc5 tanaka: missing で
    (5, "tanaka_pmo",
     "ja",
     "いやいや、若い人優先 (笑)。",
     "いやいや、若い人優先で(笑)。"),

    # Sc5 demo engineer (booth fairness)
    (5, "demo_engineer_aws",
     "ja",
     "(別のブーススタッフ役)いらっしゃいませ!ルーレット 1 回 30 秒です、当たると景品ありますよ〜!",
     "(別のブーススタッフ役)いらっしゃいませ!ルーレット、お一人様1回30秒で、当たると景品出ますよ〜!"),

    # Sc6 zun: また違う → ちょっと種類が違う
    (6, "zun",
     "ja",
     "ベトナム料理の辛さと、日本の激辛、また違うんですよね。日本のは攻撃的というか…",
     "ベトナム料理の辛さと、日本の激辛は、ちょっと種類が違うんですよね。日本のは攻撃的というか…"),

    # Sc6 hung: restructure
    (6, "hung_thanh_ha",
     "ja",
     "お疲れ様です、Hakuō の皆様、初めまして、Thanh Hà の Pham Quoc Hung と申します。",
     "お疲れ様です。白鷗の皆様、初めまして。Thanh HàのPham Quoc Hungと申します。"),

    # Sc6 zun: thêm これ、〜 お願いします natural
    (6, "zun",
     "ja",
     "これ一つください。",
     "これ、一つお願いします。"),

    # Sc7 tuan: そのまま使えそう → そのまま使えそうですね
    (7, "tuan_leader",
     "ja",
     "同感です。70% automation + 30% human review という Andrew のフレーム、Phase 4 の AI レビューモジュールにそのまま使えそう。",
     "同感です。『70% automation + 30% human review』というAndrewのフレーム、Phase 4のAIレビューモジュールにそのまま使えそうですね。"),

    # Sc7 matsumoto: お願い → お願いね
    (7, "matsumoto",
     "ja",
     "お願い。次、白鷗の booth 寄ろうか、3:30 から。",
     "お願いね。次、白鷗のbooth寄ろうか、3:30から。"),

    # Sc8 inoue: 松本から → 松本から聞いてます
    (8, "inoue_hakuo",
     "ja",
     "初めまして、井上です。Phase 4 のチーム、お話伺ってます。Tien Phat さん、技術力高いって松本から。",
     "初めまして、井上です。Phase 4のチーム、お話伺ってます。Tien Phatさん、技術力高いって松本から聞いてます。"),

    # Sc8 oogaki: タイプ → タイプなんだ
    (8, "oogaki_sales",
     "ja",
     "(井上に)ズンさん、本当に動いてくれるね。Phase 3 の頃から自発的なタイプ。",
     "(井上に)ズンさん、本当に動いてくれるね。Phase 3の頃から自発的なタイプなんだ。"),

    # Sc9 zun: omiyage cliché
    (9, "zun",
     "ja",
     "(松本に1個だけ差し出す)お疲れ様でした、小さい1個ですみません。",
     "(松本に1個だけ差し出す)お疲れ様でした。ほんの気持ちですが、どうぞ。"),

    # Sc10 oogaki: phrasing
    (10, "oogaki_sales",
     "ja",
     "ズンさん、トゥアンさん、また来週。あ、ズンさん今日のお土産、松本さんに渡してたの見えたよ。気が利くね。",
     "ズンさん、トゥアンさん、また来週。あ、ズンさん、さっき松本さんにお土産渡してたの、見てたよ。気が利くね。"),
]


# ============================================================================
# CHƯƠNG 04 — Japanese expert fixes
# ============================================================================
ch04_fixes = [
    # Sc1 customs officer: formal politer
    (1, "customs_officer",
     "ja",
     "(架空) スーツケースを開けてください。食品の申告ありませんが、これ何ですか?",
     "(架空) スーツケースを開けていただけますか。食品の申告はありませんが、こちらは何でしょうか?"),

    # Sc1 zun: 渡します → 配るつもりでした
    (1, "zun",
     "ja",
     "あ、すみません、お土産用のカシューナッツです。会社の同僚に渡します。",
     "あ、すみません、お土産用のカシューナッツです。会社の同僚に配るつもりでした。"),

    # Sc2 reception_hotel: 了解 → かしこまりました
    (2, "reception_hotel",
     "ja",
     "禁煙室ですね、了解しました。",
     "禁煙室でございますね、かしこまりました。"),

    # Sc3 reception_hakuo: お伺いできますか → お伺いしてもよろしいでしょうか
    (3, "reception_hakuo",
     "ja",
     "おはようございます。ご予約のお名前と、訪問先をお伺いできますか?",
     "おはようございます。ご予約のお名前と訪問先を、お伺いしてもよろしいでしょうか。"),

    # Sc3 zun: PM語呼び → 様 + お約束
    (3, "zun",
     "ja",
     "Tran Van Dung、ティエンファットの者です。松本PMとの約束で、9時からです。",
     "ティエンファットのTran Van Dungと申します。松本様と9時にお約束をいただいております。"),

    # Sc4 matsumoto: kết câu + word order
    (4, "matsumoto",
     "ja",
     "皆さん、ティエンファットからズンさんが先週ホーチミンを発って、今朝着いたばかり。最初の出張1週間、よろしくお願いします。",
     "皆さん、ティエンファットのズンさん、先週ホーチミンを発って今朝着いたばかりです。1週間の出張は今回が初めてとのこと、よろしくお願いします。"),

    # Sc4 all_jp: politer
    (4, "all_jp",
     "ja",
     "よろしくお願いします。",
     "よろしくお願いいたします。"),

    # Sc5 tanaka: 日本人っぽい → 日本人っぽい返事
    (5, "tanaka_pmo",
     "ja",
     "(笑って)『まだまだです』、日本人っぽい(笑)。素直に『ありがとう』でいいんだよ。",
     "(笑って)『まだまだです』なんて、日本人っぽい返事だね(笑)。素直に『ありがとう』でいいんだよ。"),

    # Sc6 ito: やつ → もの
    (6, "ito_nagoya",
     "ja",
     "Phase 4 のレビューモジュール、ベトナムチームが作ったやつ、コード綺麗だったよ。",
     "Phase 4のレビューモジュール、ベトナムチームが作ったもの、コード綺麗だったよ。"),

    # Sc6 ito: よろしい → いいね
    (6, "ito_nagoya",
     "ja",
     "(笑って)正直でよろしい。『分からない』を『分からない』と言える人は信用できる。明日の朝待ってます。",
     "(笑って)正直でいいね。『分からない』を『分からない』と言える人は信用できる。明日の朝待ってます。"),

    # Sc7 matsumoto: kết câu thiếu copula
    (7, "matsumoto",
     "ja",
     "ズンさん、これお造り、本日のおすすめ。マグロ、ヒラメ、雲丹、それとカンパチ。",
     "ズンさん、これお造り、本日のおすすめだよ。マグロ、ヒラメ、雲丹、それとカンパチ。"),

    # Sc7 matsumoto: 正直な反応で良い → 正直でいいね
    (7, "matsumoto",
     "ja",
     "正直な反応で良い。じゃあ残りはこっちでいただいて、ズンさんはエビにする?",
     "正直でいいね(笑)。じゃあ残りはこっちでいただいて、ズンさんはエビにする?"),

    # Sc8 nakamura: 座ってください → お掛けください
    (8, "nakamura_cfo",
     "ja",
     "ズンさん、座ってください。コーヒーは?",
     "ズンさん、お掛けください。コーヒーはいかがですか?"),

    # Sc8 zun: colloquial → full form
    (8, "zun",
     "ja",
     "余計なこと申し上げてたらすみません。",
     "余計なこと申し上げていましたら、申し訳ございません。"),

    # Sc10 oogaki: 代替 → 代わり
    (10, "oogaki_sales",
     "ja",
     "了解、無理しないで。代替で 10月後半でも全然 OK。",
     "了解、無理しないで。代わりに10月後半でも全然OKだから。"),

    # Sc13 jal_staff: phrasing
    (13, "jal_staff",
     "ja",
     "(架空) お客様、規定の23kg を 0.5kg 超過しております。お手荷物の中身、少し移動できますか?",
     "(架空) お客様、規定の23kgを0.5kg超過しております。中身を一部、お手荷物の方へお移しいただけますか?"),
]


# ============================================================================
# CHƯƠNG 03 — Vietnamese expert fixes
# ============================================================================
ch03_fixes = [
    # Sc2 tanaka: vất vả ạ → tone
    (2, "tanaka_pmo",
     "vi",
     "Mọi người vất vả ạ! Cuối năm rồi nhỉ.",
     "Mọi người, hôm nay vất vả rồi nhé! Cuối năm rồi."),

    # Sc2 fuon: cấu trúc
    (2, "fuon",
     "vi",
     "Anh Tanaka, quý vị, hôm nay cảm ơn đã mời chúng tôi.",
     "Anh Tanaka, quý vị, cảm ơn đã mời chúng tôi đến tối nay ạ."),

    # Sc4 nakamura: speech
    (4, "nakamura_cfo",
     "vi",
     "Năm sau Phase 5 dự kiến mở rộng hơn, mong tiếp tục hợp tác. Vậy, để cảm ơn 1 năm vất vả và kỳ vọng năm sau, kanpai!",
     "Năm sau Phase 5 dự kiến mở rộng hơn, mong tiếp tục hợp tác. Vậy, xin nâng ly tri ân một năm qua và gửi gắm kỳ vọng năm sau — kanpai!"),

    # Sc4 fuon: speech ending
    (4, "fuon",
     "vi",
     "Cảm ơn đã cùng nhau vượt qua Phase 4. Năm sau cả team chúng tôi sẽ dốc sức. Tối nay mong đêm vui. Kanpai!",
     "Cảm ơn đã cùng nhau vượt qua Phase 4. Năm sau cả team chúng tôi sẽ dốc sức. Mong tối nay sẽ là một đêm thật vui. Kanpai!"),

    # Sc4 fuon: 一言 → đôi lời
    (4, "fuon",
     "vi",
     "Anh Nakamura CFO, quý vị, cảm ơn lời chào ấm áp. Đại diện Tien Phat tôi xin nói 1 câu…",
     "Anh Nakamura CFO, quý vị, cảm ơn lời chào ấm áp. Là đại diện Thiên Phát, tôi xin được nói đôi lời ạ…"),

    # Sc5 tanaka: ghen tị ghê → ngưỡng mộ
    (5, "tanaka_pmo",
     "vi",
     "(bên cạnh cười) Hải trẻ nên ăn khỏe, ghen tị ghê. Mọi người đừng ngại, ăn đi.",
     "(bên cạnh cười) Hải trẻ nên ăn khỏe, tôi ngưỡng mộ ghê. Mọi người đừng ngại, ăn đi."),

    # Sc5 matsumoto: 神対応
    (5, "matsumoto",
     "vi",
     "À. Vậy Tanaka follow up nãy là 'thần xử lý' đó.",
     "À. Vậy Tanaka cứu nãy đỉnh thật."),

    # Sc6 sato: kanji 蔵元
    (6, "sato_kyushu",
     "vi",
     "Vậy à. Năm sau Tết, sang Fukuoka tôi dẫn đi xưởng shochu. Cho xem 蔵元 thật luôn.",
     "Vậy à. Năm sau Tết, cậu sang Fukuoka tôi dẫn đi xưởng shochu. Cho cậu xem nhà chưng cất thật, đàng hoàng luôn."),

    # Sc7 zun: lặp robot
    (7, "zun",
     "vi",
     "Linh nè, con trai anh Tanaka em đã xem ảnh chưa? Cu cậu mê robot, hồi IT Week tháng 5 anh đã tặng cái sticker robot.",
     "Linh nè, con trai anh Tanaka em đã xem ảnh chưa? Cu cậu mê robot, hồi IT Week tháng 5 anh có tặng bé một cái sticker đó."),

    # Sc8 linh: cấu trúc
    (8, "linh",
     "vi",
     "À, không cần đâu chị, anh Hải dịch giúp em rồi. Tiếng Kansai chị nghe ngộ nghĩnh em thích lắm.",
     "À, không cần đâu chị, anh Hải dịch giúp em rồi. Tiếng Kansai của chị nghe ngộ nghĩnh, em thích lắm."),

    # Sc8 yamamoto: hồ hởi Osaka
    (8, "yamamoto_kansai",
     "vi",
     "(vui) Ô vui ghê! Vậy lát chị dạy 'honma', 'seyana', 'nandeyanen' cho.",
     "(vui) Ô vui ghê! Vậy lát chị dạy em mấy câu 'honma', 'seyana', 'nandeyanen' luôn nhe!"),

    # Sc9 oogaki: mượn tai
    (9, "oogaki_sales",
     "vi",
     "(với Tuấn nhỏ giọng) Anh Tuấn, mượn tai chút. Chuyện Phase 5, đầu năm dự định mở rộng scope…",
     "(với Tuấn nhỏ giọng) Anh Tuấn, ghé tai chút. Chuyện Phase 5, đầu năm dự định mở rộng scope…"),

    # Sc10 matsumoto: vất vả → có lễ phép hơn
    (10, "matsumoto",
     "vi",
     "Rõ, chị Hương, Linh, Hải vất vả. Về cẩn thận.",
     "Rõ rồi. Chị Hương, Linh, Hải vất vả rồi nhé. Về cẩn thận ạ."),

    # Sc11 matsumoto: ride-along email
    (11, "matsumoto",
     "vi",
     "(vỗ vai nhẹ) Từ ride-along email Phase 1 đến giờ 1 năm rưỡi. Nhanh nhỉ.",
     "(vỗ vai nhẹ) Từ hồi cậu đi cùng email Phase 1 đến giờ là một năm rưỡi rồi. Nhanh thật."),

    # Sc11 zun: gần đến yes → nghiêng về có
    (11, "zun",
     "vi",
     "Anh Matsumoto… nói thật, em vui ạ. Sống Tokyo nửa năm, cá nhân em rất muốn. Phải bàn với gia đình + xác nhận chị Hương nhưng cảm giác là 'gần đến yes' rồi.",
     "Anh Matsumoto… nói thật, em vui ạ. Sống Tokyo nửa năm, cá nhân em rất muốn. Phải bàn với gia đình + xác nhận chị Hương nhưng trong lòng em đã nghiêng về 'có' rồi ạ."),

    # Nice-to-fix:
    (1, "fuon", "vi",
     "(tiếng Việt, với Linh + Hải) Linh, Hải, lần đầu bonenkai nha, chị nhắc nhanh 3 điều: kanpai chờ cụng, không tự rót cho mình, ăn chậm thôi.",
     "(tiếng Việt, với Linh + Hải) Linh, Hải, lần đầu bonenkai đó nha, chị nhắc nhanh 3 điều: kanpai chờ cụng, không tự rót cho mình, ăn chậm thôi."),

    (3, "linh", "vi",
     "(mặt được cứu) Cho em oolong ạ.",
     "(thở phào) Cho em oolong ạ."),

    (3, "hai", "vi",
     "(vui vẻ) Em bia ạ!",
     "(vui vẻ) Cho em bia ạ!"),

    (5, "hai", "vi",
     "(mặt đỏ, nhỏ giọng) Ơ em xin lỗi anh. Em đói.",
     "(mặt đỏ, nhỏ giọng) Ơ em xin lỗi anh. Em đói quá."),

    (6, "zun", "vi",
     "(nhai)… hmm, lần đầu vị này. Mềm như cream. Em hiểu sao chia phe rồi.",
     "(nhai)… hmm, lần đầu em uống vị này. Mềm như cream. Em hiểu sao chia phe rồi."),
]


# ============================================================================
# CHƯƠNG 06 — Vietnamese expert fixes
# ============================================================================
ch06_fixes = [
    # Sc1 matsumoto: recommend
    (1, "matsumoto", "vi",
     "(dịu) À, Shinkansen recommend đặt trước. Kodama vắng nên tự do cũng có ghế nhưng cho chắc. Lần sau đặt trước 1 ngày.",
     "(dịu) À, Shinkansen nên đặt trước cậu nhé. Kodama vắng nên tự do cũng có ghế nhưng cho chắc. Lần sau đặt trước 1 ngày."),

    # Sc2 tuan: cảm ơn bằng cà phê
    (2, "tuan_leader", "vi",
     "(chỉnh tư thế) Anh Ōgaki, cảm ơn anh đã quan tâm. Cảm ơn bằng cà phê khách sạn…",
     "(chỉnh tư thế) Anh Ōgaki, cảm ơn anh đã quan tâm. Để em đãi lại các anh ly cà phê ở khách sạn vậy ạ…"),

    # Sc2 ogaki: hôm nay với mai
    (2, "oogaki_sales", "vi",
     "(cười) Không không, hôm nay là tôi mời nên tôi chịu. Dũng Tuấn hôm nay với mai chế độ 'khách' hoàn toàn.",
     "(cười) Không không, hôm nay là tôi mời nên tôi chịu. Dũng, Tuấn, hôm nay với cả ngày mai cứ ở chế độ 'khách' hoàn toàn nhé."),

    # Sc2 zun: lặp ý
    (2, "zun", "vi",
     "Nghêu hấp sả ớt — hấp với sả và ớt. Hợp bia hơi lắm.",
     "Nghêu hấp sả ớt — món hấp với sả và ớt đó ạ. Hợp bia hơi lắm."),

    # Sc3 matsumoto: cho mượn cụt
    (3, "matsumoto", "vi",
     "(tháo khăn quàng) Đây, cho mượn. Tôi có khăn dự phòng trong bag rồi.",
     "(tháo khăn quàng) Đây, cậu quàng vào đi. Tôi có khăn dự phòng trong bag rồi."),

    # Sc4 zun: Nhục → Quê
    (4, "zun", "vi",
     "(tiếng Việt) Vâng anh, em note rồi. Nhục.",
     "(tiếng Việt) Vâng anh, em ghi rồi. Quê quá."),

    # Sc5 nakai: bí đông → bí đao
    (5, "nakai", "vi",
     "(nhân vật phụ, đem đồ ăn) Kaiseki bữa trưa đây ạ. Hôm nay là… (giải thích từng món)… khai vị là cua kobako, sashimi là kinmedai, món ninh là bí đông và…",
     "(nhân vật phụ, đem đồ ăn) Kaiseki bữa trưa đây ạ. Hôm nay là… (giải thích từng món)… khai vị là cua kobako, sashimi là cá kinmedai, món ninh là bí đao và…"),

    # Sc5 matsumoto: hàu → sò hamaguri (蛤)
    (5, "matsumoto", "vi",
     "(giải thích từng món) Đây là 'kinmedai', cá cao cấp bán đảo Izu. Sashimi có mỡ… Đây bí đông ninh, dashi thấm đẫm…",
     "(giải thích từng món) Đây là 'kinmedai', cá cao cấp bán đảo Izu. Sashimi có mỡ… Đây bí đao ninh, dashi thấm đẫm…"),

    # Sc5 ogaki: 内子/外子
    (5, "oogaki_sales", "vi",
     "(chỉ tay) Cái này cua kobako. Đặc sản Hokuriku. Thịt cua + nội tử + ngoại tử, 3 lớp. Cho hết vào miệng 1 lần.",
     "(chỉ tay) Cái này là cua kobako, đặc sản vùng Hokuriku. Thịt cua, trứng trong, trứng ngoài — 3 lớp. Cho hết vào miệng 1 lần."),

    # Sc6 ogaki: wisdom 服を脱ぐ
    (6, "oogaki_sales", "vi",
     "(ngâm tới vai) Phù, thiên đường… hôm qua đến giờ họp ngân sách Tokyo mệt rã rời, cái này reset.",
     "(ngâm tới vai) Phù, thiên đường… hôm qua đến giờ họp ngân sách Tokyo mệt rã rời, cái này reset luôn."),

    # Sc6 ogaki: hadaka no tsukiai wisdom
    (6, "oogaki_sales", "vi",
     "Cởi đồ = cởi địa vị, người Nhật nói vậy. Giám đốc với nhân viên mới cùng bồn.",
     "Người Nhật có câu: cởi quần áo là cởi cả địa vị. Giám đốc với nhân viên mới cũng chung một bồn nước."),

    # Sc7 matsumoto: wisdom matcha-wagashi
    (7, "matsumoto", "vi",
     "Đúng, đó là nền tảng trà đạo. 1 thứ riêng không hoàn thiện, kết hợp mới hoàn thiện.",
     "Đúng, đó là nền tảng trà đạo. Một mình thì chưa trọn vẹn, phải có nhau mới đủ đầy."),

    # Sc8 zun: lần đầu em uống
    (8, "zun", "vi",
     "Atsukan lần đầu em uống. Mùi gạo đậm… cái này dễ uống.",
     "Atsukan em mới uống lần đầu. Hương gạo nồng… dễ uống thật."),

    # Sc9 ogaki: emotion peak
    (9, "oogaki_sales", "vi",
     "Ừ. Công việc bận, ít về quê. 3 năm cuối, ước gì nói chuyện nhiều hơn, giờ vẫn nghĩ. Nên muốn nói Dũng 1 câu.",
     "Ừ. Công việc bận quá, ít khi về quê được. Ba năm cuối, giờ tôi vẫn cứ nghĩ — giá mà mình nói chuyện với ông nhiều hơn. Nên muốn nói Dũng một câu."),

    # Sc9 zun: từ tim → thật lòng
    (9, "zun", "vi",
     "(từ tim) Anh Ōgaki, cảm ơn anh. Em sẽ ghi sâu trong tim. Bố mẹ HCMC, tuần sau em video call.",
     "(thật lòng) Anh Ōgaki, em cảm ơn anh. Em xin khắc cốt ghi tâm ạ. Bố mẹ HCMC, tuần sau em video call."),

    # Sc11 matsumoto: gọi → rủ
    (11, "matsumoto", "vi",
     "Vậy, tháng 3 hay 4 plan 1 lần nữa. Lần sau gọi cả vợ Tuấn, gia đình cũng được không?",
     "Vậy, tháng 3 hay 4 plan 1 lần nữa. Lần sau rủ cả vợ Tuấn, gia đình cùng đi luôn được không?"),

    # Nice-to-fix:
    (1, "matsumoto", "vi",
     "Dũng, Tuấn chào! Vé đâu?",
     "Chào Dũng, chào Tuấn! Vé đâu?"),

    (2, "oogaki_sales", "vi",
     "(rút bento) Tada, 'Fukagawa-meshi' mua ở ga Tokyo. Mỗi người 1 hộp, ăn trên tàu.",
     "(rút bento) Tèn ten, 'Fukagawa-meshi' mua ở ga Tokyo. Mỗi người 1 hộp, ăn trên tàu."),

    (3, "oogaki_sales", "vi",
     "(cười) Dũng à, người Nam Việt Nam đi Kanto giữa đông, 'HeatTech' bắt buộc đó. Inner của Uniqlo.",
     "(cười) Dũng à, người Nam Việt Nam đi Kanto giữa đông, 'HeatTech' là phải có nha cậu. Inner của Uniqlo."),

    (8, "oogaki_sales", "vi",
     "(cười) Khôn. Vậy nửa.",
     "(cười) Khôn ghê. Vậy rót nửa thôi."),

    (10, "tuan_leader", "vi",
     "(tiếng Việt, gật) OK, anh respect. Có lẽ relationship Ōgaki - em đã sang level trust mới. Note vào memory bank — không file project, file personal.",
     "(tiếng Việt, gật) OK, anh respect. Có lẽ relationship Ōgaki - em đã sang level trust mới. Note vào memory bank — không phải mục project, mà mục personal nhé."),

    (11, "matsumoto", "vi",
     "(nhận, mắt híp)… cảm ơn, Dũng. Tinh tế nhỉ.",
     "(nhận, cười khẽ)… cảm ơn Dũng. Cậu chu đáo thật."),
]


def main():
    total_a, total_m = 0, 0
    print("=== Apply JP fixes Chương 01 ===")
    a, m = apply_fixes("展示会", ch01_fixes)
    print(f"  Applied: {a}, Missed: {m}")
    total_a += a; total_m += m

    print("\n=== Apply JP fixes Chương 04 ===")
    a, m = apply_fixes("出張", ch04_fixes)
    print(f"  Applied: {a}, Missed: {m}")
    total_a += a; total_m += m

    print("\n=== Apply VN fixes Chương 03 ===")
    a, m = apply_fixes("忘年会", ch03_fixes)
    print(f"  Applied: {a}, Missed: {m}")
    total_a += a; total_m += m

    print("\n=== Apply VN fixes Chương 06 ===")
    a, m = apply_fixes("温泉", ch06_fixes)
    print(f"  Applied: {a}, Missed: {m}")
    total_a += a; total_m += m

    print(f"\n=== TỔNG: applied {total_a}, missed {total_m} ===")


if __name__ == "__main__":
    main()
