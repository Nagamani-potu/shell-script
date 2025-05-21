#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
       echo "ERROR:: $2 is failed"
       exit 1
    else 
       echo "$2 is success"
    fi
}

if [ $ID -ne 0 ]
then
   echo "ERROR:: Please run with root access"
   exit 1
else
   echo "you are a root user"
fi

yum install mysql -y

VALIDATE $? "installing Mysql"

yum install git -y

VALIDATE $? "installing git"