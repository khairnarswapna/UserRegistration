#!/bin/bash -x

echo  ********Welcome to UserRegistration*****
 
echo "Please Enter the FirstName" 
read firstName
firstNameRegex="^[A-Z]+[a-z]{3,}$"
if [[ $firstName =~ $firstNameRegex ]]
then
	echo "valid firstName"
else
	echo "invalid firstname"
fi

