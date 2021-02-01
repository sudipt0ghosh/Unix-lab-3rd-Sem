# <----------QUESTION----------->
# Write a program to find the factorial value of any number entered through the keyboard.
# <----------QUESTION----------->

#!/bin/bash
read -p "Enter the number: " num
echo -n "fact($num) = "
fact=1
while [ $num -gt 1 ]
do
    fact=$((fact*num))
    num=$((num-1))
done
echo $fact