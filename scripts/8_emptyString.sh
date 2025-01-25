#! /bin/bash

read -p "Type something:  (Enter to exit)" str
if [ -z $str ]; then
 	echo "this is an empty string"
	exit
fi
echo "moving on"