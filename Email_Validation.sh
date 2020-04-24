#!/bin/bash -x

shopt -s extglob
echo "enter email address : "
read email

emailPattern="^[a-zA-Z0-9]+([.][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-zA-Z]$" 

if [[ $email =~ $emailPattern ]]
then
	echo "Right..!!"
else
	echo "Wrong..!!"
fi
