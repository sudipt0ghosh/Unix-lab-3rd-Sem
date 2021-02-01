# <----------QUESTION----------->
# Write a shell script to find the smallest of three numbers that are read from the keyboard.
# <----------QUESTION----------->

#!/bin/bash
read -r -p "Please enter 3 numbers: " -a arr
small=${arr[0]}
if [ ${arr[1]} -lt $small ]; then 
    small=${arr[1]}
fi
if [ ${arr[2]} -lt $small ]; then 
    small=${arr[2]}
fi
echo "Smallest: "$small