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

function _G.visual_do(feature)
  local present_column = vim.fn.col('.')
  local commands

  if feature == 'cut' then
    commands = 'd'
  elseif feature == 'copy' then
    commands = 'y'
  end

  if (vim.fn.getline('.'):sub(present_column, present_column)) == '' and (present_column ~= 1) then   -- check '\n'
    vim.api.nvim_feedkeys(t('<Left>'), 'n', true)
    vim.api.nvim_feedkeys(t(commands .. '<ESC><ESC>'), 'n', true)
  else
    vim.api.nvim_feedkeys(t(commands .. '<ESC><ESC>'), 'n', true)
  end
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
keyset('n', 'dd',     '"_dd', noremap_opt)

keyset('n', 'ZZ',     'zz', noremap_opt)
keyset('n', '<C-A>',  'gg<S-V>G', noremap_opt)
keyset('n', '<C-S>',  ':w<CR>', noremap_opt)
keyset('n', '<C-Y>',  '<C-R>', noremap_opt)
keyset('n', '<C-R>',  '<C-Y>', noremap_opt)
keyset('n', '<C-Z>',  'u', noremap_opt)
keyset('n', '<C-X>',  'dd', noremap_opt)
keyset('n', '<C-C>',  'yy', noremap_opt)
keyset('n', '<C-B>',  'p', noremap_opt)

