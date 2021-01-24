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

" Adding new recipes based on text objects
" let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)

" Highlighting Support for VSCode
if exists('g:vscode')

    " Buns is if minimal highlighting option is selected
    highlight OperatorSandwichBuns guifg='#aa91a0' gui=underline ctermfg=172 cterm=underline 
    highlight OperatorSandwichChange guifg='#edc41f' gui=underline ctermfg='yellow' cterm=underline
    highlight OperatorSandwichAdd guibg='#b1fa87' gui=none ctermbg='green' cterm=none
    highlight OperatorSandwichDelete guibg='#cf5963' gui=none ctermbg='red' cterm=none
endif
