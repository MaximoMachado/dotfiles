" Config based off of Christian Chiarulli's

syntax enable                           " Enables syntax highlighing
set termguicolors                       " Enable True Color
set hidden                              " Required to keep multiple buffers open multiple buffers
set whichwrap+=<,>,[,],h,l
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set relativenumber                      " Relative to current line
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=1                       " Hides tabline when only 1 tab
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=1000                     " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set incsearch                           " Searches as you type
set undofile                            " Persistent undos on reboots and file exits
set formatoptions-=cro                  " Stop newline continuation of comments (Doesn't work)

set wrap                                " Text wraps to stay on screen
set linebreak                           " Line breaks on word rather than character
set ignorecase                          " Case insensitive search when lowercase
set smartcase                           " Case sensitive search when character is uppercase
set noerrorbells visualbell t_vb=       " Disable audible bell because it's annoying.


" Neovim specific features
if has('nvim')
    set inccommand=nosplit              " Shows substitution results as you type
end

