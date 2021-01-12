#!/usr/bin/env fish

while true
    read -l -P 'Would you like to setup touchpad gestures? (Y/n)' confirm

    if test (string lower $confirm) = 'y' || test (string lower $confirm) = 'yes'
        sudo gpasswd -a $USER input
        sudo apt-get install libinput-tools
        sudo apt-get install ruby
        sudo gem install fusuma
        sudo apt-get install xdotool

        # Plugins to support tap gestures
        sudo gem install fusuma-plugin-tap
        # If not working in gnome
        gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled
        echo 'Run "newgrp input" for changes to immediately take affect without restarting.'
        break
    else if test (string lower $confirm) = 'n' || test (string lower $confirm) = 'no'
        break
    end
end

echo 'Fusuma setup has ended.'
