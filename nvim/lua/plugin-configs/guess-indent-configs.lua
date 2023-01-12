--[[
-   NOTE      - guess-indent-configs.lua
-   Author    - Asta
-
-   Created   - 2022.11.11
-   Github    - https://github.com/astaos
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, guess_indent = pcall(require, "guess-indent")
if not status_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Empty setup using defaults.
guess_indent.setup()

-- Configure setup with some options.
guess_indent.setup({
  auto_cmd = true,  -- Set to false to disable automatic execution
  filetype_exclude = {  -- A list of filetypes for which the auto command gets disabled
    'netrw',
    'tutor',
  },
  buftype_exclude = {  -- A list of buffer types for which the auto command gets disabled
    'help',
    'nofile',
    'terminal',
    'prompt',
  }
})
