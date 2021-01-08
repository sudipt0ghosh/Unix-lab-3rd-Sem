#!/bin/bash 
 
echo "Enter the first side of Triangle:" 
read a 
echo "Enter the second side of Triangle:" 
read b 
echo "Enter the third side of Triangle:" 
read c 
peri=$(echo "scale=2; ($a+$b+$c)/2" | bc) 
area=$(echo "scale=2; sqrt($peri*($peri-$a)*($peri-$b)*($peri-$c))" | bc) 
echo "Area of Triangle is:" $area 
echo "Perimeter of Triangle is:" $peri 
