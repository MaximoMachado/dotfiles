" Use vim-surround keybinds
runtime macros/sandwich/keymap/surround.vim

" Remap default keybind for vim-sandwich to capital S to avoid conflicting with sneak/easymotion

" Prevent default behavior of S if I wait too long to press next key
" map s <NOP>

let g:sandwich_no_default_key_mappings = 1

let g:operator_sandwich_no_default_key_mappings = 1

let g:textobj_sandwich_no_default_key_mappings = 1

" Text objects for queries and handles brackets
xmap iq <Plug>(textobj-sandwich-query-i)
xmap aq <Plug>(textobj-sandwich-query-a)
omap iq <Plug>(textobj-sandwich-query-i)
omap aq <Plug>(textobj-sandwich-query-a)

" Automatic Queries
xmap iqq <Plug>(textobj-sandwich-auto-i)
xmap aqq <Plug>(textobj-sandwich-auto-a)
omap iqq <Plug>(textobj-sandwich-auto-i)
omap aqq <Plug>(textobj-sandwich-auto-a)

" silent! nmap <unique> sa <Plug>(operator-sandwich-add)

" silent! xmap <unique> sa <Plug>(operator-sandwich-add)

" silent! omap <unique> sa <Plug>(operator-sandwich-g@)



" silent! nmap <unique><silent> sd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)

" silent! nmap <unique><silent> sr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)

" silent! nmap <unique><silent> sdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

" silent! nmap <unique><silent> srb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

