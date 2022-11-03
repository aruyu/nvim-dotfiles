--[[
--  NOTE      - keymaps.lua
--  Author    - Eira Chae
--
--  Created   - 2022.10.27
--  Github    - https://github.com/vine91
--  Contact   - vine9151@gmail.com
/]]



-- Local variables for keymap
local keyset = vim.keymap.set

local remap_opt = {remap = true}
local remap_silent_opt = {remap = true, silent = true}
local noremap_opt = {noremap = true}
local noremap_silent_opt = {noremap = true, silent = true}



-- ========================= --
-- =      NORMAL MODE      =
-- ========================= --
keyset('n', 'ff',       ':Telescope find_files<CR>', noremap_opt)
keyset('n', 'fg',       ':Telescope live_grep<CR>', noremap_opt)
keyset('n', 'fh',       ':Telescope help_tags<CR>', noremap_opt)
keyset('n', 'ZZ',       'zz', noremap_opt)
keyset('n', '<C-S>',    ':w<CR>', noremap_opt)
keyset('n', '<C-Z>',    'u', noremap_opt)
keyset('n', '<C-X>',    'dd', noremap_opt)
keyset('n', '<C-C>',    'yy', noremap_opt)
keyset('n', '<C-V>',    'p', noremap_opt)
keyset('n', '<TAB>',    '<Cmd>BufferNext<CR>', noremap_silent_opt)
keyset('n', '<S-TAB>',  '<Cmd>BufferPrevious<CR>', noremap_silent_opt)

