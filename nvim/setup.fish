#!/usr/bin/env fish

# Installs neovim packages in various package managers
sudo pip3 install pynvim
sudo npm -g install neovim

# Installs plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


echo 'Run :PlugInstall in nvim to install plugins.'
echo 'Install clangd in your preferred package manager to use the corresponding COC extension.'
echo 'Install xclip for better startup performance over xsel'
echo 'Neovim setup has ended.'
