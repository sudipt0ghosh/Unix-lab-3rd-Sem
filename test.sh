#!/bin/bash
read -p "Filename: " file
str=`ls -l "$file"`
echo $str
read -a array <<< "$str"
# IFS=':' read -a perms <<< 
printf "|\tOWNER\t|\tSIZE(b)\t|\tLAST_MOD_TIME\t|\tPERMISSIONS\t|\tLINKS\t|\t\n"
printf "|===============|===============|=======================|=======================|===============|\n"
printf "|\t${array[2]}\t|\t${array[3]}\t|\t${array[6]} ${array[5]}, ${array[7]}\t|\t${array[0]}\t|\t${array[1]}\t|\n"