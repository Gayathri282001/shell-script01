#!/bin/bash

# our goal is to install mysql and postfix

USERID=$(id -u)

#this function should validate the previous command nd inform user it is success or not

VALIDATE(){

    if [ $1 -ne 0 ]
    then 
        echo "$2......FAILURE"
    else
        echo "$2......SUCCESS"
    fi
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
