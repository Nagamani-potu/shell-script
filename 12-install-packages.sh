#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE


VALIDATE(){
    if [ $? -ne 0 ]
    then 
      echo -e "ERROR:: $2 ... $R is failed $N"
    else
       echo -e "$2 ... $G success $N"
    fi
}

if [ $ID -ne 0 ]
then
   echo -e " $R ERROR:: please run with root access $N"
   exit 1
else
   echo -e "you are root user"
fi

# echo "All arguments passed: $@"
#git mysql postfix net-tools
# package=git for the first time

for package in $@
do
  yum list installed $package &>> $LOGFILE #check installed or not
  if [ $? -ne 0 ] #if not installed
  then 
    yum install $package -y &>> $LOGFILE #install the package 
    VALIDATE $? "installation of $package" #validate
  else
     echo -e "$package is already installed ...$Y SKIPPING $N"
  fi
done