def menu():
		print("[1] option 1")
		print("[2] option 2")
		print("[0] Exit the program.")
	
menu()
opton = int(input("Enter yor option: "))

while option != 0:
		if option == 1:
			#do option 1 stuff
			print("Option 1 has been called.")
			
		elif option == 2:
			#do option 2 stuff
			print("Option 2 has been called.")
			
		else:
			print("Invalid option.")
			
		print()
		menu()
		opton = int(input("Enter yor option: "))
		
print("Thanks for using thes program. Goodbay.")