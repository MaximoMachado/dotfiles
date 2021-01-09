let g:vimspector_base_dir=expand( '$HOME/.config/nvim/vimspector-config'  )
let g:vimspector_enable_mappings = 'HUMAN'

" Keybinds
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput
