
#!/bin/bash -x

echo  ********Welcome to UserRegistration*****

userNamePattern="^[A-Z]+[a-z]{3,}$"
EmailPattern="^[a-zA-Z0-9]([._+]{0,1}[a-zA-Z0-9])*[@]{1}[a-zA-Z]{1,}[.]{1}[a-zA-Z]{2,3}([.]{1}[a-zA-Z]{2}){0,1}$"
mobileFormat="^[0-9]{2,3}[: :][0-9]{10}$"

#passwordPattern2="^[a-zA-Z0-9]*(.*[A-Z].*{1,}+)[a-zA-Z0-9]*{8,}$"

passwordPattern2="[a-z]*[A-Z]+[a-z]*{8}"

function validationOfFirstName()
{ 
	echo "Please Enter the FirstName" 
	read firstName
	if [[ $firstName =~ $userNamePattern ]]
	then
		echo "valid firstName"
		validationOfLastName

	else
		echo "invalid firstname"
		validationOfFirstName
	fi

}
function validationOfLastName()
{
	echo "Please Enter the lastName" 
   read lastName
   if [[ $lastName =~ $userNamePattern ]]
   then
   	echo "valid lastName"
		validationOfEmail
   else
   	echo "invalid lasttname"
		validionOfLastName
   fi 
}
function validationOfEmail()
{
	echo "please Enter the Email"
	read email
	if [[ $email =~ $EmailPattern ]]
   	then
   		echo "valid Email"
   	else
   	echo "invalid Email"
   validationOfEmail
   fi

}
function mobileFormat()
{
	echo "please Enter the mobile Number"
   read mobileNo
   if [[ $mobileNo =~ $mobileFormat ]]
   then
   	echo "valid mobile Number"
   else
   	echo "invalid mobile Number"
    	mobileFormat
   fi

}
function validationOfPassword()
{
   echo "please Enter the Password"
   read password
   if [[ $password =~ $passwordPattern2 ]]
   then
   	echo "valid password"
   else
   	echo "invalid password"
       validationOfPassword
   fi

}
#validationOfFirstName
#validationOfLastName
#validationOfEmail
#mobileFormat
validationOfPassword


