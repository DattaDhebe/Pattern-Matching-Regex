#!/bin/bash -x

function validate() {
	
	firstNamePattern='^[A-Z][a-z]{2,}$'
	
	if [[ $firstName =~ $firstNamePattern ]]
	then
		echo "Right..!"
	else
		echo "Wrong..!"
	fi
}


function firstName() {
	read -p "Enter Your First Name : " firstName
	
	validate $firstName
}

firstName
