--[[
-   NOTE      - nvim-colorizer-configs.lua
-   Author    - Asta
-
-   Created   - 2023.03.02
-   Github    - https://github.com/astaos
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
colorizer.setup({
  '*', -- Highlight all files, but customize some others.
  css = {
    rgb_fn = true, -- Enable parsing rgb(...) functions in css.
    names = true, -- "Name" codes like Blue
  },
}, { names = false, })
