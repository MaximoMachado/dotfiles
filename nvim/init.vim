" TODO Use the custom mode plugin to create a buffer navigation/management mode
" Can use - (window is 2D) or capital S (switch mode) to enter mode
" In that mode, Tab/Shift Tab go to next/prev buffer
" Movement keys change which split you are in (Currently use Alt+hjkl for it)
" (count)G goes to that number buffer
" - and | for horizontal/vertical splits
" (count)d to delete that number buffer or dd to delete current buffer
" y and p could be used to move a buffer from one split to another

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
else
    source $HOME/.config/nvim/vscode/settings.vim    
endif

source $HOME/.config/nvim/plug-config/quickscope.vim

" Make sure automatic new-line comments are gone
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


