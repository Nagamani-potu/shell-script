#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
  echo "ERROR:: please run this script with root access"
  exit 1 #you can give other than zero
else
   echo "you are a root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
   echo "ERROR:: Mysql installation is failed"
   exit 1
else
   echo "Mysql is installation is success"
fi

yum install git -y

if [ $? -ne 0 ]
then 
  echo "ERROR:: Git installation is failed"
  exit 1
else
  echo "Git installation is success"
fi