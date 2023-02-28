--[[
-   NOTE      - nvim-ultivisual-configs.lua
-   Author    - Asta
-
-   Created   - 2023.02.27
-   Github    - https://github.com/astaos
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, nvim_ultivisual = pcall(require, "nvim-ultivisual")
if not status_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
nvim_ultivisual.setup({
  -- You can switch the ultimate visual features.
  features = {
    indent = true,
    bracket = true,
    paste = true,
  },

  -- The keymap settings for features here.
  -- key; mapped key
  -- modes; included mode (include Visual mode for ultimate features!)
  keymaps = {
    make_indent = {
      key = '<TAB>',
      modes = { 'v','n' }, -- 'v'; visual, 'n'; normal, 'i'; insert
    },

    delete_indent = {
      key = '<S-TAB>',
      modes = { 'v','n' }, -- 'v'; visual, 'n'; normal, 'i'; insert
    },

    bracket = {
      -- Only for 'v'; visual mode.
      -- You can config the bracket shapes whatever you want.
      { key = '(', shape = { '(',')' } },
      { key = '[', shape = { '[',']' } },
      { key = '{', shape = { '{','}' } },
      { key = '<', shape = { '<','>' } },
    },

    paste = {
      key = '<C-V>',
      modes = { 'v','n','i' }, -- 'v'; visual, 'n'; normal, 'i'; insert
    },
  },

  -- The option settings for features here.
  options = {
    bracket = {
      -- Ignore the first line's indent when included while making bracket.
      ignore_indent = true,
    },
  },
})
