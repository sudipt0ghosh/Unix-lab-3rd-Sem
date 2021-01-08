#!/bin/bash 
 
echo "Enter the Basic Salary" read sal 
da=$(echo "scale=2; ($sal*48)/100" | bc) 
hra=$(echo "scale=2; ($sal*15)/100" | bc) 
ma=$(echo "300" | bc) st=$(echo "40" | bc) 
gpf=$(echo "scale=2; ($sal*5)/100" | bc) 
gs=$(echo "scale=2; ($sal+$da+$hra+$ma+$st+$gpf)" | bc) 
it=$(echo "scale=2; ($gs*10)/100" | bc) 
ns=$(echo "scale=2; ($gs-$it)" | bc) 
echo "Gross Salary of Employee is:" $gs 
echo "Net Salary of Employee is:" $ns 
