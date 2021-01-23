" Tries to make use of current neovim setup for vim compatibility
" auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Plugin Setup
call plug#begin('~/.config/nvim/autoload/plugged')

    " Highlight unique letters in each word for f/t
    Plug 'unblevable/quick-scope'
    " Swap text in two locations
    Plug 'tommcdo/vim-exchange'
    " Highlighted Yank
    Plug 'machakann/vim-highlightedyank'    

    " Allows easy changing of surrounding chars
    Plug 'machakann/vim-sandwich'

    " Custom Text Objects Framework
    Plug 'kana/vim-textobj-user'
    " Function Arguments (i, a,)
    Plug 'sgur/vim-textobj-parameter'
    " Variable Segments for camel and snake case (iv av)
    Plug 'Julian/vim-textobj-variable-segment'
    " Current line (il al)
    Plug 'kana/vim-textobj-line'
    " Entire File (ie ae)
    Plug 'kana/vim-textobj-entire'
    " Comments (ia aa aA) (Remapped in config)
    Plug 'glts/vim-textobj-comment'
    " Vertical Column
    Plug 'idbrii/textobj-word-column.vim'

    " Commenting
    Plug 'tpope/vim-commentary'
    " Which Key
    Plug 'liuchengxu/vim-which-key'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Theme
    Plug 'joshdick/onedark.vim'

    " Smooth Scrolling
    Plug 'psliwka/vim-smoothie'
    " fzf Installation
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Changes current directory to project directory for better searching
    Plug 'airblade/vim-rooter'
    " Git integration
    Plug 'airblade/vim-gitgutter'
    Plug 'easymotion/vim-easymotion'
call plug#end()

" Sourcing neovim config files

" General Settings
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

source $HOME/.config/nvim/plug-config/highlightedyank.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/plug-config/sandwich.vim

source $HOME/.config/nvim/plug-config/textobj-user.vim

" Themes
source $HOME/.config/nvim/themes/onedark.vim

" Plugin Setup
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim

source $HOME/.config/nvim/plug-config/quickscope.vim

" Make sure automatic new-line comments are gone
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Overwriting Neovim Settings
set nobackup
set nowritebackup
set notermguicolors
set showmode
