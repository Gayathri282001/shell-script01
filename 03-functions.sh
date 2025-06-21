#!/bin/bash

USERID=$(id -u)

VALIDATE(){

    if [ $1 -ne 0 ]
    then 
        echo "$2......FAILURE"
    else
        echo "$2......SUCCESS"

}

if [ $USERID -ne 0 ]
then
    echo "ERROR: run the command as root user"
    exit 1
else
    echo "INFO: you re the root user"
fi

yum install mysql -y

VALIDATE $?  "Installing mysql"

yum install postfix -y

VALIDATE $?  "Installing postfix"
