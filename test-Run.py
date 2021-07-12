import os

options = ["clear", "bar", "spam", "eggs"]

# Print out your options
for i in range(len(options)):
    print(str(i+1) + ":", options[i])

# Take user input and get the corresponding item from the list
inp = int(input("Enter a number: "))
if inp in range(1, 5):
    inp = os.system.options[inp-1]
else:
    print("Invalid input!")    

#===============

elif [ "$x" == "$custommac" ]; then                 #custommac   


read -p 'Type mac address (example AA:AA:AA:AA:AA:AA) : '  m



ifconfig wlan0 down
ifconfig wlan0 hw ether $m
ifconfig wlan0 up
ifconfig eth0 down
ifconfig eth0 hw ether $m
ifconfig eth0 up
service network-manager restart

sleep 3

e=1

clear

systemctl start NetworkManager.service    