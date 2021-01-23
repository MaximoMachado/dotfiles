#!/usr/bin/env fish

# Installs neovim packages in various package managers
sudo pip3 install pynvim
sudo npm -g install neovim

# Installs plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install Nerd Font
mkdir -p ~/.local/share/fonts/nerd-fonts/jetbrains-mono
cd ~/.local/share/fonts/nerd-fonts/jetbrains-mono && curl -fLo 'JetBrains Mono Regular Nerd Font Complete Mono.ttf' https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf

cd ~/.local/share/fonts/nerd-fonts/jetbrains-mono && curl -fLo 'JetBrains Mono Medium Nerd Font Complete Mono.ttf' https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Medium/complete/JetBrains%20Mono%20Medium%20Nerd%20Font%20Complete%20Mono.ttf

cd ~/.local/share/fonts/nerd-fonts/jetbrains-mono && curl -fLo 'JetBrains Mono Medium Italic Nerd Font Complete Mono.ttf' https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Medium-Italic/complete/JetBrains%20Mono%20Medium%20Italic%20Nerd%20Font%20Complete%20Mono.ttf


cd ~/.local/share/fonts/nerd-fonts/jetbrains-mono && curl -fLo 'JetBrains Mono Italic Nerd Font Complete Mono.ttf' https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Italic/complete/JetBrains%20Mono%20Italic%20Nerd%20Font%20Complete%20Mono.ttf


cd ~/.local/share/fonts/nerd-fonts/jetbrains-mono && curl -fLo 'JetBrains Mono ExtraBold Nerd Font Complete Mono.ttf' https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/ExtraBold/complete/JetBrains%20Mono%20ExtraBold%20Nerd%20Font%20Complete%20Mono.ttf

cd ~/.local/share/fonts/nerd-fonts/jetbrains-mono && curl -fLo 'JetBrains Mono ExtraBold Italic Nerd Font Complete Mono.ttf' https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/ExtraBold-Italic/complete/JetBrains%20Mono%20ExtraBold%20Italic%20Nerd%20Font%20Complete%20Mono.ttf

cd ~/.local/share/fonts/nerd-fonts/jetbrains-mono && curl -fLo 'JetBrains Mono Bold Nerd Font Complete Mono.ttf' https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Bold/complete/JetBrains%20Mono%20Bold%20Nerd%20Font%20Complete%20Mono.ttf

cd ~/.local/share/fonts/nerd-fonts/jetbrains-mono && curl -fLo 'JetBrains Mono Bold Italic Nerd Font Complete Mono.ttf' https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Bold-Italic/complete/JetBrains%20Mono%20Bold%20Italic%20Nerd%20Font%20Complete%20Mono.ttf

echo 'Run :PlugInstall in nvim to install plugins.'
echo 'Install clangd in your preferred package manager to use the corresponding COC extension.'
echo 'Install xclip for better startup performance over xsel'
echo 'Neovim setup has ended.'
