#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"


VALIDATE(){
    if [ $1 -ne 0 ]
    then 
       echo -e "ERROR:: $2 ...$R failed $N"
       exit 1
    else 
       echo "$2 ...$G success $N"
    fi
}

if [ ID -ne 0 ]
then
   echo -e "$R ERROR:: Please run with root access $N"
   exit 1
else
   echo "you are a root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing Mysql"

yum install git -y  &>> $LOGFILE

VALIDATE $? "installing git"