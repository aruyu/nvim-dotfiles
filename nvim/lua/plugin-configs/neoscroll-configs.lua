--[[
-   NOTE      - neoscroll-configs.lua
-   Author    - Aru
-
-   Created   - 2023.03.27
-   Github    - https://github.com/aruyu
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
  mappings = { "<C-;>","<C-'>", 'zt','zz','ZZ','zb' },
  hide_cursor = true,          -- Hide cursor while scrolling
  cursor_scrolls_alone = false, -- The cursor will keep on scrolling even if the window cannot scroll further
}

local t = {}
t["<C-;>"] = {'scroll', {'-0.1', 'false', '40'}}
t["<C-'>"] = {'scroll', { '0.1', 'false', '40'}}
t['zt']    = {'zt', {'250'}}
t['zz']    = {'zz', {'250'}}
t['ZZ']    = {'zz', {'250'}}
t['zb']    = {'zb', {'250'}}

require('neoscroll.config').set_mappings(t)



vim.keymap.set('n', '<ScrollWheelUp>',   "<C-;>", { remap = true })
vim.keymap.set('n', '<ScrollWheelDown>', "<C-'>", { remap = true })
--vim.keymap.set('i', '<ScrollWheelUp>',   "<C-;>", { remap = true })
--vim.keymap.set('i', '<ScrollWheelDown>', "<C-'>", { remap = true })
vim.keymap.set('v', '<ScrollWheelUp>',   "<C-;>", { remap = true })
vim.keymap.set('v', '<ScrollWheelDown>', "<C-'>", { remap = true })
