"""Content review:
- Grammar tolerant matching (key character n-grams allowed not contiguous)
- Vocabulary base form to conjugated forms
- Process order matches text position
"""
import json, glob, re, os
from collections import defaultdict, Counter


def normalize_grammar(g):
    g = g.replace('～', '〜').strip()
    g = re.sub(r'\([^)]*\)|（[^）]*）', '', g).strip()
    return g


def kanji_keyset(s):
    """Extract distinctive kanji from grammar pattern, used to find evidence in text."""
    return re.findall(r'[一-鿿]', s)


def grammar_in_text(g, text):
    """Find grammar pattern in text by checking parts loosely.
    Tolerant to: ～↔〜, conjugation, kanji-only match."""
    # Normalize both
    text_n = text.replace('～', '〜')
    g = normalize_grammar(g)
    if not g:
        return True

    parts = [p.strip() for p in g.split('〜') if len(p.strip()) >= 1]
    if not parts:
        return True

    # Pure-particle pattern: any part substring match is OK
    if all(len(p) <= 3 and not re.search(r'[一-鿿]', p) for p in parts):
        joined = ''.join(parts)
        return joined in text_n or any(p in text_n for p in parts)

    # For each part, check if it (or relaxed version) is in text
    for p in parts:
        if p in text_n:
            continue
        # Stem check (drop last char)
        if len(p) >= 2 and p[:-1] in text_n:
            continue
        # Drop last 2 chars
        if len(p) >= 3 and p[:-2] in text_n:
            continue
        # Special: ている → て
        if p.endswith('ている') and p[:-3] + 'てい' in text_n:
            continue
        # Kanji-based check: all kanji must be present
        kanji = kanji_keyset(p)
        if kanji and all(k in text_n for k in kanji):
            continue
        # Try 2-char window (more lenient for short patterns)
        found = False
        for i in range(len(p) - 1):
            sub = p[i:i+2]
            if len(sub) >= 2 and sub in text_n:
                found = True
                break
        if found:
            continue
        return False
    return True


def vocab_in_text(word, text):
    """Vocab matching with conjugation tolerance."""
    if not word:
        return True
    if word in text:
        return True
    # Stem check
    if word.endswith('る') and len(word) >= 2 and word[:-1] in text:
        return True
    # い-adj
    if word.endswith('い') and len(word) >= 2 and word[:-1] in text:
        return True
    # する verbs
    if word.endswith('する') and word[:-2] in text:
        return True
    # な-adj
    if word.endswith('な') and word[:-1] in text:
        return True
    # Kanji-only check
    kanji = re.findall(r'[一-鿿]', word)
    if kanji and len(kanji) >= 1:
        if all(k in text for k in kanji):
            return True
    return False


def tag_in_text(tag, text):
    """Tag matching - just substring or main kanji."""
    t = tag.replace('～', '').replace('〜', '').strip()
    if not t:
        return True
    if t in text:
        return True
    # Kanji core
    kanji = re.findall(r'[一-鿿]', t)
    if kanji and all(k in text for k in kanji):
        return True
    return False


def main():
    issues = defaultdict(list)
    grammar_total = 0
    vocab_total = 0
    tag_total = 0
    grammar_bad = 0
    vocab_bad = 0
    tag_bad = 0

    for folder in os.listdir('.'):
        if not os.path.isdir(folder):
            continue
        for fp in sorted(glob.glob(f'{folder}/batch_*.json')):
            data = json.load(open(fp))
            items = data if isinstance(data, list) else [data]
            for r in items:
                text = r.get('text', '')
                rid = r['id']

                for g in r.get('grammar_used', []):
                    grammar_total += 1
                    if not grammar_in_text(g, text):
                        grammar_bad += 1
                        issues['grammar'].append((rid, folder, g))

                for v in r.get('vocabulary', []):
                    vocab_total += 1
                    if not vocab_in_text(v.get('word', ''), text):
                        vocab_bad += 1
                        issues['vocab'].append((rid, folder, v.get('word')))

                for t in r.get('tags', []):
                    tag_total += 1
                    if not tag_in_text(t, text):
                        tag_bad += 1
                        issues['tag'].append((rid, folder, t))

    print(f'=== CONTENT VALIDATION (refined) ===')
    print(f'Grammar: {grammar_bad}/{grammar_total} fail ({100*grammar_bad/max(1,grammar_total):.1f}%)')
    print(f'Vocab:   {vocab_bad}/{vocab_total} fail ({100*vocab_bad/max(1,vocab_total):.1f}%)')
    print(f'Tag:     {tag_bad}/{tag_total} fail ({100*tag_bad/max(1,tag_total):.1f}%)')

    for kind in ('grammar', 'vocab', 'tag'):
        print(f'\n=== {kind.upper()} samples ({len(issues[kind])}) ===')
        # Group by bài
        by_bai = defaultdict(list)
        for rid, folder, item in issues[kind]:
            by_bai[(rid, folder)].append(item)
        # Top bài with most issues
        for (rid, folder), items in sorted(by_bai.items(), key=lambda x: -len(x[1]))[:10]:
            print(f'  {rid} ({folder}): {len(items)} - {items[:3]}')

    # Save
    with open('/tmp/content_report.json', 'w') as f:
        json.dump({
            'summary': {
                'grammar_bad': grammar_bad, 'grammar_total': grammar_total,
                'vocab_bad': vocab_bad, 'vocab_total': vocab_total,
                'tag_bad': tag_bad, 'tag_total': tag_total,
            },
            'issues': {k: v for k, v in issues.items()}
        }, f, ensure_ascii=False, indent=2)
    print(f'\nReport: /tmp/content_report.json')


if __name__ == '__main__':
    main()
