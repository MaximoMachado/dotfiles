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
    " Vertical Column
    Plug 'idbrii/textobj-word-column.vim'

    if exists('g:vscode')
        Plug 'MaximoMachado/vscode-easymotion'
    else
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
        " Icons for Status Bar
        Plug 'kyazdani42/nvim-web-devicons'
        " Smooth Scrolling
        Plug 'psliwka/vim-smoothie'
        " New Motions/Motion Addons
        Plug 'easymotion/vim-easymotion'
        " Lua Scripts
        Plug 'norcalli/nvim-colorizer.lua'

        " Status Bar 
        Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

        " Seamless integration with Tmux
        Plug 'christoomey/vim-tmux-navigator'

        " fzf Installation
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        " Changes current directory to project directory for better searching
        Plug 'airblade/vim-rooter'
    endif
call plug#end()

