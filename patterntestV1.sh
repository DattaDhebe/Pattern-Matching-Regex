#!/bin/bash -x
shopt -s extglob #turn on extended globbing
echo "enter word to ending with thing"
read word
pat=[a-zA-Z]{3}
pat=^[1-9]*
if [[ $word ==~ $pat ]];
then
	echo yes;
else
	echo no;
fi


