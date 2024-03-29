--[[
-   NOTE      - string.lua
-   Author    - Aru
-
-   Created   - 2023.02.27
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



function string:contains(sub)
  return self:find(sub, 1, true) ~= nil
end

function string:startswith(starts)
  return self:sub(1, #starts) == starts
end

function string:endswith(ends)
  return ends == "" or self:sub(-#ends) == ends
end

function string:split(delimiter)
  local retval = {}
  local from = 1
  local delim_from, delim_to = self:find(delimiter, from)

  while delim_from do
    table.insert(retval, self:sub(from , delim_from-1))
    from = delim_to + 1
    delim_from, delim_to = self:find(delimiter, from)
  end

  table.insert(retval, self:sub(from))
  return retval
end

function string:replace(old, new)
  local postfix, retval
  local search_start_idx = 1

  while true do
    local start_idx, end_idx = self:find(old, search_start_idx, true)
    if (not start_idx) then
      break
    end

    postfix = self:sub(end_idx + 1)
    retval = self:sub(1, (start_idx - 1)) .. new .. postfix

    search_start_idx = -1 * postfix:len()
  end

  return retval
end

function string:replace_once(old, new)
  local postfix, retval

  local start_idx, end_idx = self:find(old, 1, true)
  postfix = self:sub(end_idx + 1)
  retval = self:sub(1, (start_idx - 1)) .. new .. postfix

  return retval
end

function string:insert(pos, text)
  return self:sub(1, pos - 1) .. text .. self:sub(pos)
end
