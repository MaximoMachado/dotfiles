" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Highlight unique letters in each word for f/t
    Plug 'unblevable/quick-scope'
    " Allows easy changing of surrounding chars
    Plug 'machakann/vim-sandwich'
    " Swap text in two locations
    Plug 'tommcdo/vim-exchange'
    " Highlighted Yank
    Plug 'machakann/vim-highlightedyank'    

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

    if exists('g:vscode')
        Plug 'MaximoMachado/vscode-easymotion'
    else
        " LaTeX Support
        " Plug 'lervag/vimtex'
        " Commenting
        Plug 'tpope/vim-commentary'
        " Debugger
        " Plug 'puremourning/vimspector'
        " Which Key
        Plug 'liuchengxu/vim-which-key'
        " Better Syntax Support
        Plug 'sheerun/vim-polyglot'
        " Markdown Preview
        Plug 'JamshedVesuna/vim-markdown-preview'
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
        Plug 'airblade/vim-rooter'
        " Git integration
        Plug 'airblade/vim-gitgutter'
        Plug 'tpope/vim-fugitive'
        Plug 'junegunn/gv.vim'
        " New Motions/Motion Addons
        " Plug 'justinmk/vim-sneak'
        Plug 'easymotion/vim-easymotion'
        " Lua Scripts
        Plug 'norcalli/nvim-colorizer.lua'
    endif
call plug#end()

