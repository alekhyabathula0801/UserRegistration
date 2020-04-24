#!/bin/bash -x
read -p "Enter first name " firstName
firstNamePat='^[A-Z]+[a-z]{2,}$'
if [[ $firstName =~ $firstNamePat ]]
then
	echo Yes
else
	echo No
fi
