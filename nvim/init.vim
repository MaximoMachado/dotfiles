" General Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

source $HOME/.config/nvim/plug-config/highlightedyank.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/plug-config/sandwich.vim

source $HOME/.config/nvim/plug-config/textobj-user.vim

if !exists('g:vscode')
    " Themes
    source $HOME/.config/nvim/themes/onedark.vim
    source $HOME/.config/nvim/themes/airline.vim

    " Plugin Setup
    " source $HOME/.config/nvim/plug-config/vimspector.vim
    source $HOME/.config/nvim/keys/which-key.vim
    source $HOME/.config/nvim/plug-config/fzf.vim
    source $HOME/.config/nvim/plug-config/coc.vim
    source $HOME/.config/nvim/plug-config/coc-extensions.vim
    luafile $HOME/.config/nvim/lua/plug-colorizer.lua
    " source $HOME/.config/nvim/plug-config/sneak.vim
    luafile $HOME/.config/nvim/lua/treesitter-playground.lua
else
    source $HOME/.config/nvim/vscode/settings.vim    
endif

source $HOME/.config/nvim/plug-config/quickscope.vim

luafile $HOME/.config/nvim/lua/treesitter.lua
" Make sure automatic new-line comments are gone
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Better nav for omnicomplete
" inoremap <expr> <C-k> ("\<C-n>")
" inoremap <expr> <C-i> ("\<C-p>")

