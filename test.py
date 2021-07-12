# Switcher for implementing switch case options
def employee_details(ID):
        "1004": "Employee Name: MD. Mehrab",
        "1009": "Employee Name: Mita Rahman",  
        "1010": "Employee Name: Sakib Al Hasan",
    }
    '''The first argument will be returned if the match found and
        nothing will be returned if no match found'''
    return switcher.get(ID, "nothing")

# Take the employee ID
ID = input("Enter the employee ID: ")
# Print the output
print(employee_details(ID))



#==================
# Import another python script
import vacations as v

# Initialize the month list
months = ["January", "February", "March", "April", "May", "June",
          "July", "August", "September", "October", "November", "December"]
# Initial flag variable to print summer vacation one time
flag = 0

# Iterate the list using for loop
for month in months:
    if month == "June" or month == "July":
        if flag == 0:
            print("Now",v.vacation1)
            flag = 1
    elif month == "December":
            print("Now",v.vacation2)
    else:
        print("The current month is",month)
#====================================
# Define a dictionary
customers = {'06753':'Mehzabin Afroze','02457':'Md. Ali',
'02834':'Mosarof Ahmed','05623':'Mila Hasan', '07895':'Yaqub Ali'}

# Append a new data
customers['05634'] = 'Mehboba Ferdous'

print("The customer names are:")
# Print the values of the dictionary
for customer in customers:
    print(customers[customer])

# Take customer ID as input to search
name = input("Enter customer ID:")

# Search the ID in the dictionary
for customer in customers:
    if customer == name:
        print(customers[customer])
        break
#===================================
print("1: foo")
print("2: bar")
print("3: spam")
print("4: eggs")
inp = int(input("Enter a number: "))

if inp == 1:
    inp = "foo"
elif inp == 2:
    inp = "bar"
elif inp == 3:
    inp = "spam"
elif inp == 4:
    inp = "eggs"
else:
    print("Invalid input!")
#==================================
options = ["foo", "bar", "spam", "eggs"]

# Print out your options
for i in range(len(options)):
    print(str(i+1) + ":", options[i])

# Take user input and get the corresponding item from the list
inp = int(input("Enter a number: "))
if inp in range(1, 5):
    inp = options[inp-1]
else:
    print("Invalid input!")    