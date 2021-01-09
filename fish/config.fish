# Remove default greeting
set fish_greeting

# Set nvim as default editor
set -gx EDITOR nvim

# Set default node version for every shell
set -U nvm_default_version v14.15.4

# Alias
# Use fd like documentation
alias fd fdfind

# Abbreviations
# Map vim to neovim
abbr -a vim nvim

# Searching through the file system
# Find files in current directory
abbr ff 'fd --type f | fzf'
# Find directories in current directory
abbr fdir 'fd --type d | fzf'
# Find files and directories in home directory
abbr fh 'fd . ~ | fzf'

# Common directory shortcuts
# Go to college directory
abbr cds 'cd ~/Documents/college'
# Quickly go to .config folder
abbr cdc 'cd ~/.config'
# Nvim config
abbr cdcn 'cd ~/.config/nvim'
# Fish config
abbr cdcf 'cd ~/.config/fish'

# Git Abbreviations
abbr -a gitco git checkout
abbr -a gitcoma 'git add -A && git commit -m'
abbr -a gitcob git checkout -b
abbr -a gitlol git log --graph --oneline --decorate --color --all
abbr -a gitdf git diff HEAD
abbr -a gits git status
