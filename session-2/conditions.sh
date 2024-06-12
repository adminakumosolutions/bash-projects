#!/bin/bash

read -p "What is your name?: " name

if [ $name == "Abdul" ]; then
	echo "hello there $name"
else
	echo "You don't belong here"
fi 


