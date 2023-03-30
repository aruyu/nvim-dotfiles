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
  mappings = { "<C-;>","<C-'>", 'zt','zz','zb' },
  hide_cursor = true,          -- Hide cursor while scrolling
  cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  performance_mode = false,    -- Disable "Performance Mode" on all buffers.
}

local t = {}
t["<C-;>"] = {'scroll', {'-0.05', 'false', '20'}}
t["<C-'>"] = {'scroll', { '0.05', 'false', '20'}}

require('neoscroll.config').set_mappings(t)



vim.keymap.set('n', '<ScrollWheelUp>', "<C-;>", { remap = true })
vim.keymap.set('n', '<ScrollWheelDown>', "<C-'>", { remap = true })
--vim.keymap.set('i', '<ScrollWheelUp>', "<C-;>", { remap = true })
--vim.keymap.set('i', '<ScrollWheelDown>', "<C-'>", { remap = true })
vim.keymap.set('v', '<ScrollWheelUp>', "<C-;>", { remap = true })
vim.keymap.set('v', '<ScrollWheelDown>', "<C-'>", { remap = true })
