#!/bin/bash
if [ $# -lt 1 ]; then
  echo "No argument provided..."
  exit 1
fi
if [ $1 = 'one' ]; then
  tput bold
  echo $1
elif [ $1 = 'two' ]; then
  tput rev
  echo $1
elif [ $1 = 'three' ]; then
  tput blink
  # my terminal doesn't support blinking, the '5' is for blinking '7' is for colour inversion, 32 is colour
  echo  -e "\033[32;5;7m$1\033[0m"
else
  echo "Wrong Argument"
fi
tput sgr0


