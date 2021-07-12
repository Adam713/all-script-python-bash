#!/bin/bin/python

import subprocess
import os

def bash(command):
        return subprocess.check_output(['bash', '-c', command])

def nmap_scan(ip):
        print("Scanning Tcp ports on %s" % ip)
        res =bash('nmap -T4 -p165535 %s | grep "open"' % ip).splitlines()
        ports = []

        for port in res:
            print(port)
            ports.append(port.split("/")[0])

        port_list = ",".join(ports)
        print("\n Running intense scan on open ports ...\n")
        bash('nmap -T4 -A -sV -p%s -oN output.txt %s' % (port_list, ip))
        print("Nmap intense scan results logged in 'output.txt'")
        exit()

ip_string = bash('ifconfig wlan0 | grep "inet "')
ip = ip_string.strip().split(" ")[1]
print("Your IP address is: " + ip + "\n")

octets = ".".join(ip.split(".")[:-1])
subnet = octets + ".0/24"
print("Running netdiscover on local subnet: %s" % subnet)

ips = bash('netdiscover -p -r %s | grep "1" | cut -d " " -f2 ' % subnet).splitlines()
for i in rang (0, len(ips)):
    ip = ips [i]
    print("%s - %s" % (i + 1, ip))

choice = input("\n Enter an option -1 %s, or 0 to exit the script:\n" % len(ips))
nmap_scan(ips[choice -1])
