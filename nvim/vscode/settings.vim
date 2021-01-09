" Remaps to vscode's auto comment rather than use vim-commentary
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

" Better Navigation
nnoremap <silent> <M-k> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <M-k> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <M-i> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <M-i> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <M-j> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <M-j> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <M-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <M-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
