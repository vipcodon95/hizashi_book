#!/usr/bin/env python3
"""
Build appendices for Hizashi Sách 08 (雑談・関係構築) from 51 rule JSON files.
- Phụ lục A: Script template tổng hợp (key_phrases tất cả rule)
- Phụ lục B: Vocab tổng hợp (parse từ rule.md vocab tables)
- Phụ lục C: BJT practice tổng hợp (gom theo level)
- Phụ lục D: Templates (memory bank, self-review, follow-up)
- Phụ lục E: 47 Prefectures Cheat Sheet (handcrafted)

Usage: python3 build_appendices.py
"""

import json
import re
from pathlib import Path

BOOK_ROOT = Path(__file__).parent.parent
NOI_DUNG = BOOK_ROOT / "nội_dung"
PHU_LUC = NOI_DUNG / "phụ_lục"
PHU_LUC.mkdir(parents=True, exist_ok=True)

PHAN_NAME_VI = {
    "phần_I": "Phần I — Khung tư duy 雑談",
    "phần_II": "Phần II — Topics core đào sâu",
    "phần_III": "Phần III — Regional deep dive 47 prefectures",
    "phần_IV": "Phần IV — Việt Nam topics",
    "phần_V": "Phần V — Drinking + Self-improve",
}


def find_all_rules():
    rules = []
    for phan_dir in sorted(NOI_DUNG.glob("phần_*")):
        if not phan_dir.is_dir():
            continue
        for rule_dir in sorted(phan_dir.glob("rule_*")):
            if not rule_dir.is_dir():
                continue
            jp = rule_dir / "conversation.json"
            mp = rule_dir / "rule.md"
            if not jp.exists() or not mp.exists():
                continue
            try:
                data = json.load(open(jp, encoding="utf-8"))
                rid = data.get("rule_id", rule_dir.name)
            except Exception as e:
                print(f"  warn: {rule_dir.name}: {e}")
                continue
            rules.append((phan_dir.name, rid, jp, mp, data))
    rules.sort(key=lambda r: int(re.search(r"(\d+)", r[1]).group(1)) if re.search(r"(\d+)", r[1]) else 999)
    return rules


def get_rule_num(rid):
    m = re.search(r"(\d+)", str(rid))
    return int(m.group(1)) if m else 0


def get_title(data):
    t = data.get("title", {})
    if isinstance(t, dict):
        return f"{t.get('vi','')} / {t.get('ja','')}"
    return str(t)


def build_appendix_a(rules):
    lines = ["# Phụ lục A — Script Template Tổng Hợp / フレーズ集", "",
             f"*Tổng hợp `key_phrases` từ {len(rules)} rules.*", "", "---", ""]
    by_phan = {}
    for phan, rid, jp, mp, data in rules:
        by_phan.setdefault(phan, []).append((rid, data))
    total = 0
    for phan in sorted(by_phan.keys()):
        lines.append(f"## {PHAN_NAME_VI.get(phan, phan)}")
        lines.append("")
        for rid, data in by_phan[phan]:
            num = get_rule_num(rid)
            kps = data.get("key_phrases", [])
            if not kps:
                continue
            lines.append(f"### Rule {num:02d} — {get_title(data)}")
            lines.append("")
            lines.append("| Category | JP | VN | Use |")
            lines.append("|---|---|---|---|")
            for kp in kps:
                cat = str(kp.get("category", "—")).replace("|", "\\|")
                ja = str(kp.get("ja", "")).replace("|", "\\|").replace("\n", " ")
                vi = str(kp.get("vi", "")).replace("|", "\\|").replace("\n", " ")
                use = str(kp.get("use", "—")).replace("|", "\\|").replace("\n", " ")
                lines.append(f"| {cat} | {ja} | {vi} | {use} |")
                total += 1
            lines.append("")
        lines.append("---")
        lines.append("")
    out = PHU_LUC / "phụ_lục_A_script_template.md"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"✓ {out.name} ({total} phrases)")


