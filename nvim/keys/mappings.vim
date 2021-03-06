" Free/Useless Keys that can be rebound
" Personal Configs
" Normal Q - enters Ex Mode by default
" Normal - - goes up a line but cursor is on first non-whitespace character
" Normal + - goes down a line but cursor is on first non-whitespace character
" Normal _ - goes down (count - 1) lines (can just use <CR> with a count one less)
" Normal S - redundant with functionality of 'cc'
" Normal R - replaces characters but only really useful if word entering is the same length

" ~ can become a new operator if below setting is turned on.
" Should be used with custom operator as default semi-redundant w/ gu and gU
" Default is to switch case of letters ex. eGG -> Egg
set tildeop

let g:mapleader=" "
" Prevent cursor moving over by one
nnoremap <Space> <Nop>

" By default enters Ex mode which isn't very useful
nnoremap Q <Nop>

" Map capital Y to behave more like D and C
nnoremap Y y$

" BETTER TABBING (Stays in visual mode after tabbing)
xnoremap < <gv
xnoremap > >gv

" Paste that only uses yanked text
nnoremap <leader>p "0p
nnoremap <leader>P "0P

" Create new line without entering insert mode
" Doesn't enter insert mode or move cursor so counts works correctly 
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

" Move current line up or down
" Works with counts so (count)<C-j> moves ~count~ lines below cursor down by a line
" Currently puts your cursor at the bottom of the selection after a move, incovenient if action is repeated
nnoremap <expr> <C-j> ':.,.' . v:count . 'm+' . v:count1 . '<CR>=='
nnoremap <expr> <C-k> ':.,.' . v:count . 'm-2<CR>=='

vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv

if !exists('g:vscode')
    " Easy splits
    nnoremap <leader><bar> :vsplit<CR>
    nnoremap <leader>- :split<CR>

    " jj to escape
    inoremap jj <Esc>

    " Use Alt + Arrow keys to resize windows
    nnoremap <silent> <M-Up>      :resize -2<CR>
    nnoremap <silent> <M-Down>    :resize +2<CR>
    nnoremap <silent> <M-Left>    :vertical resize +2<CR>
    nnoremap <silent> <M-Right>   :vertical resize -2<CR>

    " TAB in general mode will move to text buffer
    nnoremap <silent> gb :bnext<CR>
    " SHIFT-TAB will go back
    nnoremap <silent> gB :bprevious<CR>

endif
