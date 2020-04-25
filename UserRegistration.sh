#!/bin/bash -x

firstNamePattern='^[A-Z][a-z]{2,}$'
lastNamePattern='^[A-Z][a-z]{2,}$'
emailPattern='^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)?@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$'

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

while [ true ]
do
	firstName
	lastName
	email
done