keyset('n', '<F1>',     ':stop<CR>', noremap_opt)
keyset('n', '<F13>',    ':qa<CR>', noremap_opt)
keyset('n', '<F2>',     '/<CR>N:%s///g<Left><Left>', noremap_opt)
keyset('n', '<F3>',     '/<CR>N', noremap_opt)
keyset('n', '<F4>',     ':noh<CR>', noremap_opt)
keyset('n', '<F9>',     ':BufferWipeout<CR>', noremap_silent_opt)
keyset('n', '<F33>',    ':BufferWipeout!<CR>', noremap_silent_opt)
keyset('n', '<F10>',    ':NvimTreeClose<CR>:silent! close<CR>:NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('n', '<F34>',    ':NvimTreeClose<CR>:silent! close!<CR>:NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('n', '<F11>',    'vL', noremap_opt)
keyset('n', '<F35>',    'L', noremap_opt)
keyset('n', '<F24>',    ':UltiSnipsEdit<CR>L', noremap_opt)
keyset('n', '<F36>',    ':TSPlaygroundToggle<CR>:TSEditQuery highlights<CR><Cmd>BufferPrevious<CR>', noremap_opt)
keyset('n', '<F48>',    ':NvimTreeClose<CR>:NvimTreeOpen<CR>15-l', noremap_opt)

keyset('n', '1',        '<Cmd>BufferGoto 1<CR>', noremap_silent_opt)
keyset('n', '2',        '<Cmd>BufferGoto 2<CR>', noremap_silent_opt)
keyset('n', '3',        '<Cmd>BufferGoto 3<CR>', noremap_silent_opt)
keyset('n', '4',        '<Cmd>BufferGoto 4<CR>', noremap_silent_opt)
keyset('n', '5',        '<Cmd>BufferGoto 5<CR>', noremap_silent_opt)
keyset('n', '6',        '<Cmd>BufferGoto 6<CR>', noremap_silent_opt)
keyset('n', '7',        '<Cmd>BufferGoto 7<CR>', noremap_silent_opt)
keyset('n', '8',        '<Cmd>BufferGoto 8<CR>', noremap_silent_opt)
keyset('n', '9',        '<Cmd>BufferGoto 9<CR>', noremap_silent_opt)
keyset('n', '0',        '<Cmd>BufferLast<CR>', noremap_silent_opt)



-- ========================= --
-- =      INSERT MODE      =
-- ========================= --
keyset('i', '',       '<ESC><ESC>vbdi', noremap_opt)
--keyset('i', '<C-BS>',   '<ESC><ESC>vbdi', noremap_opt)
keyset('i', '<C-S>',    '<ESC><ESC>:w<CR>', noremap_opt)
keyset('i', '<C-Z>',    '<ESC><ESC>ua', noremap_opt)
keyset('i', '<C-X>',    '<ESC><ESC>dda', noremap_opt)
keyset('i', '<C-C>',    '<ESC><ESC>yya', noremap_opt)
keyset('i', '<C-V>',    '<ESC><ESC>pa', noremap_opt)
keyset('i', '<C-L>',    '<C-V>', noremap_opt)
keyset('i', '<S-TAB>',  '<C-V><TAB>', noremap_opt)

keyset('i', '<F1>',     '<ESC><ESC>:stop<CR>', noremap_opt)
keyset('i', '<F13>',    '<ESC><ESC>:qa<CR>', noremap_opt)
keyset('i', '<F2>',     '<ESC><ESC>/<CR>N:%s///g<Left><Left>', noremap_opt)
keyset('i', '<F3>',     '<ESC><ESC>/<CR>N', noremap_opt)
keyset('i', '<F4>',     '<ESC><ESC>:noh<CR>', noremap_opt)
keyset('i', '<F9>',     '<ESC><ESC>:BufferWipeout<CR>', noremap_silent_opt)
keyset('i', '<F33>',    '<ESC><ESC>:BufferWipeout!<CR>', noremap_silent_opt)
keyset('i', '<F10>',    '<ESC><ESC>:NvimTreeClose<CR>:silent! close<CR>:NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('i', '<F34>',    '<ESC><ESC>:NvimTreeClose<CR>:silent! close!<CR>:NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('i', '<F11>',    '<ESC><ESC>vL', noremap_opt)
keyset('i', '<F35>',    '<ESC><ESC>L', noremap_opt)
keyset('i', '<F24>',    '<ESC><ESC>:UltiSnipsEdit<CR>L', noremap_opt)
keyset('i', '<F36>',    '<ESC><ESC>:TSPlaygroundToggle<CR>:TSEditQuery highlights<CR><Cmd>BufferPrevious<CR>', noremap_opt)
keyset('i', '<F48>',    '<ESC><ESC>:NvimTreeClose<CR>:NvimTreeOpen<CR>15-l', noremap_opt)



-- ========================= --
-- =      VISUAL MODE      =
-- ========================= --
keyset('v', '<BS>',     'd<ESC><ESC>i', noremap_opt)
keyset('v', '<C-S>',    '<ESC><ESC>:w<CR>', noremap_opt)
keyset('v', '<C-Z>',    '<ESC><ESC>u', noremap_opt)
keyset('v', '<C-X>',    'd<ESC><ESC>', noremap_opt)
keyset('v', '<C-C>',    'y<ESC><ESC>', noremap_opt)
keyset('v', '<C-V>',    'd<ESC><ESC>p<ESC><ESC>', remap_opt)
keyset('v', 'v',        '<C-V>', noremap_opt)
keyset('v', '<S-TAB>',  '<C-V>:s/^/  /g<CR>:noh<CR>', noremap_opt)

keyset('v', '<F1>',     '<ESC><ESC>:stop<CR>', noremap_opt)
keyset('v', '<F13>',    '<ESC><ESC>:qa<CR>', noremap_opt)
keyset('v', '<F4>',     '<ESC><ESC>:noh<CR>', noremap_opt)
keyset('v', '<F9>',     '<ESC><ESC>:BufferWipeout<CR>', noremap_silent_opt)
keyset('v', '<F33>',    '<ESC><ESC>:BufferWipeout!<CR>', noremap_silent_opt)
keyset('v', '<F10>',    '<ESC><ESC>:NvimTreeClose<CR>:silent! close<CR>:NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('v', '<F34>',    '<ESC><ESC>:NvimTreeClose<CR>:silent! close!<CR>:NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('v', '<F11>',    '<ESC><ESC>vL', noremap_opt)
keyset('v', '<F35>',    '<ESC><ESC>L', noremap_opt)
keyset('v', '<F24>',    '<ESC><ESC>:UltiSnipsEdit<CR>L', noremap_opt)
keyset('v', '<F36>',    '<ESC><ESC>:TSPlaygroundToggle<CR>:TSEditQuery highlights<CR><Cmd>BufferPrevious<CR>', noremap_opt)
keyset('v', '<F48>',    '<ESC><ESC>:NvimTreeClose<CR>:NvimTreeOpen<CR>15-l', noremap_opt)



-- ========================= --
-- =         Others        =
-- ========================= --
vim.cmd([[
    nnoremap <F12>      :lua require('telescope.builtin').grep_string({layout_strategy='cursor',layout_config={width=0.5, height=0.45}})<CR>
    inoremap <F12>      <ESC><ESC>:lua require('telescope.builtin').grep_string({layout_strategy='cursor',layout_config={width=0.5, height=0.45}})<CR>
    vnoremap <F12>      <ESC><ESC>:lua require('telescope.builtin').grep_string({layout_strategy='cursor',layout_config={width=0.5, height=0.45}})<CR>

    vnoremap <F2>       y/<C-R>=escape(@",'/\')<CR><CR>N:%s/<C-R>=escape(@",'/\')<CR>/<C-R>=escape(@",'/\')<CR>/g<Left><Left>
    vnoremap <F3>       y/<C-R>=escape(@",'/\')<CR><CR>N

    ca ff Telescope find_files
    ca fg Telescope grep_string
    ca fh Telescope help_tags
    ca fb Telescope buffers
    ca fk Telescope keymaps 
    ca fhl Telescope highlights 
    ca fc Telescope commands
    ca fch Telescope command_history
    ca fsh Telescope search_history 
    ca ww SudaWrite
]])
