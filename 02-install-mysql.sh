#!/bin/bash

USERID=$(id -u)

if[ $USERID -ne 0 ]
then
    echo "ERROR: run the command as root user"
else
    else "INFO: you re the root user"
fi

yum install mysql -y

if[ $? -ne 0 ]
then
    echo "installation is not success"
else
    echo "installation is success"
fi