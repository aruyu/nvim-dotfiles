--[[
-   NOTE      - options.lua
-   Author    - Aru
-
-   Created   - 2022.10.27
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



-- Require lua string utils.
package.path = package.path .. ";../utils"
require("utils.string")

-- Locals for option.
local vimset = vim.opt

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.auto_sync()
  local is_documents = vim.fn.getcwd():contains('Documents')
  local filetype = vim.api.nvim_eval('&filetype')

  if is_documents and filetype ~= 'gitcommit' then
    vim.cmd([[
      !rsync -avxHAXP --include={'gitconfig','.gitconfig'} --exclude={'.*','tools','LICENSE','*.md'} ~/Documents/nvim-dotfiles/* ~/.config/
      !rsync -avxHAXP --include={'zsh','.zshrc'} --exclude={'.*','tools','LICENSE','*.md'} ~/Documents/openbox-dotfiles/* ~/.config/
    ]])
    vim.api.nvim_feedkeys(t('<CR>'), 'n', true)
  end
end


-- ========================= --
-- =      set options      =
-- ========================= --
vimset.title = true             --show title
vimset.number = true            --show line number
vimset.ruler = true             --show advences
vimset.showmatch = true         --show matching brace
vimset.laststatus = 2           --show status bar always
vimset.termguicolors = true

--set bs=indent,eol,start       --use backspace
--set mouse=a                   --use mouse as VISUAL MODE
--set ttymouse=sgr              --use mouse fix in WSL
--set nocompatible              --use arrow keys
--set esckeys                   --use ESC fix when mapping
vimset.hidden = true            --use fix Buffermove
vimset.wildmenu = true          --use tab automake list
vimset.wrap = false             --not use auto window size

vimset.autoindent = true        --auto indent
vimset.smartindent = true       --smart indent
vimset.numberwidth = 5          --offset size 5

--vimset.shiftwidth = 2           --shift size 2 columns
--vimset.softtabstop = 2          --tab size 2 columns
--vimset.expandtab = true         --insert space instead tab

--set visualbell                --show visually when bell was rung
--set laststatus                --remember 2 last status
vimset.wrapscan = true          --auto back when searching
vimset.ignorecase = true        --ignore CAPS when searching
vimset.incsearch = false        --disable auto move in searching
vimset.hlsearch = true          --last search highlighting
--vimset.cursorline = true        --cursor highlighting

vimset.encoding = 'utf-8'       --file encoding settings
vimset.fencs = 'utf-8,cp949,cp932,euc-jp,shift-jis,ucs-2le,latin1,big5'
--vimset.clipboard:append { 'unnamedplus' }
--set t_Co=256                  --theme settings
--set t_ut=
--set completeopt=menu,menuone,noselect



-- ========================= --
-- =     ctags options     =
-- ========================= --
--vimset.tags = '/home/user/work/gncs/tags'



-- ========================= --
-- =   vim script options  =
-- ========================= --
vim.cmd([[

  function! s:empty_message(timer)
    if mode() ==# 'n'
      echon ''
    endif
  endfunction

  " verbose set -find where is the last [set]
  " syntax on

  augroup vim_posts
    autocmd!
    autocmd VimEnter * if &filetype ==# 'gitcommit' | echo 'gitcommit' | else | exec "normal \<F48>" | endif
    "autocmd BufWritePost *.c,*.h silent! !ctags -R &
  augroup END

  augroup autoclear_cmd_msg
    autocmd!
    autocmd CmdlineLeave : call timer_start(2000, funcref('s:empty_message'))
  augroup END

  augroup autosync_nvim
    autocmd!
    autocmd BufWritePost * lua auto_sync()
  augroup END

  augroup autoclose_gitcommit
    autocmd!
    autocmd FileType gitcommit nnoremap <C-S> :wq<CR>
    autocmd FileType gitcommit inoremap <C-S> <ESC><ESC>:wq<CR>
    autocmd FileType gitcommit vnoremap <C-S> <ESC><ESC>:wq<CR>
    autocmd FileType gitcommit nnoremap <C-D> :qa!<CR>
    autocmd FileType gitcommit inoremap <C-D> <ESC><ESC>:qa!<CR>
    autocmd FileType gitcommit vnoremap <C-D> <ESC><ESC>:qa!<CR>
  augroup END

  augroup default_map_nvimtree
    autocmd!
    autocmd FileType NvimTree nnoremap <buffer> <ScrollWheelUp> <ScrollWheelUp>
    autocmd FileType NvimTree nnoremap <buffer> <ScrollWheelDown> <ScrollWheelDown>
    autocmd FileType NvimTree vnoremap <buffer> <ScrollWheelUp> <ScrollWheelUp>
    autocmd FileType NvimTree vnoremap <buffer> <ScrollWheelDown> <ScrollWheelDown>
  augroup END

  augroup help_as_buffer
    autocmd!
    autocmd FileType help exec "normal L"
    autocmd FileType help set buflisted
  augroup END

]])
