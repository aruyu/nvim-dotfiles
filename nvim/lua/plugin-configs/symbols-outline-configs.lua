--[[
-   NOTE      - symbols-outline-configs.lua
-   Author    - Aru
-
-   Created   - 2023.04.17
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, symbols_outline = pcall(require, "symbols-outline")
if not status_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Empty setup using defaults.
symbols_outline.setup()

-- Configure setup with some options.
symbols_outline.setup({
  position = 'right',
  relative_width = false,
  width = 40,
})
