"==
"   NOTE      - general.vim
"   Author    - Eira Chae
"
"   Created   - 2022.10.21
"   Github    - https://github.com/vine91
"   Contact   - vine9151@gmail.com
"/




" =============================================
" =               VIM Settings                =
" =============================================
" ------------------------
"         VIM set
" ------------------------
set title		"show title
set number		"show line number
set ruler		"show advences
set showmatch		"show matching brace
set laststatus=2	"show status bar always

"set bs=indent,eol,start "use backspace
"set mouse=a		"use mouse as VISUAL MODE
"set ttymouse=sgr	"use mouse fix in WSL
"set nocompatible	"use arrow keys
set wildmenu		"use tab automake list
set nowrap		"not use auto window size
"set esckeys		"use ESC fix when mapping
set hidden		"use fix Buffermove

set cindent		"C style indent
set autoindent		"auto indent
set smartindent		"smart indent
set expandtab		"insert space instead tab
set shiftwidth=4	"shift size 4 columns
set softtabstop=4	"tab size 4 columns
set numberwidth=5	"number offset size 5

"set visualbell    	"show visually when bell was rung
"set laststatus    	"remember 2 last status
set wrapscan		"auto back when searching
set ignorecase		"ignore CAPS when searching
set incsearch		"keyword search increasing
set hlsearch		"last search highlighting

set encoding=utf-8	"file encoding settings
set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,ucs-2le,latin1,big5
set clipboard=unnamedplus
"set t_Co=256		"theme settings
"set t_ut=              "

set tags=/home/docker/work/gncs/tags


" ------------------------
"       VIM autocmd
" ------------------------
autocmd BufNewFile,BufReadPost Makefile set noexpandtab
"autocmd BufWritePost *.c,*.h silent! !ctags -R &
autocmd VimEnter * exec "normal \<F48>"
augroup help_as_buffer
  autocmd!
  autocmd FileType help exec "normal L"
  autocmd FileType help set buflisted
augroup END


" ------------------------
"       VIM others
" ------------------------
ca ww SudaWrite
syntax on
colorscheme codedark
