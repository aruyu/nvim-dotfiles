--[[
-   NOTE      - keymaps.lua
-   Author    - Eira Chae
-
-   Created   - 2022.10.27
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]



-- Local variables for keymap
local keyset = vim.keymap.set

local remap_opt = {remap = true}
local remap_silent_opt = {remap = true, silent = true}
local noremap_opt = {noremap = true}
local noremap_silent_opt = {noremap = true, silent = true}



-- ========================= --
-- =      NORMAL MODE      =
-- ========================= --
keyset('n', 'fs',       '<CMD>Gitsigns diffthis<CR>', noremap_opt)
keyset('n', 'fd',       '<CMD>Gitsigns preview_hunk<CR>', noremap_opt)
keyset('n', 'ff',       '<CMD>Telescope find_files<CR>', noremap_opt)
keyset('n', 'fg',       '<CMD>Telescope live_grep<CR>', noremap_opt)
keyset('n', 'fh',       '<CMD>Telescope help_tags<CR>', noremap_opt)
keyset('n', 'fb',       '<CMD>Telescope buffers<CR>', noremap_opt)

keyset('n', 'ZZ',       'zz', noremap_opt)
keyset('n', '<C-s>',    ':w<CR>', noremap_opt)
keyset('n', '<C-z>',    'u', noremap_opt)
keyset('n', '<C-x>',    'dd', noremap_opt)
keyset('n', '<C-c>',    'yy', noremap_opt)
keyset('n', '<C-v>',    'p', noremap_opt)
keyset('n', '<TAB>',    '<CMD>BufferNext<CR>', noremap_silent_opt)
keyset('n', '<S-TAB>',  '<CMD>BufferPrevious<CR>', noremap_silent_opt)

keyset('n', '<F1>',     ':stop<CR>', noremap_opt)
keyset('n', '<F13>',    ':qa<CR>', noremap_opt)
keyset('n', '<F2>',     '/<CR>N:%s///g<Left><Left>', noremap_opt)
keyset('n', '<F3>',     '/<CR>N', noremap_opt)
keyset('n', '<F4>',     ':noh<CR>', noremap_opt)
keyset('n', '<F9>',     '<CMD>BufferWipeout<CR>', noremap_silent_opt)
keyset('n', '<F33>',    '<CMD>BufferWipeout!<CR>', noremap_silent_opt)
keyset('n', '<F10>',    '<CMD>NvimTreeClose<CR>:silent! close<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('n', '<F34>',    '<CMD>NvimTreeClose<CR>:silent! close!<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('n', '<F11>',    'vL', noremap_opt)
keyset('n', '<F35>',    'L', noremap_opt)
keyset('n', '<F24>',    '<CMD>UltiSnipsEdit<CR>L', noremap_opt)
keyset('n', '<F36>',    '<CMD>TSPlaygroundToggle<CR><CMD>TSEditQuery highlights<CR><CMD>BufferPrevious<CR>', noremap_opt)
keyset('n', '<F48>',    '<CMD>NvimTreeClose<CR><CMD>NvimTreeOpen<CR>15-l', noremap_opt)

keyset('n', '1',        '<CMD>BufferGoto1<CR>', noremap_silent_opt)
keyset('n', '2',        '<CMD>BufferGoto2<CR>', noremap_silent_opt)
keyset('n', '3',        '<CMD>BufferGoto3<CR>', noremap_silent_opt)
keyset('n', '4',        '<CMD>BufferGoto4<CR>', noremap_silent_opt)
keyset('n', '5',        '<CMD>BufferGoto5<CR>', noremap_silent_opt)
keyset('n', '6',        '<CMD>BufferGoto6<CR>', noremap_silent_opt)
keyset('n', '7',        '<CMD>BufferGoto7<CR>', noremap_silent_opt)
keyset('n', '8',        '<CMD>BufferGoto8<CR>', noremap_silent_opt)
keyset('n', '9',        '<CMD>BufferGoto9<CR>', noremap_silent_opt)
keyset('n', '0',        '<CMD>BufferLast<CR>', noremap_silent_opt)



-- ========================= --
-- =      INSERT MODE      =
-- ========================= --
keyset('i', '',       '<ESC><ESC>vbdi', noremap_opt)
--keyset('i', '<C-BS>',   '<ESC><ESC>vbdi', noremap_opt)
keyset('i', '<C-s>',    '<ESC><ESC>:w<CR>', noremap_opt)
keyset('i', '<C-z>',    '<ESC><ESC>ua', noremap_opt)
keyset('i', '<C-x>',    '<ESC><ESC>dda', noremap_opt)
keyset('i', '<C-c>',    '<ESC><ESC>yya', noremap_opt)
keyset('i', '<C-v>',    '<ESC><ESC>pa', noremap_opt)
keyset('i', '<C-l>',    '<C-v>', noremap_opt)
keyset('i', '<S-TAB>',  '<C-v><TAB>', noremap_opt)

keyset('i', '<F1>',     '<ESC><ESC>:stop<CR>', noremap_opt)
keyset('i', '<F13>',    '<ESC><ESC>:qa<CR>', noremap_opt)
keyset('i', '<F2>',     '<ESC><ESC>/<CR>N:%s///g<Left><Left>', noremap_opt)
keyset('i', '<F3>',     '<ESC><ESC>/<CR>N', noremap_opt)
keyset('i', '<F4>',     '<ESC><ESC>:noh<CR>', noremap_opt)
keyset('i', '<F9>',     '<ESC><ESC><CMD>BufferWipeout<CR>', noremap_silent_opt)
keyset('i', '<F33>',    '<ESC><ESC><CMD>BufferWipeout!<CR>', noremap_silent_opt)
keyset('i', '<F10>',    '<ESC><ESC><CMD>NvimTreeClose<CR>:silent! close<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('i', '<F34>',    '<ESC><ESC><CMD>NvimTreeClose<CR>:silent! close!<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('i', '<F11>',    '<ESC><ESC>vL', noremap_opt)
keyset('i', '<F35>',    '<ESC><ESC>L', noremap_opt)
keyset('i', '<F24>',    '<ESC><ESC><CMD>UltiSnipsEdit<CR>L', noremap_opt)
keyset('i', '<F36>',    '<ESC><ESC><CMD>TSPlaygroundToggle<CR><CMD>TSEditQuery highlights<CR><CMD>BufferPrevious<CR>', noremap_opt)
keyset('i', '<F48>',    '<ESC><ESC><CMD>NvimTreeClose<CR><CMD>NvimTreeOpen<CR>15-l', noremap_opt)



-- ========================= --
-- =      VISUAL MODE      =
-- ========================= --
keyset('v', '<BS>',     'd<ESC><ESC>i', noremap_opt)
keyset('v', '<C-s>',    '<ESC><ESC>:w<CR>', noremap_opt)
keyset('v', '<C-z>',    '<ESC><ESC>u', noremap_opt)
keyset('v', '<C-x>',    'd<ESC><ESC>', noremap_opt)
keyset('v', '<C-c>',    'y<ESC><ESC>', noremap_opt)
keyset('v', '<C-v>',    'd<ESC><ESC>P<ESC><ESC>', remap_opt)
keyset('v', 'v',        '<C-v>', noremap_opt)
keyset('v', '<S-TAB>',  '<C-v>:s/^/  /g<CR>:noh<CR>', noremap_opt)

keyset('v', '<F1>',     '<ESC><ESC>:stop<CR>', noremap_opt)
keyset('v', '<F13>',    '<ESC><ESC>:qa<CR>', noremap_opt)
keyset('v', '<F4>',     '<ESC><ESC>:noh<CR>', noremap_opt)
keyset('v', '<F9>',     '<ESC><ESC><CMD>BufferWipeout<CR>', noremap_silent_opt)
keyset('v', '<F33>',    '<ESC><ESC><CMD>BufferWipeout!<CR>', noremap_silent_opt)
keyset('v', '<F10>',    '<ESC><ESC><CMD>NvimTreeClose<CR>:silent! close<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('v', '<F34>',    '<ESC><ESC><CMD>NvimTreeClose<CR>:silent! close!<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('v', '<F11>',    '<ESC><ESC>vL', noremap_opt)
keyset('v', '<F35>',    '<ESC><ESC>L', noremap_opt)
keyset('v', '<F24>',    '<ESC><ESC><CMD>UltiSnipsEdit<CR>L', noremap_opt)
keyset('v', '<F36>',    '<ESC><ESC><CMD>TSPlaygroundToggle<CR><CMD>TSEditQuery highlights<CR><CMD>BufferPrevious<CR>', noremap_opt)
keyset('v', '<F48>',    '<ESC><ESC><CMD>NvimTreeClose<CR><CMD>NvimTreeOpen<CR>15-l', noremap_opt)



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
