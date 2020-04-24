#!/bin/bash -x
shopt -s extglob #turn on extended globbing
echo "enter word to ending with thing"
read word
pat=[a-zA-Z]{3}
pat=^[1-9]*
pat=[1-9a-zA-Z]$
pat="^[1-9]*[a-zA-Z]{3}[1-9a-zA-Z]*$"
if [[ $word =~ $pat ]];
then
	echo yes;
else
	echo no;
fi


