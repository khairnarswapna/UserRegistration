#!/bin/bash -x

echo  ********Welcome to UserRegistration*****

userNamePattern="^[A-Z]+[a-z]{3,}$"
function ValidionOfFirstName()
{ 
	echo "Please Enter the FirstName" 
	read firstName
	if [[ $firstName =~ $userNamePattern ]]
	then
		echo "valid firstName"
	else
		echo "invalid firstname"
		validationOfLastName
	fi

}
function validationOfLastName()
{
	echo "Please Enter the lastName" 
   read lastName
   if [[ $lastName =~ $userNamePattern ]]
   then
   echo "valid lastName"
   else
   echo "invalid lasttname"
	ValidionOfFirstName
   fi
}
ValidionOfFirstName
validationOfLastName




