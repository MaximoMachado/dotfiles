#!/usr/bin/env fish

# Install Fisher Plugin Manager
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# Install nvm 
fisher install jorgebucaran/nvm.fish

# Set default node on launch to be node lts
nvm install lts
nvm use lts
set -U nvm_default_version (nvm current)

echo 'Fish setup successfully.'
