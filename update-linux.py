import os
import time

os.system("cealr")
print("Fetching updates...")
time.sleep(2)
os.system("sudo apt update -y")

os.system("clear")
print("Updating system...")
time.sleep(2)
os.system("sudo apt upgrade - y")

os.system("clear")
print("Upgradng  distro...")
time.sleep(2)
os.system("sudo apt dist-upgrade - y")

os.system("clear")
print("Removing temporary packages...")
time.sleep(2)
os.system("sudo apt autoremve - y")

os.system("clear")
print("System now fully upgraded ! ")