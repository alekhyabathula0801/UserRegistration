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
email(){
	emailPat='^[a-zA-Z0-9]+([._+-][0-9a-zA-Z]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})$'
	read -p "Enter Email Id " email
	if [[ $email =~ $emailPat ]]
	then
		echo Valid Email Id
	else
		echo Invalid Email Id
		email
	fi
}
userRegistration(){
	namePat='^[A-Z][a-z]{2,}$'
	firstName
	lastName
	email
}
userRegistration
