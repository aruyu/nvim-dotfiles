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
local status_ok, indent_blankline = pcall(require, "ibl")
if not status_ok then
  return
end

-- Local variables for config.
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
local hooks = require "ibl.hooks"

-- Local functions for config.
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  local hl = vim.api.nvim_set_hl
  hl(0, 'IblChar', { fg = '#404040', bg = 'NONE' })
  hl(0, 'IblContextChar', { fg = '#707070', bg = 'NONE' })
end)
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Empty setup using defaults.
indent_blankline.setup()

-- Configure setup with some options.
indent_blankline.setup {
  -- for example, context is off by default, use this to turn it on
  indent = {
    char = '▏',
    highlight = 'IblChar',
  },
  exclude = {
    filetypes = { 'dashboard' },
  },
  whitespace = {
    remove_blankline_trail = false,
  },
  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
    injected_languages = false,
    char = '▏',
    highlight = 'IblContextChar',
  },
}
