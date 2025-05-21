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