"==
"   NOTE      - mappings.vim
"   Author    - Eira Chae
"
"   Created   - 2022.10.27
"   Github    - https://github.com/vine91
"   Contact   - vine9151@gmail.com
"/




" =============================================
" =             Mapping Settings             =
" =============================================
" ------------------------
"       NORMAL MODE
" ------------------------
nnoremap ZZ zz
nnoremap <C-S>  :w<CR>
nnoremap <C-Z>  u
nnoremap <C-X>  dd
nnoremap <C-C>  yy
nnoremap <C-V>  p
nnoremap <TAB>  <Plug>AirlineSelectNextTab
nnoremap <S-TAB> <Plug>AirlineSelectPrevTab

nnoremap <F1>   :stop<CR>
nnoremap <F13>  :qa<CR>
nnoremap <F2>   /<CR>N:%s///g<Left><Left>
nnoremap <F3>   /<CR>N
nnoremap <F4>   :noh<CR>
nnoremap <silent> <F9>  :silent! bp<BAR>sp<BAR>bn<BAR>bd<CR>
nnoremap <silent> <F33> :silent! bp<BAR>sp<BAR>bn<BAR>bd!<CR>
nnoremap <silent> <F10> :NvimTreeClose<CR>:TagbarClose<CR>:silent! q<CR>:NvimTreeOpen<CR>:TagbarOpen<CR>20-l
nnoremap <silent> <F34> :NvimTreeClose<CR>:TagbarClose<CR>:silent! q!<CR>:NvimTreeOpen<CR>:TagbarOpen<CR>20-l
nnoremap <F11>  vL
nnoremap <F35>  L
nnoremap <F12>  :UltiSnipsEdit<CR>L
nnoremap <F36>  fL
nnoremap <F48>  :NvimTreeClose<CR>:TagbarClose<CR>:NvimTreeOpen<CR>:TagbarOpen<CR>20-l

nnoremap 1 <Plug>AirlineSelectTab1
nnoremap 2 <Plug>AirlineSelectTab2
nnoremap 3 <Plug>AirlineSelectTab3
nnoremap 4 <Plug>AirlineSelectTab4
nnoremap 5 <Plug>AirlineSelectTab5
nnoremap 6 <Plug>AirlineSelectTab6
nnoremap 7 <Plug>AirlineSelectTab7
nnoremap 8 <Plug>AirlineSelectTab8
nnoremap 9 <Plug>AirlineSelectTab9


" ------------------------
"       INSERT MODE
" ------------------------
inoremap      <ESC><ESC>vbda
"inoremap <C-BS> <ESC><ESC>vbda
inoremap <C-S>  <ESC><ESC>:w<CR>
inoremap <C-Z>  <ESC><ESC>ua
inoremap <C-X>  <ESC><ESC>dda
inoremap <C-C>  <ESC><ESC>yya
inoremap <C-V>  <ESC><ESC>pa
inoremap <C-L>  <C-V>
inoremap <S-TAB> <C-V><TAB>

inoremap <F1>   <ESC><ESC>:stop<CR>
inoremap <F13>  <ESC><ESC>:qa<CR>
inoremap <F2>   <ESC><ESC>/<CR>N:%s///g<Left><Left>
inoremap <F3>   <ESC><ESC>/<CR>N
inoremap <F4>   <ESC><ESC>:noh<CR>
inoremap <silent> <F9>  <ESC><ESC>:silent! bp<BAR>sp<BAR>bn<BAR>bd<CR>
inoremap <silent> <F33> <ESC><ESC>:silent! bp<BAR>sp<BAR>bn<BAR>bd!<CR>
inoremap <silent> <F10> <ESC><ESC>:NvimTreeClose<CR>:TagbarClose<CR>:silent! q<CR>:NvimTreeOpen<CR>:TagbarOpen<CR>20-l
inoremap <silent> <F34> <ESC><ESC>:NvimTreeClose<CR>:TagbarClose<CR>:silent! q!<CR>:NvimTreeOpen<CR>:TagbarOpen<CR>20-l
inoremap <F11>  <ESC><ESC>vL
inoremap <F35>  <ESC><ESC>L
inoremap <F12>  <ESC><ESC>:UltiSnipsEdit<CR>L
inoremap <F36>  <ESC><ESC>fL
inoremap <F48>  <ESC><ESC>:NvimTreeClose<CR>:TagbarClose<CR>:NvimTreeOpen<CR>:TagbarOpen<CR>20-l


" ------------------------
"       VISUAL MODE
" ------------------------
vnoremap <BS>   d<ESC><ESC>a
vnoremap <C-S>  <ESC><ESC>:w<CR>
vnoremap <C-Z>  <ESC><ESC>u
vnoremap <C-X>  d<ESC><ESC>
vnoremap <C-C>  y<ESC><ESC>
vmap     <C-V>  d<ESC><ESC>P<ESC><ESC>
vnoremap v <C-V>

vnoremap <F1>   <ESC><ESC>:stop<CR>
vnoremap <F13>  <ESC><ESC>:qa<CR>
vnoremap <F2>   y/<C-R>=escape(@",'/\')<CR><CR>N:%s/<C-R>=escape(@",'/\')<CR>/<C-R>=escape(@",'/\')<CR>/g<Left><Left>
vnoremap <F3>   y/<C-R>=escape(@",'/\')<CR><CR>N
vnoremap <F4>   <ESC><ESC>:noh<CR>
vnoremap <silent> <F9>  <ESC><ESC>:silent! bp<BAR>sp<BAR>bn<BAR>bd<CR>
vnoremap <silent> <F33> <ESC><ESC>:silent! bp<BAR>sp<BAR>bn<BAR>bd!<CR>
vnoremap <silent> <F10> <ESC><ESC>:NvimTreeClose<CR>:TagbarClose<CR>:silent! q<CR>:NvimTreeOpen<CR>:TagbarOpen<CR>20-l
vnoremap <silent> <F34> <ESC><ESC>:NvimTreeClose<CR>:TagbarClose<CR>:silent! q!<CR>:NvimTreeOpen<CR>:TagbarOpen<CR>20-l
vnoremap <F11>  <ESC><ESC>vL
vnoremap <F35>  <ESC><ESC>L
vnoremap <F12>  <ESC><ESC>:UltiSnipsEdit<CR>L
vnoremap <F36>  <ESC><ESC>fL
vnoremap <F48>  <ESC><ESC>:NvimTreeClose<CR>:TagbarClose<CR>:NvimTreeOpen<CR>:TagbarOpen<CR>20-l
