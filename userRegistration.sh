#!/bin/bash -x
shopt -s extglob
validateFirstName(){
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
validateLastName(){
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
validateEmailId(){
	emailPat='^[a-zA-Z0-9]+([._+-][0-9a-zA-Z]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$'
	read -p "Enter Email Id " email
	if [[ $email =~ $emailPat ]]
	then
		echo Valid Email Id
	else
		echo Invalid Email Id
		email
	fi
}
validateMobileNumber(){
	echo Mobile number must have country code follow by space and 10 digit number
	mobileNumberPat='^[1-9]{2}[ ]{1}[0-9]{10}$'
        read -p "Enter mobile number " mobileNumber
        if [[ $mobileNumber =~ $mobileNumberPat ]]
        then
                echo Valid mobile number
        else
                echo Invalid mobile number
                mobileNumber
        fi
}
validatePassword(){
	echo Password must contain 8 characters
	echo Password must contain atleast one Upper case 
	echo Password must contain atleast one Numeric value
	echo Password must contain exactly one Special character
	passwordUpperCasePat='[A-Z]+'
	passwordNumericValuePat='[0-9]+'
	passwordSpecialCharacterPat='[^0-9a-zA-Z]{1}'
	read -p "Enter password " password
        if [[ $password =~ $passwordSpecialCharacterPat && $password =~ $passwordNumericValuePat && $password =~ $passwordUpperCasePat && ${#password} -ge 8 ]];
        then
                echo Valid password
        else
                echo Invalid password
                password
        fi
}
validateUserRegistration(){
	namePat='^[A-Z][a-z]{2,}$'
	validateFirstName
	validateLastName
	validateEmailId
	validateMobileNumber
	validatePassword
}
validateUserRegistration
