# <----------QUESTION----------->
# Write a shell script that counts the number of directories
# under the current directory.
# <----------QUESTION----------->

#!/bin/bash

count=`ls -Rl | grep -c ^d`
echo "No. of directories: $count"