def build_appendix_b(rules):
    lines = ["# Phụ lục B — Vocab Tổng Hợp / 語彙集", "",
             f"*Từ vựng tổng hợp parse từ {len(rules)} rules.*", "", "---", ""]
    vocab = {}
    for phan, rid, jp, mp, data in rules:
        num = get_rule_num(rid)
        text = mp.read_text(encoding="utf-8")
        m = re.search(r"## 📚 Vocab\s*\n+\|.*\|\s*\n\|[\s\-:|]+\|\s*\n((?:\|.*\|\s*\n?)+)", text)
        if not m:
            continue
        for row in m.group(1).strip().split("\n"):
            cells = [c.strip() for c in row.strip("|").split("|")]
            if len(cells) < 3:
                continue
            kanji, yomi, vi = cells[0], cells[1], cells[2]
            if not kanji or kanji.startswith("-") or kanji == "Kanji" or kanji == "漢字":
                continue
            if kanji in vocab:
                if num not in vocab[kanji][2]:
                    vocab[kanji][2].append(num)
            else:
                vocab[kanji] = (yomi, vi, [num])
    sorted_v = sorted(vocab.items(), key=lambda x: x[1][0])
    lines.append(f"**Tổng: {len(sorted_v)} từ vựng unique.**")
    lines.append("")
    lines.append("| Kanji/JP | よみ | Nghĩa | Rule |")
    lines.append("|---|---|---|---|")
    for kanji, (yomi, vi, nums) in sorted_v:
        rs = ", ".join(f"{n:02d}" for n in sorted(nums))
        kanji_e = kanji.replace("|", "\\|")
        yomi_e = yomi.replace("|", "\\|")
        vi_e = vi.replace("|", "\\|")
        lines.append(f"| {kanji_e} | {yomi_e} | {vi_e} | {rs} |")
    out = PHU_LUC / "phụ_lục_B_vocab.md"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"✓ {out.name} ({len(sorted_v)} unique)")


def build_appendix_c(rules):
    lines = ["# Phụ lục C — BJT Practice Tổng Hợp", "",
             f"*Tổng hợp practice từ {len(rules)} rules.*", "", "---", ""]
    by_level = {}
    for phan, rid, jp, mp, data in rules:
        num = get_rule_num(rid)
        for q in data.get("bjt_practice", []):
            level = q.get("level", "J3")
            by_level.setdefault(level, []).append((num, q))
    total = sum(len(v) for v in by_level.values())
    lines.append(f"**Tổng: {total} câu practice.**")
    lines.append("")
    for level in ["J5", "J4", "J3", "J2", "J1", "J1+"]:
        items = by_level.get(level, [])
        if not items:
            continue
        lines.append(f"## Level {level} — {len(items)} câu")
        lines.append("")
        for i, (num, q) in enumerate(items, 1):
            skill = q.get("skill", "")
            qja = q.get("question_ja", "")
            opts = q.get("options", [])
            ans = q.get("answer", "")
            exp = q.get("explain_vi", "")
            lines.append(f"**{level}-{i:02d}** *(Rule {num:02d}, {skill})*: {qja}")
            lines.append("")
            for opt in opts:
                lines.append(f"- {opt}")
            lines.append("")
            lines.append(f"**Đáp án:** {ans}")
            if exp:
                lines.append(f"**Giải thích:** {exp}")
            lines.append("")
        lines.append("---")
        lines.append("")
    out = PHU_LUC / "phụ_lục_C_bjt_practice.md"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"✓ {out.name} ({total} practice)")


def build_appendix_d(rules):
    lines = ["# Phụ lục D — Templates / テンプレート集", "",
             "*Templates ready-to-print từ các rule có field `templates`.*", "", "---", ""]
    count = 0
    for phan, rid, jp, mp, data in rules:
        num = get_rule_num(rid)
        templates = data.get("templates", [])
        if not templates:
            continue
        lines.append(f"## Rule {num:02d} — {get_title(data)}")
        lines.append("")
        for tpl in templates:
            count += 1
            tname = tpl.get("name", f"Template {count}")
            tdesc = tpl.get("description", "")
            tcontent = tpl.get("content", "")
            lines.append(f"### {tname}")
            if tdesc:
                lines.append(f"*{tdesc}*")
            lines.append("")
            lines.append("```markdown")
            lines.append(str(tcontent).strip())
            lines.append("```")
            lines.append("")
        lines.append("---")
        lines.append("")
    out = PHU_LUC / "phụ_lục_D_templates.md"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"✓ {out.name} ({count} templates)")


