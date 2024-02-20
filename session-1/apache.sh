#!/bin/bash 

systemctl status httpd || yum install httpd -y

systemctl start httpd 

touch /var/www/html/index.html || echo "index.html already exists"
clear
read -p "Please enter content for index.html: " content

echo $content > /var/www/html/index.html
