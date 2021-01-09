" Remaps to vscode's auto comment rather than use vim-commentary
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

" Better Navigation
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-i> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-i> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

" Use <C-a> as vscode binds Alt already
nnoremap <C-a> gg<C-v>G$