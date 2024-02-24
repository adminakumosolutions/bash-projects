#!/bin/bash 

web="spering"

## checking if /var/www/html exists
if [ -d "/var/www/html" ]; then
result=$(ls /var/www/html/)
    if [ -z "$result" ]; then
        echo "/var/www/html/ is empty, nothing to compress"
        exit
    else
        mkdir /var/backups 2> /dev/null
        ## Time Stamp format: WeekMonthDayHourMinuteSecond
        timeStamp="$(date | awk -F " " '{print $1 $2 $3 $4}' | sed 's/://g')"
        cd /var/www && tar -cf /var/backups/$web-$timeStamp.tar.gz html
    fi
fi 

old_backups=$(find /var/backups/ -type f -name *.tar.gz -mtime +7)
rm -rf $old_backups
# for old in $old_backups; do 
#     rm -rf $old
# done
