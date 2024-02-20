#!/bin/bash 

which wget || clear &&  echo "wget not found, installing now..." && yum install wget -y
which zip || clear &&  echo "zip not found, installing now..." && yum install zip -y
which tree || clear &&  echo "tree not found, installing now..." && yum install tree -y


systemctl status httpd | grep Active:
if [ $? != 0 ]; then
    echo "installing apache"
else
    apache_dir=$(tree /var/www/html/ | tail -n 1)
    if [[ $apache_dir != "0 directories, 0 files" ]]; then 
        echo $apache_dir
        read -p "do you want to remove existing website?: [y/n] " apache
        if [ $apache == "n" ]; then
            echo "not deleting"
        elif [ $apache == "y" ]; then 
            echo "Deleting"
        else
            echo "Invalid input"
        fi
    fi
    echo "Download and setup website"
fi

    
    