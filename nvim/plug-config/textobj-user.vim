" -- Comment Text Object --
" let g:textobj_comment_no_default_key_mappings = 1

" -- Entire file --
let g:textobj_entire_no_default_key_mappings = 1

" Mmnemonic: a for all (Also like <C-a> to select all in most applications)
omap aa <Plug>(textobj-entire-a)
xmap aa <Plug>(textobj-entire-a)

omap ia <Plug>(textobj-entire-i)
xmap ia <Plug>(textobj-entire-i)

" -- Column Text Object --
let g:textobj_wordcolumn_no_default_key_mappings = 1

call textobj#user#map('wordcolumn', {
            \ 'word' : {
            \   'select-i' : 'i\',
            \   'select-a' : 'a\',
            \   },
            \ 'WORD' : {
            \   'select-i' : 'i<bar>',
            \   'select-a' : 'a<bar>',
            \   },
            \ })
