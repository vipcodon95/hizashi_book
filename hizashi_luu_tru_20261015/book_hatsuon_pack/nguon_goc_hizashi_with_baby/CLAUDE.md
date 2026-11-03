# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Hizashi with Baby** - Ứng dụng học tiếng Nhật tập trung vào phát âm và pitch accent.

Dự án đang trong giai đoạn planning/ideation - chưa có codebase.

## Roadmap theo docs.md

1. **Giai đoạn Bảng chữ cái**: vowel → consonant → dakuon → handakuon → yoon → special morae (kèm mora bar + audio + minimal pair)
2. **Từ vựng N5+**: Mỗi từ đi kèm pitch accent pattern + audio variants để luyện tai
3. **Câu ngắn+**: Phrasal intonation, question vs statement, focus; Shadowing là feature trung tâm

## Ý tưởng đặc biệt: Kanji Mystery (kanji_mystery/)

Biến đổi kanji thành hình minh họa trực quan bằng SVG morphing:
- Nguồn: KanjiVG (cung cấp path SVG cho từng nét kanji)
- Kỹ thuật: GSAP MorphSVGPlugin để morph giữa kanji và hình minh họa
- Ví dụ: 人 → hình người với đầu và 2 chân

## Ngôn ngữ

Sử dụng tiếng Việt trong tài liệu và giao tiếp với người dùng.
