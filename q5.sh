# <----------QUESTION----------->
# Write a program to calculate overtime pay of 10 employees.
# Overtime is paid @ Rs. 12 per hour for every hour worked above 40 hours.
# Assume that employees do not work for fractional part of an hour
# <----------QUESTION----------->

#!/bin/bash
echo "[Enter Working Hours]"
for i in {1..10}
do
    read -p "Employee$i: " hour
    overtime=$((hour-40))
    if [ $overtime -gt 0 ]; then
        echo "Overtime Pay: " $((overtime*12))
    else 
        echo "No Overtime done"
    fi
done