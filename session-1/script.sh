#!/bin/bash 

echo $$

string="Hello World"

mkdir $1 || echo "You did not provide folder name"
touch $1/$2

echo $string > $1/$2

