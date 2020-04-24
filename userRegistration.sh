#!/bin/bash -x
shopt -s extglob
firstName(){
	echo First name must start with capital letter and minimum 3 characters are requried
	read -p "Enter first name " firstName
	if [[ $firstName =~ $namePat ]]
	then
		echo Valid first name
	else
		echo Invalid first name
		firstName
	fi
}
lastName(){
        echo Last name must start with capital letter and minimum 3 characters are requried
        read -p "Enter last name " lastName
        if [[ $lastName =~ $namePat ]]
        then
                echo Valid last name
        else
                echo Invalid last name
		lastName
        fi
}
userRegistration(){
	namePat='^[A-Z][a-z]{2,}$'
	firstName
	lastName
}
userRegistration
