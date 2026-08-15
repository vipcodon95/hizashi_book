-- Gán public_id (slug) cho 13 bộ thẻ hệ thống
-- Kiểm trùng trước khi chạy:
--   SELECT public_id FROM flashcards_list WHERE public_id IN ('it_ha_tang_mang','it_phat_trien_du_lieu','it_ung_dung_media','it_du_lieu_lon_xa_hoi','kaigo_dieu_duong','kensetsu_xay_dung','thuc_pham_che_bien','co_khi','nong_nghiep','oto_bao_duong','hotel_ryokan','cntt_brse','cntt_dai_hoc');

BEGIN;
UPDATE flashcards_list SET public_id='it_ha_tang_mang', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000000;
UPDATE flashcards_list SET public_id='it_phat_trien_du_lieu', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000001;
UPDATE flashcards_list SET public_id='it_ung_dung_media', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000002;
UPDATE flashcards_list SET public_id='it_du_lieu_lon_xa_hoi', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000003;
UPDATE flashcards_list SET public_id='kaigo_dieu_duong', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000004;
UPDATE flashcards_list SET public_id='kensetsu_xay_dung', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000005;
UPDATE flashcards_list SET public_id='thuc_pham_che_bien', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000006;
UPDATE flashcards_list SET public_id='co_khi', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000007;
UPDATE flashcards_list SET public_id='nong_nghiep', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000008;
UPDATE flashcards_list SET public_id='oto_bao_duong', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000009;
UPDATE flashcards_list SET public_id='hotel_ryokan', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000010;
UPDATE flashcards_list SET public_id='cntt_brse', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000011;
UPDATE flashcards_list SET public_id='cntt_dai_hoc', is_public=true, updated_at=now(), updated_by='system' WHERE id=200000012;

COMMIT;
