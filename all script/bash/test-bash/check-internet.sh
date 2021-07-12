#!/bin/bash

host=$(host googel.com | grep 'has add' | cut -d " " -f 4 )
if [ $host ]
then
echo "conected.."

else
echo "no conected"
  #statements
fi
