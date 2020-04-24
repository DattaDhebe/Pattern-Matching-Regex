#!/bin/bash -x
shopt -s extglob
echo "enter email address : "
read email
pat="^([a-zA-Z][@bridgelabz.][a-zA-Z])*$"
if [[ $email =~ $pat ]]
then
	echo "Email is Right."
else
	echo "Email is Wrong."
fi
