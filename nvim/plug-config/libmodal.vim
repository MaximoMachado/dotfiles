
" Tab Mode bindings
nnoremap <silent> <unique> <Plug>(TabmodeEnter) <Cmd>lua require('modes/tabmode')()<CR>
nmap <silent> <unique> <leader><Tab> <Plug>(TabmodeEnter)
