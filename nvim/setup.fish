#!/usr/bin/env fish

# Installs neovim packages in various package managers
sudo pip3 install pynvim
sudo npm -g install neovim

echo 'Neovim setup set up successfully.'
echo 'Run :PlugInstall in nvim to install plugins.'
echo 'Install clangd to use the COC extension.'
