#!/bin/bash 
 
echo "Enter the Distance in Kilometer:" 
read km 
m=$(echo "scale=2; $km*1000" | bc) 
cm=$(echo "scale=2; $km*100000" | bc) 
mm=$(echo "scale=2; $km*1000000" | bc) 
yd=$(echo "scale=2; $km*1093.61" | bc) 
ft=$(echo "scale=2; $km*3280.84" | bc) 
inch=$(echo "scale=2; $km*39370.10" | bc) 
echo "Distance in Meters:" $m 
echo "Distance in Centimeter:" $cm 
echo "Distance in Milimeter:" $mm 
echo "Distance in Yard:" $yd 
echo "Distance in Feet:" $ft 
echo "Distance in Inches:" $inch 
