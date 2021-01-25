# <----------QUESTION----------->
# A shell script recieves an argument 'one', 'two', or 'three'.
# If the argument supplied is 'one' display it in bold, if it is 'two' display it in reverse video and
# if it is 'three' make it blink on the screen. 
# If a wrong argument is supplied report it use a case control instruction.
# <----------QUESTION----------->

#!/bin/bash
if [ $# -lt 1 ]; then
  echo "No argument provided..."
  exit 1
fi

case $1 in 
  'one') tput bold
        echo $1
        ;;
  'two') tput rev
        echo $1
        ;;
  'three') tput blink
  # my terminal doesn't support blinking, the '5' is for blinking '7' is for colour inversion, 32 is green colour
        echo  -e "\033[32;5;7m$1\033[0m"
        ;;
  *) echo "Wrong Argument."
esac
tput sgr0
