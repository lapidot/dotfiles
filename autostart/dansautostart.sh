#!/bin/bash

# touch /home/dan/Documents/utils/autoexec.log
echo 1 $(date -u) >/home/dan/Documents/utils/autoexec.log
#kmonad - keyboard altering stuff
echo 2 Kmonad >>/home/dan/Documents/utils/autoexec.log
/home/bin/kmonad-0.4.1-linux ~/.config/kmonad/arrows.kbd & >> /home/dan/Documents/utils/autoexec.log

echo 3 nitrogen >>/home/dan/Documents/utils/autoexec.log
#kmonad - keyboard altering stuff
nitrogen --restore & >> /home/dan/Documents/utils/autoexec.log
# exec --no-startup-id "conky"



echo 4 terminator >>/home/dan/Documents/utils/autoexec.log
# for allowing pkexec to request sudo credentials when needed
# terminator & >> /home/dan/Documents/utils/autoexec.log
# terminator # -l default -p default
terminator -e '"neofetch" && zsh || zsh' &




echo 5 policykit >>/home/dan/Documents/utils/autoexec.log
# for allowing pkexec to request sudo credentials when needed
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 & >> /home/dan/Documents/utils/autoexec.log


