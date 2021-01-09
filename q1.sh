
# <----------QUESTION----------->
# If a Five Digit number is input through the keyboard, write a program to calculate the sum of its digits. 
# Print the digits in reverse order .
# <----------QUESTION----------->

read -p "Enter a 5 digit integer number: " value
sum=0

# expression for only integer. 
re='^[0-9]+$'
if ! [[ $value =~ $re ]] || ! [ ${#value} -eq 5 ] ; then # This ensures no text / floating number is exepted.
   echo "Invalid input"; exit 1;
fi

echo -n "Reverse: "
while [ $value -gt 0 ]
  do
    rem=$((value%10))
    value=$((value/10))
    echo -n $rem
    sum=$((sum+rem))
  done
echo 
echo "Sum:" $sum