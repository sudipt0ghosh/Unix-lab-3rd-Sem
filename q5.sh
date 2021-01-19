# <----------QUESTION----------->
# Write a shell script which receives two filenames as arguments.
# It should check whether their contents are same or not.
# If they are same, then second file should be deleted.
# <----------QUESTION----------->

#!/bin/bash
if [ $# -lt 2 ]; then
  echo "Insufficient arguments..."
  exit 1
fi
if cmp -s "$1" "$2"; then
    printf 'The file "%s" is the same as "%s"\n' "$1" "$2"
    read -p "Delete File $2(y/n): " key
    if [ $key = 'y' ] || [ $key = 'Y' ]; then
      rm $2
      echo "$2 Deleted."
    else
      echo "Deletion aborted.." 
    fi
else
    printf 'The file "%s" is different from "%s"\n' "$1" "$2"
fi