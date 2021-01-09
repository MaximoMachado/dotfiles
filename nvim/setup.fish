#!/usr/bin/env fish

# Installs neovim packages in various package managers
sudo pip3 install pynvim
sudo npm -g install neovim

echo 'Neovim Setup has ended.'
echo 'Run :PlugInstall in nvim to install plugins.'
echo 'Install clangd in your preferred package manager to use the corresponding COC extension.'
echo 'Install markdown in your preferred package manager to use the markdown plugin.'
echo 'Install xdotool in your preferred package manager to use the markdown plugin.'
