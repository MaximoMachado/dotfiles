# Remove default greeting
set fish_greeting

# Set nvim as default editor
set -gx EDITOR nvim

# Set default node version for every shell
set -U nvm_default_version v14.15.4

# Add deno to path
set -x DENO_INSTALL /home/maximo/.deno
set -x PATH $DENO_INSTALL/bin:$PATH

# Set manpager to neovim
set -x MANPAGER 'nvim +Man!'

# Alias
# Use fd like documentation
alias fd fdfind

# Abbreviations
# System Commands
# Some nice defaults for listing all
abbr -a la 'ls -lA --group-directories-first'
# Map to interactive versions
abbr -a mv 'mv -i'
abbr -a cp 'cp -i'
abbr -a rm 'rm -I'

# Searching through the file system
# Find files in current directory
abbr -a ff 'fd --type f | fzf'
# Find directories in current directory
abbr -a fdir 'fd --type d | fzf'
# Find files and directories in home directory
abbr -a fcd 'cd (fd --type d . ~ | fzf --preview="tree -CL 2 {}" || echo "./")'
# Find hidden files as well
abbr -a fhcd 'cd (fd -H --type d . ~ | fzf --preview="tree -CL 2 {}" || echo "./")'
# Search apt packages and install one
abbr -a fapt 'sudo apt install (apt list | rg -o ".*?/" | sed \'s/.$//\' | fzf -m --preview="apt info {}")'

# Common directory shortcuts
# Go to college directory
abbr -a cds 'cd ~/Documents/college'
# Quickly go to .config folder
abbr -a cdc 'cd ~/.config'
# Nvim config
abbr -a cdcn 'cd ~/.config/nvim'
# Fish config
abbr -a cdcf 'cd ~/.config/fish'

# Nvim Add current directory to plugin runtime path
abbr -a nvimd 'nvim --cmd "set rtp+=$PWD" --cmd "let g:vimperfect_dev = 1"'

# Git Abbreviations
abbr -a gitco git checkout
abbr -a gitcoma 'git add -A && git commit -m'
abbr -a gitcob git checkout -b
abbr -a gitlol git log --graph --oneline --decorate --color --all
abbr -a gitdf git diff HEAD
abbr -a gits git status

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/maximo/miniconda2/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

alias mon2cam="deno run --unstable -A -r -q https://raw.githubusercontent.com/ShayBox/Mon2Cam/master/src/mod.ts"
