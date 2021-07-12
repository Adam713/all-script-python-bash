#!/bin/bash
a=1
while [ $a -lt 20 ]
do
echo $a
a=` expr $a + 1 `
if [ $a -eq 15 ]
then
break
  #statements
fi
done

#==================
#a=1
#until [ ! $a -lt 20 ]
#do
#echo $a
#a=` expr $a + 1 `
#if [ $a -eq 15 ]
#then
#break
  #statements
#fi
#done
