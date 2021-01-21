" Personal Configs
" Free/Useless Keys that can be rebound
" Q - enters Ex Mode by default
" - - Goes up a line but cursor is on first non-whitespace character
" + - goes down a line but cursor is on first non-whitespace character

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

" Map capital Y to behave more like D and C
nnoremap Y y$

if exists('g:vscode')
    " Simulate same TAB behavior in VSCode
    nmap <Tab> :Tabnext<CR>
    nmap <S-Tab> :Tabprev<CR>
else
    " Mappings from Christian Chiarulli (Modified to use ijkl)
    " Window navigation to ijkl
    nnoremap <C-k> <C-w>k
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
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
