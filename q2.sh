# <----------QUESTION----------->
# Write shell script which would recieve the logname during execution, 
# obtain information about it from /etc/passwd and 
# display this information on the screen in easily understandable format.
# <----------QUESTION----------->
#!/bin/bash
read -p "Logname: " name
str=`grep "$name" /etc/passwd` 
if ! [ $str ]; then
    echo "User Doesn't Exist...";exit 1;
fi
IFS=':' read -a array <<< "$str"
printf "|\tUSER\t|\tUID\t|\tGID\t|\tSHELL\t\t|\tHome Directory\t|\n"
printf "|===============|===============|===============|=======================|=====================\t|\n"
printf "|\t${array[0]}\t|\t${array[2]}\t|\t${array[3]}\t|\t${array[6]}\t|\t${array[5]}\t|\n"
