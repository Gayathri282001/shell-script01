#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR: run the command as root user"
    exit 1
else
    echo "INFO: you re the root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "installation of mysql is not success"
    exit 1
else
    echo "installation mysql is success"
fi


yum install postfix -y

if [ $? -ne 0 ]
then    
    echo "installation of postfix is not success"
    exit 1
else
    echo "installation of postfix is successful"
fi