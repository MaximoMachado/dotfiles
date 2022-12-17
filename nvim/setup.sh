#!/usr/bin/env sh

# Installs plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install Nerd Font from git repo
mkdir -p ~/.local/share/fonts/ && cp -Rf ./nerd-fonts ~/.local/share/fonts/

fc-cache -f -v

echo 'Run :PlugInstall in vim to install plugins.'
echo 'Vim setup has ended.'
