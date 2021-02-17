function! s:IsFirenvimActive(event) abort
  if !exists('*nvim_get_chan_info')
    return 0
  endif
  let l:ui = nvim_get_chan_info(a:event.chan)
  return has_key(l:ui, 'client') && has_key(l:ui.client, 'name') &&
      \ l:ui.client.name =~? 'Firenvim'
endfunction

function! OnUIEnter(event) abort
  if s:IsFirenvimActive(a:event)
    set secure
    set background=light
    colorscheme onedark
    set laststatus=0
    set showmode
    set columns=80
    set lines=25
    " Full screen and Minimize
    nnoremap <leader>= :set lines=500 columns=500<CR>
    nnoremap <leader>_ :set lines=25 columns=80<CR>

    " Website File Type
    let l:bufname=expand('%:t')
        if l:bufname =~? 'github.com'
            set filetype=markdown
        elseif l:bufname =~? 'w.overleaf.com'
            set filetype=latex
            set syntax=tex
        elseif l:bufname =~? 'www.gradescope.com'
            set filetype=latex
            set syntax=tex
        elseif l:bufname =~? 'cocalc.com' || l:bufname =~? 'kaggleusercontent.com'
            set filetype=python
        elseif l:bufname =~? 'localhost'
            " Jupyter notebooks don't have any more specific buffer information. If you
            " use some other locally hosted app you want editing function in, set it here.
            set filetype=python
        elseif l:bufname =~? 'reddit.com'
            set filetype=markdown
        elseif l:bufname =~? 'piazza.com'
            set filetype=markdown
        elseif l:bufname =~? 'stackexchange.com' || l:bufname =~? 'stackoverflow.com'
            set filetype=markdown
        elseif l:bufname =~? 'slack.com' || l:bufname =~? 'gitter.com'
            set filetype=markdown
        endif
    endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))

let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }
