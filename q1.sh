
# <----------QUESTION----------->
# Write a shell script that accepts a filename as argument
# and displays it creation time if the file exists and if it does not exist,
# write an appropiate massage.
# <----------QUESTION----------->

#!/bin/bash
if [ $# -lt 1 ]; then
  echo "No argument provided..."
  exit 1
fi

for target in $@; do
    inode=""
    inode=`ls -i "$target" 2>/dev/null | cut -d " " -f 1`
    if [ -z "$inode" ]; then
        echo "$target: file coludn't be found"
    else
        if [[ -d $target ]]; then
            echo "$target: Is a directory"
        else
            drive=`df -T "$target" 2>/dev/null | tail -n 1 | cut -d " " -f 1`
            details=`sudo debugfs -R "stat <$inode>" $drive 2>/dev/null | tail -n 5 | head -n 1`
            datetime=`cut -d " " -f 5,6,7,8 <<< $details`
            datetime=$target": "$datetime
            echo $datetime
        fi
    fi
done