#!/bin/bash -x
shopt -s extglob
echo "enter six digit pin code : "
read pinCode
pat="^[0-9]{6}$"
if [[ $pinCode =~ $pat ]]
then
	echo "Pin code is Right."
else
	echo "Pin code is Wrong."
fi
