import os
import time
import subprocess
def mainMenu():
	print("1.Show Interface")
	print("2. Change Mac ")
	print("3.Exit the program.")

		#while option !=0:
	while True:
		try:

			selection= int(input("Enter yor choice : "))
			if selection == 1:
#===============Show Interface===============

				Interface()
				#os.system("clear")
				#time.sleep(2)
				break
			elif selection == 2:
				#print("Option 2 has been called.")adam
				Mac()
				break
			#ths option for exit script adam
			elif selection == 3:
				break
#
			else:
				print("Invalid option. Enter 1-3")
				mainMenu()

		except ValueError:
	    	  print("Invalid option. Enter 1-3")
exit

def Interface():
	print("!!!!Interface!!!...")
	time.sleep(2)
	os.system("sudo airmon-ng")
	anykey=input("Enter anything to return to menu ")
	mainMenu()

def Mac():
	wlan = "wlan0"
	dow = "down"
	Up = "up"
	os.system(f"sudo ifconfig {wlan} {dow}")
	val = str(input("Enter your mac  : "))
	
	#output = "sudo ifconfig wlan0 hw ether "
	os.system(f"sudo ifconfig {wlan} hw ether {val}")
	#up = "sudo ifconfig wlan0 up"
	os.system(f"sudo ifconfig {wlan} {Up}")
	#eth = "sudo ifconfig eth0 down"
	#os.system(eth)
	#Output = "sudo ifconfig eth0 hw ether "
	#os.system(Output + val)
	#Up = "sudo ifconfig eth0 up"
	#s.system(Up)
	restar = "sudo systemctl restart NetworkManager.service"
	os.system(restar)
	#os.system("sudo ifconfig wlan0 hw ether ")
	#print("Bad")
	anykey=input("Enter anything to return to menu ")
	mainMenu()

# main return
mainMenu()


#		selection= int(input("Enter yor option: "))

#print("Thanks for using thes program. Goodbay.")
