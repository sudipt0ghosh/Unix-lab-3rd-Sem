# <----------QUESTION----------->
# Any integer is input through keyboard.
# Write a program to find out whether it is an odd or even number
# <----------QUESTION----------->


#!/bin/bash

read -p "Enter Integer number: " number
# expression for only integer. 
re='^[0-9]+$'
#handles empty input or invalid input
if ! [ $number ] || ! [[ $number =~ $re ]]; then
    echo "Invalid Input"
    exit 1
fi

if [ $((number%2)) -eq 0 ]; then
    echo "$number is Even."
else
    echo "$number is Odd."
fi