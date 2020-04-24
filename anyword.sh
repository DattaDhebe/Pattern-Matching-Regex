#!/bin/bash -x
shopt -s extglob #turn on extended globbing
echo "enter word to ending with thing"
read word
if [[ $word == +(some|any)thing ]];
then
	echo yes;
else
	echo no;
fi


