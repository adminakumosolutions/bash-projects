#!/bin/bash 


function _help {
    echo "************ CREATE USER ************"
    echo "Usage: ./useradd ARG1[username] ARG2[user-group] ARG3[home-dir]"
    echo " "
}


if [ $# -le 0 ]; then 
    _help
    exit
fi

for user in $(cat /etc/passwd | awk -F ":" '{print $1}'); do
    if [ $user == $1 ]; then
        userdel $1
    fi 
done