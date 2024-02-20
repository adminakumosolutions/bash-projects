#!/bin/bash 

read -p "Enter a file name: " file
echo $file 

echo "#!/bin/bash" > $file.sh

chmod +x $file.sh 

