#!/bin/bash
figlet I ❤ Adam_ALwan | lolcat
BGreen='\033[1;32m'
Yellow='\033[0;33m'
BBlue='\033[1;34m'
#===============
# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White
# Underline
NC='\033[0m' # No Color

#echo -e ${BGreen}"1)ifconfig wlan1"${Yellow}

echo -e "\e[1;33m1)ifconfig wlan1\e[0m"
echo -e "\033[1;35m2)iptables \e[0m"
echo -e "\033[1;36m3)ip_forward \e[0m "
echo -e "4)clear "


while true; do
read -p "please Enter Yor Option > " adam
if [[ $adam -eq '1' ]]; then
echo -e "Whait...!"
sleep 1
sudo ifconfig wlan1mon up 192.168.1.1 netmask 255.255.255.0
sudo route add -net 192.168.1.0 netmask 255.255.255.0 gw 192.168.1.1
read -p "please Enter Yor Option > " adam
elif [[ $adam -eq '2' ]]; then
echo -e "Whait...!"
sleep 1
sudo iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
sudo iptables --append FORWARD --in-interface wlan1mon -j ACCEPT
read -p "please Enter Yor Option > " adam
elif [[ $adam -eq '3' ]]; then
echo -e "Whait...!"
sleep 1
sudo echo 1 > /proc/sys/net/ipv4/ip_forward
read -p "please Enter Yor Option > " adam
elif [[ $adam -eq '4' ]]; then
echo -e "Whait...!"
sleep 1
exit
echo -e "Bye...!"
else
echo "Wrong Options..!"
fi
done
