#!/bin/bash
#echo I ❤ Adam_ALwan | lolcat -a -d 500
figlet I ❤ Adam_ALwan | lolcat
printf '\033]2;INSTALLER\a'#
echo -e "1)\e[1;33m airmon-ng\e[0m" # airmon-n " #ifconfig wlan1 down + iwconfig wlan1 mode monitor + ifconfig wlan1 up
echo -e "2)START Monitor mode"
echo -e "3)Run Hostapd "
echo -e "4)Run dnsmasq "
echo -e "5)Clear "
echo -e "0)Exit "

while true; do
read -p "please Enter Yor Option > " tryag
if [[ $tryag -eq '1' ]]; then
echo -e "Whait...!"
sleep 2
sudo airmon-ng
#sudo ifconfig wlan1 down
#sudo iwconfig wlan1 mode monitor
#sudo ifconfig wlan1 up
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '2' ]]; then
echo -e "Whait...!"
sleep 2
sudo airmon-ng start wlan1
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '3' ]]; then
echo -e "Whait...!"
sleep 2
sudo xterm -e hostapd hostapd.conf
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '4' ]]; then
echo -e "Whait...!"
sleep 2
sudo xterm dnsmasq -C dnsmasq.conf -d
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '5' ]]; then
echo -e "Whait...!"
sleep 2
clear
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
