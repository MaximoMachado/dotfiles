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
    
    " Plugin Setup
    source $HOME/.config/nvim/keys/which-key.vim
    source $HOME/.config/nvim/plug-config/fzf.vim
    luafile $HOME/.config/nvim/lua/plug-colorizer.lua

    if !exists('g:started_by_firenvim')
        luafile $HOME/.config/nvim/lua/galaxyline-config.lua
        source $HOME/.config/nvim/plug-config/coc.vim
        source $HOME/.config/nvim/plug-config/coc-extensions.vim
        source $HOME/.config/nvim/plug-config/gitgutter.vim
        source $HOME/.config/nvim/plug-config/tmux-navigator.vim
        luafile $HOME/.config/nvim/lua/treesitter.lua
        luafile $HOME/.config/nvim/lua/treesitter-playground.lua
    else
        source $HOME/.config/nvim/plug-config/firenvim.vim
    end
else
    source $HOME/.config/nvim/vscode/settings.vim    
endif

source $HOME/.config/nvim/plug-config/quickscope.vim
luafile $HOME/.config/nvim/lua/treesitter-textobjs.lua

" Make sure automatic new-line comments are gone
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


