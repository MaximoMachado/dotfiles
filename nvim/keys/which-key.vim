" Register which key map
call which_key#register('<Space>', "g:which_key_map")

" Map leader to which key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Disable floating window
let g:which_key_use_floating_win = 0

" Hide status bar on activation
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

let g:which_key_map['|'] = 'Split Vertically'
let g:which_key_map['-'] = 'Split Horizontally'

let g:which_key_map['h'] = 'Left Window'
let g:which_key_map['j'] = 'Bottom Window'
let g:which_key_map['k'] = 'Top Window'
let g:which_key_map['l'] = 'Right Window'

let g:which_key_map['p'] = 'Paste Yanked After'
let g:which_key_map['P'] = 'Paste Yanked Before'

let g:which_key_map['o'] = 'Append New Line'
let g:which_key_map['O'] = 'Prepend New Line'

" See available text objects (Need to update manually)
let g:which_key_map['t'] = {
      \ 'name' : '+ List Text Objects' ,
      \ ',' : ['', 'Function Parameter'],
      \ 'f' : ['', 'Function'],
      \ 'c' : ['', 'Class'],
      \ 'a' : ['', 'Comment'],
      \ 'A' : ['', 'Comment and Whitespace (a only)'],
      \ 'e' : ['', 'Entire Buffer'],
      \ 'j' : ['', 'Column'],
      \ 'J' : ['', 'Big Word Column'],
      \ 'l' : ['', 'Line'],
      \ 'q' : ['', 'Query Character'],
      \ 'qq' : ['', 'Auto Query'],
      \ 'v' : ['', 'Variable Name Segment'],
      \ 's' : {
          \     'name' : '+ List Surround Objects',
          \     'f'    : ['', 'Function'],
          \     't'    : ['', 'HTML Tag'],
          \     'i'    : ['', 'Custom Head/Tail'],
          \     'c'    : ['', 'LaTex Import/Include'],
          \     'e'    : ['', 'LaTeX Environment'],
          \     'ma'   : ['', 'LaTeX Math Brackets'],
          \     'Ma'   : ['', 'LaTeX Big Math Brackets'],
          \   }
      \ }

" Plugins
let g:which_key_map['e'] = 'Explorer'
let g:which_key_map['a'] = 'Code Actions'
let g:which_key_map['ac'] = 'Code Actions on Buffer'
let g:which_key_map['f'] = 'Quick Fix'

let g:which_key_map[','] = 'Swap Argument Left'
let g:which_key_map['<'] = 'Swap Argument Right'

let g:which_key_map.s = {
      \ 'name' : '+ Search' ,
      \ 'b' : [':Buffers'      , 'Search Buffers'],
      \ 'm' : [':Marks'        , 'Marks'] ,
      \ 't' : [':Tags'         , 'Tags'],
      \ 'g' : [':Rg'           , 'Search File Content'],
      \ 'f' : [':FZF'          , 'Search Files'],
      \ }

" Git-Gutter Keys
let g:which_key_map.g = {
      \ 'name' : '+ Git' ,
      \ 'hs' : ['<Plug>(GitGutterStageHunk)'      , 'Stage Hunk'],
      \ 'hu' : ['<Plug>(GitGutterUndoHunk)'      , 'Undo Hunk'],
      \ 'hp' : ['<Plug>(GitGutterPreviewHunk)'      , 'Preview Hunk'],
      \ }

