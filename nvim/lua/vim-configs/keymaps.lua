--[[
-   NOTE      - keymaps.lua
-   Author    - Aru
-
-   Created   - 2022.10.27
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



-- Locals for keymap.
local keyset = vim.keymap.set
local remap_opt = { remap = true }
local remap_silent_opt = { remap = true, silent = true }
local noremap_opt = { noremap = true }
local noremap_silent_opt = { noremap = true, silent = true }

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.sync_to()
  vim.cmd([[
    !rsync -avxHAXP ~/.config/nvim/queries/* ~/Documents/nvim-dotfiles/nvim/queries/
    !rsync -avxHAXP ~/.config/nvim/ultisnips/* ~/Documents/nvim-dotfiles/nvim/ultisnips/
  ]])
  vim.api.nvim_feedkeys(t('<CR>'), 'n', true)
end


-- ========================= --
-- =      NORMAL MODE      =
-- ========================= --
keyset('n', 'fq',     'h:q<CR>', noremap_opt)
keyset('n', 'fs',     '<CMD>Gitsigns diffthis<CR>l', noremap_opt)
keyset('n', 'fd',     '<CMD>Gitsigns preview_hunk<CR>', noremap_opt)
keyset('n', 'ff',     '<CMD>Telescope find_files<CR>', noremap_opt)
keyset('n', 'fg',     '<CMD>Telescope live_grep<CR>', noremap_opt)
keyset('n', 'fh',     '<CMD>Telescope help_tags<CR>', noremap_opt)
keyset('n', 'fb',     '<CMD>Telescope buffers<CR>', noremap_opt)
keyset('n', 'dy',     '<CMD>lua vim.diagnostic.config({virtual_text = true})<CR>', noremap_opt)
keyset('n', 'dn',     '<CMD>lua vim.diagnostic.config({virtual_text = false})<CR>', noremap_opt)
--keyset('n', 'dy',     '<CMD>LspStart clangd<CR>', noremap_opt)
--keyset('n', 'dn',     '<CMD>LspStop clangd<CR>', noremap_opt)
keyset('n', 'dd',     '"_dd', noremap_opt)

--keyset('n', 'ZZ',     'zz', noremap_opt)
keyset('n', '<C-A>',  'gg<S-V>G', noremap_opt)
keyset('n', '<C-S>',  ':w<CR>', noremap_opt)
keyset('n', '<C-Y>',  '<C-R>', noremap_opt)
keyset('n', '<C-R>',  '<C-Y>', noremap_opt)
keyset('n', '<C-Z>',  'u', noremap_opt)
keyset('n', '<C-X>',  'dd', noremap_opt)
keyset('n', '<C-C>',  'yy', noremap_opt)
keyset('n', '<C-B>',  'p', noremap_opt)

keyset('n', '1',      '<CMD>BufferGoto1<CR>', noremap_silent_opt)
keyset('n', '2',      '<CMD>BufferGoto2<CR>', noremap_silent_opt)
keyset('n', '3',      '<CMD>BufferGoto3<CR>', noremap_silent_opt)
keyset('n', '4',      '<CMD>BufferGoto4<CR>', noremap_silent_opt)
keyset('n', '5',      '<CMD>BufferGoto5<CR>', noremap_silent_opt)
keyset('n', '6',      '<CMD>BufferGoto6<CR>', noremap_silent_opt)
keyset('n', '7',      '<CMD>BufferGoto7<CR>', noremap_silent_opt)
keyset('n', '8',      '<CMD>BufferGoto8<CR>', noremap_silent_opt)
keyset('n', '9',      '<CMD>BufferGoto9<CR>', noremap_silent_opt)
keyset('n', '0',      '<CMD>BufferLast<CR>', noremap_silent_opt)

keyset('n', '<C-1>',  '1', noremap_opt)
keyset('n', '<C-2>',  '2', noremap_opt)
keyset('n', '<C-3>',  '3', noremap_opt)
keyset('n', '<C-4>',  '4', noremap_opt)
keyset('n', '<C-5>',  '5', noremap_opt)
keyset('n', '<C-6>',  '6', noremap_opt)
keyset('n', '<C-7>',  '7', noremap_opt)
keyset('n', '<C-8>',  '8', noremap_opt)
keyset('n', '<C-9>',  '9', noremap_opt)
keyset('n', '<C-0>',  '0', noremap_opt)

keyset('n', '<F1>',   ':stop<CR>', noremap_opt)
keyset('n', '<F13>',  ':qa<CR>', noremap_opt)
keyset('n', '<F2>',   '/<CR>N:%s///g<Left><Left>', noremap_opt)
keyset('n', '<F3>',   '/<CR>N', noremap_opt)
keyset('n', '<F4>',   ':noh<CR>', noremap_opt)

keyset('n', '<F7>',   ':%!xxd -g4<CR>', noremap_opt)
keyset('n', '<F19>',  ':%!xxd -g4 -c 32<CR>', noremap_opt)
keyset('n', '<F31>',  ':%!xxd -g4 -c 64<CR>', noremap_opt)
keyset('n', '<F43>',  ':%!xxd -r<CR>', noremap_opt)

keyset('n', '<F9>',   '<CMD>BufferClose<CR>', noremap_silent_opt)
keyset('n', '<F21>',  '<CMD>BufferClose!<CR>', noremap_silent_opt)
keyset('n', '<F10>',  '<CMD>NvimTreeClose<CR>:silent! close<CR><CMD>NvimTreeOpen<CR>', noremap_silent_opt)
keyset('n', '<F22>',  '<CMD>NvimTreeClose<CR>:silent! close!<CR><CMD>NvimTreeOpen<CR>', noremap_silent_opt)
keyset('n', '<F11>',  'vL', noremap_opt)
keyset('n', '<F23>',  'L', noremap_opt)
keyset('n', '<F24>',  '<CMD>UltiSnipsEdit<CR><CMD>BufferPrevious<CR>vL<CMD>BufferNext<CR>', noremap_opt)
keyset('n', '<F36>',  '<CMD>TSPlaygroundToggle<CR><CMD>TSEditQuery highlights<CR><CMD>BufferPrevious<CR>', noremap_opt)
keyset('n', '<F48>',  '<CMD>NvimTreeToggle<CR>', noremap_opt)



-- ========================= --
-- =      INSERT MODE      =
-- ========================= --
--keyset('i', '',     '<ESC><ESC>vbdi', noremap_opt) -- for wsl (window terminal)
--keyset('i', '<C-BS>', '<ESC><ESC>vbdi', noremap_opt) -- for mac
--keyset('i', '<M-BS>', '<ESC><ESC>vbdi', noremap_opt) -- for linux
keyset('i', '<C-A>',  '<ESC><ESC>gg<S-V>G', noremap_opt)
keyset('i', '<C-S>',  '<ESC><ESC>:w<CR>', noremap_opt)
keyset('i', '<C-Y>',  '<ESC><ESC><C-R>a', noremap_opt)
keyset('i', '<C-Z>',  '<ESC><ESC>ua', noremap_opt)
keyset('i', '<C-X>',  '<ESC><ESC>dda', noremap_opt)
keyset('i', '<C-C>',  '<ESC><ESC>yya', noremap_opt)
keyset('i', '<C-B>',  '<ESC><ESC>pi', noremap_opt)
keyset('i', '<C-L>',  '<C-V>', noremap_opt)
keyset('i', '<S-TAB>','<C-V><TAB>', noremap_opt)



-- ========================= --
-- =      VISUAL MODE      =
-- ========================= --
keyset('v', 'd',      '"_d', noremap_opt)
keyset('v', 'c',      '"_c', noremap_opt)

keyset('v', '<BS>',   'd<ESC><ESC>i', noremap_opt)
keyset('v', '<C-A>',  '<ESC><ESC>gg<S-V>G', noremap_opt)
keyset('v', '<C-S>',  '<ESC><ESC>:w<CR>', noremap_opt)
keyset('v', '<C-Y>',  '<ESC><ESC><C-R>', noremap_opt)
keyset('v', '<C-R>',  '<C-Y>', noremap_opt)
keyset('v', '<C-Z>',  '<ESC><ESC>u', noremap_opt)
--keyset('v', '<C-X>',  '<CMD>lua visual_do("cut")<CR>', noremap_opt)
--keyset('v', '<C-C>',  '<CMD>lua visual_do("copy")<CR>', noremap_opt)
keyset('v', '<C-B>',  'p', noremap_opt)
keyset('v', 'v',      '<C-V>', noremap_opt)



-- ========================= --
-- =         Others        =
-- ========================= --
vim.cmd([[
  nnoremap <F12> :lua require("telescope.builtin").grep_string({layout_strategy='cursor',layout_config={width=0.5, height=0.45}})<CR>
  inoremap <F12> <ESC><ESC>:lua require('telescope.builtin').grep_string({layout_strategy='cursor',layout_config={width=0.5, height=0.45}})<CR>

  vnoremap <F2>  y/<C-R>=escape(@",'/\')<CR><CR>N:%s/<C-R>=escape(@",'/\')<CR>/<C-R>=escape(@",'/\')<CR>/g<Left><Left>
  vnoremap <F3>  y/<C-R>=escape(@",'/\')<CR><CR>N

  "map <ScrollWheelLeft>  <CMD>BufferNext<CR>
  "map <ScrollWheelRight> <CMD>BufferPrevious<CR>

  ca ff Telescope find_files
  ca fg Telescope live_grep
  ca fh Telescope help_tags
  ca fb Telescope buffers
  ca fk Telescope keymaps
  ca fc Telescope commands
  ca fch Telescope command_history
  ca fsh Telescope search_history
  ca fhl Telescope highlights
  ca ww SudaWrite
  ca synct lua sync_to()
]])
