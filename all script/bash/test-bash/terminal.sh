#!/bin/bash

clear
printf '\033]2;INSTALLER\a'
echo -e "Press \e[2;33m any key\e[0m to install the script..."
#echo -e "Press \e[1;33many key\e[0m to install the script..."
read -n 1
clear
apt-get -y install gnome-terminal
clear
#apt autoremove gnome-terminal

gnome-terminal -e /home/kali/Desktop/bash/test-bash/Adam-Tools.sh
#sleep 5 # wait for terminal window to be ready

# continue with your script
