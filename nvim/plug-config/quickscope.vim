" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']


if exists('g:vscode')
    highlight QuickScopePrimary guifg='#b1fa87' gui=underline,standout ctermfg=193 cterm=underline
    highlight QuickScopeSecondary guifg='#ff7a99' gui=underline,standout ctermfg=196 cterm=underline
else
    highlight QuickScopePrimary guifg='#b1fa87' gui=underline ctermfg=193 cterm=underline
    highlight QuickScopeSecondary guifg='#ff7a99' gui=underline ctermfg=196 cterm=underline
end

let g:qs_max_chars=1000
