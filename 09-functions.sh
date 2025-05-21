#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then 
       echo "ERROR:: Installing is failed"
       exit 1
    else 
       echo "installation is success"
    fi
}

if [ $? -ne 0 ]
then
   echo "ERROR:: Please run with root access"
   exit 1
else
   echo "you are a root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE