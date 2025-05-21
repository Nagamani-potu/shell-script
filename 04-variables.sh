#!/bin/bash

# USERNAME=$1
# PASSWORD=$2

# echo "username is : $USERNAME, password is :$PASSWORD"

echo "please engter your username: :"

read -s USERNAME #the value entered above is automatically attached to username variable
echo "please enter your password: :"
read -s PASSWORD

echo "username is : $USERNAME, password is: $PASSWORD" # i am printing just for validation, we should not print username and password in scripts