def build_appendix_e():
    content = """# Phụ lục E — 47 Prefectures Cheat Sheet / 47都道府県雑談便利帳

*Pocket reference. In ra A4 gập 4 = bỏ vào ví. Trước mỗi cuộc gặp, scan 30 giây quê khách.*

---

## Cách dùng

1. Trước cuộc gặp, hỏi nhân viên hoặc check CRM xem khách quê tỉnh nào.
2. Mở bảng này, đọc cột **đặc sản 名物 + sport team + lễ hội**.
3. Mở câu hỏi mở: **「ご出身の[県名]、もう[季節/món]の季節ですか?」** hoặc **「最近[team]の調子はいかがですか?」**.
4. Sau cuộc gặp ghi lại detail mới vào memory bank (rule 50).

---

## 北海道・東北 (Hokkaido + Tohoku) — 7 県

| 県 | 都市 | 名物 | Sport | 祭り | 一言 |
|----|------|------|-------|------|------|
| 北海道 | 札幌・函館・旭川 | 海鮮 (uni/ikura)、ジンギスカン、味噌ラーメン、ザンギ | 日本ハムファイターズ、コンサドーレ札幌 | 雪まつり (2月)、ライラック (5月) | 「広いですよね」 |
| 青森 | 青森・弘前 | 大間まぐろ、りんご、八戸せんべい汁 | — | ねぶた祭 (8/2-7) | 「ねぶた、迫力ありますよね」 |
| 岩手 | 盛岡 | わんこそば、盛岡冷麺、前沢牛 | — | チャグチャグ馬コ | 「わんこそば挑戦してみたい」 |
| 宮城 | 仙台 | 牛タン (利久/喜助)、ずんだ餅、笹かま | 楽天イーグルス、ベガルタ仙台 | 仙台七夕 (8月) | 「牛タンといえば仙台」 |
| 秋田 | 秋田 | きりたんぽ、稲庭うどん、比内地鶏 | — | 竿燈まつり (8月)、なまはげ | 「なまはげ、本物見てみたい」 |
| 山形 | 山形・米沢 | 米沢牛、芋煮、さくらんぼ、玉こんにゃく | — | 花笠まつり (8月) | 「十四代お酒、有名ですよね」 |
| 福島 | 福島・会津 | 喜多方ラーメン (坂内)、馬刺し、桃 | — | 相馬野馬追 | 「会津、歴史深いですね」 |

## 関東 (Kanto) — 7 県

| 県 | 都市 | 名物 | Sport | 祭り | 一言 |
|----|------|------|-------|------|------|
| 茨城 | 水戸 | 水戸納豆、あんこう鍋 | 鹿島アントラーズ | 水戸の梅まつり | 「納豆、健康にいいですよね」 |
| 栃木 | 宇都宮・日光 | 宇都宮餃子、日光湯波、いちご (とちおとめ) | 栃木SC | 日光東照宮 | 「日光、行ってみたいです」 |
| 群馬 | 高崎・前橋 | 焼きまんじゅう、こんにゃく、上州牛 | — | 草津温泉 | 「草津、湯量日本一」 |
| 埼玉 | さいたま・川越 | 草加せんべい、深谷ねぎ | 浦和レッズ、西武ライオンズ | — | 「川越、小江戸ですね」 |
| 千葉 | 千葉・成田 | ピーナッツ、なめろう、勝浦タンタンメン | 千葉ロッテ、ジェフ千葉 | 佐原の大祭 | 「ディズニー、千葉県なんですよね」 |
| 東京 | 23区 | 江戸前寿司、月島もんじゃ、深川丼 | 巨人・ヤクルト・DeNA、FC東京 | 神田祭、三社祭 | 「東京っ子ですね」 |
| 神奈川 | 横浜・鎌倉 | シウマイ、サンマー麺、鎌倉野菜 | DeNA、横浜FC | — | 「横浜中華街、最高ですよね」 |

## 中部 (Chubu) — 9 県

| 県 | 都市 | 名物 | Sport | 祭り | 一言 |
|----|------|------|-------|------|------|
| 新潟 | 新潟・長岡 | 越後そば、笹団子、コシヒカリ、久保田/八海山 | アルビレックス新潟 | 長岡まつり大花火 (8/2-3) | 「久保田、好きです」 |
| 富山 | 富山 | 白えび、ます寿司、ホタルイカ、氷見うどん | カターレ富山 | おわら風の盆 | 「白えび天ぷら美味しい」 |
| 石川 | 金沢 | 加賀料理、能登牛、金沢おでん、九谷焼 | ツエーゲン金沢 | 金沢百万石まつり | 「兼六園、雪見好きです」 |
| 福井 | 福井 | 越前ガニ、ソースカツ丼、おろしそば | — | 三国祭 | 「越前ガニ、冬の楽しみ」 |
| 山梨 | 甲府 | ほうとう、ぶどう、信玄餅 | ヴァンフォーレ甲府 | 信玄公祭り | 「富士山、最高ですね」 |
| 長野 | 長野・松本 | 信州そば、おやき、野沢菜、りんご | 松本山雅、長野パルセイロ | 善光寺御開帳 | 「軽井沢、避暑にいいですね」 |
| **岐阜** | **高山・関** | **飛騨牛、朴葉味噌、栗きんとん、関の刃物、美濃焼** | FC岐阜 | **高山祭、長良川鵜飼 (5/11-10/15)** | **「白川郷、行きたいです」** |
| 静岡 | 静岡・浜松 | うなぎ、お茶、桜エビ、浜松餃子 | 清水エスパルス、ジュビロ磐田 | — | 「お茶どころですね」 |
| 愛知 | 名古屋 | 味噌カツ、ひつまぶし (蓬莱軒)、手羽先 (山ちゃん/風来坊)、八丁味噌 | 中日ドラゴンズ、グランパス | — | 「ドラゴンズ、応援してます」 |

## 関西 (Kansai) — 7 県

| 県 | 都市 | 名物 | Sport | 祭り | 一言 |
|----|------|------|-------|------|------|
| 三重 | 伊勢・四日市 | 松阪牛、伊勢海老、赤福、てこね寿司 | — | 伊勢神宮式年遷宮 | 「お伊勢参り、いつか」 |
| 滋賀 | 大津 | 近江牛、鮒寿司、赤こんにゃく | — | — | 「琵琶湖、雄大」 |
| 京都 | 京都 | 懐石、湯豆腐、抹茶、八ツ橋、京漬物 | 京都サンガ | 祇園祭 (7月)、五山送り火 | 「お抹茶、頂きます」 |
| 大阪 | 大阪 | お好み焼、たこ焼、串カツ、551蓬莱、ホルモン | 阪神タイガース、オリックス、ガンバ、セレッソ | 天神祭 (7/24-25) | 「阪神、今シーズン調子いいですね」 |
| 兵庫 | 神戸・姫路 | 神戸牛、明石焼、たこ飯、播州ラーメン | ヴィッセル神戸 | — | 「神戸の夜景、最高」 |
| 奈良 | 奈良 | 柿の葉寿司、奈良漬、三輪そうめん | — | 鹿、東大寺 | 「鹿、可愛いですよね」 |
| 和歌山 | 和歌山 | 紀州梅干し、和歌山ラーメン、めはり寿司 | — | 那智の火祭 | 「梅干し、健康にいい」 |

## 中国 (Chugoku) — 5 県

| 県 | 都市 | 名物 | Sport | 祭り | 一言 |
|----|------|------|-------|------|------|
| 鳥取 | 鳥取 | 松葉ガニ、二十世紀梨、らっきょう | ガイナーレ鳥取 | — | 「砂丘、行ってみたい」 |
| 島根 | 松江・出雲 | 出雲そば、しじみ、ぼてぼて茶 | — | 出雲大社 | 「縁結び、出雲大社」 |
| 岡山 | 岡山・倉敷 | 岡山ラーメン、ままかり、白桃、デミカツ丼 | — | 西大寺会陽 (はだか祭) | 「桃、本当に美味しい」 |
| **広島** | **広島・尾道** | **広島お好み焼 (重ね焼)、牡蠣、もみじ饅頭 (藤い屋/やまだ屋)、尾道ラーメン** | **広島カープ、サンフレッチェ広島** | 宮島大鳥居、平和記念公園 | **「カープ、応援してます!」** |
| 山口 | 下関 | ふぐ、瓦そば、岩国寿司 | レノファ山口 | — | 「ふぐ、いつか食べたい」 |

## 四国 (Shikoku) — 4 県

| 県 | 都市 | 名物 | Sport | 祭り | 一言 |
|----|------|------|-------|------|------|
| 徳島 | 徳島 | 徳島ラーメン、すだち、阿波尾鶏 | 徳島ヴォルティス | 阿波踊り (8/12-15) | 「阿波踊り、リズム最高」 |
| 香川 | 高松 | 讃岐うどん (セルフ)、骨付鶏、しょうゆ豆 | カマタマーレ讃岐 | — | 「うどん、本場ですね」 |
| 愛媛 | 松山 | みかん、ポンジュース (蛇口)、鯛めし、じゃこ天 | 愛媛FC | 道後温泉 | 「ポンジュース、蛇口から!」 |
| 高知 | 高知 | カツオたたき (藁焼)、皿鉢料理、よさこい | 高知ユナイテッド | よさこい祭 (8月) | 「カツオの藁焼、最高」 |

## 九州 (Kyushu) — 7 県

| 県 | 都市 | 名物 | Sport | 祭り | 一言 |
|----|------|------|-------|------|------|
| **福岡** | **福岡・博多** | **博多豚骨ラーメン (一蘭/一風堂)、もつ鍋、明太子、水炊き、屋台** | **ホークス、アビスパ** | **博多祇園山笠 (7/15)、博多どんたく (5/3-4)** | **「ホークス、王さんですよね」** |
| 佐賀 | 佐賀 | 佐賀牛、呼子イカ、ムツゴロウ、嬉野茶 | サガン鳥栖 | — | 「佐賀牛、トップクラス」 |
| 長崎 | 長崎 | ちゃんぽん、皿うどん、カステラ、トルコライス | V・ファーレン長崎 | くんち | 「カステラ、お土産にいい」 |
| 熊本 | 熊本 | 馬刺し (菅乃屋)、辛子蓮根、いきなり団子 | ロアッソ熊本 | くまモン、阿蘇 | 「くまモン、可愛いですよね」 |
| 大分 | 別府・由布院 | とり天、関アジ、関サバ、由布院温泉 | 大分トリニータ | 別府温泉 | 「別府温泉、湯量すごい」 |
| 宮崎 | 宮崎 | チキン南蛮、地頭鶏、マンゴー、冷汁 | — | 高千穂夜神楽 | 「マンゴー、絶品」 |
| 鹿児島 | 鹿児島 | 黒豚、さつま揚げ、芋焼酎 (3M)、白くま | — | 桜島、西郷さん | 「黒豚、しゃぶしゃぶで」 |

## 沖縄 (Okinawa) — 1 県

| 県 | 都市 | 名物 | Sport | 祭り | 一言 |
|----|------|------|-------|------|------|
| **沖縄** | **那覇・石垣** | **ゴーヤチャンプル、ソーキそば、ラフテー、海ぶどう、泡盛 (残波/瑞泉/久米仙)、サーターアンダギー** | FC琉球、琉球キングス | 首里城、慰霊の日 (6/23) | **「沖縄時間、ゆっくりですね」** |

---

## 🎯 Quick reference — 球団 vs 県

| Team | 県 | League |
|------|----|--------|
| 巨人 | Tokyo | NPBセ |
| 阪神タイガース | Osaka/Hyogo | NPBセ |
| 中日ドラゴンズ | Aichi | NPBセ |
| 広島カープ | Hiroshima | NPBセ |
| ヤクルト | Tokyo | NPBセ |
| DeNAベイスターズ | Kanagawa | NPBセ |
| 福岡ホークス | Fukuoka | NPBパ |
| 楽天イーグルス | Miyagi | NPBパ |
| 西武ライオンズ | Saitama | NPBパ |
| 千葉ロッテ | Chiba | NPBパ |
| オリックス | Osaka | NPBパ |
| 日本ハム | Hokkaido | NPBパ |

---

## ⚠ Tips

- **TUYỆT ĐỐI tránh** so sánh negative giữa các vùng (ví dụ "Osaka お好み焼 ngon hơn Hiroshima" → tự sát).
- **Ngược lại,** thừa nhận "mỗi vùng có cái hay riêng" → an toàn 100%.
- Khi nhớ chi tiết quê khách (vd nhớ đặt sushi từ Toyosu cho khách Tokyo) → khách imprint vài năm.
- Ghi vào memory bank (rule 50) sau mỗi gặp.

---

*Hizashi Sách 08 — Phụ lục E — 2026.*
"""
    out = PHU_LUC / "phụ_lục_E_47_prefectures.md"
    out.write_text(content, encoding="utf-8")
    print(f"✓ {out.name} (47 prefectures)")


def main():
    print("Building appendices for Hizashi Sách 08...")
    rules = find_all_rules()
    print(f"Found {len(rules)} rules\n")
    build_appendix_a(rules)
    build_appendix_b(rules)
    build_appendix_c(rules)
    build_appendix_d(rules)
    build_appendix_e()
    print(f"\nDone. {len(rules)} rules → 5 appendices.")


if __name__ == "__main__":
    main()
