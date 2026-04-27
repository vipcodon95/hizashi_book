#!/usr/bin/env python3
"""Apply remaining v1.1 fixes from verification report."""
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

# 1. Mass-fix Tôi rõ rồi → Tôi hiểu rồi (across all conversation.json)
for f in sorted(ROOT.glob('phần_*/rule_*/conversation.json')):
    text = f.read_text(encoding='utf-8')
    if 'Tôi rõ rồi' in text:
        f.write_text(text.replace('Tôi rõ rồi', 'Tôi hiểu rồi'), encoding='utf-8')
        print(f"fixed Tôi rõ rồi: {f.relative_to(ROOT)}")

# 2. đợi máy → giữ máy (3 files)
for fname in [
    'phần_II/rule_17_保留1分/conversation.json',
    'phần_III/rule_26_発信名乗り/conversation.json',
    'phần_IV/rule_36_保留中対応/conversation.json',
]:
    f = ROOT / fname
    text = f.read_text(encoding='utf-8')
    if 'đợi máy' in text:
        f.write_text(text.replace('đợi máy', 'giữ máy'), encoding='utf-8')
        print(f"fixed đợi máy: {fname}")

# 3. お間違え → お間違い (rule 19)
f = ROOT / 'phần_II/rule_19_間違い電話/conversation.json'
text = f.read_text(encoding='utf-8')
text2 = text.replace('お間違え', 'お間違い')
if text != text2:
    f.write_text(text2, encoding='utf-8')
    print(f"fixed お間違え: rule_19/conversation.json")

# 4. rule_18: お伝えいたします → 申し伝えます (only when about Tuấn to outsider)
f = ROOT / 'phần_II/rule_18_伝言5要素/conversation.json'
text = f.read_text(encoding='utf-8')
text2 = text.replace('トゥアンへお伝えいたします', 'トゥアンに申し伝えます')
if text != text2:
    f.write_text(text2, encoding='utf-8')
    print(f"fixed お伝えいたします: rule_18")

# 5. rule_40: お返事 → ご返信 (own action context)
for path in ['phần_IV/rule_40_怒り客対応/conversation.json', 'phần_IV/rule_40_怒り客対応/rule.md']:
    f = ROOT / path
    text = f.read_text(encoding='utf-8')
    text2 = text.replace('お返事が遅くなり、本当に申し訳ございません', 'ご返信が遅くなり、本当に申し訳ございません')
    if text != text2:
        f.write_text(text2, encoding='utf-8')
        print(f"fixed お返事 → ご返信: {path}")

# 6. rule_42: "Bạn" → "Em"
f = ROOT / 'phần_IV/rule_42_電話で断る/conversation.json'
text = f.read_text(encoding='utf-8')
text2 = text.replace('Bạn tham gia hội thảo thứ Sáu tuần sau được không?', 'Em tham gia hội thảo thứ Sáu tuần sau được không?')
if text != text2:
    f.write_text(text2, encoding='utf-8')
    print(f"fixed Bạn → Em: rule_42")

# 7. rule_08 VN naturalness
f = ROOT / 'phần_I/rule_08_静かな環境/conversation.json'
text = f.read_text(encoding='utf-8')
text2 = text.replace('Nếu đường dây có hơi xa, mong anh thông cảm.', 'Nếu line không được rõ, mong anh thông cảm ạ.')
if text != text2:
    f.write_text(text2, encoding='utf-8')
    print(f"fixed VN line: rule_08")

# 8. VN-C: rule_46 "giữa lúc bận" → "anh bận thế mà"
f = ROOT / 'phần_IV/rule_46_お礼電話/conversation.json'
text = f.read_text(encoding='utf-8')
old = 'Hôm qua giữa lúc bận anh đã dành thời gian quý báu cho em'
new = 'Hôm qua anh bận thế mà vẫn dành thời gian quý báu cho em'
text2 = text.replace(old, new)
if text != text2:
    f.write_text(text2, encoding='utf-8')
    print(f"fixed giữa lúc bận: rule_46")

# 9. VN-H: rule_58 "cho mình nghe" → "cho em xin"
f = ROOT / 'phần_V/rule_58_ハイブリッド/conversation.json'
text = f.read_text(encoding='utf-8')
text2 = text.replace('Phía online cho mình nghe ý kiến với ạ', 'Phía online cho em xin ý kiến với ạ')
if text != text2:
    f.write_text(text2, encoding='utf-8')
    print(f"fixed cho mình → cho em: rule_58")

# 10. rule_26 line 53 — receptionist nuance
f = ROOT / 'phần_III/rule_26_発信名乗り/conversation.json'
text = f.read_text(encoding='utf-8')
text2 = text.replace(
    '"sentence_translation": "Anh Matsumoto ạ. Anh giữ máy một chút ạ.",',
    '"sentence_translation": "Dạ anh Matsumoto đúng không ạ? Anh giữ máy chút ạ.",'
)
if text != text2:
    f.write_text(text2, encoding='utf-8')
    print(f"fixed receptionist nuance: rule_26")

print("\nDone.")
