--[[
-   NOTE      - indent-blankline-configs.lua
-   Author    - Aru
-
-   Created   - 2022.11.10
-   Github    - https://github.com/aruyu
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
vim.g.indent_blankline_filetype_exclude = { 'dashboard' }

indent_blankline.setup {
  -- for example, context is off by default, use this to turn it on
  char = '▏',
  show_current_context = true,
}
