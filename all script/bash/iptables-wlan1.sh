#!/bin/bash
figlet I ❤ Adam_ALwan | lolcat
BGreen='\033[1;32m'
Yellow='\033[0;33m'
BBlue='\033[1;34m'
NC='\033[0m' # No Color
echo -e ${BGreen}"1)ifconfig wlan1"${Yellow}
echo -e "2)iptables "
echo -e "3)ip_forward "
echo -e "4)clear "

while true; do
read -p "please Enter Yor Option > " adam
if [[ $adam -eq '1' ]]; then
echo -e "Whait...!"
sleep 2
sudo ifconfig wlan1 up 192.168.1.1 netmask 255.255.255.0
sudo route add -net 192.168.1.0 netmask 255.255.255.0 gw 192.168.1.1
read -p "please Enter Yor Option > " adam
elif [[ $adam -eq '2' ]]; then
echo -e "Whait...!"
sleep 2
sudo iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
sudo iptables --append FORWARD --in-interface wlan1 -j ACCEPT
read -p "please Enter Yor Option > " adam
elif [[ $adam -eq '3' ]]; then
echo -e "Whait...!"
sleep 2
sudo echo 1 > /proc/sys/net/ipv4/ip_forward
read -p "please Enter Yor Option > " adam
elif [[ $adam -eq '4' ]]; then
echo -e "Whait...!"
sleep 2
exit
echo -e "Bye...!"
else
echo "Wrong Options..!"
fi
done
