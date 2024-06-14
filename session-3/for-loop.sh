#!/bin/bash 

# for var in list; do
#	command
# done

items="Abdul Kris Ahmad"

for item in  $items; do 
	useradd $item -d /tmp/$item
	echo "done with $item"
	sleep 5
done

for file in $(seq 1 50); do 
	rm -rf File-$file
done
