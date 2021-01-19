
# <----------QUESTION----------->
# Write a shell script which recieves any year from the keyboard and 
# determines the year is leap year or not. 
# If no argument is suplied the current year should be assumed.
# <----------QUESTION----------->


#!/bin/bash
read -p "Year: " year
# expression for only integer. 
re='^[0-9]+$'
#handles empty input or invalid input
if ! [ $year ] || ! [[ $year =~ $re ]]; then
    year=$(date +"%Y")
    echo "[Switching to current year....]"
fi
if [ $((year%4)) -eq 0 ] && ! [ $((year%100)) -eq 0 ] || [ $((year%400)) -eq 0 ]; then
    echo "Year $year is a Leap Year"
else
    echo "Year $year is not a Leap Year"
fi