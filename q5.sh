echo "Enter the side:" 
read s1 
echo "Enter the other side:" 
read s2 
echo "Enter height:" 
read h 
area=$(echo "(($s1+$s2)*$h)/2" | bc) 
echo "Area of the Trapezoid is:" $area 

