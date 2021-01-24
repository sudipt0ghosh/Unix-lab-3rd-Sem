# <----------QUESTION----------->
# Write a shell script which gets executed the moment user logs in.
# It should display the message "Good Morning"/"Good Afternoon"/"Good Evening",
# depending upon the time at which user logs in
# <----------QUESTION----------->

#!/bin/bash

# creates the script file
cat << EOF > ~/greeting.sh
#!/bin/bash

time=\`date +"%H"\`
if [ \$time -gt 0 -a \$time -lt 12 ]; then
    echo "Good Morning"
elif [ \$time -gt 11 -a \$time -lt 17 ]; then
    echo "Good Afternoon"
else
    echo "Good Evening"
fi
EOF

# gives the file execute permission
chmod u+x ~/greeting.sh

#adds the file to .profile
if ! grep -Fxq "~/greeting.sh" ~/.profile; then
    echo "~/greeting.sh" >> ~/.profile
fi
