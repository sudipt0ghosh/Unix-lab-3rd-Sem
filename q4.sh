# <----------QUESTION----------->
# Write a shell script that accepts one or more filenames as argument and
# convert all of them in uppercase,
# provided they exists in the current directory.
# <----------QUESTION----------->

#!/bin/bash

if [ $# -lt 1 ]; then
  echo "No argument provided..."
  exit 1
fi

for file in "$@"
do
    if [ -f "$file" ]; then
        mv $file new
        mv new ${file^^}
        echo "$file became ${file^^}"
    else
        echo "File \"$file\" doesn't exist in current directory."
    fi
done