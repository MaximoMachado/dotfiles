" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'tpope/vim-repeat'
    Plug 'unblevable/quick-scope'
    Plug 'tpope/vim-surround'
    " Highlighted Yank
    Plug 'machakann/vim-highlightedyank'    

    if exists('g:vscode')
        Plug 'MaximoMachado/vscode-easymotion'
    else
        " Commenting
        Plug 'tpope/vim-commentary'
        " Debugger
        Plug 'puremourning/vimspector'
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

