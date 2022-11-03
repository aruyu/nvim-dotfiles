--[[
--  NOTE      - nvim-autopairs-configs.lua
--  Author    - Eira Chae
--
--  Created   - 2022.11.03
--  Github    - https://github.com/vine91
--  Contact   - vine9151@gmail.com
/]]


-- Check error
local status_ok, nvim_autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
    return
end


-- Empty setup using defaults
nvim_autopairs.setup {}



-- =========================== --
--    Additional User setup    --
-- =========================== --

-- Remove rules
nvim_autopairs.get_rule("'")[1].not_filetypes = { 'scheme', 'lisp', 'verilog', 'systemverilog' }
nvim_autopairs.get_rule('`').not_filetypes = { 'verilog', 'systemverilog' }


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
