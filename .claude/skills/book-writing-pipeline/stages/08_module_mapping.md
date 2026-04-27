# Stage 8: Module Mapping (Verify content ↔ module structure)

> **Mục tiêu**: Verify nội dung md/json đã ở đúng folder/module theo outline. Update build script `MODULE_DEFS` nếu cần.

## Triển khai

**Main Claude trực tiếp** (lightweight verification stage).

## Quy trình

### 1. Đọc input

```python
state = json.loads(read("books/<book>/_pipeline/state.json"))
modules = state["modules"]
```

### 2. Verify mỗi module có đủ files

Cho mỗi module:
- [ ] Folder `books/<book>/<module.folder>/` tồn tại
- [ ] File `<topic>_<Name>_LyThuyet.md` tồn tại
- [ ] File `<topic>_<Name>_BaiTap.json` tồn tại (HOẶC ghi note "module này không có BaiTap")
- [ ] File `<topic>_<Name>_Mogishiken.json` tồn tại nếu module dạng reading

### 3. Check / generate build script

Path: `_shared/scripts/build_sql_<book>.py`

Nếu chưa có:
1. Copy template từ `_shared/scripts/build_sql_business_japanese.py`
2. Sửa các constant:
   - `COURSE_ID = state["course_id_prefix"]`
   - `COURSE_CODE = state["book_name"]`
   - `COURSE_NAME = state["book_title_vn"]`
   - `COURSE_DESC = state["topic"]`
3. Replace `MODULE_DEFS` bằng `state["modules"]`

Nếu đã có: verify `MODULE_DEFS` match với `state["modules"]`. Nếu lệch → update.

### 4. Check theory build script

Path: `_shared/scripts/build_sql_<book>_theory.py`

Tương tự — copy template từ business_japanese version, update constants.

### 5. Save mapping log

```markdown
# Module Mapping — <book_title_vn>

## File presence check

| Module | Folder | LyThuyet.md | BaiTap.json | Mogishiken.json | Status |
|--------|--------|-------------|-------------|-----------------|--------|
| 1: Phân loại Kính ngữ | 2.1.0_keigo_phan_loai | ✅ | ❌ | ✅ | OK (BaiTap is in module 2.1.1) |
| 2: 授受動詞 | 2.1.4_juzu_doushi | ✅ | ✅ | ✅ | OK |
| ... | ... | ... | ... | ... | ... |

## Build script status

- `_shared/scripts/build_sql_<book>.py`: <created | exists | updated>
- `_shared/scripts/build_sql_<book>_theory.py`: <created | exists | updated>

## Issues
- <bất kỳ file thiếu nào>
```

Save vào `_pipeline/08_module_mapping.md`.

### 6. Update state

```python
state["stages"]["08_module_mapping"] = {
  "status": "done",
  "output": "_pipeline/08_module_mapping.md",
  "completed_at": "<now>"
}
state["current_stage"] = 9
save_state(state)
```

### 7. Báo user

```
✓ Stage 8 (Module Mapping) hoàn tất.
Output: _pipeline/08_module_mapping.md

- File presence: <X>/<Y> modules đầy đủ
- Build script: <created/updated>
- Issues: <count> (nếu có)

Chạy /book-next <book> để sang Stage 9 (Hội đồng thẩm định).
```

## Constraints

- Stage này KHÔNG sửa md/json files — chỉ verify + setup build script
- Nếu thiếu file critical → STOP, yêu cầu user fix bằng cách quay lại stage 4/5
- KHÔNG run build script ở stage này — đó là stage 10

## Failure handling

- Thiếu LyThuyet.md cho 1 module → STOP, ghi error, instruct user re-run stage 4 cho module đó
- Build script template không tồn tại → tạo từ scratch dựa vào existing seed_dokkai pattern
