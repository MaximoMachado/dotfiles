" Free/Useless Keys that can be rebound
" Personal Configs
" Normal Q - enters Ex Mode by default
" Normal - - Goes up a line but cursor is on first non-whitespace character
" Normal + - goes down a line but cursor is on first non-whitespace character
" Normal _ - goes down (count - 1) lines (can just use <CR> with a count one less)

let g:mapleader=" "
nnoremap <Space> <Nop>

" Map hjkl to be ijkl (i.e. like WASD)
" map i <Up>
" map j <Left>
" map k <Down>
" noremap h i

" Command to select everything (like Ctrl+A)
" No longer needed thanks to entire buffer text object
" nnoremap <M-a> gg0<C-v>G$

" By default enters Ex mode which isn't very useful
nnoremap Q <Nop>

" Map capital Y to behave more like D and C
nnoremap Y y$

" BETTER TABBING
xnoremap < <gv
xnoremap > >gv

" Paste that only uses yanked text
nnoremap <leader>p "0p
nnoremap <leader>p "0P

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

if exists('g:vscode')
    " Simulate same TAB behavior in VSCode
    nmap <Tab> :Tabnext<CR>
    nmap <S-Tab> :Tabprev<CR>
else
    " Mappings from Christian Chiarulli

    " Easy splits
    nnoremap <leader><bar> :vsplit<CR>
    nnoremap <leader>- :split<CR>

    " Window navigation to hjkl
    nnoremap <leader>k <C-w>k
    nnoremap <leader>h <C-w>h
    nnoremap <leader>j <C-w>j
    nnoremap <leader>l <C-w>l

    " jj to escape
    inoremap jj <Esc>

    " Use Ctrl + Arrow keys to resize windows
    nnoremap <silent> <C-Up>      :resize -2<CR>
    nnoremap <silent> <C-Down>    :resize +2<CR>
    nnoremap <silent> <C-Left>    :vertical resize -2<CR>
    nnoremap <silent> <C-Right>   :vertical resize +2<CR>

    " TAB in general mode will move to text buffer
    nnoremap <silent> <TAB> :bnext<CR>
    " SHIFT-TAB will go back
    nnoremap <silent> <S-TAB> :bprevious<CR>

    " Alternate way to save
    " nnoremap <silent> <C-s> :w<CR>
endif
