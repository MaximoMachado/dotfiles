" Remaps to vscode's auto comment rather than use vim-commentary
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

" Rename symbol
nnoremap gr :call VSCodeNotify('editor.action.rename')<CR>

" Window Splits
nmap <leader><bar> <C-w>v
nmap <leader>- <C-w>s

" Better Navigation
nnoremap <silent> <M-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <M-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <M-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <M-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <M-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <M-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <M-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <M-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
