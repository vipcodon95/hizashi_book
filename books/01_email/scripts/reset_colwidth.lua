-- Pandoc Lua filter cho Sách 01 — Email.
-- Reset width của từng colspec về ColWidthDefault → xoá <col style="width:..%">
-- inline mà pandoc tự suy (tùy tiện) để CSS bên ngoài (epub_email.css) kiểm soát
-- tỉ lệ cột theo số cột (2→30/70, 3→25/25/50, 4→18/22/22/38).
-- KHÔNG xoá colspecs (sẽ làm mất <td>). KHÔNG gắn class (CSS dùng :nth-last-child).

function Table(el)
  for i, spec in ipairs(el.colspecs) do
    el.colspecs[i] = {spec[1], "ColWidthDefault"}
  end
  return el
end
