--[[
-   NOTE      - neoscroll-configs.lua
-   Author    - Asta
-
-   Created   - 2023.03.27
-   Github    - https://github.com/astaos
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status1_ok, neoscroll = pcall(require, "neoscroll")
if not status1_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
neoscroll.setup {
  mappings = { '<C-r>', '<C-e>', 'zt', 'zz', 'zb' },
  hide_cursor = true,          -- Hide cursor while scrolling
  cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
}

local t = {}
t['<C-r>'] = {'scroll', {'-0.08', 'false', '60'}}
t['<C-e>'] = {'scroll', { '0.08', 'false', '60'}}
t['zz']    = {'zz', {'250'}}

require('neoscroll.config').set_mappings(t)

vim.keymap.set('n', '<ScrollWheelUp>', '<C-r>', { remap = true })
vim.keymap.set('n', '<ScrollWheelDown>', '<C-e>', { remap = true })
vim.keymap.set('i', '<ScrollWheelUp>', '<C-r>', { remap = true })
vim.keymap.set('i', '<ScrollWheelDown>', '<C-e>', { remap = true })
vim.keymap.set('v', '<ScrollWheelUp>', '<C-r>', { remap = true })
vim.keymap.set('v', '<ScrollWheelDown>', '<C-e>', { remap = true })
