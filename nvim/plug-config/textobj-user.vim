" -- Comment Text Object --
let g:textobj_comment_no_default_key_mappings = 1

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
