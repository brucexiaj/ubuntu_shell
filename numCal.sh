#!/bin/bash
#Function:Calculate two numbers
#03/30/2017
echo "numbers to calculate"
read -p "first number:" firstnum
read -p "second number:" secondnum
total=$(($firstnum*$secondnum))
echo  "results:$total"
