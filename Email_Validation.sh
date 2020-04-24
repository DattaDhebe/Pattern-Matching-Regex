#!/bin/bash -x

shopt -s extglob
echo "enter email address : "
read email

pat="^[a-zA-Z0-9]*@[a-zA-Z]+.[a-zA-Z]$" 

if [[ $email =~ $pat ]]
then
	echo "Right..!!"
else
	echo "Wrong..!!"
fi
