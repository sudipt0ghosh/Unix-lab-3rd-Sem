# <----------QUESTION----------->
# If cost price & selling price of an item is input through keyboard,
# write a program to determine whether the seller has made a profit or incured loss.
# Also determine how much profit was made or loss incurred.
# <----------QUESTION----------->

#!/bin/bash

read -p "Enter Cost Price: " cost
read -p "Enter Selling Price: " selling
# expression for only integer and float. 
re='^[0-9]+([.][0-9]+)?$'
#handles empty input or invalid input
if ! [ $cost ] || ! [[ $cost =~ $re ]] || ! [ $selling ] || ! [[ $selling =~ $re ]]; then
    echo "Invalid Input Proided..."
    exit 1
fi

diff=`echo "scale=2; $selling-$cost" | bc`

if (( $(echo "scale=2; $diff < 0.0" | bc) )); then
    echo "Incurred Loss by $(echo "scale=2; $diff * -1" | bc)"
else
    echo "Made profit of $diff"
fi