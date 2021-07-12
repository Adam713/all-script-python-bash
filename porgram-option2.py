def mainMenu():
	print("1.option good")
	print("2. option bad ")
	print("3.Exit the program.")

		#while option !=0:
	while True:
		try:

			selection= int(input("Enter yor option: "))
			if selection == 1:
				#do option 1 stuff adam -----		#print("Option 1 has been called.")
				good()
				break
			elif selection == 2:
					#do option 2 stuff adam
				#print("Option 2 has been called.")
				bad()
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

def good():
	print("Good")
	anykey=input("Enter anything to return to menu ")
	mainMenu()

def bad():
	print("Bad")
	anykey=input("Enter anything to return to menu ")
	mainMenu()

# main return

mainMenu()

#		selection= int(input("Enter yor option: "))

#print("Thanks for using thes program. Goodbay.")
