#!/usr/bin/env python3
"""Apply remaining P1/P2 JP native review fixes."""
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

fixes = [
    # Rule 34: strong form (drop tentative phrasing to client)
    ('phần_III/rule_34_緊急電話/conversation.json',
     '現場のトゥアンに即時共有が必要かと存じますが、いかがでしょうか？',
     '現場のトゥアンにも至急共有いたします。松本様からも何かご対応が必要でしたら、ご指示ください。'),
    ('phần_III/rule_34_緊急電話/rule.md',
     '現場のトゥアンに即時共有が必要かと存じますが、いかがでしょうか？',
     '現場のトゥアンにも至急共有いたします。松本様からも何かご対応が必要でしたら、ご指示ください。'),

    # Rule 01: こちらこそ
    ('phần_I/rule_01_第一声/conversation.json',
     '松本様、いつもお世話になっております。',
     '松本様、こちらこそいつもお世話になっております。'),

    # Rule 04: reorder 復唱 phrase
    ('phần_I/rule_04_片手メモ/conversation.json',
     '明日14時、第3会議室、6名、資料本日中、で復唱させていただきます。',
     '復唱させていただきます。明日14時、第3会議室、6名、資料本日中、で間違いございませんでしょうか。'),
    ('phần_I/rule_04_片手メモ/rule.md',
     '明日14時、第3会議室、6名、資料本日中、で復唱させていただきます【1】。',
     '復唱させていただきます。明日14時、第3会議室、6名、資料本日中、で間違いございませんでしょうか【1】。'),

    # Rule 41: 当社 → 弊社
    ('phần_IV/rule_41_クレーム5ステップ/conversation.json',
     '当社にて回収手配いたします',
     '弊社にて回収の手配をいたします'),
    ('phần_IV/rule_41_クレーム5ステップ/rule.md',
     '当社にて回収手配いたします',
     '弊社にて回収の手配をいたします'),

    # Rule 45: 全責任は弊社にございます
    ('phần_IV/rule_45_謝罪電話/conversation.json',
     'すべて当社の責任でございます',
     '全責任は弊社にございます'),
    ('phần_IV/rule_45_謝罪電話/rule.md',
     'すべて当社の責任でございます',
     '全責任は弊社にございます'),

    # Rule 47: 督促 closing 弱腰 → 標準
    ('phần_IV/rule_47_督促電話/conversation.json',
     'ご対応ありがとうございます。お手数をおかけし申し訳ございません。',
     'ご対応ありがとうございます。引き続きどうぞよろしくお願いいたします。'),
    ('phần_IV/rule_47_督促電話/rule.md',
     'ご対応ありがとうございます。お手数をおかけし申し訳ございません。',
     'ご対応ありがとうございます。引き続きどうぞよろしくお願いいたします。'),

    # Rule 49 voicemail: と申します → でございます (familiar context)
    ('phần_V/rule_49_留守電/conversation.json',
     'いつもお世話になっております。ティエンファット社、営業部のズンと申します。',
     'いつもお世話になっております。ティエンファット社、営業部のズンでございます。'),

    # Rule 52: 皆さん → 皆様 (with customer)
    ('phần_V/rule_52_オンライン会議/conversation.json',
     '皆さん、音声は聞こえておりますでしょうか',
     '皆様、音声は聞こえておりますでしょうか'),
    ('phần_V/rule_52_オンライン会議/rule.md',
     '皆さん、音声は聞こえておりますでしょうか',
     '皆様、音声は聞こえておりますでしょうか'),

    # Rule 58: お声 → ご意見
    ('phần_V/rule_58_ハイブリッド/conversation.json',
     '松本様、オンラインからもお声をいただけますでしょうか',
     '松本様、オンラインからもご意見をお伺いできますでしょうか'),
    ('phần_V/rule_58_ハイブリッド/rule.md',
     '松本様、オンラインからもお声をいただけますでしょうか',
     '松本様、オンラインからもご意見をお伺いできますでしょうか'),

    # Rule 12: お待ちしておりました → いつもお世話に
    ('phần_II/rule_12_名前確認/conversation.json',
     'でいらっしゃいますね。お待ちしておりました。',
     'でいらっしゃいますね。いつもお世話になっております。'),
    ('phần_II/rule_12_名前確認/rule.md',
     'でいらっしゃいますね。お待ちしておりました。',
     'でいらっしゃいますね。いつもお世話になっております。'),

    # Rule 36: drop 生存確認 from vocab (internal slang)
    ('phần_IV/rule_36_保留中対応/rule.md',
     '| 生存確認 | せいぞんかくにん | Xác nhận còn kết nối |\n',
     ''),

    # Rule 32: spelled-out email
    ('phần_III/rule_32_折り返し依頼/conversation.json',
     'zun@thienphat.vn 宛にお願いいたします',
     'zun (z-u-n) アットマーク thienphat ドット vn 宛にお願いいたします'),
    ('phần_III/rule_32_折り返し依頼/rule.md',
     'zun@thienphat.vn 宛にお願いいたします',
     'zun (z-u-n) アットマーク thienphat ドット vn 宛にお願いいたします'),

    # Rule 53: スライド3ページ目 → スライド3枚目
    ('phần_V/rule_53_画面共有声/conversation.json',
     'スライド3ページ目',
     'スライド3枚目'),
    ('phần_V/rule_53_画面共有声/rule.md',
     'スライド3ページ目',
     'スライド3枚目'),

    # Rule 56: ~たいと考えております → ~たく存じます (more business)
    ('phần_V/rule_56_録音許可/conversation.json',
     'させていただきたいと考えております',
     'させていただきたく存じます'),
    ('phần_V/rule_56_録音許可/rule.md',
     'させていただきたいと考えております',
     'させていただきたく存じます'),

    # Rule 59: でございます (internal context) → です
    ('phần_V/rule_59_履歴管理/conversation.json',
     'CRMに登録済みでございます',
     'CRMに登録済みです'),
    ('phần_V/rule_59_履歴管理/rule.md',
     'CRMに登録済みでございます',
     'CRMに登録済みです'),

    # Rule 38: お電話が少し遠い → 標準
    ('phần_IV/rule_38_電話が遠い/conversation.json',
     'お電話が少し遠いようですが',
     'お電話が遠いようでございますが'),
    ('phần_IV/rule_38_電話が遠い/rule.md',
     'お電話が少し遠いようですが',
     'お電話が遠いようでございますが'),

    # Rule 44: あまり良くないご報告 → 残念なお知らせ
    ('phần_IV/rule_44_悪い知らせ/conversation.json',
     'あまり良くないご報告がございまして',
     '残念なお知らせがございまして'),
    ('phần_IV/rule_44_悪い知らせ/rule.md',
     'あまり良くないご報告がございまして',
     '残念なお知らせがございまして'),

    # Rule 17: ~いただきそう → 時間がかかりそう
    ('phần_II/rule_17_保留1分/conversation.json',
     '確認に少々お時間をいただきそうですので',
     '確認にもうしばらく時間がかかりそうでございますので'),
    ('phần_II/rule_17_保留1分/rule.md',
     '確認に少々お時間をいただきそうですので',
     '確認にもうしばらく時間がかかりそうでございますので'),
]

count = 0
for path, old, new in fixes:
    f = ROOT / path
    if not f.exists():
        print(f"SKIP (not found): {path}")
        continue
    text = f.read_text(encoding='utf-8')
    if old in text:
        f.write_text(text.replace(old, new), encoding='utf-8')
        count += 1
        print(f"fixed: {path}")
    else:
        print(f"  not found in {path}: {old[:40]}...")

print(f"\nTotal fixes applied: {count}")
