-- Sửa 3 dòng dict_word + dict_search bị hạ katakana sai (ディジタル -> でぃじたる).
-- Truy ngược từ seed_dict_word_it_manifest.json, đối chiếu it_external_chua_co.json.
-- text_normalized giữ dạng hiragana theo đúng quy ước bảng (NFKC + kata2hira).

BEGIN TRANSACTION;

UPDATE dict_word SET text='ちじょうディジタルテレビほうそう' WHERE wid=299449;
UPDATE dict_word SET text='ちじょうディジタルほうそう'       WHERE wid=299450;
UPDATE dict_word SET text='ちじょうはディジタルほうそう'     WHERE wid=299453;

UPDATE dict_search SET text='ちじょうディジタルテレビほうそう' WHERE wid=299449 AND word_type='kana';
UPDATE dict_search SET text='ちじょうディジタルほうそう'       WHERE wid=299450 AND word_type='kana';
UPDATE dict_search SET text='ちじょうはディジタルほうそう'     WHERE wid=299453 AND word_type='kana';

COMMIT;
