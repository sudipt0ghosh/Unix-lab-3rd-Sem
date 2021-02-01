# <----------QUESTION----------->
# Write a program to find the value of one number raised to the value of another.
# The numbers are entered through the keyboard.
# <----------QUESTION----------->

#!/bin/bash
read -p "Enter the number: " num
read -p "Enter the power: " power
echo -n "$num^$power: "
echo "$num^$power" | bc
