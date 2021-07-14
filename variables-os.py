#variables ADAM

command = "sudo insmod /home/hajer/final_module/module.ko src_ip=" +(R1.get())+ "delay=" +(R2.get())+ "tcp_port=" +(R3.get())
print(command)
os.system(command)


======================
import subprocess
subprocess.call("service postgresql start ; wait ; service metasploit start ; wait ; armitagedate", shell=True)
==============================================
from subprocess import PIPE, Popen


def cmdline(command):
    process = Popen(
        args=command,
        stdout=PIPE,
        shell=True
    )
    return process.communicate()[0]

print cmdline("cat /etc/services")
print cmdline('ls')
print cmdline('rpm -qa | grep "php"')
print cmdline('nslookup google.com')

========================
import commands

output = subprocess.check_output("echo Hello World!", shell=True)

print(output)

Output

b'Hello World!\n'

=============================
=========input===========



val = input("Enter your value: ")
print(val)

------------------
# Program to check input 
# type in Python
  
num = input ("Enter number :")
print(num)
name1 = input("Enter name : ")
print(name1)
  
# Printing type of input value
print ("type of number", type(num))
print ("type of name", type(name1))

------
# Python program showing 
# a use of raw_input()
  
g = raw_input("Enter your name : ")
print g
----------
examples 1

s = input("enter")

c = "route"
b = "ip"
os.system(b + c)

-----
examples2

s = input("enter")

c = "route"
b = "ip"
os.system("ip" + c)

-------
examples 3 >>>>>>> ok jo

s = input("enter")

c = "route"
b = "ip"
os.system(s + "" + c)


========================================
الحصول على مدخلات المستخدم في بايثون

فيما يلي مثال بسيط للحصول على مدخلات المستخدم وطباعتها على وحدة التحكم.



value = input("Please enter a string:\n")
 
print(f'You entered {value}')

==========
ما هو نوع القيمة التي أدخلها المستخدم؟

يتم دائمًا تحويل القيمة التي أدخلها المستخدم إلى سلسلة ثم يتم تعيينها إلى المتغير. دعنا نؤكد ذلك باستخدام دالة type () للحصول على نوع متغير الإدخال



value = input("Please enter a string:\n")
 
print(f'You entered {value} and its type is {type(value)}')
 
value = input("Please enter an integer:\n")
 
print(f'You entered {value} and its type is {type(value)}')






===================
https://www.askpython.com/python/examples/python-user-input
مثال على اختيار إدخال مستخدم Python

يمكننا بناء نظام ذكي من خلال إعطاء خيار للمستخدم وأخذ مدخلات المستخدم لمتابعة الاختيار.



value1 = input("Please enter first integer:\n")
value2 = input("Please enter second integer:\n")
 
v1 = int(value1)
v2 = int(value2)
 
choice = input("Enter 1 for addition.\nEnter 2 for subtraction.\nEnter 3 for Multiplication.:\n")
choice = int(choice)
 
if choice == 1:
    print(f'You entered {v1} and {v2} and their addition is {v1 + v2}')
elif choice == 2:
    print(f'You entered {v1} and {v2} and their subtraction is {v1 - v2}')
elif choice == 3:
    print(f'You entered {v1} and {v2} and their multiplication is {v1 * v2}')
else:
    print("Wrong Choice, terminating the program.")



=====================
https://www.askpython.com/python/examples/python-user-input
كيفية الحصول على عدد صحيح كمدخلات المستخدم؟

لا توجد طريقة للحصول على عدد صحيح أو أي نوع آخر كمدخلات المستخدم. ومع ذلك ، يمكننا استخدام الدوال المضمنة لتحويل السلسلة التي تم إدخالها إلى عدد صحيح.


value = input("Please enter an integer:\n")
 
value = int(value)
 
print(f'You entered {value} and its square is {value ** 2}')


====================================

import os 
import time
import subprocess
def mainMenu():
	print("1.option good")
	print("2. option bad ")
	print("3.Exit the program.")

		#while option !=0:
	while True:
		try:

			selection= int(input("Enter yor choice : "))
			if selection == 1:
				#do option 1 stuff adam -----		#print("Option 1 has been called.")
				good()
				#os.system("clear")
				#time.sleep(2)
				break
			elif selection == 2:
				#print("Option 2 has been called.")adam
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
	print("Fetching updates...")
	time.sleep(2)
	os.system("clear")
	anykey=input("Enter anything to return to menu ")
	mainMenu()

def bad():
	output = subprocess.check_output("echo Hello World!", shell=True)
	print(output)
	output = subprocess.check_output("echo Hello World!", shell=True)
	print(output)
	#print("Bad")
	anykey=input("Enter anything to return to menu ")
	mainMenu()

# main return

mainMenu()

#		selection= int(input("Enter yor option: "))

#print("Thanks for using thes program. Goodbay.")

======================
def change_channel():
    ch = 1
    while True:
        os.system(f"iwconfig {interface} channel {ch}")
        # switch channel from 1 to 14 each 0.5s
        ch = ch % 14 + 1
        time.sleep(0.5)