" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Syntax Tree to allow highlighting / text objects
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Text objects for functions, classes, blocks, etc.
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

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
    
    if exists('g:vscode')
        Plug 'MaximoMachado/vscode-easymotion'
    else
        " View Treesitter Information
        Plug 'nvim-treesitter/playground', { 'on': 'TSPlaygroundToggle' }
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
        " COC Stable Version
        Plug 'neoclide/coc.nvim', { 'branch': 'release' }
        " Status Bar 
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " fzf Installation
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        " Changes current directory to project directory for better searching
        Plug 'airblade/vim-rooter'
        " Git integration
        Plug 'airblade/vim-gitgutter'
        " Don't use these, maybe another time
        " Plug 'tpope/vim-fugitive'
        " Plug 'junegunn/gv.vim'
        " New Motions/Motion Addons
        " Plug 'justinmk/vim-sneak'
        Plug 'easymotion/vim-easymotion'
        " Lua Scripts
        Plug 'norcalli/nvim-colorizer.lua'
    endif
call plug#end()

