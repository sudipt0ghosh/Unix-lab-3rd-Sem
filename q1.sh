
# <----------QUESTION----------->
# any year is enterd through the keyboard,
# write a program to determine wheter the year is leap year or not.
# Use the logical operator -a and -o
# <----------QUESTION----------->

#!/bin/bash

read -p "Year: " year
# expression for only integer. 
re='^[0-9]+$'
#handles empty input or invalid input
if ! [[ $year =~ $re ]]; then
    year=$(date +"%Y")
    echo "[Switching to current year....]"
fi
if [ $((year%4)) -eq 0  -a  ! $((year%100)) -eq 0  -o $((year%400)) -eq 0 ]; then
    echo "Year $year is a Leap Year"
else
    echo "Year $year is not a Leap Year"
fi