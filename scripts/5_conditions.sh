#! /bin/bash

echo "Conditions"

if [[ 1 == 1 ]]; then
    echo "1 is equal to 1"
fi

read -p "How old are you? " number
if [[ $number -gt 50 ]]; then
    echo "You are not very young"
else
    echo "You are young"
fi

read -p "type an integer between 1 and 4": num
if [[ $num -eq 1 ]]; then
    echo "You typed 1"
elif [[ $num -eq 2 ]]; then
    echo "You typed 2"
elif [[ $num -eq 3 ]]; then
    echo "You typed 3"
elif [[ $num -eq 4 ]]; then
    echo "You typed 4"
else
    echo "You typed an invalid number"
fi


# 3 -eq 3  		3 = 3
# 3 -ne 4		3 is not 4
# 3 -gt 1		3 > 1
# 3 -lt 7		3 < 7

# 3 -ge 3 		3 >= 3
# 3 -le 3 		3 <= 3


if [ "abcd" == "aBcd" ]; then
	echo "EQUAL"
fi

echo "moving on"

echo "--------------"

if [ "abcd" != "abcd" ]; then
	echo "different"

fi

echo "end"

######################

read -p "Type the password to know the file name: " pass
if [ $pass == "Table1X" ]; then
 	echo "Correct!  the file name is:  catfile.txt"
else
	echo "incorrect"
	exit
fi