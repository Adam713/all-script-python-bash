#!/bin/bash
echo "welcom to my new tools...!"
a=( airmon-ng aireplay-ng ching-channel )
for b in ${a[*]}
do
  #statements
echo $b
done


echo "========================="

for a in /home/kali/Desktop/script/bash/* #test-bash/*.sh
do
echo $a
if [ -f $a ]
then
echo "==> this is file "
else
echo "==>> this is folder "
  #statements
fi
  #statements
done

#read -p "View inerface :# "airmon-ng
#read -p "Enter Bssid :# " bssid
#read -p "Enter mac Target :# " t
#read -p "Enter Intrface :# " i
#read -p "Enter number of packet :# " pack
#read -p "Enter number channel :# " c
#sleep 1
#sudo iwconfig $i channel $c
#sleep 1
#sudo xterm -e aireplay-ng -0 $pack -a $bssid -c $t $i
#echo "Thanks for try my tools...!"
