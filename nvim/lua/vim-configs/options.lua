--[[
-   NOTE      - options.lua
-   Author    - Eira Chae
-
-   Created   - 2022.10.27
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]



-- Local variables for option
local vimset = vim.opt



-- ========================= --
-- =      set options      =
-- ========================= --
vimset.title = true             --show title
vimset.number = true            --show line number
vimset.ruler = true             --show advences
vimset.showmatch = true         --show matching brace
vimset.laststatus = 2           --show status bar always

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
vimset.numberwidth = 5          --number off set size 5
--[[
vimset.shiftwidth = 2           --shift size 2 columns
vimset.softtabstop = 2          --tab size 2 columns
vimset.expandtab = true         --insert space instead tab
]]
--set visualbell                --show visually when bell was rung
--set laststatus                --remember 2 last status
vimset.wrapscan = true          --auto back when searching
vimset.ignorecase = true        --ignore CAPS when searching
vimset.incsearch = false        --disable auto move in searching
vimset.hlsearch = true          --last search highlighting
--vimset.cursorline = true        --cursor highlighting

vimset.encoding = 'utf-8'       --file encoding settings
vimset.fencs = 'utf-8,cp949,cp932,euc-jp,shift-jis,ucs-2le,latin1,big5'
vimset.clipboard = 'unnamedplus'
--set t_Co=256                  --theme settings
--set t_ut=
--set completeopt=menu,menuone,noselect



-- ========================= --
-- =     ctags options     =
-- ========================= --
vimset.tags = '/home/docker/work/gncs/tags'



-- ========================= --
-- =   vim script options  =
-- ========================= --
vim.cmd([[

  function! UseTabs()
    set shiftwidth=8      " Size of an indentation (sw).
    set softtabstop=0     " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
    set noexpandtab       " Always uses tabs instead of space characters (noet).
    set cindent           " C Style indent
  endfunction

  function! UseSpaces()
    set shiftwidth=2      " Size of an indentation (sw).
    set softtabstop=2     " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
    set expandtab         " Always uses spaces instead of tab characters (et).
  endfunction

  function! s:empty_message(timer)
    if mode() ==# 'n'
      echon ''
    endif
  endfunction

  " verbose set? -find where is the last [set]
  filetype plugin indent off
  syntax on

  autocmd VimEnter * if &filetype ==# 'gitcommit' | echo 'gitcommit' | else | exec "normal \<F48>" | endif

  autocmd FileType *          call UseSpaces()
  autocmd FileType make       call UseTabs()
  autocmd FileType c          call UseTabs()
  autocmd FileType cpp        call UseTabs()
  autocmd FileType gitcommit  call UseTabs()
  "autocmd BufWritePost *.c,*.h silent! !ctags -R &

  augroup cmd_msg_clear
    autocmd!
    autocmd CmdlineLeave : call timer_start(2000, funcref('s:empty_message'))
  augroup END

  augroup gitcommit_autoclose
    autocmd!
    autocmd FileType gitcommit nnoremap <C-s> :wq<CR>
    autocmd FileType gitcommit inoremap <C-s> <ESC><ESC>:wq<CR>
    autocmd FileType gitcommit vnoremap <C-s> <ESC><ESC>:wq<CR>
  augroup END

  augroup help_as_buffer
    autocmd!
    autocmd FileType help exec "normal L"
    autocmd FileType help set buflisted
  augroup END

]])
