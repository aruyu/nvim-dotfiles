--[[
-   NOTE      - nvim-autopairs-configs.lua
-   Author    - Eira Chae
-
-   Created   - 2022.11.03
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error
local status_ok, nvim_autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
    return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Empty setup using defaults
nvim_autopairs.setup {}

-- Remove rules
nvim_autopairs.get_rule("'")[1].not_filetypes = { 'scheme', 'lisp', 'verilog', 'systemverilog' }
nvim_autopairs.get_rule('"').not_filetypes = { 'vim' }
nvim_autopairs.get_rule('`').not_filetypes = { 'verilog', 'systemverilog' }

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

--[[
-- Fix <CR> in Coc
local remap = vim.api.nvim_set_keymap
nvim_autopairs.setup({map_cr=false})

_G.MUtils= {}

MUtils.completion_confirm=function()
    if vim.fn['coc#pum#visible']() ~= 0  then
        return vim.fn['coc#pum#confirm']()
    else
        return nvim_autopairs.autopairs_cr()
    end
end

remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})
]]
