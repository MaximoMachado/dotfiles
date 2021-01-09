" Personal Configs

let g:mapleader=" "
nnoremap <Space> <Nop>

" Map hjkl to be ijkl (i.e. like WASD)
map i <Up>
map j <Left>
map k <Down>
noremap h i

" Command to select everything (like Ctrl+A)
nnoremap <M-a> gg0<C-v>G$

" BETTER TABBING
vnoremap < <gv
vnoremap > >gv

if exists('g:vscode')
    " Simulate same TAB behavior in VSCode
    nmap <Tab> :Tabnext<CR>
    nmap <S-Tab> :Tabprev<CR>
else
    " Mappings from Christian Chiarulli (Modified to use ijkl)
    " Window navigation to ijkl
    nnoremap <C-i> <C-w>k
    nnoremap <C-j> <C-w>h
    nnoremap <C-k> <C-w>j
    nnoremap <C-l> <C-w>l

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
