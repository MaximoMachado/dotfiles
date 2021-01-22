" -- Comment Text Object --
let g:textobj_comment_no_default_key_mappings = 1

" Remap to a from c (Mmenomic is an 'Aside' instead of a 'Comment')
onoremap aa <Plug>(textobj-comment-a)
xnoremap aa <Plug>(textobj-comment-a)

onoremap aA <Plug>(textobj-comment-big-a)
xnoremap aA <Plug>(textobj-comment-big-a)

onoremap ia <Plug>(textobj-comment-i)
xnoremap ia <Plug>(textobj-comment-i)

" -- Column Text Object --
let g:textobj_wordcolumn_no_default_key_mappings = 1

call textobj#user#map('wordcolumn', {
            \ 'word' : {
            \   'select-i' : 'ij',
            \   'select-a' : 'aj',
            \   },
            \ 'WORD' : {
            \   'select-i' : 'iJ',
            \   'select-a' : 'aJ',
            \   },
            \ })
