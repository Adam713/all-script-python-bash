#!/bin/bash
#echo I ❤ Adam_ALwan | lolcat -a -d 500
figlet I ❤ Adam_ALwan | lolcat
echo -e "1)Update System "
echo -e "2)Check Program nedd Upgrade "
echo -e "3)Upgrade  Program "
echo -e "4)Autoremove "
echo -e "5)Autoclean "
echo -e "0)Exit "

while true; do
read -p "please Enter Yor Option > " tryag
if [[ $tryag -eq '1' ]]; then
echo -e "Whait...!"
sleep 2
sudo apt-get update
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '2' ]]; then
echo -e "Whait...!"
sleep 2
apt-get list --upgradable
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '3' ]]; then
echo -e "Whait...!"
sleep 2
apt-get upgrade
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '4' ]]; then
echo -e "Whait...!"
sleep 2
apt autoremove
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '5' ]]; then
echo -e "Whait...!"
sleep 2
apt autoclean
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '6' ]]; then
echo -e "Whait...!"
sleep 2
exit
echo -e "Bye...!"
else
echo "Wrong Options..!"
fi
done