keyset('n', '<F1>',   ':stop<CR>', noremap_opt)
keyset('n', '<F13>',  ':qa<CR>', noremap_opt)
keyset('n', '<F2>',   '/<CR>N:%s///g<Left><Left>', noremap_opt)
keyset('n', '<F3>',   '/<CR>N', noremap_opt)
keyset('n', '<F4>',   ':noh<CR>', noremap_opt)
keyset('n', '<F9>',   '<CMD>BufferClose<CR>', noremap_silent_opt)
keyset('n', '<F21>',  '<CMD>BufferClose!<CR>', noremap_silent_opt)
keyset('n', '<F10>',  '<CMD>NvimTreeClose<CR>:silent! close<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('n', '<F22>',  '<CMD>NvimTreeClose<CR>:silent! close!<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('n', '<F11>',  'vL', noremap_opt)
keyset('n', '<F23>',  'L', noremap_opt)
keyset('n', '<F24>',  '<CMD>UltiSnipsEdit<CR><CMD>BufferPrevious<CR>vL<CMD>BufferNext<CR>', noremap_opt)
keyset('n', '<F36>',  '<CMD>TSPlaygroundToggle<CR><CMD>TSEditQuery highlights<CR><CMD>BufferPrevious<CR>', noremap_opt)
keyset('n', '<F48>',  '<CMD>NvimTreeClose<CR><CMD>NvimTreeOpen<CR>15-l', noremap_opt)

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



-- ========================= --
-- =      INSERT MODE      =
-- ========================= --
keyset('i', '',     '<ESC><ESC>vbdi', noremap_opt) -- for wsl (window terminal)
keyset('i', '<C-BS>', '<ESC><ESC>vbdi', noremap_opt) -- for mac
keyset('i', '<M-BS>', '<ESC><ESC>vbdi', noremap_opt) -- for alacritty
keyset('i', '<C-A>',  '<ESC><ESC>gg<S-V>G', noremap_opt)
keyset('i', '<C-S>',  '<ESC><ESC>:w<CR>', noremap_opt)
keyset('i', '<C-Y>',  '<ESC><ESC><C-R>a', noremap_opt)
keyset('i', '<C-Z>',  '<ESC><ESC>ua', noremap_opt)
keyset('i', '<C-X>',  '<ESC><ESC>dda', noremap_opt)
keyset('i', '<C-C>',  '<ESC><ESC>yya', noremap_opt)
keyset('i', '<C-B>',  '<ESC><ESC>pi', noremap_opt)
keyset('i', '<C-L>',  '<C-V>', noremap_opt)
keyset('i', '<S-TAB>', '<C-V><TAB>', noremap_opt)

keyset('i', '<F1>',   '<ESC><ESC>:stop<CR>', noremap_opt)
keyset('i', '<F13>',  '<ESC><ESC>:qa<CR>', noremap_opt)
keyset('i', '<F2>',   '<ESC><ESC>/<CR>N:%s///g<Left><Left>', noremap_opt)
keyset('i', '<F3>',   '<ESC><ESC>/<CR>N', noremap_opt)
keyset('i', '<F4>',   '<ESC><ESC>:noh<CR>', noremap_opt)
keyset('i', '<F9>',   '<ESC><ESC><CMD>BufferClose<CR>', noremap_silent_opt)
keyset('i', '<F21>',  '<ESC><ESC><CMD>BufferClose!<CR>', noremap_silent_opt)
keyset('i', '<F10>',  '<ESC><ESC><CMD>NvimTreeClose<CR>:silent! close<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('i', '<F22>',  '<ESC><ESC><CMD>NvimTreeClose<CR>:silent! close!<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('i', '<F11>',  '<ESC><ESC>vL', noremap_opt)
keyset('i', '<F23>',  '<ESC><ESC>L', noremap_opt)
keyset('i', '<F24>',  '<ESC><ESC><CMD>UltiSnipsEdit<CR><CMD>BufferPrevious<CR>vL<CMD>BufferNext<CR>', noremap_opt)
keyset('i', '<F36>',  '<ESC><ESC><CMD>TSPlaygroundToggle<CR><CMD>TSEditQuery highlights<CR><CMD>BufferPrevious<CR>', noremap_opt)
keyset('i', '<F48>',  '<ESC><ESC><CMD>NvimTreeClose<CR><CMD>NvimTreeOpen<CR>15-l', noremap_opt)



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
keyset('v', '<C-X>',  '<CMD>lua visual_do("cut")<CR>', noremap_opt)
keyset('v', '<C-C>',  '<CMD>lua visual_do("copy")<CR>', noremap_opt)
keyset('v', '<C-B>',  'p', noremap_opt)
keyset('v', 'v',      '<C-V>', noremap_opt)

keyset('v', '<F1>',   '<ESC><ESC>:stop<CR>', noremap_opt)
keyset('v', '<F13>',  '<ESC><ESC>:qa<CR>', noremap_opt)
keyset('v', '<F4>',   '<ESC><ESC>:noh<CR>', noremap_opt)
keyset('v', '<F9>',   '<ESC><ESC><CMD>BufferClose<CR>', noremap_silent_opt)
keyset('v', '<F21>',  '<ESC><ESC><CMD>BufferClose!<CR>', noremap_silent_opt)
keyset('v', '<F10>',  '<ESC><ESC><CMD>NvimTreeClose<CR>:silent! close<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('v', '<F22>',  '<ESC><ESC><CMD>NvimTreeClose<CR>:silent! close!<CR><CMD>NvimTreeOpen<CR>15-l', noremap_silent_opt)
keyset('v', '<F11>',  '<ESC><ESC>vL', noremap_opt)
keyset('v', '<F23>',  '<ESC><ESC>L', noremap_opt)
keyset('v', '<F24>',  '<ESC><ESC><CMD>UltiSnipsEdit<CR><CMD>BufferPrevious<CR>vL<CMD>BufferNext<CR>', noremap_opt)
keyset('v', '<F36>',  '<ESC><ESC><CMD>TSPlaygroundToggle<CR><CMD>TSEditQuery highlights<CR><CMD>BufferPrevious<CR>', noremap_opt)
keyset('v', '<F48>',  '<ESC><ESC><CMD>NvimTreeClose<CR><CMD>NvimTreeOpen<CR>15-l', noremap_opt)



-- ========================= --
-- =         Others        =
-- ========================= --
vim.cmd([[
  nnoremap <F12>  :lua require("telescope.builtin").grep_string({layout_strategy='cursor',layout_config={width=0.5, height=0.45}})<CR>
  inoremap <F12>  <ESC><ESC>:lua require('telescope.builtin').grep_string({layout_strategy='cursor',layout_config={width=0.5, height=0.45}})<CR>
  vnoremap <F12>  <ESC><ESC>:lua require('telescope.builtin').grep_string({layout_strategy='cursor',layout_config={width=0.5, height=0.45}})<CR>

  vnoremap <F2>   y/<C-R>=escape(@",'/\')<CR><CR>N:%s/<C-R>=escape(@",'/\')<CR>/<C-R>=escape(@",'/\')<CR>/g<Left><Left>
  vnoremap <F3>   y/<C-R>=escape(@",'/\')<CR><CR>N

  map <Home>      <CMD>BufferPrevious<CR>
  map <End>       <CMD>BufferNext<CR>

  ca ff Telescope find_files
  ca fg Telescope grep_string
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
