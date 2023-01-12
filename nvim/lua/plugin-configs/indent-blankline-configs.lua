--[[
-   NOTE      - indent-blankline-configs.lua
-   Author    - Asta
-
-   Created   - 2022.11.10
-   Github    - https://github.com/astaos
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
indent_blankline.setup {
  -- for example, context is off by default, use this to turn it on
  char = '▏',
  show_current_context = true,
}
