#!/bin/bash -x

firstNamePattern='^[A-Z][a-z]{2,}$'
lastNamePattern='^[A-Z][a-z]{2,}$'

function patternValidate() {
	
	if [[ $firstName =~ $firstNamePattern ]]
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

firstName
lastName
