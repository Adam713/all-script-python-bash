#!/bin/bash
#echo I ❤ Adam_ALwan | lolcat -a -d 500
#figlet I ❤ Adam_ALwan | lolcat
clear
echo -e "\033[1;37m---------------------------------------------------\033[0m"
echo -ne "\033[1;33m"
echo -e "\033[0m"
echo -e "\033[1;37m---------------------------------------------------\033[0m"
echo -e "\033[1;37m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\033[0m"
echo -e "\033[1;37m░░░░░                                         ░░░░░\033[0m"
echo -e "\033[1;37m░░░░░ \033[1;31mhttps://github.com/Adam713/\033[1;37m ░░░░░\033[0m"
echo -e "\033[1;37m░░░░░ \033[1;31m                  1.1                  \033[1;37m ░░░░░\033[0m"
echo -e "\033[1;37m░░░░░                                         ░░░░░\033[0m"
echo -e "\033[1;37m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\033[0m"
echo -e "\033[1;37m---------------------------------------------------\033[0m"
printf '\033]2;INSTALLER\a'
echo -e "Press \e[1;33m any key\e[0m to install the script..."
read -n 1
clear
apt-get -y install gnome-terminal
alias adamtool='/home/kali/Desktop/bash/test-bash/Adam-Tools/./Adam-Tools.sh'
clear
#apt autoremove gnome-terminal
figlet I ❤ Adam_ALwan | lolcat

printf '\033]2;INSTALLER\a'
echo -e "1)\e[1;33m airmon-ng\e[0m "
echo -e "2)\e[1;33m START Monitor mode\e[0m "
echo -e "3)\033[1;37m aireplay-ng network "
echo -e "4) aireplay-ng mac Target "
echo -e "5) airodump "
echo -e "6) Run Hostapd "
echo -e "7) mdk ataack "
echo -e "8) Change Mac "
echo -e "9) Clear \033[0m"


#echo -e "4)Run dnsmasq "
#echo -e "6) airmon-n start "
echo -e "0)Exit "
while true; do
read -p "please Enter Yor Option > " tryag
if [[ $tryag -eq '1' ]]; then
echo -e "Whait...!"
sleep 1
sudo airmon-ng
#sudo ifconfig wlan1 down
#sudo iwconfig wlan1 mode monitor
#sudo ifconfig wlan1 up
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '2' ]]; then
echo -e "Whait...!"
sleep 0
read -p "Enter Intrface :# " i
sudo airmon-ng start $i
#
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '3' ]]; then
echo -e "Whait...!"
read -p "Enter Intrface :# " i
read -p "Enter number channel :# " c
sudo iwconfig $i channel $c
read -p "Enter Bssid :# " bssid
read -p "Enter number of packet :# " packet
#read -p "Enter Intrface :# " i
sleep 1
sudo xterm -e aireplay-ng -0 $packet -a $bssid $i
#
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '4' ]]; then
echo -e "Whait...!"
read -p "Enter Intrface :# " i
read -p "Enter number channel :# " c
sudo iwconfig $i channel $c
read -p "Enter Bssid :# " bssid
read -p "Enter mac Target :# " t
read -p "Enter number of packet :# " pack
sudo xterm -e aireplay-ng -0 $pack -a $bssid -c $t $i
#
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '5' ]]; then
echo -e "Whait...!"
read -p "Enter Intrface :# " i
sleep 0
sudo xterm -e airodump-ng $i

read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '6' ]]; then
echo -e "Whait...!"
sleep 2
sudo xterm -e hostapd /home/kali/Desktop/bash/test-bash/Adam-Tools/hostapd.conf

read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '7' ]]; then
echo -e "Whait...!"
sleep 1
rm -rf mac-list.txt
sudo touch mac-list.txt
read -p "Enter bssid :# " text
sudo echo $text >> mac-list.txt
read -p "Enter Intrface :# " i
read -p "Enter number channel :# " c
sudo xterm -e mdk3 $i d -b mac-list.txt -c $c


ead -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '8' ]]; then
echo -e "Whait...!"
sudo airmon-ng
read -p "Enter Intrface :# " i
sudo ifconfig $i down
read -p "Enter your Mac :# " mac
sleep 1
sudo ifconfig $i hw ether $mac
sudo ifconfig $i up
sudo systemctl restart NetworkManager.service
#clear

read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '0' ]]; then
echo -e "Whait...!"
sleep 2
exit 0
echo -e "Bye...!"
else
echo "Wrong Options..!"

fi
done
