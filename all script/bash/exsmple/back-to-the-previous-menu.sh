#!/bin/bash
#Menu() {
<<a
  for (( ; ; ))
  do
  beginORload=
  echo "Choose option:"
  echo "1 - Begin"
  echo "2 - Load"
  read -p "?" beginORload
#}
#Begin() {
if [ "$beginORload" -eq "1" ]
  then
  clear
  for (( ; ; ))
  do
  echo "Beginning. What is your name?"
  read -p "?" name
  #If "prev" specified, go back to #Menu()
  if [ "$name" -eq "prev" ]
    then
    Menu
  fi
  #If nothing specified, return to name input
  if [ -z ${name+x} ]
    then
    Begin
    else
    break
  fi
  echo "Hi $name !"
  done
fi
done

a


while [[ $answer -ne '3' ]];do
#gnome-terminal -- "bash /home/kali/Desktop/bash/exsmple/back-to-the-previous-menu.sh"
echo "Choose option:"
echo "1 - Begin"
echo "2 - Load"
echo "3 - Exit"
gnome-terminal -- "bash /home/kali/Desktop/bash/exsmple/back-to-the-previous-menu.sh"
read -p "Enter Answer [1-2-3]:" answer
case "$answer" in
    1) while [[ "$nm" == '' ]];do read -p "What is your Name:" nm;done        # Keep asking for a name if the name is empty == ''
       if [[ $nm == "prev" ]];then nm=""; else echo "Hello $nm" && break; fi  # break command breaks the while wrapper loop 
       ;;
    2) echo 'Load' ;;
    3) echo 'exiting...' ;;                                          # Number 3 causes while to quit.
    *) echo "invalid selection - try again";;                        # Selection out of 1-2-3 , menu reloaded
esac                                                                 # case closing 
done                                                                 # while closing
echo "Bye Bye!"
#gnome-terminal -- m

<<g

while true; do
echo "On which topic do you want advice?"
echo "1.  politics"
echo "2.  startrek"
echo "3.  kernelnewbies"
echo "4.  sports"
echo "5.  bofh-excuses"
echo "6.  magic"
echo "7.  love"
echo "8.  literature"
echo "9.  drugs"
echo "10. education"
echo

echo -n "Enter your choice, or 0 for exit: "
read choice
echo

case $choice in
     1)
     $FORTUNE politics
     ;;
     2)
ifconfig
     $FORTUNE startrek
     ;;
     3)
     $FORTUNE kernelnewbies
     ;;
     4)
     echo "Sports are a waste of time, energy and money."
     echo "Go back to your keyboard."
     echo -e "\t\t\t\t -- \"Unhealthy is my middle name\" Soggie."
     ;;
     5)
     $FORTUNE bofh-excuses
     ;;
     6)
     $FORTUNE magic
     ;;
     7)
     $FORTUNE love
     ;;
     8)
     $FORTUNE literature
     ;;
     9)
     $FORTUNE drugs
     ;;
     10)
     $FORTUNE education
     ;;
     0)
     echo "OK, see you!"
     break
     ;;
     *)
     echo "That is not a valid choice, try a number from 0 to 10."
     ;;
esac  
done

g
