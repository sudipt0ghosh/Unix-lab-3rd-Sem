#!/bin/bash 
 
echo "Enter the length of Rectangle:" 
read len 
echo "Enter the Breadth of Rectangle:" 
read bre 
echo "Enter the radius of Circle:" 
read r 
areaR=$(echo "$len*$bre" | bc) 
periR=$(echo "2*($len+$bre)" | bc) 
areaC=$(echo "3.14*$r*$r" | bc) 
circum=$(echo "2*3.14*$r" | bc) 
echo "Area of Rectangle:" $areaR 
echo "Perimeter of Rectangle:" $periR 
echo "Area of Circle:" $areaC 
echo "Circumference of Circle:" $circum 
