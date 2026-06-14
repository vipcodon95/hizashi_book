-- Pandoc Lua filter:
-- 1. Reset width của colspecs về "default" (xoá width để CSS bên ngoài kiểm soát).
--    KHÔNG xoá colspecs (sẽ làm mất <td>).
-- 2. Gắn class "dialogue-table" cho bảng ĐÚNG 2 cột (hội thoại Vai|Câu) →
--    CSS ép table-layout:fixed + width 16/84 chính xác.
-- 3. Gắn class "wide-table" cho bảng có >= 6 cột → CSS dùng auto-layout +
--    font nhỏ + min-width để các cột không dính nhau trên màn epub hẹp.

function Table(el)
  local ncols = #el.colspecs

  -- Reset width của từng colspec về ColWidthDefault
  for i, spec in ipairs(el.colspecs) do
    el.colspecs[i] = {spec[1], "ColWidthDefault"}
  end

  -- Bảng 2 cột (hội thoại): gắn class để CSS ép tỉ lệ 16/84 chính xác (fixed)
  if ncols == 2 then
    el.attr.classes:insert("dialogue-table")
  end

  -- Bảng rộng (>=6 cột): gắn class để CSS xử lý riêng (font nhỏ + cuộn ngang)
  if ncols >= 6 then
    el.attr.classes:insert("wide-table")
  end

  return el
end
