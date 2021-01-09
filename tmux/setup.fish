#!/usr/bin/env fish

# Creates backup of tmux config if one exists
if test -e ~/.tmux.conf
    while true
        read -l -P 'Would you like to backup your tmux config? (Y/n)' confirm
        
        if test (string lower $confirm) = 'y' || test (string lower $confirm) = 'yes'
            echo 'Moving old tmux config to ~/.tmux.conf.setup.backup'
            mv ~/.tmux.conf ~/.tmux.conf.setup.backup
            break
        else if test (string lower $confirm = 'n') || test (string lower $confirm) = 'no'
            break
        end
    end
end

ln -sf ~/.config/tmux/.tmux.conf ~/.tmux.conf
echo 'Tmux setup has ended.'

