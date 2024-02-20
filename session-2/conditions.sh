#!/bin/bash

# CONDITION SYNTAX
# if [condition]; then 
#     commands
# fi 

file=$1

if [ $# -ge 1 ]; then
    echo "#!/bin/bash" > $file
    chmod +x $file
    exit
fi

read -p "Enter a file name: " file
echo "#!/bin/bash" > $file.sh
chmod +x $file.sh 