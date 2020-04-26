#!/bin/bash -x

firstNamePattern='^[A-Z][a-z]{2,}$'
lastNamePattern='^[A-Z][a-z]{2,}$'
emailPattern='^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)?@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$'
mobilePattern="^([0-9]{2}[[:space:]])?[0-9]{9}$"

function patternValidate() {
	
	if [[ $1 =~ $2 ]]
	then
		echo "Right..!"
	else
		echo "Wrong..!"
	fi
}


function firstName() {
	
	read -p "Enter Your First Name : " firstName
	patternValidate $firstName $firstNamePattern

}

function lastName() {
	
	read -p "Enter Your Last Name : " lastName
	patternValidate $lastName $lastNamePattern

}

function email(){
	
	read -p "Enter Your Email Address : " email
	patternValidate $email $emailPattern
}

function mobile() {
	
	read -p "Enter Mobile Number : " mobileNumber
	patternValidate "$mobileNumber" $mobilePattern
	
}

function password() {
	
	upper='[[:upper:]]+'
	number='[[:digit:]]+'
	specialCharacter='[@$#!?&%]'
	passwordPattern='[a-zA-Z0-9]$'

	read -p "Enter Password : " password
	
	if [[ $password =~ $upper && ${#password} -gt '7' && $password =~ $passwordPattern && $password =~ $number ]]
	then
		if [[ $password =~ $specialCharacter ]]
		then
			echo "Right..!"
		else
			echo "Wrong..!"
		fi
	fi

}
while [ true ]
do
	#firstName
	#lastName
	#email
	#mobile
	password
done
