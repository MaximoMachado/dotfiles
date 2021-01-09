#!/usr/bin/env fish

read -l -P 'Proceed to create symlink for tmux config (Y/n)?' confirm
if test $confirm = 'y' || test $confirm = 'Y' || test $confirm = 'yes' || test $confirm = 'Yes'
    ln -sf ~/.config/tmux/.tmux.conf ~/.tmux.conf
    echo 'Tmux set up successfully.'
end
